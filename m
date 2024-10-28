Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C54559B3455
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Oct 2024 16:05:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BD49110E4E7;
	Mon, 28 Oct 2024 15:04:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iauhpwl5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1BD3710E4E7
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Oct 2024 15:04:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730127898; x=1761663898;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=r2TyG5rt76o2wSAqAMaLZN7mADfi/at0fnEFTKNFuxI=;
 b=iauhpwl52fonVh5nhB8lF3c6HRH2SVeEWKA1s+jqNop/JV5zudbQnbPj
 jAeMk1gJoCvzS+8MlHpCueQFxIH9jEqyF5gTUg3UE58NnaT3wC+VgKjti
 V8G71vHMLV1cGVk/qzwUKMUkwDImenzWmM/fwb/b2fycQMNT/gRcD3ngD
 cMSEc8khUp7To9gdhd7gdng05+BHZkA8cQ2jY/6sJPW872i0cFX8CszYM
 rWgzRO9db4M+FnjhLkYhIt5fbwv1q1NoYKxut3k5ID12iAhrKR0+zjF+O
 cJoi7m75rOUse70d1hxT+ote4SQbilA3HNYk4R0PGQW3egqsWGT9o/o9H Q==;
X-CSE-ConnectionGUID: NtXENB2xSaKBtTlyhU7yUA==
X-CSE-MsgGUID: PcPwrFREQ3OQ+3PMnz018g==
X-IronPort-AV: E=McAfee;i="6700,10204,11239"; a="29186220"
X-IronPort-AV: E=Sophos;i="6.11,239,1725346800"; d="scan'208";a="29186220"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2024 08:04:58 -0700
X-CSE-ConnectionGUID: Z17h1Y03RROtC+ujaz6B5w==
X-CSE-MsgGUID: LUQrBTT2ROKEM8HvlQBbzA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,239,1725346800"; d="scan'208";a="81748833"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 28 Oct 2024 08:04:55 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 28 Oct 2024 17:04:55 +0200
Date: Mon, 28 Oct 2024 17:04:55 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 7/9] drm/i915: Nuke ADL pre-production Wa_22011186057
Message-ID: <Zx-oF-EVxnJ7qlfE@intel.com>
References: <20241009182207.22900-1-ville.syrjala@linux.intel.com>
 <20241009182207.22900-8-ville.syrjala@linux.intel.com>
 <06e016174cfe2768302db0e3e1ed7193665b4fb8.camel@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <06e016174cfe2768302db0e3e1ed7193665b4fb8.camel@intel.com>
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

On Thu, Oct 24, 2024 at 10:52:13AM +0000, Hogander, Jouni wrote:
> On Wed, 2024-10-09 at 21:22 +0300, Ville Syrjala wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > 
> > Wa_22011186057 (some CCS problem) only affected ADL A-stepping,
> > which I presume is pre-production hw. Drop the dead code.
> 
> Maybe you could add? :
> 
> Bspec: 54369

Can do.

> 
> BR,
> 
> Jouni Högander
> 
> > 
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/skl_universal_plane.c | 8 --------
> >  1 file changed, 8 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > index ea72c54e8329..c85bb1fea92f 100644
> > --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > @@ -2562,10 +2562,6 @@ skl_plane_disable_flip_done(struct intel_plane
> > *plane)
> >  static bool skl_plane_has_rc_ccs(struct drm_i915_private *i915,
> >                                  enum pipe pipe, enum plane_id
> > plane_id)
> >  {
> > -       /* Wa_22011186057 */
> > -       if (IS_ALDERLAKE_P(i915) && IS_DISPLAY_STEP(i915, STEP_A0,
> > STEP_B0))
> > -               return false;
> > -
> >         if (DISPLAY_VER(i915) >= 11)
> >                 return true;
> >  
> > @@ -2587,10 +2583,6 @@ static bool tgl_plane_has_mc_ccs(struct
> > drm_i915_private *i915,
> >                 (IS_TIGERLAKE(i915) && IS_DISPLAY_STEP(i915, STEP_A0,
> > STEP_D0)))
> >                 return false;
> >  
> > -       /* Wa_22011186057 */
> > -       if (IS_ALDERLAKE_P(i915) && IS_DISPLAY_STEP(i915, STEP_A0,
> > STEP_B0))
> > -               return false;
> > -
> >         return plane_id < PLANE_6;
> >  }
> >  
> 

-- 
Ville Syrjälä
Intel
