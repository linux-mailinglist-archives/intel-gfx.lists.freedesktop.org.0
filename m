Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 304714F800E
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Apr 2022 15:06:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 390D510EC06;
	Thu,  7 Apr 2022 13:06:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 636E610EC06;
 Thu,  7 Apr 2022 13:06:55 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5F8F1A363D;
 Thu,  7 Apr 2022 13:06:55 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
Date: Thu, 07 Apr 2022 13:06:55 -0000
Message-ID: <164933681538.14670.18091014175200203569@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220407084235.9526-1-stanislav.lisovskiy@intel.com>
In-Reply-To: <20220407084235.9526-1-stanislav.lisovskiy@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Fix_FIFO_underruns_caused_by_missing_cumulative?=
 =?utf-8?q?_bpp_W/A_=28rev2=29?=
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
Reply-To: intel-gfx@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: drm/i915: Fix FIFO underruns caused by missing cumulative bpp W/A (rev2)
URL   : https://patchwork.freedesktop.org/series/102322/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
c1adc525a765 drm/i915: Fix FIFO underruns caused by missing cumulative bpp W/A
-:81: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#81: FILE: drivers/gpu/drm/i915/display/intel_bw.c:809:
+	crtc_bw->bpp_cdclk = DIV_ROUND_UP_ULL(mul_u32_u32(crtc_state->pixel_rate,
+					      crtc_bw->pipe_cumulative_bpp * 512),

-:117: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#117: FILE: drivers/gpu/drm/i915/display/intel_bw.c:854:
+		bpp_cdclk = max_t(unsigned int, crtc_bw->bpp_cdclk,
+						bpp_cdclk);

total: 0 errors, 0 warnings, 2 checks, 124 lines checked


