Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D4047C0011
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Oct 2023 17:12:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4724410E390;
	Tue, 10 Oct 2023 15:12:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 91A0810E390
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Oct 2023 15:12:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696950757; x=1728486757;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=g9/oNwdU2vfHxKY+SBKe7bbtBrzK60pb1fc8F/Dn0V8=;
 b=PB1R9PPnJ8vLAnp25IkXx5h3UkJMJiAqvhbzoI6ua9cukXvtJyGTvp3A
 oputl9GwZTC3k5V6oppKsbvjElxLV6czlWbhxhEBbZWRxR7fknY4B2BpJ
 K7ySFBA67BGKIl2DDYAatR7IaDK678DKEwdyNxwiqXyTOOK7Ip6wtb1uS
 z0rpOSV6EMqTF3wClkRwBANhbkL11mNcNkKerPU0GzHGkjDGSmEPEw8pt
 kltS5DfmDk4Ft7ewJXwCD5WsNhSzt4s4N3hdQdHjjVWbl6eoWSpKnGEny
 wcpqb5q+YYwntZBwppwFu/T48oM7Y/f4zn+O8jOLI1pg2f44DXULxgkYZ Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="363770386"
X-IronPort-AV: E=Sophos;i="6.03,213,1694761200"; d="scan'208";a="363770386"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2023 08:12:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="823810965"
X-IronPort-AV: E=Sophos;i="6.03,213,1694761200"; d="scan'208";a="823810965"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 10 Oct 2023 08:12:37 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 10 Oct 2023 08:12:36 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 10 Oct 2023 08:12:36 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Tue, 10 Oct 2023 08:12:36 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.41) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Tue, 10 Oct 2023 08:12:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VosKQb/d0VIxNRd3r4jESOhif8osPoNi6TA32qSvKUuijdC1jzwoe1fElbo25Wh23iwQB7xztI7E1p5mpiNIeNQA2aA++aEkiU5tb2vIurha1oiS+DmYaypz8KWsz7lPMY1HwDZxulracOYt8hgUlMv49LFEZNtnCp27/Abo5fLmhTNhDsvQgoSekm9PQqyuC2O85VygICXK7oWCczufmlN5pftHkm/TL/vaxWcfPda9A3jQS7hHsTpDlvHiM8cuo1bExNpvCbjhZlLEWjk36J4VyDONB6RaUQOGxLyQaPeoZJpQsjXnG0hMkM9oZLIcMZnTxdnnOGCqqYJMSLpryg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dlcI4bymDi/HkVjwArSJL9SnVqziZn8tujf6QbYMOI8=;
 b=ZlDu4y3kwP4T+g4aTzrItuciFSCA79+G63Edbduyekqon70k33Ftl/5f3tTPeWj48YeOwhq/kbG7XZpyzlFWl0XFaDguh9PFPcf5kQzVrcB24YuKKV1H7LAnYWQAfs2vr3s0KAGk0rs0yHD3F/yf8vENA6wI2m3mKkxxEU11vjAMvLkyyHjoVPbW+S5wISqbcK0MtK8xAqPij0XHcp7xrxHNKj369uxUlLqcNfzT4v80LA79av9fRIM1RQEybYJJXU/rGDJWOgq2hE1JmXUfaIq2pPkVJRCpgw28uwDnm1gYD+9OWkzoUmmsBNeuu/iuy1rA1MAcreZEmzf6cLzSQQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH0PR11MB5444.namprd11.prod.outlook.com (2603:10b6:610:d3::13)
 by IA0PR11MB7741.namprd11.prod.outlook.com (2603:10b6:208:400::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6863.38; Tue, 10 Oct
 2023 15:12:32 +0000
Received: from CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::9de7:e579:f8d8:8329]) by CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::9de7:e579:f8d8:8329%4]) with mapi id 15.20.6863.032; Tue, 10 Oct 2023
 15:12:31 +0000
From: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH dii-client v10 1/7] drm/i915: Add GuC TLB Invalidation
 device info flags
Thread-Index: AQHZ+4wY8ZpMWm2lBkmnnbuUdNLQr7BDISbA
Date: Tue, 10 Oct 2023 15:12:31 +0000
Message-ID: <CH0PR11MB5444DD52DBD3C361E657E4C4E5CDA@CH0PR11MB5444.namprd11.prod.outlook.com>
References: <20231010150055.2021279-1-jonathan.cavitt@intel.com>
 <20231010150055.2021279-2-jonathan.cavitt@intel.com>
In-Reply-To: <20231010150055.2021279-2-jonathan.cavitt@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH0PR11MB5444:EE_|IA0PR11MB7741:EE_
x-ms-office365-filtering-correlation-id: 36734fb2-8cab-4715-5ff8-08dbc9a35336
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: w6xYxkXnNKwnGW41NvmVQ9if2xSYT+fALgpttRSds+MKUgm8cGrYX5OxOkUbRJ+bkPTWxQMUDOJJOQwgwLXMjkDRhqk/A5n29eGc+EIPlg6Jki5K0FmBMfKGV4N9fAKopffA3D51nKsHSeC4KdRPgw569xxVVJLvGjlOy7m4Z4nVuoMEdWlPbptNePxp8xRpRELIbckHkaHC0bDoDskJiu+Y1xmp8ZSHFukKdKThJyTYHxx7sCErntm7fN83DWjUCJsvY+nVQa/19H9AUYHMgjHTNtu82x6CdD4wxI5O1cacn/Jmg/Mqc9V0cKudCWsgTwBg/LggUWoXeVDdFQddrXMDCQUi54qf2uB+dGCmzHkY2YmFlqknZbZVXYNSXwZlUbvdRLa9G25rmI1cT4Aryu+dnXqli7Q/K61ecl+j/+hI72n76Pu4/vM/1UqayTpR77Z9LeKIm8s/dkvVbxgktd2NF3rbE2g/vnHKTB02kUZLWaqb5Js+EN0rAMVyDhNTB6u9A75TR0Ot/d3K8HUwfr1TtR4ah/7uHYFxVoN2gIF/7do/XREPdMI6vsi/hqAAix58wU+BemjGG3MInKCqpJMtIbBgxS5pgc3jGl7kKHU=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5444.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(346002)(136003)(366004)(39860400002)(376002)(230922051799003)(1800799009)(186009)(64100799003)(451199024)(53546011)(9686003)(33656002)(55016003)(86362001)(38100700002)(38070700005)(82960400001)(122000001)(26005)(2906002)(83380400001)(71200400001)(7696005)(6506007)(478600001)(6916009)(8936002)(8676002)(4326008)(52536014)(41300700001)(316002)(66446008)(5660300002)(66556008)(76116006)(66476007)(66946007)(64756008)(54906003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?qwJw4LdiUtV8HhGk06aWfVBFrJwqjzDS2yyLhT3G9Xm+tv3pNWFXL+EkKWAL?=
 =?us-ascii?Q?1aVIMPc4QC+iqMnM9qdPb+bgTZf+7fopqQO3tJtLiXX3ZZjXLXB6hXzN9jqc?=
 =?us-ascii?Q?VR1DtRFdQiU93j+lUACJDjmTSo2e2loeOmhnV+4GCKR/61Ae3t7RmR+x3in9?=
 =?us-ascii?Q?p10yE3LoKLwYMxqOLKMlm2Qc/NHoudAFcVbyJ3S2Mx9RGRphi6hNfxCoEBTr?=
 =?us-ascii?Q?0z5PH0a1s1+IyQcDoshh6nyND4N6QUKegBxd67bHAvaEPVrMrHnkVHv2+mYb?=
 =?us-ascii?Q?wg65j3r6Q0YRTfE6DkiJichxmh5pTlfr3y10Tz0qlBZKrOv3nr0KY3jbbouU?=
 =?us-ascii?Q?gDSi6QQOhrNz6EGOCWdLVcsTEJWTzmVco1BMotWZl8ry9RT3PiYk1cfVHkJY?=
 =?us-ascii?Q?W3rTMqqBF40e7fcxsLF+IZemROkaGJGqmKMk5Y8xZueWg8+CP7USRCpqcFpy?=
 =?us-ascii?Q?RfzFa63mI+aJr7uzwRMfv36Z6gGmVzq1Np3K9Mrh5vz0GtmqCdHVsYrVwkE+?=
 =?us-ascii?Q?OLoqZjzZ/bHxEEP2qlOvWPE4zKPl82MiWQGMyw0veyrgzFyD8+V7lE4o2gXH?=
 =?us-ascii?Q?VkvDacINsyPk0HnYM8nWKQayLz8zgxjh1slaR0TFj1W6mAA3Re6lXZj7Kj7/?=
 =?us-ascii?Q?PkPjwJaxelzQa/SG431XaCijSxmbAcLg6O7GrCH++O0rcRudBEFRHCbU9oi5?=
 =?us-ascii?Q?L4GFZlu+TgL+WWGGso9qL6Um1nc37goKTcJqLfSj4bJm/xumbS06duv5wtv1?=
 =?us-ascii?Q?OkxC6dvQASP9bfn851xp68PeAMFn2PuZYcUMz+zHlPA6vhszs2eaKdm3bcnN?=
 =?us-ascii?Q?tTqgRAwY/20n5u6cPRKUSa6bHdmqeL/lqwYpMqjUqQVpg+j/X1rxst7qc2/C?=
 =?us-ascii?Q?zqFvEAw7O/+obeLoJZwVM4uGIH6F8tQgqrAwNFBniuFE8o6i2ViFLN0eBXYM?=
 =?us-ascii?Q?MFx0G0X6QqlZHic+hLPpm+KKWT/r53pjquxOQnyyiM6Pgi1ED72NsLKvGeOK?=
 =?us-ascii?Q?UlD+moAJQICVrSUFp+zmwnPR6QvdB6baOiToE9xFJ/xuKsZCEAmmFjzYGAKv?=
 =?us-ascii?Q?zBtTMip+CY83J7VnU5/x8WMyOTP06aRgwLgmE3ca3PKyTyEoHLW9HJPKQWpe?=
 =?us-ascii?Q?a2iBDqrNeSo10Fsb+5IZG3rYp5ZyRgHFVOzJFFOmnLMEdLYFpx4qbeAcKNK1?=
 =?us-ascii?Q?VMAx1ynzSaK2bmOB47O88HGsi/kI32O1v8wGONSrfhEok6h+BLfrHDck4hAi?=
 =?us-ascii?Q?HYce2cieLeIEQTEJ6PHde/L4Y2y+lHtGvmksyLZ+8BGbIPmUYVCrYb4wHvM8?=
 =?us-ascii?Q?j0qraRWfPL3azxS8woFCiBTLFM3QhYdYfsKxVYQsOhQicgdrr3b+xaQr6MMH?=
 =?us-ascii?Q?YqLIr8buMR77+Z9lCw3Gi+9FRAxJdL/T44fmNlT1ucACyLEh4F+zQ9ZF117D?=
 =?us-ascii?Q?W9CRHfcdqDYUxxWE0YLpqJoeHivfjUYBGx9VJXgj0dne1T0T66llwBq/RlaR?=
 =?us-ascii?Q?UD7Lr+czrIfJW8hhs1WFU4qqC5vI2Wb8fcTdFm3F9fHx2z0zVDw6p25TfSdJ?=
 =?us-ascii?Q?b97Ql/DNPryl2YUxIs+hzks5EvKWDfnPRgCHih7k?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5444.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 36734fb2-8cab-4715-5ff8-08dbc9a35336
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Oct 2023 15:12:31.5863 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: lBayUpcPOroISy2sF24ILvqaAMNEIPvnTDGQaIKMRfPzKeG/86nZocv6/NS4EdV4UXryujcC47yZfwUBfi3X5OsnYYZhlHOHAhSW5K8Bc2o=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7741
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH dii-client v10 1/7] drm/i915: Add GuC TLB
 Invalidation device info flags
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
Cc: "Krzysztofik, Janusz" <janusz.krzysztofik@intel.com>, "Shyti,
 Andi" <andi.shyti@intel.com>, "Roper, Matthew D" <matthew.d.roper@intel.com>,
 "Gupta, saurabhg" <saurabhg.gupta@intel.com>,
 "chris.p.wilson@linux.intel.com" <chris.p.wilson@linux.intel.com>, "Das,
 Nirmoy" <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

-----Original Message-----
From: Cavitt, Jonathan <jonathan.cavitt@intel.com>=20
Sent: Tuesday, October 10, 2023 8:01 AM
To: intel-gfx@lists.freedesktop.org
Cc: Gupta, saurabhg <saurabhg.gupta@intel.com>; Cavitt, Jonathan <jonathan.=
cavitt@intel.com>; chris.p.wilson@linux.intel.com; Iddamsetty, Aravind <ara=
vind.iddamsetty@intel.com>; Yang, Fei <fei.yang@intel.com>; Shyti, Andi <an=
di.shyti@intel.com>; Harrison, John C <john.c.harrison@intel.com>; Das, Nir=
moy <nirmoy.das@intel.com>; Krzysztofik, Janusz <janusz.krzysztofik@intel.c=
om>; Roper, Matthew D <matthew.d.roper@intel.com>; tvrtko.ursulin@linux.int=
el.com; jani.nikula@linux.intel.com
Subject: [PATCH dii-client v10 1/7] drm/i915: Add GuC TLB Invalidation devi=
ce info flags
>=20
> Add device info flags for if GuC TLB Invalidation is enabled.

Sorry!  I jumped the gun!  I'll send the proper version shortly!
-Jonathan Cavitt

>=20
> Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_drv.h          | 2 ++
>  drivers/gpu/drm/i915/intel_device_info.h | 1 +
>  2 files changed, 3 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_=
drv.h
> index cb60fc9cf8737..6a2a78c61f212 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -794,6 +794,8 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
>  #define HAS_GUC_DEPRIVILEGE(i915) \
>  	(INTEL_INFO(i915)->has_guc_deprivilege)
> =20
> +#define HAS_GUC_TLB_INVALIDATION(i915)	(INTEL_INFO(i915)->has_guc_tlb_in=
validation)
> +
>  #define HAS_3D_PIPELINE(i915)	(INTEL_INFO(i915)->has_3d_pipeline)
> =20
>  #define HAS_ONE_EU_PER_FUSE_BIT(i915)	(INTEL_INFO(i915)->has_one_eu_per_=
fuse_bit)
> diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i=
915/intel_device_info.h
> index 39817490b13fd..eba2f0b919c87 100644
> --- a/drivers/gpu/drm/i915/intel_device_info.h
> +++ b/drivers/gpu/drm/i915/intel_device_info.h
> @@ -153,6 +153,7 @@ enum intel_ppgtt_type {
>  	func(has_heci_pxp); \
>  	func(has_heci_gscfi); \
>  	func(has_guc_deprivilege); \
> +	func(has_guc_tlb_invalidation); \
>  	func(has_l3_ccs_read); \
>  	func(has_l3_dpf); \
>  	func(has_llc); \
> --=20
> 2.25.1
>=20
>=20
