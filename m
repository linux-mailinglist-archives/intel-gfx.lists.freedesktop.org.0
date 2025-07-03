Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EF28CAF7352
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Jul 2025 14:09:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC3EC10E190;
	Thu,  3 Jul 2025 12:09:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="a+liS8P5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E9F8710E046;
 Thu,  3 Jul 2025 12:09:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751544584; x=1783080584;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=DTS15vKw4eHRcNzsTvQinGj++vEKqgGcE/XBPDCWGH0=;
 b=a+liS8P5Udv1TfOJi9SH1PB7T4uLs/B0oVPfd7uKQcihMUgTbPDRzflH
 Oc75Mq8lpsCkZRBA/jjbaiIrE+3r9FxRzIXw2SBEcU8Y0+wKcOZ8J0B/K
 c/DQllXbQfEZKYnLOdwS3IL9SVe1mB9rn/LnGlxHpm4qqlz1CXtrzRB8+
 G9RGjQHvTTK4MsyIPG9IGRHpH8a7LsGNpV9LMn045A7a2+SisR9tihMMB
 Xb2HnbT3FPpx6heLBtz472Vd6tFd/UqSQhdiQWsgaPK2uuVJdegIpZZkI
 sA15hpydHpA/sm0k8cKN/B7B7mbRk9CzT4YPrYm+RP1gWmFrGSkEig07w Q==;
X-CSE-ConnectionGUID: kRjDk0gKSimZEy4hT+jF6w==
X-CSE-MsgGUID: VlPZhhw7Q4q+pDpvrgNVzw==
X-IronPort-AV: E=McAfee;i="6800,10657,11482"; a="53987002"
X-IronPort-AV: E=Sophos;i="6.16,284,1744095600"; d="scan'208";a="53987002"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jul 2025 05:09:43 -0700
X-CSE-ConnectionGUID: aJrrpVgIRz6SqbtuBG8hnQ==
X-CSE-MsgGUID: IxId+K12RZSD0vRgs+Zw6w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,284,1744095600"; d="scan'208";a="154714629"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jul 2025 05:09:32 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 3 Jul 2025 05:09:31 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Thu, 3 Jul 2025 05:09:31 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (40.107.95.46) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 3 Jul 2025 05:09:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=s7SZSF1sD4ilGWbCETGVynL0x+wAEkbRBgWPp8niLf3+Lwy/UHy1i67BgL3FD+xeaRTCEPKxSwcK5E6NOr9dLh7gOKcMnY/pGF4d82d5bSJh6yylvvQ8GdxmFRdxJ7C2L23TONzBF9FFfdTGrGsXIopDVZr7lSPf/oaEhk6p4bkUF5aKN4/VPyrblzKqXVgmU+ib9aLKVa4pMyxNEg+ms4MNorlJpgAkXCkXrV2QQZI1XYsrE2zN5EkurNFe0kvZERZ551RBdZYI9eUsBTjs8Lq4Ux/imb/rq8vlYb29v008NRURArOKrJpVgBweo9kCQYpQEZ7m5csz0/6Z1cl8zg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=c10PkySJLHegHKuPhRX4xlH9XxF8/5IcKn8tToA718U=;
 b=ZRjBnIs0Kprs3PB9I727ZBLN7As+ow4xgMTN1pkDm/2iBA1R2XJYL+YHtq/39EJf2As1yVjDfyqH0F5Beu+ybPooqXCJNOpNVOKnoktvIuMA6MvVPg0B8OjSwHeS/mlgMq4DQgNlVwmfyEd0JgQ1EZ8fBLSQ0JNobnKrWQOqpO+n6hchePUmSbHLp9afNh0lC7x1BTUcePriT2nEPJm+dCiApVeUd11zFElt3joOXZ8vj4THrugVJoVQvmLWaCh3xFBYs4eF9aEKsdc5+1eX0/yHxFp1DL35NRVWBIRML/JYVN3KgOrZDaTNgOde2Mc31XEkey7CfjHMPa8B36qFsQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by PH7PR11MB7641.namprd11.prod.outlook.com (2603:10b6:510:27b::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8857.26; Thu, 3 Jul
 2025 12:08:59 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%4]) with mapi id 15.20.8835.026; Thu, 3 Jul 2025
 12:08:59 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <aGWpag7dGRUAVZfU@intel.com>
References: <20250702084620.3837426-1-ankit.k.nautiyal@intel.com>
 <20250702084620.3837426-2-ankit.k.nautiyal@intel.com>
 <aGWLMinfzWd9IkFJ@intel.com>
 <fsyfxqbrzc5zogoyqew6xs7frdosjeewl4wj43yrduaetzdtlf@wm5utoxy2xeh>
 <aGWkwQZB_hSsjgQ4@intel.com> <aGWpag7dGRUAVZfU@intel.com>
Subject: Re: [PATCH 1/2] drm/i915/display_wa: Add helpers to check wa
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <jani.nikula@linux.intel.com>, Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?b?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>, "Lucas De
 Marchi" <lucas.demarchi@intel.com>
Date: Thu, 3 Jul 2025 09:08:54 -0300
Message-ID: <175154453451.3748.4465804540019858511@intel.com>
User-Agent: alot/0.12.dev27+gd21c920b07eb
X-ClientProxiedBy: MW4PR04CA0256.namprd04.prod.outlook.com
 (2603:10b6:303:88::21) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|PH7PR11MB7641:EE_
X-MS-Office365-Filtering-Correlation-Id: 6b3b2f33-ada2-421b-dc1b-08ddba2a6499
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Y0JNT3BPTm9EdFQvbGJ3QitwQjQrcEVKaXBLNlErKzF6dks3RWpVaEM0cit5?=
 =?utf-8?B?YlZOcngyZms0NHIyakZiWXdVR3BEa0JoZmdKbWUzbEREQ0FqYmt6WEJOQXNs?=
 =?utf-8?B?aUZ3ODFqdGNneloyZlNidHhpcUtHYVlqVUM0WGozRU5lUThIdk1CS1FYUFBE?=
 =?utf-8?B?bUlZTmFqelpoVFVOVytxSzR4dGk1MGw3STNpMUZlU0xlVVI0VEdGbXhOZlRi?=
 =?utf-8?B?em1FQnQ0UkM1ZTlNZHJRM3FxS2FpMnorREpWRWJhUnd3OEQ0RjluQ2JsZUhR?=
 =?utf-8?B?S2Z3L2d0eFB5Ym9GaUtzSDZYdGtETWoxRm56NG1ydExXL0paUjRiWnVSVTZo?=
 =?utf-8?B?aHpwbGVwZDJsQm5kWXQ0WjVaVUhzaXlrZDdzR1hiMW91Zlo0YTJNSnpwdy9C?=
 =?utf-8?B?TWJXWlk2UzdKbk1IcTFVb1ZUdkUyTStLWlBaWlI2Nk9kWC9wU04vWUhPWmZP?=
 =?utf-8?B?SWt5Q0ZmVkxlTEw1ZVQ3SU8xWXdRalZLS21TYkt1bXZvbmlDUE1IU0srRUh0?=
 =?utf-8?B?b3Z4emU5WG1VVHdRQ1NGTkRsWGlrZm01bHJPWWZmNEVlMjc3MDdBRU1aZFBC?=
 =?utf-8?B?aDV1dFN3M0ZhVzA4MXRGZEVpNngyaS80V3FGZjY2d2FmMEVyMWpMLzNoM244?=
 =?utf-8?B?L2VaQ0Q1dHZjYklGTkloQW9tUmFieGVsa1VYb01MdDREbkM1bVJXeUxMU3NE?=
 =?utf-8?B?dmhMdzdUeDExL08zOVVyaEM1QVlMcWlrc2tuRHhnN3d2WEhwRElteU5wYW9n?=
 =?utf-8?B?TXJvb1VHTmJZUkZaalE3aXUyWXFranVlUnBDOVJlcW93aDQ5VlkxWWF4QUVk?=
 =?utf-8?B?OFNLeVVnaUJBN25TOVZhdU5mMW1PbkxoSFJmZkh2ekdEUWRNbWU5aEN3NlNr?=
 =?utf-8?B?ZmhHUFVwQStZRWRZWmRGcGdCRjNtRGRDaE14WU1PRXMwV3JLMVJvR2l3eTFD?=
 =?utf-8?B?U0t6RnE0SmcrekVqVFVtM0Q2T1h1OTBUUnNNNms1ZEFsUVZ3eEVLWldwQ1A3?=
 =?utf-8?B?c0l6NFdZV2RrVk5ZVlR1cHphR0ljRXVCZmg3UjBkdDZNd1VwMGVEa1gvVmRi?=
 =?utf-8?B?ZXBJZ2UyakVXTCtOSkFhelBXdzcvb2s2STcwbDZESnNHZU11UlRCMjE5YlBr?=
 =?utf-8?B?bG9lbFhpcUg3ZE5zSko3Z2cwQWowRmEzUHA3N3N5YnVidVdLWmRMOVZsc0Q1?=
 =?utf-8?B?b2t5bFh0MW1zSEVLNjlGanh1VVZPenRrUnNhcUtjWUxsME9pZ1g0ZXFENGFl?=
 =?utf-8?B?djVkMWVaT3VsODZ3RnN6ZXU5WGoxQ3NYZHVRek1jMS9IWHk2TW1XQmY1RGZG?=
 =?utf-8?B?RnN0VDgxS1JOWWdIWmRKRGNVVFoyUWlJR3U1SnBud1hMNFpLTm5NL2E1Q0JZ?=
 =?utf-8?B?NHJrWm9pRTlmdDhKVkl2eHN4QVBMSkgrSTBURDZrNzdyNk1HS2FKWGVzN29y?=
 =?utf-8?B?U2xXYjBPZ3FFb2M4SnFGR0hxNitKV3FDcmgwaUxKTHNSUjRFZEYwbVVLYnJx?=
 =?utf-8?B?T09Rb2FyYUZUQTNEZHJJQURXdkdjSnc5YjVwdVlkbjVKS3pCcGM0dEk2N1BS?=
 =?utf-8?B?WStQbEd1elpLVE0rbEJLU1ZmVWxqZENndEgyMnhFMlVJZ01OSmEyTTcxaitK?=
 =?utf-8?B?b0JQVER0Y2hnQVFSSFhtVTJ4aVByc1doVEk5bUVmam1NK1kwSkoxTzVYTDB3?=
 =?utf-8?B?QVJwdE50TlVpZ3BBMlphbjRaRDFFaUlTSUJPZ0pFdC82Mi9qTEFwcHlpVTdP?=
 =?utf-8?B?aExqcFFKenZkdmdzQm5xaElkMEtzR3BLUXdHbFhMOEd4eWlkNUZCM3lIT3B3?=
 =?utf-8?B?WHVxNFh3MlRYMVJTei9CUVQwbHM5VjdIU0NvTTZLdGdUY0tLNlV5YmE3VmRp?=
 =?utf-8?B?cThQZTFpME9McXZ3ZURNVVBMRFNSMVl1L2VKWVhwU0tUcXdnSzRIL0lYSjQv?=
 =?utf-8?Q?WFi1jr/dIRg=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dTlrUXJIWFhwTnVaR2Y1RnVsT1paWGR1bnp1UE5TWlVvU3V1U1ZrTk1pMUM1?=
 =?utf-8?B?bEp6OGdPS0VPUGpyaUxWa2RKanNpV1pBUXdwWkRDWFQ4TFIwZVRzdDkzWDBE?=
 =?utf-8?B?cUNsaERLR3ZkMDYxUE9LanB4WndiRDZ0OWV2ckY4OWpONzIzQmx5L0ltZGdQ?=
 =?utf-8?B?NFdYOFhUUDNpZngrNWFDNjlNN1F2R2tjaCtmY0RLandTcjU3MmU0NXJERkxx?=
 =?utf-8?B?TjdXZFFJZ2RPR3MwZGhmUkZXem5lRkJ0MGUwZ24vQ3B3bzdiYXkzU3ExT3Ru?=
 =?utf-8?B?amY4b2FJS1M2SWsvS0Jkc2ZQSTJKSVdJMjVORjJ0QkpCZjNBSkcxKzJYNjJw?=
 =?utf-8?B?NzJKVTk3ckdEOG1CR1BscmZLcmpOQ2drU2xscDUyTnRENmFxUzBzNUNudUFS?=
 =?utf-8?B?RFBvbVUwTm9OSUtETnFVS3dvcFJvWFZMTWZlTDQ0c09LOUkvcTdMK0N3amZW?=
 =?utf-8?B?UEVuN1dtWE0xRGlSWE1hUlREaXA4dE9DSWdVWndIa1RKaExCWkkvQ21Nai9z?=
 =?utf-8?B?SFFqbUlWN2M1VFZsS3cxSm80MUNXNHQ1Sjd1aVl4KzlLY1g5b2ZHdjFkdjVP?=
 =?utf-8?B?Vy9zUGNVM0Q1NkY1T0xmeWgzQUpuR1ZVNWdHQ3o4Z1ZuNUpLZldxR1VzNnZo?=
 =?utf-8?B?SXJVUnh5SUJvcjlaTnYvYTM3TnBSODFnczhibFFpeXNuTXI0QzZLNGhQRkRL?=
 =?utf-8?B?UENJTGNGMGVPMTQzMVhWc2lKWWRFUFRCN0MwekJzTjZDUTlPaGY2cUJuVDZG?=
 =?utf-8?B?eFplVkpzYTNKOUUzSGRobmE5NVYyb3NOSlQvMFBNcndjVjNkQWhTcFlBRVAw?=
 =?utf-8?B?SXFvRFJGWnNITUNUb2lmNTFjTThFKzdZY2R5Ym5zeTRCZ3VyaUVnK2NyMHBK?=
 =?utf-8?B?RmRJNnJqc3A1Y3RhUkZBZWdmUHFmb2RsL3ZaZFdFSC8yczB5REp0K2Nra0VG?=
 =?utf-8?B?TkVvUmp2MzZFenN1YUVlc09NTVM0eSs3aGl0T09oQlgwUFJ6eVgwK3lUMTJF?=
 =?utf-8?B?ZXpsUFcwNGVFbVA1dElIVmpWZXRhb2JGc3c1RlBlWEZobURCMyszU09GamNH?=
 =?utf-8?B?NUFmN0k2ZDR2ZURDeTQ4TlFlVEh6ZENMeXRMa0RRMHFZM0xRSmhBRXdHTWlY?=
 =?utf-8?B?M0lVNkk4b1VQVWgzN3dvNGJGUWlYYWRXTDgwUS9adkVnamdxbFc5OGRhdzlJ?=
 =?utf-8?B?eHE2UzBJS0REei9MNjhOTEdLbkFGaGhQZm9RUnlnZWdKUDF1d2dmSzBYc1FE?=
 =?utf-8?B?U0E3bUV5QkllNUE4RUozcjJPTkFLR095WnBiTlZVVThjTFlrc3NrTHpNYnAv?=
 =?utf-8?B?MXZSb0pBY1NQVks1N1BZazBRVHBnUElHQ0U2OHhJZDV2SGFObkxKNVNpdngw?=
 =?utf-8?B?WERkMlJqaGhkS0ZCcXRscGlHcCs3b1Zud0xWN2RaOEhBSHhMRVJkN3loNnNU?=
 =?utf-8?B?UUUvNlNUWUxXKzJNNWt2YTBqQTZEV3NOczVSZERyWEYyaUg3OElTNWxEVU55?=
 =?utf-8?B?RkNsSjFYNk16UU1SYW9VcXllSTNGUWdNUTNvQzM1alg2N2NEeW0yc0JBR0Qz?=
 =?utf-8?B?QjF3aFJFOHhhdXBDMDB5cSt3MW1iUHorOTRVcVNFQmpYbVVkTnY0QXo2NEpT?=
 =?utf-8?B?WDhSVmFnTXhjMlg1UGF5VWFrbll5NUIxUWg2MWlaTmRHa0daRzhMSUk2Wmpk?=
 =?utf-8?B?T0krb3p1NmlKVTJBcUl3TkVlOERBVkM2VDc5S0JiWi94K1BKb3l4d1lqTzJw?=
 =?utf-8?B?amFkbGcveUVLZXVxcDFTbXlUK0thUGZUY2xVOTgrNjZpNnB0Wml0eXhlZ3dn?=
 =?utf-8?B?S2V1T21oM2tST29xaFA1VlJ1UE1rbHAzckZNNVA1am5xVUp0cWlhc1ZnM2Rk?=
 =?utf-8?B?OUxrUW5IRTYzVCtRWkFpKzBZaVo4cUNOZGJDSGNhWE9MV2xnVmxzcnlmdFhL?=
 =?utf-8?B?ZWR2b1dBKzlhQnY1L3NHOHNRNE5DOTQrWGxwY3pRYm9iNkdReUxYUzB2U2Ny?=
 =?utf-8?B?TlhxTnNwVjJKcW0zM2ptQldqRDc0NG9jenhDc1kybnIrVEJ2NVd2cXE1ckV2?=
 =?utf-8?B?dnpxcVhUK2k1bHpSbENoYVFEMzU2R05wMmpHdk03UW5pVVJsRThPcTlicmpK?=
 =?utf-8?B?NXlERW1WNkQzalZKcTNxcUN1WWdIY2hmV1QrMTdxYTVnRG1NYmEwVVVIRjZ1?=
 =?utf-8?B?ZXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6b3b2f33-ada2-421b-dc1b-08ddba2a6499
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Jul 2025 12:08:59.8210 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: b8Ejk8QzmIizMjQea92fLaM1tRDPlDG8gA1M5WPME3wP7851Lr11Jh2YDT9pTxvgZGyNKwoTT4dnumKPIOHawg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7641
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

Quoting Ville Syrj=C3=A4l=C3=A4 (2025-07-02 18:49:30-03:00)
>On Thu, Jul 03, 2025 at 12:29:37AM +0300, Ville Syrj=C3=A4l=C3=A4 wrote:
>> On Wed, Jul 02, 2025 at 03:25:21PM -0500, Lucas De Marchi wrote:
>> > On Wed, Jul 02, 2025 at 10:40:34PM +0300, Ville Syrj=C3=A4l=C3=A4 wrot=
e:
>> > >On Wed, Jul 02, 2025 at 02:16:18PM +0530, Ankit Nautiyal wrote:
>> > >> Introduce a generic helper to check display workarounds using an en=
um.
>> > >>
>> > >> Convert Wa_16023588340 to use the new interface, simplifying WA che=
cks
>> > >> and making future additions easier.
>> > >>
>> > >> v2: Use drm_WARN instead of MISSING_CASE and simplify intel_display=
_wa
>> > >> macro. (Jani)
>> > >>
>> > >> Suggested-by: Jani Nikula <jani.nikula@intel.com>
>> > >> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> > >> ---
>> > >>  drivers/gpu/drm/i915/display/intel_display_wa.c | 15 +++++++++++++=
++
>> > >>  drivers/gpu/drm/i915/display/intel_display_wa.h |  9 +++++++++
>> > >>  drivers/gpu/drm/i915/display/intel_fbc.c        |  2 +-
>> > >>  3 files changed, 25 insertions(+), 1 deletion(-)
>> > >>
>> > >> diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.c b/driv=
ers/gpu/drm/i915/display/intel_display_wa.c
>> > >> index f57280e9d041..f5e8d58d9a68 100644
>> > >> --- a/drivers/gpu/drm/i915/display/intel_display_wa.c
>> > >> +++ b/drivers/gpu/drm/i915/display/intel_display_wa.c
>> > >> @@ -3,6 +3,8 @@
>> > >>   * Copyright =C2=A9 2023 Intel Corporation
>> > >>   */
>> > >>
>> > >> +#include "drm/drm_print.h"
>> > >> +
>> > >>  #include "i915_reg.h"
>> > >>  #include "intel_de.h"
>> > >>  #include "intel_display_core.h"
>> > >> @@ -39,3 +41,16 @@ void intel_display_wa_apply(struct intel_display=
 *display)
>> > >>          else if (DISPLAY_VER(display) =3D=3D 11)
>> > >>                  gen11_display_wa_apply(display);
>> > >>  }
>> > >> +
>> > >> +bool __intel_display_wa(struct intel_display *display, enum intel_=
display_wa wa)
>> > >> +{
>> > >> +        switch (wa) {
>> > >> +        case INTEL_DISPLAY_WA_16023588340:
>> > >> +                return intel_display_needs_wa_16023588340(display)=
;
>> > >> +        default:
>> > >> +                drm_WARN(display->drm, 1, "Missing Wa number: %d\n=
", wa);
>> > >> +                break;
>> > >> +        }
>> > >> +
>> > >> +        return false;
>> > >> +}
>> > >> diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.h b/driv=
ers/gpu/drm/i915/display/intel_display_wa.h
>> > >> index babd9d16603d..146ee70d66f7 100644
>> > >> --- a/drivers/gpu/drm/i915/display/intel_display_wa.h
>> > >> +++ b/drivers/gpu/drm/i915/display/intel_display_wa.h
>> > >> @@ -21,4 +21,13 @@ static inline bool intel_display_needs_wa_160235=
88340(struct intel_display *disp
>> > >>  bool intel_display_needs_wa_16023588340(struct intel_display *disp=
lay);
>> > >>  #endif
>> > >>
>> > >> +enum intel_display_wa {
>> > >> +        INTEL_DISPLAY_WA_16023588340,
>> > >
>> > >How is anyone supposed to keep track of these random numbers
>> > >and what they mean?
>> >=20
>> > they mean there's a h/w workaround that requires that and this is the =
id
>> > if you need to find more details about it or what platforms/IPs use
>> > that.
>>=20
>> I don't want to go look up all the details in the common case.
>> I just want to read the code and see that it generally makes
>> sense without having to trawl through the spec/hsd for an
>> hour every time.
>>=20
>> >=20
>> > >
>> > >The only time I want to see these numbers is if I really have to
>> > >open the spec/hsd for it to double check some details. Othwerwise
>> > >it just seems like pointless noise that makes it harder to follow
>> > >the code/figure out what the heck is going on.
>> >=20
>> > what is the alternative? The current status quo checking by platform
>> > and/or IP version, dissociated from the WA numbers?
>>=20
>> I find it easiest if everything is in one place. I think every
>> w/a generally should have these:
>> - which hardware is affected
>> - what other runtime conditions are required to hit the issue
>> - what is being done to avoid the issue
>> - a short human readable explanation of the issue
>> - the w/a number for looking up futher details
>>=20
>> Splitting it all up into random bits and pieces just means more
>> jumping around all the time, which I find annoying at best.
>
>I suppose one could argue for a more formal thing for these three:
>- which hardware is affected
>- a short human readable explanation of the issue
>- the w/a number for looking up futher details
>
>Might be still a real pain to deal with that due to having to jump
>around, but at least it could be used to force people to document
>each w/a a bit better.
>
>Basically anything that avoids having to wait for the spec/hsd to
>load is a good thing in my book.
>
>There's also the question of what to do with duplicates, as in often
>it seems the same issue is present on multiple platforms under different
>w/a numbers.

With regard to this last paragraph, in my experience, I have seen two
types of situation:

1. Usually we have a single w/a number that is shared accross different
   platforms/IPs, which is what we call the lineage number in our
   database. What happens sometimes is that people, by mistake, use the
   platform specific ticket number instead of the w/a number.

2. Another thing that happens sometimes is that we might have different
   hw bugs that have the same workaround implementation. That is the
   legitimate case of having our code mapping two or more w/a numbers to
   the same implementation.

--
Gustavo Sousa
