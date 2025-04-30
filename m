Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 46902AA4F8E
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Apr 2025 17:06:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB1FE10E0D3;
	Wed, 30 Apr 2025 15:06:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TX1EdKc+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 86D8110E0D3
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Apr 2025 15:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746025614; x=1777561614;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=0+wAzXxQ6mT3ALKDzk8mU++uR8xVExZ+Fha4K3c097Y=;
 b=TX1EdKc+se9FQJHypNcII6h2JXrLTI7dfLZfD4YRoGQAK9BrcEEKgp37
 0hlC9loLsjiOAGkSZOIgh9qHORVJQXR3INWYPQwRxsjB/NfxGZJqCgxu9
 9Phzt+15RAAj6Lj1ONDeL5RZOVzGDTbMoOM++jXYzWYsjldZfgWPWg9f0
 zdN/rzvcAFpaz4LYNHxPEpfk4VdOm6IB19G/y5rtQOiwnJ3Khy8mdQ7hh
 NSnZ8gNtRNMbWyY6zTs8Z8+FxqRMczhAPfW2ZBC7wYs2wh7CgaMgcJmKd
 m932MHtBeJIhk4BC9q/bD8LtwjMUCuEXP7fNXug22QT2wZAhSrIgT9OzT Q==;
X-CSE-ConnectionGUID: ik5TMQ21QEGU8yGln1wniA==
X-CSE-MsgGUID: FnkwO/VzRj2gwV1BMuDtkg==
X-IronPort-AV: E=McAfee;i="6700,10204,11419"; a="47828404"
X-IronPort-AV: E=Sophos;i="6.15,251,1739865600"; d="scan'208";a="47828404"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2025 08:06:53 -0700
X-CSE-ConnectionGUID: csmIY28lSqWf6JwMGlKdOg==
X-CSE-MsgGUID: OcPCzUzJTqOWcv9LiRIwIw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,251,1739865600"; d="scan'208";a="165225856"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2025 08:06:53 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Wed, 30 Apr 2025 08:06:47 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Wed, 30 Apr 2025 08:06:47 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.46) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 30 Apr 2025 08:06:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=SYgRge96Yz5ni0MIA3a9ujswc0oLQL4JulU2DQWChSXsG9y6vAwikzTdfRBZEcf9Z8H6dqjOiJz3fFINlHP82fPX92SXBpcfm5PXEBB+iHl+ijiHjjhme+cW6t9x5772GBjvQHyVMZRGBu7zArzM8mPpvtBrpmYuSKwx+whEjzjm4ScRCliSCBwgKCTztgSZj3TzIj3rOJGds3pDakL3Mx9JfOnZq/BVLw1AnmECOVsY8S8HsAxPx+cBQGGHiMDUYy2U8+0eV5j1i9Sf05+/O6XP8B1PJIFERQqlgH+nLqcXnRY5hBa+wlJIWhTviCnopxGvrsrrTAgckfC5S68Fnw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Hrbct2kLAKiPOuXhdFXG3NlYUKYS8pLrzB9ndIAy3eo=;
 b=SZUzUnSm7cmSAJtQzS9mTBTz4XsFfho3qIMHO666QGQCWN2Jglq/ycGzzX9/rO14tfet26fAhSRG+/epMXReUE3olhl85PlyD5rg5AxKVc89UDOG+2c/YG2D8NylkSErKhNQdq6a8P36vqiOpTlLfSA8hxpHCduIYHJ5y01BPIbkW1hYCbo3+/rvZqYKYTSWFm5P0PbgEgLGvXM+PyqP7iNeIGsJ3s+Oo6ZexRUY3k3bpR/CoV0COp8Y/6BESlh+Rw1d9wGDAa0k+9ePlomoobEhKMVwi42vhcSEwSfe+IMPlBNAIlbardpc23VKzJCzgG0NAfC+J1ntEOZIenaiXw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5867.namprd11.prod.outlook.com (2603:10b6:a03:42a::13)
 by DS0PR11MB7787.namprd11.prod.outlook.com (2603:10b6:8:de::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8699.20; Wed, 30 Apr
 2025 15:06:03 +0000
Received: from SJ0PR11MB5867.namprd11.prod.outlook.com
 ([fe80::dc4d:b84:3424:b7e0]) by SJ0PR11MB5867.namprd11.prod.outlook.com
 ([fe80::dc4d:b84:3424:b7e0%3]) with mapi id 15.20.8699.012; Wed, 30 Apr 2025
 15:06:03 +0000
From: "Gote, Nitin R" <nitin.r.gote@intel.com>
To: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>
CC: "Karas, Krzysztof" <krzysztof.karas@intel.com>, Jani Nikula
 <jani.nikula@linux.intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "Shyti, Andi" <andi.shyti@intel.com>,
 "chris.p.wilson@linux.intel.com" <chris.p.wilson@linux.intel.com>
Subject: RE: [PATCH] drm/i915/gt: Add delay to let engine resumes properly
Thread-Topic: [PATCH] drm/i915/gt: Add delay to let engine resumes properly
Thread-Index: AQHbrrgepuuS3YVLp0mXKlpJB2mvQbOyy7GAgAdu7pCAAGHvgIAAFoSAgACA8wCAASgu0A==
Date: Wed, 30 Apr 2025 15:06:02 +0000
Message-ID: <SJ0PR11MB5867B189CF28C660C95B23D1D0832@SJ0PR11MB5867.namprd11.prod.outlook.com>
References: <20250416103640.212269-1-nitin.r.gote@intel.com>
 <y2bztat2u5oqbrkottn7fsup2scya2hpxft6olazvj2yu7vlks@c3m5ji2zoacd>
 <SJ0PR11MB586797751A19E64E52CABECAD0802@SJ0PR11MB5867.namprd11.prod.outlook.com>
 <qqfjvvu44wikoohewpgpbselarv3t4vazur2sjvznbq4m7halz@r3ezlz7vhezc>
 <PH0PR11MB58804EEB54AC07E8C212E3B0D0802@PH0PR11MB5880.namprd11.prod.outlook.com>
 <aBE8PPb6irZOOqiu@intel.com>
In-Reply-To: <aBE8PPb6irZOOqiu@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB5867:EE_|DS0PR11MB7787:EE_
x-ms-office365-filtering-correlation-id: e82eff84-6518-409d-1f37-08dd87f88632
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info: =?iso-8859-1?Q?b8V6p27JIcLoe3lAUXJuug2VNunzHREphEWivt3Y+9gl8u+tshZb5z6B4X?=
 =?iso-8859-1?Q?037kcQrWgKJWLcPxLkRkl1TRvTFxwwZsptQtxE3mCvupBDtzZL08ssXLgC?=
 =?iso-8859-1?Q?wYPfXlFSc/t92mjTxOj5GKR1kJPiaD3YD3I/LBKcjxd3Hgkpb/1sQ+Iw/j?=
 =?iso-8859-1?Q?LXEAxiTTt9aYhnMNS3Sn5SWp0eCRv8KLyzR+b5xPTzXU5wTm/qYZqNkXMK?=
 =?iso-8859-1?Q?8Vf9utWpww1aF7+YbmN80h85Rgjf+4CNZIjNqwc6kUf6YO0QuvfxwFXfej?=
 =?iso-8859-1?Q?K/RLN0Kj+ZpQm6rsjjbom2QcFOsiGcD9a/CaRG7/OV14m8j1fKMOJUcMRQ?=
 =?iso-8859-1?Q?GzQmenSniOF10rFdJObaIW/mbrbhwfZlTdv76a0z2AioNJfkcEoYddUXE3?=
 =?iso-8859-1?Q?LwykbD9DkNY0Xgw2Z5atYQmxFZQWz8qfAyrVGU+B8wJ/TEdoEu40mhEpny?=
 =?iso-8859-1?Q?r/K1beST92IM5Vbz9pvsHt5/B9G8ldKk0I/CZtTNuISXxAl/JtswcoCqDc?=
 =?iso-8859-1?Q?aHBVYyNsyg5uBj4f4sClcqQRUqVcwTco/2YHkhZIA7QIGEpLA4MJrLvNHJ?=
 =?iso-8859-1?Q?6z2/xY8I8UZm6+NLavyM5oIZ/P42RpSKYghaV+oDqrabynuG14rqnsiVFW?=
 =?iso-8859-1?Q?+PHsopexalu5+TuGBHloleRqu/AvXo6U2FD109UcissT+YnlPDDe+oKLEp?=
 =?iso-8859-1?Q?qWI3hoZ+qZtb9VrQxxGp/PSvYrVS0ViQlGK24XolkQ4q+9Uk1I/QbXmA4N?=
 =?iso-8859-1?Q?V6RtjT4NH9c4iqu8hmmQSc2h24Nwc9A0CCPGAheEJH75yiRca0nF/X0mdz?=
 =?iso-8859-1?Q?UdimLH7mYOkpbDEa6LOZI2HANyH41/OuVUgC/AN0MAOQmcXOlnQ9NzwIZV?=
 =?iso-8859-1?Q?Y13UDAvD88KqQUozb9hwROPu/Gu4L2HkWgSg5P+12hsaxglIl8X6P784Mj?=
 =?iso-8859-1?Q?gVEZcYl4uqNH1QyvTeuHPmMtKYJpboAYM2TTXTUcX/HKFTjCpK2l3P4/UW?=
 =?iso-8859-1?Q?3m5wxE26XAkHRwnX/m6cG0ye9Os7guU+x/PheQZD6WBgmb5UpwflGfWkWu?=
 =?iso-8859-1?Q?pmGdwDwExpF8JLZAcyKLY2zaVVXdaWi6BoDgfLR+DnudjQa8GbrRFceG1n?=
 =?iso-8859-1?Q?ZX5ilnOa64d/Esuz0E1D2cLYYd+XOMjcK1OlL61Akc9674eLUIu4FXsFJB?=
 =?iso-8859-1?Q?XpN50kXgcphQsj9InABvzpScoLpT5EoiI/qq/vJL+VRNoL6zxlKiZE6JP5?=
 =?iso-8859-1?Q?T2IShuqRNktB1O2PF5DbLQYzKS84mr3+ZMKDxk+j67jqPUNuJJ0aFYYqxw?=
 =?iso-8859-1?Q?2fxNR2JVdURXW+4vFVtDeViSDiI+751t/mRzwGqZv54DMsXw+LoDImR6aM?=
 =?iso-8859-1?Q?YP4UjJGiYP2UsSWecX0Or/1S3joKtQGhC0VZZUIAwd6nutD04zk82lvuJZ?=
 =?iso-8859-1?Q?ds+3CjGdb6xGwaEowXFzPekPGYQFXs0Kc+MeKJEwfDqS9MAiffadYr6Fu0?=
 =?iso-8859-1?Q?DpuNa7dHY+Y+paix7kyrLGs9skYX1vAt1Uq3Fly+uH75CMDlNj6dhHzMdU?=
 =?iso-8859-1?Q?a/pZESA=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5867.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?/ovERsV4O9ziY93keKYwFSCq3wWOrhv6wr4KB3JFqP0QlEipyvyiTS9TXl?=
 =?iso-8859-1?Q?NuYbqBGvWsVM0PFgwaVzyYNIxIQ9l++9e4AkW5spzL/7K+0VPIwp5N2JHK?=
 =?iso-8859-1?Q?/BwYA55f/+jX6Qh3iGOrEk5ftQNuvJVQT13aqRDAbFpSb7SCsGrKg4cG3l?=
 =?iso-8859-1?Q?ZD/x8LhX01ab6xfYSWktzWI4ETyvYsbBquPhC3DqMfQI+Zl97CaAxxIpEh?=
 =?iso-8859-1?Q?VpGvIJiSFhVtuLUhYUI5J3VQu22pQf+UYSwshXaUCkZWRiLhhyUiRHEH3B?=
 =?iso-8859-1?Q?/sxH7MRPjcv+wzcuU6qtyeBRf8J9W0vMQxv0iZrKKD9b8Afmf/YYVKRgma?=
 =?iso-8859-1?Q?GpKGZin628fsZtuxITQZcG/CobTQf//1wq4mZXOel3O5BwLYNpirsnumft?=
 =?iso-8859-1?Q?vFl/PXahfPfKKNBMEHJp00jXlGCPdLRdsCzj8t1GDMkhNqb75XMvsu6ThP?=
 =?iso-8859-1?Q?iHGa3HzStJIGBuAdPBWpDRXyvIyyTA2WbzUj0EJIgNSWq6Vc8XAkiKAaBE?=
 =?iso-8859-1?Q?HNWcY9sx/0AGYkT6bYfUTnwo8no9HAbIFxz4fPETJ1Asow5lIMQRo73GiS?=
 =?iso-8859-1?Q?0JFyBk0rCtGLLScufE8JCdDCVQ9ozN/wUWSr6F1ow3sUFO1mq7LMcQwoR3?=
 =?iso-8859-1?Q?1L4WkmBFBVkDqUaSPQfh9Jjy7oFVUz09pbtGszaPbpqB6cqa810pGxXLj6?=
 =?iso-8859-1?Q?iduFy/IwrJvAmmnMuRoq9mIf+2asybB68S+Iu37D9Z1rQl9BdNPqtkGMp3?=
 =?iso-8859-1?Q?h7fui7slrBXhRNIcvgI+xsnXFtF8rqyarcJIPUfDUoR/E5f5lA7v/4VwEz?=
 =?iso-8859-1?Q?NTwtNfRHvZuABZWWk4j5MKTzWU9jmTx7qHHFcYcuQYSXaY0Ehw4bakW2E8?=
 =?iso-8859-1?Q?Ovyda5xfbIRgmZX5r0x2s9qy75imqrUpY2I73AE1GsNvD7Smbygu/F8/OB?=
 =?iso-8859-1?Q?3njdLrqlgd4WXKP46tlzLaGVqrYGa7wgXggxjwrSlLi8gZOXfyR7+WM9gl?=
 =?iso-8859-1?Q?eYu7F4GPvf8Us/YlXpRY6nr6tVtCWVGL5N/1q/cI8uPtVJxVvApNXu/yF+?=
 =?iso-8859-1?Q?y+eNI4SaGXRbZMQWWt0TNJ4zNC4StUC/JaYCfCz2z3vgHGmCP6aXprETv7?=
 =?iso-8859-1?Q?1eCYMhWdFF0MWXfTNC58+v5zVfUYZ5+VCnWj4eUFV8L2p2l4CTXB8MgL66?=
 =?iso-8859-1?Q?Y2bvgeUhs9CfNsMvf0lwEr5PxUVDJPsxNqdY09ItSl4qP29Ky7sfRFzxTE?=
 =?iso-8859-1?Q?asNphcLd2hBN3Q8nOyyr9JWTFkZcNli79RIvDbnpvt1MsdLDcQ7gQn+Hns?=
 =?iso-8859-1?Q?jOvFuNM0wOXQbfoZNGMhS9lqN9uyf9um6kPRi2GNMcyPtT3MNqACdrqssA?=
 =?iso-8859-1?Q?g70A+E2EegKPSLoSH6vjc6Kis7w7E9/XkI1To4xr0gRuSPGcvxRCB0Yuec?=
 =?iso-8859-1?Q?ksTWL8o9wgwBr4S0TTyFZ5YiQIm+d0IQp6DkacicqmnjsDhYKOyeUPcj1f?=
 =?iso-8859-1?Q?sUolILWClYqGZujju2dXzXRk3fJ5z33mYnTjd+jlKAClXcUPtjuWOKrKLE?=
 =?iso-8859-1?Q?K/Kduhz2dMNL4td7EKuwi1lZjTjTvmEktz3GoyBqUkmKNhkXWZJ8XcPhNR?=
 =?iso-8859-1?Q?tTmaaj6ETW1yegidjn/tac9m8NTAJ8X/mS?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e82eff84-6518-409d-1f37-08dd87f88632
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Apr 2025 15:06:02.9017 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2jyueHRRR1eSedp0y5SYLEJ89yu9ylj/3/2hGsjHN9rlkEZxZl6BnioAbnid9aLYGK9ulwLmxY79vzkwk04O4w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7787
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

Hi Rodrigo,

>=20
> On Tue, Apr 29, 2025 at 01:16:13PM +0000, Gote, Nitin R wrote:
> > > Hi Nitin,
> > >
> > > [...]
> > >
> > > > > > +		if (wait_for_atomic((!stop_ring(engine) =3D=3D 0), 20)) {
> > > > > >  			drm_err(&engine->i915->drm,
> > > > > >  				"failed to set %s head to zero "
> > > > > >  				"ctl %08x head %08x tail %08x start
> %08x\n",
> > > > >
> > > > > I am wondering if xcs_resume() calling stop_ring() too would
> > > > > benefit from having this timeout on hand as well. That would
> > > > > require moving
> > > > > wait_for_atomic((!stop_ring(engine) =3D=3D 0), 20) along with you=
r
> > > > > comment to a separate wrapper function.
> > > > > What do you think?
> > > >
> > > > In xcs_resume(), there is no need for a timeout for stop_ring(),
> > > > as we have not
> > > encountered any issues/errors in xcs_resume().
> > > > So, I think, currently there is no need for a=A0separate wrapper fu=
nction.
> > > In that case, I do not have any more concerns:
> > > Reviewed-by: Krzysztof Karas <krzysztof.karas@intel.com>
> > >
> > Thanks for the review Krzysztof.
> >
> > > Best Regards,
> > > Krzysztof
> >
> > Hi Rodrigo/Jani,
> > May I ask you to push this change?
>=20
> I just pushed the patch, but I'm wondering if a simple
> ENGINE_POSTING_READ(engine, RING_HEAD); ENGINE_POSTING_READ(engine,
> RING_TAIL);
>=20
> before the return inside the stop_ring() wouldn't be enough to accomplish=
 the
> same here...
>=20

Thank you for pushing the change.
I have already checked using ENGINE_POSTING_READ() inside stop_ring(), but =
it was not enough.

- Nitin

> >
> > Thanks,
> > Nitin
> >
> >
> >
