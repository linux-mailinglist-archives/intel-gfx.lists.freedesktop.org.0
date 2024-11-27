Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2273A9DAD5D
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Nov 2024 19:50:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5202610EBB1;
	Wed, 27 Nov 2024 18:50:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GiWJDMuE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 41A2010E072
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Nov 2024 18:50:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732733437; x=1764269437;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=bAa8fWld5KQr3lfn/OU37hnn6DEHdv3a7Kel8QgHpP4=;
 b=GiWJDMuEOkNh+iQ0Dcyj4DKdymRV0xmi//gXrViO0KbYppiAiK4i+0ir
 VTWB6o+K7yg3yfBueK8fVaqfkROw1uPCclsihzBYGcVSdkpvTCsXCGw0q
 OrkFvkWt/vnQqSxCYhppuj80IIv8pCV1dtEwa/1BdldqAP2ERRe25KMfc
 +bdgaxRyyCjFyIE+8emSkXyZsYsUvYFTfSSsxXxOA8kqYtZKXclce6Kkq
 5Nx96iLzK8zCzdTc1Dr9pagcBJHNqJJBTob6OtusPwMCgTfX5hz2JKvzr
 DIoz+yl+954Hy6AP0erziXFOkvhsGhpt5zeGdVhMMV2h8YsrXcu5RJe2R Q==;
X-CSE-ConnectionGUID: k064rH7eTV6seJYczuGAAg==
X-CSE-MsgGUID: at6ZBP+8Q3KJ3MDPNov20g==
X-IronPort-AV: E=McAfee;i="6700,10204,11269"; a="32904069"
X-IronPort-AV: E=Sophos;i="6.12,190,1728975600"; d="scan'208";a="32904069"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2024 10:50:37 -0800
X-CSE-ConnectionGUID: jifyVC60SpmbUyU4Bybkog==
X-CSE-MsgGUID: qZnebKF3RECUvlA2cxns0w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,190,1728975600"; d="scan'208";a="91839202"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 27 Nov 2024 10:50:36 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 27 Nov 2024 10:50:36 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 27 Nov 2024 10:50:36 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.48) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 27 Nov 2024 10:50:23 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=r2+W6m+VFmkBf4zyDsN0ol1Osic2+ZmIyqgCJHCtvd2AXWvySopDc0rmRGSqsQOYQtoQxhwjgzYYxLHQ8kINJ8h86kcEMzvZ2GTfQTWKcJJ1U1MUgdAoGop0M1lAJ6WwPw1TfWkirsMbIQLinYiBOUIRTqbAe+RPzfdZJ5r52FGbqqGvDvo/x7ujTSNt+Zig11Ij12xbdLX50xlnvVJKqrhqccOhl/4EInjjmJ33Tx+kfo9Qc/K4/6Wnr9nqIJ7b6ZVKJnrVT3MReZzJ6dxxoILicxrXXOE6ehV4RyVI83mazzvWTRZt1If8t+NxLfFjG6kUIFo9OaaKcp+Wv0AwbA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bAa8fWld5KQr3lfn/OU37hnn6DEHdv3a7Kel8QgHpP4=;
 b=chraNvNYuHg6ny7oPytHB5F7wJRQv36RT49hAA+uANODRBMywhmKiKvOV3j0LuxAVXJY9xUDVtQ24kb70F8+Htx4qe1JS3TtNJWsFnuh6/4JwQU59ysgCslio3IaXmCvAe/IHEbKnNNPFTIt7xf7PWuDeFrgFFIIHf7DTtBVOsHLJtAsP+WKV6ZhDm7dbAGdtr9w+dP5yO11gHneWLiVUAaQAE19Sp+bS37gyhGhfOuETux9My7VC9LZ/euYAIOWPtiJU6kiMHUPnaDF4bIv5jYcWAP6WBeR5KBciroY85M/RT0+0sGZORUXnzKqtExpz7u5D9cNbKrMEtZ8KEiTEg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 MW4PR11MB7007.namprd11.prod.outlook.com (2603:10b6:303:22c::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8207.13; Wed, 27 Nov
 2024 18:50:20 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6%6]) with mapi id 15.20.8207.010; Wed, 27 Nov 2024
 18:50:19 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH 3/4] drm/i915/dsb: Nuke the MMIO->indexed register write
 logic
Thread-Topic: [PATCH 3/4] drm/i915/dsb: Nuke the MMIO->indexed register write
 logic
Thread-Index: AQHbO2ssI6lc9wgQG0GgxKVjxe0xILLLg2Yw
Date: Wed, 27 Nov 2024 18:50:19 +0000
Message-ID: <DM4PR11MB63601B2A2D988AB4D008904CF4282@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20241120164123.12706-1-ville.syrjala@linux.intel.com>
 <20241120164123.12706-4-ville.syrjala@linux.intel.com>
In-Reply-To: <20241120164123.12706-4-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|MW4PR11MB7007:EE_
x-ms-office365-filtering-correlation-id: 638d54c9-0655-4420-d873-08dd0f14571f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?d29NeGh0TTlxbmwwY3dTNlNqWFMyaEJLalRqS1UzbUV2OXQrUHlNaUk0R3Av?=
 =?utf-8?B?c1Z6aWVOTnloYUdXUy9aeVRiSERiMWlZYnMycWFyQ2c5d05URTgyWmNPNDdG?=
 =?utf-8?B?WFdHaHJyWUlSWkFsTDNIQkcrSlhuMzNEZjdZbjhOUDBmZEFrMk05M25CS05O?=
 =?utf-8?B?TXo5WEczVVhYblZEN0ZrbTgvR1dRVWJaQmZRM3Z2WENSSk9Id3ZacWhuTlZR?=
 =?utf-8?B?VDl0cEJ4NUVod3hYcjgwaXZBZ2todFpucDlYWEVrYWJwZ2RqemlNNkI2d20y?=
 =?utf-8?B?V3NhYmtQUlp1ZEduMGFWMEk5MWJaanloaEMwV2xCV1VXeXdMdmRmZnZ4UmV1?=
 =?utf-8?B?SFRISFIyQ29lRndSVjVrZTMvOW5nYTgzQUwxNklHT0MxVkVPc29ZdUZHSmdG?=
 =?utf-8?B?eHB3OHRBUmNvL2gxUFJ4N3lRTzRCbndrT1ZvazYyOTZtdll6YVQyT2NiVURw?=
 =?utf-8?B?MEdsdGpjbzZ5T3Z5cGEzNy9tN2p3SmlxTmhPOXNNV1IxbVcwRktwbFZBR0tZ?=
 =?utf-8?B?cGFNd293dFIyT0FJMGdiR0NRcHF4bnV2MmZXcWJrSXZyaGFVdk1MUkZnUnhw?=
 =?utf-8?B?cnRPdkhHYU94dEkzaW84WDBYSnBGZUlycm5QYlFsM3NtU0l6b2F6RzE4Ykxy?=
 =?utf-8?B?cmpwbTFIc0R0N2FTNGczakFlMFY5M29PQlBOSk1rN0dTWGQ3OCtKY0IxQjZG?=
 =?utf-8?B?VmI2dXVZVzVJTHNJL3VWRGZLM0RuRERwb0ZOUFE1NkduMWdOTTZsalFIRll6?=
 =?utf-8?B?WjYvY2MwU3ZKeW5RTUpTd3k2ZGV4VjRaUWFVcituNFhkUXhkdi9uWjdxaW1t?=
 =?utf-8?B?bUh5NWs2WmN2ejdrRXIyTzcwNDRFVzhvYWh4RGxLRDQwdGFnZWpsUkJjaGIr?=
 =?utf-8?B?U1dEOTZyS1RFU282ZlFoWXk2OG5WdmpIZnpUUjRNbzJMN0did05JUW5wVjVF?=
 =?utf-8?B?R1hQeUFPeGJFSTVVS0ZoWG1ES2RFK0FIV3cyK0pFRW13UXhMQlBCTU9WMWdw?=
 =?utf-8?B?MnVHRW5ZMzBSQldoTkJKR1ZESnZIRU1RR0FSNlJMbklkam5ZTnJiektmT3ZK?=
 =?utf-8?B?YStwdUUrZFU2M2M5Y2Z5S3l1S2ZkMlFwV3VrcE12UnhNdUxUN00zY05sZHJH?=
 =?utf-8?B?SUo5a0NHL3o2Qy9Ra2E2SDVRbDRXdlJmUEUxd1BrL2pGaWtqckpZZURXcmZh?=
 =?utf-8?B?YThrMkJJN1hiei85VFY4eHNyVk9tWUxtRi9XOWFicU5JWExndXpXRnA1djRG?=
 =?utf-8?B?Kzk3aXllbWhVZHRZNHJWQ3U1VlNiNE5HV3dacHJjWnZWWncwWllQRDM2QXo2?=
 =?utf-8?B?bGUxemFFRE9ZaWRwOXR6ckxFWGx4ZEFjb2N6WW0vNGdvRlpVeVEwK1NVM1hD?=
 =?utf-8?B?SkxiTWZEQUpjbG9RK3RHT1JObHlkWHpSZENxVDFJQk04ZjA0cmlQNHpyQldZ?=
 =?utf-8?B?SklMdEhERVhaSFF6QnRmNFdudzR3OVVwbFE2c1c2YnpCK3MxTDZZbFJJL3Np?=
 =?utf-8?B?T0RjWm9FK3RpdUlNYzdIUXc4SVlNZ0ZjM3hOZUlMKzBzb1M1VlZFYXl1NkNJ?=
 =?utf-8?B?ZnVjd1NRek5GeDhHSlJGeWE1TzB5MVRXWEdDaWp2ZFY3bFcwNkxpTjk2U0pp?=
 =?utf-8?B?NGtIeGNYd1prY1J1bHNsMDBMZmNrQTZWY05pOWR3Ulk3WXZkZ2xwdnppVmk0?=
 =?utf-8?B?YldhR09JTzA0VCtJVHViRHNqdVhBQlQrdW50c0szb1ZmRllCczNXZjlpbFZZ?=
 =?utf-8?B?cEY0UU1COTRROUNSenQ4M25KTno0Y0p2TExPbW8zMVJzdUgybCs2Q2hKcjUv?=
 =?utf-8?B?WUE0UzRNZ29lcmlFano3SW9GQ0RkREQ5QU1JUnRycWF6MHBvRkJjcnl5ajR0?=
 =?utf-8?B?U0E2YXl1ck1WQzFRZWFGQy9OMDM2UjkycnQrM0YzZ2tWb0E9PQ==?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?WlNGU0g1S1l2bGk2T2tiMzVKZ2NkUUduZUtmTkFqblAyUzRUekV6aS8rZW52?=
 =?utf-8?B?eEpKRWZCTlFOdjFGc25VNXFGdWtOVW9ja3YxR2FGc09QK1A4MGthbnNwdUxC?=
 =?utf-8?B?N3ZHZDcvMGxOTVhQSEJZRVVGamptRURSQjQ0eUU3MmN1OTk2WmFHbDFoc3Rj?=
 =?utf-8?B?UGFUcEt2akdCTTlmcitTMW9HN2QrSHVQQW9JTjBSMGl5SnFpd053Znh4Mzkz?=
 =?utf-8?B?OG5DbVBSd2k2cTUzRnQxcDZxMytjRzFjc2U0TmdEcXlYM0IxVFdJdnlKTTUz?=
 =?utf-8?B?cEFYV1ZncXdTWDdqTlF1MzhwUXdNeXQ4bS91MFB6ZU9iZmNDM0cxamJ4N2Rw?=
 =?utf-8?B?N3VGUWpWbWRweGMvbzhaRlFUeFI3cnkwWXRHc1lCSWZuTndlMHBiMUU5Z2Nr?=
 =?utf-8?B?Yk50aXljalBzRWU5Rldtamd4djF3M1Bnb29ncmQ3R0VEZnZROXR4aGxaWlJD?=
 =?utf-8?B?b3N2eDJMQ0ZyUzZRcE1ZQUwzMkFnc0laMTlXUUFHMTlDUVp6cDdkTFBqZVFl?=
 =?utf-8?B?UE9JUUpiTUtqQ2FNVlhDTy9Lc00wcXMrMUxJZlcxT1dGNTZDSzZjMlhoLy82?=
 =?utf-8?B?dEpwQStZMDVjUVJnNCtLYmVmVlJQRTdGanRUaVRxRHd5SDdTYkxxenZWNGVh?=
 =?utf-8?B?Qlk3ZFpmVHltcWZGM1AvRU5Ja3RXWFZKZ2RFeVkyNkhJWVo3M29RVStCVm5r?=
 =?utf-8?B?ZllwYWtqRHAzamt4VHMvU3NialFVTXJtMDVGYzdmdWdXejVHM0l3SkliL05W?=
 =?utf-8?B?eEFXTFZnS0NET2E0U3gwZlVLcXRUZDlKUFdwWmN5d3JoTWJJRXVTekNweE5V?=
 =?utf-8?B?VnJJRXpNcTJsSWR2K0ZuUDYvc3VyOG9TU2JZNk81dmk4cmsrZlE0M0kvZTJp?=
 =?utf-8?B?ek1zd2w3VkFFNmFYdEh6eFFNeUlydEpSc2kxTHpNOUhoU3ZmNHZWa3hZN3hz?=
 =?utf-8?B?ME1lVy9iNGpSWlU3b0VkKytycWw3UTlza1FEZVpoQWNlY2dDQXJmRGIxdGZv?=
 =?utf-8?B?ZnBNeUdsUVEydGtrMUM3clJuajdITWF6dGh6N2FOcFNrWEJEUUUyd0o1RHB3?=
 =?utf-8?B?amprWitWRitwNFRYQk1BL1dMVnJJSHU1c2NMcHdQYnFrTDcyU1Q2M2JWWi9w?=
 =?utf-8?B?SDcxaDdMK2dUVE1LTWJENmZ2K1V6RFVVRXFBMlU1Z2tYclV2dld3WEZLSWdh?=
 =?utf-8?B?SnVEZEg1eTJrNi80ZHp4alora0FuWnZ3NW1sZDJKa3Nwc1NxQVZGMTgrU2I2?=
 =?utf-8?B?cGNvYVJDdVorOEl5NWN6ZVl2Vnp2UHJvU2duOW52NTdxRWlHQVVBSU9hWGxB?=
 =?utf-8?B?aVlJb0VxSWY0cHRXcDFkdUhMVzdUeXdXdmxDdG03eTFXdjlOZWNWRFZVUUFz?=
 =?utf-8?B?SnM5L2QyUXBSR3gvY1VTb3gyRTM5V1c4ekMwYjkvWlVKNVRIOHJaYU1VRjFo?=
 =?utf-8?B?VXYwK0h5SEpqT0NWSlcyL09KblA1WnJPYk1xZUVKR0Y3a2t6d0UreW41K2hJ?=
 =?utf-8?B?aGxxVFlkTkpCc1lzek1uMzU5UWF6TkI4QUpiSGdnOC9lTlVyQTQwdjZTOXNO?=
 =?utf-8?B?Vi92aStKekZ6dEJFRUd5S0cwemxGZGpkZkQydWNJTE53N3pPNC9IdHcyWDk3?=
 =?utf-8?B?U1lKSVJuTFVHZTRFMGoxSTJrd3NVSkpob3RER3NNNUJpTW10bnlHaE1oMFZs?=
 =?utf-8?B?cERDVTBmMEJkMjRSb0lEdkswMkJQc0JhQ2hnYnNRWi9oYTRVelBZeUYzNllH?=
 =?utf-8?B?amRZS2hFRGZmWmxaR0tPS0Q2RW5tUC9kLzErZ1pDZHZxOVRZOEZuNW4vQ2s1?=
 =?utf-8?B?ekF6R1ZoZmx3UG5zT25BVk8vL2NWQXJ3MWFsRFBjVTcyLzNReGhaL012UlAz?=
 =?utf-8?B?ajJyc0JkVzNnNVZJZ0ZnQzNyNDcxOEJ3akhZTnhGa2hxNVV1b1pIaDUzQ01x?=
 =?utf-8?B?ZVJ1ZGd0ZUYzWFBGbUNOWm9uVlE1ZkVaaVFpTTFSOFE2UWl0M1BLcXNnb0U0?=
 =?utf-8?B?dWg5OUZoOU82ekxiS0ZyT1drZFdYb0VrUlZzRk5oZ1JDak12V3I1ckcxUkU0?=
 =?utf-8?B?aHdoL3VWK2VjTlc2UWc3UGtRU0x2N0hBZjRrYlQxUUt5Y2RFZTk0OWdJeThL?=
 =?utf-8?Q?zrrI2vK49s05dPIuK5E0shgoO?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 638d54c9-0655-4420-d873-08dd0f14571f
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Nov 2024 18:50:19.1364 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6aTgWEcFAmI7QRWB5PUMQfxBYUWx3VEPXXX7SU11oZETPIJcU6OEly7Ehs9j5C8TUVm5inItoACF63LoJtJ8gA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB7007
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtZ2Z4IDxpbnRl
bC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBWaWxsZQ0K
PiBTeXJqYWxhDQo+IFNlbnQ6IFdlZG5lc2RheSwgTm92ZW1iZXIgMjAsIDIwMjQgMTA6MTEgUE0N
Cj4gVG86IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gU3ViamVjdDogW1BBVENI
IDMvNF0gZHJtL2k5MTUvZHNiOiBOdWtlIHRoZSBNTUlPLT5pbmRleGVkIHJlZ2lzdGVyIHdyaXRl
IGxvZ2ljDQo+IA0KPiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXgu
aW50ZWwuY29tPg0KPiANCj4gV2UndmUgZGV0ZXJtaW5lZCB0aGF0IGluZGV4ZWQgRFNCIHdyaXRl
cyBhcmUgb25seSBmYXN0ZXIgdGhhbiBNTUlPIHdyaXRlcw0KPiB3aGVuIHdyaXRpbmcgdGhlIHNh
bWUgcmVnaXN0ZXIgfjUgb3IgbW9yZSB0aW1lcy4gVGhhdCBzZWVtcyB2ZXJ5IHVubGlrZWx5IHRv
DQo+IGhhcHBlbiBpbiBhbnkgb3RoZXIgY2FzZSB0aGFuIHdoZW4gdXNpbmcgaW5kZXhlZCBMVVQg
cmVnaXN0ZXJzLiBTaW1wbGlmeSB0aGUNCj4gY29kZSBieSByZW1vdmluZyB0aGUgTU1JTy0+aW5k
ZXhlZCB3cml0ZSBjb252ZXJzaW9uIGxvZ2ljIGFuZCBqdXN0IGVtaXQgdGhlDQo+IGluc3RydWN0
aW9uIGFzIGFuIGluZGV4ZWQgd3JpdGUgZnJvbSB0aGUgZ2V0IGdvLg0KDQpDaGFuZ2VzIExvb2sg
R29vZCB0byBtZS4NClJldmlld2VkLWJ5OiBVbWEgU2hhbmthciA8dW1hLnNoYW5rYXJAaW50ZWwu
Y29tPg0KDQo+IFNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBs
aW51eC5pbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kc2IuYyB8IDU4ICsrKysrKy0tLS0tLS0tLS0tLS0tLS0tLQ0KPiAgMSBmaWxlIGNoYW5n
ZWQsIDE0IGluc2VydGlvbnMoKyksIDQ0IGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmMNCj4gYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzYi5jDQo+IGluZGV4IDRkMzc4NWY1Y2I1Mi4uZTZm
OGZjNzQzZmI0IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2RzYi5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNi
LmMNCj4gQEAgLTI1NiwxNSArMjU2LDYgQEAgc3RhdGljIGJvb2wgaW50ZWxfZHNiX3ByZXZfaW5z
X2lzX3dyaXRlKHN0cnVjdCBpbnRlbF9kc2INCj4gKmRzYiwNCj4gIAlyZXR1cm4gcHJldl9vcGNv
ZGUgPT0gb3Bjb2RlICYmIHByZXZfcmVnID09DQo+IGk5MTVfbW1pb19yZWdfb2Zmc2V0KHJlZyk7
ICB9DQo+IA0KPiAtc3RhdGljIGJvb2wgaW50ZWxfZHNiX3ByZXZfaW5zX2lzX21taW9fd3JpdGUo
c3RydWN0IGludGVsX2RzYiAqZHNiLCBpOTE1X3JlZ190DQo+IHJlZykgLXsNCj4gLQkvKiBvbmx5
IGZ1bGwgYnl0ZS1lbmFibGVzIGNhbiBiZSBjb252ZXJ0ZWQgdG8gaW5kZXhlZCB3cml0ZXMgKi8N
Cj4gLQlyZXR1cm4gaW50ZWxfZHNiX3ByZXZfaW5zX2lzX3dyaXRlKGRzYiwNCj4gLQkJCQkJICAg
RFNCX09QQ09ERV9NTUlPX1dSSVRFIDw8DQo+IERTQl9PUENPREVfU0hJRlQgfA0KPiAtCQkJCQkg
ICBEU0JfQllURV9FTiA8PA0KPiBEU0JfQllURV9FTl9TSElGVCwNCj4gLQkJCQkJICAgcmVnKTsN
Cj4gLX0NCj4gLQ0KPiAgc3RhdGljIGJvb2wgaW50ZWxfZHNiX3ByZXZfaW5zX2lzX2luZGV4ZWRf
d3JpdGUoc3RydWN0IGludGVsX2RzYiAqZHNiLA0KPiBpOTE1X3JlZ190IHJlZykgIHsNCj4gIAly
ZXR1cm4gaW50ZWxfZHNiX3ByZXZfaW5zX2lzX3dyaXRlKGRzYiwgQEAgLTI3Myw3ICsyNjQsNyBA
QCBzdGF0aWMNCj4gYm9vbCBpbnRlbF9kc2JfcHJldl9pbnNfaXNfaW5kZXhlZF93cml0ZShzdHJ1
Y3QgaW50ZWxfZHNiICpkc2IsIGk5MTVfcmVnXyAgfQ0KPiANCj4gIC8qKg0KPiAtICogaW50ZWxf
ZHNiX3JlZ193cml0ZV9pbmRleGVkKCkgLSBFbWl0IHJlZ2lzdGVyIHdyaWl0ZSB0byB0aGUgRFNC
IGNvbnRleHQNCj4gKyAqIGludGVsX2RzYl9yZWdfd3JpdGVfaW5kZXhlZCgpIC0gRW1pdCBpbmRl
eGVkIHJlZ2lzdGVyIHdyaXRlIHRvIHRoZQ0KPiArIERTQiBjb250ZXh0DQo+ICAgKiBAZHNiOiBE
U0IgY29udGV4dA0KPiAgICogQHJlZzogcmVnaXN0ZXIgYWRkcmVzcy4NCj4gICAqIEB2YWw6IHZh
bHVlLg0KPiBAQCAtMzA0LDQ0ICsyOTUsMjMgQEAgdm9pZCBpbnRlbF9kc2JfcmVnX3dyaXRlX2lu
ZGV4ZWQoc3RydWN0IGludGVsX2RzYg0KPiAqZHNiLA0KPiAgCSAqIHdlIGFyZSB3cml0aW5nIG9k
ZCBubyBvZiBkd29yZHMsIFplcm9zIHdpbGwgYmUgYWRkZWQgaW4gdGhlIGVuZCBmb3INCj4gIAkg
KiBwYWRkaW5nLg0KPiAgCSAqLw0KPiAtCWlmICghaW50ZWxfZHNiX3ByZXZfaW5zX2lzX21taW9f
d3JpdGUoZHNiLCByZWcpICYmDQo+IC0JICAgICFpbnRlbF9kc2JfcHJldl9pbnNfaXNfaW5kZXhl
ZF93cml0ZShkc2IsIHJlZykpIHsNCj4gLQkJaW50ZWxfZHNiX2VtaXQoZHNiLCB2YWwsDQo+IC0J
CQkgICAgICAgKERTQl9PUENPREVfTU1JT19XUklURSA8PA0KPiBEU0JfT1BDT0RFX1NISUZUKSB8
DQo+IC0JCQkgICAgICAgKERTQl9CWVRFX0VOIDw8IERTQl9CWVRFX0VOX1NISUZUKSB8DQo+ICsJ
aWYgKCFpbnRlbF9kc2JfcHJldl9pbnNfaXNfaW5kZXhlZF93cml0ZShkc2IsIHJlZykpDQo+ICsJ
CWludGVsX2RzYl9lbWl0KGRzYiwgMCwgLyogY291bnQgKi8NCj4gKwkJCSAgICAgICAoRFNCX09Q
Q09ERV9JTkRFWEVEX1dSSVRFIDw8DQo+IERTQl9PUENPREVfU0hJRlQpIHwNCj4gIAkJCSAgICAg
ICBpOTE1X21taW9fcmVnX29mZnNldChyZWcpKTsNCj4gLQl9IGVsc2Ugew0KPiAtCQlpZiAoIWFz
c2VydF9kc2JfaGFzX3Jvb20oZHNiKSkNCj4gLQkJCXJldHVybjsNCj4gLQ0KPiAtCQkvKiBjb252
ZXJ0IHRvIGluZGV4ZWQgd3JpdGU/ICovDQo+IC0JCWlmIChpbnRlbF9kc2JfcHJldl9pbnNfaXNf
bW1pb193cml0ZShkc2IsIHJlZykpIHsNCj4gLQkJCXUzMiBwcmV2X3ZhbCA9IGRzYi0+aW5zWzBd
Ow0KPiANCj4gLQkJCWRzYi0+aW5zWzBdID0gMTsgLyogY291bnQgKi8NCj4gLQkJCWRzYi0+aW5z
WzFdID0gKERTQl9PUENPREVfSU5ERVhFRF9XUklURSA8PA0KPiBEU0JfT1BDT0RFX1NISUZUKSB8
DQo+IC0JCQkJaTkxNV9tbWlvX3JlZ19vZmZzZXQocmVnKTsNCj4gLQ0KPiAtCQkJaW50ZWxfZHNi
X2J1ZmZlcl93cml0ZSgmZHNiLT5kc2JfYnVmLCBkc2ItDQo+ID5pbnNfc3RhcnRfb2Zmc2V0ICsg
MCwNCj4gLQkJCQkJICAgICAgIGRzYi0+aW5zWzBdKTsNCj4gLQkJCWludGVsX2RzYl9idWZmZXJf
d3JpdGUoJmRzYi0+ZHNiX2J1ZiwgZHNiLQ0KPiA+aW5zX3N0YXJ0X29mZnNldCArIDEsDQo+IC0J
CQkJCSAgICAgICBkc2ItPmluc1sxXSk7DQo+IC0JCQlpbnRlbF9kc2JfYnVmZmVyX3dyaXRlKCZk
c2ItPmRzYl9idWYsIGRzYi0NCj4gPmluc19zdGFydF9vZmZzZXQgKyAyLA0KPiAtCQkJCQkgICAg
ICAgcHJldl92YWwpOw0KPiAtDQo+IC0JCQlkc2ItPmZyZWVfcG9zKys7DQo+IC0JCX0NCj4gKwlp
ZiAoIWFzc2VydF9kc2JfaGFzX3Jvb20oZHNiKSkNCj4gKwkJcmV0dXJuOw0KPiANCj4gLQkJaW50
ZWxfZHNiX2J1ZmZlcl93cml0ZSgmZHNiLT5kc2JfYnVmLCBkc2ItPmZyZWVfcG9zKyssIHZhbCk7
DQo+IC0JCS8qIFVwZGF0ZSB0aGUgY291bnQgKi8NCj4gLQkJZHNiLT5pbnNbMF0rKzsNCj4gLQkJ
aW50ZWxfZHNiX2J1ZmZlcl93cml0ZSgmZHNiLT5kc2JfYnVmLCBkc2ItPmluc19zdGFydF9vZmZz
ZXQgKw0KPiAwLA0KPiAtCQkJCSAgICAgICBkc2ItPmluc1swXSk7DQo+ICsJLyogVXBkYXRlIHRo
ZSBjb3VudCAqLw0KPiArCWRzYi0+aW5zWzBdKys7DQo+ICsJaW50ZWxfZHNiX2J1ZmZlcl93cml0
ZSgmZHNiLT5kc2JfYnVmLCBkc2ItPmluc19zdGFydF9vZmZzZXQgKyAwLA0KPiArCQkJICAgICAg
IGRzYi0+aW5zWzBdKTsNCj4gDQo+IC0JCS8qIGlmIG51bWJlciBvZiBkYXRhIHdvcmRzIGlzIG9k
ZCwgdGhlbiB0aGUgbGFzdCBkd29yZCBzaG91bGQgYmUNCj4gMC4qLw0KPiAtCQlpZiAoZHNiLT5m
cmVlX3BvcyAmIDB4MSkNCj4gLQkJCWludGVsX2RzYl9idWZmZXJfd3JpdGUoJmRzYi0+ZHNiX2J1
ZiwgZHNiLT5mcmVlX3BvcywNCj4gMCk7DQo+IC0JfQ0KPiArCWludGVsX2RzYl9idWZmZXJfd3Jp
dGUoJmRzYi0+ZHNiX2J1ZiwgZHNiLT5mcmVlX3BvcysrLCB2YWwpOw0KPiArCS8qIGlmIG51bWJl
ciBvZiBkYXRhIHdvcmRzIGlzIG9kZCwgdGhlbiB0aGUgbGFzdCBkd29yZCBzaG91bGQgYmUgMC4q
Lw0KPiArCWlmIChkc2ItPmZyZWVfcG9zICYgMHgxKQ0KPiArCQlpbnRlbF9kc2JfYnVmZmVyX3dy
aXRlKCZkc2ItPmRzYl9idWYsIGRzYi0+ZnJlZV9wb3MsIDApOw0KPiAgfQ0KPiANCj4gIHZvaWQg
aW50ZWxfZHNiX3JlZ193cml0ZShzdHJ1Y3QgaW50ZWxfZHNiICpkc2IsDQo+IC0tDQo+IDIuNDUu
Mg0KDQo=
