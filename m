Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 024812C2C9A
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Nov 2020 17:19:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A2A36E4A6;
	Tue, 24 Nov 2020 16:19:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9144A6E4A6;
 Tue, 24 Nov 2020 16:19:17 +0000 (UTC)
IronPort-SDR: H/QFw7eS9QCkANvtIX4jU33ItLmIc+HO5BMmbdle2P17rULfx9QUSwOjZ8yeOyrcBccJFCTafZ
 8BopPsblqVbQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9815"; a="172070322"
X-IronPort-AV: E=Sophos;i="5.78,366,1599548400"; d="scan'208";a="172070322"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2020 08:19:16 -0800
IronPort-SDR: HtDijMeD1qWOfiNKcOTsCjMWhDKM7iJ4Y9z+xAPkdQywrFPQaSRCLemKTeE4RCRqvAkj0GgxrC
 bUbKW+B6nNYg==
X-IronPort-AV: E=Sophos;i="5.78,366,1599548400"; d="scan'208";a="370419355"
Received: from genxfsim-desktop.iind.intel.com (HELO intel.com)
 ([10.223.74.178])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2020 08:19:14 -0800
Date: Tue, 24 Nov 2020 21:35:28 +0530
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: Ramalingam C <ramalingam.c@intel.com>
Message-ID: <20201124160527.GI13853@intel.com>
References: <20201111062051.11529-1-anshuman.gupta@intel.com>
 <20201111062051.11529-9-anshuman.gupta@intel.com>
 <20201124142017.GB25283@intel.com>
 <20201124150243.GG13853@intel.com>
 <20201124161719.GA25919@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201124161719.GA25919@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH v5 08/17] drm/i915/hdcp: Enable Gen12 HDCP
 1.4 DP MST support
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
Cc: jani.nikula@intel.com, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, seanpaul@chromium.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 2020-11-24 at 21:47:19 +0530, Ramalingam C wrote:
> On 2020-11-24 at 20:32:43 +0530, Anshuman Gupta wrote:
> > On 2020-11-24 at 19:50:17 +0530, Ramalingam C wrote:
> > > On 2020-11-11 at 11:50:42 +0530, Anshuman Gupta wrote:
> > > > Enable HDCP 1.4 over DP MST for Gen12.
> > > > 
> > > > Cc: Ramalingam C <ramalingam.c@intel.com>
> > > > Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
> > > > ---
> > > >  drivers/gpu/drm/i915/display/intel_dp_mst.c | 10 +++-------
> > > >  1 file changed, 3 insertions(+), 7 deletions(-)
> > > > 
> > > > diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > > > index 16865b200062..f00e12fc83e8 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > > > +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > > > @@ -826,13 +826,9 @@ static struct drm_connector *intel_dp_add_mst_connector(struct drm_dp_mst_topolo
> > > >  	intel_attach_force_audio_property(connector);
> > > >  	intel_attach_broadcast_rgb_property(connector);
> > > >  
> > > > -
> > > > -	/* TODO: Figure out how to make HDCP work on GEN12+ */
> > > > -	if (INTEL_GEN(dev_priv) < 12) {
> > > Just a thought, shouldn't we enable for the platforms that we have
> > > tested HDCP? like <= 12. 
> > > 
> > > We could keep expanding the list supported.
> > thanks for comment, i will keep this as if (INTEL_GEN(dev_priv) < 12)
> I guess you meant <= 12.
:) yes it was typo
Thanks,
Anshuman.
> 
> Ram.
> > Thanks,
> > Anshuman
> > > 
> > > Ram.
> > > > -		ret = intel_dp_init_hdcp(dig_port, intel_connector);
> > > > -		if (ret)
> > > > -			DRM_DEBUG_KMS("HDCP init failed, skipping.\n");
> > > > -	}
> > > > +	ret = intel_dp_init_hdcp(dig_port, intel_connector);
> > > > +	if (ret)
> > > > +		drm_dbg_kms(&dev_priv->drm, "HDCP init failed, skipping.\n");
> > > >  
> > > >  	/*
> > > >  	 * Reuse the prop from the SST connector because we're
> > > > -- 
> > > > 2.26.2
> > > > 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
