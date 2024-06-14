Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D33B29090F7
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2024 19:05:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1616F10EDF3;
	Fri, 14 Jun 2024 17:05:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Mw+ya9la";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 68EB010EDF3
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2024 17:05:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718384716; x=1749920716;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=TPhXtZIMzJFBCLr4VvVQj2OBxRhQoBmGsFdnEKJmoVw=;
 b=Mw+ya9la6evIfHTbmiZcZjylXhCaz3Ae4RBqF16PWz7m9zOXVbICgvPb
 jxC2ncXY6mO4j+tca7/aWaNpDX7SqJzDNkQSwIl/3pVsgzrgZ4uVLWkXL
 uRgqlwBbViYnMvzN/j37fu2V+RkttZiHTwo7mIgCq0UY+6OeUP0Z3In5L
 SH2Iv3sTuWFjvwTsp9PFrW6YUtwhn8yAwHGhtxZup0Aehu4A7KcKPEG9a
 Ep2Blk+TAPAUP2NYhVgGu6eBteWu5l35vNqzZNk0kHZfbnCw3uncedBYA
 O+D7/chH2SuOr/0VX2GuvMvaAYSczFm6yk+D7dSu2oCqVhWz8JnQHVfYj g==;
X-CSE-ConnectionGUID: BZi6b9hYTT2mCb15CTAELg==
X-CSE-MsgGUID: bVfqwJZkR8WjNJtDlzIwpQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11103"; a="19136263"
X-IronPort-AV: E=Sophos;i="6.08,238,1712646000"; d="scan'208";a="19136263"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2024 10:05:03 -0700
X-CSE-ConnectionGUID: gkQuRMStTuKieU9YtxtglA==
X-CSE-MsgGUID: 6G4bCCJgSq6BjEe+ncjRXw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,238,1712646000"; d="scan'208";a="63765975"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 Jun 2024 10:05:03 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 14 Jun 2024 10:05:02 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 14 Jun 2024 10:05:01 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 14 Jun 2024 10:05:01 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.177)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 14 Jun 2024 10:05:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GERk4L8JaD7DayfZ/8xnTcjkT0cqwqOZnxzPCytjLG5uoN5YXF39OXJMYjeoCj/J6TSF7A69pikVkWx+GM8TAIeT5u9HMLjzwXeWrzvaQxr1bGWT537GWDXOi0g+V4duEyW3dm9Ry21gGySRx4Od6wORiwh0Q8xL1vn6C6L+GhgRMugADC/EGoOItfI/z9lhzMEX97+wK8D4GSFUPlsO8kTOD3TV/WoVnEE1Z8K3NNDWv1tps3ayWqayIWaYLfOxV69uBPZTbyFCVw/fG0F4RPlxTNlTOnEZ9PNnPMq/4U34cr6HxBYnXJFZLeHOqgPBekKbhPnk0/8yzrWStpmeMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TPhXtZIMzJFBCLr4VvVQj2OBxRhQoBmGsFdnEKJmoVw=;
 b=m+de6AF4ulNZ16ip35W3HzPxa+I3JAUJRW2pjT0TZVwJUZ9wSMyBWxgEXIl0+EyypNwaeJtUkurJ7dPaO1FpFm8Zj4M42aoVU9hsRUyeoWj9W6mt/5LruRQ18V8EiiOqJudZeS+1iaWqQYhflMUQnmJtiH5AbuYBDxZTP/WHwGHeGOB4yvlkLaDl+HMlogamhsdgiGaUMSXMNXWHRLE11R1F7b2Z7dpjtqCE5y5RSImUeUOXsYN48vVxYgyQ3X+iEJiKCaNpZ0k48D71E4J+u344V+mrlJUe7rx0mITUASnXpZkpVH59+/pivqgGWKwwLw1PHQj+LWXOFTE8W57Oyg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by BL1PR11MB6027.namprd11.prod.outlook.com (2603:10b6:208:392::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7677.25; Fri, 14 Jun
 2024 17:04:56 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0%6]) with mapi id 15.20.7677.019; Fri, 14 Jun 2024
 17:04:56 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Kahola, Mika" <mika.kahola@intel.com>
Subject: RE: [PATCH v8 08/20] drm/i915/psr: Add new debug bit to disable Panel
 Replay
Thread-Topic: [PATCH v8 08/20] drm/i915/psr: Add new debug bit to disable
 Panel Replay
Thread-Index: AQHavXS86CGWbbc0ZUq1bKPoqWaFC7HHftTg
Date: Fri, 14 Jun 2024 17:04:56 +0000
Message-ID: <PH7PR11MB59811BCFBEAA155BAC59D9F3F9C22@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20240613093239.1293629-1-jouni.hogander@intel.com>
 <20240613093239.1293629-9-jouni.hogander@intel.com>
In-Reply-To: <20240613093239.1293629-9-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|BL1PR11MB6027:EE_
x-ms-office365-filtering-correlation-id: 333be8ed-e50b-4178-c311-08dc8c941df5
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230037|1800799021|366013|376011|38070700015;
x-microsoft-antispam-message-info: =?utf-8?B?bTBFUmxwUExhRUUvSlpBMXFIN214R3hrWTlWeFhiZVArUmdDNUhUdjJtbE0x?=
 =?utf-8?B?SHVzT3dtQjFFVkg3N3drb2ppejVTbk5OcGtxM2RYeExlQkN3ZlRFSk9lbkhB?=
 =?utf-8?B?VjEvNUdpSzdUNUlPc0gvWGRuSlVVRDZ2b3F6R3BnM2lXMHc4ei9JRDEzcWgx?=
 =?utf-8?B?SlJMYVVIaVdHTkZSQlFlZXk4am1BOVFpS2FndjVHQWxFaElRaUdFNXJwMk9p?=
 =?utf-8?B?K2xBSjliZnE0VWlXbDNZQi8zSU13bTI4K3FvWFVsbDJzYWNhQlVWS0dlUXoy?=
 =?utf-8?B?YXhxdWpsd2dxZnVtS1dvdkZNVGlZL0hhcW1WSDlBbGhMNE1oVFdGazU1REdV?=
 =?utf-8?B?enFKZWpBWlZ3ZERKeEdZTnJJZ2k4MWFtL3E4QXJvblo1RWtFeGZyZ2VkWjdJ?=
 =?utf-8?B?bzR1Z1lRZThudDF6YVBxd1ZyazRGa0VQZDhlNUllS1NwWHNFcmVLMGt1T0Ix?=
 =?utf-8?B?ME1VZnY1TysrelFxM2RFMmZSaHEwbk54bHNvakZDd1hQYlVTMnl4aXJSVERM?=
 =?utf-8?B?TVUrcGl3bVBGdVh3QzcrcU1FRFFSWDMvRy91OHp2bGRqcFJsYkIzTm5FVUtH?=
 =?utf-8?B?NnVzRUJqV2hHZGR2dm05R1I0QUZLK3ZRR1dIemlQcG5HNmxpSzFGbVpjVUxj?=
 =?utf-8?B?bnNCRC80TzBITmVrWWlwNyticU1oaDJpY0RFUENFcGJrV3RLNWlsOEFDV3NH?=
 =?utf-8?B?N29oRm9oVWZlSXVodUtTS3ovbTRsNDFIck4wdS9xNWJyckZWeDcyNVQ4MGo2?=
 =?utf-8?B?WElUa0IrdUd2TlZjS21jaUlwNUhHamxvVmhoY2h5Y1FaQU9WZGZ1UDRDVDg2?=
 =?utf-8?B?dmd0eE04cXN1MUROT3lOUWwwMFJFbm5HRitXakFqczVDbW1QR0NTOVcxRUFP?=
 =?utf-8?B?bisyaFFpQ0JBS3hhQmovem9hMXoyVGt3NzJCMmorajRkNTNiV2gydXJkbzNw?=
 =?utf-8?B?bEFNMVRjYU5WT0w3L0Q2NjA2NmhMVHBEbUVXSHV4UnYzUHdYSmJ2NjdBR1Zp?=
 =?utf-8?B?OHg5NXhIMGNKS2RNdWpZeGRwWnVrRW1mS0lPU2w2a3JrYjdzaEFzb1MvMFNI?=
 =?utf-8?B?NEpheWpsQWdVaCtCMFFYdElBWm8vOStxNzBpQlg5NEJVZjF6THZoQ3JBaXRh?=
 =?utf-8?B?Zk8yL29iOGFqNjgzZ1puekd1UU5jVGhJeG1NTkIwMDlHT2l1ZWFrdmptMUdm?=
 =?utf-8?B?UnY0ZkwzVGhzTVFFSmljR3R4YWFKVW1Eakl6ZGRXaXFENEFmcHZmeWthWVZB?=
 =?utf-8?B?VWJpdFJWOHp0ZUpUc3lCV1JwRkludHM2U3pxSVp6MXVuSTNpWk9HN29sS0ov?=
 =?utf-8?B?aElKcExqdGF2VEJvM0xrN28xL3g3cVdxWEVQVEFSTnI1RTZ3STlWam1vQTVt?=
 =?utf-8?B?TkRVcFdHMURvWVQ5Z0RuWloxZWhCaDFqdjZqZlJBaHkzcEtRREw1enc1WDA4?=
 =?utf-8?B?VEZLVzliM2VwaWdLZm55RnBjNlZNaHpDV1VHOUxvdTVBVURBQnJmTFk3akJO?=
 =?utf-8?B?bnVxM1RGR21sQmNGK2ZpWnErajVHeXRFMGYwbGc5cjh0eHdpSUJ5cXY3MmFm?=
 =?utf-8?B?TlZ1MmoyWnVlZFJZQ0hFTkwwK2F1ZzlNdndLT0RHaFhUS1FQN3ZxM2hZTkpF?=
 =?utf-8?Q?8NwRWLLmeabhPqwoyqdyeBaOxrQoi1Sg7QKLL+vXHEgA=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230037)(1800799021)(366013)(376011)(38070700015); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?R2tOL1dTQkJveE1iMlhPS2FGOHpzbzBPWnhmL3JQRE9jUFhZVVhId1l1Vmg4?=
 =?utf-8?B?SmEza1VCeUk0ZUVHR2hWa0xVN0szaHFUd3BQSk03NXRCM0xuSnVwb29KZW15?=
 =?utf-8?B?a0s2VFpUN0FpNjFSeXdhZkxNTzVPSTNyNVdCT1VSOTVISHd3RDBrWDV0VmxN?=
 =?utf-8?B?V3lzUDgxY2xRWXBDVzB3TmdjL0VwZEpZdDhHU29rRXlTejZnWHZ6cEFBY1do?=
 =?utf-8?B?ZnVXMXJmcVptZTk5UEIvY29sMXc1b2J6TllWbkhPbUR3QWtBT3hvN2JtU0Qx?=
 =?utf-8?B?YjluZ0tkUVNNclNXU2NzNStsUnQrbkwzcjlna1VmNksvV3ZrTjZCeGZndFg1?=
 =?utf-8?B?anZxeW1mdG1SS1VqQitKT1JlTFBKL1NuR2gwcDBUdzlsM2lUWVQvcXBMZ21r?=
 =?utf-8?B?ZytuMnFkaldodlUxdjVoa3k5dDVWNFlhMHQ0RkJmek5wS3NVVjBMRTJEc2dN?=
 =?utf-8?B?WmxWdlZKUjcraDZGNDFUTnZZb3JoK1JuUlNSaDI4Q0M1N0FZcWhZd3ZFUDFW?=
 =?utf-8?B?WkZxS3FheGFZcitIZ1liQnovVDljNnlqR2ZjYTVkWE9BS0dWa2N4WjNIcHJB?=
 =?utf-8?B?eDZqN1Vmc243M2NvYVdsS1BPOSs1VG5seGdNMWJqVzRXa0ljOUVPRkJKaVVq?=
 =?utf-8?B?TFdhRTlEaS80Z04waDJlNUVJSDhQQWkzS2Z5N2ZKL1NFSkpyV3VLeTZGUkpG?=
 =?utf-8?B?YW53R0tjZGtzMzJybWJvUWJpOVltQzRBWmxsQVVId3drd05QcDAvWEh4aFJi?=
 =?utf-8?B?VjVzRWY3WEZ5Z0hPUkRJK3NER0U0eENaNnZSUXA4RTRKN3JLRmp5K2FvZHV3?=
 =?utf-8?B?dEQ3YkwwbXpkVk1aWlh1NW5kVW5zZ1FHcE1oeDVidlFvaElkbm54eHFvTmVI?=
 =?utf-8?B?TkxGamFWTFRWbUIrZE5YazIrTnlqWmEzQnZ4REVRNy9mTEl0QitpaDVPakZQ?=
 =?utf-8?B?SjVFMzVvZ3JhWDdsL01aZmNydjJ5b0xVa2VDbmZvTTdoR0Y4cUNHemhqYVBT?=
 =?utf-8?B?RGx2eUlsT3VXRVYrKzFaL2U3WXk0ZnB4Y2pDSWpkQ1NHNysveUl0YkNqcTA0?=
 =?utf-8?B?bEwxZWczL242em5ZRXJNRHA5SUpLbGJnV1YyUlJjNFBSeEtNWmZhdm44djda?=
 =?utf-8?B?TkQ1b0hRdG5rcncrNlNRYzd5TkFhaXVrMVNXSWNNYVFqWUptRllELzZEVk5Y?=
 =?utf-8?B?TFcyOEpPcDNDdVpEVUR1VFd2ZnZRVXFLeUFuSUsvMlFndkYwVlBRbWxDUkhh?=
 =?utf-8?B?WFRmQWx6K3RHN1Q5WjhKdHdHZStPdXdrYjREUjhnWUZmMFB0bVRNTXlkcElL?=
 =?utf-8?B?VWZhRHI1SkpIMDRxRHhDV085VEhwdHh1R3hTYVk3UExybGdNdHhtbGFCRHM4?=
 =?utf-8?B?c1A3U25aNzlkZnFhK2hIU1o0UEhqcFpYa2JHTXJpTkNsNjduaWVMSmlnL05z?=
 =?utf-8?B?S3ZKZVlnOEVWUElkZlV4Uk1pbWZPWGdWZWtDS29ldExPU2F0ejI5RlF5TVBn?=
 =?utf-8?B?TWVsbS8rNzJQMGkxOUM0c2phYlpuclBGbjlmcmR5akVsdTI2MkpYZEtKcmRL?=
 =?utf-8?B?bytPM2gwNk9EN3ZtYWxla1J4dVBlS1VQWUNSWks4NU5ZSkpyV0h0c2QzSXlZ?=
 =?utf-8?B?LzVSNmdlNVJjbEh6TkVSei8yTzd0T1R2YTZIYXVaU1BkaUFlVDA1UW5xUGhm?=
 =?utf-8?B?MUdDS2k0WWtmdmYramp0MW9LQk5NdnVUdlMxc1IwR0tJV2tNMUZDZ1VjcVFi?=
 =?utf-8?B?K3p5dWQxWW0yQ2c5VGdTcFhZZG05MHFOS1cvc2VoaVZhQkkzS04zaHdiZmxO?=
 =?utf-8?B?Nng3QS80R0h6WXN6NFpRdVZZZHg1ajJxNSsxdy92NFY1NUJncE1tREFPTTUr?=
 =?utf-8?B?Y0oxNng0Ykx5MU1LR28rekVGcXcvMmJYdkNiOGxZMHdITE1ObkxWNk1uQ0JR?=
 =?utf-8?B?eGw3d0lPL1FKQzNYNmlGUVdxbWEwSmZVZkl0djFqMktJazRsK2txeEpYRHBx?=
 =?utf-8?B?dllaaG9MeTA4VFlHNkRTQklHQWRZOWRiN2NNRTF3YkJSRVViV0JacSs2U0l3?=
 =?utf-8?B?NDBiaGVGR0lNSGZUSVI1RVUvWDN1YTFVd1IzVnRIU2k1cmFKRUtiVHQrbG0z?=
 =?utf-8?Q?MT+7ngbPy1BXEGUYILBwIRzmq?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 333be8ed-e50b-4178-c311-08dc8c941df5
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Jun 2024 17:04:56.5416 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: I5auWBkSfYmsgkLOkPItfHgpYsJ0RhOCOk8++LxWxjFCv+HyW9AcY9dAVEMkpRbGmxE4AzQbezsJrWjk1g9vCw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB6027
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSG9nYW5kZXIsIEpvdW5p
IDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IFNlbnQ6IFRodXJzZGF5LCBKdW5lIDEzLCAy
MDI0IDM6MDIgUE0NCj4gVG86IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gQ2M6
IE1hbm5hLCBBbmltZXNoIDxhbmltZXNoLm1hbm5hQGludGVsLmNvbT47IEthaG9sYSwgTWlrYQ0K
PiA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPjsgSG9nYW5kZXIsIEpvdW5pIDxqb3VuaS5ob2dhbmRl
ckBpbnRlbC5jb20+DQo+IFN1YmplY3Q6IFtQQVRDSCB2OCAwOC8yMF0gZHJtL2k5MTUvcHNyOiBB
ZGQgbmV3IGRlYnVnIGJpdCB0byBkaXNhYmxlIFBhbmVsDQo+IFJlcGxheQ0KPiANCj4gQWRkIG5l
dyBkZWJ1ZyBiaXQgdG8gYmUgdXNlZCB3aXRoIGk5MTVfZWRwX3Bzcl9kZWJ1ZyBkZWJ1Z2ZzIGlu
dGVyZmFjZS4NCj4gVGhpcyBjYW4gYmUgdXNlZCB0byBkaXNhYmxlIFBhbmVsIFJlcGxheS4NCj4g
DQo+IHYyOiBlbnN1cmUgdGhhdCBmYXN0c2V0IGlzIHBlcmZvcm1lZCB3aGVuIHRoZSBiaXQgY2hh
bmdlcw0KPiANCj4gU2lnbmVkLW9mZi1ieTogSm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRl
ckBpbnRlbC5jb20+DQoNClJldmlld2VkLWJ5OiBBbmltZXNoIE1hbm5hIDxhbmltZXNoLm1hbm5h
QGludGVsLmNvbT4NCg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGlzcGxheV90eXBlcy5oIHwgIDEgKw0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9wc3IuYyAgICAgICAgICAgfCAxMSArKysrKysrKy0tLQ0KPiAgMiBmaWxlcyBjaGFu
Z2VkLCA5IGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgNCj4gYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaA0KPiBpbmRl
eCA0ZWU3NjBiZDI2ZjcuLmI4OTgwZThiNGMzNiAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgNCj4gKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgNCj4gQEAgLTE2OTcsNiAr
MTY5Nyw3IEBAIHN0cnVjdCBpbnRlbF9wc3Igew0KPiAgI2RlZmluZSBJOTE1X1BTUl9ERUJVR19F
TkFCTEVfU0VMX0ZFVENICQkweDQNCj4gICNkZWZpbmUgSTkxNV9QU1JfREVCVUdfSVJRCQkJMHgx
MA0KPiAgI2RlZmluZSBJOTE1X1BTUl9ERUJVR19TVV9SRUdJT05fRVRfRElTQUJMRQkweDIwDQo+
ICsjZGVmaW5lIEk5MTVfUFNSX0RFQlVHX1BBTkVMX1JFUExBWV9ESVNBQkxFCTB4NDANCj4gDQo+
ICAJdTMyIGRlYnVnOw0KPiAgCWJvb2wgc2lua19zdXBwb3J0Ow0KPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gaW5kZXggNzMwMGQwNDgwNmNkLi5jZDc3Y2Zl
YmE2NzkgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
cHNyLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0K
PiBAQCAtMjQ5LDcgKzI0OSw4IEBAIHN0YXRpYyBib29sIHBhbmVsX3JlcGxheV9nbG9iYWxfZW5h
YmxlZChzdHJ1Y3QNCj4gaW50ZWxfZHAgKmludGVsX2RwKSAgew0KPiAgCXN0cnVjdCBkcm1faTkx
NV9wcml2YXRlICppOTE1ID0gZHBfdG9faTkxNShpbnRlbF9kcCk7DQo+IA0KPiAtCWlmIChpOTE1
LT5kaXNwbGF5LnBhcmFtcy5lbmFibGVfcHNyICE9IC0xKQ0KPiArCWlmICgoaTkxNS0+ZGlzcGxh
eS5wYXJhbXMuZW5hYmxlX3BzciAhPSAtMSkgfHwNCj4gKwkgICAgKGludGVsX2RwLT5wc3IuZGVi
dWcgJg0KPiBJOTE1X1BTUl9ERUJVR19QQU5FTF9SRVBMQVlfRElTQUJMRSkpDQo+ICAJCXJldHVy
biBmYWxzZTsNCj4gIAlyZXR1cm4gdHJ1ZTsNCj4gIH0NCj4gQEAgLTI3ODgsMTEgKzI3ODksMTMg
QEAgaW50IGludGVsX3Bzcl9kZWJ1Z19zZXQoc3RydWN0IGludGVsX2RwDQo+ICppbnRlbF9kcCwg
dTY0IHZhbCkgIHsNCj4gIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSBkcF90
b19pOTE1KGludGVsX2RwKTsNCj4gIAljb25zdCB1MzIgbW9kZSA9IHZhbCAmIEk5MTVfUFNSX0RF
QlVHX01PREVfTUFTSzsNCj4gLQljb25zdCB1MzIgZGlzYWJsZV9iaXRzID0gdmFsICYNCj4gSTkx
NV9QU1JfREVCVUdfU1VfUkVHSU9OX0VUX0RJU0FCTEU7DQo+ICsJY29uc3QgdTMyIGRpc2FibGVf
Yml0cyA9IHZhbCAmDQo+IChJOTE1X1BTUl9ERUJVR19TVV9SRUdJT05fRVRfRElTQUJMRSB8DQo+
ICsNCj4gCUk5MTVfUFNSX0RFQlVHX1BBTkVMX1JFUExBWV9ESVNBQkxFKTsNCj4gIAl1MzIgb2xk
X21vZGUsIG9sZF9kaXNhYmxlX2JpdHM7DQo+ICAJaW50IHJldDsNCj4gDQo+ICAJaWYgKHZhbCAm
IH4oSTkxNV9QU1JfREVCVUdfSVJRIHwNCj4gSTkxNV9QU1JfREVCVUdfU1VfUkVHSU9OX0VUX0RJ
U0FCTEUgfA0KPiArCQkgICAgSTkxNV9QU1JfREVCVUdfUEFORUxfUkVQTEFZX0RJU0FCTEUgfA0K
PiAgCQkgICAgSTkxNV9QU1JfREVCVUdfTU9ERV9NQVNLKSB8fA0KPiAgCSAgICBtb2RlID4gSTkx
NV9QU1JfREVCVUdfRU5BQkxFX1NFTF9GRVRDSCkgew0KPiAgCQlkcm1fZGJnX2ttcygmZGV2X3By
aXYtPmRybSwgIkludmFsaWQgZGVidWcgbWFzayAlbGx4XG4iLA0KPiB2YWwpOyBAQCAtMjgwNSw3
ICsyODA4LDkgQEAgaW50IGludGVsX3Bzcl9kZWJ1Z19zZXQoc3RydWN0IGludGVsX2RwDQo+ICpp
bnRlbF9kcCwgdTY0IHZhbCkNCj4gDQo+ICAJb2xkX21vZGUgPSBpbnRlbF9kcC0+cHNyLmRlYnVn
ICYgSTkxNV9QU1JfREVCVUdfTU9ERV9NQVNLOw0KPiAgCW9sZF9kaXNhYmxlX2JpdHMgPSBpbnRl
bF9kcC0+cHNyLmRlYnVnICYNCj4gLQkJSTkxNV9QU1JfREVCVUdfU1VfUkVHSU9OX0VUX0RJU0FC
TEU7DQo+ICsJCShJOTE1X1BTUl9ERUJVR19TVV9SRUdJT05fRVRfRElTQUJMRSB8DQo+ICsJCSBJ
OTE1X1BTUl9ERUJVR19QQU5FTF9SRVBMQVlfRElTQUJMRSk7DQo+ICsNCj4gIAlpbnRlbF9kcC0+
cHNyLmRlYnVnID0gdmFsOw0KPiANCj4gIAkvKg0KPiAtLQ0KPiAyLjM0LjENCg0K
