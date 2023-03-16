Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D9296BCB2B
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Mar 2023 10:40:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 03FEA10EC78;
	Thu, 16 Mar 2023 09:40:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CE80E10EC78
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Mar 2023 09:40:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678959638; x=1710495638;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=tcVL7Ilq48i/2KL6PPYlQarxL/2LW2m+pD5WBJMOfxo=;
 b=ltgK2qTXPXuEYlvFDu6GqvUDUO5tiHzMTBI64Eh6GUnzNxp9iD+K4XB4
 2kAUO1wiRMO9yID+rEnJ0iqP8DCqecsM3H9qCPob2qrV9jlcfdz5FMp7z
 eGPM37ROdn8W/jpTksZMKgBPuWyIG7jvW2l5PA/eobOftJxwLopnhwXN0
 JD3d/pi9b+hXe0YZ+ZZtcPtW5LhQtL9dEccwTBPwd6AVeVAwP1WHVyajc
 5w3AioLu3hdb1FcRcbkA2QnHTvES73XVTIOQFw7ILxOAmORrxSvHAzZbE
 Q1KLaBgBfVVqhEtQTbckAyPjSkHZql2n9UHjlwsIK/9u23Ry4v3+L5JCt g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10650"; a="339467653"
X-IronPort-AV: E=Sophos;i="5.98,265,1673942400"; d="scan'208";a="339467653"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2023 02:40:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10650"; a="710028098"
X-IronPort-AV: E=Sophos;i="5.98,265,1673942400"; d="scan'208";a="710028098"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga008.jf.intel.com with SMTP; 16 Mar 2023 02:40:36 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 16 Mar 2023 11:40:35 +0200
Date: Thu, 16 Mar 2023 11:40:35 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>
Message-ID: <ZBLkE6dzplun045y@intel.com>
References: <20230314130255.23273-1-ville.syrjala@linux.intel.com>
 <20230314130255.23273-5-ville.syrjala@linux.intel.com>
 <7972a12266ecd7f407358690b5485f700d3e17e1.camel@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <7972a12266ecd7f407358690b5485f700d3e17e1.camel@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 4/9] drm/i915: Program VLV/CHV PIPE_MSA_MISC
 register
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

On Thu, Mar 16, 2023 at 08:55:01AM +0000, Hogander, Jouni wrote:
> On Tue, 2023-03-14 at 15:02 +0200, Ville Syrjala wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > 
> > VLV/CHV have an extra register to configure some stereo3d
> > signalling details via DP MSA. Make sure we reset that
> > register to zero (since we don't do any stereo3d stuff).
> 
> Maybe add Bspec here? It took me a while to find this documentation.

Bpec + vlv/chv is lost cause. I never even bother looking there.

> 
> Can you please check also Bspec: 8125 ?

That's the HSW+ MSA register. Different beast.

> 
> > 
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display.c | 2 ++
> >  drivers/gpu/drm/i915/i915_reg.h              | 6 ++++++
> >  2 files changed, 8 insertions(+)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> > b/drivers/gpu/drm/i915/display/intel_display.c
> > index d95817288966..7b371d2746b5 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -2139,6 +2139,8 @@ static void valleyview_crtc_enable(struct
> > intel_atomic_state *state,
> >  
> >         intel_set_pipe_src_size(new_crtc_state);
> >  
> > +       intel_de_write(dev_priv, VLV_PIPE_MSA_MISC(pipe), 0);
> > +
> >         if (IS_CHERRYVIEW(dev_priv) && pipe == PIPE_B) {
> >                 intel_de_write(dev_priv, CHV_BLEND(pipe),
> > CHV_BLEND_LEGACY);
> >                 intel_de_write(dev_priv, CHV_CANVAS(pipe), 0);
> > diff --git a/drivers/gpu/drm/i915/i915_reg.h
> > b/drivers/gpu/drm/i915/i915_reg.h
> > index 66b6f451b80a..8f301bf4e2b6 100644
> > --- a/drivers/gpu/drm/i915/i915_reg.h
> > +++ b/drivers/gpu/drm/i915/i915_reg.h
> > @@ -7565,6 +7565,12 @@ enum skl_power_gate {
> >  #define PIPE_FLIPDONETIMSTMP(pipe)     \
> >         _MMIO_PIPE(pipe, _PIPE_FLIPDONETMSTMP_A,
> > _PIPE_FLIPDONETMSTMP_B)
> >  
> > +#define _VLV_PIPE_MSA_MISC_A                   0x70048
> > +#define VLV_PIPE_MSA_MISC(pipe)                \
> > +                       _MMIO_PIPE2(pipe, _VLV_PIPE_MSA_MISC_A)
> > +#define   VLV_MSA_MISC1_HW_ENABLE                      REG_BIT(31)
> > +#define  
> > VLV_MSA_MISC1_SW_S3D_MASK                    REG_GENMASK(2, 0) /* MSA
> > MISC1 3:1 */
> > +
> >  #define GGC                            _MMIO(0x108040)
> >  #define   GMS_MASK                     REG_GENMASK(15, 8)
> >  #define   GGMS_MASK                    REG_GENMASK(7, 6)
> 
> BR,
> 
> Jouni Högander

-- 
Ville Syrjälä
Intel
