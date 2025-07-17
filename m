Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A3AA3B08C67
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Jul 2025 14:03:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E29F110E802;
	Thu, 17 Jul 2025 12:03:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Wg0hseCl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DF89A10E080;
 Thu, 17 Jul 2025 12:03:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752753837; x=1784289837;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=nR2RtwpChjCM9vWrmVZvcKwayO9xG+CePCXfujNKp2M=;
 b=Wg0hseCl7O6opNc49SEEvD4nlL83289OkhTEZffEe9DwpmV8/8Mv9TFh
 TykwKKN2FtZsQicnqtzYCP+cwKy0d8BxvbxxkXojOO9pzr6Hj15TG9hnt
 C/26y1AcO8Y6hbr0Ui8xZW3NQfOjvy02XU/uBWlD/sQX+a5vNe5eQlOFP
 xkQeIRbxn04Tdi/PONbquFuQ8dQweMKQpxBu2GEY29DQ6UuDEXK02wF9o
 mQoTTBkoQrzDElOeY98wAUjgF3AIEJLS8jr2sEKbbnslvJow6jyqlZa84
 2Eg+ta8PtR1idBaRVFwx5MrTmO94dYJuWkA6DqQEGW0g3IJA9hCAPw6Hs w==;
X-CSE-ConnectionGUID: mqj0tlq/RsG8ScTCcsTsPg==
X-CSE-MsgGUID: sGFr2QECRLSPm/ZdBAkQVA==
X-IronPort-AV: E=McAfee;i="6800,10657,11493"; a="57639732"
X-IronPort-AV: E=Sophos;i="6.16,318,1744095600"; d="scan'208";a="57639732"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2025 05:03:56 -0700
X-CSE-ConnectionGUID: YJrW6JjnTtWO/EBq/qojlw==
X-CSE-MsgGUID: yL5DQYzEQ0qnVsukEaYoOQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,318,1744095600"; d="scan'208";a="158330209"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2025 05:03:52 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Thu, 17 Jul 2025 05:03:38 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Thu, 17 Jul 2025 05:03:38 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (40.107.92.86) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Thu, 17 Jul 2025 05:03:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=NRhbpAeEWhGDho6a2XCgm+rzlJssdx04svLd3LQrRTvasu/mNy/6n2jT91o9CI/d0L28lBJNDabJR5QD43ZL/vbQXk66A0FftvcNBQ9m1Ybzz/LnkUdUNdMPzKNerDj8rHbP2YVJCZYmFcvrrCYZicZJYC4YLbtKd4tNoB5wygcNwJYgtuo07k1Q+WiEfM+lKWPJpXVPyLVFvLpElzzE6XPrOsD2iW2CQS/CmjlVNc5XfH0e10j6JlW3tIPf4LqQR3w+MANcc8CgI/4Joik8eh44hBJGn9OVLPRjQuDt8NJhnPm2VPO4gq+gnH1blzIW7VyMZlajLwBv04Rus8c5TA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=m7hJinDn5VbbUWVqcLE7qAV+bHa4LzOS2xiA/OGT6Xo=;
 b=eckNexvGsvf7MeAUd65MkmzA65oDYsykgV8w/ELxE/V8nRGKLJYdBXAE0fKz2k9jGEJO+dFzwdhxnIirNFtig4ZAl9D7LM6dTgKAeHBoA4MTqoE/OdbSU0qYKNyVyOyvkzNZUjRUettWZOpkqgCRHenLNUWL5Lfl2aivak30zdFZm0qQTomsaTYufUW7pEOoo+KuWPCb23YMlHAKVAoqesbJ36WxiWMWczA6CBEhS0atNQyEgi9byMI6z6VnMH4YxhKjVeYoR+SOkpCWaGURP64eaDPSb+y4KIUQAED6g7dDEE5PXxMvRKyI6FSVEJcV37nbcYOmVTwqElru5cXiVw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by MW4PR11MB5871.namprd11.prod.outlook.com (2603:10b6:303:188::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8901.27; Thu, 17 Jul
 2025 12:02:55 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%4]) with mapi id 15.20.8835.026; Thu, 17 Jul 2025
 12:02:54 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20250717051603.1036746-1-chaitanya.kumar.borah@intel.com>
References: <20250717051603.1036746-1-chaitanya.kumar.borah@intel.com>
Subject: Re: [PATCH] drm/i915/display: Skip unavailable power wells based on
 pipe mask
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <dnyaneshwar.bhadane@intel.com>,
 <dibin.moolakadan.subrahmanian@intel.com>, <imre.deak@intel.com>
To: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Date: Thu, 17 Jul 2025 09:02:45 -0300
Message-ID: <175275376596.1809.4970039481532019393@intel.com>
User-Agent: alot/0.12.dev27+gd21c920b07eb
X-ClientProxiedBy: MW4PR03CA0204.namprd03.prod.outlook.com
 (2603:10b6:303:b8::29) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|MW4PR11MB5871:EE_
X-MS-Office365-Filtering-Correlation-Id: f5705794-1758-4dbc-3639-08ddc529dcca
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?WjRTdVJmNXNpN3kzU1hWbXEzcXF1OHRnRU13M1JJc2UyZm1ud2FvWGgrazUw?=
 =?utf-8?B?NXQ2N0JIN0dMMXQrQTBEaDdqM0MwVUJhYUdMcG5LYnZPQ2YzVzZMNHg0YzVH?=
 =?utf-8?B?a1ZLdHJyalpkamZMTTZVTlJyT2MrcjY5dEJvYlhocTMrQWxXZlh4aXBGNm9B?=
 =?utf-8?B?dGhaVUZETFlTUS9YL2VtZy9RbmVuM1pqazFaTitqeEJCcjNvcFg3RjZ0emJi?=
 =?utf-8?B?aWhlQmpXcTRIV1dUNUk0OFhBcnNmS3pLUnV4VVE0WUJ5UWpIc2g2UkRaZFly?=
 =?utf-8?B?VmxBS0JxR05TZGZFOWwvaG4yaENZRlBRUG92ZlkwS0JLbmxWMWM5RFJsYjFx?=
 =?utf-8?B?d0JzMkt4L1YvNTNtQXU0eEdTR1lZakJMZ25XTmtXR3VPRXdkaTg4czUyalhD?=
 =?utf-8?B?V3oxS3hyZ0ttY2J6cWlZenN0MnZBT2xjbUc1Y28yOU1LVTgycmJwUTlRY1VZ?=
 =?utf-8?B?YVBrakdHb2dDZnc0WGVuOWVaQ2pUekxYblp6OGxKeEFZcVNxQjZ2QjcrNkdw?=
 =?utf-8?B?bDBOMjFnMjFZTmhKRnJ2TEd2TG9QK0lTaE85ekJrdGNYTktweGt2TlAzemVZ?=
 =?utf-8?B?ZXBWR05hS1dMMVNhbnZHQm5lbit4WVNCZ1krVmNRVXhiUXd0LzlwazFpN05r?=
 =?utf-8?B?SXVtL25OQWdJaUtUSHZ6QzNmRGJRM3BSdmxBcVRkSnRKekM5STRldjIrWStB?=
 =?utf-8?B?THRUSzVlazdvdEpzU1d4NjRqYWI1UHkyS3d6eDVkWW11TjNRZ0k5dVdhc1da?=
 =?utf-8?B?TmdKSHNUMFZRTndQZkRKZzJpYWQ4OFk2bW1KdjMvSkpJb01MUzdzNXM2Z1Rr?=
 =?utf-8?B?dk14NzEvMGVyQzZFVjJ0WXFha05zY2pUUlZQMHJHTGNtZnoxOGM5RjFYWTgr?=
 =?utf-8?B?MnZzSWZyM2dlRXZvekk4TW40T1dUd2E5V1JPVGxVRzRUZkN3WitPZ1ZHbWhI?=
 =?utf-8?B?ZFZHb2QwRWx4OFRJR1R4ZjdQZGNiMHBOZERGNHl0NFJ3U0ZUb0JHem1mS1BV?=
 =?utf-8?B?cEcvWDhtTmFsUlVONnF1WW9BbUp0ZVM0cXdoNU00NHBWRE4wS1I4RmNYQksr?=
 =?utf-8?B?RnVJNUFpaTc5bVVYQUVPUXd3NDViMHA2czJaZHVrN1RnOCt4REVnQm43TGIy?=
 =?utf-8?B?bGdIK25ra1ptV3ZBNTFYNFBoNDA1VlYyMXpmQVlLNTQ2eVV6MmRiYTRoVWhl?=
 =?utf-8?B?dlFwakkrUXVzWEJhbG1uSVphU1VTU3A1emJBL1hnRlU0cm12SEJqZnhoazhi?=
 =?utf-8?B?R3dDbVBlb24zWXpYNDRNclJoWEh0aUV6akJGZ1RKaFgyVFV0eFJCVmhmak03?=
 =?utf-8?B?YXVRQTJlY094WjVOc0w3SDNOK2RTY2ZKWndYZTZRZzlaTnVlSHZzdHI0bGN1?=
 =?utf-8?B?R241SmtXc1BXTzdmenJtMVRJMVAzQXJ5RGFRcXpQRCs2RzNYV3V5cThPb2Ix?=
 =?utf-8?B?dHBlY3Z5SjI3akpXcnk5RVR1bVA0b1F3b1duYjI5R1htTkdyakJEb1Y3NGh6?=
 =?utf-8?B?YWJUQTZYd21GVFlUbFpPMmFsS29mSENDRkh6SENMTi9Gem5ZWHlVWnI3OEMy?=
 =?utf-8?B?eWVZZDVJNnlZMG5pVkt2L0ZoSmVwNzVQc0g2b2hKRjM1Z3FBSVU0Y1ltem8x?=
 =?utf-8?B?SWtKWTkrUGFLUzZ4ZUdWUTg2eWxLWTBKVVd0emljQWEzbTNsdFk2c3JFV0k1?=
 =?utf-8?B?d245ajJjaGZDZE1JNTRPOWc2K3RMTGNVaTFKOElmM1pTQ0dBcHlVN0dRTzVQ?=
 =?utf-8?B?WEVOcEJQZHdicHdEZVM2ajFXQWZjRjVOL1ZVeTlmRTFUZWFpR2c1OUtBMkt5?=
 =?utf-8?B?ZlR0NkxLZFZpNVJEWmdFdnBlWW5OUUpoRmpFSFBMeitmOEV4NXpSWTBBV1p3?=
 =?utf-8?B?Wm95Wk1sSTFWMTVWQm1YL3VMcFJGT0o0dzgvS3RidHdlOTVMMDM3VTVBak94?=
 =?utf-8?Q?gaPa1QIEero=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Q3pObFFWVVJsREQvTnJsZWlaeldUU3RWd2FWeVZYcDg2VDdrbUd5THJVUVM0?=
 =?utf-8?B?ZWtVd0dORUxva3pnTFhRMGFycUsrK0xvWE9PY3lXMVR4cTI5MkhrMlcxNFRX?=
 =?utf-8?B?cWp0aE52REVwMDVUVEZMN1B3SWpySFFRWThjakI4WlJ2SzhzSEl3VWhFa0tI?=
 =?utf-8?B?ZGZVL1g2RUxnUG1iSzJ5bDZYU1FHNGd3V2dZNGVPVDhrK3ZQTnAxb1NiVGtF?=
 =?utf-8?B?V3NsWHVFVko2dXUyblZVeFFBTCs5TFNuaVg0Q2VKS01vcjdJVTBLQ3NvNFJt?=
 =?utf-8?B?bzlFYlgrL2xuZlJ2OFZEYW1qdFh3MFU5b0FlQ0Y0bnZTRE1VQTVFd25iUmw3?=
 =?utf-8?B?cHVGNzlOcFkrM1RLRURZUjBiSHdJMWpOdkNESmgrbFNucUFhVkhCaW5zVmJS?=
 =?utf-8?B?TkVYYytyYlhjdTZieFFNUklNay9LMmdjTDlnOEVRZVJpaXNpNVZ0WmF2cUpq?=
 =?utf-8?B?S1dES2lOK3p3Ync1b0d6WURwdnBNV3I3T0QxT3hRRTQxVXJCcWE0ek8veGhR?=
 =?utf-8?B?cEp0ckNUUlpxV0FDOFBtWC9NaXQzNEcwOENSMmFYY213dG5QSEJHNGpuVUl0?=
 =?utf-8?B?aGhGTW9xN0xnWGtEbktEVzVLWnVadDVZRHNtR0ZrV1ozVmpKbkhzSXdqK29q?=
 =?utf-8?B?Ti90b0o0YjdKZlliQ3RZRXZSbWNvZ0J3ZHZ4RWhscVFJTlNwM1BhZU1mc3NO?=
 =?utf-8?B?Q2ZnYzkwOUNMd0loZE54bnZIS2RyaFBDb29SNnJ2NGVPaGNOMGNvNjJGamFm?=
 =?utf-8?B?akJEVSsyMSs3OTFGUk5jRW96UDVYVUpxVW5MZHpZS2hxa0JrUnB2dElBa2hI?=
 =?utf-8?B?ejBPakF4bGlseWRpaHcvbmJwMFJZNlJCdVZ2VW5la1VEbGlBM2JKRno2S0dM?=
 =?utf-8?B?QXM5RXgvVWFvaTBVM2ZOT1RldGd0Qmx2VUpWSG5KbWVickxFcWlFY1kzRlV1?=
 =?utf-8?B?Qmp3U0E3bVFoa3FuSmhaS2dMSzNYWUtRMVB6c3BHamlaRXhibng2dHB4L1hu?=
 =?utf-8?B?NDVTQ0FBSzZheENSY3ZBVFFxanlFL3k2MUVKWkNDaHhDMm9KcHZLeFFWaTZZ?=
 =?utf-8?B?NktIbE9wTkVTK2p1Q0pKdkVxeUk5WlFPSGhKTUVZOEEvb3Jjc0UxQ0hCSjJJ?=
 =?utf-8?B?aFl6ZGZ5Vkh5VUtLTEIzUEdaQ0NUK1JCeTdXV1RVSmpDNjdxS1FMMmhWUXlG?=
 =?utf-8?B?UkxQWVNBNjBiYVB2cFVpdVpxODRzY3k4a1FPU2ZETzJmNGFDdlk2M015Q0Jq?=
 =?utf-8?B?VlZVTWZZZGJ3b3ZacDNhSmVqa3BjVTZUc2dHTG9BQ3REYk90b0ZOUHhtYndn?=
 =?utf-8?B?VEJycWhlbDRlMUUrWFhYK09hL1lYVjF0RUVkSDUvU2ZDbVU5bS96TWtmaXlq?=
 =?utf-8?B?amZ4YzU1SFZZbVhicmxseWt4djg4aDNpV0tETUVjYzBuMmE5YlU2Zks2Zitt?=
 =?utf-8?B?Q0Jkc1oybVV6QnJJTFE4K3dheStqbm9wSmFSc0VJTkphWW9rV0dpTU0yd2Iy?=
 =?utf-8?B?N3lmTHJPZHpqZGRibTlLeDl2NmN5Tzk0Yk1EelI0NFdzcE85RmpSMFRTVmFU?=
 =?utf-8?B?YkI2Uzk1UngrOE4zQUwzd1JxcFhBbzk0Y1c5Vy9ueUFwNmJNZ2hEdHplbTA4?=
 =?utf-8?B?S0RYZEVEUHRDUHVXTExtaVBmK0M0OGQveFc0SWF2VGdiQmlIdXpvL2VkVUlh?=
 =?utf-8?B?aGJvakhrQjRrN2pxS2Y1b0VpQlBUUHNOL2lXUTk4ZG14MVJQZC9lbVUrek9o?=
 =?utf-8?B?U2YrK080ZDNnalNobFlsTjJ4WTRQUEhjaVVhUDNjczN0OTl1Y0VYWE5BUHU2?=
 =?utf-8?B?cjF5RjVVV3Y2WXozZENqRWkxTTFiSmtGeXo3QlpmK1A2NHcwMmQxMmRpU3BD?=
 =?utf-8?B?WVl5dG5UYnZENnVjSW1XMHUwcWVKWFVITDEwNm45OWxhZkdCS0E3ZU92eldk?=
 =?utf-8?B?d2kwMGRvVkNKNzk4NzdSVVRLSW5EclViVHExNlhUYTU4cE90byt1TGMvTVNR?=
 =?utf-8?B?UUo4ckJJSFJQa0hscXRxSGkwWjkxUW9ha25JMm0rWEYvc0dhd2toY3VJNkJi?=
 =?utf-8?B?clczN3NwVElVK091ZlFNMDI5SzQ4UDkxTDkyVlcwMWRhM1UyZTFMOTBvVkF0?=
 =?utf-8?B?dEJjbUdqaTlueDNLQVBaMkpXZHZBMk03Wng1VmpWL1VFdWU5UEY3VzlkSkRX?=
 =?utf-8?B?aHc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f5705794-1758-4dbc-3639-08ddc529dcca
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Jul 2025 12:02:54.7038 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ZEtxDq8U/esXJGcZlUXG38kPArgcPl8+0kwrLVjXbt6UuTFj1rnNOGf6CQR0jWMYIABwKSEZj4rYt8ntI3ETtQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB5871
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

Quoting Chaitanya Kumar Borah (2025-07-17 02:16:03-03:00)
>Some power wells are only relevant for certain display pipes. Add a check
>to ensure we only allocate and initialize power wells whose associated
>pipes are available on the platform.
>
>This avoids unnecessary mapping of power wells, particularly when platform=
s
>support a subset of pipes described in the power well descriptors.
>
>Suggested-by: Imre Deak <imre.deak@intel.com>
>Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
>---
> .../i915/display/intel_display_power_map.c    | 19 +++++++++++++++++--
> 1 file changed, 17 insertions(+), 2 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_display_power_map.c b/driv=
ers/gpu/drm/i915/display/intel_display_power_map.c
>index 77268802b55e..ca73e4084354 100644
>--- a/drivers/gpu/drm/i915/display/intel_display_power_map.c
>+++ b/drivers/gpu/drm/i915/display/intel_display_power_map.c
>@@ -1748,6 +1748,16 @@ static void init_power_well_domains(const struct i9=
15_power_well_instance *inst,
>                 for_each_power_well_instance_in_desc_list((_descs)->list,=
 (_descs)->count, \
>                                                           (_desc), (_inst=
))
>=20
>+static bool
>+is_power_well_available(struct intel_display *display, const struct i915_=
power_well_desc *desc)
>+{
>+        if (desc->irq_pipe_mask &&
>+            !(desc->irq_pipe_mask & DISPLAY_RUNTIME_INFO(display)->pipe_m=
ask))

According to irq_pipe_mask's documentation, that member contains a "mask
of pipes whose IRQ logic is backed by the pw". I think we are
overloading the meaning of that field with this logic.

* Do we have guarantees that irq_pipe_mask will always be associated
  with the power well that powers the pipe?

* If the power well that has irq_pipe_mask is also used to power
  something else than the pipes, we could have issues if pipes in that
  mask are fused off.

I'm leaning more toward a solution that makes POWER_DOMAIN_INIT map to
POWER_DOMAIN_PIPE_* based on DISPLAY_RUNTIME_INFO(display)->pipe_mask. I
have some idea of how to do that without rewriting code to use a
hierarchical structure (which IMO would be ideal, but takes more
effort).

The idea is to, during runtime and initialization of the mapping, set
the bit respective to POWER_DOMAIN_INIT in each power well that has the
bit for POWER_DOMAIN_PIPE_* set for non-fused off pipes. That would
also require removing the POWER_DOMAIN_INIT from the static mapping for
power wells directly responsible for POWER_DOMAIN_PIPE_*.

--
Gustavo Sousa

>+                return false;
>+
>+        return true;
>+}
>+
> static int
> __set_power_wells(struct i915_power_domains *power_domains,
>                   const struct i915_power_well_desc_list *power_well_desc=
s,
>@@ -1763,8 +1773,10 @@ __set_power_wells(struct i915_power_domains *power_=
domains,
>         int power_well_count =3D 0;
>         int plt_idx =3D 0;
>=20
>-        for_each_power_well_instance(power_well_descs, power_well_descs_s=
z, desc_list, desc, inst)
>-                power_well_count++;
>+        for_each_power_well_instance(power_well_descs, power_well_descs_s=
z, desc_list, desc, inst) {
>+                if (is_power_well_available(display, desc))
>+                        power_well_count++;
>+        }
>=20
>         power_domains->power_well_count =3D power_well_count;
>         power_domains->power_wells =3D
>@@ -1778,6 +1790,9 @@ __set_power_wells(struct i915_power_domains *power_d=
omains,
>                 struct i915_power_well *pw =3D &power_domains->power_well=
s[plt_idx];
>                 enum i915_power_well_id id =3D inst->id;
>=20
>+                if (!is_power_well_available(display, desc))
>+                        continue;
>+
>                 pw->desc =3D desc;
>                 drm_WARN_ON(display->drm,
>                             overflows_type(inst - desc->instances->list, =
pw->instance_idx));
>--=20
>2.25.1
>
