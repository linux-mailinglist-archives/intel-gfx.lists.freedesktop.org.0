Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C14695BABF2
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Sep 2022 13:02:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 899D610EC1E;
	Fri, 16 Sep 2022 11:02:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5A55710E3C3
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Sep 2022 11:02:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663326160; x=1694862160;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=yFAG3rOu960FBVO9sSxXlU9WNsM1BuPh35COQuIFUsE=;
 b=if8WTF3LVhRe5a2stUHWImxTUXnu2y6q8BgHKfdBHK4PbNh1VlVm09Bv
 kTuWt1XcnwyRvq16HyI9VPIU4LuMVOR2wFtzZCiKxeSXVLw02fmgBbfQe
 tdg1U6rg+jGFuq57Vz7kTqnw3vQJz6QD8AJI9OL4hyHDGxGnIWfnTQocr
 qv3/7pGpCoR4cH5Sn7wFdAjD2UiBMQgSFlMQhZlZCrv/9DhIPXExKKKm2
 Lzq40Q6aZYbh5lphlsY5/UOUY5gFEAXT7U3oQSOtbSk5KjCdOnw1OVnKm
 hW6DUSFJZeaKZOGE7Gy5k+SsdSjXKE5z9b7i4bgckHcatlN47ziLfvQlm w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10471"; a="286008419"
X-IronPort-AV: E=Sophos;i="5.93,320,1654585200"; d="scan'208";a="286008419"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2022 04:02:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,320,1654585200"; d="scan'208";a="620057017"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga007.fm.intel.com with ESMTP; 16 Sep 2022 04:02:39 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 16 Sep 2022 04:02:38 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 16 Sep 2022 04:02:38 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Fri, 16 Sep 2022 04:02:38 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.175)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Fri, 16 Sep 2022 04:02:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bBbDLDdH8Ed38p3HwnZwV7dje+Tl9vZh+mh6uy5wZD4afFsZIUe7i5mwRDhOpjDUM/q43Xw+S+9GvFA4WPArVlffiYIkThfaRBHhEsCPmuIkwTCKsWgpYhK4pb/A3i1j75MCPdJu5k5XK6SetnHv0mvZw2GHsX+h4ekrtspCn/uBPAGs2gLu9+Ot/iOKZHKKg9jCO+zVLohkAdDtTE2zpgIgm55m/g4IWMkqzxG7mjsIkTHaB2ZDPIbSd/o9K+BgKCvlqEcqXVVLm4s2Yyfhg0Z3y+tfbwJ17TrXP3O8vORHNTC295AMZeY9qnJ2qEmTtJWo0MJYCr/nlOyKLedEFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=L43w5OHjNZ+jEUDh4e7SkUCxkuszzb0QgYJp8xzVSR4=;
 b=JV4v9OZaDKN7lujRcsOuSAKOBI8PXS/hjPbU24x+3ex4DcizlRC0Y/vkEHB7+kV9ndR4ZCBRmfT1cBQKU0Mv4H1rqANpkQ9u2YuUZfpn36ZHaxVDd3gn9h2SjlP2Koa0QXgJV/CVsmsOUbtm2jiXrAjWC6LrfVgQD7dhyKw6VBFbU+yeK8SJ2AyDbhmiagd1cHjz90hjc5vu5iKtatiRy/zE+MvIfXiJZoFYx8ierJaZphLv32+CX9M+y8IrUXf687nkLm3SYBHQhtAJIptbV5LFP9tYRibVq0lkAOAHVLU+Tr8xOUFI7f8GoN7wlD4imqvNNQ9/MZDM5Wem3j9ZsA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by SA1PR11MB7131.namprd11.prod.outlook.com (2603:10b6:806:2b0::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5612.19; Fri, 16 Sep
 2022 11:02:35 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::440e:201d:56d1:5bf9]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::440e:201d:56d1:5bf9%3]) with mapi id 15.20.5612.022; Fri, 16 Sep 2022
 11:02:35 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Thread-Topic: [PATCH 2/2] drm/i915/pps: Enable 2nd pps for dual EDP scenario
Thread-Index: AQHYyac29ZGd8DuZJUCi+Z19SgQbwK3hwY+AgAAhG7A=
Date: Fri, 16 Sep 2022 11:02:35 +0000
Message-ID: <PH7PR11MB598191FC5E2ACA27BA1CD305F9489@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20220916083102.18559-1-animesh.manna@intel.com>
 <20220916083102.18559-2-animesh.manna@intel.com> <YyQ6nSbIvO2WxO2K@intel.com>
In-Reply-To: <YyQ6nSbIvO2WxO2K@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.500.17
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|SA1PR11MB7131:EE_
x-ms-office365-filtering-correlation-id: 0fad343e-fbd1-452b-f3c1-08da97d2f642
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: tfHrolEeaBGYTrDktIE5PXkt0VKQrQq0iVcMeengtKGEP2EqVuE1dH1bVnwYUTfIN/wkgDOMbwkyACkuVKYFLLEJgLYP4vrQMVykWn/AT1CDYkI7nroaIf/mqLuwkgWFw9mDKmIPww+32QA0O4buLFKzroTPtmlUUmFVCYb9TD8+nSa1ol6da/NaZDvjwlvR5lO4/O0chp+4LGpWWh/fqn2R3Wv4CHvLQMwZ6PYVwGdBI+0XOcWFHp2MX2qeoWh9GlyTqPAuX+qzUnDPXEyaJNdg7bWgQBIz3i9bTBRifMf6eW3eQqGq42auxVoEUQdVRaJcy3tJ3MY41VVlnmYjaLN27HnhkSUCK7pMj/Yvy0QamSGswoE0eeputYePixqcabJ5gXRzI066+JDpMBx9gbviPWRHVykBNrAtAKhwfWAKAHTjv3nEPpT3VOUwTz1hIrjw3zemj73G2Fwyq01ITBcOqH/14Lh3LMfybLpbSxSyq85aShE9DdeR4C4QyRE2BESCaH+JTppaZ4gsCO8KWKa6uSnCM2ZyGhLXJaBlmaCmB7JP1KLWDpdJTbJeJNNTPhKmeF5CZgv6tJCAzZhe+8vGofZ6W3FRR7yx5FkfDDUB0+Clf5G2IaWmvHVCSQggZqAHQYHQwcrFhPTfXmUeUYCbBLQA86Q5RMIh0BEmMif58InD51UIfSfJbSXXtV1tPlrrkMIm2jJ8Y242WR8yg4dZqVxnw9YEoY78vnykeUFaLFWqMY20OBFu1iYWussgGCKtMlM+TDpRnra8Subzzw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(376002)(346002)(136003)(39860400002)(396003)(451199015)(8936002)(478600001)(66446008)(186003)(52536014)(26005)(122000001)(66946007)(86362001)(6916009)(33656002)(83380400001)(55016003)(53546011)(8676002)(316002)(41300700001)(38100700002)(9686003)(64756008)(7696005)(66476007)(6506007)(71200400001)(76116006)(66556008)(2906002)(54906003)(5660300002)(82960400001)(55236004)(4326008)(38070700005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?wflMwluqQsLJMVe0iz7Jr1kZ6G4EaKr0b90qFRXSFG1qqmKBnfXp15EesE?=
 =?iso-8859-1?Q?vwgBjJUZIxvt15y1L5cNv1UpXyXxAzBP4bZ2FgW9E23B7GELDt1QV26jGl?=
 =?iso-8859-1?Q?2GUNjErkVv2erNXEi7xHWSGgFcHKhkASQgttVVswbmvzOD3SXewqmueYx0?=
 =?iso-8859-1?Q?g2lersOIIznR5hEtzIXWjUydgDrqHVuilC68EaeLwkW8qQj/IYZzcnZfZu?=
 =?iso-8859-1?Q?9ksRf8CR6orQun51OIaQNIb8ZYGbLKinV7HW5B4aQpUBEMmI1wz96Z6zer?=
 =?iso-8859-1?Q?dS/ass5UIupGE1gj9h7CgrF0xgs0b4jX8R+gpl5XP6hvSthpWL7dh/ML+M?=
 =?iso-8859-1?Q?f0d3Y94u6uq7oRZtp8942pn9cNPwmA5Wee41lXecN7nzz4cJMj/q1EGdfT?=
 =?iso-8859-1?Q?j+tTVjNQe6dneKsHHIBrNb5D0j6BIA57cMUGg2glsZF0yWvcYL+NlqKof9?=
 =?iso-8859-1?Q?4X6OX3RDu6l5nvVr3/qhVbzHg7Vw4KkRGxWyLtUzFrAeWDX/qP2twY0Grr?=
 =?iso-8859-1?Q?cbVFUt91DxiHwqmXpmtpoYwk8AfoQclXkPWeuBUbjhj2VQ0lwYuq1QoO3q?=
 =?iso-8859-1?Q?bHXMoudazTKemLEL4Jk8yCIyuGlzCSvQ9Wyw03hkavG2uXiFWLfQLRoOP4?=
 =?iso-8859-1?Q?FyKXhPQl+tv42EWjNP3vRcSevd3kOKc3/7oyMi1Z9f/aE1JT+fzFpSssWL?=
 =?iso-8859-1?Q?Cs3ctQP7ZHuBGUIerr/7LZq8b8UbVX6HPWtGsCNQBaxcmkBNd/uS2aOxgp?=
 =?iso-8859-1?Q?81WnIr9mjUPdYtSlB7X5lG8rVxP+fSk8V2guqwwrY3zWiYL0/LVQSZd0V5?=
 =?iso-8859-1?Q?cT4w8EP5mVXFcxzm/5q/FtatbupjzurbnijchbND6lW/aXC9vbhe0Uie9D?=
 =?iso-8859-1?Q?QLajlWYdw5EqdTQDo2rKpLuT1Jtx69/cXpMwq3ReKEzUQHTn3prH6GnUCG?=
 =?iso-8859-1?Q?k6Ism0xTgX2xxr3jKPiOyd7+h56MphYUZeAgtryf1EZ82yaR7FHm9SH08X?=
 =?iso-8859-1?Q?Q+5BIRmHRvH1sxKxMy5C9fRLc0VoRsAOC0Xd5H/hITFAQS1uhpj0SvBEqz?=
 =?iso-8859-1?Q?4i/yRtO6gudBfrxjetPpdd/JRqJEtWhLRH2LDBoVRgld8lnl9twt7V6ev9?=
 =?iso-8859-1?Q?lrXl4aPKeSD7Xeq8TjzAWgjaPlgTZN0Cc6tSjd4x7A+cuWai+cZt0skUmx?=
 =?iso-8859-1?Q?zUX9+CCoemgkqyrhIFUbvhtEDkbbIF2TydlxMEDzsypkVlfp16O3spkMcX?=
 =?iso-8859-1?Q?euDClvDE3vOfPZnS7IWEct8tWsMc2s/2cuO/DJQUfJOo7YuLdLrcLhBE8X?=
 =?iso-8859-1?Q?j66Jl3o2WKUvUvzs88YIQEwtF69bif5/zcPORUEHIEnfDGzffpHQsLdu2F?=
 =?iso-8859-1?Q?iWCrw8OlgmRv/z7l1UjfFvFqZoGk9YLwCkAcGY3JFoi/3aHn4tU0wLTsBP?=
 =?iso-8859-1?Q?L/F+luAX5XIQNhh7G/e23ek5Xqdf6ALK/+GaX66OrVVKn0pOecC6U2p0A2?=
 =?iso-8859-1?Q?VTLhcFIp+qI1ZkKAwUUPJOeHsFRRYNN9XHxQhKgLXVVVscYozsgR7IbVob?=
 =?iso-8859-1?Q?1grCulIWBc8MBdi4wP7Fi+Q4QhUUaRFVqiUpfjetCPFHoKJQiZNxGtoF07?=
 =?iso-8859-1?Q?B19N+M/E3Y8qrAA6ouGBlY/PMw+5WBRZl6?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0fad343e-fbd1-452b-f3c1-08da97d2f642
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Sep 2022 11:02:35.6699 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: f80YIX0S3/oWo/oghNMVFS6E1JvQyOcP4Ek0DUU0jBAD1j7loI1ZGa+C8FTtvdM+G8YgFSphkAGgUPBYV26ZMA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB7131
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/pps: Enable 2nd pps for dual
 EDP scenario
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Sent: Friday, September 16, 2022 2:28 PM
> To: Manna, Animesh <animesh.manna@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; Nikula, Jani <jani.nikula@intel.com>=
;
> Shankar, Uma <uma.shankar@intel.com>
> Subject: Re: [PATCH 2/2] drm/i915/pps: Enable 2nd pps for dual EDP scenar=
io
>=20
> On Fri, Sep 16, 2022 at 02:01:02PM +0530, Animesh Manna wrote:
> > >From display gen12 onwards to support dual EDP two instances of pps ad=
ded.
> > Currently backlight controller and pps instance can be mapped together
> > for a specific panel. Extended support for gen12 for dual EDP usage.
> >
> > v1: Iniital revision
> > v2: Called intel_bios_panel_init w/o PNPID before intel_pps_init.
> > [Jani]
> >
> > Cc: Jani Nikula <jani.nikula@intel.com>
> > Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > Cc: Uma Shankar <uma.shankar@intel.com>
> > Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_bios.c | 7 -------
> > drivers/gpu/drm/i915/display/intel_bios.h | 7 +++++++
> >  drivers/gpu/drm/i915/display/intel_dp.c   | 9 ++++++---
> >  drivers/gpu/drm/i915/display/intel_pps.c  | 2 +-
> >  4 files changed, 14 insertions(+), 11 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_bios.c
> > b/drivers/gpu/drm/i915/display/intel_bios.c
> > index 28bdb936cd1f..5fd4c09dfa96 100644
> > --- a/drivers/gpu/drm/i915/display/intel_bios.c
> > +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> > @@ -706,13 +706,6 @@ static int fallback_get_panel_type(struct
> drm_i915_private *i915,
> >  	return 0;
> >  }
> >
> > -enum panel_type {
> > -	PANEL_TYPE_OPREGION,
> > -	PANEL_TYPE_VBT,
> > -	PANEL_TYPE_PNPID,
> > -	PANEL_TYPE_FALLBACK,
> > -};
> > -
> >  static int get_panel_type(struct drm_i915_private *i915,
> >  			  const struct intel_bios_encoder_data *devdata,
> >  			  const struct edid *edid)
> > diff --git a/drivers/gpu/drm/i915/display/intel_bios.h
> > b/drivers/gpu/drm/i915/display/intel_bios.h
> > index e375405a7828..da01b13260ae 100644
> > --- a/drivers/gpu/drm/i915/display/intel_bios.h
> > +++ b/drivers/gpu/drm/i915/display/intel_bios.h
> > @@ -231,6 +231,13 @@ struct mipi_pps_data {
> >  	u16 panel_power_cycle_delay;
> >  } __packed;
> >
> > +enum panel_type {
> > +	PANEL_TYPE_OPREGION,
> > +	PANEL_TYPE_VBT,
> > +	PANEL_TYPE_PNPID,
> > +	PANEL_TYPE_FALLBACK,
> > +};
> > +
> >  void intel_bios_init(struct drm_i915_private *dev_priv);  void
> > intel_bios_init_panel(struct drm_i915_private *dev_priv,
> >  			   struct intel_panel *panel,
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> > b/drivers/gpu/drm/i915/display/intel_dp.c
> > index c19e99ee06b6..6f7afa75ec4d 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -5222,6 +5222,9 @@ static bool intel_edp_init_connector(struct intel=
_dp
> *intel_dp,
> >  		return false;
> >  	}
> >
> > +	intel_bios_init_panel(dev_priv, &intel_connector->panel,
> > +			      encoder->devdata, NULL);
>=20
> We don't want to go for the fallback type here if we the VBT wants us to =
use
> pnpid. Maybe we should just remove the fallback type entirely? Or perhaps=
 only
> use it if the VBT panel type is entirely invalid?

Ok, Can I add like below?
If (!PANEL_TYPE_FALLBACK)
	intel_pps_init(intel_dp);

But to read EDID pps_init should be called before it. Or else I can enable =
both the pps and later disable the unused one.

Regards,
Animesh
=20
> > +
> >  	intel_pps_init(intel_dp);
> >
> >  	/* Cache DPCD and EDID for edp. */
> > @@ -5255,9 +5258,9 @@ static bool intel_edp_init_connector(struct intel=
_dp
> *intel_dp,
> >  		edid =3D ERR_PTR(-ENOENT);
> >  	}
> >  	intel_connector->edid =3D edid;
> > -
> > -	intel_bios_init_panel(dev_priv, &intel_connector->panel,
> > -			      encoder->devdata, IS_ERR(edid) ? NULL : edid);
> > +	if (intel_connector->panel.vbt.panel_type =3D=3D PANEL_TYPE_FALLBACK)
> > +		intel_bios_init_panel(dev_priv, &intel_connector->panel,
> > +				      encoder->devdata, IS_ERR(edid) ? NULL :
> edid);
> >
> >  	intel_panel_add_edid_fixed_modes(intel_connector,
> >  					 intel_connector->panel.vbt.drrs_type
> !=3D DRRS_TYPE_NONE, diff
> > --git a/drivers/gpu/drm/i915/display/intel_pps.c
> > b/drivers/gpu/drm/i915/display/intel_pps.c
> > index b972fa6ec00d..4b8413382c5d 100644
> > --- a/drivers/gpu/drm/i915/display/intel_pps.c
> > +++ b/drivers/gpu/drm/i915/display/intel_pps.c
> > @@ -1430,7 +1430,7 @@ void intel_pps_init(struct intel_dp *intel_dp)
> >  	intel_dp->pps.initializing =3D true;
> >  	INIT_DELAYED_WORK(&intel_dp->pps.panel_vdd_work,
> > edp_panel_vdd_work);
> >
> > -	if (IS_GEMINILAKE(i915) || IS_BROXTON(i915))
> > +	if (IS_GEMINILAKE(i915) || IS_BROXTON(i915) || DISPLAY_VER(i915) >=3D
> > +12)
> >  		intel_dp->get_pps_idx =3D bxt_power_sequencer_idx;
> >  	else if (IS_VALLEYVIEW(i915) || IS_CHERRYVIEW(i915))
> >  		intel_dp->get_pps_idx =3D vlv_power_sequencer_pipe;
> > --
> > 2.29.0
>=20
> --
> Ville Syrj=E4l=E4
> Intel
