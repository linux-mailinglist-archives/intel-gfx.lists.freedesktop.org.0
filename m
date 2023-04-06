Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1343E6D945B
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Apr 2023 12:46:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 95C8410E4F6;
	Thu,  6 Apr 2023 10:45:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CA81410E4F6
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Apr 2023 10:45:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680777956; x=1712313956;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=6Tpk+07q4zBVDBluHFzDcsS+mvLRu3F04+RvasGzaF8=;
 b=L23pZTEw1aOy6rT6znGzk24RyPWLIclLycVBJeoqiS5vc11hqq0m+sKG
 x97LH0p6E54VsvHkYw+AWbOr/1SntoFj8SCYTsYCPetjGTZGBryKI27rT
 IgBot57DO8SRjoOMA5Kfle/MyBWw0sz8svYFhv4teKeAgMO6kfJ3oS8pL
 /rRCN1w308NS5WtY6NfvYH/it16rWfXBj9rhSmOVgQ2WG0CZZVX5aTAXE
 Mg1RLPooY2nIFaalOYH0PDDlvXxWkli7Ae6jheUY8enNQPghxbHlBJ/0N
 tO+C7Z9ke/IgmggeAuptV+rLl98faCl9UxyzM5kBkidZaIgfKlBNPO+hW Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10671"; a="370537824"
X-IronPort-AV: E=Sophos;i="5.98,323,1673942400"; d="scan'208";a="370537824"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2023 03:45:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10671"; a="933159142"
X-IronPort-AV: E=Sophos;i="5.98,323,1673942400"; d="scan'208";a="933159142"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by fmsmga006.fm.intel.com with SMTP; 06 Apr 2023 03:45:54 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 06 Apr 2023 13:45:53 +0300
Date: Thu, 6 Apr 2023 13:45:53 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Message-ID: <ZC6i4cCPTJ3sGfI+@intel.com>
References: <20230329135002.3096-1-ville.syrjala@linux.intel.com>
 <20230329135002.3096-4-ville.syrjala@linux.intel.com>
 <b5376338-5b2c-7efb-b3e2-b81ede2188f0@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <b5376338-5b2c-7efb-b3e2-b81ede2188f0@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 03/12] drm/i915: Split chv_load_cgm_csc()
 into pieces
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

On Thu, Apr 06, 2023 at 02:33:05PM +0530, Nautiyal, Ankit K wrote:
> 
> On 3/29/2023 7:19 PM, Ville Syrjala wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >
> > Split chv_cgm_csc_convert_ctm() out from chv_load_cgm_csc() so
> > that we have functions with clear jobs. This is also how the ilk+
> > code is already structured.
> >
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >   drivers/gpu/drm/i915/display/intel_color.c | 19 +++++++++++++------
> >   1 file changed, 13 insertions(+), 6 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
> > index b1059e0c0665..47af24e64a7e 100644
> > --- a/drivers/gpu/drm/i915/display/intel_color.c
> > +++ b/drivers/gpu/drm/i915/display/intel_color.c
> > @@ -399,16 +399,13 @@ static void icl_load_csc_matrix(const struct intel_crtc_state *crtc_state)
> >   	}
> >   }
> >   
> > -static void chv_load_cgm_csc(struct intel_crtc *crtc,
> > -			     const struct drm_property_blob *blob)
> > +static void chv_cgm_csc_convert_ctm(u16 coeffs[9],
> > +				    const struct drm_property_blob *blob)
> >   {
> > -	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
> >   	const struct drm_color_ctm *ctm = blob->data;
> > -	enum pipe pipe = crtc->pipe;
> > -	u16 coeffs[9];
> >   	int i;
> >   
> > -	for (i = 0; i < ARRAY_SIZE(coeffs); i++) {
> > +	for (i = 0; i < 9; i++) {
> 
> Can still use ARRAY_SIZE(coeffs).

Nope. Arrays passed to functions are in fact pointers in C.

> 
> In any case the patch looks good to me.
> 
> Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> 
> 
> >   		u64 abs_coeff = ((1ULL << 63) - 1) & ctm->matrix[i];
> >   
> >   		/* Round coefficient. */
> > @@ -425,6 +422,16 @@ static void chv_load_cgm_csc(struct intel_crtc *crtc,
> >   		coeffs[i] |= ((abs_coeff >> 32) & 7) << 12;
> >   		coeffs[i] |= (abs_coeff >> 20) & 0xfff;
> >   	}
> > +}
> > +
> > +static void chv_load_cgm_csc(struct intel_crtc *crtc,
> > +			     const struct drm_property_blob *blob)
> > +{
> > +	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
> > +	enum pipe pipe = crtc->pipe;
> > +	u16 coeffs[9];
> > +
> > +	chv_cgm_csc_convert_ctm(coeffs, blob);
> >   
> >   	intel_de_write_fw(i915, CGM_PIPE_CSC_COEFF01(pipe),
> >   			  coeffs[1] << 16 | coeffs[0]);

-- 
Ville Syrjälä
Intel
