Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 734E1186C47
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Mar 2020 14:39:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C59966E44B;
	Mon, 16 Mar 2020 13:39:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3AE256E44E
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Mar 2020 13:39:00 +0000 (UTC)
IronPort-SDR: YdnmUHODsfpTeeIPr0U4sEG/pEhp0yjRA8MRza1EGS5klOj38a52fUH07ElCAk0mwrr8cVwEcl
 lW8802avqJww==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2020 06:38:59 -0700
IronPort-SDR: 4Q1i3Aa3Ya+MHATozUM7d3rQWM2pbTWlMPwIFOb8UFsOW1tPz1ib5jfSpbOBo9AZ6p6h0TxJYr
 93h6wDoTWGZg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,560,1574150400"; d="scan'208";a="290702874"
Received: from unknown (HELO localhost.localdomain) ([10.223.165.29])
 by FMSMGA003.fm.intel.com with ESMTP; 16 Mar 2020 06:38:56 -0700
From: Ankit Navik <ankit.p.navik@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 16 Mar 2020 19:06:58 +0530
Message-Id: <1584365821-30240-1-git-send-email-ankit.p.navik@intel.com>
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
Cc: ankit.p.navik@intel.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

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
App /KPI              	| % Power Benefit (mW) |
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

The feature can be enabled using sysfs. We examine pending
commands for a context in the queue, essentially, we intercept them before
they are executed by GPU and we update context with required number of EUs.

For the prior one, empirical data to achieve best performance
in least power was considered. For the later one, we roughly categorized number 
of EUs logically based on platform. Now we compare number of pending commands
with a particular threshold and then set number of EUs accordingly with update
context. That threshold is also based on experiments & findings. If GPU is able
to catch up with CPU, typically there are no pending commands, the EU config
would remain unchanged there. In case there are more pending commands we
reprogram context with higher number of EUs.

Ankit Navik (3):
  drm/i915: Get active pending request for given context
  drm/i915: set optimum eu/slice/sub-slice configuration based on load
    type
  drm/i915: Predictive governor to control slice/subslice/eu

 drivers/gpu/drm/i915/gem/i915_gem_context.c       |  4 ++
 drivers/gpu/drm/i915/gem/i915_gem_context_types.h | 37 +++++++++++
 drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c    |  2 +
 drivers/gpu/drm/i915/gt/intel_context_sseu.c      |  2 +
 drivers/gpu/drm/i915/gt/intel_context_types.h     |  2 +
 drivers/gpu/drm/i915/gt/intel_lrc.c               | 79 ++++++++++++++++++++++-
 drivers/gpu/drm/i915/i915_drv.h                   |  5 ++
 drivers/gpu/drm/i915/i915_sysfs.c                 | 32 +++++++++
 drivers/gpu/drm/i915/intel_device_info.c          | 55 +++++++++++++++-
 9 files changed, 214 insertions(+), 4 deletions(-)

-- 
2.7.4

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
