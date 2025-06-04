Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 85B54ACDF9F
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Jun 2025 15:53:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A7F4710E791;
	Wed,  4 Jun 2025 13:53:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bOVMyauV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 454A210E757;
 Wed,  4 Jun 2025 13:53:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749045208; x=1780581208;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=V3yWeBkvCuDxjv8YDaknj4ORh64jTupFWqnSKv28NGc=;
 b=bOVMyauVLiuekvi8Fj27L65CcJW6x1QVivqYcEbvXskxwBgJWd2JyxU+
 qn3sxU5iUAv5u1aTyS1iXoSSBC+upNq5HlLNU5ULjXp1daUHqh+Kb7dOH
 naDAoCSsR5yBdTuga7qLYXo9PJDRPMaixOVmJjVVm4XXh6v0Mjzk3vDdc
 qTd362pqEthxpoua9DZuzCyumgjTUm5yygM8gXORfpJ7SoW76V+mDoWlr
 XbYUgCXHcDQrqhoq3vI28AWg17HdNvGqm9+TPl7CeZuuFJOq5F2pbZoTB
 YTXDlg59k7dHzfomwhUAI5NTQ3PSLjC2IAkyWXs2GYk4+bVBjD/4wBCkg A==;
X-CSE-ConnectionGUID: E+g2UzStQqyZwlcHUoGHtw==
X-CSE-MsgGUID: U0O+tvphQFuH5Rk/mQ8iNQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11454"; a="68677358"
X-IronPort-AV: E=Sophos;i="6.16,209,1744095600"; d="scan'208";a="68677358"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2025 06:53:27 -0700
X-CSE-ConnectionGUID: rmzZ8nlCSTGsj95x2Q3ucg==
X-CSE-MsgGUID: 1KjhVMI0R+aq4c7/9kQr9w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,209,1744095600"; d="scan'208";a="146140601"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2025 06:53:27 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Wed, 4 Jun 2025 06:53:26 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Wed, 4 Jun 2025 06:53:26 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (40.107.94.87) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.55; Wed, 4 Jun 2025 06:53:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=R8JJrOi2zxVpuDxLApkFRFFDwy0BWcFtF77Ek/6RiYDWsE8oXLC1UOpUPgQLChlxPRDTxDwqRR51bJ5HSdImJi4k/DxpwG/m4dA1r91TCNXWWyP/Ju8QBrR/QzGE2UXFVP+xlthJbTozr2U4F7hU1yrY646K5Q+KO4HLEkZ7anUs2TA21gtn9uioRRLcpOR9SI49G/PWtKrBr2vtGwDIgQ04citxnkrXKbNLFOPo6BE1JvXCy0P5X3p517c9nEzD3+k8k9mC9RkaNE6dHCkWHV1jgiYvh7C0gINtkLQkKRXdzXdFeVj9K1jHPEh2t9Jy5L8Q7NzQH9WPls7BmvxPJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=V3yWeBkvCuDxjv8YDaknj4ORh64jTupFWqnSKv28NGc=;
 b=nY30zolWI8PbYY8rmuI5e3lnsSa/C+tBOdBDKUg0GFYWpf3ykguT+w9zdb4tInWd3U0OwoxVrnzVUPN1jOYv8swZxBp6p+iLvGaHRRGO4ubddEy8YH22Fon1p/YP0MJeEVjZVfCLs6QGAUt0YW/NehzqOGz8HCPy2/X0WMDZbhdvaUfveHm0ri8DXTgYWiZ+koubgJIcd2KYywYOEGn+jCDKWry0R/lBY7+sZbqs5dOVj51bz6NyUaxWpurgC5tvl5OYFV1fCoDJJwBIImO2SfkigZ54mleI/FoT91qQUMwM1oh0GwyaE7gRKlHP+nz3ga47g6xgTSc8Gi8b3dC6oA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7777.namprd11.prod.outlook.com (2603:10b6:930:71::14)
 by SA1PR11MB6733.namprd11.prod.outlook.com (2603:10b6:806:25c::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8769.32; Wed, 4 Jun
 2025 13:53:24 +0000
Received: from CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8]) by CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8%6]) with mapi id 15.20.8769.035; Wed, 4 Jun 2025
 13:53:24 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Subject: Re: [RESEND 5/6] drm/i915/dram: add return value and handling to
 intel_dram_detect()
Thread-Topic: [RESEND 5/6] drm/i915/dram: add return value and handling to
 intel_dram_detect()
Thread-Index: AQHbzulix76qFjjhEk2dT//y/iGWbrPzEj4A
Date: Wed, 4 Jun 2025 13:53:24 +0000
Message-ID: <1b9550075f9620be90ea66fee0f708b3e82bd279.camel@intel.com>
References: <cover.1748337870.git.jani.nikula@intel.com>
 <be2c31c459fb95d8161b719d499403eea5ec17b7.1748337870.git.jani.nikula@intel.com>
In-Reply-To: <be2c31c459fb95d8161b719d499403eea5ec17b7.1748337870.git.jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.52.3-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7777:EE_|SA1PR11MB6733:EE_
x-ms-office365-filtering-correlation-id: 8210136a-4c93-47d2-38c3-08dda36f2cf9
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?bi9mZUh0OHFrYU5CdlhkSjRjL1ZKczR1UWZYbnA5QXpVd0NjOUJSRXRsd1ZZ?=
 =?utf-8?B?ZTFNMkdHeW41YmxSZS9CYnU2MGNuN2J4Tmgrbk1tZzVKZlU3aTgxeHhVa1FU?=
 =?utf-8?B?Sk1KMTU5QWNubXcyc2NlRnJmVFJBc21iYXlwdWE0RE1IRGliUmpERW90WDJD?=
 =?utf-8?B?eVZtRXYreGEzZW9GV0QxVC9nZCtpMHhneDdhaVpMaUw2MjlleTVwOEZGUUps?=
 =?utf-8?B?aTE0YUJrSnlrVC9KR1ZZRENQYW45V2JDTnhFaElxVlRQTmRmU2ZDWHR1Qnkx?=
 =?utf-8?B?ajk2QktIMXZHaE1ESVJibFFxdVA2L2gxeDZJK1pMTllNa0EwSGNZZ3lDR01B?=
 =?utf-8?B?ZHFCTnlIaDVySDhtRmVKQWVUUS9HcHNQb3lOUVp5a2VKNFpwSXc2OUJBbDR1?=
 =?utf-8?B?UlNDSlA3a25SMk5ZOGFYM2pyZkJNd2x6YmxWYmpvUCtlM3NpTzJWdmlzd045?=
 =?utf-8?B?UzltT2VqdklmS0YrNFhwS0hGamdsTjdHczQvUzNuTy9FQjNBaDMzSXduaTdx?=
 =?utf-8?B?TWNBazQ4WUpkY09zZUFSMU1WR3JhMGRUUlNFb2tLYU1FZG1yVUUxWmhZaWVH?=
 =?utf-8?B?bllpckdXcFNua1lQODJjeUNxS2lWa0lZTzU3SVdaYzIvVk5yMmVvVlhxMFNu?=
 =?utf-8?B?Z2JkVTBBWStiaFpNczg1Vlk0UklDc2xCWVA0dXpNS1FxUUhlVGFBNkRHRUFI?=
 =?utf-8?B?OXl6c0hnT2NxM2kvUmN6bU1GUUpLT1ZHRDFvQzdZVHdVM0N1TWVla3lKY1Z1?=
 =?utf-8?B?VFNtNGVSN3hkaVNSZzhvNUJNcng5cGZaT05TalJoZUthTytxMS82Q2RsRGpr?=
 =?utf-8?B?ZzErT1ZDMmxJUTJjRDNYU2NyU2grU1VrV21Mb1F6MXpCcUdkbmovQ3ppQmRr?=
 =?utf-8?B?Z2FKWStHVDJleWVrWkZ5T0h0QVMwWFdzOFBEYTVDSHlVNlpRWjdHc05TeS9l?=
 =?utf-8?B?RjA3MlBmYWxPd09MdUZsdUMzWlJSb1NjT01QZEdvdGRqcDg2aTlkU0wzWFZR?=
 =?utf-8?B?VE1Ca0VyU0p1YVJxQ01lUms3OWt0QzB0dVZFRWN2dmN3K1BiaFl4V1o0MFVh?=
 =?utf-8?B?bWdSL0xiZUgza0lSYjN3WTRPRlcxbDA4ZHBSNWlXZXBBZlk3aDBkMnVwMlIv?=
 =?utf-8?B?VlE2Vk8zZ3NhUXRVZnVyVGtna3VsRXBLeVhQUXhtOXBzeDJQTUM1QkkzTXRO?=
 =?utf-8?B?TFhDNmM4R3g0YVNpUVdUd3IzS0JzL2R5aW5hUGtzZ05Pa0tEZDRkN3lrWUJZ?=
 =?utf-8?B?MHVsNWFGTDVIREFOU1pLR1FvOC9kZ0RBMVJwQm5aU3dTWDBOVyswRHhPT0pt?=
 =?utf-8?B?UmdCZEFDQklUSjMvcGhzYTRGYmU2RUJEOTJVMDhkSkhUbzkxQ3duTVV3bzRz?=
 =?utf-8?B?MDcxanBoK2RlUWZJemJVRXhJbnFFUFJPTGcvQlZiMC9Mc1ZtQ090ZUExWkFn?=
 =?utf-8?B?b0pvNm8wVzlaY1k5eGoxZDJxWVlsWURrVUpCNlY5V0JvSVU3T3JNTkw1Tnd5?=
 =?utf-8?B?NzM3WEQvOGo2MEttK2Q4S1g1eDdDK01qNVd2Z0tGQ2thZTBQVXNDWk16QUxm?=
 =?utf-8?B?RnIzcEhnRlBNeitsM3pqUjlCdFBWaVYwd2hjTHVHTnVpR1NVUHZLN2d3aWRz?=
 =?utf-8?B?OFY5VWw1NkovMVp5R0x6cVZ6MTZVM3c5MTRGTFRiK2NCUytnKzZNa1JYZ2NF?=
 =?utf-8?B?Z3Z0RnV0ZUhjbVRPUWhtSWd4TlRUZlRCSWZpaUloSkN6NUJ5aVdPV2l5UTBo?=
 =?utf-8?B?RGpaSjc1Z0V2MEJVWVBxR0orRlRubzlINktDTy85KytLZHFFaFEza0ZId09o?=
 =?utf-8?B?U096RmRHSGV3MGFnMzhaQ3ozUGVHL2E5eVU2YXFvbGpXd3lpMEQ0NXhSdFJD?=
 =?utf-8?B?aTZzeDFlMzNmTG9IcC9xeDhjL0xFMW9CYk81bVY3dUoxRDkrTlZCbElDU081?=
 =?utf-8?B?K2JGakgrc1RSTU1hWXFmVUdBdkhDeVYxV2I0QkdXb1hjNDd1K3N4Qms1QVkw?=
 =?utf-8?B?ZDJKQ1pVMk13PT0=?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7777.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?M3NybVVZcUhXMDN2aitBOEwxUnRwTjgwSmwxUW9ZSXU2K0FzL1Jhcm45WE04?=
 =?utf-8?B?TUIrZDFrL0FsVnFBT0o0UjFvMmVPUW5rdm1PM3FKYzNXeHI2UkIwdU5nTS9K?=
 =?utf-8?B?L1p1TW51TUthaVdmbFY4eW8yTGJZa0JvRmswOXZWZ0FkeVg5dHNTd24xdE9S?=
 =?utf-8?B?VzgyRjNkUCtaV1NHUCtHWllNVkU1N0VPM1FXK29kSnRpUU1pMFFKZ29DUGtr?=
 =?utf-8?B?SXl6QUpjdXcrTnRHQkFObERpYUJxZVZvSGMxV2phRFNBYUlrNnJwMlh0Q0Z1?=
 =?utf-8?B?NU0zKzJFMFAyaDd6WDdDNjd2dnUvcGNmb2Y2RGFPUVVyeFlraWQrcEJJL0dV?=
 =?utf-8?B?YlJxSkVrSWhyNEZHZVFYNWNZYTBONC9uaVhVRTFid2VORDZwTTB2UlBoUnFv?=
 =?utf-8?B?Z2VQd0JyZGoxdlNQdU1EK3p1TkVlV2VTck5mclQ4VGs3UVJNYS9lRkt5TXJD?=
 =?utf-8?B?aERGWVNmdG1IaElGaFpDeUw4dWJiRlNtQzZHcXBsWUVWTGVPM2wrbDlqYWhG?=
 =?utf-8?B?WGpaZG04Ly9mSm1CejZraXpVcll1Q0RoL1RiME1hT1I1QVBhQW9mTkRzTXFU?=
 =?utf-8?B?NHkzM21HTnFpdXFoaDZLVUdTeUpLc25uNmxwS3Y4MlhRY3o3WVI1cGNCVXJr?=
 =?utf-8?B?bkE1SnVtdW5qaXByS1E2a2QwMVA1TThSQmJDOTcrQSthM2k2OGJSenFWTkdZ?=
 =?utf-8?B?K2RoR1pjdW1xTkNSZmRiTXl0dEVpUzNsYXd2a2VYZWMwT3NoR3RIUUk2Vytn?=
 =?utf-8?B?MDgzaDBoT1pkZ2tIZTI4eVJRR2hBSG95NUlGcnJqK3VTMlIxWUpFaHZTdHo3?=
 =?utf-8?B?Z01mNUhDd1dpRm1IWXdxY3pqM0ZVS2xQV2ZGaWJvbzFTc3pBVGdWNTNZZy9h?=
 =?utf-8?B?KzBsWVkvNUhzK0pEZ1NPV2czd0Jud0tPbnJhZGQ5STNjMlIxaXlzN1VPQWU4?=
 =?utf-8?B?a3pZMHNmeWlYNnVHdWxRNkluditMYzI5Z2ZLWmYxQUdJRmdvTWNwVmpLKy9i?=
 =?utf-8?B?KzBGaVlZOGpHS3FJVzJDaUxBU2ZJTHZGRS9rTG1VUGk1Y0xhZGFHMjV4U2V0?=
 =?utf-8?B?Z0dyRTdLb0VDaVNlZkxVR1RCdklWbDZjMHFrSzBoM3ZRYXQ5SzUzTFY0VnFy?=
 =?utf-8?B?WGZ3QzlFQ0xaSkF6c0c5dlJFQWx4SXBTRk9IZGlWNERla1d0Y0M3R2UwVDJa?=
 =?utf-8?B?UzQ3czlmVEN5bEJ1akpLZzAyWXBwTWZwSDBaZnkzaWxQMjB0NG1vVmhBMGZ4?=
 =?utf-8?B?RGMxTVRkbStHTFRJejhFa1JaaXFqNVN0NnZYWHd5Zm5aSDY0d1g2eFh6czFR?=
 =?utf-8?B?Z1ZNaVE4VHQrZy9DTUx5YUNkaTlBQTlPMTJONVZWRzU5VW41SVpVVXQyRkEw?=
 =?utf-8?B?a3MvaW9ESG9tdjNoMnhPMDhsUElObDZUQ1NPQlhMc0ZHdlJubTI2NGxVakpY?=
 =?utf-8?B?VG1GdlNZSjNnZzVHK1Q5OXFTS0hZZjR0RjkwTEtMQm1RcWdJN0NYZzBZeXlS?=
 =?utf-8?B?ZVAvejV5UFlpdG1HeXUxTEhZYm1meURMalpEYjhXSStzSjVuMEJvMllBN2ht?=
 =?utf-8?B?aElTNWFGN1RuNjl0ak93RUZ6K3ZJM0ZtOW5CS3FkU3BDMGI5OXVneWkwVDlT?=
 =?utf-8?B?dXhBUm9DOURCcyt1ak5sRmUvOC9uRU5nRTFWajR0YlBTTjhlZmpxclk4d05Y?=
 =?utf-8?B?TGZGazl4QU9Pd3RJbkhhOWVnRDRFTVVZaGVmUUJ3SW1rSHljRnQxdytJZXJs?=
 =?utf-8?B?YVFzWm1sWHhSaG16N1pCUTJSUllxa3ZZbmxHRURHZ2dMZXh5dWR3YU1ialV2?=
 =?utf-8?B?R1o0emtiVFd0VUV5VGVvUGdYM1ZtYTdDczYzMi9uRHF2WDhGaXdNZkJ1Vnlu?=
 =?utf-8?B?dExYSDdiMWJ6MEZrSXVRZHlScFlzaWNJWE1hVGwwUG9XRGdXM1ZhMUJKdUZV?=
 =?utf-8?B?ZWFXUUlZeUtaakdnN2JNZU1QRXZydHp2S203R2VUOWY5bTZIdm92eEEvSG5H?=
 =?utf-8?B?YW93SHQxMC9reHduazF4cHZzSkRVTzVxczRQd2VGS2xLN2FpODZ4T2FQcGw3?=
 =?utf-8?B?ZjFSTEYzQWYvM1hsQkdEWlgxTHI1Z3Y5Tzdtd1RNbWMvS3R6by9WdGZLcUp4?=
 =?utf-8?B?bmFGVE1hVGY0NVFTZld6ckpYeDZmMm5sQkhqUm9DREdtRkNjVGNhMnAraHh5?=
 =?utf-8?Q?NQX3PNzHdmIrDlX9CyePL4k=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <7799A26794273042870256B76D098C41@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7777.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8210136a-4c93-47d2-38c3-08dda36f2cf9
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Jun 2025 13:53:24.7538 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zRjwygPsYbgt7c5dgujGKE0viUAU4qray/gTb/DkHhb5OdXKF2hvPq8dxX+AlCr1IPZg8EElEbCzHz6S84ughX3EbN2/IMHBQsM5vaK1mZc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6733
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

T24gVHVlLCAyMDI1LTA1LTI3IGF0IDEyOjI1ICswMzAwLCBKYW5pIE5pa3VsYSB3cm90ZToNCj4g
V2UnbGwgd2FudCB0byBzdGFydCByZXR1cm5pbmcgZXJyb3JzIGZyb20gaW50ZWxfZHJhbV9kZXRl
Y3QoKS4gQXMgdGhlDQo+IGZpcnN0IHN0ZXAsIGFkZCB0aGUgcmV0dXJuIHZhbHVlIGFuZCBlcnJv
ciBoYW5kbGluZywgZXZlbiBpZiB3ZSBzdGlsbA0KPiBvbmx5IHJldHVybiAwLg0KPiANCj4gRG8g
bm8gZnVuY3Rpb25hbCBjaGFuZ2VzLCBidXQgbGVhdmUgYSBjb21tZW50IGFib3V0IHdoZXRoZXIg
d2Ugc2hvdWxkDQo+IGJhaWwgb3V0IG9uIGRyYW0gZGV0ZWN0aW9uIGZhaWx1cmVzLg0KPiANCj4g
U2lnbmVkLW9mZi1ieTogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4NCj4gLS0t
DQo+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcml2ZXIuY8KgwqDCoMKgwqAgfCA0ICsr
Ky0NCj4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9zb2MvaW50ZWxfZHJhbS5jwqDCoCB8IDkgKysr
KysrLS0tDQo+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvc29jL2ludGVsX2RyYW0uaMKgwqAgfCAy
ICstDQo+IMKgZHJpdmVycy9ncHUvZHJtL3hlL2Rpc3BsYXkveGVfZGlzcGxheS5jIHwgNCArKyst
DQo+IMKgNCBmaWxlcyBjaGFuZ2VkLCAxMyBpbnNlcnRpb25zKCspLCA2IGRlbGV0aW9ucygtKQ0K
PiANCg0KUmV2aWV3ZWQtYnk6IFZpbm9kIEdvdmluZGFwaWxsYWkgPHZpbm9kLmdvdmluZGFwaWxs
YWlAaW50ZWwuY29tPg0KDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X2RyaXZlci5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcml2ZXIuYw0KPiBpbmRleCAz
YjBiZGE3NDY5N2QuLjIwNjkxYTg1ZDUxMyAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9kcml2ZXIuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Ry
aXZlci5jDQo+IEBAIC01NjgsNyArNTY4LDkgQEAgc3RhdGljIGludCBpOTE1X2RyaXZlcl9od19w
cm9iZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpDQo+IMKgCSAqIEZpbGwgdGhl
IGRyYW0gc3RydWN0dXJlIHRvIGdldCB0aGUgc3lzdGVtIGRyYW0gaW5mby4gVGhpcyB3aWxsIGJl
DQo+IMKgCSAqIHVzZWQgZm9yIG1lbW9yeSBsYXRlbmN5IGNhbGN1bGF0aW9uLg0KPiDCoAkgKi8N
Cj4gLQlpbnRlbF9kcmFtX2RldGVjdChkZXZfcHJpdik7DQo+ICsJcmV0ID0gaW50ZWxfZHJhbV9k
ZXRlY3QoZGV2X3ByaXYpOw0KPiArCWlmIChyZXQpDQo+ICsJCWdvdG8gZXJyX29wcmVnaW9uOw0K
PiDCoA0KPiDCoAlpbnRlbF9id19pbml0X2h3KGRpc3BsYXkpOw0KPiDCoA0KPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvc29jL2ludGVsX2RyYW0uYyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L3NvYy9pbnRlbF9kcmFtLmMNCj4gaW5kZXggZjQyZGNkYjc0ZDQwLi5lN2ZhOTM4Yzk4
Y2YgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L3NvYy9pbnRlbF9kcmFtLmMN
Cj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvc29jL2ludGVsX2RyYW0uYw0KPiBAQCAtNzA0
LDcgKzcwNCw3IEBAIHN0YXRpYyBpbnQgeGVscGRwX2dldF9kcmFtX2luZm8oc3RydWN0IGRybV9p
OTE1X3ByaXZhdGUgKmk5MTUsIHN0cnVjdA0KPiBkcmFtX2luZm8NCj4gwqAJcmV0dXJuIDA7DQo+
IMKgfQ0KPiDCoA0KPiAtdm9pZCBpbnRlbF9kcmFtX2RldGVjdChzdHJ1Y3QgZHJtX2k5MTVfcHJp
dmF0ZSAqaTkxNSkNCj4gK2ludCBpbnRlbF9kcmFtX2RldGVjdChzdHJ1Y3QgZHJtX2k5MTVfcHJp
dmF0ZSAqaTkxNSkNCj4gwqB7DQo+IMKgCXN0cnVjdCBkcmFtX2luZm8gKmRyYW1faW5mbyA9ICZp
OTE1LT5kcmFtX2luZm87DQo+IMKgCWludCByZXQ7DQo+IEBAIC03MTMsNyArNzEzLDcgQEAgdm9p
ZCBpbnRlbF9kcmFtX2RldGVjdChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkNCj4gwqAJ
ZGV0ZWN0X21lbV9mcmVxKGk5MTUpOw0KPiDCoA0KPiDCoAlpZiAoR1JBUEhJQ1NfVkVSKGk5MTUp
IDwgOSB8fCBJU19ERzIoaTkxNSkgfHwgIUhBU19ESVNQTEFZKGk5MTUpKQ0KPiAtCQlyZXR1cm47
DQo+ICsJCXJldHVybiAwOw0KPiDCoA0KPiDCoAkvKg0KPiDCoAkgKiBBc3N1bWUgbGV2ZWwgMCB3
YXRlcm1hcmsgbGF0ZW5jeSBhZGp1c3RtZW50IGlzIG5lZWRlZCB1bnRpbCBwcm92ZW4NCj4gQEAg
LTczNSw4ICs3MzUsOSBAQCB2b2lkIGludGVsX2RyYW1fZGV0ZWN0KHN0cnVjdCBkcm1faTkxNV9w
cml2YXRlICppOTE1KQ0KPiDCoAlkcm1fZGJnX2ttcygmaTkxNS0+ZHJtLCAiRFJBTSB0eXBlOiAl
c1xuIiwNCj4gwqAJCcKgwqDCoCBpbnRlbF9kcmFtX3R5cGVfc3RyKGRyYW1faW5mby0+dHlwZSkp
Ow0KPiDCoA0KPiArCS8qIFRPRE86IERvIHdlIHdhbnQgdG8gYWJvcnQgcHJvYmUgb24gZHJhbSBk
ZXRlY3Rpb24gZmFpbHVyZXM/ICovDQo+IMKgCWlmIChyZXQpDQo+IC0JCXJldHVybjsNCj4gKwkJ
cmV0dXJuIDA7DQo+IMKgDQo+IMKgCWRybV9kYmdfa21zKCZpOTE1LT5kcm0sICJOdW0gcWd2IHBv
aW50cyAldVxuIiwgZHJhbV9pbmZvLT5udW1fcWd2X3BvaW50cyk7DQo+IMKgDQo+IEBAIC03NDQs
NiArNzQ1LDggQEAgdm9pZCBpbnRlbF9kcmFtX2RldGVjdChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0
ZSAqaTkxNSkNCj4gwqANCj4gwqAJZHJtX2RiZ19rbXMoJmk5MTUtPmRybSwgIldhdGVybWFyayBs
ZXZlbCAwIGFkanVzdG1lbnQgbmVlZGVkOiAlc1xuIiwNCj4gwqAJCcKgwqDCoCBzdHJfeWVzX25v
KGRyYW1faW5mby0+d21fbHZfMF9hZGp1c3RfbmVlZGVkKSk7DQo+ICsNCj4gKwlyZXR1cm4gMDsN
Cj4gwqB9DQo+IMKgDQo+IMKgY29uc3Qgc3RydWN0IGRyYW1faW5mbyAqaW50ZWxfZHJhbV9pbmZv
KHN0cnVjdCBkcm1fZGV2aWNlICpkcm0pDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9zb2MvaW50ZWxfZHJhbS5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvc29jL2ludGVsX2Ry
YW0uaA0KPiBpbmRleCAxN2EyMGNkMmM2ZDUuLjI1ZmU2MGIyYjExNyAxMDA2NDQNCj4gLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvc29jL2ludGVsX2RyYW0uaA0KPiArKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9zb2MvaW50ZWxfZHJhbS5oDQo+IEBAIC0xMSw3ICsxMSw3IEBAIHN0cnVjdCBk
cm1fZGV2aWNlOw0KPiDCoHN0cnVjdCBkcmFtX2luZm87DQo+IMKgDQo+IMKgdm9pZCBpbnRlbF9k
cmFtX2VkcmFtX2RldGVjdChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSk7DQo+IC12b2lk
IGludGVsX2RyYW1fZGV0ZWN0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KTsNCj4gK2lu
dCBpbnRlbF9kcmFtX2RldGVjdChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSk7DQo+IMKg
dW5zaWduZWQgaW50IGk5eHhfZnNiX2ZyZXEoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUp
Ow0KPiDCoGNvbnN0IHN0cnVjdCBkcmFtX2luZm8gKmludGVsX2RyYW1faW5mbyhzdHJ1Y3QgZHJt
X2RldmljZSAqZHJtKTsNCj4gwqANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS94ZS9k
aXNwbGF5L3hlX2Rpc3BsYXkuYyBiL2RyaXZlcnMvZ3B1L2RybS94ZS9kaXNwbGF5L3hlX2Rpc3Bs
YXkuYw0KPiBpbmRleCAzZjkyYmY1MTgxM2UuLmVhZmUyZjA5M2E2YyAxMDA2NDQNCj4gLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL3hlL2Rpc3BsYXkveGVfZGlzcGxheS5jDQo+ICsrKyBiL2RyaXZlcnMv
Z3B1L2RybS94ZS9kaXNwbGF5L3hlX2Rpc3BsYXkuYw0KPiBAQCAtMTIyLDcgKzEyMiw5IEBAIGlu
dCB4ZV9kaXNwbGF5X2luaXRfZWFybHkoc3RydWN0IHhlX2RldmljZSAqeGUpDQo+IMKgCSAqIEZp
bGwgdGhlIGRyYW0gc3RydWN0dXJlIHRvIGdldCB0aGUgc3lzdGVtIGRyYW0gaW5mby4gVGhpcyB3
aWxsIGJlDQo+IMKgCSAqIHVzZWQgZm9yIG1lbW9yeSBsYXRlbmN5IGNhbGN1bGF0aW9uLg0KPiDC
oAkgKi8NCj4gLQlpbnRlbF9kcmFtX2RldGVjdCh4ZSk7DQo+ICsJZXJyID0gaW50ZWxfZHJhbV9k
ZXRlY3QoeGUpOw0KPiArCWlmIChlcnIpDQo+ICsJCWdvdG8gZXJyX29wcmVnaW9uOw0KPiDCoA0K
PiDCoAlpbnRlbF9id19pbml0X2h3KGRpc3BsYXkpOw0KPiDCoA0KDQo=
