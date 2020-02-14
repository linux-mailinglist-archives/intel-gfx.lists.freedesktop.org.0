Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D3E915CF6D
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Feb 2020 02:20:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8CC846E03E;
	Fri, 14 Feb 2020 01:20:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2204B6E03E
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Feb 2020 01:20:39 +0000 (UTC)
Received: from localhost (unknown [137.135.114.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A639D20848;
 Fri, 14 Feb 2020 01:20:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581643238;
 bh=RJuxZZVyUIx0CWdXz+QBXwVul5BmM0qYxo8Kl4MJasw=;
 h=Date:From:To:To:To:Cc:Cc:Cc:Cc:Cc:Cc:Subject:In-Reply-To:
 References:From;
 b=JrJ7LOvM75drEsVCX64o/i7rsRTH+tyE2VPyeF/nO9/iwJdXdP06gCwzgageoEhKc
 nLLcVq0GASc9fbIpo1DtNkaZjAfs8fJq2ll9urtR+btSKUX2C3d4rD9LNm4Lbi3sew
 EzQcHJ8SmccxjMnqjGfcrKopcGd3LdCHofG4DW5c=
Date: Fri, 14 Feb 2020 01:20:37 +0000
From: Sasha Levin <sashal@kernel.org>
To: Sasha Levin <sashal@kernel.org>
To: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
In-Reply-To: <20200213132045.6631-1-jani.nikula@intel.com>
References: <20200213132045.6631-1-jani.nikula@intel.com>
Message-Id: <20200214012038.A639D20848@mail.kernel.org>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dsc: force full modeset whenever
 DSC is enabled at probe
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
Cc: , jani.nikula@intel.com, stable@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

[This is an automated email]

This commit has been processed because it contains a -stable tag.
The stable tag indicates that it's relevant for the following trees: all

The bot has tested the following trees: v5.5.3, v5.4.19, v4.19.103, v4.14.170, v4.9.213, v4.4.213.

v5.5.3: Failed to apply! Possible dependencies:
    1326a92c3466 ("drm/i915: Perform automated conversions for crtc uapi/hw split, base -> hw.")
    2225f3c6f1d7 ("drm/i915: Perform automated conversions for crtc uapi/hw split, base -> uapi.")
    2b808b3a27d1 ("drm/i915: Add aliases for uapi and hw to crtc_state")

v5.4.19: Failed to apply! Possible dependencies:
    0456417ef680 ("drm: Add for_each_oldnew_intel_crtc_in_state_reverse()")
    131d3b1af105 ("drm/i915: Stop using drm_atomic_helper_check_planes()")
    1d5a95b5c943 ("drm/i915: Rework global state locking")
    2225f3c6f1d7 ("drm/i915: Perform automated conversions for crtc uapi/hw split, base -> uapi.")
    2b808b3a27d1 ("drm/i915: Add aliases for uapi and hw to crtc_state")
    2e7f76c1e4b6 ("drm/i915: s/pipe_config/crtc_state/ in intel_crtc_atomic_check()")
    3e30d70805d5 ("drm/i915: Make .modeset_calc_cdclk() mandatory")
    af9fbfa657c8 ("drm/i915: Introduce and use intel_atomic_crtc_state_for_each_plane_state.")
    bb6ae9e653dc ("drm/i915: Allow planes to declare their minimum acceptable cdclk")
    d06a79d33e0f ("drm/i915: Use enum pipe instead of crtc index to track active pipes")
    fe4709a8d033 ("drm/i915: Extract intel_modeset_calc_cdclk()")

v4.19.103: Failed to apply! Possible dependencies:
    019cec36f372 ("drm/i915/icl: Disable DSI ports")
    0f0fe8497d96 ("drm/i915/icl: Disable DSI IO power")
    2225f3c6f1d7 ("drm/i915: Perform automated conversions for crtc uapi/hw split, base -> uapi.")
    2bf3f59daeee ("drm/i915/dsi: refactor bitrate calculations in intel_dsi_vbt_init()")
    3f4b9d9d02c6 ("drm/i915/icl: DSI vswing programming sequence")
    4769b598b943 ("drm/i915/icl: Put DSI link in ULPS")
    4e123bd3039d ("drm/i915/icl: Disable DSI transcoders")
    522cc3f717ac ("drm/i915/icl: Power down DSI panel")
    67551a703544 ("drm/i915/dsi: abstract dphy parameter init")
    70a7b83628fa ("drm/i915/icl: Program T_INIT_MASTER registers")
    70f4f502c47e ("drm/i915/icl: Program TRANS_DDI_FUNC_CTL registers")
    8327af281d29 ("drm/i915/icl: Add get config functionality for DSI")
    ba3df888be90 ("drm/i915/icl: Enable DDI Buffer")
    bf4d57ff4110 ("drm/i915/icl: Find DSI presence for ICL")
    bfee32bfca82 ("drm/i915/icl: Set max return packet size for DSI panel")
    ca8fc99f2ac1 ("drm/i915/icl: Get DSI transcoder for a given port")
    d1aeb5f399d9 ("drm/i915/icl: Configure DSI transcoder timings")
    d364dc66e2d5 ("drm/i915/icl: Configure DSI transcoders")
    d9d996b6ca43 ("drm/i915/icl: Turn OFF panel backlight")
    e27580487321 ("drm/i915/icl: Allocate DSI encoder/connector")
    fc41001d9708 ("drm/i915/icl: Configure lane sequencing of combo phy transmitter")

v4.14.170: Failed to apply! Possible dependencies:
    09a28bd9e802 ("drm/i915: Move display related definitions to dedicated header")
    2225f3c6f1d7 ("drm/i915: Perform automated conversions for crtc uapi/hw split, base -> uapi.")
    27efd2566cb8 ("drm/i915/icl: Define register for DSI PLL")
    31d1d3c8862e ("drm/i915: adjust get_crtc_fence_y_offset() to use base.y instead of crtc.y")
    3f4b9d9d02c6 ("drm/i915/icl: DSI vswing programming sequence")
    45f09f7adc8a ("drm/i915/icl: Power down unused DSI lanes")
    aec0246f3e38 ("drm/i915: Enable scanline read based on frame timestamps")
    b1cb21a5f1c6 ("drm/i915/icl: Enable DSI IO power")
    bf0a5d4b223d ("drm/i915: move adjusted_x/y from crtc to cache.")
    ca8fc99f2ac1 ("drm/i915/icl: Get DSI transcoder for a given port")
    d364dc66e2d5 ("drm/i915/icl: Configure DSI transcoders")
    e288881b08dc ("drm/i915: dspaddr_offset doesn't need to be more than local variable")
    ed15030d7ab0 ("drm/i915: s/enum plane/enum i9xx_plane_id/")
    fc41001d9708 ("drm/i915/icl: Configure lane sequencing of combo phy transmitter")
    fcfe0bdcb191 ("drm/i915/icl: Program DSI Escape clock Divider")

v4.9.213: Failed to apply! Possible dependencies:
    03cdc1d4f795 ("drm/i915: Store port enum in intel_encoder")
    09a568e7ac2c ("drm/i915i/glk: Program MIPI_CLOCK_CTRL only for BXT")
    2225f3c6f1d7 ("drm/i915: Perform automated conversions for crtc uapi/hw split, base -> uapi.")
    27efd2566cb8 ("drm/i915/icl: Define register for DSI PLL")
    4f8036a28112 ("drm/i915: Make HAS_DDI and HAS_PCH_LPT_LP only take dev_priv")
    50a0bc905416 ("drm/i915: Make INTEL_DEVID only take dev_priv")
    6e266956a57f ("drm/i915: Make INTEL_PCH_TYPE & co only take dev_priv")
    8652744b647e ("drm/i915: Make IS_BROADWELL only take dev_priv")
    bcc657004841 ("drm/i915/glk: Program txesc clock divider for GLK")
    cc3f90f0633c ("drm/i915/glk: Reuse broxton code for geminilake")
    d364dc66e2d5 ("drm/i915/icl: Configure DSI transcoders")
    d9486e65010f ("drm/i915: Make IS_SKYLAKE only take dev_priv")
    e2d214ae2b34 ("drm/i915: Make IS_BROXTON only take dev_priv")
    fcfe0bdcb191 ("drm/i915/icl: Program DSI Escape clock Divider")

v4.4.213: Failed to apply! Possible dependencies:
    1d5bf5d9d9ef ("drm/i915: Add missing NULL check before calling initial_watermarks")
    1ee493991470 ("drm/i915: Make plane fb tracking work correctly, v2.")
    2225f3c6f1d7 ("drm/i915: Perform automated conversions for crtc uapi/hw split, base -> uapi.")
    27efd2566cb8 ("drm/i915/icl: Define register for DSI PLL")
    391bf04862fe ("drm/i915: split set pipeconf to pipeconf, pipemisc, pipe_gamma")
    396e33ae204f ("drm/i915: Add two-stage ILK-style watermark programming (v10)")
    47eacbabcbbe ("drm/i915: Compute DSI PLL parameters during .compute_config()")
    4d1de9756832 ("drm/i915/bxt: add dsi transcoders")
    5008e874edd3 ("drm/i915: Make wait_for_flips interruptible.")
    6331a704e457 ("drm/i915: Remove distinction between DDI 2 vs 4 lanes")
    7580d774b046 ("drm/i915: Wait for object idle without locks in atomic_commit, v2.")
    92826fcdfc14 ("drm/i915: Calculate watermark related members in the crtc_state, v4.")
    a65347ba6a4e ("drm/i915: add has_dsi_encoder to crtc state")
    ab1d3a0e5a44 ("drm/i915: Move disable_cxsr to the crtc_state.")
    aca7b684bab9 ("drm/i915: Check for FIFO underruns after modeset on IVB/HSW and CPT/PPT")
    bc58be6058d6 ("drm/i915: split get/set pipe timings to timings and src size")
    bcc657004841 ("drm/i915/glk: Program txesc clock divider for GLK")
    bf22045250fa ("Revert "drm/i915: Add two-stage ILK-style watermark programming (v10)"")
    d364dc66e2d5 ("drm/i915/icl: Configure DSI transcoders")
    d93c03724610 ("drm/i915: Sanitize watermarks after hardware state readout (v4)")
    da2056309779 ("drm/i915: make transcoder_name return a string")
    ed4a6a7ca853 ("drm/i915: Add two-stage ILK-style watermark programming (v11)")
    fcfe0bdcb191 ("drm/i915/icl: Program DSI Escape clock Divider")


NOTE: The patch will not be queued to stable trees until it is upstream.

How should we proceed with this patch?

-- 
Thanks,
Sasha
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
