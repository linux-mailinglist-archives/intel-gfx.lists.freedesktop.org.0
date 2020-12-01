Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C3952CB02E
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Dec 2020 23:38:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AAC2F6E932;
	Tue,  1 Dec 2020 22:38:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 841C76E932
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Dec 2020 22:38:27 +0000 (UTC)
IronPort-SDR: 61UZjK61SFC+IVg7RFvqw6dB2wuKDb1h3UYBKEgBf+9Mdqx8AM7YsR3LrfVxD9ukQjBd33WpgQ
 DM82/094jNGw==
X-IronPort-AV: E=McAfee;i="6000,8403,9822"; a="237048101"
X-IronPort-AV: E=Sophos;i="5.78,385,1599548400"; d="scan'208";a="237048101"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2020 14:38:27 -0800
IronPort-SDR: rfOGGOl1s3IFaB4yC6oI+Qt1IdLKAK5oPykM2otvTldBHh8doH78fwcNSt7FNC8wjLhCdd6o/7
 7oPqsMbyM48w==
X-IronPort-AV: E=Sophos;i="5.78,385,1599548400"; d="scan'208";a="549768435"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO labuser-Z97X-UD5H)
 ([10.165.21.211])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2020 14:38:27 -0800
Date: Tue, 1 Dec 2020 14:41:23 -0800
From: "Navare, Manasi" <manasi.d.navare@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <20201201224123.GA22608@labuser-Z97X-UD5H>
References: <20201022222709.29386-1-manasi.d.navare@intel.com>
 <20201022222709.29386-2-manasi.d.navare@intel.com>
 <87361htt8q.fsf@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87361htt8q.fsf@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH 01/11] drm/i915: Add REG_FIELD_PREP to VRR
 register def
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Nov 10, 2020 at 12:13:09PM +0200, Jani Nikula wrote:
> On Thu, 22 Oct 2020, Manasi Navare <manasi.d.navare@intel.com> wrote:
> > VRR_CTL register onloy had a GENMASK but no field prep
> > define for TRANS_VRR_CTL_LINE_COUNT field so add that
> 
> For the subject, I think mentioning VRR_CTL_LINK_COUNT is more important
> than REG_FIELD_PREP.

Yes will make that change in the commit message and use your r-b
Thanks for the review

Manasi
> 
> Reviewed-by: Jani Nikula <jani.nikula@intel.com>
> 
> >
> > Cc: Aditya Swarup <aditya.swarup@intel.com>
> > Signed-off-by: Manasi Navare <manasi.d.navare@intel.com>
> > ---
> >  drivers/gpu/drm/i915/i915_reg.h | 1 +
> >  1 file changed, 1 insertion(+)
> >
> > diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> > index d4952c9875fb..9792c931b4c5 100644
> > --- a/drivers/gpu/drm/i915/i915_reg.h
> > +++ b/drivers/gpu/drm/i915/i915_reg.h
> > @@ -4348,6 +4348,7 @@ enum {
> >  #define   VRR_CTL_IGN_MAX_SHIFT		REG_BIT(30)
> >  #define   VRR_CTL_FLIP_LINE_EN		REG_BIT(29)
> >  #define   VRR_CTL_LINE_COUNT_MASK	REG_GENMASK(10, 3)
> > +#define   VRR_CTL_LINE_COUNT(x)		REG_FIELD_PREP(VRR_CTL_LINE_COUNT_MASK, (x))
> >  #define   VRR_CTL_SW_FULLLINE_COUNT	REG_BIT(0)
> >  
> >  #define _TRANS_VRR_VMAX_A		0x60424
> 
> -- 
> Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
