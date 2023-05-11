Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 808F86FF0B9
	for <lists+intel-gfx@lfdr.de>; Thu, 11 May 2023 13:54:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C24DB10E08D;
	Thu, 11 May 2023 11:54:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C996C10E08D
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 May 2023 11:54:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683806094; x=1715342094;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=5RN5G0hLyNYxq59ImrrdxP3qt5gCGDAZ+m34zfrkI48=;
 b=RDsXNHCdFdyadWIpUK6JFM5jq216kLgWFtRM1QPwzkYH/faXSNDYWNXe
 CSBzoBN4IBMw5h4nLru3TNBH85zDLXTnkt+dPcws4tW8EVcFLZ833Ztul
 1DvBkwqdDx9azcA/BJpEZ03Vjel4F6BcZ0Mwn2qet/aICb5N6JtH/Kdid
 SogykLqc0SYADgQfWdkBHGoPDolLkF+7BY35723BM0Qko2Ufjvg/DmC/7
 ROTV1gI5S9P+TTknVhKEKvjkvNKMhyWy1Y18m+wEup/mp6/cJQ08DaGw4
 41sxiAAcRLTt4qrxLRehCrRO7etkB7yZnpOmEKP78ADdBCfZRXI5/5fIH Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10706"; a="334960974"
X-IronPort-AV: E=Sophos;i="5.99,266,1677571200"; d="scan'208";a="334960974"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2023 04:54:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10706"; a="843915444"
X-IronPort-AV: E=Sophos;i="5.99,266,1677571200"; d="scan'208";a="843915444"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by fmsmga001.fm.intel.com with SMTP; 11 May 2023 04:54:51 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 11 May 2023 14:54:50 +0300
Date: Thu, 11 May 2023 14:54:50 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Luca Coelho <luca@coelho.fi>
Message-ID: <ZFzXigQck7Vk7Mkf@intel.com>
References: <20230426135019.7603-1-ville.syrjala@linux.intel.com>
 <20230426135019.7603-8-ville.syrjala@linux.intel.com>
 <fd19232a9a6a82fcb6875b2d603bdaa1f71c2699.camel@coelho.fi>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <fd19232a9a6a82fcb6875b2d603bdaa1f71c2699.camel@coelho.fi>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v2 7/7] drm/i915: Define more PS_CTRL bits
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

On Thu, May 11, 2023 at 10:29:01AM +0300, Luca Coelho wrote:
> On Wed, 2023-04-26 at 16:50 +0300, Ville Syrjala wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > 
> > To avoid annoying spec lookups let's define more PS_CTRL
> > bits in the header.
> > 
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/i915_reg.h | 11 +++++++++++
> >  1 file changed, 11 insertions(+)
> > 
> > diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> > index f5ae8d1eb6ff..e08bb15eddcf 100644
> > --- a/drivers/gpu/drm/i915/i915_reg.h
> > +++ b/drivers/gpu/drm/i915/i915_reg.h
> > @@ -4055,6 +4055,9 @@
> >  #define _PS_2B_CTRL      0x68A80
> >  #define _PS_1C_CTRL      0x69180
> >  #define   PS_SCALER_EN				REG_BIT(31)
> > +#define   PS_SCALER_TYPE_MASK			REG_BIT(30) /* icl+ */
> > +#define   PS_SCALER_TYPE_NON_LINEAR		REG_FIELD_PREP(PS_SCALER_TYPE_MASK, 0)
> > +#define   PS_SCALER_TYPE_LINEAR			REG_FIELD_PREP(PS_SCALER_TYPE_MASK, 1)
> >  #define   SKL_PS_SCALER_MODE_MASK		REG_GENMASK(29, 28) /* skl/bxt */
> >  #define   SKL_PS_SCALER_MODE_DYN		REG_FIELD_PREP(SKL_PS_SCALER_MODE_MASK, 0)
> >  #define   SKL_PS_SCALER_MODE_HQ			REG_FIELD_PREP(SKL_PS_SCALER_MODE_MASK, 1)
> > @@ -4062,6 +4065,7 @@
> >  #define   PS_SCALER_MODE_MASK			REG_BIT(29) /* glk-tgl */
> >  #define   PS_SCALER_MODE_NORMAL			REG_FIELD_PREP(PS_SCALER_MODE_MASK, 0)
> >  #define   PS_SCALER_MODE_PLANAR			REG_FIELD_PREP(PS_SCALER_MODE_MASK, 1)
> > +#define   PS_ADAPTIVE_FILTERING_EN		REG_BIT(28) /* icl+ */
> >  #define   PS_BINDING_MASK			REG_GENMASK(27, 25)
> >  #define   PS_BINDING_PIPE			REG_FIELD_PREP(PS_BINDING_MASK, 0)
> >  #define   PS_BINDING_PLANE(plane_id)		REG_FIELD_PREP(PS_BINDING_MASK, (plane_id) + 1)
> > @@ -4070,8 +4074,15 @@
> >  #define   PS_FILTER_PROGRAMMED			REG_FIELD_PREP(PS_FILTER_MASK, 1)
> >  #define   PS_FILTER_EDGE_ENHANCE		REG_FIELD_PREP(PS_FILTER_MASK, 2)
> >  #define   PS_FILTER_BILINEAR			REG_FIELD_PREP(PS_FILTER_MASK, 3)
> > +#define   PS_ADAPTIVE_FILTER_MASK		REG_BIT(22) /* icl+ */
> > +#define   PS_ADAPTIVE_FILTER_MEDIUM		REG_FIELD_PREP(PS_ADAPTIVE_FILTER_MASK, 0)
> > +#define   PS_ADAPTIVE_FILTER_EDGE_ENHANCE	REG_FIELD_PREP(PS_ADAPTIVE_FILTER_MASK, 1)
> > +#define   PS_PIPE_SCALER_LOC_MASK		REG_BIT(21) /* icl+ */
> > +#define   PS_PIPE_SCALER_LOC_AFTER_OUTPUT_CSC	REG_FIELD_PREP(PS_SCALER_LOCATION_MASK, 0) /* non-linear */
> > +#define   PS_PIPE_SCALER_LOC_AFTER_CSC		REG_FIELD_PREP(PS_SCALER_LOCATION_MASK, 1) /* linear */
> >  #define   PS_VERT3TAP				REG_BIT(21) /* skl/bxt */
> >  #define   PS_VERT_INT_INVERT_FIELD		REG_BIT(20)
> > +#define   PS_PROG_SCALE_FACTOR			REG_BIT(19) /* tgl+ */
> 
> This one is actually a two-bit field, isn't it? 19:18.  And why not
> define the values for it here too, like with the previous ones?

It's still a single bit in current hardware.

> 
> >  #define   PS_PWRUP_PROGRESS			REG_BIT(17)
> >  #define   PS_V_FILTER_BYPASS			REG_BIT(8)
> >  #define   PS_VADAPT_EN				REG_BIT(7) /* skl/bxt */
> 
> --
> Cheers,
> Luca.

-- 
Ville Syrjälä
Intel
