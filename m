Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A97659796A5
	for <lists+intel-gfx@lfdr.de>; Sun, 15 Sep 2024 14:47:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7CBD510E0E3;
	Sun, 15 Sep 2024 12:47:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TYk0evCM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A30E610E0E3
 for <intel-gfx@lists.freedesktop.org>; Sun, 15 Sep 2024 12:47:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726404432; x=1757940432;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=2Q35qO1b+ZBuGC0kRwyMQmLgkm3/vmkRoWPhui7MaAE=;
 b=TYk0evCMbfhx4EYCb3cFwWWgA5PB8//TKSR3G9zGtElTvdfvZHdNAxWi
 +w+dkbIEC/DUO9Bs8pMAkey8i3micX2fJxO/ouMxToY/vf1BKl428lSx9
 dhAzcbdvRwTgATjrU7Q3iPlBUvLFr6O58K/rwcWtY1KCHCJ9nkDIeTllA
 DkVfM5PS2dVBWAxuijshN1VUTLCj7BQ3HL8P2waZGLYK6gYNW0FVXvbgz
 pek/bcePT575E+GwNLJr2MocN+TX0E2ABLyor57LiIuWrcteYCc6qVCZu
 iqdCPEIVOjN5HWQoRhCvKFgQKlG2sHat8C9SeA/HWfH8iBj7xK877ad+u Q==;
X-CSE-ConnectionGUID: Lj7FMmIvSe2jT64egXmk2w==
X-CSE-MsgGUID: zHISOHrMQHKSX4BCQpZUkQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11196"; a="25080380"
X-IronPort-AV: E=Sophos;i="6.10,231,1719903600"; d="scan'208";a="25080380"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2024 05:47:11 -0700
X-CSE-ConnectionGUID: xv6QqIq3Rs2Y5J6x7CZXRg==
X-CSE-MsgGUID: HRCVcq02R+GHwTIXtpSubA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,231,1719903600"; d="scan'208";a="68490829"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 15 Sep 2024 05:47:11 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Sun, 15 Sep 2024 05:47:10 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Sun, 15 Sep 2024 05:47:10 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Sun, 15 Sep 2024 05:47:10 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.176)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Sun, 15 Sep 2024 05:47:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=tD5l1S7bIOarpuoi2chXF0gK7UZQXuZwP8BmwftXvt7VDtSAk9P82ecdJdRW+BYOHS3CynJI2l8e9hB1ZimZKA51Y2r5RnVtxmpRFpq9D34DF0Pb/oE40MJZ9LqHpWOhdK6M1jgVZ3o+Pj0gZFuzkrXHPe5n3Rr0PJm2g2A2Gr77a96VnOv1EBFGd0CRsCQKGE3dL6BCzBaGcO+/OOkrybaNHz1ROePEW9een1+zXsvV4+CzzgNatLl2QAj8/xhGdrWVWMjGKf+JL8/GJhdYYkJRw1w2MZa18bCN/Elp2ATSgxbcevH3WeT6RoCjnI3qNQai26K1YmpUDDteouaQmA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wkg3UE58G0KmQ+qATiJyGDV/5Ot+BjiMK4Oc+MdCNrk=;
 b=k+4W359ApAfdvW7g4MB0hp3l/QfIdcT78DPiOzCA5yo8ZRioJnPzWUBI0aPsuroRW1r6q61aJDPz05tIvJDeQJy4Mc7r9Xw66Ex1knkT7iUCBZHAhXJI0C+XtmJ2655kCqI34pimtyR8QVMCn1skNO6qG4VxQAL/gXFhtV405sUkDy1kk66k1hxUrqyAkW6jiel3cnGEUa+gLWvEKnpecny5aaaiJXMKuWUyilwnSpV5ZGedzt796Ysras9LxH1kJ7wQgkehHa1U1jX5A54WfqqncA16z5TGiqkeqvuSvBK+yGLwf+vspqz0/yXhgHN699bMSG1Vh5eufZtj1ILKqw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by PH0PR11MB5016.namprd11.prod.outlook.com (2603:10b6:510:32::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7962.23; Sun, 15 Sep
 2024 12:47:03 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::dafa:d38d:8ac1:e843]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::dafa:d38d:8ac1:e843%3]) with mapi id 15.20.7962.022; Sun, 15 Sep 2024
 12:47:02 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Kulkarni, Vandita" <vandita.kulkarni@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCHv2 1/5] drm/i915/display: Add support for histogram
Thread-Topic: [PATCHv2 1/5] drm/i915/display: Add support for histogram
Thread-Index: AQHa87WZctRbqxutEUyY7MAGMhxOCrJRDakAgAEA1cCAAgPqAIAE3igw
Date: Sun, 15 Sep 2024 12:47:02 +0000
Message-ID: <IA0PR11MB7307458699B88808C7498002BA672@IA0PR11MB7307.namprd11.prod.outlook.com>
References: <20240821102349.3961986-1-arun.r.murthy@intel.com>
 <20240821102349.3961986-2-arun.r.murthy@intel.com>
 <SJ0PR11MB67893EF32300D1B26127066F8D9A2@SJ0PR11MB6789.namprd11.prod.outlook.com>
 <IA0PR11MB7307D98AF48A0177B9AADFD8BA642@IA0PR11MB7307.namprd11.prod.outlook.com>
 <SJ0PR11MB6789AB927195DF90064D29C38D642@SJ0PR11MB6789.namprd11.prod.outlook.com>
In-Reply-To: <SJ0PR11MB6789AB927195DF90064D29C38D642@SJ0PR11MB6789.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB7307:EE_|PH0PR11MB5016:EE_
x-ms-office365-filtering-correlation-id: c347d119-4ec7-4117-c8df-08dcd5847f1f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?gfyGSZD5X8BTQj1X6cAjp62ZtozjuY9RzOyo1BaLeQm7pyQCahN4HotxODTQ?=
 =?us-ascii?Q?T1W+1bcjvWLTa397P615fkYswhMEZsfNriRYinBOqVSJ470+kMYJT1Nx5HXP?=
 =?us-ascii?Q?j3kkAPXQkDyWSsIId1EFgY02qs/6TuWaKg0xD/L/kwBpHcI5+pStNTC/OXLd?=
 =?us-ascii?Q?bFGsutkTDiaiZEIjGw8CnJeB8/DRfGh0kIaEmgNpMhW2PuSBQV4J94rzZ76y?=
 =?us-ascii?Q?7epG9QDnHuQjSmFYKGGRlQoYaqQa+TZy+mMF5x9pt4O8rE8+lnt8bH9CBEWN?=
 =?us-ascii?Q?zsPrwwj7UrdmMORUsCH5ZZjgWilo5oeQOTDVKkoEa2fS2Xk//2Dy0EfBDNj6?=
 =?us-ascii?Q?8zS6cCRyzxi1PnXZeHNyG6FEmbVcQstMHzwL98D+bS5MihqWgC6jYsK9n2nz?=
 =?us-ascii?Q?p+2nyuTIoKhjl6O24jb3caSONXFPz7E8nWgwU+BbPxzKVFsTOhlW1hK9J3nT?=
 =?us-ascii?Q?x7J0dlprpAP+rnqLID+xETCbpiN6KHe3t2uLzAzki1Yni5DlXzVXm8+F2kKa?=
 =?us-ascii?Q?939F4BS+Ti0kta14Upw++zLuD22Lg9/z1Ld7b0Qoq/JH4uzNpPC76KbIHdFm?=
 =?us-ascii?Q?SfeoQ095xeyOiYW3k4F8CObZrG9fmRn53swBx0kfFY5b0q4HU5FQtCKOqyqi?=
 =?us-ascii?Q?FnNkkFdLyouY2e8EOAkqPtHKr8a5iKJQFtd6sn6+iHsTmaCNqmwUR7VvxcLJ?=
 =?us-ascii?Q?vU+mReYx3bI8JLomXRDsIT4b4HdEOiUW7ejaroBijA9b1lOiCvSUDQDjpAGX?=
 =?us-ascii?Q?ptFu+6APGvFriYdFDZULBTHG4E7m/RpXpGzOASjuyYmNC/n2fj6NhQ/eZNio?=
 =?us-ascii?Q?8O7Vmjg5+zONV5ev9pl5oByKo9TAuU9Z/44XB5BX2lK3IzvyR+SX3DfXcEQO?=
 =?us-ascii?Q?YCJQoXXx/a6hr0TBkcIB3y8+RQDoFIx5nukUd3XH669GYCEsofVzZANKyMIc?=
 =?us-ascii?Q?rKrxmeSwuWK0FvFVaKGhw8T+KqI3vOrVLrNCRuVwe+BgHDRNptvwm5i+gJMc?=
 =?us-ascii?Q?1DmcdEukEdU4lCwpDhnEaCrDBhzn+sqn/dqb6m63+Xhk4ZbDEluhe8DtGjc4?=
 =?us-ascii?Q?FXDkBb1nay3aRM9XrF3DbzpFEd//a/hmQceL90JYK/W3D07anrUK9VBW461D?=
 =?us-ascii?Q?hHzSpDpMhClfAK7x9FUpYb+LetUsg6Qv1QDmblg/VMR+7tG5CbAUxpM0w8vO?=
 =?us-ascii?Q?zFy/zgkXrQKCr2la9EqKVyovQGHHSzsVNeWnb2jvO+mVosKs2rOiUzqkeNab?=
 =?us-ascii?Q?kV/eXRM/spm2PEsfNwTKmXjWQbVC1XPl4wNoBtXxTwp6JVsXxCV2GXP2PXj8?=
 =?us-ascii?Q?vGt0PJ60h2+iomweBM62CLsiSo9MkWlkb3iIQIQu9lXsbqiRxp1a22sEQFYX?=
 =?us-ascii?Q?Z7UMnOth0xxNR/X+r03PuVPcCoTo/jp8NiVrJbp4Bl42HHyqCQ=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?ynFHR34DhGZjkP8FLnkHn6SfaN7+PGXjhtGvvkgmPFSIi7zv76agRNeI3M2r?=
 =?us-ascii?Q?/ZDBvOXLZbSOYIpEGn0dB+i/5dYD3WYwSsyyymR7iNnqrj7iF76MPCmbjlZ2?=
 =?us-ascii?Q?V6A0HWQcT3P4mgJqUawWhsrs67mC7zv9TQeDlHKf8wk33EbQHx1fn/XgWoIX?=
 =?us-ascii?Q?4m0Q10NKwl6BbyU0iNBOjOJ/aCeTU8rgBYpDqnrqvbJFI2WjVtYdYFpCK1ox?=
 =?us-ascii?Q?stdYp103RLAfhF++oMeabF6uDRigLI5dA13Kg1rbExo5RQH1+s+0RcEJFItZ?=
 =?us-ascii?Q?j2pc9b53r74wsIeADAMaB9Rkj9Tyk0gIpY8exovaalj2zZWj/tyhFkCOlSFC?=
 =?us-ascii?Q?d/esR/XTyfV7ZdeAN59373v5C6yFqwM5Ia+KQYcpCXP+lkxyKipY7KT2iaTR?=
 =?us-ascii?Q?gcREQkNZdfKAAeNCEwFgPAh9uJe611FLSlOjO+/bnTzfXeKIfNn9Bo0F0uaY?=
 =?us-ascii?Q?jPwO7CsU57wbp/AHLAjDc73RI0QiNF602uHwL9/JcHbPZCTA+HPjMhAdqzkd?=
 =?us-ascii?Q?8A8O6w17zqpTMO+3w10ip9qdzrl6KZdvKPCwBVNba1mn7YNwThzo5uy/dBYe?=
 =?us-ascii?Q?f9nqZOyjjdTkOXjdNKeo1PCquWGJ08taf87DC+o0wb5f+6wvgovcTZfvUkm6?=
 =?us-ascii?Q?Iuw2bo2qh9Q8QD3h4z+kvLL7gBpDe8zkcEOIvgnPMns5zDohVyXVFjacUQ6P?=
 =?us-ascii?Q?8qZVwy4kr9p+uVPdhXdoVc60772G5am92Ha/M9ML1u8DZH/gl2uuY98fozP3?=
 =?us-ascii?Q?vXXXcKzXundGl6JkCuREDEPBn0Y5zCIR8nPGMjR0T3YLi8j60Pw3TOOnJIGD?=
 =?us-ascii?Q?erGtvjMR8q8UdjznugYiUhQvxNgq+ClAsdxcNmNr4XlGCwpHWBUxepZabaQZ?=
 =?us-ascii?Q?FInXO1p2/NFOZpEDhlFKZxYg5abWyfUsk0XMC+CjdmgTGe6rQNg0AMEJ2IIJ?=
 =?us-ascii?Q?02L5wEUo/DPHFqQccMl990wk7KU0cJ+iofqg2Swgh79+hVA39ndwP0NEzBMa?=
 =?us-ascii?Q?wE5Q7Iw3yz7j4H2iGdYHIbRA4EDdTGwmhYdkNpMZhzKNjhhym9pCTUYzU5Jf?=
 =?us-ascii?Q?50prx2JryLVCsUXD34HwPChVkL6ZE1b9fbXNYHqQrlodhjoWMab7Y4Gis5om?=
 =?us-ascii?Q?p1rrG8Fg9iuYt/1ZYgjYzn6wQTJGpClwcglLeas4DeS/T8+WCgRIomD/llNM?=
 =?us-ascii?Q?s0Oos0idzfrgwg4MJtdBmCA/60A/N6GBn8LqGRF7G5ybhdh8W4DdUiPmkavQ?=
 =?us-ascii?Q?dAaYvN10sz3QGh1Ica8nnjV1h7bAblea1JaVv2rBV//E2ivCzPv38DHGUio1?=
 =?us-ascii?Q?Foa9lRuLXi85Qi4tjsrCpODlnIZAxdIFubWVA2kdIdiTFbIcUy6GOQ0WE3xt?=
 =?us-ascii?Q?RAzTcRDusEQpWH+DbLnZYI0YGTW91o38UjgpL5Eycn3kLdfU5DYA+9TOHnaZ?=
 =?us-ascii?Q?JQ15sx8yRYISFeCgJjY+rgJqTC1jBXJQIhaotj2ebMyL/Yh3Gh6GPxO5zNiF?=
 =?us-ascii?Q?9BhtAPdedE/SjLDL2WpSlQSan13hpakbTGLvSmYxKxI6xYv8GOob7IHaz4lD?=
 =?us-ascii?Q?b+NZO1pJiMm4cq6tTRBuM5oYkWz/XUmriAzPhjo9?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c347d119-4ec7-4117-c8df-08dcd5847f1f
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Sep 2024 12:47:02.4762 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /QDOyvGTUFkrQYbn3zwBLEjStdug3gjhhTQwtws77Fd3cTuSzm7nzG1hG5DeuzIODF4Qmb7J31/hL51LGFAVFA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5016
X-OriginatorOrg: intel.com
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

> > > > +#define HISTOGRAM_GUARDBAND_THRESHOLD_DEFAULT 300    //
> > 3.0% of
> > > > the pipe's current pixel count.
> > > > +#define HISTOGRAM_GUARDBAND_PRECISION_FACTOR 10000   //
> > Precision
> > > > factor for threshold guardband.
> > > > +#define HISTOGRAM_DEFAULT_GUARDBAND_DELAY 0x04
> > > > +
> > > > +struct intel_histogram {
> > > > +	struct drm_i915_private *i915;
> > > > +	bool enable;
> > > > +	bool can_enable;
> > > > +	enum pipe pipe;
> > > > +	u32 bindata[HISTOGRAM_BIN_COUNT]; };
> > > > +
> > > > +int intel_histogram_atomic_check(struct intel_crtc *intel_crtc) {
> > > > +	struct intel_histogram *histogram =3D intel_crtc->histogram;
> > > > +
> > > > +	/* TODO: Restrictions for enabling histogram */
> > > > +	histogram->can_enable =3D true;
> > > > +
> > > > +	return 0;
> > > > +}
> > > > +
> > > Looks like we are totally bypassing crtc_state->dither.
> > > Also I see some comments on dither not being enabled on anything
> > > which is not 6bpc. Is that constraint resolved now?
> > >
> >
> > Crtc_state->dither is used for enabling dithering during the
> > crtc_enable and at this point we are far ahead of that.
> > That restriction is for older platforms(ironlake) and we don't have
> > any such for ADLP+
>=20
> My first point was why do you need to enable it again separately, if it h=
as been
> already taken care by crtc_state->dither And second point was, can you pl=
ease
> share the bsepc link where we have this requirement of enabling it again,=
 even
> it it was enabled.
>=20
Enabling dithering helps in removing the artifacts in the image and is done=
 as part of improvement.
As communicated earlier histogram is a pipe configuration and dithering is =
a trigger point for histogram.

Thanks and Regards
Arun R Murthy
--------------------
