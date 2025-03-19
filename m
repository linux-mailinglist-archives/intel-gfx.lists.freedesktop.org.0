Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1226BA68AE4
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Mar 2025 12:12:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2C96B10E205;
	Wed, 19 Mar 2025 11:12:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Mo3jl6Ju";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 68D7A10E205
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Mar 2025 11:12:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742382756; x=1773918756;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=pMarl+3+tM/Vrcp+hV2M72C9ix2I3HwyrmqAoZrr90o=;
 b=Mo3jl6JuIIA1IGOQ/BGDnbeZxf+28ibLaPVpoqpF1onwH48cGrZd2Yhh
 IX1wVxvv/dafgd6mlF+s05uBelbeUcEjh7XoA4ZHDxzJqj84noYYRw/KZ
 FlkmrzzAKmWA6kEctR2ZfpG5nI99h9YjcmgqeNj8w73HEPxIh5KnuuUl/
 X7uB35dpH6UzoiKpGlWoHT2ZzpcHdBcZ6GcCGv4rzZB79uJms8dnP699O
 L7dHEBVHZFxsR3Id4J1jhraeCAfBJa5igdMlmGTrKGCiqPRwr7Z24Rand
 1a4yxkaDhdyiH54oCwYcQtrxOTb2lkWHXNTY/fveRUVqhkAbqez83Uulu g==;
X-CSE-ConnectionGUID: 9GrPsvqLQ72vpKkFmxm50g==
X-CSE-MsgGUID: h3/gFpcAQA6FCTrFBhgGWQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11377"; a="43486777"
X-IronPort-AV: E=Sophos;i="6.14,259,1736841600"; d="scan'208";a="43486777"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2025 04:12:35 -0700
X-CSE-ConnectionGUID: uLQXWeb7SryW2ma+kFaRdw==
X-CSE-MsgGUID: QXmuJsvDRhGGI7/2T7Rsdg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,259,1736841600"; d="scan'208";a="122405688"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 19 Mar 2025 04:12:35 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Wed, 19 Mar 2025 04:12:34 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Wed, 19 Mar 2025 04:12:34 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.45) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 19 Mar 2025 04:12:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=pHI1UL7joaKF9Mbzcaw8BysWSr9VaeBGLDil4avdl+//LHaDEgRKHshCT2fg+EzjsJVHgAxWtVnaqQ8XciQszieUq6mx6RBD/SK2ENWLiqgU2rxHXImuK6da5GfzAbN0XObHERHbdM+5pQdZz75Cew4OkKE//KUmFTBEhYl6e5xcc0uRb+dN2hBfutJS+Z7oVQg9jHyLVpsiltPy555hxWrlF6BrNKeMFPciFEcz2IcUzA0IaGk1Efqk+7JCXCGxTUq2Q/SR8DmEh9CJ1cC1XCsh29sZ25NHrJltY9ues/aQVnJyKsZ3rqNtre102obG/9ugoK9rh5H/xI+V2IpEig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DOX3kKWTQsgP5zfMpdccZ6RwzTUP+qaA2srd99J27pM=;
 b=ZS0tCS0Ni/Cy9DVaQXsyZ2BX9kp2CafhvhRrkL3LjLt05rvwkwAge4aL0L7p4aPVWOcjGJkndsEy8mmuaPinApvlmPfrnzaWzRyE2N13BWKo0LhOhtEkSoLApzkisIHbU9Dg0ytCdg8PD97aRabQTvnBGbhiOwNTlT+qm/+mwvr10j7mJ2u2rfxkqrtXv+jwDnVOXHlF6AgZb1Ba+eMzPmJqRaw0JePctWvO3SZrdj0aSt50i0JYuLLHSa0H2rIj4SZr6JadVQVy9PHJBznRA7XNX0140S0hfw1E2kAmIIPw8IQfEajXVlBPIeMR2/1WMuNNwfgGN+7IapSGQ6EVvQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH7PR11MB8252.namprd11.prod.outlook.com (2603:10b6:510:1aa::14)
 by SJ0PR11MB6766.namprd11.prod.outlook.com (2603:10b6:a03:47c::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8534.33; Wed, 19 Mar
 2025 11:12:31 +0000
Received: from PH7PR11MB8252.namprd11.prod.outlook.com
 ([fe80::625b:17f6:495f:7ad]) by PH7PR11MB8252.namprd11.prod.outlook.com
 ([fe80::625b:17f6:495f:7ad%4]) with mapi id 15.20.8534.034; Wed, 19 Mar 2025
 11:12:31 +0000
Message-ID: <027a7daa-56d8-4215-a562-bc12dbe7646a@intel.com>
Date: Wed, 19 Mar 2025 16:42:25 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [v3] drm/i915: Disable RPG during live selftest
To: "Poosa, Karthik" <karthik.poosa@intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: <anshuman.gupta@intel.com>, <badal.nilawar@intel.com>,
 <riana.tauro@intel.com>, <raag.jadav@intel.com>, Rodrigo Vivi
 <rodrigo.vivi@intel.com>, Andi Shyti <andi.shyti@intel.com>, Andrzej Hajda
 <andrzej.hajda@intel.com>
References: <20250310152821.2931678-1-sk.anirban@intel.com>
 <41a6287a-ac32-4d29-9e22-12a564b74bc3@intel.com>
Content-Language: en-US
From: "Anirban, Sk" <sk.anirban@intel.com>
In-Reply-To: <41a6287a-ac32-4d29-9e22-12a564b74bc3@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA0PR01CA0038.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:81::11) To PH7PR11MB8252.namprd11.prod.outlook.com
 (2603:10b6:510:1aa::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR11MB8252:EE_|SJ0PR11MB6766:EE_
X-MS-Office365-Filtering-Correlation-Id: a61e364a-72a8-4aa2-b3b3-08dd66d6f128
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?dG5yL0VWZDdPWGRxeXFCdE0rMEVKVTRzak5TTFEwNi8xTWNZeWZWTDQrSkw2?=
 =?utf-8?B?YU52ZU12OW94YndhWDQ2a0pGM1RYTUtRV1dCVUw3dmZ6NDlTWCtidmNIWndt?=
 =?utf-8?B?dWRSVFNsMWRHUEJ1S1JNSkFkMEpBTEZKbFNFWVBXWDdaT2VwRGVKbFlLL0tW?=
 =?utf-8?B?UjFtKzV4UkpoRzdrbmF0WEorV0ZMdmN2WDdCcTgvaWZMOGtLZ0x0dHpGMkR0?=
 =?utf-8?B?dzhYMWswTmk5ZWJERkl3S2llektIZFozZTNneHpWbkwzYSs1SzZHdWNCNytu?=
 =?utf-8?B?MUp6bW8rUGl3T2ZISEhpSXNQQ3g3MjFtN2pHQU1ydnVJV1IzNkxtSVlJZWtZ?=
 =?utf-8?B?SSs2OFNDRk5IeG5TWDdlaFB4ZVJjSi9kNXVBUVIvakkzV1IxUWpjKzV1U1Rp?=
 =?utf-8?B?Uzc4RTdJV0hDU3k1aGIyUjJxQXFpOVd2U0NNdDVsYnNPaDI1dngwRWRtMFNi?=
 =?utf-8?B?TjZBMENmQ0VyQkNFcjA1VTErRGpNbVQzejAzS1BBRFFDOGNXQVdMbEVzMEI5?=
 =?utf-8?B?VGhUL1JadGk3VHVDSTZHaE5RL29NdEg0by9JdG5iNWl1TmlvdzRwejFQT2oz?=
 =?utf-8?B?eVJUaVpUdStyL2ZkUjdUaVhiN3VXK0sxOUgzTXQwZWNnaWhEVzVtMDYrcGYx?=
 =?utf-8?B?WEdKS2lXVVhFbm5vVUR6Y2xROEo2MzdsTkIxck4xdEt2ZXZ0OTM0LzVrdFIx?=
 =?utf-8?B?R2ZJU2c5Y2E4Mlc1NFB2eHdDWDZYOFUvVFlwNzg4elpPTXJLN0I2N2VrQzRX?=
 =?utf-8?B?Q29TcXFmNWZ4WnlXamczQ1dsdVF3dXpBTzNmOG94azJxQWxVRUZPbFlyeS9v?=
 =?utf-8?B?UHBPK2lSeWg2N3BVd0QzaFMrOVZWRSs3bGxwb3NuaDFqSmRzZlpUUkhQem9o?=
 =?utf-8?B?ajNIa0VtZ05sUzVuRStDRklIM1lNY3VNRElPMEc1dnlyOHFmRTN1UUtKYXpi?=
 =?utf-8?B?V1dYQlh5RFVyOHlENjF0ckZHdFdtZUtqZE8vbzhEUmd6eXZ5Q0xHbXFDWTA3?=
 =?utf-8?B?MjJFNTEwaXJ1V3ZGVHdVSXc4RHhoL1Z5dFo3MVMyYk1ObFVOc29Db3JTWTkv?=
 =?utf-8?B?aEhRYXQwbWQ2SzZwSTFUcFE5bFp6NVpoSXk5a3p1anpFRlNKdlBGMHBlVzNx?=
 =?utf-8?B?T1hSQjNlUUlIclRLOHQzQ0pOdDVOa2s3Z2VuaVVYNkRlZ285Q0hHRnBDYXdp?=
 =?utf-8?B?anVtZUc0UDNFVTNINk1FMHJ5ZkhtUml2blBiNDlnRXhvVmR3cHhVZ2EzZHdP?=
 =?utf-8?B?YVZjMUxWVmdtMzdaWE1oUXBOL0lyRm5RWmkyYjh2RzlWZ0crMUVKeE1ka2Mz?=
 =?utf-8?B?OEtVSy9rbXJ4VTR4L0JkQ3Jtd0c3cGpwZitZTVBRayttRDJBbzdlMjY1Tk9s?=
 =?utf-8?B?b3NDNTFDSm9henZLTVhYOXpKa3dPQnJ4M1ZoYlhTWktaUUZjQzZ0a3R0Zlo5?=
 =?utf-8?B?VXorNkcyMStPVWJyNGJzUzJCSjJoWitIeWFIM25PcG8vamtMeEN6OGlOYzgz?=
 =?utf-8?B?SFZNMlRiVE1kdSt3dTd6T3laYUc2dllXWStuWXo5dXoyQUZrUE5PRmJPbFV6?=
 =?utf-8?B?ZkRiY2NZUlQ3OEtzcVduNnFtbThZdXpTejhVd3dHZXp6Qk9leW5qWEp2ODFB?=
 =?utf-8?B?eDBYS0tRbndONHMyTkZhV2J4dDR5dnhSNXJKMlBGeGtHR3hBcHBxYTc3LzR3?=
 =?utf-8?B?WWlDK1J2c2lqZ0NzMXYyeDdHYjFENG04SWlhYWVXWFRsY3ZWSUNKYkcyWjNu?=
 =?utf-8?B?RGc2Y2l3Snh1eG5lZWhjS20rMEVxLzFXczJpcnRxdm9iV0ZTN2lleFlaNWVq?=
 =?utf-8?B?SmxKRXF2bFNJOVRyK3FmQT09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB8252.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MFFoM3QxbjYwYmxQZzNEOTgzcUh3cjVtQTFDYS84Z1g5dEJROWUvUXdWelIx?=
 =?utf-8?B?Nlk1c2pOUTdYVU1kaVpKQVNCRVlaVUt1Ritqemw3QlZwSzJFRnJZTldGbTVD?=
 =?utf-8?B?R2N1OTBTK3F0SS9LUHJudWdUcjE4dXBwKzkxd2xxeGxONmR3bUhZU1RDWloy?=
 =?utf-8?B?OFF2b01aa1VZdVJGVUQ2cjVJUFRmYTF5L2tuaXVTOXZ3eWxTd1pnaytNNkFO?=
 =?utf-8?B?TDYrTG1lZnp3bnRIUjh6ckhLclIzaDRnRFBlcjRSNTRmZTFvN0o5aUpLTDJk?=
 =?utf-8?B?cHdOVkRtZVIzUlNEbnh2cy9oakptdWdtOCtsM1E0cmcyb21MWk9heVArM1o1?=
 =?utf-8?B?N0htUm5Hbng5QTgwVjZZWGo4Q2grbis3QWpPdkhmOVJaMVBQbEtqdTh6cGpn?=
 =?utf-8?B?dithc08vWEZqcEh5TnlQVmJsOWtYamh6MGRsTmJHemRCUEU3T242anBscTFp?=
 =?utf-8?B?K2syYmFDZXJEeFJpTzJyYjNjNms4RVlSbkhYSmtiNjkzeHZ5eFNiaStIUVhn?=
 =?utf-8?B?RDU1UjhpWk0zZnBPZzg4azFVa25VdktSVEEweEttOTlGTDFPb2JOMXVDK1JG?=
 =?utf-8?B?SzVwTy9nUDh3ZFNCNXllRzRBb2hLNUdHYnB0VXFhZGRzck5LK3hYY09jQ1dk?=
 =?utf-8?B?L2E2ZmhXVmlNVDVpZWRCekZzRGY2RGxDUHpJdUVnNC9MK3JHYXN5NUVqOVZV?=
 =?utf-8?B?L1B2eHEwNmllNW53N3l6cEcrVnNjdW01aHV6M3VkdnJxSlNZMW5GMnJ0RkRs?=
 =?utf-8?B?NHZPZllVemhaM1NLa3FUbkFleWx6QTl3dmsvK2ZTVDFNVGRIM2ttTjNtZnFk?=
 =?utf-8?B?WHRBMTJ1bS9tUEJDbHpzRzZZOTdHMUVBbnR2MTVCclhjakFRemhXOTBJNTI4?=
 =?utf-8?B?L3V6cndOUE54Qms4MmxuNDJMNEx2c2VpczFOei9rRTN5b2FuWTJvdk52OCtS?=
 =?utf-8?B?WWt1cXd2ZGNZb24vMEYxYVhtRG5FZHhRanJLMHVXMkdpR0NwMEVrMUNqSTRk?=
 =?utf-8?B?OWlrQnhQVXlKSjA4a25rQTNON3NzMVZIRHhSWXZldTd6M2taWXlOUHMzdmxj?=
 =?utf-8?B?bDkwV05iZmMvMDdqMFlMMzZKRll5K0VIUmRzbGVNbzBQbFYwU09XbDQzdmJX?=
 =?utf-8?B?U2YrMVZvU2dyczJkbEJkRVNzL3BBdVBqMTBIM09janNSTG52RlNmUytpL05S?=
 =?utf-8?B?dGluUWVmNkExbnZ1citUVHFVSFQ2bC82YkY0T01ISGhRUHBNY3hqQWhLNFN0?=
 =?utf-8?B?a2NjRkRWVHdsOUJsZU1pMm5GTmRCd1VjNy9VTmhoM3h4d0c0bjJ5aFpabkt0?=
 =?utf-8?B?UzJWNmtxNTNpblhEK3R6aE0yN3lBRmw5ODRhem5xVXk5NkRLMDVvbUUrUzFq?=
 =?utf-8?B?eHVJbjVuTGVrQmo4VmNOcGtJbGppdkk0M0RpYjhXUWN4bDFHMGdKNHY3a09s?=
 =?utf-8?B?Y2w0cHZ6VWpCUVFOeHRVcS81TlVSZ25ZZm9Kb2xRWVhyU09wRmpCdmUxQldS?=
 =?utf-8?B?aTFhdlJHVXNNS3RYUmlEYnZTRGRPM1IvME45N1E5ODF1Nkw4Z29XODlyTWJa?=
 =?utf-8?B?aUF0WmtuRHRaOUdJc1Q5dDQ3TU5CZmlubkhtN2ZJVTlDTHNPNUd5cVhwN3JX?=
 =?utf-8?B?clB6RmdzNDRMaGZRK1JvWmxPMHVBUSs5TmxZRkNiWUppdUNWdVczK0s3alJ1?=
 =?utf-8?B?UERnTDJEUTErV2pFcWtNdWgzNEtYVjRkOHFrTHFwZnJucFgzdE5tN3BSVk84?=
 =?utf-8?B?VTZvV2VkUEVqL08vM091L1A2SEFMZWM1Y0NYenBLSjY0dXhpeEx2cnF3T0xZ?=
 =?utf-8?B?MnRnUXRDblkxR0pGZndIa2tiOC9KLy9XM0cyTk9yWWZIWmdVTkJRMmcyNzVh?=
 =?utf-8?B?TGE2cnhsRXkzUXhEUFppMzNnRGlGUXVHNGZ2c1lxOTNQM2dQNmtEdU9ocm96?=
 =?utf-8?B?K25TTVgrVXYwbUVnM0tGRno1ZE9kMnBzTFdyZ0lub2lCOG9PWG1PRE16MlNs?=
 =?utf-8?B?bEtkV2FLbFphbi9OV0JSL3NMRm1ncFFDcnhhb2ZFdW1ITnNoViswYkJhMnM3?=
 =?utf-8?B?UlpKTHRYN1h1bzlWdGt0ZW9YRW40RzFTNS9va01kK0Y3Q3ZmeklCUisrVDd2?=
 =?utf-8?Q?LNED0nO8clx6qcJULsr9/NFF7?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a61e364a-72a8-4aa2-b3b3-08dd66d6f128
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB8252.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Mar 2025 11:12:31.5031 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 9ZQbDu6CQVj9XONiPUdjovmVbQVP9p96nDY4AWqXJaqqo+ids7yIt+rxSvlwyn0lxrzd9EQ4yZJ1tNt8elTYbw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB6766
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



On 19-03-2025 12:40, Poosa, Karthik wrote:
>
> On 10-03-2025 20:58, Sk Anirban wrote:
>> From: Badal Nilawar <badal.nilawar@intel.com>
>>
>> The Forcewake timeout issue has been observed on Gen 12.0 and above.
>> To address this, disable Render Power-Gating (RPG) during live 
>> self-tests
>> for these generations. The temporary workaround 'drm/i915/mtl: do not
>> enable render power-gating on MTL' disables RPG globally, which is
>> unnecessary since the issues were only seen during self-tests.
>>
>> v2: take runtime pm wakeref
>>
>> Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9413
>> Fixes: 25e7976db86b ("drm/i915/mtl: do not enable render power-gating 
>> on MTL")
>> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
>> Cc: Andi Shyti <andi.shyti@intel.com>
>> Cc: Andrzej Hajda <andrzej.hajda@intel.com>
>> Signed-off-by: Badal Nilawar <badal.nilawar@intel.com>
>> Signed-off-by: Sk Anirban <sk.anirban@intel.com>
>> ---
>>   drivers/gpu/drm/i915/gt/intel_rc6.c           | 19 ++++---------------
>>   .../gpu/drm/i915/selftests/i915_selftest.c    | 18 ++++++++++++++++++
>>   2 files changed, 22 insertions(+), 15 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/gt/intel_rc6.c 
>> b/drivers/gpu/drm/i915/gt/intel_rc6.c
>> index 9378d5901c49..9ca42589da4d 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_rc6.c
>> +++ b/drivers/gpu/drm/i915/gt/intel_rc6.c
>> @@ -117,21 +117,10 @@ static void gen11_rc6_enable(struct intel_rc6 
>> *rc6)
>>               GEN6_RC_CTL_RC6_ENABLE |
>>               GEN6_RC_CTL_EI_MODE(1);
>>   -    /*
>> -     * BSpec 52698 - Render powergating must be off.
>> -     * FIXME BSpec is outdated, disabling powergating for MTL is just
>> -     * temporary wa and should be removed after fixing real cause
>> -     * of forcewake timeouts.
>> -     */
>> -    if (IS_GFX_GT_IP_RANGE(gt, IP_VER(12, 70), IP_VER(12, 74)))
>> -        pg_enable =
>> -            GEN9_MEDIA_PG_ENABLE |
>> -            GEN11_MEDIA_SAMPLER_PG_ENABLE;
>> -    else
>> -        pg_enable =
>> -            GEN9_RENDER_PG_ENABLE |
>> -            GEN9_MEDIA_PG_ENABLE |
>> -            GEN11_MEDIA_SAMPLER_PG_ENABLE;
>> +    pg_enable =
>> +        GEN9_RENDER_PG_ENABLE |
>> +        GEN9_MEDIA_PG_ENABLE |
>> +        GEN11_MEDIA_SAMPLER_PG_ENABLE;
>>         if (GRAPHICS_VER(gt->i915) >= 12 && !IS_DG1(gt->i915)) {
>>           for (i = 0; i < I915_MAX_VCS; i++)
>> diff --git a/drivers/gpu/drm/i915/selftests/i915_selftest.c 
>> b/drivers/gpu/drm/i915/selftests/i915_selftest.c
>> index fee76c1d2f45..889281819c5b 100644
>> --- a/drivers/gpu/drm/i915/selftests/i915_selftest.c
>> +++ b/drivers/gpu/drm/i915/selftests/i915_selftest.c
>> @@ -23,7 +23,9 @@
>>     #include <linux/random.h>
>>   +#include "gt/intel_gt.h"
>>   #include "gt/intel_gt_pm.h"
>> +#include "gt/intel_gt_regs.h"
>>   #include "gt/uc/intel_gsc_fw.h"
>>     #include "i915_driver.h"
>> @@ -253,11 +255,27 @@ int i915_mock_selftests(void)
>>   int i915_live_selftests(struct pci_dev *pdev)
>>   {
>>       struct drm_i915_private *i915 = pdev_to_i915(pdev);
>> +    struct intel_uncore *uncore = &i915->uncore;
>>       int err;
>> +    u32 pg_enable;
>> +    intel_wakeref_t wakeref;
>>         if (!i915_selftest.live)
>>           return 0;
>>   +    /*
>> +     * FIXME Disable render powergating, this is temporary wa and 
>> should be removed
>> +     * after fixing real cause of forcewake timeouts.
>> +     */
>> +    with_intel_runtime_pm(uncore->rpm, wakeref) {
>> +        if (IS_GFX_GT_IP_RANGE(to_gt(i915), IP_VER(12, 00), 
>> IP_VER(12, 74))) {
>> +            pg_enable = intel_uncore_read(uncore, GEN9_PG_ENABLE);
>> +            if (pg_enable & GEN9_RENDER_PG_ENABLE)
>> +                intel_uncore_write_fw(uncore, GEN9_PG_ENABLE,
>> +                              pg_enable & ~GEN9_RENDER_PG_ENABLE);
>> +        }
>> +    }
>> +
>
> Hi Anirban,
>
> where does PG enable happening after selftests complete ?
Hi Karthik,
After the self-test, a Driver-FLR call is made to reset the GPU and 
display components, and this call originates from the DRM subsystem.
Here is the call trace:
[  +0.000002]  intel_uncore_fini_mmio+0x8a/0x200 [i915]
[  +0.000272]  drm_managed_release+0xa9/0x170
[  +0.000008]  devm_drm_dev_init_release+0x69/0x90
[  +0.000005]  devm_action_release+0x12/0x30
[  +0.000004]  release_nodes+0x54/0x90
[  +0.000005]  devres_release_all+0x9b/0xe0
[  +0.000007]  device_unbind_cleanup+0x12/0x80
[  +0.000005]  really_probe+0x1c5/0x3b0
[  +0.000005]  __driver_probe_device+0x8a/0x180
[  +0.000004]  driver_probe_device+0x23/0xd0
[  +0.000004]  __driver_attach+0x113/0x230

Thanks,
Anirban

>
>>       __wait_gsc_proxy_completed(i915);
>>       __wait_gsc_huc_load_completed(i915);

