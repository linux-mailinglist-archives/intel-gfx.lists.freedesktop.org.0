Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CE47E4C2E84
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Feb 2022 15:36:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C9E4410EA10;
	Thu, 24 Feb 2022 14:36:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 115B810EA10
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Feb 2022 14:36:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645713406; x=1677249406;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=ViWKGcfvweVMzyX+rnLnfsjYYJGgT6XF/ZwoOrJlN9A=;
 b=AMImnTCLh9FJWucuC6Xd8SXY0d2kOrzvIL1Jy0BM2pfblXkPfR9fgvgX
 ApNJrBZqgIOTPmdpUMeZlZoqDyiBigyD6T1NnkiFlKlpssaGSF8r7ywi2
 SMRUXtXqi+xhTfkltpABPHCBdvdEnGpETvkf8h990IwuDIMzPCqdvqLBh
 2do0c/9RpDR8khQk9forCyuC1uRSvsVRTIicO+NYAsWLr56CYQr7vAlaw
 wiJX3CjnCgOjsIQkikDyieVPMlZZwWbwDve9u9tqeXPPnvp5YzFc3qPpf
 YRPClP0wjTAVx1ju2dA/Hk1xedooRG9ALa0qJDaoSREmxmWB0pOAhj2Cu Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10267"; a="232870982"
X-IronPort-AV: E=Sophos;i="5.90,134,1643702400"; d="scan'208";a="232870982"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2022 06:36:45 -0800
X-IronPort-AV: E=Sophos;i="5.90,134,1643702400"; d="scan'208";a="592104628"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2022 06:36:44 -0800
Date: Thu, 24 Feb 2022 16:37:03 +0200
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20220224143703.GA19081@intel.com>
References: <20220210062403.18690-4-ville.syrjala@linux.intel.com>
 <20220211092604.393-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220211092604.393-1-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH v3 3/5] drm/i915: Make cursor plane
 registers unlocked
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Feb 11, 2022 at 11:26:04AM +0200, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> Drop the locks around cursor plane register writes. The
> lock isn't needed since each plane's register are neatly
> contained on their own cachelines.
> 
> The locking did have a secondary effect of disabling
> interrupts around the cursor registers writes though.
> If we drop that then we open outselves up for sceduling
> delays and whatnot while on the middle of the register
> writes. That increases the chance of not all the register
> writes land during the same frame. For normal atomic
> commits this is not a concern as the vblank evade mechanism
> anyway disables interrupts around the update, but the legacy
> cursor codepath does not. Technically we should do a vblank
> evade there as well, but so far no one has bothered to hook
> that up. So in the meantime let's put an explicit local irq
> disable/enable around the legacy cursor update to keep the
> race window minimal.
> 
> v2: local_irq_{disable,enable}() for legacy cursor ioctl

Guess, this will help our infamous atomic update evasion time exceeeded.
I think I've even checked with similar patch.
Good that its finally will make its way into kernel.

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

> 
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cursor.c | 20 ++++++++++----------
>  1 file changed, 10 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_cursor.c b/drivers/gpu/drm/i915/display/intel_cursor.c
> index 2ade8fdd9bdd..b648be744cf2 100644
> --- a/drivers/gpu/drm/i915/display/intel_cursor.c
> +++ b/drivers/gpu/drm/i915/display/intel_cursor.c
> @@ -255,7 +255,6 @@ static void i845_cursor_update_arm(struct intel_plane *plane,
>  {
>  	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
>  	u32 cntl = 0, base = 0, pos = 0, size = 0;
> -	unsigned long irqflags;
>  
>  	if (plane_state && plane_state->uapi.visible) {
>  		unsigned int width = drm_rect_width(&plane_state->uapi.dst);
> @@ -270,8 +269,6 @@ static void i845_cursor_update_arm(struct intel_plane *plane,
>  		pos = intel_cursor_position(plane_state);
>  	}
>  
> -	spin_lock_irqsave(&dev_priv->uncore.lock, irqflags);
> -
>  	/* On these chipsets we can only modify the base/size/stride
>  	 * whilst the cursor is disabled.
>  	 */
> @@ -290,8 +287,6 @@ static void i845_cursor_update_arm(struct intel_plane *plane,
>  	} else {
>  		intel_de_write_fw(dev_priv, CURPOS(PIPE_A), pos);
>  	}
> -
> -	spin_unlock_irqrestore(&dev_priv->uncore.lock, irqflags);
>  }
>  
>  static void i845_cursor_disable_arm(struct intel_plane *plane,
> @@ -492,7 +487,6 @@ static void i9xx_cursor_update_arm(struct intel_plane *plane,
>  	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
>  	enum pipe pipe = plane->pipe;
>  	u32 cntl = 0, base = 0, pos = 0, fbc_ctl = 0;
> -	unsigned long irqflags;
>  
>  	if (plane_state && plane_state->uapi.visible) {
>  		int width = drm_rect_width(&plane_state->uapi.dst);
> @@ -508,8 +502,6 @@ static void i9xx_cursor_update_arm(struct intel_plane *plane,
>  		pos = intel_cursor_position(plane_state);
>  	}
>  
> -	spin_lock_irqsave(&dev_priv->uncore.lock, irqflags);
> -
>  	/*
>  	 * On some platforms writing CURCNTR first will also
>  	 * cause CURPOS to be armed by the CURBASE write.
> @@ -555,8 +547,6 @@ static void i9xx_cursor_update_arm(struct intel_plane *plane,
>  		intel_de_write_fw(dev_priv, CURPOS(pipe), pos);
>  		intel_de_write_fw(dev_priv, CURBASE(pipe), base);
>  	}
> -
> -	spin_unlock_irqrestore(&dev_priv->uncore.lock, irqflags);
>  }
>  
>  static void i9xx_cursor_disable_arm(struct intel_plane *plane,
> @@ -715,6 +705,14 @@ intel_legacy_cursor_update(struct drm_plane *_plane,
>  	 */
>  	crtc_state->active_planes = new_crtc_state->active_planes;
>  
> +	/*
> +	 * Technically we should do a vblank evasion here to make
> +	 * sure all the cursor registers update on the same frame.
> +	 * For now just make sure the register writes happen as
> +	 * quickly as possible to minimize the race window.
> +	 */
> +	local_irq_disable();
> +
>  	if (new_plane_state->uapi.visible) {
>  		intel_plane_update_noarm(plane, crtc_state, new_plane_state);
>  		intel_plane_update_arm(plane, crtc_state, new_plane_state);
> @@ -722,6 +720,8 @@ intel_legacy_cursor_update(struct drm_plane *_plane,
>  		intel_plane_disable_arm(plane, crtc_state);
>  	}
>  
> +	local_irq_enable();
> +
>  	intel_plane_unpin_fb(old_plane_state);
>  
>  out_free:
> -- 
> 2.34.1
> 
