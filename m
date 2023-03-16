Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 69B1B6BCB37
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Mar 2023 10:41:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9C20810E0F2;
	Thu, 16 Mar 2023 09:41:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 82D2D10E0F2
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Mar 2023 09:41:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678959709; x=1710495709;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=gcNOk2VmmDb6Yvv28P3PjCI9cnE7Zvr2lGXAkuH1HsM=;
 b=eKSA97wGkX9sXpY81mHuFHyYM7OKVGyTl531z1rfrRIDwMtl6v+P3Alh
 9udu5AiZ80CAWjThMnaZwqIRwMGcnrXLGPGo+38vDDYGZQBpCr8AQFPBF
 lcjXWs1aNqviKbbhSE7cHp6iLF06zcMxqyr3wRaUMgeqg/Sn3kClZC99e
 AeR0v8qG/M6rXdFM/MxuF+dbp7YS6VMxYKkDGY0aHOSabjuyoigymVWc7
 XUHtCRmsJL1Z54/donaTeJH4yXyJ5OrvqGKpyz4EP7VyrIq7bb1TnkLyA
 c1UBmruV7nfyO6nh98LwNGmB/xvr5dtwb3it33pzaJIqizK7uX6kOuCss g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10650"; a="339467812"
X-IronPort-AV: E=Sophos;i="5.98,265,1673942400"; d="scan'208";a="339467812"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2023 02:41:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10650"; a="710028167"
X-IronPort-AV: E=Sophos;i="5.98,265,1673942400"; d="scan'208";a="710028167"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga008.jf.intel.com with SMTP; 16 Mar 2023 02:41:46 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 16 Mar 2023 11:41:46 +0200
Date: Thu, 16 Mar 2023 11:41:46 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>
Message-ID: <ZBLkWsgg1oc7Auw8@intel.com>
References: <20230314130255.23273-1-ville.syrjala@linux.intel.com>
 <20230314130255.23273-7-ville.syrjala@linux.intel.com>
 <083b19674d8b36c98d1edb441cca8ac200c9fbdd.camel@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <083b19674d8b36c98d1edb441cca8ac200c9fbdd.camel@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 6/9] drm/i915: Define vlv/chv sprite plane
 SURFLIVE registers
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Mar 16, 2023 at 09:12:00AM +0000, Hogander, Jouni wrote:
> On Tue, 2023-03-14 at 15:02 +0200, Ville Syrjala wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > 
> > Might as well complete the SURFLIVE register definitions
> > for all platforms/plane types. We are only missing the
> > VLV/CHV sprite planes.
> 
> Can you please point out Bspec you used for these definitions?

For vlv/chv you need magic offline docs.

> 
> > 
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/i915_reg.h | 3 +++
> >  1 file changed, 3 insertions(+)
> > 
> > diff --git a/drivers/gpu/drm/i915/i915_reg.h
> > b/drivers/gpu/drm/i915/i915_reg.h
> > index a2b4af711e6d..e908959dba4a 100644
> > --- a/drivers/gpu/drm/i915/i915_reg.h
> > +++ b/drivers/gpu/drm/i915/i915_reg.h
> > @@ -4394,6 +4394,7 @@
> >  #define   SP_CONST_ALPHA_ENABLE                REG_BIT(31)
> >  #define   SP_CONST_ALPHA_MASK          REG_GENMASK(7, 0)
> >  #define  
> > SP_CONST_ALPHA(alpha)                REG_FIELD_PREP(SP_CONST_ALPHA_MA
> > SK, (alpha))
> > +#define _SPASURFLIVE           (VLV_DISPLAY_BASE + 0x721ac)
> >  #define _SPACLRC0              (VLV_DISPLAY_BASE + 0x721d0)
> >  #define   SP_CONTRAST_MASK             REG_GENMASK(26, 18)
> >  #define  
> > SP_CONTRAST(x)               REG_FIELD_PREP(SP_CONTRAST_MASK, (x)) /*
> > u3.6 */
> > @@ -4417,6 +4418,7 @@
> >  #define _SPBKEYMAXVAL          (VLV_DISPLAY_BASE + 0x722a0)
> >  #define _SPBTILEOFF            (VLV_DISPLAY_BASE + 0x722a4)
> >  #define _SPBCONSTALPHA         (VLV_DISPLAY_BASE + 0x722a8)
> > +#define _SPBSURFLIVE           (VLV_DISPLAY_BASE + 0x722ac)
> >  #define _SPBCLRC0              (VLV_DISPLAY_BASE + 0x722d0)
> >  #define _SPBCLRC1              (VLV_DISPLAY_BASE + 0x722d4)
> >  #define _SPBGAMC               (VLV_DISPLAY_BASE + 0x722e0)
> > @@ -4437,6 +4439,7 @@
> >  #define SPKEYMAXVAL(pipe, plane_id)    _MMIO_VLV_SPR((pipe),
> > (plane_id), _SPAKEYMAXVAL, _SPBKEYMAXVAL)
> >  #define SPTILEOFF(pipe, plane_id)      _MMIO_VLV_SPR((pipe),
> > (plane_id), _SPATILEOFF, _SPBTILEOFF)
> >  #define SPCONSTALPHA(pipe, plane_id)   _MMIO_VLV_SPR((pipe),
> > (plane_id), _SPACONSTALPHA, _SPBCONSTALPHA)
> > +#define SPSURFLIVE(pipe, plane_id)     _MMIO_VLV_SPR((pipe),
> > (plane_id), _SPASURFLIVE, _SPBSURFLIVE)
> >  #define SPCLRC0(pipe, plane_id)                _MMIO_VLV_SPR((pipe),
> > (plane_id), _SPACLRC0, _SPBCLRC0)
> >  #define SPCLRC1(pipe, plane_id)                _MMIO_VLV_SPR((pipe),
> > (plane_id), _SPACLRC1, _SPBCLRC1)
> >  #define SPGAMC(pipe, plane_id, i)      _MMIO(_VLV_SPR((pipe),
> > (plane_id), _SPAGAMC, _SPBGAMC) + (5 - (i)) * 4) /* 6 x u0.10 */
> 
> BR,
> 
> Jouni Högander
> 

-- 
Ville Syrjälä
Intel
