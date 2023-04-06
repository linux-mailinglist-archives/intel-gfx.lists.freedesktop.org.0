Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C428B6D94B9
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Apr 2023 13:10:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F3A6410EB5B;
	Thu,  6 Apr 2023 11:10:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A8CB910EB5B
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Apr 2023 11:10:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680779414; x=1712315414;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=4pDRw4aicJSIJC3qwutLnnx6QQqz9KYWa2FurS+YN/A=;
 b=PJEG3Lzvu4Conh/E/VFcZd0W+Tml5GM0piqafBkQswqB/Yr8rUlrVGa+
 VHlUH0NXlzSm4D9yPEG3j0lC3S5zVknUcf52R6AvfKKDpiS0PI7o1tELV
 2b/oxoSbo/WewdlNJWtuw3EhZ0W9llpsxDo2EzUcaPwNTLQwL+wJ3TIju
 GsKpVQOweOG2OxSP26uZhGLWNX3D84hFbmqvi4XjV3OybiEllLMfZhyUc
 1gBtv5c+Q1U+RH4dxL0WpsCUjX4qTEK/tl5BTLFj43vFh9FlZ9mqMOD82
 OL7Ix5rAVAC1wUx0QEkiB8WQPnv/XaFAdHow3UAidrMBHTJpfBmbV2RxG Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10671"; a="405494393"
X-IronPort-AV: E=Sophos;i="5.98,323,1673942400"; d="scan'208";a="405494393"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2023 04:10:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10671"; a="717414084"
X-IronPort-AV: E=Sophos;i="5.98,323,1673942400"; d="scan'208";a="717414084"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga008.jf.intel.com with SMTP; 06 Apr 2023 04:10:10 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 06 Apr 2023 14:10:10 +0300
Date: Thu, 6 Apr 2023 14:10:10 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Message-ID: <ZC6okmAsug2LGYBO@intel.com>
References: <20230329135002.3096-1-ville.syrjala@linux.intel.com>
 <20230329135002.3096-2-ville.syrjala@linux.intel.com>
 <eeceb998-0bc6-53c3-a6c8-54b5e660f961@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <eeceb998-0bc6-53c3-a6c8-54b5e660f961@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 01/12] drm/i915: Fix limited range csc matrix
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

On Thu, Apr 06, 2023 at 04:26:48PM +0530, Nautiyal, Ankit K wrote:
> Hi Ville,
> 
> HDMI1.4b indeed says max value for 16bpc as 60160 (0xeb00)
> And black level of 4096.
> 
> Got me thinking that we might need to consider bpc for getting the 
> Coeffs and the offsets.
> IIUC for CSC Full range to Limited range:
> out = in * gain  + offset
> 
> Gain :
> So for 8 bpc, as you have mentioned
> multiplier or gain will be: (235-16) / 255 = 0.8588 ~0.86
> offset will be 16, as range is from 16-235
> 
> 16 bpc
> Multiplier: (60160-4096)/65535 = 0.8555 ~0.86
> Offset for 16bit: should be 4096
> 
> So it seems Multiplier of 0.86 should be alright for different bpc, but 
> offset would vary.

It's all still in the pipe's internal precision. So any 16 vs. 4096
distinction doesn't exist.

> 
> Also CSC Postoff programming for the offset doesn’t seem very clear to me.
> For CSC BT709 RGB Full range->YCbCr Limited Range, we use offset of {16, 
> 128, 128} for Y, Cb, Cr, and we write 0x800, 0x100, 0x100 for these values.

Y is the middle channel. We write 0x800,0x100,0x800

> 
> But below for Limited range Post offset 16,  we seem to be shifting by 
> (12 - 8) i.e 4. Am I missing something?
> 
> 
> Regards,
> 
> Ankit
> 
> On 3/29/2023 7:19 PM, Ville Syrjala wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >
> > Our current limited range matrix is a bit off. I think it
> > was originally calculated with rounding, as if we wanted
> > the normal pixel replication type of behaviour.
> > That is, since the 8bpc max value is 0xeb we assumed the
> > 16bpc max value should be 0xebeb, but what the HDMI spec
> > actually says it should be is 0xeb00.
> >
> > So to get what we want we make the formula
> >   out = in * (235-16) << (12-8) / in_max + 16 << (12-8),
> > with 12 being precision of the csc, 8 being the precision
> > of the constants we used.
> >
> > The hardware takes its coefficients as floating point
> > values, but the (235−16)/255 = ~.86, so exponent 0
> > is what we want anyway, so it works out perfectly without
> > having to hardcode it in hex or start playing with floats.
> >
> > In terms of raw numbers we are feeding the hardware the
> > post offset changes from 0x101 to 0x100, and the coefficient
> > changes from 0xdc0 to 0xdb0 (~.860->~.855). So this should
> > make everything come out just a tad darker.
> >
> > I already used better constants in lut_limited_range() earlier
> > so the output of the two paths should be closer now.
> >
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >   drivers/gpu/drm/i915/display/intel_color.c | 5 ++---
> >   1 file changed, 2 insertions(+), 3 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
> > index 36aac88143ac..3c3e2f5a5cde 100644
> > --- a/drivers/gpu/drm/i915/display/intel_color.c
> > +++ b/drivers/gpu/drm/i915/display/intel_color.c
> > @@ -116,10 +116,9 @@ struct intel_color_funcs {
> >   #define ILK_CSC_COEFF_FP(coeff, fbits)	\
> >   	(clamp_val(((coeff) >> (32 - (fbits) - 3)) + 4, 0, 0xfff) & 0xff8)
> >   
> > -#define ILK_CSC_COEFF_LIMITED_RANGE 0x0dc0
> >   #define ILK_CSC_COEFF_1_0 0x7800
> > -
> > -#define ILK_CSC_POSTOFF_LIMITED_RANGE (16 * (1 << 12) / 255)
> > +#define ILK_CSC_COEFF_LIMITED_RANGE ((235 - 16) << (12 - 8)) /* exponent 0 */
> > +#define ILK_CSC_POSTOFF_LIMITED_RANGE (16 << (12 - 8))
> >   
> >   /* Nop pre/post offsets */
> >   static const u16 ilk_csc_off_zero[3] = {};

-- 
Ville Syrjälä
Intel
