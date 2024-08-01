Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 68DBE945174
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Aug 2024 19:27:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ECF4910E034;
	Thu,  1 Aug 2024 17:27:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dzKFc5HI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BE5F610E034;
 Thu,  1 Aug 2024 17:27:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722533262; x=1754069262;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=evGW7716ua9jBDxqCD8No05RA69IeNroDcuYaOnqNPA=;
 b=dzKFc5HIDiK2msF/zBRYR5VI98gNHaaG1OLHVk+igPiDVZ9ylheMKBCN
 Rgyj3F6uU7tBiiRGRDw1sNoV6HLAK6uqWgu0IMpPfZ2X/eSmrgzzNqM2u
 ulTbYo81vMk1MpfYm4HmAI6A1kirLQVegIsy0a24NDFo+Tqn/o92PNXcD
 hyxhL1o6y//oMamRNyB6D9bgncJPtPDr7VyoUt0DlOdP+GFtTPz8cY2mt
 eo04zqJ3Ikig44jBm2vPQGi8pxqh0PsEfqVtISJn8BLS7dxloKqP9zT7v
 ITemqz0RsR60o0qiKuQG4ClEZ6ccWeEmtlKMbAOFKZ2EAoWp6JQdhk4c/ g==;
X-CSE-ConnectionGUID: 6YSr/xxmQSSiCSr/+uc+3w==
X-CSE-MsgGUID: BnxsU+d+QvC5+YTn7TZhFA==
X-IronPort-AV: E=McAfee;i="6700,10204,11151"; a="20191218"
X-IronPort-AV: E=Sophos;i="6.09,255,1716274800"; d="scan'208";a="20191218"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Aug 2024 10:27:41 -0700
X-CSE-ConnectionGUID: FweWxIZlSc2v9cG/JFNmBQ==
X-CSE-MsgGUID: B7hir3yGQQauQDv8I0eOWw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,255,1716274800"; d="scan'208";a="59957527"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 01 Aug 2024 10:27:41 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 1 Aug 2024 10:27:40 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 1 Aug 2024 10:27:40 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.175)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 1 Aug 2024 10:27:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=W/iD94gqOmX9qCXKV055mBojmQB1R+4qUPb9jj7UodHuvNq4uNQnRHrU8Ebb5x5niB1E6sRpm/HX1lKOTqdEn+ZeL2P6dnzdbp5ZISnSSbyVv1G31lUfX4hx3AK+iX+8NfYwSnnPokSD4ZMnOViWGml/hjMAqLsHoS8ChF+wje2WFO5QyTbGgu53FHQ6REms47xPhH6oZ4EG3pcD56pWbpq6K7tmq8RLb/kxJZoKVsdMt1nxoiz/fKlZkDCsxFdrVV4MJjUX8CY3KRnuEke3wrSUbeIN59tNWd6LlCikAstencSxz4d7qZL8MLds58PAWXWffimpzQI9BhVOqQRZkw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hBvxizm/P8LABUz+M+yaGlFuYXyptbqc+PH0PM/0hCI=;
 b=F3gfvafKG8QveBuIZ1YSOgFsAEOshPRvgjrRil+KughS3jkkpcqi/Zmon5ljKS9aKjtnUJcRIm+Vkz6y3M5GlTFDY5AeUlYIuNMRUZLiTxoHL31hsY1X4d9vVn6N6YZkCPO+x+STo9SR5Alfo3Pq018dD3YanKAC84/Csg8A7hCTAfHxwLO6fq5ZhsgevjVuZBTjaRczu6FUoxHrkBhhwbp+A/NpmJTGHiGY2qRuS19teYoUezRwtQDO9/o3XltJ3HMwg1B54kCeDfknZWNGBOzQ1gRXtiL6B8sS4EROyXAUxehFQQ8wU0Y1asrU339xlLOupzr43SpuOzQfB24NJQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by IA1PR11MB6195.namprd11.prod.outlook.com (2603:10b6:208:3e9::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7807.28; Thu, 1 Aug
 2024 17:27:35 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%4]) with mapi id 15.20.7828.023; Thu, 1 Aug 2024
 17:27:35 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <172253181300.5121.9728108615754696540@gjsousa-mobl2>
References: <cover.1722263308.git.jani.nikula@intel.com>
 <313a3cb44e81f067deb9ec03d7e0d13ff6e461b0.1722263308.git.jani.nikula@intel.com>
 <172253181300.5121.9728108615754696540@gjsousa-mobl2>
Subject: Re: [PATCH 04/10] drm/i915: use pdev_to_i915() instead of
 pci_get_drvdata() directly
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <jani.nikula@intel.com>
To: Jani Nikula <jani.nikula@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
Date: Thu, 1 Aug 2024 14:27:31 -0300
Message-ID: <172253325109.5121.7207520966515763049@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: MW4PR04CA0176.namprd04.prod.outlook.com
 (2603:10b6:303:85::31) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|IA1PR11MB6195:EE_
X-MS-Office365-Filtering-Correlation-Id: 9d661811-121d-4275-1c16-08dcb24f3bb6
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?cGI0Mlc0NDVPWFNzc2Fkdm9HUitJNkJFcTFvK2RsOFh4RGxhV1RWZWNsVUlQ?=
 =?utf-8?B?NzY5WS9nN2xNNmltUDZ1Qk1ma08wZUNSRVg0NVpXZWtsaThYZ2N0emx2S1Ry?=
 =?utf-8?B?MjBJYTFEZVl4OXlkRWZsSDdzdHRvYzVMTEVTbW5EVUluV2xLc013QnQ1M3JF?=
 =?utf-8?B?c3BlMmRMbjFnckl6Y2RXYXR6S2tiL1ZVcnFKU08zcmlHcjQxcDZLUlpjcHg2?=
 =?utf-8?B?dzNNRFNHeVpFTGN4dHRnT2x6dExoY3pHYW8wRjN5azBtWVV0ZXZRQnYrL3l0?=
 =?utf-8?B?ZmwvQ3J6WldZZklPNlhrdkthRW82di9XeU1DWHRtaDRRdGpuOXNzSzZuOXlp?=
 =?utf-8?B?QzJSY1RZalBuVXYxNzNMTlduN0FGMFRWV1J6dUJYTnFHSytXNG4rRUw2c2xy?=
 =?utf-8?B?MGNyVExmcE1nM2ZsOXVPQjdvM1hPU2lDZG1GTHFDZnQrNHJxK0QrbTZ4SzF0?=
 =?utf-8?B?NUxNNFpWejRTU2NoanhOaW50bm5SMWNrNTNGL3MxaExRL2VDMnpzYUVoWmsv?=
 =?utf-8?B?bHcySTF3YVc2Y1Y0bnQwdm9URXg1QWRQSVBVYlc0OXBRYUxxVVllcG83MDg0?=
 =?utf-8?B?ZlVESG1TUXRyT0VxWWJhbVNnOWI0M2RVYklHYy9oY3ZSNnZ3SS9WMllOUExU?=
 =?utf-8?B?ZkFxd3ErZ00xRjNianFCOEhBVmZ0UWFvZU5DM0RqcUZBOGlZb3J4Sk5DVXUw?=
 =?utf-8?B?T0F2bUx3bExtQzUrNExJMHRmU1JmOXIxNWxxeDBPNldTcnordTJadFJoUXZH?=
 =?utf-8?B?ZEJDb28xY1prNWo1WGtxWTZnQXZLZmh4MERCSDFqaHlmLzZwR3VpaGRKd0Ri?=
 =?utf-8?B?VndROENEQU04ankzVHA2eXQxM0FjSWR5WFR2djRMWFR3VEIzWmtNMzNScitu?=
 =?utf-8?B?Q1RBK2RIbGxZempjVFNKeEtSckIzUmFMSFRyOW1aZGFYUmxaUnVmM09OUXAw?=
 =?utf-8?B?R0dkRTk0U1BHVlovekhYRVZSSTh2dTBUcWhnYWg4eW9ESUQreklUbVBTdXh0?=
 =?utf-8?B?dG4zVENEWU8wekR3NUVTcDYwSzdZQy9DaEVNM1MwMUZaSWEyQ0F3SFVvWTNS?=
 =?utf-8?B?MnV2cW9VcEhhVEhRWTRhZ2RIaTFLdEZpMEFndmdBZUhLRE9GVWZqNWh4UWMw?=
 =?utf-8?B?Nkw3OHVXOWE0WU1vNm5CeW1pTll1bnlRVm9BZ1E5WVpIUjNiRXNZR1dyVm1D?=
 =?utf-8?B?Ti9kbDdsenc5bkRsUkR2N0IrUHFjQURwMUVtYVMrZlE5QUxENGtvRkFOcW9K?=
 =?utf-8?B?Z1hTMHhISk1abWdoYnVyY1dHUHpDZ0tsUUdlZ2Q1K2FoVW83Z05IQ2RrNVBV?=
 =?utf-8?B?RGZjSEQ0WlJ0QVBXYk0xUnBiWVJpZ09ldXVZemx1RkhqM0hyamNLYis5cmZs?=
 =?utf-8?B?Y3hQeUtMRE5JODdjVzlBdWR0Q0FubWlpMFZJbFgwNzNtWGFRWW1jR2JDd3NW?=
 =?utf-8?B?d3BpYy9ZMGlnVDF0bjNLaHIvdHo2cHVtVFRFdmJjbmlDNjJOT1lTU3hpT0k0?=
 =?utf-8?B?dUYzYzJ6NHZSVlVCSE85KzFUSlp4aUtjQ3BWTFZuKzFIRTZVSTUrVFJOTGQ2?=
 =?utf-8?B?TWQvVTNNY1Z2c2MvS1Rxb3ptYmtsQVhQQ0NhbEJ0RHVrT3BtN0hEQWJxZjhw?=
 =?utf-8?B?ZHRFb1lYRmkxWkFzakMvWnpQRDBSb2RqbTN2RDJjam5FYTVuQk9pWUJDanlR?=
 =?utf-8?B?bFFyRnlXaXRQM0xaWktZcGZQR1BDazJGbUZ6SDZiVXJCbG9hODRVTytqYlFN?=
 =?utf-8?B?UzlVbjJCalRPeUkyQm1ZMDhFTnJ6eUJoQ3VBODJCeWNnQnFxczFDeENtcEYv?=
 =?utf-8?B?QUQ4SHYwdGlJT1VjdW1adz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MWFjSWhkQzBTZ093UmVpN0lPQ1JSR0QvN0Y1ckY2Nm1KOGVQaDFvSm91MmVG?=
 =?utf-8?B?VzYwalNlOEwwZlcreXNjNXYrTHJlVnoxNy9XWkJlNlIvbmNidVlRbEdHNnpm?=
 =?utf-8?B?dWFHWDUzdk1ONWorVkcxRXY5TVBoTngrYjlBRllDNkhmSVM0TUl6QWc1UW4z?=
 =?utf-8?B?eTdBQ1BwSHdHbU1ySnAvdnhCN3JVZCt3NWxOL2cwbXlFSWtKYkxvN2hIcm0w?=
 =?utf-8?B?dGJBQmw3dkFkeUc2QldVMVFTQVRNQXBoZ2hIVVlHL1JreHFFdEdtcGE3L29z?=
 =?utf-8?B?UWkzVExYUVNuUVlyamk2dGdaKzFOQ0xuUHNWTlluTW43VHJTV1Nua2ZJUkdS?=
 =?utf-8?B?eHNtcTVDQjdnQ2VhS0Q2WTJRNnlwYkdGckJHbnkweTMxYkViRG4yL3FTbElU?=
 =?utf-8?B?Zk5OSEtPMmRkRzJwQzVWZjZpQnQvQTVTbzJzUjdjUm0vN1JpZnVsb0p5UjY4?=
 =?utf-8?B?c3VjTmdxRy9RN2dmSTVESUd6WnYvTUQ5djNmWXdqVG85Vm1pNEFYTmZ2Zmlh?=
 =?utf-8?B?MldVeWlKQTlydk4wZnErMzlyczNrNStDUFo5VCtMVnZreERzTlZWaGZuUVNw?=
 =?utf-8?B?ZnhvSEJJTkhVRjNxQ3BBNVNVWEg5bDZkN1k3alFvakNaV0Z2VUs3STBsQjVi?=
 =?utf-8?B?MnNyR2Mwakx5RjhiNE9xZ0ZOYXZ6amZmQjh3UHFrMFBWckd4dWpzVTEzTGFX?=
 =?utf-8?B?VS90WFpNZ2hzcUdoRWduRVNmenJKKzdYMFFMNjlybkcyeTNyUXgwQjZvZUhD?=
 =?utf-8?B?L2FTU0Y0ektnSzR0UjU3M2tYak1YeHdUQ0IzTzJ4MkR1WmZDYysrbE1BcG4x?=
 =?utf-8?B?SjdYTVcvWTNITkZwbHhwZm45T2ZBcG4xY0h3eU52NXovNjhMSHpTclZxVDJr?=
 =?utf-8?B?bFZCa0tPWGFWYS90TjVJSWw2cmNsLzJrN0tZUmJ1NWNFZURCNGNoMVdGcG50?=
 =?utf-8?B?bmpWMHdDN2Yyc1U2M2QvVzI5KzkvKy9tUDNxeFlST3BsZ09ocSs4eFVybC9P?=
 =?utf-8?B?QmVVVzZFdEdEL054djBURlUwR0g0V2pyZUxLUjdUVWgxYU4wbHFBRzZYemNO?=
 =?utf-8?B?WkphdExaMysvNFJXQmZGaS9mL1dwdzRYcW1HcWx0NXA3blJqTHg1Q3g0ekhF?=
 =?utf-8?B?UDVXbmx6RE5Uak1JOEg2QlRWM3B5bzJpNVM0VU41dGRwRit2enJBWkR4dWFk?=
 =?utf-8?B?dVl1Tys3eTU2bHFaY1I0OGE0bzNENTNldGwzaEdEZFk5bGpwR0NBMysyaTk0?=
 =?utf-8?B?aWU4OENWdndBK1I5Z3I1N2g0anQ3QzZTNzQzUnR1R0hKMUJWMTVrVU5hVGdF?=
 =?utf-8?B?ZUtYbnRSbFlSbXBOK01MSTVKUStnVWFUWUZSK2ZzU1ZwRkZ1eXBHZmNQbFBs?=
 =?utf-8?B?R0cvRjNxNjNJQURVdk1jWEppWFJSU2d1aVUvWEJlZFhVeTBiTXAyU2VGV3JL?=
 =?utf-8?B?QjNwNTNuQXJmMW5MRlJyZ09CMUVFUWpKd2o4N1BoMmQxOFJLZjF1Z1IvSmlG?=
 =?utf-8?B?Rkd5MzZ3NFFMNWdjcC90SjdIRnBOenZnZnVwOHk3U1VHWnVHNDRTNVc2ZWZM?=
 =?utf-8?B?WFpDcjREcm5ubXJGbFhkTSt2VXkxTDBkL1hzUjU3NnpnSHU3NmVqZFVqSkEy?=
 =?utf-8?B?V2JkMGZMNkd0cDRPNjRxZXBIUDBsYTYzbE5EaVRJVkxublpqa0NmNjFwSlFy?=
 =?utf-8?B?Ymx6NWZLS01HTDB1VHlhL2VrVmRGVHB0dGN6QU03VXZsMm5IbHpXY3dHVVR5?=
 =?utf-8?B?ODQ4TmpzWTRxTmc4TTRQYi9sSVNBWlR5aGRuc0pjMlhveC82K0xzWjc1VzV2?=
 =?utf-8?B?RnQ3TUM0N0twN3UwWDBKTVc4MXF5QWJPaXFZaC9tMFVlSHA3MDgxTTlLZDBD?=
 =?utf-8?B?eE1IR3dCQWV3V2NzL2dlS2I0MTN0eWRtalJSUGh2RWxmdU1XVmYvWThrR1NE?=
 =?utf-8?B?QnJtTGVNUHJ6UzJFbm4zVE5Day94aGxKcDJNSXduaVNjbmQzUUlKOW8yMWd1?=
 =?utf-8?B?MHlpRmc0SmY5dThkcFFwN1ZiSTlYMWE1VEh5VDdBUFpGWTkrL0hUMzVoejNH?=
 =?utf-8?B?S3BOZXNWc01VMHlmcEl5TnFCc2dSQmdFRm1yUXRwSXpGQlM4YUpkclJtcDdS?=
 =?utf-8?B?cTJhMTJhS0lTOVNrbmVySjAzYXI5d2VqNEliMDFqZU91dHR4ZkJqVXZNMEJq?=
 =?utf-8?B?emc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9d661811-121d-4275-1c16-08dcb24f3bb6
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Aug 2024 17:27:35.4586 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ScE8oJecDi6imzZB2bhatwVynFyNF5WIPfi9u72rnIjQmtWPobKSQ2wUONSyz2onW6A7OLMVmYCijsISO0vEyA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6195
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

Quoting Gustavo Sousa (2024-08-01 14:03:33-03:00)
>Quoting Jani Nikula (2024-07-29 11:30:05-03:00)
>>We have a helper for converting pci device to i915 device, use it.
>
>Any reason why i915_inject_probe_failure(pci_get_drvdata(pdev)) was not
>converted in i915_pci_probe()?

Hm... And after the next patch, that pci_get_drvdata(pdev) call seems to
be wrong (although it would work because of drm being at offset 0).

--
Gustavo Sousa

>
>--
>Gustavo Sousa
>
>>
>>Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>>---
>> drivers/gpu/drm/i915/i915_pci.c | 4 ++--
>> 1 file changed, 2 insertions(+), 2 deletions(-)
>>
>>diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_=
pci.c
>>index ce4dfd65fafa..b2e1fd22520b 100644
>>--- a/drivers/gpu/drm/i915/i915_pci.c
>>+++ b/drivers/gpu/drm/i915/i915_pci.c
>>@@ -880,7 +880,7 @@ static void i915_pci_remove(struct pci_dev *pdev)
>> {
>>         struct drm_i915_private *i915;
>>=20
>>-        i915 =3D pci_get_drvdata(pdev);
>>+        i915 =3D pdev_to_i915(pdev);
>>         if (!i915) /* driver load aborted, nothing to cleanup */
>>                 return;
>>=20
>>@@ -1025,7 +1025,7 @@ static int i915_pci_probe(struct pci_dev *pdev, con=
st struct pci_device_id *ent)
>>=20
>> static void i915_pci_shutdown(struct pci_dev *pdev)
>> {
>>-        struct drm_i915_private *i915 =3D pci_get_drvdata(pdev);
>>+        struct drm_i915_private *i915 =3D pdev_to_i915(pdev);
>>=20
>>         i915_driver_shutdown(i915);
>> }
>>--=20
>>2.39.2
>>
