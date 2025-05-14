Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EC56EAB650F
	for <lists+intel-gfx@lfdr.de>; Wed, 14 May 2025 10:02:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B72410E240;
	Wed, 14 May 2025 08:02:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KT02Cuat";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D6D1610E23A;
 Wed, 14 May 2025 08:02:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747209721; x=1778745721;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=FJQSfpLySt4cA74hQPtpd4ye6EI89kc2h/Xo0lpvZqI=;
 b=KT02CuatQvtY09c8KUSoVPpfwvKziabEIU+7Q3aeBD2AUUCvqEEIGc0U
 wtIpPiAuUxO8lo2cK44WgAoryum1oGYaSyvOLQeTXXxc56+ejGJoguI2f
 8kyLYyg8J+OiiRQdYhIwHk9S3DObWssZEntZuSt17hz3/pwQ9x0cRzGZ+
 TV/viEaV/ASrovfdifccUN9BxeQdEQXhm+AMgV3OZRhccRRmVpnnU+eUX
 NhZ1TqrsY84vU9p2C82GCusxF2gVQDl1IKAn0k76L9BosvXzpmQu+xNV0
 3/jyKOFbjgDerIvWGdO4Tb3ZapGy5Djo/6mIsFa1lfY7v1jyuoYV77TjD A==;
X-CSE-ConnectionGUID: AxnOp8YlSAumGfzJe8Hk7A==
X-CSE-MsgGUID: ZkrTlLVBQba1UhKpHfBm8Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11432"; a="36717828"
X-IronPort-AV: E=Sophos;i="6.15,287,1739865600"; d="scan'208";a="36717828"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2025 01:02:00 -0700
X-CSE-ConnectionGUID: ZFXdLycpQm+EFf74FEylww==
X-CSE-MsgGUID: VHe3frD5QuSOaKOhz4iMpA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,287,1739865600"; d="scan'208";a="161252333"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2025 01:01:59 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Wed, 14 May 2025 01:01:52 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Wed, 14 May 2025 01:01:52 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.171)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 14 May 2025 01:01:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=E2xqhHIVuHdstAn0zqJ/zpabcULdVPIr8lIrOGCFUD3OWx+vIJjm/jM/OeDYExh02mLvLN1l4SiQw1F1JxpjwSWWKsvwNKOTAomeuyFoqtaqrsFQyhAS1L03tF491wGkGIvs+KfFvkayMleXJG/yA4WEhs8HGNOY8hiHz2/xdxVz6TMkVDeF5lnAnWc3q1nEpePP2Ml91v0WnNiXC6Ntka0flI1IGpzkiAIka3v4u0yH/RABIhTTXxYYf9XJ8f8qvhkAWnFcUU7y41XDQS2cLLNBFuzIYe0wos4N9B/BhN/UEmd5E8XnzX5xwgVcXNDRikTLtxLApmyMdAO48kBMjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FJQSfpLySt4cA74hQPtpd4ye6EI89kc2h/Xo0lpvZqI=;
 b=q48c9GbU3RC4T9iKpOyUcUDdWwXCMFDuUWamT7nWl25qFBS/1YXmWl8xYi2IOu0FQD5qBKu5xCfAypQ6jXu0BSH5Y6OHQsIeyGpVXVQlgreuUGUEF81syRpVxSVuJaJ3ugf96McPFlrv5mOtbRQqJQJI6gFOEKu8xlygdzCFZCozZ3h9RL6Ovhtdao0NpIcXgO2dvmObmf/TeYfkPdp6IlGuik45Md8IDt5/MrefMx48DvtOgPDs2+L2Cm9LaKnDYwCuHza7O54ySeOc6O2kTbqJfx8fRGt8cMWa09Qv+LDT+3H7hYwEMEw2qvW0LN3rTS8qGWI0Ubr5trVoNZZc1g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 IA1PR11MB7753.namprd11.prod.outlook.com (2603:10b6:208:421::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8722.21; Wed, 14 May
 2025 08:01:50 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6%5]) with mapi id 15.20.8722.027; Wed, 14 May 2025
 08:01:50 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>, "Manna,
 Animesh" <animesh.manna@intel.com>
Subject: RE: [PATCH 01/11] drm/i915/dsb: Extract intel_dsb_ins_align()
Thread-Topic: [PATCH 01/11] drm/i915/dsb: Extract intel_dsb_ins_align()
Thread-Index: AQHbp8rawnnwifxO1EqSyrlEQsddbrPR++tw
Date: Wed, 14 May 2025 08:01:50 +0000
Message-ID: <DM4PR11MB6360AD45EF89553DBD4D70D8F491A@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20250407142359.1398410-1-chaitanya.kumar.borah@intel.com>
 <20250407142359.1398410-2-chaitanya.kumar.borah@intel.com>
In-Reply-To: <20250407142359.1398410-2-chaitanya.kumar.borah@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|IA1PR11MB7753:EE_
x-ms-office365-filtering-correlation-id: 5a7e29db-9e50-4fa5-af71-08dd92bd94f1
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?aUJmejd0Tys0UDhtdDkweHlVcTVaZ01abStOS0U2eG5aelRjSGtOU2FZNnM4?=
 =?utf-8?B?ZW9aUWpselRyQmRTSTZhYUEvbm16TkpLdTNuOVZKMUp5R2Rvbks2b3Nnam5n?=
 =?utf-8?B?cDAzazBBekxob2RWQUFGQmdxZ0VqZE0rYjRub0JoTzJsc2hveldsaVFPUUpT?=
 =?utf-8?B?WGZaNzl0RVo3UnoyQ1M1V0tHeFZML0JBYmVFSnYydFJjcmdQSmtBZDg3cnl6?=
 =?utf-8?B?MngxU3VJQjEvZlBpcnBrYndPRmlCb1VudjRmOEtLNVRoUTdWWGphSWp2ZDM1?=
 =?utf-8?B?YzdNaXZWRHNpZHJVYnZnc1JudlVUdGNKZnVWaDk1TlB6MTNVNzBXbnJqQWVs?=
 =?utf-8?B?T01DT25tMldYT3VBSFhYUXRFazJIVGRpc3FMMWZFMHp5S2pBS002dUZJR0Jk?=
 =?utf-8?B?YXJpVnN6OWI2cGVBWHFVbUFTaXk1UXJNb2lzeEE4b3pJTkJzYVpVS051UDgz?=
 =?utf-8?B?UnhFOFlXMHZZVmRwejhEQ3JKOTFaSm1PYTlrWHVSSjlqeUYzMjlvQ0drazVr?=
 =?utf-8?B?MC9nd05lZUVMd1FUZEZDRU0yOEt3YVdWNS9Ub01CdnpsNHN4dVJrTm4xeDRJ?=
 =?utf-8?B?Y0pMYW4zWkJpNTBCWEJkUVlKL2hMMWpHVFhWeHVkSzhRb3ZYbDFmUlBvY1lP?=
 =?utf-8?B?S21wb2FsaEc0WjViMTZ2YkdZejN2N2l4RWVvcHdEZTFUYUJHRXE4cER6WW1W?=
 =?utf-8?B?M3pIZHVhNm9pSm92bHJkNFB2RytlbUdpYkU3YlZkdHlEazRKVFR6amdzQjZq?=
 =?utf-8?B?YStPenF0SVlzWmtjSXN6WVBqUCt6ajh4QVh5STlYSlZqMnVoRnZnTDVVWjFw?=
 =?utf-8?B?bTNaUkJ5T2JnVFUrVTZLcmsvVFBNK05xVlAyREY2RG9QLzhnQlk0Z3JrSE14?=
 =?utf-8?B?dDZGMHdpd2F6TkkxOW9sckltb3MyOElKdyt0cVNCUVVvdi9sNkRzL0dkbkMv?=
 =?utf-8?B?RXNXM2lmcVhpb2ZPYlNsMXlub0w5dEg5V1l4RHNrVE41aUhReE13dzduODdB?=
 =?utf-8?B?cWVIZzdUdnJDWmdOVFM0N3dIV2VqM3ZnYW5hZWlmYVRKbTJ4ZDZhc0tYSnNT?=
 =?utf-8?B?VVZHYk5jUm9HTU41VWk3ZFhQcE45RnhWS0FrcGordEVDSFFHTW0zZDVRYmpi?=
 =?utf-8?B?WjlXS1FsbFhwWnJGNWU3VEM2dHBDaWtyN0p1OFZ1bGZ4amh0TTlZYzZySTZP?=
 =?utf-8?B?LzNtWGtmWmdBcExxekFvM2djMUVPWUoyZDd4RkRFWnVCMGNoQ21XK1lTbUhi?=
 =?utf-8?B?N3ducDRyY0cweWFlNHg0TDV6bGdVTVFFT095bENhdUhoWFpqU1FBTXpUUnk5?=
 =?utf-8?B?b0o2K000Z2ozWkZuaVpvUGJwYUZHaDA2ZXo0RFdaN0UxVXhJdE5zRUtRcisy?=
 =?utf-8?B?YkN5TENaWWhWYjd1UjV0L3BwQk5FVGpjZ3MwT1laN3FkcnNkTzl4eEZ1NmNC?=
 =?utf-8?B?Q2lCdHZhZ1I4Q0VFSWlVVUdWakhGd2N5Y3ZlMW9kODA4Q09GV29DcTN6Mlda?=
 =?utf-8?B?a1FxQmlCOEJUdUJSVzdvcWM5dWFabU84M2l5bXErOUNuWmorU1JrU3BkTGM5?=
 =?utf-8?B?Qm8xc1RQY2Fwd0FYa2o3QVdvZWs3b3BBd0Z3c0ZZMzR1RExEMUR3bkMvSEVm?=
 =?utf-8?B?VnQxbnBKVWRxTkkzSG5jWHVlMStZQ0szdE44VnBBZUkyZ0VjRWxLOUZreXBk?=
 =?utf-8?B?Q3ZPSVphNXo4SE5XdTVJbXpNb09IcmFrL0wxcHlFMzNJZEx1SzZPRjRHb24y?=
 =?utf-8?B?U05hcno0cjVnT0tvSVdnRVZ4MXVYeE8xOVBjbXFrZHZ1YVFOODZZN0JMQm5N?=
 =?utf-8?B?ZjFwTEhQdlViUHFSZTFTZkxPRVk5NXpjSnJYTnRtbVdRQ3J4K1VWN1hSbWlt?=
 =?utf-8?B?UWNRN0NiUkEwSGtYYUhuWGtqbmlnZ3V0c0NWLzYzOVlPdnpoTFIwWWVXS1dv?=
 =?utf-8?B?YytwZVVhUDM2TnRTcEpGVzhOTGx3SmpOUGNDQ3R2WU9ya21zS3IvczFGSGNN?=
 =?utf-8?Q?xWJQ/UvA+nGVbCXU1495VvflepVVKM=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?c3NDS0hBSkpQWmhGR1cxdDZHZk94UlJheEJBYVpzTUlicmFrM2RIR1BaMnRl?=
 =?utf-8?B?c2p5NW9ETnJTbkZicU5zSVJLZVQ1ek5hVHB4RjRTazZFSDl0S2R5Z1A0Z2tL?=
 =?utf-8?B?bDE4WlNFVDk2cmloTXFaK2JMNElIVXh6bzBtYzBvTk5ELzgxTlgxVVczSlc5?=
 =?utf-8?B?QVZ2MzlMak4wZFg3aUZLZUdpRUNnNXFpc0NRZmFOYzYxaTRvV1VJNkZ1Y0pv?=
 =?utf-8?B?U0xtbzNHaFpqRzVHNjROYWI1TytLcVBTWlRKSkJrQkMzc1g4V2l0RDFDeUpD?=
 =?utf-8?B?Ni9oZVVNa3pCU2hwVEI2dy9qendmaEM5VURpVlJkTHY0ZmlUdGhqTHdMa0NM?=
 =?utf-8?B?ZVhQdjNOeVRpSXdjbzVqSjBBSzY5SHlNT2ZrUFpYWCt5THpMTjFQc3VvNFNE?=
 =?utf-8?B?TGpESVJ4alk2M2xyaDFXbXZsWUJ4MTJpZWVwSVNGRjdhQ3ZsRkRYU1hIa1NC?=
 =?utf-8?B?YnRaNFZ3ZUhvRmJwQVRGb091WXoxUFFXdTJCMW5ldmRqWXJXcmFhTXlmNW1N?=
 =?utf-8?B?RENHMS8yK1NPNFVpeEsxRkRlMFU5c3BrY2x6RVFWdVYwYjlURTkrcEJSOVB4?=
 =?utf-8?B?cGFyam8vNE1TTG04SnZDTE5ZY0N2WWRLQjRETmNCbDdpbGlCamRCbGUxRExT?=
 =?utf-8?B?WmxhNjhSamEyc2FPT1pnZjJQRFh3VlA4VHNWRG9mNlJMVVZaNHAwWWFLU1BN?=
 =?utf-8?B?cE8xeGhJckVVaGpHT2ZIL2MrcnJNRVpwWi9wSWdSN0V4Um8yT1c5YWRvOTNt?=
 =?utf-8?B?bFdVTW02YUl0Sk9FTlQ1RkN4RWdjaU9tTk5mNldxbzRrVThydEl5ZzBCbFFu?=
 =?utf-8?B?SHdhck1vRU5oaFNZQjlxMHkxNEYwQnpoTWI0RUxMRmlXRHoyN1lUcDh6Vzk0?=
 =?utf-8?B?S2ZZNWVqYzNyV0pQQ3VucGNubVR4anZLL0NIcWdVSDdXYmhMakxRcHNLajJp?=
 =?utf-8?B?NUlPV3V5ZnFJM3VBM1FYWHUxNlBPQzdtOHFKd0dOTlpJMDJYMG5nVWhmTVl0?=
 =?utf-8?B?bE5GVUJ3a05WL3htWGEvNkMyS2M5cGFDZUJvWE5rcktYRkRsQXNFelRKZkJ6?=
 =?utf-8?B?c21vaUI2UERUZjFKQm9sM09iUHZpRXZLT3czeTFiNlhVV2cvdUxvdHgxWndm?=
 =?utf-8?B?eVZuMTRPRlVkYU1QUDZydEFzTDJJeng1ei9BOEhOTVJocTZkazJ2cFhzcHRL?=
 =?utf-8?B?UHJvV3B5VVV2OWxlUllMRVZXSHB5Zi82Z0o0cTFXaUtuZk8vNWlnNDNBN1Zj?=
 =?utf-8?B?Mm5WTWx4TWo4N1daRnUvWm9ySlEvV2VJVG55SWFxUEcyK2FYTmlZckFVNGh5?=
 =?utf-8?B?c2puSU1pcFBBSVFEL2VpaTBuR3hTdzhyZXdlSFM5Y0NTdzd5d2dNS05vbjlR?=
 =?utf-8?B?RFZXcjhFbzN6ZkFVNTZoZlhXdVNkcnBTenNrSUw0dzNJOSt6K1dsekZ0TmNl?=
 =?utf-8?B?aUNZejhlOFpjTDMzd3A3QmhDUGl3Zkh1S0xicVg2amY2UUxGa2VDT1BCdkYw?=
 =?utf-8?B?RUJhOEphMTVLckZhUmRmb25CYTVZQzVsWGV4Z3RqQnhFSU83ZnNKNlZrYWJn?=
 =?utf-8?B?clJjUU54RkE0U1p1UnZTSkNQR21leExsS0QvNzM0Y2wzNUFGdm5hRldWMWdP?=
 =?utf-8?B?ck9hQ1ZOQmdTSkkwYkxtbWcxKzdnRzM5cVdDYldLNll1ZjBna0RPYjAwRDht?=
 =?utf-8?B?bnpYaGE3R08rcHp5elFYQk1nYjRJU1I1TzZZZEhBK1FSaFpUNmJBNFZWQS9t?=
 =?utf-8?B?L0grc3RKYng4KzRUV2dqSUlYZVM1QlRmVnJ1SFI0Ly9jbU56eC93ZlRma3VD?=
 =?utf-8?B?YytzTVBFRE5UZjU2YkR1WW5uemJrUktFOUoycG03a2JCZU12VnhHMnhCUUdr?=
 =?utf-8?B?cW1Xb3h5citTcmlJNHRqbkxiSWhiOEJNeWx0S2FNWEtVTDZkMkNFK2ZHVmlU?=
 =?utf-8?B?SVJXL2lyRmh4TjNsQ05BOXlSNHYxMUFJYzh5QXBOUE9TRXo4cXFoQ0c2ejh4?=
 =?utf-8?B?YlN0T2pPWTkzdDBTNW05ZkpmSWpYRXd3YVVLLzM5MnFYeXNOK0JWbUtTM0da?=
 =?utf-8?B?MTIvUjUyaHlmWTNkeVlvZHpkSy9PbkJaZEI5Yi9vWDFrekNTMlBQN21RUU12?=
 =?utf-8?Q?HV1R00jAzfRH9JWTHzK2CA6g+?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5a7e29db-9e50-4fa5-af71-08dd92bd94f1
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 May 2025 08:01:50.1522 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: OEAwtmGsVipJvS0c7lAX6kLwUvTyWIUPR40h4YCARP8xdE7uqb9/yDjlCuTRRiz3Mh2ySHWjTDHIDh+ex0zBdg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7753
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogQm9yYWgsIENoYWl0YW55
YSBLdW1hciA8Y2hhaXRhbnlhLmt1bWFyLmJvcmFoQGludGVsLmNvbT4NCj4gU2VudDogTW9uZGF5
LCBBcHJpbCA3LCAyMDI1IDc6NTQgUE0NCj4gVG86IGludGVsLXhlQGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZzsgaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBDYzogdmlsbGUuc3lyamFs
YUBsaW51eC5pbnRlbC5jb207IFNoYW5rYXIsIFVtYSA8dW1hLnNoYW5rYXJAaW50ZWwuY29tPjsN
Cj4gQm9yYWgsIENoYWl0YW55YSBLdW1hciA8Y2hhaXRhbnlhLmt1bWFyLmJvcmFoQGludGVsLmNv
bT47IE1hbm5hLCBBbmltZXNoDQo+IDxhbmltZXNoLm1hbm5hQGludGVsLmNvbT4NCj4gU3ViamVj
dDogW1BBVENIIDAxLzExXSBkcm0vaTkxNS9kc2I6IEV4dHJhY3QgaW50ZWxfZHNiX2luc19hbGln
bigpDQo+IA0KPiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50
ZWwuY29tPg0KPiANCj4gRXh0cmFjdCB0aGUgY29kZSB0aGF0IGFsaW5ncyB0aGUgbmV4dCBpbnN0
cnVjdGlvbiB0byB0aGUgbmV4dCBRVyBib3VuZGFyeSBpbnRvIGENCg0KTm90OiBUeXBvIGluICJh
bGlnbiINCg0KQ2hhbmdlIExvb2tzIEdvb2QgdG8gbWUuDQpSZXZpZXdlZC1ieTogVW1hIFNoYW5r
YXIgPHVtYS5zaGFua2FyQGludGVsLmNvbT4NCg0KPiBzbWFsbCBoZWxwZXIuIEknbGwgaGF2ZSBz
b21lIG1vcmUgdXNlcyBmb3IgdGhpcyBsYXRlci4NCj4gDQo+IEFsc28gZXhwbGFpbiB3aHkgd2Ug
ZG9uJ3QgaGF2ZSB0byB6ZXJvIG91dCB0aGUgZXh0cmEgRFcuDQo+IA0KPiBTaWduZWQtb2ZmLWJ5
OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiAtLS0N
Cj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmMgfCAxNiArKysrKysr
KysrKysrKy0tDQo+ICAxIGZpbGUgY2hhbmdlZCwgMTQgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlv
bnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2RzYi5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2IuYw0K
PiBpbmRleCAwZGRjZGVkZjU0NTMuLmMxNjZlMDJiOGFmMCAxMDA2NDQNCj4gLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2IuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzYi5jDQo+IEBAIC0yMjgsMTMgKzIyOCwyNSBAQCBzdGF0
aWMgYm9vbCBpc19kc2JfYnVzeShzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSwNCj4gZW51
bSBwaXBlIHBpcGUsDQo+ICAJcmV0dXJuIGludGVsX2RlX3JlYWRfZncoZGlzcGxheSwgRFNCX0NU
UkwocGlwZSwgZHNiX2lkKSkgJg0KPiBEU0JfU1RBVFVTX0JVU1k7ICB9DQo+IA0KPiArc3RhdGlj
IHZvaWQgaW50ZWxfZHNiX2luc19hbGlnbihzdHJ1Y3QgaW50ZWxfZHNiICpkc2IpIHsNCj4gKwkv
Kg0KPiArCSAqIEV2ZXJ5IGluc3RydWN0aW9uIHNob3VsZCBiZSA4IGJ5dGUgYWxpZ25lZC4NCj4g
KwkgKg0KPiArCSAqIFRoZSBvbmx5IHdheSB0byBnZXQgdW5hbGlnbmVkIGZyZWVfcG9zIGlzIHZp
YQ0KPiArCSAqIGludGVsX2RzYl9yZWdfd3JpdGVfaW5kZXhlZCgpIHdoaWNoIGFscmVhZHkNCj4g
KwkgKiBtYWtlcyBzdXJlIHRoZSBuZXh0IGR3b3JkIGlzIHplcm9lZCwgc28gbm8gbmVlZA0KPiAr
CSAqIHRvIGNsZWFyIGl0IGhlcmUuDQo+ICsJICovDQo+ICsJZHNiLT5mcmVlX3BvcyA9IEFMSUdO
KGRzYi0+ZnJlZV9wb3MsIDIpOyB9DQo+ICsNCj4gIHN0YXRpYyB2b2lkIGludGVsX2RzYl9lbWl0
KHN0cnVjdCBpbnRlbF9kc2IgKmRzYiwgdTMyIGxkdywgdTMyIHVkdykgIHsNCj4gIAlpZiAoIWFz
c2VydF9kc2JfaGFzX3Jvb20oZHNiKSkNCj4gIAkJcmV0dXJuOw0KPiANCj4gLQkvKiBFdmVyeSBp
bnN0cnVjdGlvbiBzaG91bGQgYmUgOCBieXRlIGFsaWduZWQuICovDQo+IC0JZHNiLT5mcmVlX3Bv
cyA9IEFMSUdOKGRzYi0+ZnJlZV9wb3MsIDIpOw0KPiArCWludGVsX2RzYl9pbnNfYWxpZ24oZHNi
KTsNCj4gDQo+ICAJZHNiLT5pbnNfc3RhcnRfb2Zmc2V0ID0gZHNiLT5mcmVlX3BvczsNCj4gIAlk
c2ItPmluc1swXSA9IGxkdzsNCj4gLS0NCj4gMi4yNS4xDQoNCg==
