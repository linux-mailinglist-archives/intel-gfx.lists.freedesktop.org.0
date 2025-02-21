Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4625DA3EC0B
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Feb 2025 06:05:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C728210EA1B;
	Fri, 21 Feb 2025 05:05:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iYClYm2q";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6466910EA1B;
 Fri, 21 Feb 2025 05:05:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740114318; x=1771650318;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=4gJ1pe7eCkUXwOQDiYd4AYDuTUosmceZd/2i12QqcHM=;
 b=iYClYm2qPW5RIx8ipyDoikZ0gQ1myLlalQxcO4I6ex7J89rYARV57A72
 X0tRMQenT1Zxlb+7KwzMriXPO1+j4/XyaHKKw8EYpp0jp2ALGxEvq+kWv
 7lpvoDvmWNrf27ak0RB7SbPq8+wmoa2ZZmLGJnoIyCfwz656LN+2XQKBQ
 aitTxHTqxPXsWpVUJ/y/fQ4JccT9IqjUG3E8MmItpL6gCGlu3CRfs9vWP
 z2/zLT3sHrpqnwVghNYK/d1E9odVXGU/gQlRdc0wmewYGe2YtcOooayv3
 ZYYEGi4xPsQviCZiuZnK0cCW30wYo+UaKnj2bml2r3gHjMHlMHnCAEBO0 g==;
X-CSE-ConnectionGUID: pTAzMDUYSyOQC4OnM5VsNw==
X-CSE-MsgGUID: ztYaCVBAQj2sQZqxMEcgTg==
X-IronPort-AV: E=McAfee;i="6700,10204,11351"; a="40110701"
X-IronPort-AV: E=Sophos;i="6.13,303,1732608000"; d="scan'208";a="40110701"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2025 21:05:18 -0800
X-CSE-ConnectionGUID: FhJzjCSUSX6eLdHEQFeq3w==
X-CSE-MsgGUID: zOcZRPZHQrSVULkGYWcKKA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="152461032"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 20 Feb 2025 21:05:17 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 20 Feb 2025 21:05:17 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Thu, 20 Feb 2025 21:05:17 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 20 Feb 2025 21:05:16 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=c1ABb9iKuxMJBGbSMbWKtVakRVlEgYkQYWh+NyGVkI2qSM/gVOo2CzYmOnrEZXNJ7I9pzPPDrCues5Ee1vSn8SdFPf35o8J/Rp7OcbWyrWfA1/llnCfTkQijT1M6/gzUUVWpxNuq2nmzml2m4GLpml1PNfaUlRRv2pq4UMwIFbJpH+uD2DSHACZaoDdZnCyvCr86kTgZj7H/1YzQqwmzyUZ22fT1m2GlUuQRdDaXGaOrYB3C4qIR7YYP4lXQFzKxcN/dXP1uM7FN89Gpy2ANmFUXlnmZ9FAQtyXnS7HL1RHzCxzdhCsU1wZfEXGAXLshLJWX3rr/DUACY3GlZgKW+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6/lQrR1Zhyj05CdF+oZHcwxv6k7reLWyfPvuCSWqUa0=;
 b=heR7dsBPQ5DLL8OCpQt2eZXcHWWKpFhv0HBokNlQolOXehT/jeI5LLroKqRSuPCmqKil7Gb87CD41ixsJmXD+Y4q9a5zxkctk820hiw73JJYKMnNEgt1GsoMWOFiFPctnGX6WoLOS8HFzjD7GCcoJKTsZ0jjb0msfT+68bcyQ2M1nwBW8FvshiagHBrm+ARE2p7TYAMno7V0mgcAhbMCojohjBoy9V4RTFR2gFmua7Eut1MEXHrVfbBtgFc6Ers8EzN4TwIOPHuAppo1ZQf0abfxgJfU3LkJEFh2I9e6Ht4EZAm02l2pLGZzOJ4HhIDgZkEyPL6vyRNLVYMiKxY/oQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5128.namprd11.prod.outlook.com (2603:10b6:510:39::17)
 by LV8PR11MB8606.namprd11.prod.outlook.com (2603:10b6:408:1f7::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8445.19; Fri, 21 Feb
 2025 05:05:02 +0000
Received: from PH0PR11MB5128.namprd11.prod.outlook.com
 ([fe80::74e1:a7a3:bae7:9752]) by PH0PR11MB5128.namprd11.prod.outlook.com
 ([fe80::74e1:a7a3:bae7:9752%5]) with mapi id 15.20.8466.015; Fri, 21 Feb 2025
 05:05:02 +0000
From: "Yu, Gareth" <gareth.yu@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Tseng, 
 William" <william.tseng@intel.com>, "Nautiyal, Ankit K"
 <ankit.k.nautiyal@intel.com>, "Heikkila, Juha-pekka"
 <juha-pekka.heikkila@intel.com>
Subject: RE: [PATCH] drm/i915/vdsc: Correct the conditions of DSC1.1 and DSC
 1.2 for rc params calculation
Thread-Topic: [PATCH] drm/i915/vdsc: Correct the conditions of DSC1.1 and DSC
 1.2 for rc params calculation
Thread-Index: AQHbhBUI0ZefevrFIkKLC+biR+8UF7NRLjuAgAAEe6A=
Date: Fri, 21 Feb 2025 05:05:01 +0000
Message-ID: <PH0PR11MB51282B2F63CC8A2B0163357AE0C72@PH0PR11MB5128.namprd11.prod.outlook.com>
References: <20250221041401.2219258-1-gareth.yu@intel.com>
 <SN7PR11MB6750A1D7B5E23EF58A8EFCABE3C72@SN7PR11MB6750.namprd11.prod.outlook.com>
In-Reply-To: <SN7PR11MB6750A1D7B5E23EF58A8EFCABE3C72@SN7PR11MB6750.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB5128:EE_|LV8PR11MB8606:EE_
x-ms-office365-filtering-correlation-id: feb6c194-ee93-46fa-df2a-08dd52354c16
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?AhGJWfphNjELf9b4ksqdyv3BggagnBv7DjQGwDdty6Wv8VDgpqizvCyMFnc6?=
 =?us-ascii?Q?inPCui3lEBL7sxUOvDiXdZToFtiugV1xtsdQULwGuCVdD+870Xy/y042aryL?=
 =?us-ascii?Q?cNAKrzi9tGIXz3dXnfGQCPlLUhdHaFZN5uVkcSwiUJxXC3NoLped+QbsllWY?=
 =?us-ascii?Q?Ksd2rxbMzUtHbL8AxL52Z93wspXBSQ3IG5sbCbCJVXB6l49r9RS9xlIYAcRW?=
 =?us-ascii?Q?VHDNMK2axO5EP90w7BlKOy1Ap+Hqf6tHh/3/aLk/2cu8ZtPX8vgF+5TyPaqK?=
 =?us-ascii?Q?H7Ud8911ia4mAI20P2PoHgMU0gokvPn5zp+K/BP9JDDr1XhNGRVfhNhyuc9Y?=
 =?us-ascii?Q?5ejzCXnTdZISmaLXtsFaeJWmuNTTNtnjwr0pp7KLpYii4Wcpwzy1Bi8S+P7+?=
 =?us-ascii?Q?9Hv7TVopwOhdYB/j9HppYNOFkDsg7703Bn/H73SlQbOsySxFm7tsD3xjR80K?=
 =?us-ascii?Q?G5iJrZyrTEZRnBK1jMA/PDqIX7/IuaOGpEpgecA03S93pOyrN0PdStcP6xk+?=
 =?us-ascii?Q?7E2uYfRf/Aw5KY64fg+r9vxhadWRwDREc5IeCb17GX5W8V3tuifGldP066D3?=
 =?us-ascii?Q?DI3Qe9ppHy+C5VCAxkKhG3Maexhb3ZUwdfgXHSGF51CrpMF6z4xijfoA2jrW?=
 =?us-ascii?Q?e2mv1edjmcIGg+A0xznL14R3V/RHyxsxjePKaOqKLsrCBWrl9WhVez6Ubd/E?=
 =?us-ascii?Q?eIB3AE0LSdL4jEuilgt9jeyv/oi8CHLoIgj4fsZ8C+be6e69et5RedtksHLD?=
 =?us-ascii?Q?AlDZct6+9A7SxGnTB9vqYD4DyZ15emeWsnlJZ9uRm3jju+MWgtxAmWTa8SYy?=
 =?us-ascii?Q?4zx+D3uNda/M/w0C8qpWtaIcXdprOd12o2bAPTaK97YjTgM4mqZ4XmZKdPeB?=
 =?us-ascii?Q?zS+KepAt0tBMHB0adAgnSCI+kBxODYU/hnpqMb1u9vXSVmuLprgPial2938t?=
 =?us-ascii?Q?cp4hSZ5OEjzRTZsxyRPodmuiy20Lc3XkMl1OKWVn8yDYga0+fYTadjr52eNz?=
 =?us-ascii?Q?CwXeNCLPNJOeMdRlsSj+4LrAtsXzvHVhGBqL+rsMLuECWG+GHTe8tg2ZLo+m?=
 =?us-ascii?Q?Q5tWuHnzmoHvjUWa3m/li8DBfKuUzoCAhDYMS5q2yxPiMfKtBci+OnVRzM3g?=
 =?us-ascii?Q?ALK8SJFrf684Mdckv5Ddzv5k9iIvmR5CetvAUm0tB5mCl4kq1QIR5H6HRym6?=
 =?us-ascii?Q?3oXYZpyjEfoXeKeq1NYTYMKCWlAjmiAe68Tdjjl7LiumtiXqo43L11bnIkoM?=
 =?us-ascii?Q?a5hsKklBcsVizXpYi4f2xAmPEBRgwRm4lcHP79VerJy9tTlQzCmavBCv1GAH?=
 =?us-ascii?Q?kwMF9OVZH/r45Oe9UMAeWvIQXRSC3jDA3rEBPhu2GE4ifYgKKU/B9kdMZXcL?=
 =?us-ascii?Q?tJifSpHuaEhVMFOtcMax1yt4LmL7?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5128.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?4ObzCxnhtlPYHo5CP9K6IUnZrD34ld5J3wtsymkRUaWpoUoTDOFIhjfmv0jG?=
 =?us-ascii?Q?/Dzt4cYPrS8v3BWsLcLJXe0c98l3WhVUEO18gIo5dudISw1wQlXXyLWkCLxH?=
 =?us-ascii?Q?D9u0fqUbq/vyiChr3FolCTWunQs+mWvH6A/2mtd5T/NHWJiEuC6P2lJkqOCp?=
 =?us-ascii?Q?YRvy1kTIRDgi1GijOsXq9kjdx/k/qMY2jhQqAcBPxXYKXgjp2U+wuAifHzaf?=
 =?us-ascii?Q?r9UMlVIDwoOLiROU9L/muFLNiq6wP0LlUoCgb5hYxLCo2KIHXCuaFJLBwF5l?=
 =?us-ascii?Q?zWyozuEL67fHUY1gVcKKMONa8IvDesZvyzWniJtHQf80JXW232ULTRM4U4FG?=
 =?us-ascii?Q?cHzC0HcCIZfUzcD7vtWdF8wd3JG7DeMeOVP0gwePlwCZLKpG4AW3UvkciSqV?=
 =?us-ascii?Q?/M9k1ubdOvIS9YDi409yva9CC5T4viT0F53Da4VEaP04t7mBF76Q5bUtJrXY?=
 =?us-ascii?Q?mM+Yh5HMgFd8Cz5KfoJilZ0CRvkey03hH4l1C0pVDaSXdm1KPJb5ZYT8olkS?=
 =?us-ascii?Q?K2Axdu0Kwes2GA4IB15ze0enRfXiHwh0KNmO9KfOY9NwAwem6OfCcECW8Svq?=
 =?us-ascii?Q?LvfKm/GRxxayAno8id+0ENs8XQv42iYN4iIgq0M9QZp0eYi8Bj8B0DNuEgWT?=
 =?us-ascii?Q?DucOM2dt0uwlm1dt5zekVowBm1IDKXWxX+pJUvSM0MuODv6W2+KIywsq44RC?=
 =?us-ascii?Q?halLrQg9qhhjTiQgXkM5fwzq8WIySRdAO6lnBJ6HyREcBPPXuaGTxshZzmcP?=
 =?us-ascii?Q?c6PL1yfDEO9XxEjNb0CYyyhe/CLU7s8yRGAIxb+brCvgqmpXjamEZ/s8teDK?=
 =?us-ascii?Q?nzw8GuJGhhOUwFMvnvfoEAPIqXiNuL854E/4YV2ga5RnHCm/lBCXVxrjOgXi?=
 =?us-ascii?Q?O8z3XsLFI2h/irWA/w+5S3pp4TzZ85zcHcs/aZpOaN7juW80kppdOo4FLi+z?=
 =?us-ascii?Q?3pq/xiR2TSCVUDStEI2B/piQ/WIRBgSpEDeQfuXBoDzD/6hvm1vtc2IHt7D9?=
 =?us-ascii?Q?195fULzkFT2U9WCIJ5NqOl3yjxE+qt8OluR2py39x0cTS2MpuAJW1ysahrPy?=
 =?us-ascii?Q?7d40PYp5TS2yhbOd94EkiNiHuTEoNFiJBufe1SGKmtiQPzWy4E9pjpLUrWN2?=
 =?us-ascii?Q?zwg7Ro02xmGMa3WlE49jesYHxnWs1WaqjVh1SveQW7kjJHW++O/oqvs3Uxeh?=
 =?us-ascii?Q?aVuysx7ZeAp0NThJwG1kl0/kzmdQ9NoYxSN/AASTpfuaMMioNC+BQEx/ZCsR?=
 =?us-ascii?Q?PlZc6qpDsy8JLCu7awjdheBA7VFFIKl4RrmfTvr6rSLElCrYJI+FMDhxnaoj?=
 =?us-ascii?Q?yiea8GTB4ajXHxEPK5rasG1kWvQw+E4YMmSoeIUTlwXZIIPupxhUityqd56M?=
 =?us-ascii?Q?3FNe5SsbXo24mxXzh28lCZmZIlovl/AN1+jkPxhDXmAlj14bcjpxRzjR26VG?=
 =?us-ascii?Q?55BkjJvKFP2jSj4d4gbGE6HYYlHLM6VN/PY5ztj4OpXLA5rpJEuFhpaRLGJS?=
 =?us-ascii?Q?3HxsWZDXLNh1nGyAiZ9/e8B/m115S/IqVV1/P9bI8DqGSP+7bbnzEpFtwFeF?=
 =?us-ascii?Q?D9hiKxR4J00ah4AaZZXfgQ9CCaYNIGbon0doT0dB?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5128.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: feb6c194-ee93-46fa-df2a-08dd52354c16
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Feb 2025 05:05:01.9445 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: cPbCcMz+fIAQ3qDu09gZ/XM7uASFeyvWzNYzGQamam54K9tYlhexFiNNZkItCwZt6ENxwaxCk4yF8VnKN7A6Mw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV8PR11MB8606
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



> -----Original Message-----
> From: Kandpal, Suraj <suraj.kandpal@intel.com>
> Sent: Friday, February 21, 2025 12:44 PM
> To: Yu, Gareth <gareth.yu@intel.com>; intel-gfx@lists.freedesktop.org
> Cc: intel-xe@lists.freedesktop.org; Tseng, William <william.tseng@intel.c=
om>;
> Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>; Heikkila, Juha-pekka <juh=
a-
> pekka.heikkila@intel.com>
> Subject: RE: [PATCH] drm/i915/vdsc: Correct the conditions of DSC1.1 and
> DSC 1.2 for rc params calculation
>=20
>=20
>=20
> > -----Original Message-----
> > From: Yu, Gareth <gareth.yu@intel.com>
> > Sent: Friday, February 21, 2025 9:44 AM
> > To: intel-gfx@lists.freedesktop.org
> > Cc: intel-xe@lists.freedesktop.org; shawn.c.lee.intel.om; Tseng,
> > William <william.tseng@intel.com>; Nautiyal, Ankit K
> > <ankit.k.nautiyal@intel.com>; Yu, Gareth <gareth.yu@intel.com>;
> > Kandpal, Suraj <suraj.kandpal@intel.com>; Heikkila, Juha-pekka
> > <juha-pekka.heikkila@intel.com>
> > Subject: [PATCH] drm/i915/vdsc: Correct the conditions of DSC1.1 and
> > DSC 1.2 for rc params calculation
> >
> > From: Gareth Yu <gareth.yu@intel.com>
> >
> > The condition change is because Gen 14 begins to support DSC 1.2 and
> > need to check if the sink supports DSC1.2
> >
> > Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13719
> >
> > Cc: Suraj Kandpal <suraj.kandpal@intel.com>
> > Cc: Juha-Pekka Heikkil <juha-pekka.heikkila@intel.com>
> > Signed-off-by: Gareth Yu <gareth.yu@intel.com>
>=20
> Why has the authorship and Signed-off-by changed for essentially the same
> patch.
> Also the commit message and versioning information has been removed any
> changes Needs to go as a new version to the previous patch.
This is a new patch to check both source and sink DSC version. The previous=
 one (https://patchwork.freedesktop.org/patch/638403/?series=3D145136) is o=
nly to check sink condition.
>=20
>=20
> > ---
> >  drivers/gpu/drm/i915/display/intel_vdsc.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c
> > b/drivers/gpu/drm/i915/display/intel_vdsc.c
> > index b355c479eda3..555180e40b72 100644
> > --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
> > +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
> > @@ -320,7 +320,7 @@ int intel_dsc_compute_params(struct
> > intel_crtc_state
> > *pipe_config)
> >  	 * upto uncompressed bpp-1, hence add calculations for all the rc
> >  	 * parameters
> >  	 */
> > -	if (DISPLAY_VER(dev_priv) >=3D 13) {
> > +	if ((DISPLAY_VER(dev_priv) >=3D 14) && (vdsc_cfg->dsc_version_minor
> >=3D
> > +2)) {
>=20
> Please add a bspec reference number in the commit message where it says
> we started support of DSC 1.2 from MTL
BSPEC: 49259. Will add in the next version.
>=20
> Regards,
> Suraj Kandpal
>=20
> >  		calculate_rc_params(vdsc_cfg);
> >  	} else {
> >  		if ((compressed_bpp =3D=3D 8 ||
> > --
> > 2.34.1

