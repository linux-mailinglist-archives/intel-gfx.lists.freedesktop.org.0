Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F2996764F5B
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Jul 2023 11:20:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 67CD410E54E;
	Thu, 27 Jul 2023 09:20:35 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D3F1A10E54E;
 Thu, 27 Jul 2023 09:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690449633; x=1721985633;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=5XnFczToNT8eNb43kCkCoxMeXWg/ZNZ4cJP/t0zOx8A=;
 b=eBfPBbr9lm42ikXfxOMlKkL6Im3Vz8mjyQDcarysIx3UpRcdqgqExtGL
 4W6MS4qnkC/1cThcWYNvUBk6ODtUTHA/UF4+P/Zm3L3re+P7z/pvWFCR1
 //PazxrCbd3H01B6ydkCQZHNkKj+vVikSSbf0FYQ3+FcFKUEVW4+1ZeKl
 FCZSeq2Sl/Z5EUxoAOsxm7I1aziLsjG4cDf025VgNaU4QjNDuj9HQm5vk
 SBc6nVaRK04qyuQxzJYttrgAMpQM7aJx4N9NAUgi7042WdWq67Ovq879G
 CKWcJKYEazvh5dv0LcjGnZx63ZPT/mBFS/mTxUkaoI/PzTLqitnjVlmvO g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10783"; a="432057519"
X-IronPort-AV: E=Sophos;i="6.01,234,1684825200"; d="scan'208";a="432057519"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2023 02:20:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10783"; a="704111854"
X-IronPort-AV: E=Sophos;i="6.01,234,1684825200"; d="scan'208";a="704111854"
Received: from jlenehan-mobl1.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.213.228.208])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2023 02:20:30 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org,
	Intel-gfx@lists.freedesktop.org
Date: Thu, 27 Jul 2023 10:20:22 +0100
Message-Id: <20230727092025.1895728-1-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t 0/3] gputop memory usage
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
Cc: Rob Clark <robdclark@chromium.org>, Chris Healy <cphealy@gmail.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Same general approach as with engine utilisation, adding parsing of the relevant
fdinfo fields and plumbing to client discovery helpers to finally present some
of the available data in gputop:

DRM minor 0
 PID      MEM      RSS  render    copy     video   NAME
8098     124M     124M |███████||       ||       ||       | neverball
 888      76M      75M |▊      ||       ||       ||       | Xorg
 966      12M      12M |       ||       ||       ||       | xfwm4

Or with Wayland:

DRM minor 0
 PID      MEM      RSS    render        copy         video    video-enhance NAME
2093     191M     191M |▊          ||           ||           ||           | gnome-shell
DRM minor 128
 PID      MEM      RSS    render        copy         video    video-enhance NAME
2551      71M      71M |██▉        ||           ||           ||           | neverball
2553      50M      50M |           ||           ||           ||           | Xwayland

There is probably scope to consolidate some of the igt_drm_fdinfo code and to
improve on the presentation but this is a start.

For now, out of the available memory categories, only total and resident are
displayed, and also all discovered memory regions are summed up and shown under
a single heading.

v2:
 * One style tweak, two missing s-o-b, one build failure.

Cc: Rob Clark <robdclark@chromium.org>
Cc: Kamil Konieczny <kamil.konieczny@linux.intel.com>
Cc: Chris Healy <cphealy@gmail.com>

Tvrtko Ursulin (3):
  lib/igt_drm_fdinfo: Parse memory usage
  lib/igt_drm_clients: Store memory info in the client
  gputop: Add memory information

 lib/igt_drm_clients.c   |  35 +++++++++-
 lib/igt_drm_clients.h   |  11 ++++
 lib/igt_drm_fdinfo.c    | 143 ++++++++++++++++++++++++++++++++++++++--
 lib/igt_drm_fdinfo.h    |  24 ++++++-
 tests/i915/drm_fdinfo.c |   8 +--
 tools/gputop.c          |  34 +++++++++-
 tools/intel_gpu_top.c   |   2 +-
 7 files changed, 242 insertions(+), 15 deletions(-)

-- 
2.39.2

