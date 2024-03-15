Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 31B3487C9E9
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Mar 2024 09:27:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3E06E10FFF0;
	Fri, 15 Mar 2024 08:27:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="C4CvLiMC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3F97010FFF0
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Mar 2024 08:26:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710491220; x=1742027220;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=3yl334xDLcTe2eliZfprwJKh+LdDF30zp6Icw3xKWqA=;
 b=C4CvLiMCRLxlo4Hz5KXJAgu2o7bqpX7lBqtJtAB2iVd3Vp8q2mKBV+mZ
 ElERw/NO69Up0GXdKLo/uSRjPsm3ElURrhhvGtYK3Q1uDX9UVqKI9Mn2F
 K6mdk45BVTu5t2aS9GJuqAORtpzK1SACG9oxvschBNiVwXKerXnGLBNr2
 4BRBq4u4EleQDuF8uTc4YFJ1LFr52fgR/EwF0U8xS/0lA18MyawYzk0oq
 1m7IYcMGPVghTT2CYWWXALJixqeAADztdIZYs9VMlbxnG80ojzOH1BcQE
 ExyfCyNnjlXxtF9cD0cgpi8vnGNbdbMBm2eN0azdPWLRtpjkpvsFaJCx1 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,11013"; a="5535069"
X-IronPort-AV: E=Sophos;i="6.07,127,1708416000"; 
   d="scan'208";a="5535069"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2024 01:26:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,11013"; a="827780538"
X-IronPort-AV: E=Sophos;i="6.07,127,1708416000"; d="scan'208";a="827780538"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 15 Mar 2024 01:26:54 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 15 Mar 2024 10:26:53 +0200
Date: Fri, 15 Mar 2024 10:26:53 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH] drm/i915/scaler: Update Pipe src size check in
 skl_update_scaler
Message-ID: <ZfQGTfxuYJ0bwQ3z@intel.com>
References: <20240313143825.3461208-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240313143825.3461208-1-ankit.k.nautiyal@intel.com>
X-Patchwork-Hint: comment
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

On Wed, Mar 13, 2024 at 08:08:25PM +0530, Ankit Nautiyal wrote:
> For Earlier platforms, the Pipe source size is 12-bits so
> max pipe source width and height is 4096. For newer platforms it is
> 13-bits so theoretically max width/height is 8192. For few of the
> earlier platforms the scaler did not use all bits of the PIPESRC,
> so max scaler source size was used to make that the pipe source
> size is programmed within limits, before using scaler.
> 
> This creates a problem, for MTL where scaler source size is 4096, but
> max pipe source width can theroretically be 8192.
> 
> Switch the check to use the max scaler destination size, which closely
> match the limits.
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/skl_scaler.c | 7 ++++---
>  1 file changed, 4 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c b/drivers/gpu/drm/i915/display/skl_scaler.c
> index 8a934bada624..baa601d27815 100644
> --- a/drivers/gpu/drm/i915/display/skl_scaler.c
> +++ b/drivers/gpu/drm/i915/display/skl_scaler.c
> @@ -213,10 +213,11 @@ skl_update_scaler(struct intel_crtc_state *crtc_state, bool force_detach,
>  	 * The pipe scaler does not use all the bits of PIPESRC, at least
>  	 * on the earlier platforms. So even when we're scaling a plane
>  	 * the *pipe* source size must not be too large. For simplicity
> -	 * we assume the limits match the scaler source size limits. Might
> -	 * not be 100% accurate on all platforms, but good enough for now.
> +	 * we assume the limits match the scaler destination size limits.
> +	 * Might not be 100% accurate on all platforms, but good enough for
> +	 * now.
>  	 */
> -	if (pipe_src_w > max_src_w || pipe_src_h > max_src_h) {
> +	if (pipe_src_w > max_dst_w || pipe_src_h > max_dst_h) {
>  		drm_dbg_kms(&dev_priv->drm,
>  			    "scaler_user index %u.%u: pipe src size %ux%u "
>  			    "is out of scaler range\n",
> -- 
> 2.40.1

-- 
Ville Syrjälä
Intel
