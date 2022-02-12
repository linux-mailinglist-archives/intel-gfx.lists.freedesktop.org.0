Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C7BB14B3219
	for <lists+intel-gfx@lfdr.de>; Sat, 12 Feb 2022 01:38:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DD62010E186;
	Sat, 12 Feb 2022 00:38:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C6C0010E186
 for <intel-gfx@lists.freedesktop.org>; Sat, 12 Feb 2022 00:38:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644626315; x=1676162315;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=yBQSGrHbP+bHfnsPQM6t+dPIv9q/pXh1T7GZOKxZpDI=;
 b=lYQyijj1rnW/I/lBgDiT/NQ+89777YGDwXm2stsNtCaVBJ5eUkYhAI5D
 wywkKOXyU5MlTH25P/DJeT+m1j+HWswN1YmRV5zdvnYm91cYkpjZEF9RF
 MV8gydL1+2Z3JQh+WjK4N143vydu1+VtGKaGDIekjaZtm4K22ZcjZFkvz
 39r7z+mtdBmN/YnJLAaT3LVj16p5ScyynijKmttzyYWcSOWurs7gQQxam
 kffKYVm7m5vF1E81/IrxIt3dTFTWgnfQaRUlkisuUquJp1cLCGljJjlqq
 m8w3fjDVj25ImCcmkjc3TwJRDEvDwZG9lJJbQl+afLW+fTiBT/j6T+4Re g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10255"; a="249783324"
X-IronPort-AV: E=Sophos;i="5.88,361,1635231600"; d="scan'208";a="249783324"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2022 16:38:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,361,1635231600"; d="scan'208";a="569197270"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga001.jf.intel.com with ESMTP; 11 Feb 2022 16:38:35 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Fri, 11 Feb 2022 16:38:34 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Fri, 11 Feb 2022 16:38:34 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Fri, 11 Feb 2022 16:38:34 -0800
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.45) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Fri, 11 Feb 2022 16:38:33 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nYmUc5zEWRUMX1Oe8rSNks5v/7EK4+4KBTmTfkIuLOa3oHmx8kp2YaxUOZAwn9eEG01OkxhRAgBvE7325I9e1Ha5Dmny2+deWWdK6KROGg8fTiHPVW+P/oS+YhZpu/ptt1ALHlk31CYFyGpD0w8oLTVfqkFJGYDVFCguUktW1ZWlYB2ZULxVrqJ21aLe9DAULXBp57qdBUZKiAJ/2OnuY92wWvf/TPUBtp1U6bOJi+vGsKzLJyzXRhPhvRY7DEPuQUg2JOp7LG43iPyzvIo6BGZxrAbWBr57ttQjzV4ym86K3pX9Lqiv0NJnzTTNqh6HqzTITJkvb98PGTZux5iZ9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yBQSGrHbP+bHfnsPQM6t+dPIv9q/pXh1T7GZOKxZpDI=;
 b=FvY804CntFDRGppxYe6a5hbJclm1Ah31VSCHr6BtGxyW7q+zFXN7y5Ose1EVekFSNeTx5OyWR+CJhbLH3nf9laJnUEzKeDFSxmYTq/vjNSBHoVS/MiqPN8zf2rPLXmkNbBTGDyRTycbwhaDJwpTk8KWjFvYItfwe+jU0uQgXWt4i0o2q08Wo5f42zGncDoukZH/C11tGH1nCcrKP+wr+D0NQLXiYaODCMryiAvHaA9y8rE0KPBuvFDRHgWC2G/kUE7lvzIjBtieSdXCslozAGIbNYQLMrwqD1Iwi1Bpf2Gsy6dvibwqY9UMdUv5f4sZpUMt+UH1YrgueNOCXruJAmA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from BYAPR11MB3784.namprd11.prod.outlook.com (2603:10b6:a03:fe::10)
 by DM4PR11MB5566.namprd11.prod.outlook.com (2603:10b6:5:39c::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4975.11; Sat, 12 Feb
 2022 00:38:31 +0000
Received: from BYAPR11MB3784.namprd11.prod.outlook.com
 ([fe80::a048:b2cb:5446:6b13]) by BYAPR11MB3784.namprd11.prod.outlook.com
 ([fe80::a048:b2cb:5446:6b13%7]) with mapi id 15.20.4951.019; Sat, 12 Feb 2022
 00:38:31 +0000
From: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
To: "Nerlige Ramappa, Umesh" <umesh.nerlige.ramappa@intel.com>
Thread-Topic: [Intel-gfx] [PATCH v5 08/10] drm/i915/guc: Plumb GuC-capture
 into gpu_coredump
Thread-Index: AQHYEqH6X4oTx9ZkiEigCkIt+MIgw6yNtCAAgAF45gA=
Date: Sat, 12 Feb 2022 00:38:31 +0000
Message-ID: <5c0d039bc6577574c28f1b7a2a023032ef586b28.camel@intel.com>
References: <20220126104822.3653079-1-alan.previn.teres.alexis@intel.com>
 <20220126104822.3653079-9-alan.previn.teres.alexis@intel.com>
 <20220211021136.GB34157@unerlige-ril-10.165.21.154>
In-Reply-To: <20220211021136.GB34157@unerlige-ril-10.165.21.154>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.5-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 99072a0e-45da-484f-fd80-08d9edbffe59
x-ms-traffictypediagnostic: DM4PR11MB5566:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-microsoft-antispam-prvs: <DM4PR11MB5566070DCFC7B99E8905E7538A319@DM4PR11MB5566.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:989;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ahCN7VgV4wUuNmOqGVJDiQRX4/jo1RQkFKB/t1gH4KA24GLw7J3ctr9gcKOclTEhmaY2JhKV8A1tBSn9ZhEzdx8y8k07IpWVyC7Gn6fPgpAD0KaAIBvbyel3ee5ZXyPXdL4QFWC0Dv9/aWxDcK+LgcSvbqS5sJrczAWPeHPBK8fx+KZjmfmszQXLSTuENmK48hG5JqNMuySAYmztIZMwSO59MTmfOTY+BczZKf0Bxg1XzUlkwxawMlsRgQf0BXEEktyFK3gWOQtTHbCi3fqQ9cvYYcyhxcTI2pUopG5xOuheZlZif/InxnlsHknB4X3DxcYKh3b83yBI1Y+OzJAo1Gd7bo9LifObHYi8sBNjGwkdNIdxLqZ+PKrf4WxwMKnZrcH4uddz8iOfImxhfMsGZNz9sCVkVmq8y0CjlQbmUW4diAVmZxVHCeuxTF8md7/APzxOjQl1ki0Qo6tFm786WnFRKLJZjnA1aITqPyLIoF9a3EcCBgx0DOPVpwvybaUI9AFc1yV0suvyXIMC0/7CbAoki0owk6kES3xLfN7gDPXHZAGFKUSm3Ilvm629fcMwmVsGcrRlGZ7CzK0yKU5WEZ8UDommg6o5cn6gcNONQEXt3Ru3wrOTrmpJiuVKQk9GOJ7eFkLL6W5WN7N19o2XHTSQtNnMfDalU/aaZULRYaKxmpjO127/alpVE36VvFyk/uRmz/SHCnnDfgSEjgv03Q==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3784.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(26005)(2616005)(6512007)(186003)(6506007)(2906002)(36756003)(6486002)(66446008)(122000001)(66556008)(38070700005)(76116006)(4326008)(316002)(66946007)(8676002)(86362001)(64756008)(5660300002)(82960400001)(83380400001)(71200400001)(508600001)(37006003)(8936002)(6862004)(66476007)(38100700002)(6636002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?U2tlQW91cHh0NmxkN3lxTXNvTFpHTFBaNVV3cWphcVY3WC9vWERTZmE1R3gw?=
 =?utf-8?B?dElNWHdZM25UUi90Vjd1M1NrUG9UU0FmT2gxTlh4RC94anZ4cnlyeFdpNnpZ?=
 =?utf-8?B?V3NDVFNSUmFyT0RGbHFXdkxKNDdyTS9RVzZMZThLU3J0cVp4emtxWldTRGxk?=
 =?utf-8?B?T2ZWa05CSzVvOTZwb2EvdnJUOGx6bXZOV3JBZ0dFNDdiZTZHSGRoWldxOGlq?=
 =?utf-8?B?QUFYakVOR1pjVGIrYkpiZ1JyYWF4ckQ5Z2ZtT2xlaHl4akZlcTcvNzJUT0Nh?=
 =?utf-8?B?cTQyWkRxZFdxbGcxaTdmVDFtSTBPbllLOWRoVTdraCtXWFl5Tzc0bEVZdGds?=
 =?utf-8?B?aHlsN3NNT0ZTUXlFMFNZS2ZnWFlPWmdST1p3OE04eVVkdzVmWXFxenI5aEhY?=
 =?utf-8?B?eGNMdTZXbzRVT1RLdTRzNjBkSldGV2xreWtVMUFIdHlXdUpXVTNqZFFJN0h6?=
 =?utf-8?B?Wi8xWGhWK0o3c2twT1htbWFHb0N2Ly9JQlRmMFJFOU9FQWpRamgrR2gxUjFj?=
 =?utf-8?B?STN6RkpoenloaFJYYk1Ua3ZaMkZHZ3d3ZTFBN1d4eGVKcVVVM0g1N2h3K3pT?=
 =?utf-8?B?VzJpUElFb2czRlF6Q0FwdVhoMy96WWlRcHZqNGVtdVlqeGk3MmVLQjVCNitG?=
 =?utf-8?B?eE9UQWdKUlQ5ZGFUWmh4ZzFWZVM0UHREdCt2L1JNQzliVWtmdXA5azI2YkRk?=
 =?utf-8?B?L1VGVEsyU0h6YTFIUERUd3AzYW4rSGQyVGp4ejh4eU4xOUZKQW80M3lUUGJw?=
 =?utf-8?B?eDRjTTR6L0VzRXVrK29Bcm5oMnRobWtsZEpDaHhrVEl0a0pwOVRTNmVhc0Rh?=
 =?utf-8?B?Sm41dUIyNmZYdWxQTThBOFN5Zk00ZWVKY0h2WENCUDhLcnFhM0lKRGpicitI?=
 =?utf-8?B?S3I3TUJwbDE2TkZDRkd4d1V6WFpWMGg2UENqRzFoVzkwWDZwamI4czM1WkVm?=
 =?utf-8?B?S3lzWTBtV3luMmJCS1NFQjJ3R1BuRFpNSkNvYXB2M2NOODR2ck1EdG91YjNH?=
 =?utf-8?B?WWljbGVra21DUDVXUG1TUVAyMnpnOWdUbTFDcUFFdFRQcmdmVDROemUwYTJq?=
 =?utf-8?B?SlQ0STZxVnoxeW9USHlTdkdWbWo4Q3ZkQXpMQStJNCtLczNBUVJZVzJvMkM3?=
 =?utf-8?B?Sjgxd1dGeTZvU1JaM1hRSDFxejBOZ05BMjg2ZW1LZjkyN3V4Z3BHb2VrRjlC?=
 =?utf-8?B?RXowSFJXQmZ3NnlZZzRzL1lSNUdjSmhNMHBSWm05T3VuL2RpK2ZRZVFtQyt0?=
 =?utf-8?B?aVQ1ZW9ab0VPcWl5VmpxSG5pcnMrNk1xTnp5ZDhyQ0pINExLZjZWYVRreDJW?=
 =?utf-8?B?TERpcTVwSkhGOXYvOUNrQ3EzNkZhbjN4d2hSSzgySU9SWXY2eGN0Si9xeXRq?=
 =?utf-8?B?eEdMQXBtYlZMYlp6cHNrcjFCZndBTExZNm1vQUFxYjhtVXNtU2ZNUHB3S1hQ?=
 =?utf-8?B?cEREZzhUWnBKaDMzbFBFRENrcDY5UGxRMTA4eWxzTXMwRzR4bjFVb2pkMDBQ?=
 =?utf-8?B?ajZVbGVPNEVDSEUxb2VVdC9QLzR2NVNzaEowRVFYZklYR0JmMVNINVoxU0xU?=
 =?utf-8?B?NndIbUMwK2ttOFloN245UFZRRnNhZWZCVVQwWG9Qd2wxVVRkbXd1RENwOUpL?=
 =?utf-8?B?dlFPeHhnL0c3cDJiZ2ZZTXVEQmpwUmJ1VDRzUWoyR3o3ZmxsL3BCMGJQa2VL?=
 =?utf-8?B?dVFpcDh0RC8rRkNXZVkvM1ZWT2lDVTJLbmh3TkRjRUo4RTZnZWJvUnh1emdM?=
 =?utf-8?B?RWt2R2VhYWRpc2Vtak5ZYWFZeTkwM3FlSCtoY1h4V2FCVnc1Vi9xNldiWmRp?=
 =?utf-8?B?NS9adENJVUZZVXFqS1hDYTNUczdkdzQwZHExSXduS3dhUUxMZ1Fna2tBYWhm?=
 =?utf-8?B?RWsvYUdJUXdjMUNhckk4YVZVYzNqajJvZm5JYjhvZVdGSVJDZnBhN2c2cjZE?=
 =?utf-8?B?TWxIVVA1N3RFOVVxT2xNcHo0RGU1eDNXZlFTTDlWckNCQXo5b0w3ZlNmMkRn?=
 =?utf-8?B?NWFCb242TnkweFp1OCs1RW1nSlYzZ1hGV0R0YU1sNHBVSjZTeFYyTTRJZm01?=
 =?utf-8?B?NVhyUDdxazhpeU9JZ2x1ZUZWdHpWc09QdlZTMlhDNzVnZnZrSjBOVlpCaTlY?=
 =?utf-8?B?MDlqeVFpdmlpUENFQUNhMmNJZ1ZQVS9OcU92RUNqejQ1VDRIU0NsQU5tTFVT?=
 =?utf-8?B?bUFXMFNwZngwTVNaY1pIVFRPNklXVUNXNHFEL1ZkOSswajFCRDZkUUpPeUZT?=
 =?utf-8?B?amU4SGg3Q3I0VnZtYjhnVkNQajYzaVVnQ08vWlJheFc5c2YvUjJPQ0h1ejdT?=
 =?utf-8?B?VnlKUFBibFJsYzQxa2draDRTbEs2Vk1iNzhrbmg5TVNOUlluR2ZJQT09?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <9F2FA22987FE0A43ACC70346B3825D9E@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3784.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 99072a0e-45da-484f-fd80-08d9edbffe59
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Feb 2022 00:38:31.0545 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 5gTrDS9m0FOlMimfKEDxXE2VtnGPzgi7YZLn7t/Yb08pp+ActoqOkx9v+zZfkC4Dk64IJqtBHzKfWN4J0ppFFcQHw9eL/RZp4hYKFjpYTejpIs2UFPcoA774J2sWVat6
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5566
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v5 08/10] drm/i915/guc: Plumb GuC-capture
 into gpu_coredump
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

DQpPbiBUaHUsIDIwMjItMDItMTAgYXQgMTg6MTEgLTA4MDAsIFVtZXNoIE5lcmxpZ2UgUmFtYXBw
YSB3cm90ZToNCj4gT24gV2VkLCBKYW4gMjYsIDIwMjIgYXQgMDI6NDg6MjBBTSAtMDgwMCwgQWxh
biBQcmV2aW4gd3JvdGU6DQo+ID4gQWRkIGEgZmxhZ3MgcGFyYW1ldGVyIHRocm91Z2ggYWxsIG9m
IHRoZSBjb3JlZHVtcCBjcmVhdGlvbg0KPiA+IGZ1bmN0aW9ucy4gQWRkIGEgYml0bWFzayBmbGFn
IHRvIGluZGljYXRlIGlmIHRoZSB0b3ANCj4gPiBsZXZlbCBncHVfY29yZWR1bXAgZXZlbnQgaXMg
dHJpZ2dlcmVkIGluIHJlc3BvbnNlIHRvDQo+ID4gYSBHdUMgY29udGV4dCByZXNldCBub3RpZmlj
YXRpb24uDQo+ID4gDQo+ID4gVXNpbmcgdGhhdCBmbGFnLCBlbnN1cmUgYWxsIGNvcmVkdW1wIGZ1
bmN0aW9ucyB0aGF0DQo+ID4gcmVhZCBvciBwcmludCBtbWlvLXJlZ2lzdGVyIHZhbHVlcyByZWxh
dGVkIHRvIHdvcmsgc3VibWlzc2lvbg0KPiA+IG9yIGNvbW1hbmQtc3RyZWFtZXIgZW5naW5lcyBh
cmUgc2tpcHBlZCBhbmQgcmVwbGFjZWQgd2l0aA0KPiA+IGEgY2FsbHMgZ3VjLWNhcHR1cmUgbW9k
dWxlIGVxdWl2YWxlbnQgZnVuY3Rpb25zIHRvIHJldHJpZXZlDQo+ID4gb3IgcHJpbnQgdGhlIHJl
Z2lzdGVyIGR1bXAuDQo+ID4gDQo+ID4gV2hpbGUgaGVyZSwgc3BsaXQgb3V0IGRpc3BsYXkgcmVs
YXRlZCByZWdpc3RlciByZWFkaW5nDQo+ID4gYW5kIHByaW50aW5nIGludG8gaXRzIG93biBmdW5j
dGlvbiB0aGF0IGlzIGNhbGxlZCBhZ25vc3RpYw0KPiA+IHRvIHdoZXRoZXIgR3VDIGhhZCB0cmln
Z2VyZWQgdGhlIHJlc2V0Lg0KPiA+IA0KPiA+IEZvciBub3csIGludHJvZHVjZSBhbiBlbXB0eSBw
cmludGluZyBmdW5jdGlvbiB0aGF0IGNhbg0KPiA+IGZpbGxlZCBpbiBvbiBhIHN1YnNlcXVlbnQg
cGF0Y2gganVzdCB0byBoYW5kbGUgZm9ybWF0dGluZy4NCj4gPiANCj4gPiBTaWduZWQtb2ZmLWJ5
OiBBbGFuIFByZXZpbiA8YWxhbi5wcmV2aW4udGVyZXMuYWxleGlzQGludGVsLmNvbT4NCj4gPiAr
I2lmIElTX0VOQUJMRUQoQ09ORklHX0RSTV9JOTE1X0NBUFRVUkVfRVJST1IpDQo+ID4gKw0KPiA+
ICtpbnQgaW50ZWxfZ3VjX2NhcHR1cmVfcHJpbnRfZW5naW5lX25vZGUoc3RydWN0IGRybV9pOTE1
X2Vycm9yX3N0YXRlX2J1ZiAqZWJ1ZiwNCj4gPiArCQkJCQljb25zdCBzdHJ1Y3QgaW50ZWxfZW5n
aW5lX2NvcmVkdW1wICplZSkNCj4gPiArew0KPiA+ICsJcmV0dXJuIDA7DQo+IA0KPiBXaGF0IGdv
ZXMgaGVyZT8gQWxzbyByZXR1cm4gdmFsdWUgaXMgbm90IHVzZWQuDQo+IA0KVGhpcyB3YXMgZXhw
bGFpbmVkIGluIHRoZSBjb21taXQgbWVzc2FnZSwgaSB3YW50ZWQgdG8ga2VlcCBhbGwgb2YgdGhl
DQpwbHVtYmluZyB0b3VjaCBwb2ludHMgaW4gdGhpcyBwYXRjaCBhbmQgaGFuZGxlIGp1c3QgdGhl
IHN0cmFpZ3QgdXANCnByaW50aW5nIG9uIGEgc2VwYXJhdGUgcGF0Y2guIA0KDQp0aGFua3MgYWdh
aW4uDQo+ID4gDQo=
