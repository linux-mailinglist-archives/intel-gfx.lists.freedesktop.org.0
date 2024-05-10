Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1055B8C22A3
	for <lists+intel-gfx@lfdr.de>; Fri, 10 May 2024 12:59:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3AEA010E898;
	Fri, 10 May 2024 10:59:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NG1FAt9/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B0CDA10E898
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 May 2024 10:59:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715338767; x=1746874767;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=bM4Tq/GUQF8uQqbJZw3JHExl7/UM6BCOm0dFbaU1DG4=;
 b=NG1FAt9/sDaK60mlbvnILd+bE78kodvybNFGDeMgRdd56WhTZjr3lxrK
 1C0c1Uo99kjmXN2winy+wIkty+mOdziyjb4mpp9EOQDhH9omMaWEqQdqH
 qJl/i459gS3sQMMvEcYoFxZf0ysGJYROs7Sj+vvhQt2iLzLQtWaevdzIn
 u7RicO1DhWuWxuYjIJ2FHyV2sPd7OlcZD3FpPJaGFAb9efrr4TfdJcVuz
 liPZESqSzN3w9C9mI9CzoU5k9ajOvQtXQ7zfk9GlxX1Uo5W0f/RzU1PUV
 XYLDfP2HRolhchGTxwrYTWB8S6XKSix9ifJ8n7bu1paqGXe+Y++pmYOib Q==;
X-CSE-ConnectionGUID: qLmUz66XTnGQLaZjp72d3w==
X-CSE-MsgGUID: VS8nxzDFS2maEaJNNbN17A==
X-IronPort-AV: E=McAfee;i="6600,9927,11068"; a="11146552"
X-IronPort-AV: E=Sophos;i="6.08,150,1712646000"; d="scan'208";a="11146552"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2024 03:59:06 -0700
X-CSE-ConnectionGUID: rsZojaY8QWSoxQuvu6i39A==
X-CSE-MsgGUID: m4O1dYlwRDS9Lb+LHzFc9w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,150,1712646000"; d="scan'208";a="29581821"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 10 May 2024 03:59:07 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 10 May 2024 03:59:05 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 10 May 2024 03:59:05 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.41) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 10 May 2024 03:59:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Sum8gDwv074HGAPhCSE3+6fa50ms9BxZVWNeaGP15vkfvlHqhiusm/6HumXqx3jHWl3DYj/SntPwzXppEsUR3H4LIoF/eNBsyv9uw+hsRF6uOeLpn4QBQ/3Q9NLPxtAinbofI16QvqVEegoFkgu+xnXS64zKQNCJxPYEokCofJgSni+FtVSFDxRtnve0jtGbPO+MEiIZ5TQJKpBa6n781zLxCIFCK7MXIE0H+42qgRoDQEtzmGuaw+huEDAc8lylW47EkkesFm3i/60CzeGUkPshTHt8PTyNH2HcXXjQhCLrewJI/1ryZreDD46r/0D7wI3iTX75HPBJ1QJ6IExV+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bM4Tq/GUQF8uQqbJZw3JHExl7/UM6BCOm0dFbaU1DG4=;
 b=du6ZPuRzm+obKYAiHBErDgf6y/t1duaNuVGUbjCiFd7JdBtgSrY7eefRzytE8U2QOKRGGWMPmbfrkzfln8KVqkUQAupnIz5xbAZqB0K68BpsWru2JyPdCfRhSRVwwd2YF4nBPFsSdahl0D4QHGvyu1JcVVIDef0Oi/0pwCGAreIBUK/rOnEIaMSOmp1L4kWsbCx6Lfq0tB68olcteh7lBQy7juxrwMcdqVd2R6Hbc56ieYLfQ8tgqAmEaGGrVzGqQ8qEn4/bn5TTdarc9F8E0ZdtVB3NrseSC1wqIpYQt6qkZ7SFuaRT47n7YoXDNy2QOYuOJyTOvFpyeZsYdaGCeA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by DM4PR11MB6550.namprd11.prod.outlook.com (2603:10b6:8:b4::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7544.49; Fri, 10 May
 2024 10:59:02 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0%5]) with mapi id 15.20.7544.047; Fri, 10 May 2024
 10:59:02 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH v10 08/12] drm/i915/psr: Panel replay uses SRD_STATUS to
 track it's status
Thread-Topic: [PATCH v10 08/12] drm/i915/psr: Panel replay uses SRD_STATUS to
 track it's status
Thread-Index: AQHaor3kC5OplgwgjkWL/jhA5EiX+LGQTEBA
Date: Fri, 10 May 2024 10:59:02 +0000
Message-ID: <PH7PR11MB59810BBC52C4A0C1D6BCF65BF9E72@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20240510093823.3146455-1-jouni.hogander@intel.com>
 <20240510093823.3146455-9-jouni.hogander@intel.com>
In-Reply-To: <20240510093823.3146455-9-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|DM4PR11MB6550:EE_
x-ms-office365-filtering-correlation-id: feebb6d2-837c-4e75-8b39-08dc70e033f1
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|366007|1800799015|376005|38070700009;
x-microsoft-antispam-message-info: =?utf-8?B?ODN2SERMUGVBdE5Ydy9pRFJTUGtOVnRld2M4cjArK2FVVWo4Z2pHTmxXUlRj?=
 =?utf-8?B?V1dadXpVWVlpc0pWclBiWDNYVmpOR0h2NU05VmhoSGFrblp4NGJEQTdVSVcx?=
 =?utf-8?B?c2xGTXp3a1VueE9lWlNFSmJrcW5OZTNuVU55VW1Tblp3L0ZyZHY5Z29IVDNX?=
 =?utf-8?B?Ykw2V1dkU01yeXNTeEIwcGk4U3RFQmw1SnBOMzkyZFJROE9vVytwM0dwOC9L?=
 =?utf-8?B?Z2ZhY2ZOWnRRbFR0TzVRRU4zUm1NVm55MlZQeVhSYWd6MFY4QTgxc3hPRS9w?=
 =?utf-8?B?bVBmSU5IR0FUWjduYVVWSCtoY1JLcE1RMVU5SFh4RW1qZjViR0pPTUJMaFZu?=
 =?utf-8?B?R0VlbUhvZVlJc0JnVkxvM2RTN0c5bnN5RDZ1dEh2Q2JIQVFJb2dpT3c4SXhy?=
 =?utf-8?B?RjA3emtzekZ6OEY1TmtRSFZ5eWFSNDBhVG9WWjlFcTFvTERuRWJzM1ZENjE0?=
 =?utf-8?B?dnpYQ3UxbEM3M2YraVE3SmtWS3c2RDgzVUFteEVuYXFJQkRYTXl4VjN4S1R2?=
 =?utf-8?B?MldyZ05NV1QwWGQ1NEVlTng5Q2Q0c1NWVmpaNWpmQnFQdUR6SDVvT2kwTDFj?=
 =?utf-8?B?MW0xT1R3ZmFsT3RxSmtHN2dRWjhwK1ptSUJvSCtJTnpyRmw2cFBsUXVhVnhh?=
 =?utf-8?B?YithbXJYOE9qc2FGWmlBSjFRejhzT1dhTGV0NnVUclo5SGFVK0FUNzZxWFIz?=
 =?utf-8?B?RzNYcUhhNkV4ejh4UXBqb0hBV1RTVkgvTEhZMVBwSXRhM0hvYzNpc0F6Wm9s?=
 =?utf-8?B?NTBkR25vNVZhSjFLQjl0VmxhSERHRjRzMVJiWkpySkF0WUIxM2pZM0pEUjJE?=
 =?utf-8?B?M2V0S2pJSUR0Ykp5L1kvekdNcXZBR2tnU1AyRzFzOXEwK0VBbzRncEpKaFkx?=
 =?utf-8?B?WFZCdlJlN3poOFdSMzNjSmQrRG55aTBCVS9jMTlQTGFVV2pDcU1ZL2Fuenk4?=
 =?utf-8?B?N2tucXlucE00Z1VoWUFnZ0lhNzB6cmQ3dFhNbEFEV25hZUlZM2JpR3kvU0FG?=
 =?utf-8?B?MVRSRHA0WldTOFR2ZDhPekRCclBZeWwrL2RadCttQ2xpa3FreFpZWEl5M0hJ?=
 =?utf-8?B?V25oUDRJb3RFRGtzSTdLRTNDc3RKZ2pzS29jVm80amFoRmN1cjVvRnkySkh3?=
 =?utf-8?B?NFJyWGs0WDZlUWljU2Q5R1hUREdYL0NBNCtMRDJ6eEdCNFZIbmVacG5jaSsv?=
 =?utf-8?B?NDFRTjl0bENXbFp3NEt5YWUvSXRWQUd2Zi83TU01dGZFazFRSDlnU3BxRE1U?=
 =?utf-8?B?Wk9uMkZ6RktYRm8rRXpRdWdXTWZXSzQxSU5WOUZScGsybVlueTZiUU42cnln?=
 =?utf-8?B?V0pGUnM2dFIxNW1takN1c2RJYWJkbE85RVhqRXh6WlZhazk3dDJPRnNsMGgy?=
 =?utf-8?B?RFhEYnU4aGx6alBSanlTYm8vS09QLy9ZOTFpMjQrTnJEVU5oajJTYWNUaGJa?=
 =?utf-8?B?a1pVakxjWVVCNVR4cEtGTVBVMXdKVEg2UDkrTS9OL3NJd014eWw3OFc3S2ND?=
 =?utf-8?B?cDhBOFA1Nmdlck5zOVlYR2pqSkN0UGpWNktUdk41OXRJbDJpd3ZDVHNVa1B2?=
 =?utf-8?B?VGF1TDNDRk5CbU5NbTlSYzg1U1dVQkV6eFY1QnNtREpGb2UwYnFFWU9DWjVE?=
 =?utf-8?B?dkVwcmFNVFlTdjlnZGNRQy9NcDkxUXJwaU9kd01IcTh4bG90Q3IyM2Yrb1VX?=
 =?utf-8?B?K1F1Uklicm0wS0YrSnNQNWRqeVMrL09tLzVWd2I2RWNFVVNUSVI4NDdoQS9D?=
 =?utf-8?B?aFUvaWNQeW9kZCt4MEo3cDJoUThqWEw2dzhTWmJUM1piYWJYS2kvbzg1ekNq?=
 =?utf-8?B?L2l0ZkZNTHNyeGM3UVRWdz09?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(1800799015)(376005)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?M2hMR0dqcmwzdVF6V20vN044eVVRdk5CbFArUzJWVHUxMENXeCtsSm1ORmV5?=
 =?utf-8?B?SGdLUU8vcWRTMHBhNWpMeVBUY29SWkc3UzVvYzNjVHNNWW5xa0ZyMWxVMUlW?=
 =?utf-8?B?QmdWc3lCYVI3Z0NXNVJBTG9mN21FWko3RXdIMVRpN3N3R1daTk8yTjlLVFBx?=
 =?utf-8?B?MDFkaXVrZjUyaE12NmZHMyt3U3Z3VDY2eE9jRytnNXRCampGSThrMFVXd2ZW?=
 =?utf-8?B?TDRwUGJiSTluL1kzd0l1VE93WEwxM1JIS0tLQmc1N1RLNXQvSDVkOENXOXFa?=
 =?utf-8?B?RUwvWGE2cmVwWnJlelNZU1B3cFNSbyt0R0hRUVhCQlBMemlTNE9PQ1NENlg3?=
 =?utf-8?B?b0Zab1hZR2lLdzd2MDBqWUxUK1J1cnZzQUJmcGRoS1JaZnNXWno0VWJVT1dh?=
 =?utf-8?B?WjFURkZ3OUdreU9jdWRDdFFtTTc4aFBPVzc3d0ljYlpaN2pKSk0za2tFczRq?=
 =?utf-8?B?Qm41dXBNalBqTXN2RWZQYjE1UGlzUnlPYnh1OXVPeFIzV1g3Zi8zZkFSRlpV?=
 =?utf-8?B?ZzVIZlM0OElCeWdXS2NHaGFzREQxZy9JT1JwSy9VTjJZNHZZTlN2QTJVMi9s?=
 =?utf-8?B?SGpMRDc1SXhlMk5xK3lJNWNrQU10aUp6dFN4Ylo4VkVrMXdBRXpXQ0hoTWd2?=
 =?utf-8?B?ZzhJUjlqZGlEaFBoUXpEUjc4THlNbzZISVhOTXlTdGFZdVgrUTZOeUJ3dXZh?=
 =?utf-8?B?ejVYYmVUR2V3dGoxeFlZZENiamZKaGwvelhvV1lKODU5dm90a3VQYThzWitY?=
 =?utf-8?B?MjZoUnY0ZVlLTmVqTThqV3BsNjUxOWtHZWhlaXJ6RFU0QkE0L3M4RTNRdUN4?=
 =?utf-8?B?QlhTRUk5ZjFTUE9YdTBHVWtZTHhHa0g0b2tQNmhXQi92UkNmWVI3ZWtmYVRM?=
 =?utf-8?B?dkw2Q0l3eExhbklGcnBleEVvNmh1dUswbkpWRzRSUlYramhmQmtWdXVCNkIw?=
 =?utf-8?B?Mlo5Rk1yUUJQSmZOQm1JL3VRdmVvM3VYTzVqbzZaaDZDVENwQWpCRTAwTXk4?=
 =?utf-8?B?MjJvTXhXV3JGUVhRRzRKR0RuVm81MnZDMGtyQ2h0dS9yN2xBS3F1RkI3UFRm?=
 =?utf-8?B?d3ZKeHhBbFJ0OGszZU44OFRveUtEN25RK0hrNFRtVWFzN3A3eXhkSUNYTkZC?=
 =?utf-8?B?TTZIbWZZRVBvTFhMbGozcjcwNTBudmFWMEVIV3NlcnZaczdTQTMxUDU2WWFE?=
 =?utf-8?B?cDMzTGN0YWE2eDlDeXZQNnlZNnZGU05jeFMxNE9tWmRIMm9peDhYUDJ2bU50?=
 =?utf-8?B?eHFtL01Sb0NJRFpsV0NxWkkycGJwK0xFNnZtNXJpcjRLeWVDWUs2TEdLSmx3?=
 =?utf-8?B?RmNmVlg4UVNBYXNuUmcyOW5PNEpUWTRHalpyVVEvSjIzVUFOMDFjcVJaMkx0?=
 =?utf-8?B?eGkxYkJjY01TYnIwWHhRM0lIVjlQeHZiTWo4Z1VLZnUzNER3c0hnT2Z6RmI3?=
 =?utf-8?B?ZUZnOGltLzUyQmxBU0FtL0NDbjA1UG9IVTgwYkdvV2dWSTU5MVlTRVdvSlBQ?=
 =?utf-8?B?dVFjcXRTVjdIb2Q3WWpISEFoWU9XZEhTc2k1Vk5rQ3M5NXZzN01hRmlIaXkz?=
 =?utf-8?B?dUZDYmlhN203bG45MkhsaVVpbDZkMjZYYzdGcXVhMWNtblA2UHVzRU9UOXh3?=
 =?utf-8?B?UG1icGVkdUdWQ1NMUmhTWEFGZEZKNHdmcXJiRkpORUs0UDVXbTFQcHhjRENU?=
 =?utf-8?B?OXR4S3FYaDBVRzhvN3UvbS9ZN1hvSG9mQVRBeUJ2UU9KVXpFbUhITCs1Vm0v?=
 =?utf-8?B?N0gyQUdDZVBtWGRZOFdnSktGM1Q2WktSQkE4SWF1YW5qd2RyZnl1WkZjRUVD?=
 =?utf-8?B?N3U2YU9JTWplRUZVTDhmbkFHRWswWEt2VkM1L0k3M0E5SmthWm9YWVZzMXAy?=
 =?utf-8?B?dUdWdVVBK0ZCRTU3ZmJnUXFjYlQ5clNPNGczOTAzOTg5SUNtdEJBNGdrL0I2?=
 =?utf-8?B?dzRodHlpTUw4dVZiSjRYN3VlVmdBMU5FL0lzQ09qT3VUSjV1UWFCMnVLZHl1?=
 =?utf-8?B?SThHNGZkSHgzdWZCT0d1aVc2NkxQR2t1M2Z1bXhkdGlMU1EvakVKS2FyY1lU?=
 =?utf-8?B?RXBYOEtQWFQyQVRPUjNMUjdWKzMvcG1MR0xxc1JwalJpTVI2RC9maC9MVVE3?=
 =?utf-8?Q?OL0pLEoFsNF6eD9z/S0neNFkd?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: feebb6d2-837c-4e75-8b39-08dc70e033f1
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 May 2024 10:59:02.5627 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: i76UIU5mh1WTNi365rqC1X5Lp5LeusKKv40ZU72jY1u9aQcN25pacSN0sgaBoCfxQYdQo3pqMPXh2WOx8WHBDQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6550
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
IDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IFNlbnQ6IEZyaWRheSwgTWF5IDEwLCAyMDI0
IDM6MDggUE0NCj4gVG86IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gQ2M6IE1h
bm5hLCBBbmltZXNoIDxhbmltZXNoLm1hbm5hQGludGVsLmNvbT47IEhvZ2FuZGVyLCBKb3VuaQ0K
PiA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KPiBTdWJqZWN0OiBbUEFUQ0ggdjEwIDA4LzEy
XSBkcm0vaTkxNS9wc3I6IFBhbmVsIHJlcGxheSB1c2VzIFNSRF9TVEFUVVMgdG8NCj4gdHJhY2sg
aXQncyBzdGF0dXMNCj4gDQo+IERQIFBhbmVsIHJlcGxheSB1c2VzIFNSRF9TVEFUVVMgdG8gdHJh
Y2sgaXQncyBzdGF0dXMgZGVzcGl0ZSBzZWxlY3RpdmUgdXBkYXRlDQo+IG1vZGUuDQo+IA0KPiBC
c3BlYzogNTMzNzAsIDY4OTIwDQo+IA0KPiB2NDoNCj4gICAtIHVzZSBQU1IyX1NUQVRVUyBmb3Ig
ZURQIFBhbmVsIFJlcGxheQ0KPiAgIC0gaGFuZGxlIGludGVsX3Bzcl93YWl0X2V4aXRfbG9ja2Vk
IGFzIHdlbGwNCj4gdjM6DQo+ICAgLSBkbyBub3QgdXNlIFBTUjJfU1RBVFVTIGZvciBQU1IxDQo+
IHYyOg0KPiAgIC0gdXNlIGludGVsX2RwX2lzX2VkcCB0byBkaWZmZXJlbnRpYXRlDQo+ICAgLSBt
b2RpZnkgZGVidWdmcyBzdGF0dXMgYXMgd2VsbA0KPiANCj4gU2lnbmVkLW9mZi1ieTogSm91bmkg
SMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQoNClJldmlld2VkLWJ5OiBBbmlt
ZXNoIE1hbm5hIDxhbmltZXNoLm1hbm5hQGludGVsLmNvbT4NCg0KPiAtLS0NCj4gIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMgfCAyMCArKysrKysrKysrKysrKysrLS0t
LQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDE2IGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pDQo+
IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3Iu
Yw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gaW5kZXgg
NmQxZjQ0MmYzZDE0Li41MzJhODBhM2VlZWEgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9wc3IuYw0KPiBAQCAtMjExMSw3ICsyMTExLDggQEAgc3RhdGljIHZvaWQg
aW50ZWxfcHNyX3dhaXRfZXhpdF9sb2NrZWQoc3RydWN0DQo+IGludGVsX2RwICppbnRlbF9kcCkN
Cj4gIAlpOTE1X3JlZ190IHBzcl9zdGF0dXM7DQo+ICAJdTMyIHBzcl9zdGF0dXNfbWFzazsNCj4g
DQo+IC0JaWYgKGludGVsX2RwLT5wc3Iuc2VsX3VwZGF0ZV9lbmFibGVkKSB7DQo+ICsJaWYgKGlu
dGVsX2RwX2lzX2VkcChpbnRlbF9kcCkgJiYgKGludGVsX2RwLT5wc3Iuc2VsX3VwZGF0ZV9lbmFi
bGVkDQo+IHx8DQo+ICsJCQkJCSAgaW50ZWxfZHAtDQo+ID5wc3IucGFuZWxfcmVwbGF5X2VuYWJs
ZWQpKSB7DQo+ICAJCXBzcl9zdGF0dXMgPSBFRFBfUFNSMl9TVEFUVVMoZGV2X3ByaXYsIGNwdV90
cmFuc2NvZGVyKTsNCj4gIAkJcHNyX3N0YXR1c19tYXNrID0gRURQX1BTUjJfU1RBVFVTX1NUQVRF
X01BU0s7DQo+ICAJfSBlbHNlIHsNCj4gQEAgLTI4NDksNiArMjg1MCwxMyBAQCBzdGF0aWMgaW50
DQo+IF9wc3IxX3JlYWR5X2Zvcl9waXBlX3VwZGF0ZV9sb2NrZWQoc3RydWN0IGludGVsX2RwICpp
bnRlbF9kcCkNCj4gIAkJCQkgICAgICAgRURQX1BTUl9TVEFUVVNfU1RBVEVfTUFTSywgNTApOyAg
fQ0KPiANCj4gK3N0YXRpYyBpbnQgX3BhbmVsX3JlcGxheV9yZWFkeV9mb3JfcGlwZV91cGRhdGVf
bG9ja2VkKHN0cnVjdCBpbnRlbF9kcA0KPiArKmludGVsX2RwKSB7DQo+ICsJcmV0dXJuIGludGVs
X2RwX2lzX2VkcChpbnRlbF9kcCkgPw0KPiArCQlfcHNyMl9yZWFkeV9mb3JfcGlwZV91cGRhdGVf
bG9ja2VkKGludGVsX2RwKSA6DQo+ICsJCV9wc3IxX3JlYWR5X2Zvcl9waXBlX3VwZGF0ZV9sb2Nr
ZWQoaW50ZWxfZHApOw0KPiArfQ0KPiArDQo+ICAvKioNCj4gICAqIGludGVsX3Bzcl93YWl0X2Zv
cl9pZGxlX2xvY2tlZCAtIHdhaXQgZm9yIFBTUiBiZSByZWFkeSBmb3IgYSBwaXBlIHVwZGF0ZQ0K
PiAgICogQG5ld19jcnRjX3N0YXRlOiBuZXcgQ1JUQyBzdGF0ZQ0KPiBAQCAtMjg3NCw3ICsyODgy
LDkgQEAgdm9pZCBpbnRlbF9wc3Jfd2FpdF9mb3JfaWRsZV9sb2NrZWQoY29uc3Qgc3RydWN0DQo+
IGludGVsX2NydGNfc3RhdGUgKm5ld19jcnRjX3N0YXQNCj4gIAkJaWYgKCFpbnRlbF9kcC0+cHNy
LmVuYWJsZWQpDQo+ICAJCQljb250aW51ZTsNCj4gDQo+IC0JCWlmIChpbnRlbF9kcC0+cHNyLnNl
bF91cGRhdGVfZW5hYmxlZCkNCj4gKwkJaWYgKGludGVsX2RwLT5wc3IucGFuZWxfcmVwbGF5X2Vu
YWJsZWQpDQo+ICsJCQlyZXQgPQ0KPiBfcGFuZWxfcmVwbGF5X3JlYWR5X2Zvcl9waXBlX3VwZGF0
ZV9sb2NrZWQoaW50ZWxfZHApOw0KPiArCQllbHNlIGlmIChpbnRlbF9kcC0+cHNyLnNlbF91cGRh
dGVfZW5hYmxlZCkNCj4gIAkJCXJldCA9DQo+IF9wc3IyX3JlYWR5X2Zvcl9waXBlX3VwZGF0ZV9s
b2NrZWQoaW50ZWxfZHApOw0KPiAgCQllbHNlDQo+ICAJCQlyZXQgPQ0KPiBfcHNyMV9yZWFkeV9m
b3JfcGlwZV91cGRhdGVfbG9ja2VkKGludGVsX2RwKTsNCj4gQEAgLTI4OTUsNyArMjkwNSw4IEBA
IHN0YXRpYyBib29sIF9fcHNyX3dhaXRfZm9yX2lkbGVfbG9ja2VkKHN0cnVjdA0KPiBpbnRlbF9k
cCAqaW50ZWxfZHApDQo+ICAJaWYgKCFpbnRlbF9kcC0+cHNyLmVuYWJsZWQpDQo+ICAJCXJldHVy
biBmYWxzZTsNCj4gDQo+IC0JaWYgKGludGVsX2RwLT5wc3Iuc2VsX3VwZGF0ZV9lbmFibGVkKSB7
DQo+ICsJaWYgKGludGVsX2RwX2lzX2VkcChpbnRlbF9kcCkgJiYgKGludGVsX2RwLT5wc3Iuc2Vs
X3VwZGF0ZV9lbmFibGVkDQo+IHx8DQo+ICsJCQkJCSAgaW50ZWxfZHAtDQo+ID5wc3IucGFuZWxf
cmVwbGF5X2VuYWJsZWQpKSB7DQo+ICAJCXJlZyA9IEVEUF9QU1IyX1NUQVRVUyhkZXZfcHJpdiwg
Y3B1X3RyYW5zY29kZXIpOw0KPiAgCQltYXNrID0gRURQX1BTUjJfU1RBVFVTX1NUQVRFX01BU0s7
DQo+ICAJfSBlbHNlIHsNCj4gQEAgLTM1MTcsNyArMzUyOCw4IEBAIHBzcl9zb3VyY2Vfc3RhdHVz
KHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsIHN0cnVjdA0KPiBzZXFfZmlsZSAqbSkNCj4gIAlj
b25zdCBjaGFyICpzdGF0dXMgPSAidW5rbm93biI7DQo+ICAJdTMyIHZhbCwgc3RhdHVzX3ZhbDsN
Cj4gDQo+IC0JaWYgKGludGVsX2RwLT5wc3Iuc2VsX3VwZGF0ZV9lbmFibGVkKSB7DQo+ICsJaWYg
KGludGVsX2RwX2lzX2VkcChpbnRlbF9kcCkgJiYgKGludGVsX2RwLT5wc3Iuc2VsX3VwZGF0ZV9l
bmFibGVkDQo+IHx8DQo+ICsJCQkJCSAgaW50ZWxfZHAtDQo+ID5wc3IucGFuZWxfcmVwbGF5X2Vu
YWJsZWQpKSB7DQo+ICAJCXN0YXRpYyBjb25zdCBjaGFyICogY29uc3QgbGl2ZV9zdGF0dXNbXSA9
IHsNCj4gIAkJCSJJRExFIiwNCj4gIAkJCSJDQVBUVVJFIiwNCj4gLS0NCj4gMi4zNC4xDQoNCg==
