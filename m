Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C27339BE429
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Nov 2024 11:22:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B5D310E6A3;
	Wed,  6 Nov 2024 10:22:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YwINGASo";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C0C8710E1D7;
 Wed,  6 Nov 2024 10:22:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730888556; x=1762424556;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=reTSSB+I/8HKR4NXtmYxNLhct0dQQ8cbT2XOHbz+OGg=;
 b=YwINGASoqk+flMAXmeWf3PPTkCREQVHtGJRUFNTLCzBOVyni81uCyb9H
 q2lLWoF+qSG/SEbK0U2VKTM75Xahwo5dKebmw6fvo4Pq/6umF0rbmbU30
 bir6J96+BM+4Qv7ASc7sSCN0NrvlR9G4Q8VkNX93vlz/0q4ByU23PdNDq
 mJeso39NO1DOdBEmbtEu8Eq33eVPsqpYT4an1t5aTQAzIZyM/4tokL9PJ
 xXba0sfBCCLH7ZC/Vd+uj8vQLLCKTsOIHzjm2tM/lHsdG0L752+aN2SnS
 7tfbH9MDJgdwUAdJ+eKd0YwZuZqf8Ip0bTxcS0NvlvA/rJLKkPPQ1AWhy g==;
X-CSE-ConnectionGUID: gGYVvr+jQxW9wq8hT7MuLQ==
X-CSE-MsgGUID: GqcqzJX+T1ygm/5I+F58pQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11247"; a="18298548"
X-IronPort-AV: E=Sophos;i="6.11,262,1725346800"; d="scan'208";a="18298548"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2024 02:22:36 -0800
X-CSE-ConnectionGUID: LTtclg+XSwmJ4TWvUjAZPA==
X-CSE-MsgGUID: Jv5FK6peSVCghk80LlsA/w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="89284017"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Nov 2024 02:22:07 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 6 Nov 2024 02:22:07 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 6 Nov 2024 02:22:07 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.49) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 6 Nov 2024 02:22:06 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mJnvkp1ayxSVYL23H/NoKwXFJCGZOPgqWqD3/ay4CaZ1CcK7vHIBTMXdr6nc29JKTNnWlDINcscWqfU0d3tqBQb/Tr3oxKxppAdjjYw9B1x79AwMZCjThF8zicpJeGz6ZR/xIlICVnxAqD0Cr8sW19DvruI6SA9tu/Mkeb6ALwASmA4vaovb/5jVMOgSREfQ3ACz6H4ty9NV5QYVMMzPfMpGsjvZAGC5YrItA/BEYOvxc9qaW8FGdqejhTCIqS6iUddewpcjDXaYwbDQAHrVyj7JE/uMFKJYrh92S5nTp1AEsD9pLB0qQvXD/qFnPrgMqCkVoFV8r2X3bpzv/hRVCA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=reTSSB+I/8HKR4NXtmYxNLhct0dQQ8cbT2XOHbz+OGg=;
 b=K0ZtwVfrKFHpoEDfAJl2Z4V7aLhEhIYeNklOwJVlUeFLFhWY0pIdKSujqWJxGTn8LCLrrFJ+Rf2JZIdEsiav68qmoA8kbI5pFVkffrr0/aNkqFqGpsHJOB8yMim1GPHFYU6eTYK3DlK93kImAshgsa/a2EgEXIhABnsykJ9+dbwlDyy880oK6pb6Yu7EK7lC+v4ii+YTJTeSOAXJmacX7ywI0LHp9vf4sbEowuXvigbZrtXirUYBMtHqaZnbV9Lrxs2m+VnfjJkUqCe/PL3c7CbqLnMOp18qnl2P6IQJrZ8Jm3mPxGkPn9esUUsgCagiVQq3O6bbIcyTWmj6ffmIvg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7777.namprd11.prod.outlook.com (2603:10b6:930:71::14)
 by MW5PR11MB5788.namprd11.prod.outlook.com (2603:10b6:303:198::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.32; Wed, 6 Nov
 2024 10:21:59 +0000
Received: from CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8]) by CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8%4]) with mapi id 15.20.8137.018; Wed, 6 Nov 2024
 10:21:59 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 06/15] drm/i915/display: convert HAS_GMBUS_BURST_READ() to
 struct intel_display
Thread-Topic: [PATCH 06/15] drm/i915/display: convert HAS_GMBUS_BURST_READ()
 to struct intel_display
Thread-Index: AQHbLt3ZCNTq6hzRCkGclU/CB5GiU7KqDbAA
Date: Wed, 6 Nov 2024 10:21:59 +0000
Message-ID: <c370a76f4fe2df05e3d9fdcfb9d1728d2dae9d69.camel@intel.com>
References: <cover.1730740629.git.jani.nikula@intel.com>
 <556f3636528357cc9149f31b348dea80c4e0bda8.1730740629.git.jani.nikula@intel.com>
In-Reply-To: <556f3636528357cc9149f31b348dea80c4e0bda8.1730740629.git.jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.44.4-0ubuntu2 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7777:EE_|MW5PR11MB5788:EE_
x-ms-office365-filtering-correlation-id: 2ceece10-ac5f-4858-06b8-08dcfe4cd906
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?WnJRdnE5b2hBVVpJZmtoZklac3AwNVZVbWRMc0J4RmtFTHBMSVh1VDFtZlVC?=
 =?utf-8?B?Wjd0WHFEaWQxV1FxQUJGQVg4UzdjVUFiOGZ2eWkxOWd3T2NwSEpKSVpYcjFz?=
 =?utf-8?B?WVVBclJ6V3lTS04vOS9KZWN0dWR1Znp4UGVQb2FyRHRsUE02Qmo4N1k1MUJr?=
 =?utf-8?B?a0lzdHdyTU04bjZYVWl0cjkvQlhmR1pQSFBsTWNrWEhKSHVQUmFqY0ErakNO?=
 =?utf-8?B?cDNiRDNycTBQb0JuZ2E4T3A2SlRwcXNxcDZ3NXIwQnRJMHlSMlhOTk5oMW9E?=
 =?utf-8?B?SzZ5Z1pXR0FHMkJRa0tpVnJWeERmWXUwaUQ3STdTZHJsb3pSdVFrYTRuY2M0?=
 =?utf-8?B?cmxpNEdTREJNWW0wUGwrZ1ZycEhvd2RaUkdLQjJYTjdKclJzd2pPb0UyaEow?=
 =?utf-8?B?U2xWQTMzQjJlY2dZNXJBMUsyM05YbWo2WTNiMGxWSEI5eHRnckxEbWM2YTQy?=
 =?utf-8?B?Vi9udzBOclo1ckNiVnI0QkxCWHZPSnB5WDFRVTdoLzB2aDRobnArOHlQeGlE?=
 =?utf-8?B?dFJaeXBGMk1pbENIM3VEdGQyTEpPSjJyK2Q0NHl3R3EzNXJLZzBTQWNKWGJs?=
 =?utf-8?B?dUQ0eC9ZcC9CTWRiLzNQTWVZNFZhcTNoL2VRVGh1OCtDNnc0WUVtOUthc3VP?=
 =?utf-8?B?Z242VFppazBsV3JucHA2WHlrQVV1ZEc3cC85c29TZU8yeEtMV0dGZlVGWlJ5?=
 =?utf-8?B?S05TYjdrOHBQMzhVQWZYa1VYSWhNUVV1OEU4bnl0a21YQ2c3UmNGaVBYd2wv?=
 =?utf-8?B?Ynd3ZmxsdmdDeGVDUGllVS9ITWlSbHJ5OEZYdm9HQUdOQzMwR1BZZXRMN0dv?=
 =?utf-8?B?aldJeSsyQTdobkUwUmRlbnhjTzUxWnZnMUphbU1xQnRuNmpBdXRIZllPMW54?=
 =?utf-8?B?Zk5NMEIvVk1QZnRodkpGbWtZNkpDaG5jTnQweThmU2RGcnArSk9IRmFEUHpn?=
 =?utf-8?B?bkZZY1daTnhrMDZBV2V2ODBlZ2o4VzBXaUhyK3lqWHpJVlhlNmN3SlgwcUVw?=
 =?utf-8?B?SElkcEo4aVpta2wrbVFrQVRLdVBkUGxGTWxwWlJRV1ptSjJYZFl0SDM0MzVV?=
 =?utf-8?B?NktPZVZsOWdBMVBnUjdDdytOQVJLR0Q0cUQ2QmZFM3hVM3RjMlk0aHcyM1Bz?=
 =?utf-8?B?Q3ZEaWpHSVBGRTZMMEFtRWp0RGd0bklWbGU0dU9GaVhVL1dyOWkxa0JXbDBO?=
 =?utf-8?B?aFB3UDM3b29XR1pKd21nbFI2VVR3OXF0OU8yOXYzbzY3UTdxWTFISkxtcitx?=
 =?utf-8?B?V0s4dUp5Y0U5OTc4YzlQYmk1MnZEenE2bXhMdlBSUnBxaFFxOGIxdkdPQVpH?=
 =?utf-8?B?Tjg4aTY5YzRzbGdJSzcwN04vUEVMd01ZZ3NLSmNaQW52NmVTYVJHM2tSMEZL?=
 =?utf-8?B?UTdETWozVHdGRUdlNC9DcmhqM3F3YjVoKzJzSDVpWlRZWWtzdzl2L0MyQnJw?=
 =?utf-8?B?YXhCbUVOMC9mLzk3S04wWTNhOGo0bVgzN2xQU3VrL1BJbXU4ZWwwdjN2Z2tK?=
 =?utf-8?B?elUwVWxFUVFKSDVubkMwV0tRWmkzTXJ2NE81VUd0cC9ybm5SYWJSWVlYMExq?=
 =?utf-8?B?aGVWZEFtcWd2ZW1Ed2hHbk5UVWlub0RKNmZnSWljQmVLbEl1TVI3aCtQdW9s?=
 =?utf-8?B?cTFwRGQwWTdYRFhCMURjb1c0cXVqYzh0MGxQdTZEckR2MnlqMWZJdEM0L29U?=
 =?utf-8?B?NDdQL1pTanpTWkEzNTR5WXp0Nysrd0Z2bjQzSUpqaHIxbHZuTERuVGNGNFQ2?=
 =?utf-8?B?OHFkTHJ0ZTVsaldaZ0NYYUZxU3NZRXJaSlkwUjU2bGlRVkxHd29tYU0xRlB5?=
 =?utf-8?Q?a3+TLahtTKswHMpeSJ95x4jHY/o8MbM/3JWpc=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7777.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Uzk0bmtWNEp1R3h6TXRvVTA0MExPdmxOa1Z6dUlHd244Q3o1ZXhSRGQzTk1y?=
 =?utf-8?B?UExPdUJGU2VEdVRmYVBSWWJpempwTGRJSjBjWVVUVEErTnpPb3Q1UlhTZU1l?=
 =?utf-8?B?blRRTXBtOW9VZXA4ZWN5TG9EQTdncDFNNGkwR3ljSEVWc2M3dkhaOXQyUWJJ?=
 =?utf-8?B?VEwyem1zWTE3L1U1cWRjOFlqQWVIWTcydnVkLzVvb2JTVmtEYllWUnBuMzJr?=
 =?utf-8?B?eXhNU0NUa3IrMlBqODJoelF4bHhvUVB5cG93dGlNVzYxU24vUmVuR2V4dVRV?=
 =?utf-8?B?bmxUNnA3ZWo1ekV1a3F5Zm12K2N1bDlobDZ0dGduNXEyckd1b3hSOTVaUWRu?=
 =?utf-8?B?Q1hDb1J4TzVzMW5VOG1BMTBrZnNSd3pkTS9uMEVwM0ZLbmpuc0tMUjFibGxr?=
 =?utf-8?B?Zm80OFd0bXFtSE9Kc3d6aW00aWVYRmthVVU3allheFB6Y0U4bkt5RkpMOUxv?=
 =?utf-8?B?UmtaMkE2VTRWQkNPb25md3FsTVJMd1VBUm80d3h0NTNlWTExMk4vZTgvQy9W?=
 =?utf-8?B?TnlPMEJNcW5jajlaZ3FiVFJOMW5zeTFXa002Uk9RN2FnTjNhakVPcEg0bVhj?=
 =?utf-8?B?YmwyUEJRZjh0NVUyZW5yME9pRG5iODJYb0cvOGxVYkFTM2kyWHM4REovck9F?=
 =?utf-8?B?cVFIYzB3MmM1OGhUZmZmbjA4QjRoeWZ0SWI1ZVIrTWYvdW54QXZGNEpSbG5E?=
 =?utf-8?B?UUJkZFZ1ekh5UkNUUE9GY3VBd1kvL0F3QzM2L05YaW1ZRVBtQTFYcEFJTmFq?=
 =?utf-8?B?ajVZSk95eDZ1UTJZdDRmRU5mS2FPN3BiMWJ5Z2V6VXdWMVhxNmsyeGRJcncz?=
 =?utf-8?B?V21oRU5FRWdCUjFoeGdBdjNpT2l1bTh6Q3VoMEFCdU5aNDZYV2hFaEhzdUV5?=
 =?utf-8?B?cEwrdjduYzU4RmR1TU1meGRXQ1RVb3JLYmdTNCtUbjBIdk9CZjZQUUMrK2lD?=
 =?utf-8?B?cVp6YzlxU3IwaEpxUXltZGhiZmJEMjNkYnFBZy92TFhoWFcrY1RZNS9FOUdw?=
 =?utf-8?B?ZlhydW1idWtPdy9jZjduK2FMTG9GQ0xoZkdrTHFmZ3lPeUM4NWFzckZYMSt6?=
 =?utf-8?B?dEljVU51R3BZZjg4NlBKWEVqZFVRa1JjN3lhWllQdHB5dmNvU2tDWXJTYld3?=
 =?utf-8?B?Zkx0MGhacXNjOEd4SkVzRWJPVmNCSVl4WWxkald5TFJBTWI2cXB6VFVPOUx6?=
 =?utf-8?B?ZTZ4b0ttTXVlRjJZYk4wMS9LYXhOUGhYUnpPOXI3OW1GV2FkeVFycndweDUv?=
 =?utf-8?B?MG5RUDBobkV1R3Z3TmplVlJBSmtRNlIzMnA4aHY0RVF0K0Y1ekFWNkcxZnBN?=
 =?utf-8?B?dEZ5cnI4MS9GdDBEa1cybVhFWHpTZWR6SUNUNkNBZG1IMU0rdDF1U1dmdXMw?=
 =?utf-8?B?RGpSQ3dIdVdPWDFKLzJxZlREcTJNZ3BNWWNNL1Byd2RpZmxzMUpZcll5STc1?=
 =?utf-8?B?cG42ZGkvbDBaeDY4Unc4SlhyT1lpckVISjd0THpDR0RIcnIrK2NhbFVPNnE5?=
 =?utf-8?B?c3NoT0NUVks4bVJBZXR6TmgycEVkTk1JNVVFVk9TWGJESkJVcStwSUZJeGow?=
 =?utf-8?B?cDdtdWFRZzdzWlNIazNjSWk1T01Ua0NkMWtyMkViS3R4TVZFajl2MDNuUlFK?=
 =?utf-8?B?UW8vQVIzTC9salREc2pndFUrcFkvTWpkbkFPaStNNFNTdDA1cm1yeWphcDRP?=
 =?utf-8?B?VXdBOGxxZUNVY0lwVU1kY0JsTGkyQXNpanNhdE9WU1o5SGpUdGFCa3B0eDNP?=
 =?utf-8?B?ckwxaG1YcE96TmZNcnQyZmpTS0VtcHUwampVYzNOdGtXSFVGU0JRWFZHZUto?=
 =?utf-8?B?a2ErVGNtREkxRDJPUE8yVGozQlAvOTZOQlpjSDJNM05QVkh3YWo5OEFhWDQx?=
 =?utf-8?B?RkNwcmR3OTVUK1VqbnJLdEo3b3BsbHFmQnkxZGo1OE5DVFNvNEVHQ3dTZTRs?=
 =?utf-8?B?VmJSZEE4TDJBMEtjRjFhU0EyNTc3QktIaVkzQ04vanBsZWkxclVHcEVpbDlj?=
 =?utf-8?B?Z1p6RFpzazh3djRuVGlSWkk5cnpwRGJkWkVzOFJhV0xwVnlRNEszakM3aDJo?=
 =?utf-8?B?bytweTJOanY5Skt5N20rTlMxQmtEdVVITGxxWi9leFRqdUhhanFYSnBVZ2s5?=
 =?utf-8?B?YTN4dEExUXc5eXdFelF5cHZaRjEzdy9ZYTgxN2tqQ3g4VzA1Q2kxM3c1cE13?=
 =?utf-8?Q?HperaVe+TCpc8DVquAu40Xs=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <BF49E06392C42F489E8297147D899D37@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7777.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2ceece10-ac5f-4858-06b8-08dcfe4cd906
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Nov 2024 10:21:59.1711 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: fuFKlpSlkSZyYni361DqqSYQWOs6uXb9FBFQGu/JF3GT83ntIYydFpslahh6PNf6cxaTPR/h9lGJB6NRlTrpLuTOLipGTesV8KZfBtcdDAw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR11MB5788
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

T24gTW9uLCAyMDI0LTExLTA0IGF0IDE5OjE5ICswMjAwLCBKYW5pIE5pa3VsYSB3cm90ZToKPiBD
b252ZXJ0IEhBU19HTUJVU19CVVJTVF9SRUFEKCkgdG8gc3RydWN0IGludGVsX2Rpc3BsYXkuIERv
IG1pbmltYWwKPiBkcml2ZS1ieSBjb252ZXJzaW9ucyB0byBzdHJ1Y3QgaW50ZWxfZGlzcGxheSBp
biB0aGUgY2FsbGVycyB3aGlsZSBhdCBpdC4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBKYW5pIE5pa3Vs
YSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPgo+IC0tLQo+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kaXNwbGF5X2RldmljZS5oIHwgMiArLQo+IMKgZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9nbWJ1cy5jwqDCoMKgwqDCoMKgwqDCoMKgIHwgMyArLS0KPiDC
oDIgZmlsZXMgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQoKUmV2aWV3
ZWQtYnk6IFZpbm9kIEdvdmluZGFwaWxsYWkgPHZpbm9kLmdvdmluZGFwaWxsYWlAaW50ZWwuY29t
PgoKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
aXNwbGF5X2RldmljZS5oCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rp
c3BsYXlfZGV2aWNlLmgKPiBpbmRleCBjODYxYTYxODM5YjguLjYyNzljNmM2ZTgzMSAxMDA2NDQK
PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfZGV2aWNl
LmgKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfZGV2
aWNlLmgKPiBAQCAtMTYwLDcgKzE2MCw3IEBAIHN0cnVjdCBpbnRlbF9kaXNwbGF5X3BsYXRmb3Jt
cyB7Cj4gwqAjZGVmaW5lIEhBU19GUEdBX0RCR19VTkNMQUlNRUQoaTkxNSnCoMKgwqAoRElTUExB
WV9JTkZPKGk5MTUpLT5oYXNfZnBnYV9kYmcpCj4gwqAjZGVmaW5lIEhBU19GV19CTEMoaTkxNSnC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAoRElTUExBWV9WRVIoaTkxNSkgPj0gMykKPiDC
oCNkZWZpbmUgSEFTX0dNQlVTX0lSUShpOTE1KcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoChESVNQ
TEFZX1ZFUihpOTE1KSA+PSA0KQo+IC0jZGVmaW5lIEhBU19HTUJVU19CVVJTVF9SRUFEKGk5MTUp
wqDCoMKgwqDCoChESVNQTEFZX1ZFUihpOTE1KSA+PSAxMCB8fCBJU19LQUJZTEFLRShpOTE1KSkK
PiArI2RlZmluZSBIQVNfR01CVVNfQlVSU1RfUkVBRChfX2Rpc3BsYXkpwqDCoMKgwqDCoMKgwqDC
oChESVNQTEFZX1ZFUihfX2Rpc3BsYXkpID49IDEwIHx8IChfX2Rpc3BsYXkpLQo+ID5wbGF0Zm9y
bS5rYWJ5bGFrZSkKPiDCoCNkZWZpbmUgSEFTX0dNQ0goaTkxNSnCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgKERJU1BMQVlfSU5GTyhpOTE1KS0+aGFzX2dtY2gpCj4gwqAjZGVmaW5l
IEhBU19IV19TQUdWX1dNKGk5MTUpwqDCoMKgwqDCoMKgwqDCoMKgwqDCoChESVNQTEFZX1ZFUihp
OTE1KSA+PSAxMyAmJiAhSVNfREdGWChpOTE1KSkKPiDCoCNkZWZpbmUgSEFTX0lQQyhpOTE1KcKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoChESVNQTEFZX0lORk8oaTkxNSktPmhh
c19pcGMpCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
Z21idXMuYwo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9nbWJ1cy5jCj4g
aW5kZXggZTNkOTM4YzdmODNlLi44MDdjZjYwNmU3YTggMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9nbWJ1cy5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9nbWJ1cy5jCj4gQEAgLTQ5NiwxNCArNDk2LDEzIEBAIHN0YXRp
YyBpbnQKPiDCoGdtYnVzX3hmZXJfcmVhZChzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSwg
c3RydWN0IGkyY19tc2cgKm1zZywKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHUz
MiBnbWJ1czBfcmVnLCB1MzIgZ21idXMxX2luZGV4KQo+IMKgewo+IC3CoMKgwqDCoMKgwqDCoHN0
cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0gdG9faTkxNShkaXNwbGF5LT5kcm0pOwo+IMKg
wqDCoMKgwqDCoMKgwqB1OCAqYnVmID0gbXNnLT5idWY7Cj4gwqDCoMKgwqDCoMKgwqDCoHVuc2ln
bmVkIGludCByeF9zaXplID0gbXNnLT5sZW47Cj4gwqDCoMKgwqDCoMKgwqDCoHVuc2lnbmVkIGlu
dCBsZW47Cj4gwqDCoMKgwqDCoMKgwqDCoGludCByZXQ7Cj4gwqAKPiDCoMKgwqDCoMKgwqDCoMKg
ZG8gewo+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBpZiAoSEFTX0dNQlVTX0JVUlNU
X1JFQUQoaTkxNSkpCj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGlmIChIQVNfR01C
VVNfQlVSU1RfUkVBRChkaXNwbGF5KSkKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqBsZW4gPSBtaW4ocnhfc2l6ZSwgSU5URUxfR01CVVNfQlVSU1RfUkVB
RF9NQVhfTEVOKTsKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGVsc2UKPiDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBsZW4gPSBtaW4ocnhf
c2l6ZSwgZ21idXNfbWF4X3hmZXJfc2l6ZShkaXNwbGF5KSk7Cgo=
