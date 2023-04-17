Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 050826E45D4
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Apr 2023 12:57:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 411B210E40A;
	Mon, 17 Apr 2023 10:57:45 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 914DD10E407;
 Mon, 17 Apr 2023 10:57:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681729063; x=1713265063;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=fpdtyGdWUD1d4eMrPLy0EjS2/Q9C9ckevgEj+j0Bz/0=;
 b=OVPWV7gPO89LEIK7c5jSvCYE4IzuidM9YZlsPLwNmBY75+MR7o2pyEW/
 Z6pwlGvEvzsR24T6Z69vkS3EkMo/I6MIJTAf6Ng5g/3MlL64YGdrrcWil
 MxMZNJkjqUsSGwZZzT0NXYtFyucaNQanfs2ATrfdAZDtT0QKJlab02QSl
 8IU1Z7ONTBSnNKp/7eva0wLjmoolpZg2yAlBn15UUGDy4gXf7nQHeKtmq
 gwPbeat/JJuoe1PI7pXQWwPdmFuXtXNWuiKJvbB+Ef/9D0iOLvizpCxRz
 sWONxwfbaT1YLI4KVckZ2ULUWbwj7D8TKI7PVrQR8pa2dhdHxxmd8zZRy Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10682"; a="410073168"
X-IronPort-AV: E=Sophos;i="5.99,203,1677571200"; d="scan'208";a="410073168"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2023 03:57:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10682"; a="834363399"
X-IronPort-AV: E=Sophos;i="5.99,203,1677571200"; d="scan'208";a="834363399"
Received: from gtohallo-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.213.232.210])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2023 03:57:41 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org,
	Intel-gfx@lists.freedesktop.org
Date: Mon, 17 Apr 2023 11:57:26 +0100
Message-Id: <20230417105734.3945840-1-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.37.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t v5 0/8] Vendor agnostic gputop
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
     PID              NAME    render       copy       video
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

v4:
 * Just a rebase for conflicts due passage of time.

 v5:
 * A larger rebase this time round, catching up with some improvements which
   landed to intel_gpu_top in the meantime.

Tvrtko Ursulin (8):
  lib: Extract igt_drm_clients from intel_gpu_top
  lib: Allow specifying custom engine map
  lib/igt_drm_clients: Record client drm minor
  lib/igt_drm_clients: Support multiple DRM cards
  lib/igt_drm_fdinfo: Track largest engine index
  lib/igt_drm_clients: Decouple hardcoded engine assumptions
  lib/igt_drm_clients: Enforce client status sort order in the library
  gputop: Basic vendor agnostic GPU top tool

 lib/igt_drm_clients.c   | 542 ++++++++++++++++++++++++++++++
 lib/igt_drm_clients.h   |  91 +++++
 lib/igt_drm_fdinfo.c    |  53 ++-
 lib/igt_drm_fdinfo.h    |  16 +-
 lib/meson.build         |   8 +
 tests/i915/drm_fdinfo.c |  19 +-
 tools/gputop.c          | 266 +++++++++++++++
 tools/intel_gpu_top.c   | 718 +++++++++++-----------------------------
 tools/meson.build       |   7 +-
 9 files changed, 1162 insertions(+), 558 deletions(-)
 create mode 100644 lib/igt_drm_clients.c
 create mode 100644 lib/igt_drm_clients.h
 create mode 100644 tools/gputop.c

-- 
2.37.2

