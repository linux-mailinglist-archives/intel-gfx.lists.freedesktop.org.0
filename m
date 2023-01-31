Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 713C9682B84
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Jan 2023 12:33:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 26E3B10E32D;
	Tue, 31 Jan 2023 11:32:59 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4942E10E31A;
 Tue, 31 Jan 2023 11:32:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675164776; x=1706700776;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Evu9iI/Qyja9qe2VXlba/NEpxUnmqUQUmMXRnrH794g=;
 b=UNmaT+94dHMAIuVxHQj91FZju/cyn+3bmrEjnX6S5SKjFDFf4sFFO4u9
 ImEK9tTxX16JKxyislYwlxM+rbV8R56Gn4Oa+CzR1dff963Fg2ss1daGC
 k95ulqCgDxAY2o8IIACfRIMkHHWpY2FP8aSu8KxVAUzAMQxNzATbQuhMn
 YHRxNKWcFZ9f2yua0hdCZWq5ISEsMFuFDsNHGWOSGTAdFLZ2YwvXGUivP
 +sWpF0uUvPyANvCHmTvXfuNOs+f/CT8Aj/i+Zm8mVLT/Rxdt0Wgw4umma
 esvLg6HwL9r64hqD8hUW4Oz9jwCrz+c2aKgQgaagyKsMtxTXrLUYqUOjw Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10606"; a="308159799"
X-IronPort-AV: E=Sophos;i="5.97,261,1669104000"; d="scan'208";a="308159799"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2023 03:32:46 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10606"; a="993235713"
X-IronPort-AV: E=Sophos;i="5.97,261,1669104000"; d="scan'208";a="993235713"
Received: from rdorchar-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.213.217.6])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2023 03:32:45 -0800
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org,
	Intel-gfx@lists.freedesktop.org
Date: Tue, 31 Jan 2023 11:32:29 +0000
Message-Id: <20230131113237.3707217-1-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t v3 0/8] Vendor agnostic gputop
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

This is a pile of patches which implements a rudimentary vendor agnostic gputop
tool based of the new DRM spec as documented in
Documentation/gpu/drm-usage-stats.rst.

First part of the series is code refactoring which should be reasonably stable.
I've tested it all while working on it both against intel_gpu_top and gputop.

Last patch is the actual tool itself. It works but it is rather rudimentary
which is hopefully good enough for a start.

Fundamental difference between intel_gpu_top and gputop is that the former is
centered around a single card and only shows processes belonging to it. Gputop
on the other hand has an idea to show all processes with DRM file descriptors
open and sort them into groups per card. It also makes no effort to provide
sorting modes, well any interactivity, or any pretty names for GPUs or engines.

It looks like this:
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
DRM minor 0
    PID               NAME    render       copy       video
    3816          kwin_x11 |███▎      ||          ||          ||          |
    3523              Xorg |▊         ||          ||          ||          |
 1120449               mpv |          ||          ||▋         ||          |
 1120529          glxgears |▋         ||          ||          ||          |
 1120449               mpv |▍         ||          ||          ||          |
    3860       plasmashell |▏         ||          ||          ||          |
    4764           krunner |          ||          ||          ||          |
  575206            chrome |          ||          ||          ||          |
  833481           firefox |          ||          ||          ||          |
  892924       thunderbird |          ||          ||          ||          |
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

I did test it as well with two cards and confirmed that too works.

Rob Clark also tested it with a patch which exports the respective data from the
msm driver and confirmed it works fine. Christian König tested it with in
progress patches for amdgpu and that worked as well.

v2:
 * Fixed SPDX headers and added a bunch of code comments/docs throughout.

v3:
 * Rebased and some patch titles renamed as requested. (Kamil)

Tvrtko Ursulin (8):
  lib: Extract igt_drm_clients from intel_gpu_top
  lib: Allow specifying custom engine map
  lib/igt_drm_clients: Record client drm minor
  lib/igt_drm_clients: Support multiple DRM cards
  lib/igt_drm_fdinfo: Track largest engine index
  lib/igt_drm_clients: Decouple hardcoded engine assumptions
  lib/igt_drm_clients: Enforce client status sort order in the library
  gputop: Basic vendor agnostic GPU top tool

 lib/igt_drm_clients.c   | 503 +++++++++++++++++++++++++++++
 lib/igt_drm_clients.h   |  87 ++++++
 lib/igt_drm_fdinfo.c    |  50 ++-
 lib/igt_drm_fdinfo.h    |  16 +-
 lib/meson.build         |   8 +
 tests/i915/drm_fdinfo.c |  19 +-
 tools/gputop.c          | 260 +++++++++++++++
 tools/intel_gpu_top.c   | 677 +++++++++++-----------------------------
 tools/meson.build       |   7 +-
 9 files changed, 1113 insertions(+), 514 deletions(-)
 create mode 100644 lib/igt_drm_clients.c
 create mode 100644 lib/igt_drm_clients.h
 create mode 100644 tools/gputop.c

-- 
2.34.1

