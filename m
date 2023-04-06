Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 54E4A6D9957
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Apr 2023 16:15:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 26E5910EBDF;
	Thu,  6 Apr 2023 14:15:50 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9069910EBD0;
 Thu,  6 Apr 2023 14:15:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680790547; x=1712326547;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=NO5GTJ5BM3QKnwzJAr5iMdaH92FMRFK8CazNRWr653k=;
 b=kN0tiG8buWLKVu1Jsby9MuaQlIB+SRIJf4JV1g1l+32PthnwWY4RPUMv
 n25zp+YK/dw7dkXoY/p7dlybKX1+dfrIhbwA+6SAT0ttFJbMmryFDtl1E
 Ip6Hxb4+rdEEYgCB1xvPH2FOmRgZSf6dihx6GnOMIBxmhJMMFbRo/IcEc
 jN7VmdQEvYN6ttYFl8dFyDEoyen6spT7BH0RLxe/DW61aYNEWCF7S3k9V
 JcthAD69EZtnC/Nd0KHdfhvlfCWuNpYuJm3asX17ZPuAcYqRKLchQBE1G
 dgaFOUSGy1BFOsx4HpoIT3panAk/BlHjifLLMUS9viKGsBXU/gS7YZ1SJ g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10672"; a="331380095"
X-IronPort-AV: E=Sophos;i="5.98,323,1673942400"; d="scan'208";a="331380095"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2023 07:15:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10672"; a="689684796"
X-IronPort-AV: E=Sophos;i="5.98,323,1673942400"; d="scan'208";a="689684796"
Received: from pjkenny-mobl2.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.213.218.83])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2023 07:15:44 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org,
	Intel-gfx@lists.freedesktop.org
Date: Thu,  6 Apr 2023 15:15:30 +0100
Message-Id: <20230406141538.3414368-1-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.37.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t v4 0/8] Vendor agnostic gputop
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

v4:
 * Just a rebase for conflicts due passage of time.

Tvrtko Ursulin (8):
  lib: Extract igt_drm_clients from intel_gpu_top
  lib: Allow specifying custom engine map
  lib/igt_drm_clients: Record client drm minor
  lib/igt_drm_clients: Support multiple DRM cards
  lib/igt_drm_fdinfo: Track largest engine index
  lib/igt_drm_clients: Decouple hardcoded engine assumptions
  lib/igt_drm_clients: Enforce client status sort order in the library
  gputop: Basic vendor agnostic GPU top tool

 lib/igt_drm_clients.c   | 503 ++++++++++++++++++++++++++++++
 lib/igt_drm_clients.h   |  87 ++++++
 lib/igt_drm_fdinfo.c    |  50 ++-
 lib/igt_drm_fdinfo.h    |  16 +-
 lib/meson.build         |   8 +
 tests/i915/drm_fdinfo.c |  19 +-
 tools/gputop.c          | 260 ++++++++++++++++
 tools/intel_gpu_top.c   | 675 +++++++++++-----------------------------
 tools/meson.build       |   7 +-
 9 files changed, 1112 insertions(+), 513 deletions(-)
 create mode 100644 lib/igt_drm_clients.c
 create mode 100644 lib/igt_drm_clients.h
 create mode 100644 tools/gputop.c

-- 
2.37.2

