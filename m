Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 02EBC660C9B
	for <lists+intel-gfx@lfdr.de>; Sat,  7 Jan 2023 06:52:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 65C0F10E906;
	Sat,  7 Jan 2023 05:52:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C8EE410E906
 for <intel-gfx@lists.freedesktop.org>; Sat,  7 Jan 2023 05:52:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673070732; x=1704606732;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=+COyut0UjVcaqCbWjHNj+EaaNed3jZgQk45HCJPHxto=;
 b=UaiMEWbLjO5g9qNBnIEI4LxorSK8JPqfvLKYFPOG5tfx57zorFpvlthX
 2zYbIuYJaFBb8AvLjbyM2vqtOdjd0mr1YIp360ib/iA8FYOdTePljkU/y
 IH139o7KW4dR5tXvHrj7/YZ3b6zfTNXJLq6aLLVlZzK5ogzBHPBR0Ub+m
 BVZuw0zx7V4TlCPbICIc4IamKnWQ7h8n2OWAmaHPAV2mf5FB8r0VwTJjL
 sKTV5gsmz4mkLYpeylxjQDpwnej28StbGKmhVCWvcNa8HFYdwXUcTXk2Q
 THE/5zDHIvEVgythxabKKX11EkNjUjucgLq3lK6vHSxjkWDxrPonV1NCj g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10582"; a="302313927"
X-IronPort-AV: E=Sophos;i="5.96,307,1665471600"; d="scan'208";a="302313927"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jan 2023 21:52:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10582"; a="724642473"
X-IronPort-AV: E=Sophos;i="5.96,307,1665471600"; d="scan'208";a="724642473"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga004.fm.intel.com with ESMTP; 06 Jan 2023 21:52:11 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Fri, 6 Jan 2023 21:52:11 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Fri, 6 Jan 2023 21:52:11 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Fri, 6 Jan 2023 21:52:11 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JapKPXUn8/cQH3eudGXMjWkC9S934N2lhbNDSz7zXBXjP56FxOAUUnZ+1wppjveAfe0rhCukTURZ0HbdXPVvHVP5jI6m+DKpwwaR9pVMEKoMmPmyu6RHVRiK0vc+vlz380T1QPQWi8iMm9V12bfMWcdsz8SeEaVRu6hipvSO1LOHYhFrN8PHsDw+kiMVoqSdK/TlcKZs2XjtZW7pYisw21Cv/ECykM9RNmBuhjCDZDVAx+WpF/aMJm0bCiIFhO9zIFQykpOIO4UXnAvtPjFoR2GKhHgxgLvDXPszQGmEE9PhbeXfUjBIjskVovJLLSsRdnLnCib8qQnA2FToL3XxfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BVH7VRKChAQNU7+dIX0CocM4mSMsFwe55bF1dS0DgVM=;
 b=iMDSZS/r+PXp5Z3ybGLRlpI8/nxcdJB4LBWzT8lY3hOjzczh36XeMOi7Zvd5hjhMltWHNrIIln+G/5jLvYnFBd9T+UE0C7w2Qqom+3sc33vlkK9UcnKDZWRc+3K3vu9gPXyvG1ZUoGWfGMR/gLu2sP5UXK/NKDfO32qrAsj5O9zOGfiE3+qTMHE7rM/7qvpdwL3FrwDYZgG4ikjsizD/Nwz9/+5JnmT5qRi0vu7fMEpmq/uU+5VrcreJLK2C9xf7KHtmdRlRxwXBVkWSwU4mPh4oCJtmUggWh8Qg8FkmnrbiGfeoBWLPhlgf3ogpKz0jh36/6zaw0hgRPwAE3FsKyw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by CY8PR11MB7083.namprd11.prod.outlook.com (2603:10b6:930:51::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5944.19; Sat, 7 Jan
 2023 05:52:09 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::7827:fa46:df42:5703]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::7827:fa46:df42:5703%8]) with mapi id 15.20.5944.019; Sat, 7 Jan 2023
 05:52:08 +0000
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [RFC 1/4] drm/i915/quirks: Add quirk for 480MHz CDCLK step
Thread-Index: AQHZHnJQ3HU+M6rmw0Kn2T4//O1hiq6K5iYAgAeU+tA=
Date: Sat, 7 Jan 2023 05:52:08 +0000
Message-ID: <SJ1PR11MB6129DDD8873755267A9288A7B9F89@SJ1PR11MB6129.namprd11.prod.outlook.com>
References: <20230102062005.720964-1-chaitanya.kumar.borah@intel.com>
 <20230102062005.720964-2-chaitanya.kumar.borah@intel.com>
 <87tu19z20l.fsf@intel.com>
In-Reply-To: <87tu19z20l.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6129:EE_|CY8PR11MB7083:EE_
x-ms-office365-filtering-correlation-id: 5eaae509-e3e8-4e6f-c3a3-08daf0735079
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 6+XhptqcJB4w7n0xjnia0o90yH25RrJMU/RcvgiLbiOp4P64XNSEA5q6UhOmRH2ga8Kc1Te2Edv+g7cSYdxFqaDpVFKQCExvT4uNVYu6dD+Cq+qB7WIgqCfQNND6g94v53IJL+wjR6ZR6VoSHzUHEuwhz6Frl5Nt8C0ljkbfPXWdb7dWXXCynJenPqTBBDn+eoBRAbEzpAxh1Py4EZforEWQ4OUKNKE7Vhu1HKgGkOtyISmSo2RCS6/6YEJzeDvss+JLokVgH6cNwIGvIx/spFcHWvJl3BnKIxluknVD8aAYYr/Ujg3kqdpEnnHu/9gQUEp0eD21bwTCf5+EUfCjv6ahlsEj1NADMZ3u5oIhiUrw3BDRqnvHzwoIhiB5B3NcUdwLshneFWdcYIXCKWzFfYrf1GQY9uPtoGHYRnggl2cmiRN5aoUpCAbWV6ZjZ23Wgl9k3m0Y1VDCT65xblyYsDuWfg5hRke7Axn4VZlwAICpViI6m/EmDWwNoFmx6pqUvhxeDCx1LcrLODnGH9l/SR2mLrafvBRM/+hEYK//CaIam5ZEbahiysR+7gJTwS1+p0lTwrr/N23CNCHAfTGpc/aiPH2aE+dL1eZDogpIVFFVnyGzPTVaxjoEDoWCiaROO5LAuPn78aP5086gH/Up4p2iEnvPU+3bObaoXsfBkBCq+pP8ltXFSEaiH4iHu9LS
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(136003)(346002)(366004)(396003)(39860400002)(376002)(451199015)(66476007)(66556008)(66446008)(66946007)(4326008)(64756008)(8676002)(316002)(122000001)(76116006)(5660300002)(110136005)(54906003)(2906002)(6506007)(55236004)(38070700005)(53546011)(55016003)(83380400001)(71200400001)(86362001)(33656002)(26005)(41300700001)(52536014)(8936002)(82960400001)(478600001)(9686003)(186003)(7696005)(38100700002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?ghlHnJHB0OcQXizUqcMEPwmgrav7B1hHD0l5WWd/KxuuCOiz5Pg9s/ETInGw?=
 =?us-ascii?Q?t8b6pUNlE1f0LnrDRX4Z5OCGK1xGPg4fhUGuJD9MbdtoqTY/6WFu+h35+77I?=
 =?us-ascii?Q?DLbZA7WX2Bno3WL75TBIYDEACujUdd431U3oPgjAzLBe1/HVlGMVFieoje2B?=
 =?us-ascii?Q?iuroxC8mTeNRfUXJ9np0vJF1D7XyaePM7mndhC2neaRNYQG8NYRJpp5lc1Mn?=
 =?us-ascii?Q?Z4zPBZFhV5mSPKmQDLttiMroZR+h8LRMD/E6YAo5Mev8X3uhk7SXsPstMAlw?=
 =?us-ascii?Q?+lAjfOt3cMzrYWPy5SvX/S4Ly+OEgN+dbKakGu8Q0qnwZPeBiWiITSpeWtF6?=
 =?us-ascii?Q?woLGPu3n+zWdQ6mhIyPE2AoBsvY8sULemXeVvz0KVLNLzHuXIkQSKFbMmP4j?=
 =?us-ascii?Q?oZRsTUsj0d9JVJIvuZBcE2bYH148dCVzLhhg4gGAQ3piNVdmoIyShbi0CwIc?=
 =?us-ascii?Q?5FiVhDrgidiHJrTOmNsnWDyynM0PMXW7PGoyockZ51uwiy8hX9Gr2YoGHAWS?=
 =?us-ascii?Q?3b+Rk3klQTyMayfBrPCXwPInvf6FgEN5JFr6aDUoWEsbk6OwdCYB9Xp9daNK?=
 =?us-ascii?Q?RnBO1Lda6rRfgOrjU4p6dPVXr4kkCQ7QMHm6kGWMf+rbMTAVO+nNWqVTzkGW?=
 =?us-ascii?Q?+aonBGO2rp3OyZAeiqXGcDvB5MZGaf+WSwlxueFn7M7JmqUI9eeduCeRuxLi?=
 =?us-ascii?Q?gubxsOILdKi+BuMCmhBjOdowt7YY/eVMLd0ddB2slAsxPDJ/dpq+7UX7wZFX?=
 =?us-ascii?Q?5OVQQEV8yggVDGHl8Bm6IeH5nrEg2/uR8XkjrDhcqRAr364haKpKcPkn29N8?=
 =?us-ascii?Q?4rYQj39Z20gjg6NKEpbqdhBOJFUnpmDwDVB/GPCe+KWvO/vYcAt0+pGBa+4f?=
 =?us-ascii?Q?2PK/PcqMVAj1KUaNiCqibkPCiEPlofNAP6O1teS2kywtaPXtvpDtFfV8j4NG?=
 =?us-ascii?Q?zze3PCY5BiPhUeMXZePqyMsMgZH4abrRoys4ndHU7VWXfkvynEWrU73kiqLp?=
 =?us-ascii?Q?N5ldMu8iQZqgeoWaf/DfIqJrjxGhqw4NmnBT/Tr7SS+RDRuHxqq9t2Ta+NBF?=
 =?us-ascii?Q?pCZPpcmt8v/Anv18cKLZY0qfJm/1nK+XSlMdlRDnw7DysMstN6vbXIa4FJ79?=
 =?us-ascii?Q?NxtXYW4ZvAymPlIfwvKp4u4VBUHqkoAEwriC6AwUDl8YGMdRB/YDLem/dHBu?=
 =?us-ascii?Q?z0GIqdNi7wCidQ4nX3ss1dpT2oYpQmaVGbPRYPlWjTtEuoqV2XyDRdQzO8Ko?=
 =?us-ascii?Q?64t4yEZJCSHNuzKRF9c99XhVlgpD3YIwyQ34FRs5zEVF7eWxtGsEzLmZDfJf?=
 =?us-ascii?Q?eMsgrcaz+C81N4IsHJTwvR8/lP2WiumemeKkITys3F76hMQxPlBj/xoNEkR1?=
 =?us-ascii?Q?DLMptr+al591pNlPaCE1R4Z432Xuq+BdxzMsOAYUC2M6jlrjaF5XFvVHk4Kx?=
 =?us-ascii?Q?ksBo6KYMmbBqa67gcHERWiqpW85bVraQ/IXma8QiZwSUe/xXGoYeb3qkpSqo?=
 =?us-ascii?Q?IEGQ2oQXZ75AvRncQvYS+08tcdSZsRpgL/eb2dvzH4nx9U+lHOWXVdj6nR/t?=
 =?us-ascii?Q?iBr6V+zFKgBzgCMcp9oIKWvUAnEzuuvm+siuNLvDnd25LgAMOrBm05Qj1omE?=
 =?us-ascii?Q?RQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5eaae509-e3e8-4e6f-c3a3-08daf0735079
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Jan 2023 05:52:08.8096 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: QtfzzQy/Br7th5mhvmL+QzEZWCyucCOJmDAgNnddNPy5W+nGJHkXmnReSMJW1ptJLXNphVvtahTdtHgOdwtb6k2bZIU2MxsEuJzqmxBUbIg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7083
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [RFC 1/4] drm/i915/quirks: Add quirk for 480MHz
 CDCLK step
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
Cc: "Syrjala,
 Ville" <ville.syrjala@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hello Jani,

> -----Original Message-----
> From: Jani Nikula <jani.nikula@linux.intel.com>
> Sent: Monday, January 2, 2023 3:34 PM
> To: Borah, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>; intel-
> gfx@lists.freedesktop.org
> Cc: Deak, Imre <imre.deak@intel.com>; Kahola, Mika
> <mika.kahola@intel.com>; Shankar, Uma <uma.shankar@intel.com>;
> Syrjala, Ville <ville.syrjala@intel.com>; Srivatsa, Anusha
> <anusha.srivatsa@intel.com>; Borah, Chaitanya Kumar
> <chaitanya.kumar.borah@intel.com>
> Subject: Re: [RFC 1/4] drm/i915/quirks: Add quirk for 480MHz CDCLK step
>=20
> On Mon, 02 Jan 2023, Chaitanya Kumar Borah
> <chaitanya.kumar.borah@intel.com> wrote:
> > A new CDCLK step of 480MHz has been added on SKUs that has a RPL-U
> > device id. This is done to support 120Hz displays with more
> > efficiency.
> >
> > RPL-U device ids are currently added within the RPL-P sub platform. It
> > seems to be an overkill to add a separate sub platform just to support
> > this change. Therefore, quirks are a good way to achieve the same.
>=20
> The thing is, this part is *not* a quirk. It's basic enabling for RPL-U.
>=20
> If you start conflating quirks and basic enabling to avoid overkill, you'=
re
> eventually going to end up in all kinds of trouble with maintenance.
>=20

I have floated the latest version of the patch series with addition of a su=
b-platform for RPL-U. This version of the patch series does not make the ES=
/QS differentiation.

However, I have some doubts if RPL-U can be considered as a separate sub-pl=
atform as we interpret it now. For example, it does not show up as a differ=
ent row in the "Stepping info" in Bspec.

Also I had to duplicate the revision ids for it from RPL-P, for which there=
 is no precedence yet. Nevertheless, it could be a better way to do it than=
 quirks.

+	} else if (IS_ADLP_RPLU(i915)) {
+		revids =3D adlp_rplp_revids;
+		size =3D ARRAY_SIZE(adlp_rplp_revids);

Regards

Chaitanya

>=20
> BR,
> Jani.
>=20
> >
> > BSpec: 55409
> >
> > Signed-off-by: Chaitanya Kumar Borah
> <chaitanya.kumar.borah@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_quirks.c | 14 ++++++++++++++
> > drivers/gpu/drm/i915/display/intel_quirks.h |  1 +
> >  2 files changed, 15 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_quirks.c
> > b/drivers/gpu/drm/i915/display/intel_quirks.c
> > index 6e48d3bcdfec..0a30499835b3 100644
> > --- a/drivers/gpu/drm/i915/display/intel_quirks.c
> > +++ b/drivers/gpu/drm/i915/display/intel_quirks.c
> > @@ -65,6 +65,16 @@ static void
> quirk_no_pps_backlight_power_hook(struct drm_i915_private *i915)
> >  	drm_info(&i915->drm, "Applying no pps backlight power quirk\n");  }
> >
> > +/*
> > + * A new step of 480MHz has been added on SKUs that have a RPL-U
> device id.
> > + * This particular step is to better support 120Hz panels.
> > + */
> > +static void quirk_480mhz_cdclk_step_hook(struct drm_i915_private
> > +*i915) {
> > +	intel_set_quirk(i915, QUIRK_480MHZ_CDCLK_STEP);
> > +	drm_info(&i915->drm, "Applying 480MHz CDCLK step quirk\n"); }
> > +
> >  struct intel_quirk {
> >  	int device;
> >  	int subsystem_vendor;
> > @@ -199,6 +209,10 @@ static struct intel_quirk intel_quirks[] =3D {
> >  	/* ECS Liva Q2 */
> >  	{ 0x3185, 0x1019, 0xa94d, quirk_increase_ddi_disabled_time },
> >  	{ 0x3184, 0x1019, 0xa94d, quirk_increase_ddi_disabled_time },
> > +	/* RPL-U */
> > +	{ 0xA7A1, PCI_ANY_ID, PCI_ANY_ID, quirk_480mhz_cdclk_step_hook
> },
> > +	{ 0xA721, PCI_ANY_ID, PCI_ANY_ID, quirk_480mhz_cdclk_step_hook
> },
> > +	{ 0xA7A9, PCI_ANY_ID, PCI_ANY_ID, quirk_480mhz_cdclk_step_hook
> },
> >  };
> >
> >  void intel_init_quirks(struct drm_i915_private *i915) diff --git
> > a/drivers/gpu/drm/i915/display/intel_quirks.h
> > b/drivers/gpu/drm/i915/display/intel_quirks.h
> > index 10a4d163149f..71e05684f5f4 100644
> > --- a/drivers/gpu/drm/i915/display/intel_quirks.h
> > +++ b/drivers/gpu/drm/i915/display/intel_quirks.h
> > @@ -17,6 +17,7 @@ enum intel_quirk_id {
> >  	QUIRK_INVERT_BRIGHTNESS,
> >  	QUIRK_LVDS_SSC_DISABLE,
> >  	QUIRK_NO_PPS_BACKLIGHT_POWER_HOOK,
> > +	QUIRK_480MHZ_CDCLK_STEP,
> >  };
> >
> >  void intel_init_quirks(struct drm_i915_private *i915);
>=20
> --
> Jani Nikula, Intel Open Source Graphics Center
