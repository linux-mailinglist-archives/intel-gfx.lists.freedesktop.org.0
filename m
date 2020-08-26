Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A298C25307C
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Aug 2020 15:54:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B46AF6EA96;
	Wed, 26 Aug 2020 13:54:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0DF696EA93;
 Wed, 26 Aug 2020 13:54:00 +0000 (UTC)
Received: from localhost (unknown [70.37.104.77])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B68A822B4D;
 Wed, 26 Aug 2020 13:53:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1598450039;
 bh=nY/mQP63g+dVLkoNfg6D//dAtihonZFm3EN1RTMaCyA=;
 h=Date:From:To:To:To:To:Cc:Cc:Cc:Cc:Cc:Cc:Cc:Cc:Cc:Cc:Subject:
 In-Reply-To:References:From;
 b=mPejEj74JRSCSoGka5/zXIdjIYKq44gcYgcycvHlqP/uZA6bJMVWl9AM+4NUhEN24
 sGI2LcPBDPeN4vEjKEp47s4uZYDHuDeBlpnB07D8OPHQIMjJynM2VNX6/z+jcVtyL+
 pVTJC6muX8PBcA2cQuYdoDWe7nSaiaOTyL9Fz0gU=
Date: Wed, 26 Aug 2020 13:53:59 +0000
From: Sasha Levin <sashal@kernel.org>
To: Sasha Levin <sashal@kernel.org>
To: Sean Paul <sean@poorly.run>
To: Sean Paul <seanpaul@chromium.org>
To: dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200818153910.27894-3-sean@poorly.run>
References: <20200818153910.27894-3-sean@poorly.run>
Message-Id: <20200826135359.B68A822B4D@mail.kernel.org>
Subject: Re: [Intel-gfx] [PATCH v8 02/17] drm/i915: Clear the repeater bit
 on HDCP disable
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
Cc: intel-gfx@lists.freedesktop.org, Chris Wilson <chris@chris-wilson.co.uk>,
 Sean Paul <seanpaul@chromium.org>, stable@vger.kernel.org,
 Daniel Vetter <daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi

[This is an automated email]

This commit has been processed because it contains a "Fixes:" tag
fixing commit: ee5e5e7a5e0f ("drm/i915: Add HDCP framework + base implementation").

The bot has tested the following trees: v5.8.2, v5.7.16, v5.4.59, v4.19.140.

v5.8.2: Failed to apply! Possible dependencies:
    53de0a20c8cd ("drm/i915: Add {preemph,voltage}_max() vfuncs")
    7801f3b792b0 ("drm/i915/display: prefer dig_port to reference intel_digital_port")
    d1d08a4994a8 ("drm/i915: Fix cpt/ppt max pre-emphasis")
    da882e6bb968 ("drm/i915: Fix ibx max vswing/preemph")

v5.7.16: Failed to apply! Possible dependencies:
    47bdb1caba0b ("drm/i915/ddi: use struct drm_device based logging")
    589a4cd6cc43 ("drm/i915: Move TRANS_DDI_FUNC_CTL2 programming where it belongs")
    7801f3b792b0 ("drm/i915/display: prefer dig_port to reference intel_digital_port")
    7c2fedd7608f ("drm/i915: Push TRANS_DDI_FUNC_CTL into the encoder->enable() hook")
    8b4f2137cc0f ("drm/i915/display/ddi: Prefer drm_WARN* over WARN*")
    8fdda3854967 ("drm/i915: Introduce .set_idle_link_train() vfunc")
    c38730987b4a ("drm/i915: Move the TRANS_DDI_FUNC_CTL enable to a later point")
    eed22a46b979 ("drm/i915: Pass encoder all the way to intel_ddi_transcoder_func_reg_val_get()")
    eee3f91195ad ("drm/i915: Introduce .set_link_train() vfunc")
    fb83f72c48a5 ("drm/i915: Introduce .set_signal_levels() vfunc")

v5.4.59: Failed to apply! Possible dependencies:
    0456417ef680 ("drm: Add for_each_oldnew_intel_crtc_in_state_reverse()")
    0486513935ef ("drm/i915/dsi: take compression into account in afe_clk()")
    1326a92c3466 ("drm/i915: Perform automated conversions for crtc uapi/hw split, base -> hw.")
    2225f3c6f1d7 ("drm/i915: Perform automated conversions for crtc uapi/hw split, base -> uapi.")
    2b808b3a27d1 ("drm/i915: Add aliases for uapi and hw to crtc_state")
    3e30d70805d5 ("drm/i915: Make .modeset_calc_cdclk() mandatory")
    486bba4524e0 ("drm/i915/hdcp: Clean up local variables")
    50003bf50d32 ("drm/i915/dsi: set pipe_bpp on ICL configure config")
    54ed6902cabc ("drm/i915/dsi: abstract afe_clk calculation")
    5d1db3f61aa9 ("drm/i915: Rename conn_to_dig_port() to intel_attached_dig_port()")
    adf1bd3dfbae ("drm/i915/dsi: use afe_clk() instead of intel_dsi_bitrate()")
    af9fbfa657c8 ("drm/i915: Introduce and use intel_atomic_crtc_state_for_each_plane_state.")
    b7d02c3a124d ("drm/i915: Pass intel_encoder to enc_to_*()")
    c47b7ddbcb29 ("drm/i915: Rename planar linked plane variables")
    d06a79d33e0f ("drm/i915: Use enum pipe instead of crtc index to track active pipes")
    fe4709a8d033 ("drm/i915: Extract intel_modeset_calc_cdclk()")

v4.19.140: Failed to apply! Possible dependencies:
    07d805721938 ("drm/i915: Introduce intel_runtime_pm_disable to pair intel_runtime_pm_enable")
    2cd9a689e97b ("drm/i915: Refactor intel_display_set_init_power() logic")
    486bba4524e0 ("drm/i915/hdcp: Clean up local variables")
    48a287ed9d62 ("drm/i915: Rename intel_power_domains_fini() to intel_power_domains_fini_hw()")
    49a630b00bac ("drm/i915: Enable and Disable of HDCP2.2")
    6dfc4a8f134f ("drm/i915: Verify power domains after enabling them")
    9055aac76589 ("drm/i915: MEI interface implementation")
    bd780f37a361 ("drm/i915: Track all held rpm wakerefs")
    f28ec6f4ea48 ("drm/i915: Constify power well descriptors")


NOTE: The patch will not be queued to stable trees until it is upstream.

How should we proceed with this patch?

-- 
Thanks
Sasha
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
