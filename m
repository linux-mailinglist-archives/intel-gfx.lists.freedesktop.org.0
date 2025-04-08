Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D595A7F72B
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Apr 2025 09:59:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9A7F210E5FB;
	Tue,  8 Apr 2025 07:59:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DvxBnSvO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 266E810E5FB;
 Tue,  8 Apr 2025 07:59:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744099182; x=1775635182;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=7wbZlWMxdaJQf1VW3A/asqv0dpKdYj+sqvPzqGCpacw=;
 b=DvxBnSvOZjGAz0PDWMhwbemDmDuy85nH6zcuHqqxDGZUZELSIAdtC9dg
 hUNnFueJchDulZUq1B9YSqx5Dhe4HIwWaw+ErNJvr7454URRy8fVl2PAV
 MfUW+e4TYOSMHmp1ryinvjc/uTl9a9PuskR8Sy1qhxmYExrGgaCNNE2YA
 WIMqfyhxGG+8OxtziMmP643+E1naxi3Nd8ioPb6MHpc5pP6jfdavDJ1q9
 j+DC63yhgFQUdPuFbSgkISp26vX4gU8P1zSQQotu/W5Y1kZqIGLxRBY6b
 VoFotnv8+2hbkCvBC6LvnEmdOqfs8BsSUKf1dFpJtc5tQYkp7kISyLdln Q==;
X-CSE-ConnectionGUID: yDsRt2oDRQSFYrittAzs/g==
X-CSE-MsgGUID: 8y5jZ2BeR5ac+3BRgTCdVg==
X-IronPort-AV: E=McAfee;i="6700,10204,11397"; a="45231033"
X-IronPort-AV: E=Sophos;i="6.15,197,1739865600"; d="scan'208";a="45231033"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2025 00:59:26 -0700
X-CSE-ConnectionGUID: KNCzYHlpQN6a8yBgMGGOjg==
X-CSE-MsgGUID: /WopRb+nSp+3GMKb+S9WZA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,197,1739865600"; d="scan'208";a="128696974"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 Apr 2025 00:59:26 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Tue, 8 Apr 2025 00:59:25 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Tue, 8 Apr 2025 00:59:25 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.44) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 8 Apr 2025 00:59:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=UXZGIlF9DKL+rmBTqF2tuf7wB4RHR4y80rmggKAFFZSpq1j3eHxaYxHNVdhpGmaiG4hqiVUeZplfgCKtvRtoVhvTBl36S5AuSH+3qght1BdGGtU0iVcMQmwYFnFEYNDiT2VAl2D3Mk0yaM7V9m4+EGaZwi8oDebhAyIlqpm+TogY45w5YPyB7PJUnt0aTptzF2y6VtLrCHr//PN+cXaY/MFT+yUNP4ejqX/07OxBgJyWsgQbFQNZTvCDGO4CpZTMSbO7jiAXUYfVrIAL7kwp7icNGoUge8IbclLDy5LaGeIAY448y2cEY4Fj+miNcihGd9CnELSsQXzIicbGuuG3oQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7wbZlWMxdaJQf1VW3A/asqv0dpKdYj+sqvPzqGCpacw=;
 b=G6VtKqb5cS87zRBN+AnthNP5Ma8Jhk04HmUtrFmO5PYBo+CJS5dW4sXj+j4JkwgVjs9NwuyazdBDXE8dGnuFwPiKeQXWX2MTR3GxPtma25F/Wrwcr2LcdPjqroYK8Hx7WRseruMxxg24G4o3Jp/Ii9uvtkOqjHbL7Bwj4U34AekP34J71SdsPWAsC1A1Lj8vSg1xuRs9tmQ6lChL8NCW1+OMtpyHO4ZQnNW0U0SlFz7ov19InfBzb9Zmf3pN7TMgoUzeJbQFFIFAANkcb+z65+6gLOLFea6i3uaW4LyZZOaVPMmGYrlb06rLxU5PFQP0lH97znXvxfNZiHjdI3lqEw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 SJ5PPF1FF629472.namprd11.prod.outlook.com (2603:10b6:a0f:fc02::818)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8606.34; Tue, 8 Apr
 2025 07:58:56 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%7]) with mapi id 15.20.8606.033; Tue, 8 Apr 2025
 07:58:56 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Manna, 
 Animesh" <animesh.manna@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>, "B, Jeevan" <jeevan.b@intel.com>
Subject: Re: [PATCH v7 2/8] drm/i915/lobf: Add debug print for LOBF
Thread-Topic: [PATCH v7 2/8] drm/i915/lobf: Add debug print for LOBF
Thread-Index: AQHbpH30DroiMldDpECNr3kMAvbukrOZbJ+AgAACLwCAAABbAA==
Date: Tue, 8 Apr 2025 07:58:55 +0000
Message-ID: <74568f0f4a6a28a88646695cfa089c2bb7e9895a.camel@intel.com>
References: <20250403092825.484347-1-animesh.manna@intel.com>
 <20250403092825.484347-3-animesh.manna@intel.com>
 <f779f49fd81dca8d5dda42d01f23ea74760f937e.camel@intel.com>
 <BL1PR11MB5979FF3F81282AF76FD43E4BF9B52@BL1PR11MB5979.namprd11.prod.outlook.com>
In-Reply-To: <BL1PR11MB5979FF3F81282AF76FD43E4BF9B52@BL1PR11MB5979.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|SJ5PPF1FF629472:EE_
x-ms-office365-filtering-correlation-id: 60c81dbc-12ce-4d7a-a6f5-08dd76733645
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|10070799003|1800799024|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?cDhQd0oxbmdaZEtLSGZBOXlDdGluemR5ME9HbXlWVlVCbHVYOGhqTWJUeFRP?=
 =?utf-8?B?ZHZ6RUxNZzl0QkpnMlBiSmVsZWZLcVVsdU8vWUFKcTR2Zkk2ZHhVbkRHNXJx?=
 =?utf-8?B?VmoyQVRNalJtUGp5cVluajFSS2hjR2JteU8yR1RJV1UwMDZDUk5ISUZVTTA2?=
 =?utf-8?B?SW5Kb3pTSGRjVlp0UHJaSjk4L3F5M21YUnhwdnpLd3hEK0dUTnQrY052TEx2?=
 =?utf-8?B?Q0hSeW95QmhtQVlhYU5WeUtYbVhZdW4rbExCMG8wYzJjRVNIcEhQMXJ0a3BP?=
 =?utf-8?B?eGdEQmhtM0s5TVJYZ3pwTU1rOVNKeExReHFMTXBwSHFja2xIb2hjS2RURUU0?=
 =?utf-8?B?YWp4MFJkeXRhWFl5UzV6UTNRdS9WK0xXMFR2Z3p2aE1JZ3lacXhvRFIxOFFU?=
 =?utf-8?B?NXBJU2dTNnFxVlpkZ3F1dWxxVE8wNlJHTXpFc0k2MnBHdUxYNGpRZWlNQ2ZN?=
 =?utf-8?B?cFBERnNPcDRPcUU1YnNQTlg3ZWpoOFRmUitxSldzQWtaVHBtcGI4WUlsUTNz?=
 =?utf-8?B?M2dpOFdFWEp6TldsOTBRVk9mVm9HalJnMXJ4THd6amhra2ViWHBiUHVPYTVC?=
 =?utf-8?B?S1BIZFFmSWU4aE5CSzR4ZmJKTERuTTNMeTFEOXdtWnFoeTI0YjBoSGZTQ3Jw?=
 =?utf-8?B?M09neG5UNHdYNWtjNWs4N1NYV3RLY2cvZXlqRVk1NjNicjVRcncwNUZKL1dx?=
 =?utf-8?B?UFh2Z0lSdzVqYnNCOWhQbXZqdzhHN2t2WkoxekRHVGpjR290ZFNqRXY2bGxL?=
 =?utf-8?B?US9nTUR2SmV3TElyb3ZNdlNqRys5RlNaR3lCWmJTTy9GWE1LL0JCTTZpYmtV?=
 =?utf-8?B?clE4bEhCeHN0SWh6U3lzSVJkYnZOY1VBMmg5Tk5udVdENHdxN2ZJMDlTWUtU?=
 =?utf-8?B?R2lpdXZ0NUNlWTcxZXRKSFZ4YU85UGVKQXVBNGRHZFltWk1jb0RMQzdLeDE2?=
 =?utf-8?B?b2V0R0hmam1MSWFyaWM5VC9LZE9hTVNoOVRyY3NqL3FUOW10VE55QWUvd3FR?=
 =?utf-8?B?UmwwejB2cmJNTCs1WmNDeUdNbUQ1QWE3TVFCVU1GRTg0bG04czQvMmlMRWhI?=
 =?utf-8?B?ZDdMT29CdHVXQTBTbDM5Qm5EZWtHaEdQc0ZpaXFSZEc5ZWhOV2hsNG5VaGNK?=
 =?utf-8?B?UHFhcXZZOTY0cVB1aVRTWFUvR1NMS3YvNEtIMGZvNzB5YlJZbnZYMytZTXVS?=
 =?utf-8?B?b0x5VVAxWVZJU0d0SlNPZlBBK0l1UWVKMTBURjg2ZGl3dWFDaWVVZnRLTHRN?=
 =?utf-8?B?RURqRThpSzhzbzZPeWNTY1BURnlZVHhVVU9RUDZUazRxTDZHdWJPNStuYTdD?=
 =?utf-8?B?azE3VC9VdDFRRFpOcVl0MFU2Y3o4NWp1Wi9WOUZpYzhYZmFMMjljUlp3NjNi?=
 =?utf-8?B?SDJuSzNxTHIxUCthNE1PbHIraXp0UEVEellsUTFpcVhVQTFQcEcyaWR5SFpE?=
 =?utf-8?B?RnhLM050SXU1VkZvK2k2WlByT1l6SEtqTUJ4NlFXeS9YaFR6dERvOUlWUHlB?=
 =?utf-8?B?ZlZRWWhmTXNxUlcwVE5VKzdiVS9KRHJPUk1pYjBOa09OQnNIZWhLcnpHam9u?=
 =?utf-8?B?dEhyOU53ZVp1RzhocmxJeHV0eG9ZOFNZcHhtRmZMQmlJRE1CTXNIcmQxa24z?=
 =?utf-8?B?VXZrbUlNS1VRSU9zV24yWUY3bnFMdG1FanI4aFkyUnpnSnpPenpGZEg1KytO?=
 =?utf-8?B?aEcvYUhzYTlmUERwR29jQU1JVWZzaE5ZL3BwdURMZGFpMEtEaGxka1ZHWmF6?=
 =?utf-8?B?NFFzYlBBbnE1V0tITG9CT3h0T0FjZWpzM0xzVEt2b3NBOERSTjhLaHNaaVNn?=
 =?utf-8?B?eFpjcFlDZEdGL251UUtDT09YZ3dQMk00a3plalBQVmxJS1hCYldjNlYwY1F0?=
 =?utf-8?B?b2cxaXkxVWRyWk5XNDhrWjlzZko2WExYTUJFT0hSZTJXS2FQdHAwQit2UUF2?=
 =?utf-8?B?UlRIRkRxWExZcGdMQllNV204TGVJZWwxazRnSXpEQkUyNmlxNUh6Z1Z6NW4w?=
 =?utf-8?Q?9F4KA8fZ+U7cFLVehPX1dBEJ+QLG4Y=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(10070799003)(1800799024)(7053199007)(38070700018);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MG1sNXRlYTFqM1VzNG9MVTh0cVQxTUREYmJUMEplOUV4UFhFS2ZabHMyV1Vt?=
 =?utf-8?B?VENja1RaREZ6MWk5ZHdhZ0xheXUwNVFmVUl4VnZmUXJocHprbEYrekMrcHh2?=
 =?utf-8?B?UlJnMVpwdW1KcHBsUG5OUHd5WEl3c0w1eEtHRVYzOGNpVWRtNFBoaVNmU0dX?=
 =?utf-8?B?YVBBMm1BSnY5eS9hUkY0U2FuUjFrRTIybklhblZxOGVMRk5lUkJnV3BEbmFK?=
 =?utf-8?B?ZFlldFdaVnNOREhSZWRodlhkV1llQmRybDdjTGVZZk90YW5ncXVJQTNxSXRu?=
 =?utf-8?B?T2V3WTVMR2xqaU1sK01qQVNDQjQyRWl4RElnSU1nT2xqcHY1U3c5VndBWWZW?=
 =?utf-8?B?TWdLSThscG9oQ3E4Ym9iMWlLK3RhU1QwR3pqR09yZWM2RGI0VVdKUXNBRGdr?=
 =?utf-8?B?c3lYZklmdXJHdEY1M0FJZFhHdmlPZDZPT1hod2o4dmQ1RXR1T3V0cGU5K0Ja?=
 =?utf-8?B?ZXkxeEFxOHZsT0hkWU4zaWxMOE41UCtsT2VRVms4Z1FzaEk0dHlvNmIrUXJE?=
 =?utf-8?B?N0pxWndta2dyNndwL3BBdExaU0dBRmYxdjNSK0Q4bk9hekVTQlNERjM2UlFk?=
 =?utf-8?B?TnVseU9YVlpRSW8ydFVLU0pISXViVmowZHU0dFZ5M0s3ZDUrODJxMWI4YjFa?=
 =?utf-8?B?ZXZvbmRwckw1UFJTNjFOcEhzY2hxWEduMzl6MTlZZFJ3S3NCcjFuNDBXcy8w?=
 =?utf-8?B?RE9YKy9ZTWVTS0FxSmx5cTdzQklyQTAvRC9oTUczNWR1NGZTbnFhYVVtK2lq?=
 =?utf-8?B?MEJCQ21xWmJHMThUOFZ1Njg0dXZLMFhWbm5RQU1GYkVhTCtBZUl2Q3lWV2Fy?=
 =?utf-8?B?U3dodlpib2VjeDAvZVlORmZ5NDlhRE5kTHRTUjRnL2IrOHNMaTFmelpIV2dB?=
 =?utf-8?B?U2w3bFNNSmRGaHlvb00yY1BaSHIzbmd0Ty9tTzc2cDZvKzlKV3kvZlppNjNy?=
 =?utf-8?B?NjRiT2JEM0NsS3VUNXBVc0lmT1ZjOCt0cjkvdTVFZSswT3ovUFE4L1greGFx?=
 =?utf-8?B?RkpHWHFKWTR3M2xDd052Y3dBQnFDM1Q4cFRmMnp1a1NRRHFqQnNHSzZsVnhu?=
 =?utf-8?B?MnNzOHBRVXUrYzJ4ZEF5U2JEZmdJMUhtbW4rVUFUbkY3U2xUTkJWMmZXZytT?=
 =?utf-8?B?b1A0ZEtXczRtNXpvMUs4b0ZWUzFVdXVkNHY3YXZLWGJhYngwNURvQVlhcW81?=
 =?utf-8?B?ejJYSWtPd241cXR1WHN3RnVDTU9BNkVkdnhHY3lGYWJXZGZ3VkpsQm9yRnkx?=
 =?utf-8?B?djI3ZlI4dXZSNEU2Y1gyeEFQUU5QYlBTRFRTNGNXWFpZbThxRFZycXkvM3pQ?=
 =?utf-8?B?SHA2a1puR2JhQ040NWVFVjh1bnpad2Y1a1NoZVc3aXE2czdjTXBmSzBkbWRK?=
 =?utf-8?B?dXBZamh3NWhvdjRQNG1ZR1JWbXJhRWZBQlVmZFZSekY3dk5mNE5QcVdoT3RC?=
 =?utf-8?B?K1JPbkUxM1l3NVphZStxQUVhTUFKdnVRSEVmbkZqWHNCVGxZaXJYL3pFcTY5?=
 =?utf-8?B?V3JvUGZTSlE0UG9vYUwvdmd2KzJiU3FoUGtWZmYrUHRYbFY5ZlpLWDZWbk5y?=
 =?utf-8?B?M0hHdmpBK3BISCtleVNsbVdhc3NzdFVOMnZqL0htZ09Kb1lqbjhIT3RRWCsv?=
 =?utf-8?B?eGFCQnFuTkdXTngyY1orTUdZdE1MVmxiNG01WWtwNVNIQ3BoYzV5eTlRN2pK?=
 =?utf-8?B?NEJFSU1yMEdTRDFXWG5jUElLVHhyajZWcTRDVkg3VG9ZNHVnYi9CTGNMWGRx?=
 =?utf-8?B?VFFkL2lJWTZCYUg2QTczWlhTUXNRWkNDc3hYWFJaQ1BpQVY2RTArd2xKSVZS?=
 =?utf-8?B?b0VtclM5QVkyRFZHOGg1SzlCWER5dkpCdlB3WWFudEhYaGRRVTR6K0xaYWli?=
 =?utf-8?B?NXVnU0drNFFHVy85cUlUTWEzVDFvZDRCVEQyTnFjTENsSi85UldCTFdvYzJS?=
 =?utf-8?B?M0hoU01CbUR3blVVc3FMam5EeFV2SzVqTUY5elBQNkZoeFNCZWtCSmwrQWp4?=
 =?utf-8?B?R0EvYkNPZTVpamhyTlU2N1QwbU5uOXVlNDE1c1pFSFdHY0M4NklvVGMvUlFs?=
 =?utf-8?B?R3pwbXNqOUZ0d0ZHenc3MExHQk1LSW1HTkpObjdXNUdObms0ODdVSlhvU3hN?=
 =?utf-8?B?K0Y1WHliV291eE4zYlBBekM5ZUYrN2hheUNaVElCV0pwZlhWZHBPc1RUdlRB?=
 =?utf-8?B?aDkzc0JnQjAwNUZmdHI4RnhBYUh5eFFTTjYzS1pVb1Y2ek1neE9rMDRtbllU?=
 =?utf-8?B?eGV6bHdWSEo2OUkwcUYvcFp4SkRBPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <4F9D2A9DA201CA428AE1E4C4804FF649@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 60c81dbc-12ce-4d7a-a6f5-08dd76733645
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Apr 2025 07:58:55.9749 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: cHHqoeC/RulqJAgIf2bo3upDn/+CDMzqljqyt7xZ0ngyXY+zQpRWcIWf4KaUh6/ASPBZgxyMKAToV7Z32mt8IcJdVOXP9YDAJczrlXmU/wA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ5PPF1FF629472
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

T24gVHVlLCAyMDI1LTA0LTA4IGF0IDA3OjU3ICswMDAwLCBNYW5uYSwgQW5pbWVzaCB3cm90ZToN
Cj4gDQo+IA0KPiA+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+ID4gRnJvbTogSG9nYW5k
ZXIsIEpvdW5pIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+ID4gU2VudDogVHVlc2RheSwg
QXByaWwgOCwgMjAyNSAxOjIwIFBNDQo+ID4gVG86IGludGVsLXhlQGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZzsgTWFubmEsIEFuaW1lc2gNCj4gPiA8YW5pbWVzaC5tYW5uYUBpbnRlbC5jb20+OyBpbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+ID4gQ2M6IE5pa3VsYSwgSmFuaSA8amFuaS5u
aWt1bGFAaW50ZWwuY29tPjsgQiwgSmVldmFuDQo+ID4gPGplZXZhbi5iQGludGVsLmNvbT4NCj4g
PiBTdWJqZWN0OiBSZTogW1BBVENIIHY3IDIvOF0gZHJtL2k5MTUvbG9iZjogQWRkIGRlYnVnIHBy
aW50IGZvciBMT0JGDQo+ID4gDQo+ID4gT24gVGh1LCAyMDI1LTA0LTAzIGF0IDE0OjU4ICswNTMw
LCBBbmltZXNoIE1hbm5hIHdyb3RlOg0KPiA+ID4gTG9iZiBpcyBlbmFibGVkIHBhcnQgb2YgQUxQ
TSBjb25maWd1cmF0aW9uIGFuZCBpZiBoYXNfbG9iZiBpcyBzZXQNCj4gPiA+IHRvDQo+ID4gPiB0
cnVlIHJlc3BlY3RpdmUgYml0IGZvciBMT0JGIHdpbGwgYmUgc2V0LiBBZGQgZGVidWcgcHJpbnQg
d2hpbGUNCj4gPiA+IHNldHRpbmcgdGhlIGJpdGZpZWxkIG9mIExPQkYuDQo+ID4gDQo+ID4gSSB0
aGluayB5b3Ugc2hvdWxkIGFkZCBhbHNvIGRlYnVnIHByaW50IGFib3V0IGRpc2FibGluZyBMT0JG
LiBIb3cNCj4gPiBhYm91dCB0d28NCj4gPiBtb3JlIHByaW50b3V0cyBhbHBtIGVuYWJsZSBhbmQg
YWxwbSBkaXNhYmxlPw0KPiANCj4gTE9CRiBkaXNhYmxlIGFuZCBBTFBNIGRpc2FibGUgcHJpbnQg
aXMgYWRkZWQgaW4gcGF0Y2ggNCBhbmQgcGF0Y2ggOA0KPiByZXNwZWN0aXZlbHkuDQo+IFdpbGwg
YWRkIEFMUE0gZW5hYmxlIHByaW50Lg0KDQpZZXMgbm90aWNlZCB0aGF0LiBUaGlzIHNob3VsZCBi
ZSBvay4gWW91IGNhbiBpZ25vcmUgbXkgY29tbWVudCBoZXJlLg0KDQpCUiwNCg0KSm91bmkgSMO2
Z2FuZGVyDQoNCj4gDQo+IFJlZ2FyZHMsDQo+IEFuaW1lc2gNCj4gPiANCj4gPiBCUiwNCj4gPiAN
Cj4gPiBKb3VuaSBIw7ZnYW5kZXINCj4gPiANCj4gPiA+IA0KPiA+ID4gU2lnbmVkLW9mZi1ieTog
QW5pbWVzaCBNYW5uYSA8YW5pbWVzaC5tYW5uYUBpbnRlbC5jb20+DQo+ID4gPiBSZXZpZXdlZC1i
eTogSm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+ID4gPiAtLS0N
Cj4gPiA+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hbHBtLmMgfCA0ICsr
Ky0NCj4gPiA+IMKgMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigt
KQ0KPiA+ID4gDQo+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9hbHBtLmMNCj4gPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9hbHBtLmMNCj4gPiA+IGluZGV4IDM1NDUxMGJiNDM3ZC4uNTI5M2NiZDAyOTg4IDEwMDY0NA0K
PiA+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hbHBtLmMNCj4g
PiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYWxwbS5jDQo+ID4g
PiBAQCAtMzUzLDggKzM1MywxMCBAQCBzdGF0aWMgdm9pZCBsbmxfYWxwbV9jb25maWd1cmUoc3Ry
dWN0DQo+ID4gPiBpbnRlbF9kcA0KPiA+ID4gKmludGVsX2RwLA0KPiA+ID4gwqAJCQlBTFBNX0NU
TF9FWFRFTkRFRF9GQVNUX1dBS0VfVElNRShpbnRlbF9kDQo+ID4gPiBwLQ0KPiA+ID4gPiBhbHBt
X3BhcmFtZXRlcnMuZmFzdF93YWtlX2xpbmVzKTsNCj4gPiA+IMKgCX0NCj4gPiA+IA0KPiA+ID4g
LQlpZiAoY3J0Y19zdGF0ZS0+aGFzX2xvYmYpDQo+ID4gPiArCWlmIChjcnRjX3N0YXRlLT5oYXNf
bG9iZikgew0KPiA+ID4gwqAJCWFscG1fY3RsIHw9IEFMUE1fQ1RMX0xPQkZfRU5BQkxFOw0KPiA+
ID4gKwkJZHJtX2RiZ19rbXMoZGlzcGxheS0+ZHJtLCAiTGluayBvZmYgYmV0d2Vlbg0KPiA+ID4g
ZnJhbWVzDQo+ID4gPiAoTE9CRikgZW5hYmxlZFxuIik7DQo+ID4gPiArCX0NCj4gPiA+IA0KPiA+
ID4gwqAJYWxwbV9jdGwgfD0gQUxQTV9DVExfQUxQTV9FTlRSWV9DSEVDSyhpbnRlbF9kcC0NCj4g
PiA+ID4gYWxwbV9wYXJhbWV0ZXJzLmNoZWNrX2VudHJ5X2xpbmVzKTsNCj4gPiA+IA0KPiANCg0K
