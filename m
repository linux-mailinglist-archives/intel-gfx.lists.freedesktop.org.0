Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 578F3C33F3F
	for <lists+intel-gfx@lfdr.de>; Wed, 05 Nov 2025 05:54:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D70E110E16D;
	Wed,  5 Nov 2025 04:54:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lllr0kfN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DF29C10E16D;
 Wed,  5 Nov 2025 04:54:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762318461; x=1793854461;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=zmvrJWyY4K46Kh2Y71eWQ60X8sEHWF5Jzc4mzpiD8h0=;
 b=lllr0kfN0ndX9bx2r6Y5/H9ZW8lcfSXKklilBlTHpsJBKTq2b99nqZud
 CW8D6iH4NfakeE2mOJysXy31Qt/Q3egf0jsTeoJAxzkua2gsfxij1AxoJ
 C+fvtCD7ka863k7m8GL8Cd+BWKZL3OTPKTpcR2+jC8fxJfooZHBD3yFBc
 06q84dp4Po+Osc7LRxodC0xUe/C9HGzxNCZ1iOmsJpXBll5wuUT1EX6gn
 nruLyoWx4zVKKUn7kFrTl1ipS36Ke6tWOtFdK+MG1lyuMWuFZ3t6FiVFv
 CinetUBJsJiisIIlUljSDPez9Ck2NOpLRiEdw3k+qE4i3Vy1KJdLJXbkt A==;
X-CSE-ConnectionGUID: /jjLMVeVSU258xjx91AZbA==
X-CSE-MsgGUID: R4x0B/yCR2KISM1MSyzpoA==
X-IronPort-AV: E=McAfee;i="6800,10657,11603"; a="64573263"
X-IronPort-AV: E=Sophos;i="6.19,281,1754982000"; d="scan'208";a="64573263"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2025 20:54:20 -0800
X-CSE-ConnectionGUID: pMq0RXyETbu5juW10iiYcQ==
X-CSE-MsgGUID: ORDncKRSQa29bTKjM0k85g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,281,1754982000"; d="scan'208";a="192514106"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2025 20:54:20 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 4 Nov 2025 20:54:19 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Tue, 4 Nov 2025 20:54:19 -0800
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.43) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 4 Nov 2025 20:54:18 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=zLIyy4bEGRsn3J9UHN04Jei0dR8PGvd7re9vGaDaau5mF6qRDkMgbp9AWgSCg/Fr1beP4YFztj8pty7MYLvjkgwgFYPklbKtzsUxP0MjFKeGUYnZKIJhMiGKLT7Re7va48ViiokX3dZGPGhZckVIQV7WJNUVe0uTvvuGq+mgEXCrO410dfEZCjvBvpW0M5NNjtItdaGHZ8wG4SMMVqbitz3UsYmegOKoUVW9X12SKdpZSi7aFQYDy16jhdF8GXylh/z8L8opKsglHsCKKLdlNwPFOj0TVU4E7GE3xE91eWxazeivBJf9jGwxmMrczKkCqp7tMi70b9GAM4kRZ4rgQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3qEhQ1Y8wzHE6p4kBv6hmSnvM+DpjbuTWuvP7RWj/KA=;
 b=B9V7tIhylFMgvDLrwV6rEtN2JEu0wXSIo0Y8FTN4FIeuwX4mmkhNOvDI1QnXwIqXeZ+gRDUGpXuAujws/+0tv1bXFOaw49/BQhZgqTgQ7o8K6jr2xNtoycoq2COrv1F+hm3nX0SDyXTBslBXijCp3vsuJUDgMUh0RUgMHu2GSVZcz+LDajla4ZaHkmfFa145EDGlaT09GC6DczAAXUWe0pgPXlGEHaTx9T54/XhnN+bYoECsfSMSm3uuy6isIsDNrzJlsI1IVhrXeb5M12vEoM1Lh5VIqlffQn14aO3nY/Emeix1VNp6wOqsthlkf5PDZqCsjJCE/d3DRHojO6RCDA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SA1PR11MB8319.namprd11.prod.outlook.com (2603:10b6:806:38c::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9275.16; Wed, 5 Nov
 2025 04:54:16 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.9253.013; Wed, 5 Nov 2025
 04:54:16 +0000
Message-ID: <9316274c-2379-4e96-be4a-26b36406a5f0@intel.com>
Date: Wed, 5 Nov 2025 10:24:10 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [RESEND, 11/22] drm/i915/vrr: Add function reset DC balance
 accumulated params
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: <intel-xe@lists.freedesktop.org>, <uma.shankar@intel.com>,
 <ville.syrjala@linux.intel.com>
References: <20251103053002.3002695-1-mitulkumar.ajitkumar.golani@intel.com>
 <20251103053002.3002695-12-mitulkumar.ajitkumar.golani@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20251103053002.3002695-12-mitulkumar.ajitkumar.golani@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA0PR01CA0074.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:ad::7) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SA1PR11MB8319:EE_
X-MS-Office365-Filtering-Correlation-Id: 8aaf03bd-0d72-4879-0552-08de1c275f4e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?bnVaY25ia0duQVZaczIrTmtNL1ZCZHZVNGRCVisra01kVlVWbVFFL0FsNW52?=
 =?utf-8?B?ZzRVY1l3MEZ4eTVYNko1WDk4R2ZjL05HRkpUZkE0dnBzYk0rb01EOStaNUYr?=
 =?utf-8?B?dzZjMG0zdlJHbG55ZWw2N3NwQU9zZVVZb0xPem43RktBL3kzZ2tUSWM0T21J?=
 =?utf-8?B?L0xBMHRxcGFYUHNORUs3bEdXaG9rYy80a0pkak5yb3dUZitPYkIvOTVQekV0?=
 =?utf-8?B?YnA5VUJDWXZtUlFCbWlkdTZqUlFWVy9xQTYra0c0TnhxdHZFMHQvZTZQaEdD?=
 =?utf-8?B?SXB1SEZ6NWxSMEIzQ1BMaE1Tb25ub0RFYWZYdnJrRWVCNU1UblVwLzBxSnQz?=
 =?utf-8?B?bmRsOWpCZ0dRSVJvdHIxWTh6QmxkNGc3cFk1cVQ5SGNaSTN2VmJDZmZBODJi?=
 =?utf-8?B?SFZQOHA4Z1dvV3F5OTdHbkdsVCtMbGNZR3ZMczIyTG1MaDhkYU9yUFdYTGps?=
 =?utf-8?B?ZEhoOGNxMzkwUHFYVmdOcUtsdGc4Tjh1YTQ1YTFJKzdCR1NYY09mS2VlOGM4?=
 =?utf-8?B?M1lqM0RjQlNYbkhnNnAvM1NNbzhlNCtpMkJMNzM2aUFZWjBQczNta3Z3d2hi?=
 =?utf-8?B?eU9zYVlBeCtYZ01BQVZYVmtLak9kYW5sc24wNTkvWE5oS0t2Mkcxb0svK044?=
 =?utf-8?B?RkpIQUl0ejFPZGR5cEN6NTVZQjIzV0tmeHNVcWZwQnIwRVIwWmp4b0RZdlZ6?=
 =?utf-8?B?TUxDU09tamNlWmhiYWRGdEF6Q0NxcnhRSEwxMnBJRy9nZ3FRWjRQWTVGWE5l?=
 =?utf-8?B?YWJyREVyRHBlUHl3ZVRUQWJRS3J3ejVIOHFXREF1ZEY5WC9SRk8yaTZjNlhk?=
 =?utf-8?B?dERZSVQrdmZyelFoVGV2dENDOE90NUlZOEVUVGgyc1Y1ek9lTml1TGtQc1k5?=
 =?utf-8?B?R2lUOU9ObzZGZ3pNSjFFUFAvNmRhY1Rkc0wyRk5HQ2dsREtGYUdNUy8zbXVH?=
 =?utf-8?B?UTNJaWEwUis2MTJXUGorWFk3U3ZYUlhod2o4N2dTWEQ5bXVGdFZ3bDdkQmZ0?=
 =?utf-8?B?cGtESTVFSHVtNWlGeGE0TWVkdTdmY05IcWMvOHFZaFBBVjllb3pObk9MaXZN?=
 =?utf-8?B?dWJERHZhQXA4SG5yZDI4K1FOK25wMUZ6UUQ3N0I0RHB4a0E0UkNPNGdZTzRa?=
 =?utf-8?B?MUdqZk5ldGJpZUJHQWhPWFhSRXZpU05UUHBrRDc0MCs2QXhXMTdIWGgzdlJx?=
 =?utf-8?B?RGxBNHhISzgzb2RpVFZuMjk4TDhwNG11NUc1dWlpMGpmNWtXaXhrZWR0Wndu?=
 =?utf-8?B?SmNRUyswRVVmNVEvQ0p3aEtVNHBsMTl2eVFjanYzM0dWa3BrSlgwWkNNT3g5?=
 =?utf-8?B?aUpPenN2MkNXTnJnVjBDQVF6bDBLRHY0Unh4YXhicVVkUEhXemw4U1FuUG9k?=
 =?utf-8?B?Wm1kTzZiTzU2am9sZ3B3cmVETVlsV3g2amlyNFdKTUQrVDFqUGZMVzh0Zmw5?=
 =?utf-8?B?eTdnWVA4M3ROL3J1NkExSXZRRUZ6ZEdqem81WGxBVjl6MzNYVWlJeU9xSmVV?=
 =?utf-8?B?S3RNSXFKWTlNWGVWd2NVdndUOTZWazB5NTlLZ0tyS3pRNTdqN2E5cGZFeGtv?=
 =?utf-8?B?RW0xZDFDbWZhZWlVRGFnTWVyTlhxajd4ZFBUN0ZWSk01Yk0wSGgwQVJyNjhQ?=
 =?utf-8?B?VWcxeE9zS0Zuck5FK0drQ1dPK0oyMjRJeFdERUJkNlA0NGxzWTR3VENHS3Fo?=
 =?utf-8?B?Sk5TbnR6RDhkb3BPaVA3L0dsbjl3TzlIaUU2N200UVhUVzV1UmxEaHQ5cE5a?=
 =?utf-8?B?WTJiaHo1ZzhWKzRFS0VQQTRKaDN5czltb1pDSUI2ZFZUV3Y3SmtjWUpyRjlI?=
 =?utf-8?B?MmV2aktQTTBZVlNIVHh3azJCV1U2Q00za3RGb1lBVVQxN0lIMTdvU2I3S0lr?=
 =?utf-8?B?L3NFUW10THZwQ0poY0U0akhPeEcvcGxad3p5ZE9PZFlzRTdJV3BQK2w0UEZn?=
 =?utf-8?Q?WXH7cyRCwNSOa32KEH6WUdwVCWSk8Y0d?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cEFvTXRQTEJWQ2lpU2l4cVJ1c1JnTDEwNmxueXQvTVMweTlLc056cE1SSFd2?=
 =?utf-8?B?QUkvWnljcWNrUVI4MVBwTTk3cVFseWRMUFplcUVYZUt2S2Y0dTVhaW9JeDhO?=
 =?utf-8?B?clZjRUFHaXNJN2UyRVZzSTFQZ0Z0V1VHdnlrZjlGekk3SmgvMjFyZGo3dzJ1?=
 =?utf-8?B?MDZablRWaHQvMVRZSGg1bGdFYnVCUFNNVmd0VElNMzFWRlVKSXN6Z3k4QnhL?=
 =?utf-8?B?L2VxZE84YURxOTdvN1dLbEp6alVWS3ZkWTB2Y2ZoNGFmRG13Ui9GNFBuYnV5?=
 =?utf-8?B?ZXBzaXdCSU56VEk1dFJaNDVRdnhnOFNFd3hUMm4yelNKbDFmQUVLNDllRHhj?=
 =?utf-8?B?cWtxOGtKQ2hkQ1Qzbi8xalI0b3QxZjdXSVVXZUFhTlRnWDVrSHZJQnF1NEkw?=
 =?utf-8?B?R1A4L1J4NU83MlpPYjJYZXAybUJxYTNZbDJydkx1ZFh2aThRQXFad25oUWZN?=
 =?utf-8?B?K0l5cjVQeDc0aEk4VTRQeE1WM0wzNzdjYXRhOFZjTncwY1E4MzZZMEZCNysy?=
 =?utf-8?B?a1VVOG43aEdRNThhYTIvc0NGNUxzR0JFZlp4YnFyRlliaGxkS29TSlRvSXo5?=
 =?utf-8?B?bElud0YxK0xPQjBGbW1GTmFLYjk1VnhZUno5eU9wNXljcWRIN2dzL1dTZXNu?=
 =?utf-8?B?SjAwbXRPNC9OelRTQUViTlM0VnpzN0ZuNzZtQ2NsM3VWSzVoY0dwQjZzeXVX?=
 =?utf-8?B?TWM1bTZzSW1uZ2h4OGdKOFNBaVJlZk9ET0txSXFoWHJJM08yY2FYM24rWU5B?=
 =?utf-8?B?dU1HRmdKb2N6YkozamR3d3dRaFIrK29PN0hwOFhrZTFZcUVXZ2FmVFRwRXpa?=
 =?utf-8?B?MERUT1hzSFJ6MzVYbFRjTitFZXI3RU16cWkxY21MRUdEeVJmNEVYL2lMT3dL?=
 =?utf-8?B?bnNvby9rRmVwQUFzQUhFcXNSaE9UbVdOQXhMaHIvcEFPQnBaNFE4V0xCZG5v?=
 =?utf-8?B?QlY1Y3pURis0YU05Ylk3QWRzY0RCbUs0ZDNpdFNpN3E5d2tROUdybHJka3JO?=
 =?utf-8?B?YWlhYlEyT2tTMzJtbWpNNDlqZlo0VVVZRUx2WDV6Q2k4UW9nVXc5dEZERFJj?=
 =?utf-8?B?dkZ6TmZ6ekhvdEJ0ZjRMVFRtekNnK2hlK0tDSVpMKy9EdlNnV1FNQ1BFYVVP?=
 =?utf-8?B?T1FpTmZudEt1OTNUenJyWG16MTkrZC9tdXp5TDZpZS82QjZ2aE45M1M4aVJz?=
 =?utf-8?B?dUNWUTI5UEFaNTdIaVVkYVo1SHBiRXZaYU00M1pSQWxRSEZYYTZSbzd5TTBO?=
 =?utf-8?B?bkEwdEVORExKU0x1RTFwaHBsOU9MeEo1a2oxZU5vZURucFdpcEZrTEk1RVM4?=
 =?utf-8?B?N0psRXU0SnlFQXdBdUpQdyttU2ZBOUtHbFF3ck1WQ0dqc0hFSkZocm9tRXFu?=
 =?utf-8?B?WkprNEdNZmNrRC9KTml1RFFCeTNnQ0h1MmVpdE84aHR0N3YxR1Jnd1pTcm9N?=
 =?utf-8?B?WmYzZmEzRWpXSktaWXlhYVNxUG5VOTRnNzFFUDV2QXU1c015YXowQmFhTDVY?=
 =?utf-8?B?dS9BZFB5YWVoUGhreEJYYlVtNmlqT2pVb0U5WW5jUGZmbW8wNzdjN2plMUhm?=
 =?utf-8?B?azBJOS9lV0ZNWmk3S1ZSdG5tWFR3Y3FBeitER2tJWXFUaFBTcTJhdUx4VTky?=
 =?utf-8?B?cmRVejIrZWxSVzNESW8zMWRLVUVKa1BvT3ZLeThhWjlzdVhONStaZFFoM0pR?=
 =?utf-8?B?NTVKTTdXVTJKUG85akZibm5jMUg3K0dhVzBUNEhIZVpWQ3Z0U0FpaXdSSTZV?=
 =?utf-8?B?TDZrd2pDSCtITmt2V2ZhRFF6T012MSt0ejFLZ01kTWt2S2xZNHN1ekNzYmZW?=
 =?utf-8?B?VHpwQlFDcERFZFc3dHNUVDIvR2pieHpZK3VKWjVHWXJLUVJpcjZXOWpIdXFv?=
 =?utf-8?B?UFNFWGpOcGc1MFBFczJic2J0Qm9nZkJzVXlXZXlHL1hVMDBLeGkvc1V5dGdp?=
 =?utf-8?B?T1QreDEvVGxNeHV3MC9hTmM2REgybVJzYUNnVjNiVjFsb0k1WFhQUytkN1lX?=
 =?utf-8?B?V3QxbmtsdEpGWS9ZUXVDdnVRakQ3S2I3aXZmTW9TS3NEYlIrcWtJS2FCVW5D?=
 =?utf-8?B?OVFlNGxoQVNBK29FNFk0aWZCdjQraXNkMFhnODRXbVZCY3M1RVBCQzhBcFI2?=
 =?utf-8?B?eEVZZENEcWhwV2hPRjJCUEJKR0lHeUdFQTBiTG1uNmdFSEE2VVpibitUKzcr?=
 =?utf-8?B?Vmc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8aaf03bd-0d72-4879-0552-08de1c275f4e
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Nov 2025 04:54:16.4781 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: zpbErzaY+5kTEiYSHf27I4HfJ1IG4GJR+kDksztKDjdbTwBwkxvm1Yt2YmGKfHcCiJ9L9/Ijyjr+BO9FJcxwzMeFgNAH8IkeHpqcGtisQ1A=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8319
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


On 11/3/2025 10:59 AM, Mitul Golani wrote:
> Add function which resets all accumulated DC Balance parameters
> whenever adaptive mode of VRR goes off. This helps to give a
> fresh start when VRR is re-enabled.
>
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_display.c |  1 +
>   drivers/gpu/drm/i915/display/intel_vrr.c     | 13 +++++++++++++
>   drivers/gpu/drm/i915/display/intel_vrr.h     |  2 ++
>   3 files changed, 16 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 323293f4bf6d..b256517d58cf 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -1149,6 +1149,7 @@ static void intel_pre_plane_update(struct intel_atomic_state *state,
>   	if (intel_crtc_vrr_disabling(state, crtc)) {
>   		intel_vrr_disable(old_crtc_state);
>   		intel_vrr_dcb_reset_flip_count(old_crtc_state, crtc);
> +		intel_vrr_dcb_balance_reset(old_crtc_state, crtc);

Lets have both the reset functions in the intel_vrr_dcb_balance_reset().
Move this patch before the dcb_flip_count introduction patch.


Call the function to reset the flip_count from intel_vrr_dcb_balance_reset()


Regards,

Ankit


>   		intel_crtc_update_active_timings(old_crtc_state, false);
>   	}
>   
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index 2ae27751e5b4..6168caff9cf0 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -639,6 +639,19 @@ void intel_vrr_dcb_reset_flip_count(const struct intel_crtc_state *crtc_state,
>   	intel_de_write(display, PIPEDMC_DCB_FLIP_COUNT(pipe), 0);
>   }
>   
> +void
> +intel_vrr_dcb_balance_reset(const struct intel_crtc_state *crtc_state,
> +			    struct intel_crtc *crtc)
> +{
> +	struct intel_display *display = to_intel_display(crtc_state);
> +	enum pipe pipe = crtc->pipe;
> +
> +	if (!crtc_state->vrr.dc_balance.enable)
> +		return;
> +
> +	intel_de_write(display, PIPEDMC_DCB_BALANCE_RESET(pipe), 0);
> +}
> +
>   void intel_vrr_send_push(struct intel_dsb *dsb,
>   			 const struct intel_crtc_state *crtc_state)
>   {
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.h b/drivers/gpu/drm/i915/display/intel_vrr.h
> index 8f97525b8e2d..a713d1a1e3dd 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.h
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.h
> @@ -44,6 +44,8 @@ void intel_vrr_dcb_increment_flip_count(struct intel_crtc_state *crtc_state,
>   					struct intel_crtc *crtc);
>   void intel_vrr_dcb_reset_flip_count(const struct intel_crtc_state *crtc_state,
>   				    struct intel_crtc *crtc);
> +void intel_vrr_dcb_balance_reset(const struct intel_crtc_state *crtc_state,
> +				 struct intel_crtc *crtc);
>   bool intel_vrr_always_use_vrr_tg(struct intel_display *display);
>   int intel_vrr_safe_window_start(const struct intel_crtc_state *crtc_state);
>   int intel_vrr_vmin_safe_window_end(const struct intel_crtc_state *crtc_state);
