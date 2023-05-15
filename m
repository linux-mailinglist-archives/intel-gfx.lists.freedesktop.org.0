Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 83DA0702E3D
	for <lists+intel-gfx@lfdr.de>; Mon, 15 May 2023 15:36:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EB1F510E1DD;
	Mon, 15 May 2023 13:36:42 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3253410E1D4;
 Mon, 15 May 2023 13:36:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684157800; x=1715693800;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=up+CjzC8Mzy8/sp+rV2vw3U5XdkkBbFW/F/N45NZJCM=;
 b=k9sg117biHZ92uKtugdQbbhYO7vvDvqWXj+8vnjxlSS+MChdDw/0xSis
 gIl+PYKNVpq2lok+J/cPYUvTH1E4S1nYrRNpKHVQ8LNdlAOBzgMjXOWUS
 KVtTuQTGDlKNFEs6yvQHRqjkP7cjNIDgsYzWVSG1pKV7MYJKd2ksBjBzk
 s/SS/DqHcrQAFk4Cn/N9hauUQibr5fI1kYAsS1/XD+ng98+d5WDrauUwb
 wx7hj2FVkU4yT0dy+5nzepmKMsuY/oGUjRYcxUHT9kEl6DSgDt9lCRo8x
 tA5EH6ufu92gj1ihdbmXx94Vawey0phlvPP/vBForz/6e+BaHtwRQywT0 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10711"; a="414597306"
X-IronPort-AV: E=Sophos;i="5.99,276,1677571200"; d="scan'208";a="414597306"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2023 06:36:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10711"; a="700963774"
X-IronPort-AV: E=Sophos;i="5.99,276,1677571200"; d="scan'208";a="700963774"
Received: from zolayode-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.213.214.133])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2023 06:36:37 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org,
	Intel-gfx@lists.freedesktop.org
Date: Mon, 15 May 2023 14:36:28 +0100
Message-Id: <20230515133630.2163170-1-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.37.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t 0/2] gputop/intel_gpu_top: Move name to be
 the last field
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
Cc: Rob Clark <robdclark@chromium.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Rob,

I thought maybe when you add memory stats the same field order like top(1)
would feel more natural? That is client name comes last and is left justified.
All other stats then come in the middle, between PID and NAME.

DRM minor 0
    PID     render         copy         video     video-enhance  NAME
   2704 |▌           ||            ||            ||            | kwin_x11
   2734 |▏           ||            ||            ||            | plasmashell
   3932 |            ||            ||            ||            | krunner
   4414 |            ||            ||            ||            | xdg-desktop-por
1999477 |            ||            ||            ||            | firefox
2162094 |            ||            ||            ||            | thunderbir

intel-gpu-top: Intel Alderlake_s (Gen12) @ /dev/dri/card0 -   15/  15 MHz
    99% RC6;  0.01/ 5.46 W;       34 irqs/s

         ENGINES     BUSY                                        MI_SEMA MI_WAIT
       Render/3D    1.31% |▌                                   |      0%      0%
         Blitter    0.00% |                                    |      0%      0%
           Video    0.00% |                                    |      0%      0%
    VideoEnhance    0.00% |                                    |      0%      0%

    PID   Render/3D      Blitter        Video      VideoEnhance  NAME
   2734 |▏           ||            ||            ||            | plasmashell
   2704 |▏           ||            ||            ||            | kwin_x11
   1837 |▏           ||            ||            ||            | Xorg
3429732 |            ||            ||            ||            | kwrite
2162094 |            ||            ||            ||            | thunderbird

Cc: Rob Clark <robdclark@chromium.org>

Tvrtko Ursulin (2):
  gputop: Move client name last
  intel_gpu_top: Move client name last

 tools/gputop.c        | 19 +++++++++----------
 tools/intel_gpu_top.c | 19 +++++++++----------
 2 files changed, 18 insertions(+), 20 deletions(-)

-- 
2.37.2

