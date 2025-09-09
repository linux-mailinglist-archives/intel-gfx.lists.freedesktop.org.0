Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B86D5B4FBEE
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Sep 2025 14:59:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 57CF710E700;
	Tue,  9 Sep 2025 12:59:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NVkf3Uko";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C88BD10E700
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Sep 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757422794; x=1788958794;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=RrMz0CJaN6jZfdyOZ2m4URcsaUvETS+viMRCqLPnsvY=;
 b=NVkf3Uko7jFTfs0bpkDcu2BJ2StUSsMAU5gNrFbW4H3/BRkBRIGYxGBE
 NrcXDONhkEK3YTZ1Vx6l2GCDZLdOdSIdT3VcjmdyqE9kUam2O3n2IEnag
 5fgMyMNvgLvnqYoxTtCAy/NQnZeUxQ1MhEwdC0TRjqCwI19wrWngJNzKs
 PNbkIhTc2+XC1j6bIkElxGWuG7Wd4zsjuXuyMs34FCbp5h5OIn21V0PI9
 8kIQMNy/pokw9DhwWn8GMe7Vxnt0KETU77CFJrm2RQenPng4rWhJ9qTq+
 zkaqhvy+4231Dvkk1KyBahJCIBXbMTa0NU1yvcG+0ZtZD4xbrAuFhun+j g==;
X-CSE-ConnectionGUID: QFsgjJW8R/6lzDnFU1RVZQ==
X-CSE-MsgGUID: S0VGzoGwR56+T0ruiDI4Pg==
X-IronPort-AV: E=McAfee;i="6800,10657,11547"; a="70401686"
X-IronPort-AV: E=Sophos;i="6.18,251,1751266800"; d="scan'208";a="70401686"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2025 05:59:54 -0700
X-CSE-ConnectionGUID: rGEb5YT8Q92N1WbAmX2g1w==
X-CSE-MsgGUID: Dw9oIaLXT8CwjfzhzdBGYQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,251,1751266800"; d="scan'208";a="173866288"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2025 05:59:53 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 9 Sep 2025 05:59:52 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Tue, 9 Sep 2025 05:59:52 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (40.107.96.86) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 9 Sep 2025 05:59:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=fV99GlmQHb8MdWgrJzMB9Le+wpC8RMGTTtjFaBc0Crlr38pCatsgxG+s8gOMn/Qm+44lfsNevMFZkZe8V+1Nr+YGRL0Y5u/ylHC166h71CahKD6YLOpx605F64niJG6xas/O1Io7bj7gTLQM0C4bRQgxk31B2o1L1+URYKzgUKRXEbwjdiflHHJmY69LYNDommg+Je5UBCn/QDe2V8jdTYVaCbNKfjfcbDQ3gPEAwqyECwmoVEdLPwMuYSqjq3xoBmYPpkki1d3loTjBBvP6kM6yI/43gYGxZL7lzq68L/GC6tk6oNHZmIOlva2Xa7CYWWm20iZ4oWO79HWtWzQQYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sdiCrpF2x3b6MQBOGysogC8HoeQ2jS2MzmmQcQaQyIw=;
 b=vXVs0wiErk8SHbp+0xb/uBht2SNiIe9/YAx0dV6GVhWANrZehoQkaKYCe06WCYeMVwJo60fxzpoMmm8napmXyaLGzL8VfemlJE1q6ZPB+ND/UYsO78PERQJmEpB9J6TiSUI8gG6mmFSowr+N3qhTJxBkn5fftp6tbYNGw2yvaUC7RXynvFSYxbb9Y5AALEOq7KiyAjePE5pd6f+o4A3bf6OsIwl9M/p1uzVHa1u1t7Y2iXzvdrKUMkO2dMHZwvURlIX1rN7tGCnsHCfEDj+rAkaGM9Pe0TT4pg+LUzTvo1DQnwH8znyayOsnkfNm1Fs3otApAZkB/55uhE3Gs+a91g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by DS7PR11MB6127.namprd11.prod.outlook.com (2603:10b6:8:9d::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9094.22; Tue, 9 Sep
 2025 12:59:50 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc%6]) with mapi id 15.20.9094.021; Tue, 9 Sep 2025
 12:59:50 +0000
Date: Tue, 9 Sep 2025 12:59:42 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: Noralf =?utf-8?Q?Tr=C3=B8nnes?= <noralf@tronnes.org>, Jani Nikula
 <jani.nikula@linux.intel.com>, Andi Shyti <andi.shyti@linux.intel.com>,
 Sebastian Brzezinka <sebastian.brzezinka@intel.com>, Krzysztof Niemiec
 <krzysztof.niemiec@intel.com>, Krzysztof Karas <krzysztof.karas@intel.com>
Subject: [PATCH v2 4/5] drm: Avoid undefined behavior on u16 multiplication
 in mipi_dbi_dev_init()
Message-ID: <04a8d5e486053f759aeaa5c03e78e93de6f80b09.1757416325.git.krzysztof.karas@intel.com>
"Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316"
References: <cover.1757416325.git.krzysztof.karas@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <cover.1757416325.git.krzysztof.karas@intel.com>
X-ClientProxiedBy: TL2P290CA0017.ISRP290.PROD.OUTLOOK.COM (2603:1096:950:3::7)
 To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|DS7PR11MB6127:EE_
X-MS-Office365-Filtering-Correlation-Id: d94a0773-6160-45da-2382-08ddefa0c2ee
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?bytUMGxNNERCbE5wenNTNkhQOHJHN2hlWUdNbXA0UkVVN3NTS0JJbVNyYVhS?=
 =?utf-8?B?eDFXbXBRNHdESDBidG1jaUo0WG12Znp3dk5JamNmeGdHK3hvMTgwTk4yN1RN?=
 =?utf-8?B?UzA5YkJZbDFLWWpQdVJDL1BPeVZxWGh3TUFmVEcwN1ZzNThYQ3oxbnJUWHBy?=
 =?utf-8?B?ckZzeEFYSGxpaXM5R0EvaW9QSi9iYlhiYUdpU1FLS293cUI0U0RYS1dWMlUr?=
 =?utf-8?B?QVhuT0xNOWJhL3ltaC9JZHJNZW43OU5QOWRvRUFNTFpGcXNyUDhLeXlWeFJp?=
 =?utf-8?B?Mmo5NFBuNVlnSmh3Z211R3h0dmNrS2ZFSnN0aXRPWFYvU1g1cDZjWFBBTTNY?=
 =?utf-8?B?bHlHcFU2KzlESWUwUTBzNjUwWXVxOXZ3dHFsd3F6cTgyMHNITnh0bEFKVW5I?=
 =?utf-8?B?L3dzc2hhV2pORVFqWWJ2MW8yMUl2SjRUbnRTamdic0VQMC81dWhJTE9wUnFx?=
 =?utf-8?B?QUI2eUtwOGhYNkI2WExEeGVpbWQrd1c4OXZkSjZ4YmZ2b0pFamxLMzFaUzlC?=
 =?utf-8?B?dS8yNUtUTTFlblRKdURUTFVGdG1QUE1WVUc3SC90c2QvMlBxLzBjemx0cXNk?=
 =?utf-8?B?cDBWNThNUzYxRlp2djI3eVVhaFU5Q1R1eXYzRDlKVlhDUzU1cTlzdkI1eis1?=
 =?utf-8?B?ZnJCSXl2MGU3VDZKUkZPQ3JnZ1ppekp5dXp2YUxZK3Nwa3dNTEdDZGFFS0JO?=
 =?utf-8?B?NDJoNWI2VDA5SmVhK3lPVzlMTXZLZ3NyWCtPaVZwMFVkTmlDeGtsZVozbWt4?=
 =?utf-8?B?RkJQSVNzUEdJN01KVDNRWXA4RzVZb2V4YmJDb3M2bHlTcUhOM0FIQi9hODZi?=
 =?utf-8?B?UnJUb0M5LzBqSkxVVFplUVozc0w0MElaZjdoTnh6NXpsRFhZaURQZXhUdEx4?=
 =?utf-8?B?aTdVejlnQzI0dkpGU2tCb3VhNVNmUzJid0FtSTJHTVhqUjFFM1liOHlHc2NO?=
 =?utf-8?B?cllxeUNETm1rLzJnUEtBczJyVWdQZUtIOGNUOFlFREZiSnVINVRoSEJtcFFI?=
 =?utf-8?B?WkpKTUFPVXZhbDg2UE82NE1nSWYxTm9KdFpsSW1lVndJN1E4OHVuMnZOYXRK?=
 =?utf-8?B?VjhlbG1JMndFdzBaWnNnbGtvZzZiN1lsUXhhZllrNnNlT09iR09VWTIyZ1V1?=
 =?utf-8?B?S2dzZXlTTHdtYUlxMWpnK2lDWVJaOERJSWw2ZEZiazBSVGZTays3dUZYV0VK?=
 =?utf-8?B?UXFIcG83cVdWZjZCUisrY08zNUZFNXZVaGF5YVhIdGMweUhRS0Q2QW9oSEJq?=
 =?utf-8?B?RlVuVnlOYlpUOXd6cUViOUppWUpYZElLb3oxYWlxZ0U0QktxZHc1RHFNbGhC?=
 =?utf-8?B?ZDkwbStTV01pS01OVUc2RXlqQjRIM3hsQnVPWDJvNG5lZzlVY3llbkFGcmw5?=
 =?utf-8?B?WVk5UThlSEJDOVdFMFBqNzdaRHRSNWFGWTlzRmM1alJ6alV0R0F6V1kyVlZO?=
 =?utf-8?B?RVVtQVh1K1cwWHU1N2QyZzB3TGQxd21Qc0hJQnk2U3EreE1pbUhtSkJzVE0z?=
 =?utf-8?B?a21leWRkcXczaWRtMmNrbkdGODBjUTlqVzFTa05NT2plK2FJUkV3VzMySjc0?=
 =?utf-8?B?OU9POHN0N2RiYXBNTDYzUXY5aEFjeW5NaDl1aCtja3BBSSsxRks4TThJU3Va?=
 =?utf-8?B?WUh5SlVkQkdoeU5mTjZtOFBEM3JTY3RJUlgxZ0prK2drK2lqejNBQnBJZy9L?=
 =?utf-8?B?cWhma2thSHlGMHZCS1EvdTB1R1VSdkZRTXEyVThrWlpjTkVWNG5rVHVyd2N5?=
 =?utf-8?B?cmc1ZG04YjU0NFF3NXNlNnlCRkFzOVdMa3I2eFVkR2pZYkVybFhUT05LM0ls?=
 =?utf-8?B?MzVHVWJSVVI4TjdNcTRJWVlpZHMyUUcwM2E4aFdjVElJZ2x6M1k3MXBuYlRv?=
 =?utf-8?B?ZUV1alpDMnMzakpQai85QWgyaS8xalJ4cFhWN0daVFpjVkpPbE1xRTYwZndq?=
 =?utf-8?Q?JzLe2XlGNNc=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dWg0RE5wb2k5UFo5QlNMZHBtTXQ3aFV6WlNTZVc3a3JhR2FFQ0RSNHkwQW9C?=
 =?utf-8?B?ckdiVGx4bldURTJHekhmcHBWVHI3MjJOVnY0WUloYTV6RThtNk82QnhrRUtN?=
 =?utf-8?B?Snhnc2N1Y3BlWjdnU1VBTHNEUE82NU5tbDQ2K2J1Q1Vkc0hSTWpWd3B5d2Zo?=
 =?utf-8?B?MGJYSTZPRHUyNldXT1JabXV1YmdUeEt2MGVvYktXUGlsYjhic1Juc0V1ZGtS?=
 =?utf-8?B?OUZGSyttcVZlRDZhS0drS1FpR3ZOSitCQVpORkZDc2xISTJhK21BQTltTExi?=
 =?utf-8?B?a0FxUGFWeUlqOHRxTHZxK21MRmVVY2djZHdvWWZEdy9HVElmSjhMdSsyQ1p1?=
 =?utf-8?B?RU10QW9iTmVub1hUY0tzV09JZ2IrS3I3ZjIrbW43eHlyZlFNZ1JaQjQrcWMr?=
 =?utf-8?B?cUJTL2JXRm5hMU5aZDhVT1NYYzJzMDlsdDYyT2xNazZDL3ZSbWpUUmliMVkx?=
 =?utf-8?B?NFNYSVI0eVVHRkxaNzVzM2lOaE81Z3lWaktQZXE0ZFZxRGVqYy84LzJJMHRw?=
 =?utf-8?B?TmxHVFRJR3NoaWg2ZllSNnAwRTlkTDVYY2Z5ajNvanpHTXBoeEl6b0JhZWda?=
 =?utf-8?B?MCs4L21Kb1JibWpLbTNtbkFydExtNlpFY3BUT2RJSVpHdlNaWG04U3I5NWh5?=
 =?utf-8?B?UkJvZ0p2SkFEMDVvTEdMMGFTV01kMGkweUtzeFk2NGhjcEhFNStIZ3FWQUd2?=
 =?utf-8?B?bVdUeTJVL25vT0xuK3JnNTA5TlZnaDRZQTdQUG1wVTVJSTJ0L0pqWXk0Wmgy?=
 =?utf-8?B?ZTFhVnVqZzNYTEFnMGtONWFwZm5CdUxXaFdDN1hCQlUzQlBqeTQ0OVlhTU5U?=
 =?utf-8?B?Q1NNd0lVYTQ2djdjM1NMWVpRSEFxV1JwdXVpVmdrTHpIUnArT1NOdTZya1c2?=
 =?utf-8?B?N0FodkR4UThBa3IyZC9IRXBycTFOTzZURWk2M2taTFp1SU5TNVpKZkw2WFB2?=
 =?utf-8?B?RHh4VzYremNnNnZxTnlUZE4zbnFKWWdCaWVjNUxPMjR3QkF2alV1MFgyS25W?=
 =?utf-8?B?aWk1Z0RsVzYyNXlMdWcweTJjRS9yTEY2cXM2SHJkWEc2YVkvelUvZGVDMHdn?=
 =?utf-8?B?aURNTHg2ZnpHVWlsY2FVUnh6RXFkTEZpK2Q1K2xJcy9pdHV5ZDNlWTI3b3c2?=
 =?utf-8?B?WjRMMDVaSmU2d1EvRVZPbFl6R2ZyWjEycUJzOU5kVG1YZ09EU0JsbU9FZzRG?=
 =?utf-8?B?WjlKUXM4eXRHWXZ6aWN4YzZOVFdxSjR2bVIzYUlWWUoxVlZPQ2tjL3ZqNFFn?=
 =?utf-8?B?Y1hzL25CVzJjSUdiSlEwWTN2SURMVHdNaHJWZkhMRlB3WVhNWmQvYnUwOUNz?=
 =?utf-8?B?WXFVcVEzdXRRbk5GRTRUV01WK0JBMmZUenlackpnWmtiRWwwcXcrcmV4bmZ1?=
 =?utf-8?B?ekFoVXNsUm1zSnhzQUdRMkZndnpxZ3o1b3JlVlFyVVVJeEowZ1dHaGc2TFI1?=
 =?utf-8?B?cTFPSVMwenlTNEVsZE5UZGxiNTJZTmZHeEsyeGNrak1pNTRndmdNeTFmTTZo?=
 =?utf-8?B?RTU3M3ZPalplczE4cVRTbjJ2dnNvSTc1RndNdzBWTk16ZFNVeGQrZTd5L3FS?=
 =?utf-8?B?QTVTMVNDdVhjNG9Zdm5ybVRXSXRLbWdqaGpQdWt6WGUrRk5ybTd4bWlJR3BU?=
 =?utf-8?B?eXBtRU1KeU9lYzlKZTBVYkZzMmFjaWlpUGJmZERxbTM4UWJmV3BJbFg3eWNJ?=
 =?utf-8?B?aEV5YTZLc3hONm40bEdXZkxSOEt6N2VLQTg4dTNEaEhKQ05mU2pucGYzTERS?=
 =?utf-8?B?dW1BMHZLSHVoRWM5T3ZnY3ZDNmx4KzlDN1lWOHdLM3lJdGdxZEFmZGtqSGhI?=
 =?utf-8?B?TktsZnErcDIvcFRiYkFSL1ZwdzhtZWhFNUE1ajZna0RZdE01SmVRbGxQOXRR?=
 =?utf-8?B?U0VIaVpTVXVSeXRjR0JuZTNSZEdVcWR5VmlYMEhZWVZ6TFdhdzQxNVM2RFZo?=
 =?utf-8?B?NURlSFIxcFpnZjBRdmU3WmY0Z1ZWN2k1RVExZWV2ZWJRVWxsdG54ZWxVTnJF?=
 =?utf-8?B?L1RzS2ZNZXdOSDR0QmsvRGo3bmdNNG9tdW5udlZVV2FVTlI2NW12TjR1U3NY?=
 =?utf-8?B?aWE2NUhRN095Y2dMdm1UNmJRNkFhYlNLeGEvOENtdnpSNmxnTHIrbE1oQnpZ?=
 =?utf-8?B?bFg2ckpwOFlKclZrRWcyNld2eHV0ZmQ4SDFVWmhJZS9yRmpYci9YdS9tWkVn?=
 =?utf-8?B?SFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d94a0773-6160-45da-2382-08ddefa0c2ee
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Sep 2025 12:59:50.3135 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: irpmiX36+RH1sD4H0QrZFTk3yVK1LsbTvwFKSH4mIrZDv45nm7TqAfhyPTOyGqiSF4ZyOdzj4+Wue6GfgGlDjA1KnwjcLqG88swQkdo4SC8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6127
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

Fields hdisplay and vdisplay are defined as u16 and their
multiplication causes implicit promotion to signed 32-bit value,
which may overflow and cause undefined behavior.

Prevent possible undefined behavior by explicitly casting one of
the operands to (unsigned int) type.

Fixes: cc4312127108 ("drm/tinydrm/mipi-dbi: Add mipi_dbi_init_with_formats()")
Cc: Noralf Trønnes <noralf@tronnes.org>
Cc: <stable@vger.kernel.org> # v5.4+
Signed-off-by: Krzysztof Karas <krzysztof.karas@intel.com>
---
 drivers/gpu/drm/drm_mipi_dbi.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/drm_mipi_dbi.c b/drivers/gpu/drm/drm_mipi_dbi.c
index e33c78fc8fbd..536741dd7690 100644
--- a/drivers/gpu/drm/drm_mipi_dbi.c
+++ b/drivers/gpu/drm/drm_mipi_dbi.c
@@ -691,7 +691,7 @@ int mipi_dbi_dev_init(struct mipi_dbi_dev *dbidev,
 		      const struct drm_simple_display_pipe_funcs *funcs,
 		      const struct drm_display_mode *mode, unsigned int rotation)
 {
-	size_t bufsize = mode->vdisplay * mode->hdisplay * sizeof(u16);
+	size_t bufsize = (unsigned int)mode->vdisplay * mode->hdisplay * sizeof(u16);
 
 	dbidev->drm.mode_config.preferred_depth = 16;
 
-- 
2.34.1


-- 
Best Regards,
Krzysztof
