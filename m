Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BFC854A2C6F
	for <lists+intel-gfx@lfdr.de>; Sat, 29 Jan 2022 08:21:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0714910F498;
	Sat, 29 Jan 2022 07:21:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 761BA10F497
 for <intel-gfx@lists.freedesktop.org>; Sat, 29 Jan 2022 07:21:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643440905; x=1674976905;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=fiKxtya5pEA76hKQtMr5v6rrOxj2LS4NbBL1hziCaC0=;
 b=nzHCnkh65vY1oAN4l9bG1LLO1CflgZ8Gj5nvDyKkZzVcmQDPnAfutRHx
 hb4nHZt14WD00zsYw4kiSBSuAQXnmPz/PpOelfUkxBHE8bM4rn8YxxE0w
 lXC+LlZX17j27m7aJ4ZCy3mzUR46K3apUTCIhsqm+S1mcnkNHV5g3gDOS
 ptNAIRvq+7KmBnHUk9MPShyxC5UsuozgciM+no14hCEExWgmVGwQZn9m5
 9Z/wipdrOjxuQYMSVtMpgY6qcNaPj7zG6PbfiMMX1S4UiBOKtY+E5i2OY
 U35e+LrKVEXPLpUun+7tS3K6eEKfVUp5U7XELhE3Mzgk1+KfKzPEtiT8K g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10241"; a="271714900"
X-IronPort-AV: E=Sophos;i="5.88,326,1635231600"; d="scan'208";a="271714900"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2022 23:21:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,326,1635231600"; d="scan'208";a="629364688"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by orsmga004.jf.intel.com with ESMTP; 28 Jan 2022 23:21:43 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Fri, 28 Jan 2022 23:21:43 -0800
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Fri, 28 Jan 2022 23:21:42 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Fri, 28 Jan 2022 23:21:42 -0800
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.43) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Fri, 28 Jan 2022 23:21:42 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=B69O7oWPSBKWYdNjFEYJg7LyCDQoTyVQtSBJTjVC7jWCRzaujK9zBVbbjqL2qR2ScrhbqzjF3M3tgC/gkFyTtABTxe3JAIcAOMLMxKlOLNB+duF6xdBBiH+oiz8D24PuI1rlXcaXfxXTAGBC0AS/vFTipeSGQL7ZEsSIWtrtO+FYhKMc9qD2nhnNY0UYdsb1SX1OQXSfBUlXrd3d5Cagbe+o/89fQ7TwfguHuPrtD/JAPVkvpo/dpOepVPuc1doypfJB+l/LlP9FMIv6xh6l99NPQHzRRK8Z4u//npilUqBdrKN7HPztkXtrUYEArB/neQFh8nKz50zffgdu26ePzA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=czr5+tVo+K7LqPlL8XRr1V4TZ+XUtN7MgoQV62glM3Q=;
 b=NiYgJAe8IngXZnRCJn2Qgr2J3gMpspt8AesCP9F82jWdapsT/dtTIN5rd7HbcV1+DIa+6o7JHjz1elj5Re1rftzew0C4xJ+iYNEhVZteS2yeNxlJi4V9N2zu+rDGV0rHFMRrHxgGVJ68C31ua3Dm/klRaEoVVs5BesCAiTCXMj2j3iH/mE8hdNIGfMfZXO+0Qbsvuqs7W9IfkqWigQ1zNV+BQ5k22UY+1Z5pNdqzy6QZ14pPaT6r7ZRXvV10VeB/dy+fd1CG2HKaKvkb93+minPiGdo0hW0mUJimYZ2vo3F5gHlh8/kRsMcCaLz8qAASQkRVM93wo1fiq0N4l5mCoA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from BYAPR11MB2936.namprd11.prod.outlook.com (2603:10b6:a03:8c::17)
 by MN2PR11MB3776.namprd11.prod.outlook.com (2603:10b6:208:ee::28)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4930.15; Sat, 29 Jan
 2022 07:21:40 +0000
Received: from BYAPR11MB2936.namprd11.prod.outlook.com
 ([fe80::75a5:6a77:2323:f31e]) by BYAPR11MB2936.namprd11.prod.outlook.com
 ([fe80::75a5:6a77:2323:f31e%6]) with mapi id 15.20.4909.017; Sat, 29 Jan 2022
 07:21:40 +0000
From: "Bowman, Casey G" <casey.g.bowman@intel.com>
To: "Cheng, Michael" <michael.cheng@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v2 2/4] drm/i915/gt: Re-work invalidate_csb_entries
Thread-Index: AQHYFJPjv4IsMoK9dk2MuEcqELYEJqx5mIDQ
Date: Sat, 29 Jan 2022 07:21:40 +0000
Message-ID: <BYAPR11MB29369B61F73778CBE4417B77DD239@BYAPR11MB2936.namprd11.prod.outlook.com>
References: <20220128221020.188253-1-michael.cheng@intel.com>
 <20220128221020.188253-3-michael.cheng@intel.com>
In-Reply-To: <20220128221020.188253-3-michael.cheng@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.200.16
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 188bec4e-c063-4a11-2a17-08d9e2f7fe94
x-ms-traffictypediagnostic: MN2PR11MB3776:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-microsoft-antispam-prvs: <MN2PR11MB37762DA769F8796DF768BF55DD239@MN2PR11MB3776.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1388;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: IztJy04uyOp/5pnCNepmi2w/6fH7cY2rf2uo5F1z66GA//Un1lwn6JEJTNESWJOt3v1WOs7dn95uJI1VUFDngEzrvwQbz2LYqv4NU9isRyXevDNScPWRGClbF8EwB/zPEBb/j6+i8QGPilms424N7LL0FScHuNGkl5Rx7mwX8Am9SstDpxXkUloH2vy1jiD55zbV88LDyTg571fBBrGXNKIngUjDJm00sYaMGUEeCHFDOqReTh62bCltx4ccBEl6sdAChVIGQHOiQHW5rotgMoNwhqmK2VI6EKCAMLEhaZ/YXzuc+4unSn9rkNbrIvQDkXWxzkMPTp7hWTy8JjaSDLiEY3hYjfZ6ICxJuomK31B/UkNbSFaFwKIl19qESw0ArGIqbTlLLJyMN5Ud9XYxpKqQF0xTJ1ToNQksJz0LOSUc7JnPXFs1/uh6MYO9PfG+sZGe6Vit6gVhKkPzErKPsuYkdWAoJhA2YTOu2geXXX0LHADQh6oGWE2XzPrF5CwG647YSjHG7jnrx+cBiQ6iZZejpqNpJqeqfRyFpijrdsRcNPqYkGREb6/EpRdOnooDs3aqdyjC0MpJKOX6KAH6SgBJX1nw/PPd5RuEGQadUG/uTmVvhj9u99A/0jYRU0go/RcykCkjTW4S6qvWpITEZXRJrHiaHwmisZWnrdT22wyWClyiJwTVXELhO/1A+MhrM2wFky9BQmiv/XBXHjWOEg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2936.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(82960400001)(86362001)(38070700005)(38100700002)(122000001)(66946007)(76116006)(66556008)(66476007)(4326008)(8676002)(66446008)(64756008)(8936002)(110136005)(54906003)(316002)(55016003)(2906002)(52536014)(5660300002)(71200400001)(186003)(26005)(83380400001)(508600001)(53546011)(9686003)(7696005)(6506007)(33656002)(20210929001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?fDzRXgOm+Ae5ug4oQODGxa6Z/MyLuQYF5/mFfnMyIOY+jLId6JmJteOb5N1F?=
 =?us-ascii?Q?Zz/GfWb9VZTkAq+nOMuw645j4vTgQqJ4GM3ryrICedpOEY4tWGZecg1SI5v8?=
 =?us-ascii?Q?DwoIXuIvNTtwWntWiZmFy17Dpok/SK5FheS3Aw354rCYH9rlF8wwhTl4/yjP?=
 =?us-ascii?Q?487JjfLDYnhiL7yGBfqV55+iwSE11E5sQOupcpwB8zdDoc+UiFxhzzz+B58J?=
 =?us-ascii?Q?2JOUzgYXZk1kS4nYdXIHaCWYKvEUP0nhyOQD56+lmSKdimM/Cn0MOFi/TTLc?=
 =?us-ascii?Q?YPP7U0BsynxYhXkXXkunaZ+zE46bRrMwVuJJpLW47Ea+nPJZ45G2mGu7X6Vb?=
 =?us-ascii?Q?4rZa7ndRvgBT+T0ECNz5Mf8wp8v1+HUSMWFFEaTZVaJFQC0YSDOOqFMNSAjr?=
 =?us-ascii?Q?lwIP6vXaCTrUMn2ejXWkoTeFUC8FPgvkpmkx4Qj9E1ek9IOTDi+APGv2B95F?=
 =?us-ascii?Q?xaJlbYFcv7lvE2bsOprLy0BsPg39AwNP0Qd6LbTI1BrUEVuhqSGQx/PfkZFj?=
 =?us-ascii?Q?jO5kvIB1JgOtz771Z0PTnzRgaL8zAVxHwj8gdiALYoIafG+YAXU9CIeUcSfi?=
 =?us-ascii?Q?0qqOD9imq2EmeRqTTBmrJ79hrrI1Dfk9FljV2VSES7Jvsg75LOR1Wc+3OnNl?=
 =?us-ascii?Q?3BoLnK3vhIgYGbk3/LVG4B7NZ/qAD12M+VOAxL9Ay11POYo+Iw1hjk4HBCTz?=
 =?us-ascii?Q?Mo8JuIdgyy18yZ2Y7p0tAtQuLNq6Vn8Z7pT+VDTAaMfU2C4oJhY6e4BFN02u?=
 =?us-ascii?Q?vme7YpaquF21wrIiBbPe1qmGxGu/Iy90fre8GdYjzPt2M9UjvnjRYiN+sNAI?=
 =?us-ascii?Q?+hd0IycDANgPCBlaqZHfVBAnsqo7mLRsqZeuRvJdfCR0ZjCSUQ5gcTHi8RgO?=
 =?us-ascii?Q?C2EQ33ZKRdgYvzgtJUFKFG0AxMOjIG86+bfbRgFkD0F2WkAdHK3HokdKvJll?=
 =?us-ascii?Q?Wk8Ovv1rgpLKuQJbEeSoNP4a3EKOhuzmwALKWt/V1EfY3jgDapdSJv8TbeKT?=
 =?us-ascii?Q?2StjUiIKzkQycL07z2vEwS7MwCtWwR8xsAvQ1ZAFH5+EuuApCY6jB2E2PXUV?=
 =?us-ascii?Q?dx1Wy07isIV6E0GYSNQZfzisUXPtbLnJ6Hw0LNkTQL7znA1fwg7RmHSVkkr8?=
 =?us-ascii?Q?7RnL4AP5sbGq5clVbABzyob/sZVm45ikB4gSdl5N3B9laQAZp6++PNEylQQD?=
 =?us-ascii?Q?DvkrkcfeuEzobKbfZS3ilxYeyzmqSCzvSnUbxN1djmtCy35RKR62ftiOK909?=
 =?us-ascii?Q?A203k281YLkBsSR+GlNELcSaL4stxgCMB6IKMTQabB2eRhH43ifsce0VVG1Y?=
 =?us-ascii?Q?71d8aT4gmQta1adIHDbhT3lN6Su4K2LlepofpuYRxs3ttJRPVEbRte1ALUgg?=
 =?us-ascii?Q?RUQsXhTAXDAVoKVtF2G4tcTX/BkFOygLaRAIwgIaRbASOc3dtKzexynOP4fb?=
 =?us-ascii?Q?zHNd5VFmvI+Z3OXIZObNwBQZxottJ0htjMOipVg/Wqog7TJX0RE3UnI+IkZP?=
 =?us-ascii?Q?pvOfApym36tsYvpvIshv/JPK+LF1RMUbaup3llE6aCxvSY628Ow70DANed3r?=
 =?us-ascii?Q?ul9FvcIbmo0Aaf4+cI40d1eg3RsUVkxKywzcucz4G2YAazyMPfCmVs9CBfLk?=
 =?us-ascii?Q?tNuwj6lM1p5ni4qUPpcQzhiirvVj/xxx4O6Mte8pgTfwuElugJqlYop73wJj?=
 =?us-ascii?Q?DpTn/g=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2936.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 188bec4e-c063-4a11-2a17-08d9e2f7fe94
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Jan 2022 07:21:40.3995 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kc5yVkmd2Y5ZjmbnTOJmqhLQ+h8gd8/kerYpOVQ124QHHUKv9FwtmezCsiINRADH24E7WKeuB1cp3hmVFaCVw2/lqINkQ3wyNxnpR9mBUZ0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB3776
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 2/4] drm/i915/gt: Re-work
 invalidate_csb_entries
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
Cc: "Kuoppala, Mika" <mika.kuoppala@intel.com>, "De Marchi,
 Lucas" <lucas.demarchi@intel.com>, "Auld, Matthew" <matthew.auld@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Cheng, Michael <michael.cheng@intel.com>
> Sent: Friday, January 28, 2022 2:10 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Cheng, Michael <michael.cheng@intel.com>; Bowman, Casey G
> <casey.g.bowman@intel.com>; De Marchi, Lucas
> <lucas.demarchi@intel.com>; Boyer, Wayne <wayne.boyer@intel.com>;
> ville.syrjala@linux.intel.com; Kuoppala, Mika <mika.kuoppala@intel.com>;
> Auld, Matthew <matthew.auld@intel.com>
> Subject: [PATCH v2 2/4] drm/i915/gt: Re-work invalidate_csb_entries
>=20
> Re-work invalidate_csb_entries to use drm_clflush_virt_range. This will
> prevent compiler errors when building for non-x86 architectures.
>=20
> Signed-off-by: Michael Cheng <michael.cheng@intel.com>

Reviewed-by: Casey Bowman <casey.g.bowman@intel.com>

> ---
>  drivers/gpu/drm/i915/gt/intel_execlists_submission.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> index 960a9aaf4f3a..90b5daf9433d 100644
> --- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> +++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> @@ -1647,8 +1647,8 @@ cancel_port_requests(struct intel_engine_execlists
> * const execlists,
>=20
>  static void invalidate_csb_entries(const u64 *first, const u64 *last)  {
> -	clflush((void *)first);
> -	clflush((void *)last);
> +	drm_clflush_virt_range((void *)first, sizeof(*first));
> +	drm_clflush_virt_range((void *)last, sizeof(*last));
>  }
>=20
>  /*
> --
> 2.25.1

