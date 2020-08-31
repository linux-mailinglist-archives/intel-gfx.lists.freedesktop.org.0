Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A9C582574C8
	for <lists+intel-gfx@lfdr.de>; Mon, 31 Aug 2020 09:56:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1E0C389C59;
	Mon, 31 Aug 2020 07:56:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7C03C89C59
 for <intel-gfx@lists.freedesktop.org>; Mon, 31 Aug 2020 07:56:55 +0000 (UTC)
IronPort-SDR: u8zCKClRUaclKWip/Mrhz7sWqJPLEYf/qyC3LZIKinL2dRiZwNGsr3KnDa93ZjleVCyXwXeEeZ
 Pyk5Mbo9QcFw==
X-IronPort-AV: E=McAfee;i="6000,8403,9729"; a="156929675"
X-IronPort-AV: E=Sophos;i="5.76,374,1592895600"; d="scan'208";a="156929675"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Aug 2020 00:56:54 -0700
IronPort-SDR: ABvSatM882hPNGVNzZSnYi01EyG5y6SfM+UVqzYEmtbp18J3T/Q2iEu4jUnB2VFHTYHgOej9kv
 xADOVPLtIf8g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,374,1592895600"; d="scan'208";a="283014813"
Received: from irsmsx603.ger.corp.intel.com ([163.33.146.9])
 by fmsmga008.fm.intel.com with ESMTP; 31 Aug 2020 00:56:53 -0700
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 irsmsx603.ger.corp.intel.com (163.33.146.9) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 31 Aug 2020 08:56:37 +0100
Received: from bgsmsx604.gar.corp.intel.com ([10.67.234.6]) by
 BGSMSX604.gar.corp.intel.com ([10.67.234.6]) with mapi id 15.01.1713.004;
 Mon, 31 Aug 2020 13:26:36 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 1/2] drm/i915/opregion: add support for mailbox #5 EDID
Thread-Index: AQHWfQM9ZczuN+2dokO1jMcwFxIAmqlMsqcAgAUrVvA=
Date: Mon, 31 Aug 2020 07:56:36 +0000
Message-ID: <e5f6ff13a09442bba40a5e2b7e091d5e@intel.com>
References: <20200828061941.17051-1-jani.nikula@intel.com>
 <871rjr5lo3.fsf@intel.com>
In-Reply-To: <871rjr5lo3.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
x-originating-ip: [10.223.10.1]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/opregion: add support for
 mailbox #5 EDID
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Jani Nikula <jani.nikula@intel.com>
> Sent: Friday, August 28, 2020 11:58 AM
> To: intel-gfx@lists.freedesktop.org
> Cc: Shankar, Uma <uma.shankar@intel.com>
> Subject: Re: [PATCH 1/2] drm/i915/opregion: add support for mailbox #5 EDID
> 
> On Fri, 28 Aug 2020, Jani Nikula <jani.nikula@intel.com> wrote:
> > The ACPI OpRegion Mailbox #5 ASLE extension may contain an EDID to be
> > used for the embedded display. Add support for using it via the EDID
> > override mechanism.
> >
> > Note that the override EDID may be later reset or changed via debugfs,
> > as usual.
> >
> > Cc: Uma Shankar <uma.shankar@intel.com>
> > Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_opregion.c | 46
> > ++++++++++++++++++-  drivers/gpu/drm/i915/display/intel_opregion.h |
> > 8 ++++
> >  2 files changed, 53 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_opregion.c
> > b/drivers/gpu/drm/i915/display/intel_opregion.c
> > index de995362f428..13485969fafa 100644
> > --- a/drivers/gpu/drm/i915/display/intel_opregion.c
> > +++ b/drivers/gpu/drm/i915/display/intel_opregion.c
> > @@ -196,6 +196,8 @@ struct opregion_asle_ext {
> >  #define ASLE_IUER_WINDOWS_BTN		(1 << 1)
> >  #define ASLE_IUER_POWER_BTN		(1 << 0)
> >
> > +#define ASLE_PHED_EDID_VALID_MASK	0x3
> > +
> >  /* Software System Control Interrupt (SWSCI) */
> >  #define SWSCI_SCIC_INDICATOR		(1 << 0)
> >  #define SWSCI_SCIC_MAIN_FUNCTION_SHIFT	1
> > @@ -909,8 +911,10 @@ int intel_opregion_setup(struct drm_i915_private
> *dev_priv)
> >  		opregion->asle->ardy = ASLE_ARDY_NOT_READY;
> >  	}
> >
> > -	if (mboxes & MBOX_ASLE_EXT)
> > +	if (mboxes & MBOX_ASLE_EXT) {
> >  		drm_dbg(&dev_priv->drm, "ASLE extension supported\n");
> > +		opregion->asle_ext = base + OPREGION_ASLE_EXT_OFFSET;
> > +	}
> >
> >  	if (intel_load_vbt_firmware(dev_priv) == 0)
> >  		goto out;
> > @@ -1041,6 +1045,45 @@ intel_opregion_get_panel_type(struct
> drm_i915_private *dev_priv)
> >  	return ret - 1;
> >  }
> >
> > +void intel_opregion_edid_override(struct intel_connector
> > +*intel_connector) {
> > +	struct drm_connector *connector = &intel_connector->base;
> > +	struct drm_i915_private *i915 = to_i915(connector->dev);
> > +	struct intel_opregion *opregion = &i915->opregion;
> > +	const void *in_edid;
> > +	const struct edid *edid;
> > +	int len, ret;
> > +
> > +	if (!opregion->asle_ext)
> > +		return;
> > +
> > +	in_edid = opregion->asle_ext->bddc;
> > +
> > +	/* Validity corresponds to number of 128-byte blocks */
> > +	len = (opregion->asle_ext->phed & ASLE_PHED_EDID_VALID_MASK) * 128;
> > +	if (!len || !memchr_inv(in_edid, 0, len))
> > +		return;
> > +
> > +	edid = in_edid;
> > +
> > +	/*
> > +	 * FIXME: Might also check drm_edid_is_valid(edid) here but that
> > +	 * requires mutable edid.
> > +	 */
> > +	if (len < EDID_LENGTH * (1 + edid->extensions)) {
> > +		drm_dbg_kms(&i915->drm, "Invalid EDID in ACPI OpRegion
> (Mailbox #5)\n");
> > +		return;
> > +	}
> > +
> > +	connector->override_edid = false;
> > +	ret = drm_connector_update_edid_property(connector, edid);
> > +	if (ret)
> > +		return;
> > +
> 
> This is missing here:
> 
> 	connector->override_edid = true;

Yeah with this added, changes look good to me
Reviewed-by: Uma Shankar <uma.shankar@intel.com>

> > +	drm_dbg_kms(&i915->drm, "Using OpRegion EDID for
> [CONNECTOR:%d:%s]\n",
> > +		    connector->base.id, connector->name); }
> > +
> >  void intel_opregion_register(struct drm_i915_private *i915)  {
> >  	struct intel_opregion *opregion = &i915->opregion; @@ -1131,6
> > +1174,7 @@ void intel_opregion_unregister(struct drm_i915_private *i915)
> >  	opregion->acpi = NULL;
> >  	opregion->swsci = NULL;
> >  	opregion->asle = NULL;
> > +	opregion->asle_ext = NULL;
> >  	opregion->vbt = NULL;
> >  	opregion->lid_state = NULL;
> >  }
> > diff --git a/drivers/gpu/drm/i915/display/intel_opregion.h
> > b/drivers/gpu/drm/i915/display/intel_opregion.h
> > index 4aa68ffbd30e..b407a0744c40 100644
> > --- a/drivers/gpu/drm/i915/display/intel_opregion.h
> > +++ b/drivers/gpu/drm/i915/display/intel_opregion.h
> > @@ -29,12 +29,14 @@
> >  #include <linux/pci.h>
> >
> >  struct drm_i915_private;
> > +struct intel_connector;
> >  struct intel_encoder;
> >
> >  struct opregion_header;
> >  struct opregion_acpi;
> >  struct opregion_swsci;
> >  struct opregion_asle;
> > +struct opregion_asle_ext;
> >
> >  struct intel_opregion {
> >  	struct opregion_header *header;
> > @@ -43,6 +45,7 @@ struct intel_opregion {
> >  	u32 swsci_gbda_sub_functions;
> >  	u32 swsci_sbcb_sub_functions;
> >  	struct opregion_asle *asle;
> > +	struct opregion_asle_ext *asle_ext;
> >  	void *rvda;
> >  	void *vbt_firmware;
> >  	const void *vbt;
> > @@ -71,6 +74,7 @@ int intel_opregion_notify_encoder(struct
> > intel_encoder *intel_encoder,  int intel_opregion_notify_adapter(struct
> drm_i915_private *dev_priv,
> >  				  pci_power_t state);
> >  int intel_opregion_get_panel_type(struct drm_i915_private *dev_priv);
> > +void intel_opregion_edid_override(struct intel_connector *connector);
> >
> >  #else /* CONFIG_ACPI*/
> >
> > @@ -117,6 +121,10 @@ static inline int intel_opregion_get_panel_type(struct
> drm_i915_private *dev)
> >  	return -ENODEV;
> >  }
> >
> > +void intel_opregion_edid_override(struct intel_connector *connector)
> > +{ }
> > +
> >  #endif /* CONFIG_ACPI */
> >
> >  #endif
> 
> --
> Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
