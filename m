Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E8636B79A1
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Mar 2023 14:57:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF93C10E52C;
	Mon, 13 Mar 2023 13:57:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 724FC10E52C
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Mar 2023 13:57:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678715843; x=1710251843;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=AWOGmQaWWZqxQ9HH5x9fv76mkJtkG2l0c8M6rmk7d+w=;
 b=DnolB3LZwd6GA6njsGS8Xu4fdlRcpGXCa0/37LhnDPbNS4N6kK0/gg9V
 CMCexTxPxOiFowjEdh+p/fn8cDC1FrR91kxEvH3IaFCHOPwuETJfYHRzz
 IoZqUGeJRQCdDgNXB+9rDbS/T39weCHJzDNMqQEIiswM3RJ5Py+n16TW9
 /OzhFcKZaJZunheN6mlNzaRuspuIyw8vfPA85WioW65FelsGG5TKWrJyF
 nX585X1LSTVGzi6rfBBq7xTGYFHdv8E+K978mMjDP+4lSO1BifHMYioek
 M7NZ4epMLBvRCeFj0uaFaKWuhHaiTQrmFqZe7z4HpUc2l7TZqglYa3ZTg A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10648"; a="423416347"
X-IronPort-AV: E=Sophos;i="5.98,257,1673942400"; d="scan'208";a="423416347"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2023 06:57:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10648"; a="678693067"
X-IronPort-AV: E=Sophos;i="5.98,257,1673942400"; d="scan'208";a="678693067"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga002.jf.intel.com with ESMTP; 13 Mar 2023 06:57:22 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Mon, 13 Mar 2023 06:57:21 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Mon, 13 Mar 2023 06:57:20 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Mon, 13 Mar 2023 06:57:20 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.103)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Mon, 13 Mar 2023 06:57:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MiAluxtfDe/bU2wyKQ3MUubEw+9JRS1ZUgJaKPXundC4WmR9VuJBpKOC+posQWsSCwccyVyoY6e2LmY1IZH8bTlDITYoY/T3AR7mUrsZMyBkoqtSChMLHJESdWvHpZsvEr4SGuwXZ+Ohm9nC+O2mpebD5TOtKGJsG6wj7WVDKonOmQ1/QlyWN2GP5p9xMRQRy7hmaf/tLlPb9wReugMkv/BPFcHMAjQsr0YMSrC1ibnzumO+pVxVQqwuUBMhDiqDnxgopdltBNYsJBu94c5Q4djgPUaRwKZuRBLFi80iLCUdLKFsdVcm1m5QeV0z2t8TMwvWzgybde4F/m8TpQgKjw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8pqgPi5Uw8pHU5ElNFEYdLbEm8m4YpILkA9jSTtpado=;
 b=iIigMEfIbZPrEXKGEAaMJzojGIkvr2Q2dRbRllTxPeDYJMTto9Dw+hDtOI7DASjCPnImsvAJ74dLmT58neQ9Rb0ExAiRHs7FU2MDagkrJrNCf0EZJiAY3lj1vF9CMgIukfupk8UzRAkoht1TQsKkvN5McN4ibwuiI6uAabSy9vW1nT2+25+OCJaRq7mzBCjXY7Gcb0FTx4VEHvviAMGlyjandjIi4RJAhxOThLRA9xnM+GEIqtLZKIsRpQl84QbOhhrXDi8t75OlKsXCEJURjvLrzIxgCpdSfYXH7SeTxVgDi4NAJpuvz+0itvMzv2sSaNDApdOMloj92XHAj05Vew==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY5PR11MB6211.namprd11.prod.outlook.com (2603:10b6:930:25::6)
 by CO1PR11MB5090.namprd11.prod.outlook.com (2603:10b6:303:96::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.24; Mon, 13 Mar
 2023 13:57:18 +0000
Received: from CY5PR11MB6211.namprd11.prod.outlook.com
 ([fe80::3430:99a9:fa2b:9ccf]) by CY5PR11MB6211.namprd11.prod.outlook.com
 ([fe80::3430:99a9:fa2b:9ccf%3]) with mapi id 15.20.6178.024; Mon, 13 Mar 2023
 13:57:17 +0000
From: "Gupta, Anshuman" <anshuman.gupta@intel.com>
To: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>, "Nilawar, Badal"
 <badal.nilawar@intel.com>
Thread-Topic: [Intel-gfx] [PATCH v2 1/1] drm/i915/mtl: Disable MC6 for MTL A
 step
Thread-Index: AQHZUxckvbimX5hhKEyjaNPSFaiJXa7z3E8AgATku4A=
Date: Mon, 13 Mar 2023 13:57:17 +0000
Message-ID: <CY5PR11MB621150DA54F5EFBA3A33B31D95B99@CY5PR11MB6211.namprd11.prod.outlook.com>
References: <20230310061339.2495416-1-badal.nilawar@intel.com>
 <20230310061339.2495416-2-badal.nilawar@intel.com>
 <ZAsQsLMCsL4XAOTt@intel.com>
In-Reply-To: <ZAsQsLMCsL4XAOTt@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY5PR11MB6211:EE_|CO1PR11MB5090:EE_
x-ms-office365-filtering-correlation-id: 7eaa29bd-7d69-4b94-29f8-08db23cadba6
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: E9AYf/VQckMGfKGKOoZB3Blnyh5jUKB1ll84N9TLkkza5d2Jdlbsi+xavxJffBv7fS5mLeWnavNTUCfxUuHK6LHEWorjWprRX6qP9pXE/Ct8TdTrakks7rAf5+jzhyrQDQYE0QDo0+BHXzQp4HX8z3GgzoTzDNBNwU6fdb4zU8E/v799HQUU74znwrl9IKfQpujfTTXAnBR6wvx5hoe/bNoLVqsEe7X8TwYKm/wQ0mWvqNJUckPCFyyxTKASsXv0QXGMMj5k8xegyJbxj9Q7c8RByx6uQJStr9lGCHU/VX4coNnTYZkaJt6bwPiF8CMuO9myfZ0TMiRagrROVSIn9IFdApksbCQj50wXeOO5ILCWw68PvVyM4ZQf7p+nNFraJnqfoetjaoMIE1WFCd1mIuivzKIzhqHddjhx1J8fth//5/fW13YfcUO2KqiuHAdg/IN3Zis9BYr77EhC/iOSBM2cmGewMiam3byNBDWif1x/HZw9jXNvK9+6Te/d9ym8oqPfQVdQ6Xm6ga6STpgKNqoK6WrK8+LGd4awl4zAye4/mXkhaGgy8nAI3LHkae35//a1YKOQqWzpO0iTY15LAaq3CYuO+3RexbBfeISq3ab0+jl7rEl6YBn5/MaCSuji6K8v24Db8wFb0+k81wfXgx2X+GqcmPnMCXgCWBzvcKaTyxXHyJKhHzqosgW/bUwI15ujTpbxEYZB2P2TQiX7pQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6211.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(39860400002)(366004)(136003)(396003)(376002)(346002)(451199018)(82960400001)(38070700005)(7696005)(71200400001)(76116006)(2906002)(41300700001)(66946007)(66556008)(66446008)(55016003)(64756008)(33656002)(4326008)(66476007)(316002)(478600001)(54906003)(6636002)(86362001)(110136005)(122000001)(8676002)(5660300002)(38100700002)(53546011)(55236004)(26005)(6506007)(186003)(9686003)(107886003)(8936002)(52536014)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?BFfyDbZ5vcJVZBtp/53TToicSIrkSql4jd/yS7cGNpF8+G8pa9cBsAwi49lz?=
 =?us-ascii?Q?DtmJCBSARGB4WNlIrSAh58Uon7kE6gKaGkKatLZaA7x8+j4VHE603RfdB9E1?=
 =?us-ascii?Q?NamJkg3xBOXK5MMilFsImvyXpxM2c7bZRLKN6zill7i3PhGO8WU/tgK/9cny?=
 =?us-ascii?Q?MHoMw00xeSpidvyliYWqTrEKScwoZw5WvSFBtXWRt1ogwMZ++s2cvGOqSFWL?=
 =?us-ascii?Q?7YAYTMIG7wGf/Gd3AesAdCBX8KmD8ResJESdClVGRhkjIYxxs0bkYGN10jwR?=
 =?us-ascii?Q?KArtpKc89tff6IyIFjtMH+KgeDfBMaAk6NBWBeLC70AKUHpA4TYKGodBKOdk?=
 =?us-ascii?Q?x0EA/T902Wn9hJMu0Rt/O5QTFZJN9Q6NV2bpGVRYXMUv2LQyjYs06cWvzv54?=
 =?us-ascii?Q?j4tSsKNRAozXWAtCgm1Ww+AeJU6s1J3tdEQVz/JA9w4H9RLYGdScpiPmJtVM?=
 =?us-ascii?Q?3v0XtqrOd0IlKXgD8z8Yl0zEp47cA01eMHE3Q0di7bqS5HEAOWvbBrSgW6WF?=
 =?us-ascii?Q?LtJskCdvk9VeL8O6Mxm0NxS+oBihOXKir600ojg2S/L7bWVp7TrnVJC9u0e3?=
 =?us-ascii?Q?/lezUa/LBROwIYT6DpaiqmQtVqMmiRxYyMIILPjeb+DDINTrCqhTtN94emgE?=
 =?us-ascii?Q?EpOh4vkc0aDquDTNtrjxFqXC6J1FXugqjx5Q44tGpGO2IG857HRsXBE4ZpNO?=
 =?us-ascii?Q?5f5YTwgxo4gXpuF+fPOnBwrETR6D6lNCUXeOpOb/bqjZkBucUiaE+9rhfBVU?=
 =?us-ascii?Q?yPWZVmZBYdS1lm5NuHDvlUcERLsSxQvBEgLATGWFC/WA7CwhdTLbtRamlVrM?=
 =?us-ascii?Q?QyAmOcu9Vm5fVSKWKV6nHnVO7DSj5fQK44vqHCrWwMGgBMFpT6LQoxaLDp8l?=
 =?us-ascii?Q?0nIONw35N6SgtebHu29a/X92KHYOzFiL16ua9d8DdgQ5JpF89YLYoth5AC6i?=
 =?us-ascii?Q?7hHkl1zbcdx67wSy25Y06lOvxngqR8stqNtvm+rjHN0wHOCXvVTG76V4h4dG?=
 =?us-ascii?Q?+ntuhEhOLTrxRtg1SwkSTBwBahSL4ng99CXMUDe1rgL4zw9IjyQnh9Dt5RXQ?=
 =?us-ascii?Q?MIt9y0jqiDMQeG/yhyNe7ZANxnKVPvL/cs/H9fBELmh9Vu01t+djRY9eCAIv?=
 =?us-ascii?Q?cx8B2H5Fdi3QJ1AGkPGXhzsmqeUn99gquijeYmp9iKyVSXn4IO+pwf3+CdZt?=
 =?us-ascii?Q?CLGoKaCYCbcY1U+mlTkfGfJ/uVsZW3qNy/b8GQkRx9vWALWSo7Uw9WOyCjY+?=
 =?us-ascii?Q?wPGi3EjdNfCBiXcGH80hIBQxyNVmQtcVJZnzIwW76cNLcHpWqcA/WXoXgW4A?=
 =?us-ascii?Q?Kx5MoO12jSv+s1RS9PR1+eDtG3Bu/iL3j4ZsUivEnBsHrnjkJ6U2TSvKkh/u?=
 =?us-ascii?Q?gbDrzI8Xr9vkQhdQXAO1/ejT3Jff2P3QJPUSlFIUF1xhePGZ2E8D11VqG/5+?=
 =?us-ascii?Q?nbbLnr6GQQ/dAjVlJF1bGSESRESVQZ1WsgoDTzf0McWEV7YnT2UccYVr2Ceg?=
 =?us-ascii?Q?ks/7KFY6x2opxFLo3+jVZEMcKZ8/+EdSxrid2fKBLuVsmvClPb3JVhFEfrWi?=
 =?us-ascii?Q?aMWo0+mtPswb86Z2So/o376dkB0g9o2q4pyl8xnc?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6211.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7eaa29bd-7d69-4b94-29f8-08db23cadba6
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Mar 2023 13:57:17.8366 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: u8GxAktawBGGzw4K3YnhehcIvl/9OqxDWsAXVTbNEelZV2eACCjaFH/XmrJGja43jpeIATYZb4ymAmlLD3YCBGGsSlVWm7yItShFf0dHLbc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5090
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 1/1] drm/i915/mtl: Disable MC6 for MTL A
 step
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
Cc: "Germano, Gregory F" <gregory.f.germano@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Chilmakuru, Hima B" <hima.b.chilmakuru@intel.com>, "Nandamuri,
 Srikanth" <srikanth.nandamuri@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of
> Rodrigo Vivi
> Sent: Friday, March 10, 2023 4:43 PM
> To: Nilawar, Badal <badal.nilawar@intel.com>
> Cc: Germano, Gregory F <gregory.f.germano@intel.com>; intel-
> gfx@lists.freedesktop.org; Nandamuri, Srikanth
> <srikanth.nandamuri@intel.com>; Chilmakuru, Hima B
> <hima.b.chilmakuru@intel.com>
> Subject: Re: [Intel-gfx] [PATCH v2 1/1] drm/i915/mtl: Disable MC6 for MTL=
 A
> step
>=20
> On Fri, Mar 10, 2023 at 11:43:39AM +0530, Badal Nilawar wrote:
> > The Wa_14017073508 require to send Media Busy/Idle mailbox while
> > accessing Media tile. As of now it is getting handled while
> > __gt_unpark, __gt_park. But there are various corner cases where
> > forcewakes are taken without __gt_unpark i.e. without sending Busy
> > Mailbox especially during register reads. Forcewakes are taken without
> > busy mailbox leads to GPU HANG. So bringing mailbox calls under
> > forcewake calls are no feasible option as forcewake calls are atomic an=
d
> mailbox calls are blocking.
> > The issue already fixed in B step so disabling MC6 on A step and
> > reverting previous commit which handles Wa_14017073508
> >
> > Fixes: 8f70f1ec587d ("drm/i915/mtl: Add Wa_14017073508 for SAMedia")
> > Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> > Signed-off-by: Badal Nilawar <badal.nilawar@intel.com>
> > Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
>=20
> Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
>=20
> I confirm my rv-b here although this came from a combination of 2 patches
> and has a different msg.
>=20
> However, depending on when we got the CI results back I won't be availabl=
e
> for pushing it and I will be out next week. I hope another committer can =
push
> this to drm-intel-gt-next.
Pushed to drm-intel-gt-next.
Thanks for patch and Review.
Br,
Anshuman Gupta.
>=20
> BTW, no need for cover letter in single patches.
>=20
> Thanks for the patch,
> Rodrigo.
>=20
> > ---
> >  drivers/gpu/drm/i915/gt/intel_gt_pm.c     | 27 -----------------------
> >  drivers/gpu/drm/i915/gt/intel_rc6.c       |  8 +++++++
> >  drivers/gpu/drm/i915/gt/uc/intel_guc_rc.c | 13 +----------
> >  drivers/gpu/drm/i915/i915_reg.h           |  9 --------
> >  4 files changed, 9 insertions(+), 48 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/gt/intel_gt_pm.c
> > b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
> > index 85ae7dc079f2..e02cb90723ae 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_gt_pm.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
> > @@ -20,31 +20,10 @@
> >  #include "intel_rc6.h"
> >  #include "intel_rps.h"
> >  #include "intel_wakeref.h"
> > -#include "intel_pcode.h"
> >  #include "pxp/intel_pxp_pm.h"
> >
> >  #define I915_GT_SUSPEND_IDLE_TIMEOUT (HZ / 2)
> >
> > -static void mtl_media_busy(struct intel_gt *gt) -{
> > -	/* Wa_14017073508: mtl */
> > -	if (IS_MTL_GRAPHICS_STEP(gt->i915, P, STEP_A0, STEP_B0) &&
> > -	    gt->type =3D=3D GT_MEDIA)
> > -		snb_pcode_write_p(gt->uncore, PCODE_MBOX_GT_STATE,
> > -				  PCODE_MBOX_GT_STATE_MEDIA_BUSY,
> > -
> PCODE_MBOX_GT_STATE_DOMAIN_MEDIA, 0);
> > -}
> > -
> > -static void mtl_media_idle(struct intel_gt *gt) -{
> > -	/* Wa_14017073508: mtl */
> > -	if (IS_MTL_GRAPHICS_STEP(gt->i915, P, STEP_A0, STEP_B0) &&
> > -	    gt->type =3D=3D GT_MEDIA)
> > -		snb_pcode_write_p(gt->uncore, PCODE_MBOX_GT_STATE,
> > -
> PCODE_MBOX_GT_STATE_MEDIA_NOT_BUSY,
> > -
> PCODE_MBOX_GT_STATE_DOMAIN_MEDIA, 0);
> > -}
> > -
> >  static void user_forcewake(struct intel_gt *gt, bool suspend)  {
> >  	int count =3D atomic_read(&gt->user_wakeref); @@ -92,9 +71,6 @@
> static
> > int __gt_unpark(struct intel_wakeref *wf)
> >
> >  	GT_TRACE(gt, "\n");
> >
> > -	/* Wa_14017073508: mtl */
> > -	mtl_media_busy(gt);
> > -
> >  	/*
> >  	 * It seems that the DMC likes to transition between the DC states a
> lot
> >  	 * when there are no connected displays (no active power domains)
> > during @@ -144,9 +120,6 @@ static int __gt_park(struct intel_wakeref
> *wf)
> >  	GEM_BUG_ON(!wakeref);
> >  	intel_display_power_put_async(i915, POWER_DOMAIN_GT_IRQ,
> wakeref);
> >
> > -	/* Wa_14017073508: mtl */
> > -	mtl_media_idle(gt);
> > -
> >  	return 0;
> >  }
> >
> > diff --git a/drivers/gpu/drm/i915/gt/intel_rc6.c
> > b/drivers/gpu/drm/i915/gt/intel_rc6.c
> > index 5c91622dfca4..f4150f61f39c 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_rc6.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_rc6.c
> > @@ -486,6 +486,7 @@ static bool bxt_check_bios_rc6_setup(struct
> > intel_rc6 *rc6)  static bool rc6_supported(struct intel_rc6 *rc6)  {
> >  	struct drm_i915_private *i915 =3D rc6_to_i915(rc6);
> > +	struct intel_gt *gt =3D rc6_to_gt(rc6);
> >
> >  	if (!HAS_RC6(i915))
> >  		return false;
> > @@ -502,6 +503,13 @@ static bool rc6_supported(struct intel_rc6 *rc6)
> >  		return false;
> >  	}
> >
> > +	if (IS_MTL_MEDIA_STEP(gt->i915, STEP_A0, STEP_B0) &&
> > +	    gt->type =3D=3D GT_MEDIA) {
> > +		drm_notice(&i915->drm,
> > +			   "Media RC6 disabled on A step\n");
> > +		return false;
> > +	}
> > +
> >  	return true;
> >  }
> >
> > diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_rc.c
> > b/drivers/gpu/drm/i915/gt/uc/intel_guc_rc.c
> > index fcf51614f9a4..1adec6de223c 100644
> > --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_rc.c
> > +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_rc.c
> > @@ -12,20 +12,9 @@
> >
> >  static bool __guc_rc_supported(struct intel_guc *guc)  {
> > -	struct intel_gt *gt =3D guc_to_gt(guc);
> > -
> > -	/*
> > -	 * Wa_14017073508: mtl
> > -	 * Do not enable gucrc to avoid additional interrupts which
> > -	 * may disrupt pcode wa.
> > -	 */
> > -	if (IS_MTL_GRAPHICS_STEP(gt->i915, P, STEP_A0, STEP_B0) &&
> > -	    gt->type =3D=3D GT_MEDIA)
> > -		return false;
> > -
> >  	/* GuC RC is unavailable for pre-Gen12 */
> >  	return guc->submission_supported &&
> > -		GRAPHICS_VER(gt->i915) >=3D 12;
> > +		GRAPHICS_VER(guc_to_gt(guc)->i915) >=3D 12;
> >  }
> >
> >  static bool __guc_rc_selected(struct intel_guc *guc) diff --git
> > a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> > index b9b6d46dfe1b..9db6b3f06a74 100644
> > --- a/drivers/gpu/drm/i915/i915_reg.h
> > +++ b/drivers/gpu/drm/i915/i915_reg.h
> > @@ -6460,15 +6460,6 @@
> >  /*   XEHP_PCODE_FREQUENCY_CONFIG param2 */
> >  #define     PCODE_MBOX_DOMAIN_NONE		0x0
> >  #define     PCODE_MBOX_DOMAIN_MEDIAFF		0x3
> > -
> > -/* Wa_14017210380: mtl */
> > -#define   PCODE_MBOX_GT_STATE			0x50
> > -/* sub-commands (param1) */
> > -#define     PCODE_MBOX_GT_STATE_MEDIA_BUSY	0x1
> > -#define     PCODE_MBOX_GT_STATE_MEDIA_NOT_BUSY	0x2
> > -/* param2 */
> > -#define     PCODE_MBOX_GT_STATE_DOMAIN_MEDIA	0x1
> > -
> >  #define GEN6_PCODE_DATA
> 	_MMIO(0x138128)
> >  #define   GEN6_PCODE_FREQ_IA_RATIO_SHIFT	8
> >  #define   GEN6_PCODE_FREQ_RING_RATIO_SHIFT	16
> > --
> > 2.25.1
> >
