Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 27DFB65AD76
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Jan 2023 07:32:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 410F710E0CC;
	Mon,  2 Jan 2023 06:32:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9FEC210E0CC
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Jan 2023 06:32:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672641147; x=1704177147;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=2md7AM2sVf7FzgJ1lltEErvRLNZLg1MjxFMBDRe1giQ=;
 b=YjCKygGIs8Aufvebv5N/9IsJ/dgaYKnI5A9WVucyNjsaYQM+FGKYL+nh
 S9zHnX2NSq54K+DXMJbu8ZOSzkf6vhbN6/0jQYRxCvOgVkdGbFfzhYNoA
 5M0xX+tkivagGGMtmvmfl4INLs8KusRCgXPwR/kG68qhfyxYyPkoRTwqQ
 vRvrJCr4vc7VafFQlgBPw43OqnjbJ9QYEemIyiCRwRSOPZre46jJXu1ea
 CVQSVyOv4LiIT38+7xw8q+n3Sf2NMACULyTAhOdK/4kjknBI94c0EvIy5
 rmzvuH92RbszMOZ0lYxx+ALe8NrqpaPjeCLmqWBT8ueotwIypkbNeiGt8 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10577"; a="301127661"
X-IronPort-AV: E=Sophos;i="5.96,293,1665471600"; d="scan'208";a="301127661"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jan 2023 22:32:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10577"; a="722888802"
X-IronPort-AV: E=Sophos;i="5.96,293,1665471600"; d="scan'208";a="722888802"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga004.fm.intel.com with ESMTP; 01 Jan 2023 22:32:27 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Sun, 1 Jan 2023 22:32:26 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Sun, 1 Jan 2023 22:32:26 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Sun, 1 Jan 2023 22:32:26 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TBMtAPvHOy47wDt+R4D0YrZ6quQ9o2BMVjEIln03uH7GQzqhKzx5M2wtmI2h3e7lceLXEFVNxX1LiMqCzG7JeeMQANpWofZtkiH30twMcbegzbM2txAsWLWHuyRhVrxHy+Vhn4LZQYTKMxAM/YN2BlrwbDkMnyMD/zhw9By/hGPCKlmR0Fuc5ycGJKlAA7QZiPmCI1CxwZIZVtIEERQezwejGdp2/Q9/CGEuMdrS0ivvh0MbfAeGIwS3M6HYdVJzvEJsDGSJKnWYYo2vpALHNXRsfETAjx+VPX9BHYh7dItqXbI+M3Hywr3+yHGgVXSY6FwtOy7XenpcjzLDKPlTgA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hIAsG3OyTe51xzCn/2Wx0FAmSKEIp79Ieb4xJjYg8JQ=;
 b=bnqe4XXwscrHifa0aITHiE8jf0fVQYi46mnI4fzKJw+lJsmXhizCOHb/Tp5FeS2O1FRJZ607WMhy0ZC3JMHcybWEYO2jDVwgChWoRIzVVevns2C9IkanDfr/P1UfQ9a6Guu104uhXusSMt86KYm5JlDx2hhCBR6z1DLdeAKty3cZL86tx6nFsNICrRn6QL+41+fCDX18NvF5FRIgzQolQukHGgWXezKEOH3UtLveABOyoLR7JJCvjydd1f8aYRmy7KJEN5N//d048ixKJ2LSTR2uWVNZ0IMdqdVGnA1QTGrl3Cw9O/jcKE9u19UWI9ja/xLscappGhNd8suQLzCyuw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by CY5PR11MB6392.namprd11.prod.outlook.com (2603:10b6:930:37::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5944.19; Mon, 2 Jan
 2023 06:32:24 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::7827:fa46:df42:5703]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::7827:fa46:df42:5703%8]) with mapi id 15.20.5944.019; Mon, 2 Jan 2023
 06:32:24 +0000
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [RFC 2/2] drm/i915: Add additional check for 480Mhz
 step CDCLK
Thread-Index: AQHZBI/JlsoYqrnlKk6ANZWP/PwZKK5XJPWAgDO2jsA=
Date: Mon, 2 Jan 2023 06:32:24 +0000
Message-ID: <SJ1PR11MB6129DBC5F59EA6527DE06EC3B9F79@SJ1PR11MB6129.namprd11.prod.outlook.com>
References: <20221130074617.1619099-1-chaitanya.kumar.borah@intel.com>
 <20221130074617.1619099-3-chaitanya.kumar.borah@intel.com>
 <87o7so3kik.fsf@intel.com>
In-Reply-To: <87o7so3kik.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6129:EE_|CY5PR11MB6392:EE_
x-ms-office365-filtering-correlation-id: 38a2f3cc-0d28-4ba5-d200-08daec8b1c22
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: A/DDqoHBBNS3EszdhGtjDaLGttcqulvR+U0zZm6crrmTKwDaLPCHy6bp5UmS4kQJXkkzhFATs6Ut3gRBM0Gy/g9q2oKmAQ5YqbsiSWMWVpamMd7pEubSxP8bO4LvJw0R85Bk6myuAr2Ai/nBcRjmS7FW4SzQxG0FWpe1L4NY3xmWH4dA51YDeNl8Nm5RZrezkt2t/c95HLu16qGDk2SAYhjY89K4ZzOna/qK3nSTD1FE4BPmdiz6uNuQeMjdix8n4FpfJ2Iqk833YSkgS3JBqEp7aldxzC1FYJIxqQEhxaIkEHh/j9ooIGJ/bDWigo8LzdODbiguJ/GqUyjsQ+iGi08H+eMP+dFf1cQYKSoz2Y5pKxN989OKqe9fMbzQI2ub/7jw6848xaBfUgVSC6isD5KU1BL2gCuLNK2duiCTDNR1c2Q/gHieysIorLV+iIn+/KG4IzFXwXrGxlA6gjA2rbUSBYsljFNRvj580pnXE//3zFf2WHr9fyZ3FuiA5ThO5TpGd3yUddJNs7ZfIAZfS1Jog8a3y4ALHbb7CbUYgTf2VCslpDg78FHsdyh9F5dDNK3aOWFPKbWXZaTSTu5J9qFUgXuZluO+CxqOiw6uFX9zotZMvGyFFYio0GEfdN8Mg0JRHr9qtP0VaLoBgJwVVRw2ot9C9kolh9X3hpteeznwMZfqqDJO3g+QJfpTz8y3c+tu/qcE54w1A/bVfwIt46opyR7m/elZlHKE1m2y3SY=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(39860400002)(396003)(366004)(136003)(346002)(376002)(451199015)(83380400001)(38070700005)(86362001)(38100700002)(122000001)(82960400001)(2906002)(52536014)(5660300002)(8936002)(41300700001)(478600001)(55016003)(6506007)(7696005)(53546011)(186003)(26005)(9686003)(55236004)(316002)(4326008)(8676002)(64756008)(66446008)(66476007)(66946007)(71200400001)(66556008)(110136005)(76116006)(33656002)(22166006);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?QOB3vPlzBLKnSD0bJFhIf4YvOxLgkd2MQqlauO5cy3xTR+YI/k4NiBXuQU0k?=
 =?us-ascii?Q?gJ9qziT+l4nsj8Y/z27nX26ghWiF3++QhO1l/chnyWYUunA/qTkrBV4GZORj?=
 =?us-ascii?Q?e9ecfpfxD+8yvvujG9hl2u1yVEvd/hBkLHofl87qgjeSdC6OFJjtIFiY3QCP?=
 =?us-ascii?Q?r5tqvrBSYxyTL3Y5ir1Gof1x2aOCDjtsBPwtBmCmg0Ct3UN9UaLMSs+XsMN7?=
 =?us-ascii?Q?H0z/FAo4qqg6uxM5kco1IXtc9mG6PW9XML25z3LZCM/OS1OECIM3oRk6tBr4?=
 =?us-ascii?Q?2tjtZNYNdW16V88N7+arkXjNdqIm8ss5RL8J9vlcl5hpG9QdOxh59XqhCeVK?=
 =?us-ascii?Q?u04F7aDuM5oDz24OuY1jY+GGyMNjfCoPYuQVgBavF5RhxuouOY95U1acRb9S?=
 =?us-ascii?Q?0RiLDPBzTzmNFY8YGLvG1L89wVs+ENw4reP/gFd1M+SizPLnbsaaroOhHfwX?=
 =?us-ascii?Q?SfdMLekUd5+y+KRghIvx1u2Xy+tWiLlRejn/l20AcnVV7MKF5BEfCKr1cDir?=
 =?us-ascii?Q?O+BNABkPTOMunG93XLhmnokbI3VvtWs8PighXXycldHLsU89jAdLgvQVaeG8?=
 =?us-ascii?Q?g9pE/Mu3dYo0VFXn97fhX3IzU/mMAl6GihG+z0kMa/ePuy+JmMFBrfIZW3r+?=
 =?us-ascii?Q?tiiu1v4B5yqQEtaULElrV19EYXwdm7Pwy9jMcaAvdNkdqcrTNkkF7bo6olBL?=
 =?us-ascii?Q?MlWOzn+7pXABLBdfKhzRmMhqACE+nrCwV/9l6syBNyCMy3/z90kewuatrT6J?=
 =?us-ascii?Q?S9JzKlIVQW88WKfGYbFH9erClI0rXXkfUoHzpEoDonzB9h24xgCe7QxmwVD1?=
 =?us-ascii?Q?apAFD2kckEZ4ZUffpAz0w3qqZKMcfxeg3KM7MAVDQo6Q489kBeq8i7oEpXqN?=
 =?us-ascii?Q?IWciuNMck+JWOVNCEs7nmNaW+aEZNaSZVkN1sjxCQI/qzsh5S8eSUnwuCDHg?=
 =?us-ascii?Q?geU+lhDIoHRZIdDZyvLZ2CrhB0fEccdQPY49ZzK8DhSq0c305wVrB66AyG1J?=
 =?us-ascii?Q?hSkwcS0zB/566OSiikrP6a1s2zY8TI6o0C8NO6ZOgAQ7yOoNCk/mQYcdSLlj?=
 =?us-ascii?Q?11eomWFvI0Az5Wtx0bg6eFriOa9ls6XFULOQzjNrwNTxGdQeXuu3+XtVM857?=
 =?us-ascii?Q?tEJBfhCfPu1wa2wyP+5q6MRW8zp5ZVXCPgrIeqCsaAkQbaPWI8CBV8Tns/BD?=
 =?us-ascii?Q?OE075DBlcNR5vbXhEl7njxhKj5pafFMSX+tbUKRjZS7z5gY+SXIyCgrrWv+z?=
 =?us-ascii?Q?yXLUybE3ufI//abATAqssSVsXRUB/uJEAKvsntkxPSGfsBO41ewHnyaGV/wo?=
 =?us-ascii?Q?50/Pgq4XeeHHJrCgrAutyeJ789H2KbmribBnEZ0w6rKCneKgQma5f/s0ezO1?=
 =?us-ascii?Q?UOv5IRYeZvTUUvi3t6qmfnIJA7LC8t/AO+/zKLhi5XbpxDxx51pGZ6nB2Qwu?=
 =?us-ascii?Q?2lCwsB3Is6gXFqky2XIQNWFqo2RNlSJvMeddkCehXSheqwAxfl7N64wnkKiC?=
 =?us-ascii?Q?H6+sB3gzUeX8uacG7mZG5poMODBBEOXrXrRFgwP7uRf28gXQm2lhVdtsw2XE?=
 =?us-ascii?Q?kmzoAM5YOqlK76fjRtX+IvAwyHoJ+Xec9316gtnDnl0pM1SHu+wH/Qz0hQb0?=
 =?us-ascii?Q?LQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 38a2f3cc-0d28-4ba5-d200-08daec8b1c22
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Jan 2023 06:32:24.2374 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qakdW9BgHeSuAxvu8cTGLPR/TvaGGB8T6wntwAHwt/UBZJeGQC6vauSq0h2r4C3cxtkH97ELnuKb8ahESTJ6zK2bI4bLVjjqsDFjxEiLRhI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6392
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [RFC 2/2] drm/i915: Add additional check for 480Mhz
 step CDCLK
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
Cc: "Syrjala, Ville" <ville.syrjala@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hello Jani,

> -----Original Message-----
> From: Jani Nikula <jani.nikula@linux.intel.com>
> Sent: Wednesday, November 30, 2022 2:08 PM
> To: Borah, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>; intel-
> gfx@lists.freedesktop.org
> Cc: Syrjala, Ville <ville.syrjala@intel.com>
> Subject: Re: [Intel-gfx] [RFC 2/2] drm/i915: Add additional check for 480=
Mhz
> step CDCLK
>=20
> On Wed, 30 Nov 2022, Chaitanya Kumar Borah
> <chaitanya.kumar.borah@intel.com> wrote:
> > There are still RPL-U boards which does not support the 480Mhz step of
> > CDCLK. We can differentiate these board by checking the CPUID Brand
> > String. 480Mhz step is only supported in SKUs which does not contain
> > the string "Genuine Intel" in the Brand string.
> >
> > BSpec: 55409
> >
> > Signed-off-by: Chaitanya Kumar Borah
> <chaitanya.kumar.borah@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_cdclk.c | 16 +++++++++++++++-
> >  1 file changed, 15 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c
> > b/drivers/gpu/drm/i915/display/intel_cdclk.c
> > index 9bfeb1abba47..1890e5135cfc 100644
> > --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> > +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> > @@ -192,6 +192,19 @@ static bool is_rplu(struct drm_i915_private
> *dev_priv)
> >  	}
> >  }
> >
> > +static bool is_480mhz_step_valid(void) {
> > +	struct cpuinfo_x86 *c;
> > +	unsigned int cpu =3D smp_processor_id();
> > +
> > +	c =3D &cpu_data(cpu);
> > +
> > +	if (c->x86_model_id[0] && !strstr(c->x86_model_id, "Genuine Intel"))
> > +		return true;
>=20
> Ugh, this is super ugly.
>=20
> The usual way to quirk this stuff is in display/intel_quirks.c. There are=
 two
> kinds of quirks, device and dmi. (And I realize that's one place where we=
 do
> have PCI IDs written, but it's for slightly different
> purpose.)
>=20
> If this really can't be done using quirks, and cpuinfo is the only way (I=
 doubt
> it), then we need to add the cpuinfo quirk to intel_quirks.c and not spri=
nkle
> these around.

This change has now been moved to quirk. Since we are having this discussio=
n, first I would like to get your feedback
on upstreaming this change. Do you see value in making this distinction bet=
ween ES and QS parts or should we not care
at all since ES parts will be deprecated in near future?

In case we decide to keep this, let me know if the new version of the chang=
e is more acceptable?

Regards

Chaitanya

>=20
> BR,
> Jani.
>=20
>=20
> > +
> > +	return false;
> > +}
> > +
> >  static void i915gm_get_cdclk(struct drm_i915_private *dev_priv,
> >  			     struct intel_cdclk_config *cdclk_config)  { @@ -
> 3389,8
> > +3402,9 @@ void intel_init_cdclk_hooks(struct drm_i915_private
> *dev_priv)
> >  		/*
> >  		 * BSpec: 55409
> >  		 * 480 MHz supported on SKUs that have a RPL-U Device ID
> > +		 * and  CPUID Brand String that does not contain "Genuine
> Intel".
> >  		 */
> > -		else if (is_rplu(dev_priv))
> > +		else if (is_rplu(dev_priv) && is_480mhz_step_valid())
> >  			dev_priv->cdclk.table =3D rplu_cdclk_table;
> >  		else
> >  			dev_priv->display.cdclk.table =3D adlp_cdclk_table;
>=20
> --
> Jani Nikula, Intel Open Source Graphics Center
