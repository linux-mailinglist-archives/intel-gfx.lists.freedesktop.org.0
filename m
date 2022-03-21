Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BC1984E29B0
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Mar 2022 15:08:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 47BFB10E48E;
	Mon, 21 Mar 2022 14:08:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 222EF10E48E
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Mar 2022 14:08:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647871707; x=1679407707;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=f8AidNVhaHZLdgRKSQs9q/phrqJikgGLBNbou1ndDoM=;
 b=FfRiQLm/2HoRmv56wzWD+NCYXtQd4lC25ilAeESGPmC4Pr5N6rCAXKgL
 4YYI/WhGbNTYKLWXGSb+YA+8cEe78C7SGCN8WFpyf/RICBRo4Z3+FxSdA
 MP7+T7JuHaIn9fxtaOViXbS4xrHl3L0z8aWjFqU1JMz/VpQcSupoiQeqB
 GnG0Y0RkEadAP2eK6C7RBqdtOW4OJngzDiJV9g3JwLffbjJY9BobC7bY+
 vjTDiZzgwcRxDn2W1eACzcIwfMG7bcSqhrM95oOSpClICO+TEDnRV9qL6
 fyuTia5ISLItiMATQzwTcibfuKYqR3uY/kVX73vcLSSVDsTXFn2xLHM/9 A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10292"; a="239717420"
X-IronPort-AV: E=Sophos;i="5.90,198,1643702400"; d="scan'208";a="239717420"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2022 07:08:26 -0700
X-IronPort-AV: E=Sophos;i="5.90,198,1643702400"; d="scan'208";a="500183017"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2022 07:08:25 -0700
Date: Mon, 21 Mar 2022 16:08:56 +0200
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <20220321140856.GA14902@intel.com>
References: <20220321110305.12853-1-stanislav.lisovskiy@intel.com>
 <20220321110305.12853-2-stanislav.lisovskiy@intel.com>
 <877d8nlbkr.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <877d8nlbkr.fsf@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH 1/2] drm: Add missing DP DSC extended
 capability definitions.
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

On Mon, Mar 21, 2022 at 02:44:20PM +0200, Jani Nikula wrote:
> On Mon, 21 Mar 2022, Stanislav Lisovskiy <stanislav.lisovskiy@intel.com> wrote:
> > Adding DP DSC register definitions, we might need for further
> > DSC implementation, supporting MST and DP branch pass-through mode.
> >
> > v2: - Fixed checkpatch comment warning
> >
> > Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> > ---
> >  drivers/gpu/drm/dp/drm_dp.c    | 25 +++++++++++++++++++++++++
> >  include/drm/dp/drm_dp_helper.h | 11 ++++++++++-
> >  2 files changed, 35 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/dp/drm_dp.c b/drivers/gpu/drm/dp/drm_dp.c
> > index 703972ae14c6..45815745ba7b 100644
> > --- a/drivers/gpu/drm/dp/drm_dp.c
> > +++ b/drivers/gpu/drm/dp/drm_dp.c
> > @@ -2312,6 +2312,31 @@ u8 drm_dp_dsc_sink_max_slice_count(const u8 dsc_dpcd[DP_DSC_RECEIVER_CAP_SIZE],
> >  }
> >  EXPORT_SYMBOL(drm_dp_dsc_sink_max_slice_count);
> >  
> > +/**
> > + * drm_dp_dsc_sink_bpp_increment_div - Get the bits per pixel precision
> > + * which DP DSC sink device supports.
> > + */
> > +u8 drm_dp_dsc_sink_bpp_increment_div(const u8 dsc_dpcd[DP_DSC_RECEIVER_CAP_SIZE])
> > +{
> > +	u8 bpp_increment_dpcd = dsc_dpcd[DP_DSC_BITS_PER_PIXEL_INC - DP_DSC_SUPPORT];
> > +
> > +	switch (bpp_increment_dpcd) {
> 
> So I didn't look this up in the spec, but later in the patch you're
> adding masks for the dpcd register in question, so I presume it's not
> fine to assume the whole register is about bbp.

In spec its called MAX_BPP_DELTA_AND_MAX_BPP_INCREMENT, for DP 1.4
rest bits are reserved, except those for bpp increment, while in
DP 2.0, rest are for max bpp delta(table 2-183)
I thought that full name would be too long and also confusing.

> 
> > +	case DP_DSC_BITS_PER_PIXEL_1_16:
> > +		return 16;
> > +	case DP_DSC_BITS_PER_PIXEL_1_8:
> > +		return 8;
> > +	case DP_DSC_BITS_PER_PIXEL_1_4:
> > +		return 4;
> > +	case DP_DSC_BITS_PER_PIXEL_1_2:
> > +		return 2;
> > +	case DP_DSC_BITS_PER_PIXEL_1_1:
> > +		return 1;
> > +	}
> > +
> > +	return 0;
> > +}
> > +
> > +
> 
> Didn't checkpatch complain about the double newline?

Actually it did. Fixed rest of warns, but for some reason didn't
spot this one.

> 
> You don't use the function for anything in patch 2. And you couldn't
> because it's not exported to drivers.

Yes, I think we don't support currently those increments, but I guess 
we will need those in future. Should I remove it until we actually start
using them?


Stan

> 
> BR,
> Jani.
> 
> >  /**
> >   * drm_dp_dsc_sink_line_buf_depth() - Get the line buffer depth in bits
> >   * @dsc_dpcd: DSC capabilities from DPCD
> > diff --git a/include/drm/dp/drm_dp_helper.h b/include/drm/dp/drm_dp_helper.h
> > index 51e02cf75277..e4c9f4438ccb 100644
> > --- a/include/drm/dp/drm_dp_helper.h
> > +++ b/include/drm/dp/drm_dp_helper.h
> > @@ -246,6 +246,9 @@ struct drm_panel;
> >  
> >  #define DP_DSC_SUPPORT                      0x060   /* DP 1.4 */
> >  # define DP_DSC_DECOMPRESSION_IS_SUPPORTED  (1 << 0)
> > +# define DP_DSC_PASS_THROUGH_IS_SUPPORTED   (1 << 1)
> > +# define DP_DSC_DYNAMIC_PPS_UPDATE_SUPPORT_COMP_TO_COMP    (1 << 2)
> > +# define DP_DSC_DYNAMIC_PPS_UPDATE_SUPPORT_UNCOMP_TO_COMP  (1 << 3)
> >  
> >  #define DP_DSC_REV                          0x061
> >  # define DP_DSC_MAJOR_MASK                  (0xf << 0)
> > @@ -284,12 +287,15 @@ struct drm_panel;
> >  
> >  #define DP_DSC_BLK_PREDICTION_SUPPORT       0x066
> >  # define DP_DSC_BLK_PREDICTION_IS_SUPPORTED (1 << 0)
> > +# define DP_DSC_RGB_COLOR_CONV_BYPASS_SUPPORT (1 << 1)
> >  
> >  #define DP_DSC_MAX_BITS_PER_PIXEL_LOW       0x067   /* eDP 1.4 */
> >  
> >  #define DP_DSC_MAX_BITS_PER_PIXEL_HI        0x068   /* eDP 1.4 */
> >  # define DP_DSC_MAX_BITS_PER_PIXEL_HI_MASK  (0x3 << 0)
> >  # define DP_DSC_MAX_BITS_PER_PIXEL_HI_SHIFT 8
> > +# define DP_DSC_MAX_BPP_DELTA_VERSION_MASK  0x06
> > +# define DP_DSC_MAX_BPP_DELTA_AVAILABILITY  0x08
> >  
> >  #define DP_DSC_DEC_COLOR_FORMAT_CAP         0x069
> >  # define DP_DSC_RGB                         (1 << 0)
> > @@ -351,11 +357,13 @@ struct drm_panel;
> >  # define DP_DSC_24_PER_DP_DSC_SINK          (1 << 2)
> >  
> >  #define DP_DSC_BITS_PER_PIXEL_INC           0x06F
> > +# define DP_DSC_RGB_YCbCr444_MAX_BPP_DELTA_MASK 0x1f
> > +# define DP_DSC_RGB_YCbCr420_MAX_BPP_DELTA_MASK 0xe0
> >  # define DP_DSC_BITS_PER_PIXEL_1_16         0x0
> >  # define DP_DSC_BITS_PER_PIXEL_1_8          0x1
> >  # define DP_DSC_BITS_PER_PIXEL_1_4          0x2
> >  # define DP_DSC_BITS_PER_PIXEL_1_2          0x3
> > -# define DP_DSC_BITS_PER_PIXEL_1            0x4
> > +# define DP_DSC_BITS_PER_PIXEL_1_1          0x4
> >  
> >  #define DP_PSR_SUPPORT                      0x070   /* XXX 1.2? */
> >  # define DP_PSR_IS_SUPPORTED                1
> > @@ -1825,6 +1833,7 @@ u8 drm_dp_dsc_sink_max_slice_count(const u8 dsc_dpcd[DP_DSC_RECEIVER_CAP_SIZE],
> >  u8 drm_dp_dsc_sink_line_buf_depth(const u8 dsc_dpcd[DP_DSC_RECEIVER_CAP_SIZE]);
> >  int drm_dp_dsc_sink_supported_input_bpcs(const u8 dsc_dpc[DP_DSC_RECEIVER_CAP_SIZE],
> >  					 u8 dsc_bpc[3]);
> > +u8 drm_dp_dsc_sink_bpp_increment_div(const u8 dsc_dpcd[DP_DSC_RECEIVER_CAP_SIZE]);
> >  
> >  static inline bool
> >  drm_dp_sink_supports_dsc(const u8 dsc_dpcd[DP_DSC_RECEIVER_CAP_SIZE])
> 
> -- 
> Jani Nikula, Intel Open Source Graphics Center
