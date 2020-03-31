Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 937CD19970A
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2020 15:11:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D71CB8989A;
	Tue, 31 Mar 2020 13:11:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 577356E328
 for <intel-gfx@lists.freedesktop.org>; Tue, 31 Mar 2020 13:11:22 +0000 (UTC)
Received: from localhost (unknown [137.135.114.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E7C2F2137B;
 Tue, 31 Mar 2020 13:11:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585660282;
 bh=OhFU4+o8C7hCBJA9nbYTcOIT+h9v/7RYJl9h1vT7/w4=;
 h=Date:From:To:To:To:Cc:Cc:Subject:In-Reply-To:References:From;
 b=IlyMNwAH48OmXLiYebt68G6rl07+Xwvs++/KHkLUtDYs5reZ4tu4yzmRuwcTnPpl7
 r7ca9fmSunaDqB7qKWJIniHYZPhuujSvHDwa/1oeGuUpiR4otlzGt6aZONyVskhmWB
 ang/UVbt9fplbzTEeK/OdkcaFusA75kv07a5b/RM=
Date: Tue, 31 Mar 2020 13:11:21 +0000
From: Sasha Levin <sashal@kernel.org>
To: Sasha Levin <sashal@kernel.org>
To: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
In-Reply-To: <20200330152244.11316-1-imre.deak@intel.com>
References: <20200330152244.11316-1-imre.deak@intel.com>
Message-Id: <20200331131121.E7C2F2137B@mail.kernel.org>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/icl+: Don't enable DDI IO power on
 a TypeC port in TBT mode
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
Cc: stable@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi

[This is an automated email]

This commit has been processed because it contains a -stable tag.
The stable tag indicates that it's relevant for the following trees: 5.4+

The bot has tested the following trees: v5.5.13, v5.4.28.

v5.5.13: Failed to apply! Possible dependencies:
    1326a92c3466 ("drm/i915: Perform automated conversions for crtc uapi/hw split, base -> hw.")
    2225f3c6f1d7 ("drm/i915: Perform automated conversions for crtc uapi/hw split, base -> uapi.")
    2b808b3a27d1 ("drm/i915: Add aliases for uapi and hw to crtc_state")
    54ed6902cabc ("drm/i915/dsi: abstract afe_clk calculation")
    b7d02c3a124d ("drm/i915: Pass intel_encoder to enc_to_*()")

v5.4.28: Failed to apply! Possible dependencies:
    0456417ef680 ("drm: Add for_each_oldnew_intel_crtc_in_state_reverse()")
    131d3b1af105 ("drm/i915: Stop using drm_atomic_helper_check_planes()")
    2225f3c6f1d7 ("drm/i915: Perform automated conversions for crtc uapi/hw split, base -> uapi.")
    2b808b3a27d1 ("drm/i915: Add aliases for uapi and hw to crtc_state")
    2e7f76c1e4b6 ("drm/i915: s/pipe_config/crtc_state/ in intel_crtc_atomic_check()")
    3e30d70805d5 ("drm/i915: Make .modeset_calc_cdclk() mandatory")
    54ed6902cabc ("drm/i915/dsi: abstract afe_clk calculation")
    af9fbfa657c8 ("drm/i915: Introduce and use intel_atomic_crtc_state_for_each_plane_state.")
    b7d02c3a124d ("drm/i915: Pass intel_encoder to enc_to_*()")
    bb6ae9e653dc ("drm/i915: Allow planes to declare their minimum acceptable cdclk")
    d06a79d33e0f ("drm/i915: Use enum pipe instead of crtc index to track active pipes")
    fe4709a8d033 ("drm/i915: Extract intel_modeset_calc_cdclk()")


NOTE: The patch will not be queued to stable trees until it is upstream.

How should we proceed with this patch?

-- 
Thanks
Sasha
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
