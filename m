Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B80B81CD139
	for <lists+intel-gfx@lfdr.de>; Mon, 11 May 2020 07:09:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7DD1D6E112;
	Mon, 11 May 2020 05:09:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 226426E112
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 May 2020 05:09:45 +0000 (UTC)
IronPort-SDR: oltGGtdi0Z1Ejnwd7fQ7Ex88iG42qh1k7vN8c5YfHnKz/AqtKU7bbhg4tSiDFnvccGi7FhM7Bc
 yVkQDCzAP1/A==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2020 22:09:44 -0700
IronPort-SDR: F6Ifa6qZLn+NB1Yl7e5lobvNDrRg9ZuzmkSULQlqG6al9b0cVgauapfc//e6xSpkhpdmjAMPbS
 vM72pcJupNIQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,378,1583222400"; d="scan'208";a="252499340"
Received: from fmsmsx107.amr.corp.intel.com ([10.18.124.205])
 by fmsmga008.fm.intel.com with ESMTP; 10 May 2020 22:09:44 -0700
Received: from fmsmsx162.amr.corp.intel.com (10.18.125.71) by
 fmsmsx107.amr.corp.intel.com (10.18.124.205) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Sun, 10 May 2020 22:09:44 -0700
Received: from FMSEDG001.ED.cps.intel.com (10.1.192.133) by
 fmsmsx162.amr.corp.intel.com (10.18.125.71) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Sun, 10 May 2020 22:09:44 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.173)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server (TLS) id
 14.3.439.0; Sun, 10 May 2020 22:09:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XOCxi3gkzu5S8qz8WgqxClBEnkk8FENFVeYAFdPetEJ1EMV/iCTaIwkoWp35AxARrhaguzteWEkYHpejzgYCQe84BKnnXl0qeWq7w0AthFwDr0hSxNNAOIXDLeQIMoy1xLwZhE99s5VOJpdXYnJW7/TP9GPhZwDu3+HF5dEnC65v8wKvLi6aaeEvquULLv1eGhKyStUnoMDyUoJ73AiDtp49As8GAKxf93uYssoHfZNdL/0T1SGFag43j5a+E8hu0jQtHdq/BDlmVtF2tbwb605fYxrc4ph8W55+wGKARXZegZXXuanUeX5LmNTaoxXHo20o43sl/pcAht/WPgQIdw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=q8ceCyNAE31Fz71RZKwLeP6doMk+gmfYPqBzWLTV/kw=;
 b=b4/ISGtOHhh1SxwSUFmlnccUZMVRfeFKV5jnFTazW6uULhUKip+0BeOozemlSbLSkiIBUJCRITj9eyQkEW2DzN230ABAw4dI1IHQxtO5VpHB74Rx2jstvViJfRk5S6aowqMZRKxDur4f6v7JUDhQp+X20s4kjYIvNmX5VAoHDopSknwquh+bdGFQPonU5imKXxJyvItDuhoVTNTsS/WbCY5m1GpfATwCcHFuyPPXYkPT6Rxjqr7QXtCiTxrlYeeo9pIEMwR0L3U6SWnFt1jmLYIqLCewht73MIAnHLAcOTAAK7F70W978QAwDoJNhmTUB8jaANeaYraZ1nNwlLq4pA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=q8ceCyNAE31Fz71RZKwLeP6doMk+gmfYPqBzWLTV/kw=;
 b=TiyXuwmfTgUcjn0+WUHYR0cYrguPaOq/UDwR9SnQHYT4yjQ03Ncmi1uu65cePUci2QmJbKoDDfPhmZeuFbEsKETXFHK9IwA/KDbAGPt6isDuWQKNaMe1Va+Vt/E2WFPcCYLX7piAaXgGGFY/nR5O/pDoSXuHMy7L81Us0wU/Zts=
Received: from BN6PR11MB1588.namprd11.prod.outlook.com (2603:10b6:405:e::13)
 by BN6PR11MB2017.namprd11.prod.outlook.com (2603:10b6:404:46::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2979.29; Mon, 11 May
 2020 05:09:41 +0000
Received: from BN6PR11MB1588.namprd11.prod.outlook.com
 ([fe80::b45b:e45e:f6b2:9120]) by BN6PR11MB1588.namprd11.prod.outlook.com
 ([fe80::b45b:e45e:f6b2:9120%9]) with mapi id 15.20.2979.033; Mon, 11 May 2020
 05:09:41 +0000
From: "Lee, Shawn C" <shawn.c.lee@intel.com>
To: Lyude Paul <lyude@redhat.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915/mst: filter out the display mode exceed sink's
 capability
Thread-Index: AQHWFLwnGN/umVG7OUWdyvcd3EqKbqiIw+6AgAhCy5CAEXEo4A==
Date: Mon, 11 May 2020 05:09:41 +0000
Message-ID: <BN6PR11MB15888D8122A56D3D854A5FDAA3A10@BN6PR11MB1588.namprd11.prod.outlook.com>
References: <20200417212408.19649-1-shawn.c.lee@intel.com>
 <078627d6dff5e01868771b5b2158b75446200fd9.camel@redhat.com>
 <BN6PR11MB15883B388981ADA59DAEB97FA3AA0@BN6PR11MB1588.namprd11.prod.outlook.com>
In-Reply-To: <BN6PR11MB15883B388981ADA59DAEB97FA3AA0@BN6PR11MB1588.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.2.0.6
dlp-product: dlpe-windows
authentication-results: redhat.com; dkim=none (message not signed)
 header.d=none;redhat.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [118.167.3.14]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c9fac02e-5816-410d-15a6-08d7f5698308
x-ms-traffictypediagnostic: BN6PR11MB2017:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BN6PR11MB20176098A1A58A00DC9DBF26A3A10@BN6PR11MB2017.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 04004D94E2
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: o884+5pqO7f7VzxtN7YQCkw51OxZEa862w7abjrVhtxck4TeN/AY5sCPM+Y48PXQZOEf1aHzka57fILW/b6mc92LHLEFwWQpFtFEE0yBs5i6xOtGNzvY7Yby6oO5kVzxva/LGy/UnXwkqRrNlLXTSXuqnIXPbxoFBG4N1ZaSU6+ptIRl2w+kgHBvI3P3fi/VihjG+YNC/+nkSP3Cqm7+wMYPVTxrHv+zqX7qZIr/I7St+IwXyb5g54l5jfiwY1KZys3yvfJQmqATOWmxGoSnBdAVrLulfRKv2TeIryDpmXjVj1+zUV7ZHPD9bJKgVd8aNgx60UaTw+m+HjXpArGmrQmq0PhVEp/OvFX4H8nvxkaRteG4MdlJeJkgHrvOB9Uxb1WI0A39nHS1NgCJmcuTiwKoejvOy/darjlnLtZCBbo1S6PPUup0j8ui6yQVgv9QxMam2uQnlVywRQjAeLZ5IYjH5nJ/dmiG8lfd5AulnjnS0CCD/bYJluvQDNm30dGDMkaJWImOr7otF/lDBAc17Q==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR11MB1588.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(366004)(39860400002)(136003)(346002)(396003)(376002)(33430700001)(478600001)(316002)(7696005)(52536014)(6506007)(186003)(86362001)(8676002)(55236004)(8796002)(8936002)(26005)(76116006)(110136005)(54906003)(66446008)(66946007)(66476007)(66556008)(64756008)(55016002)(71200400001)(4326008)(9686003)(5660300002)(2906002)(33440700001)(33656002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: 709bzJNSyYuOl8myQy3Wvi1xsw1jdOcQ8M+7oDenHKwEeAiGznrtVE9J9ig95uphPLHzjeGRRglzDjZQWnbobcIheL+HABy+XUFDBWfP9qd55GQVP99nW11XqBP9STkTMoFXpcV0sF39bEbN5nE7iSned4wMGmiuu7wHPUd/NeiwBrGPcpQPlQl7Tv+9+hh5nK6xzPFWe3vBpkOWKdMwWwMYCXmkIeK54lpMt69cbeITi1QBWPgEg7mmAAfKOnRccuqz6roVdUIzM85qFAaU/2QvbFq7xnirA4Xo2Il9vkDZ0hTBHXWOaeUYH17uG+lJgKaN/QzY5MLSqRsb1KX4uqzxe8OCLRPznNVO5H4sgt9xYE2E3C/0/COpObf3YA+kgN0IOv6dab1Sz7Q+6Vo1xwWu0HHVGHKtPRQtWILwYHE1nYIWoUwuPS0c4zsia0SxNbiemqkZJ0EbEM5GDnJeK1ZhkB3ducxvZY0ExlbJvgI=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: c9fac02e-5816-410d-15a6-08d7f5698308
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 May 2020 05:09:41.3121 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vrTkrOjhxxdlb0H40HmX2njpCy8hmcfKekXnBznp5PbV3KbIKC0dPSoDxlrC7w9JakB46RVyvuPopy9c4Nqwdg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB2017
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/mst: filter out the display mode
 exceed sink's capability
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
Reply-To: "20200417212408.19649-1-shawn.c.lee@intel.com"
 <20200417212408.19649-1-shawn.c.lee@intel.com>
Cc: "Chiou, Cooper" <cooper.chiou@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 2020-05-07, Lyude Paul wrote:
>On Thu, 2020-04-30 at 02:37 +0000, Lee, Shawn C wrote:
>> On Sat, 2020-04-25, Lyude Paul wrote:
>> > Hi! Sorry this took me a little while to get back to, I had a couple of
>> > MST regressions that I had to look into
>> > 
>> > On Sat, 2020-04-18 at 05:24 +0800, Lee Shawn C wrote:
>> > > So far, max dot clock rate for MST mode rely on physcial bandwidth 
>> > > limitation. It would caused compatibility issue if source display 
>> > > resolution exceed MST hub output ability.
>> > > 
>> > > For example, source DUT had DP 1.2 output capability.
>> > > And MST docking just support HDMI 1.4 spec. When a HDMI 2.0 monitor 
>> > > connected. Source would retrieve EDID from external and get max 
>> > > resolution 4k@60fps. DP 1.2 can support 4K@60fps because it did not 
>> > > surpass DP physical bandwidth limitation.
>> > > Do modeset to 4k@60fps, source output display data but MST docking 
>> > > can't output HDMI properly due to this resolution already over HDMI 
>> > > 1.4 spec.
>> > > 
>> > > Refer to commit <fcf463807596> ("drm/dp_mst: Use full_pbn instead of 
>> > > available_pbn for bandwidth checks").
>> > > Source driver should refer to full_pbn to evaluate sink output 
>> > > capability. And filter out the resolution surpass sink output 
>> > > limitation.
>> > > 
>> > > Cc: Manasi Navare <manasi.d.navare@intel.com>
>> > > Cc: Jani Nikula <jani.nikula@linux.intel.com>
>> > > Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
>> > > Cc: Cooper Chiou <cooper.chiou@intel.com>
>> > > Cc: Lyude Paul <lyude@redhat.com>
>> > > Signed-off-by: Lee Shawn C <shawn.c.lee@intel.com>
>> > > ---
>> > >  drivers/gpu/drm/i915/display/intel_dp_mst.c | 24 
>> > > ++++++++++++++++++++-
>> > >  1 file changed, 23 insertions(+), 1 deletion(-)
>> > > 
>> > > diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c
>> > > b/drivers/gpu/drm/i915/display/intel_dp_mst.c
>> > > index 61605eb8c2af..68697f463dab 100644
>> > > --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
>> > > +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
>> > > @@ -609,6 +609,26 @@ static int intel_dp_mst_get_modes(struct 
>> > > drm_connector
>> > > *connector)
>> > >  	return intel_dp_mst_get_ddc_modes(connector);
>> > >  }
>> > >  
>> > > +static bool
>> > > +intel_dp_mst_mode_clock_exceed_pbn_bandwidth(struct drm_connector
>> > > *connector, int clock, int bpp)
>> > > +{
>> > > +	struct intel_connector *intel_connector =
>> > > to_intel_connector(connector);
>> > > +	struct intel_dp *intel_dp = intel_connector->mst_port;
>> > > +	struct drm_dp_mst_topology_mgr *mgr = &intel_dp->mst_mgr;
>> > > +	struct drm_dp_mst_port *port = (to_intel_connector(connector))->port;
>> > > +	bool ret = false;
>> > > +
>> > > +	if (!mgr)
>> > > +		return ret;
>> > > +
>> > > +	mutex_lock(&mgr->lock);
>> > 
>> > This isn't the right lock for this - mgr->lock protects the topology
>> > layout (e.g. drm_dp_mst_port.mstb, drm_dp_mst_port.next, and
>> > drm_dp_mst_branch.ports). port->full_pbn is protected under
>> > &drm_dp_mst_topology_mgr.base.lock (not drm_dp_mst_topology_mgr.lock), so
>> > you need to first add a version of .mode_valid() to struct
>> > drm_connector_helper_funcs that accepts a drm_modeset_acquire_ctx so you
>> > can use that to safely grab &drm_dp_mst_topology_mgr.base.lock.
>> > 
>> 
>> Thanks for comments! I will correct the lock to protect port->full_pbn.
>> 
>> > > +	if (port->full_pbn)
>> > 
>> > Also - there's no reason to check if (port->full_pbn) here, so long as
>> > you're holding the right locks this should always be populated by the time
>> > we create the drm_connector for the MST port (if it's not, that's a bug
>> > that needs to be fixed).
>> > 
>> 
>> Just want to make sure full_pbn value is greater than zero. As you mention
>> in another patch, it's hard to predict sink report full or available PBN
>> properly.
>
>Sorry this took me a little while to respond to, crunch time came up at work...
>Anyway-have you seen issues with full_pbn reporting on hubs? I've seen plenty
>of problems with available_pbn reporting, but the reason we switched over to
>full_pbn in the first place is because that seemed to be the one hubs reported
>reliably. We actually make the assumption full_pbn is always > 0 if
>something's connected in some places in the MST helpers, so if we've got cases
>of full_pbn lying as well on some hubs we might want to fix that.
>

No, we don't see MST hub report full_pbn = 0 so far. Just like what you said.
This is used to guarantee driver always have valid full_pbn for bandwidth calcuation.
If not, driver just bypass the PBN comparison.

>> 
>> > > +		ret = (drm_dp_calc_pbn_mode(clock, bpp, false) > port-
>> > > > full_pbn);
>> > 
>> > Finally - I'd say we should probably have a separate patch to add a helper
>> > for calculating the PBN and checking it against port->full_pbn. Maybe
>> > something that looks like this:
>> > 
>> > int drm_dp_mst_mode_valid(struct drm_dp_mst_port *port, struct
>> > drm_modeset_acquire_ctx *ctx, int clock, int bpp) {
>> > 	int ret = MODE_VALID;
>> > 	/* TODO: DSC support */
>> > 
>> > 	/* ...try grabbing locks here...*/
>> > 	if (drm_dp_calc_pbn_mode(clock, bpp, false) > port->full_pbn)
>> > 		ret = MODE_CLOCK_HIGH;
>> > 
>> > 	return ret;
>> > }
>> > 
>> > That way we might be able to add some checks for DSC capable connectors
>> > later once I've migrated most of the DSC code from amdgpu into the MST
>> > helpers
>> 
>> This sounds good. DRM driver provide a public function call for different
>> vendor to check the current mode exceed PBN's limitation or not.
>> 
>> > > +	mutex_unlock(&mgr->lock);
>> > > +
>> > > +	return ret;
>> > > +}
>> > > +
>> > >  static enum drm_mode_status
>> > >  intel_dp_mst_mode_valid(struct drm_connector *connector,
>> > >  			struct drm_display_mode *mode)
>> > > @@ -631,7 +651,9 @@ intel_dp_mst_mode_valid(struct drm_connector
>> > > *connector,
>> > >  	max_rate = intel_dp_max_data_rate(max_link_clock, max_lanes);
>> > >  	mode_rate = intel_dp_link_required(mode->clock, 18);
>> > >  
>> > > -	/* TODO - validate mode against available PBN for link */
>> > > +	if (intel_dp_mst_mode_clock_exceed_pbn_bandwidth(connector, mode-
>> > > > clock, 24))
>> > > +		return MODE_CLOCK_HIGH;
>> > > +
>> > >  	if (mode->clock < 10000)
>> > >  		return MODE_CLOCK_LOW;
>> > >  
>> > --
>> > Cheers,
>> > 	Lyude Paul (she/her)
>> > 	Associate Software Engineer at Red Hat
>> > 
>>

Best regards,
Shawn
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
