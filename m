Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C39C1845D9
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Mar 2020 12:23:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 650276EBC3;
	Fri, 13 Mar 2020 11:23:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7211E6EBC3
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Mar 2020 11:23:19 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Mar 2020 04:23:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,548,1574150400"; d="scan'208";a="237191837"
Received: from unknown (HELO chromeserver.iind.intel.com) ([10.223.246.82])
 by orsmga008.jf.intel.com with ESMTP; 13 Mar 2020 04:23:17 -0700
From: srinivasan.s@intel.com
To: intel-gfx@lists.freedesktop.org, chris@chris-wilson.co.uk,
 tvrtko.ursulin@intel.com
Date: Fri, 13 Mar 2020 16:42:56 +0530
Message-Id: <1584097979-158957-1-git-send-email-srinivasan.s@intel.com>
X-Mailer: git-send-email 2.7.4
Subject: [Intel-gfx] [PATCH v7 0/3] Dynamic EU configuration of
 Slice/Sub-slice/EU
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Srinivasan S <srinivasan.s@intel.com>

      drm/i915: Context aware user agnostic EU/Slice/Sub-slice control within kernel

This patch sets improves GPU power consumption on Linux kernel based OS such as
Chromium OS, Ubuntu, etc. Following are the power savings.

Power savings on GLK-GT1 Bobba platform running on Chrome OS.
-----------------------------------------------|
App /KPI                | % Power Benefit (mW) |
------------------------|----------------------|
Hangout Call- 20 minute |	1.8%           |
Youtube 4K VPB          |       14.13%         |
WebGL Aquarium          |       13.76%         |
Unity3D                 |       6.78%          |
			|		       |
------------------------|----------------------|
Chrome PLT              | BatteryLife Improves |
			| by ~45 minute        |
-----------------------------------------------|

Power savings on KBL-GT3 running on  Android and Ubuntu (Linux).
-----------------------------------------------|
App /KPI		| % Power Benefit (mW) |
                        |----------------------|
			|  Android |  Ubuntu   |
------------------------|----------|-----------|
3D Mark (Ice storm)     | 2.30%    | N.A.      |
TRex On screen          | 2.49%    | 2.97%     |
Manhattan On screen     | 3.11%    | 4.90%     |
Carchase On Screen	| N.A.     | 5.06%     |
AnTuTu 6.1.4            | 3.42%    | N.A.      |
SynMark2		| N.A.     | 1.7%      |
-----------------------------------------------|

We have also observed GPU core residencies improves by 1.035%.

Technical Insights of the patch:
Current GPU configuration code for i915 does not allow us to change
EU/Slice/Sub-slice configuration dynamically. Its done only once while context
is created.

While particular graphics application is running, if we examine the command
requests from user space, we observe that command density is not consistent.
It means there is scope to change the graphics configuration dynamically even
while context is running actively. This patch series proposes the solution to
find the active pending load for all active context at given time and based on
that, dynamically perform graphics configuration for each context.

We use a hr (high resolution) timer with i915 driver in kernel to get a
callback every few milliseconds (this timer value can be configured through
debugfs, default is '0' indicating timer is in disabled state i.e. original
system without any intervention).In the timer callback, we examine pending
commands for a context in the queue, essentially, we intercept them before
they are executed by GPU and we update context with required number of EUs.

Two questions, how did we arrive at right timer value? and what's the right
number of EUs? For the prior one, empirical data to achieve best performance
in least power was considered. For the later one, we roughly categorized number 
of EUs logically based on platform. Now we compare number of pending commands
with a particular threshold and then set number of EUs accordingly with update
context. That threshold is also based on experiments & findings. If GPU is able
to catch up with CPU, typically there are no pending commands, the EU config
would remain unchanged there. In case there are more pending commands we
reprogram context with higher number of EUs. Please note, here we are changing
EUs even while context is running by examining pending commands every 'x'
milliseconds.

Srinivasan S (3):
  drm/i915: Get active pending request for given context
  drm/i915: set optimum eu/slice/sub-slice configuration based on load
    type
  drm/i915: Predictive governor to control slice/subslice/eu

 drivers/gpu/drm/i915/Makefile                     |   1 +
 drivers/gpu/drm/i915/gem/i915_gem_context.c       |  20 +++++
 drivers/gpu/drm/i915/gem/i915_gem_context.h       |   2 +
 drivers/gpu/drm/i915/gem/i915_gem_context_types.h |  38 ++++++++
 drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c    |   1 +
 drivers/gpu/drm/i915/gt/intel_deu.c               | 104 ++++++++++++++++++++++
 drivers/gpu/drm/i915/gt/intel_deu.h               |  31 +++++++
 drivers/gpu/drm/i915/gt/intel_lrc.c               |  44 ++++++++-
 drivers/gpu/drm/i915/i915_drv.h                   |   6 ++
 drivers/gpu/drm/i915/i915_gem.c                   |   4 +
 drivers/gpu/drm/i915/i915_params.c                |   4 +
 drivers/gpu/drm/i915/i915_params.h                |   1 +
 drivers/gpu/drm/i915/intel_device_info.c          |  74 ++++++++++++++-
 13 files changed, 325 insertions(+), 5 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/gt/intel_deu.c
 create mode 100644 drivers/gpu/drm/i915/gt/intel_deu.h

-- 
2.7.4

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
