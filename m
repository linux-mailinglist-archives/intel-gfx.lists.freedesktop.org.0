Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D157B5670D
	for <lists+intel-gfx@lfdr.de>; Sun, 14 Sep 2025 08:24:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C26A610E159;
	Sun, 14 Sep 2025 06:24:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="drOg6v8E";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 841D010E10B;
 Sun, 14 Sep 2025 06:24:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757831094; x=1789367094;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=KrzyhyaIUmr7mNkBgnixux2ZJ1EXYCywa6cpod+vkjM=;
 b=drOg6v8ETo/XuE/pVbJ36xu6+QLzXYLucjUfZR5P6/t9pbTATq27iJM5
 a5aAUiPy3aERTdp8/jqEgHll/iuqyW6jJzf0/qD7V3ldoAVSFAblahj/A
 TZ1DoBa7TgMpHIFdU92rHQKo2bo6QnMrFQkm9KLacRXhzAJ4K4Zap/6qI
 OMKrW88jYnL4fPsO9S5PEbsxFK3mhAx9HCrBtACNLzxQhIUrAfAtklnYC
 BsUlaRP+7eUns8miNSjl3RlDkJtHkFavAPHZ3t9wogljE93bAi0eZpvOO
 /saC8MJ0uohP0MsU30yYLuNGA66qGiuWqdhRJaIIKDgtcR/7KEypV4dlX Q==;
X-CSE-ConnectionGUID: fQZ2mzsqQyWQ2E+MuN5eNA==
X-CSE-MsgGUID: mp+Wv5xrTQur2NGI79340A==
X-IronPort-AV: E=McAfee;i="6800,10657,11552"; a="60223054"
X-IronPort-AV: E=Sophos;i="6.18,263,1751266800"; d="scan'208";a="60223054"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2025 23:24:54 -0700
X-CSE-ConnectionGUID: TwSNfFdETrq32vAAUkva5Q==
X-CSE-MsgGUID: e0NERih6SxyGgt+cYvtLhw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,263,1751266800"; d="scan'208";a="178353870"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2025 23:24:54 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Sat, 13 Sep 2025 23:24:52 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Sat, 13 Sep 2025 23:24:52 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (40.107.96.79) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Sat, 13 Sep 2025 23:24:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=RkOY+VGUJLfLvSdVg6IdFQAfvmLTgBMKX8tx86lyxjknGMGCJkymrqOsndre7fKhJZglOXMDeAIQ8oORqNNWQnEMSmeDb2rEwskX4eLrtdLzEJUcpEw2c6DgmmfUBbUHmZzGkoLj5rWv/VJibtMjAiOL0d09UySvQ8nLiz7thqoQj+51Vj/6RB22n8yTbuF1IXYW1dbo9OkbRc/KYR6RiXKi12qfca+6kpy/GvMuJ3zsjoqkI/LYX+pByQ6iSoDk8rymWXmqTZN3XscGEh+c2nF9BWgTaj1PulhmHS9c58MSrfhBC5uuUUfy5GgMZscwkDDoiodn66yxCYwRkUT+2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HkMsyfgN/HpzlQSHQWwxdI0ij5QqMf1zu9gJH63AiFE=;
 b=ZXpz6lZR0ChDB9wEonu3qgO1cETf9XkYsDegSw+yXzjJ2utgaXxsJ08CV6p0wq9dDLsDmSaDKrKB9Mr+xTMu/QAUNtOPdDTZGVmmXJuLNuKL2K2nGhGW7EEzxsbas9q4B1huEOvKg1n26UB5U6b0xT3uyj7qqaIxMzKp1mvHKvuZ6H68qzphKBb/7TSArb8Wn+YbKA751y5XElPla/RH8cC6rN/5BLr/1UFSIwcjkyqpzqU+5SjyIDhODiB50+GtuCoR5yOK+tDzjtyzFktX7HNMW2c/8lFZMr5gniZKv9qZhYi4Qfj9xEEjk4x8/US/SfV7U68HYCEXwjtuI/3VKg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CH0PR11MB5332.namprd11.prod.outlook.com (2603:10b6:610:bf::17)
 by PH7PR11MB8569.namprd11.prod.outlook.com (2603:10b6:510:304::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9115.19; Sun, 14 Sep
 2025 06:24:51 +0000
Received: from CH0PR11MB5332.namprd11.prod.outlook.com
 ([fe80::8f86:8d08:45bf:ec13]) by CH0PR11MB5332.namprd11.prod.outlook.com
 ([fe80::8f86:8d08:45bf:ec13%3]) with mapi id 15.20.9115.018; Sun, 14 Sep 2025
 06:24:51 +0000
Message-ID: <d2ec5567-67e1-42a8-a697-94800092e3a5@intel.com>
Date: Sun, 14 Sep 2025 11:54:43 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 00/15] Optimize vrr.guardband and fix LRR
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
References: <20250911024554.692469-1-ankit.k.nautiyal@intel.com>
 <aMQoMoQnj6eD1KL2@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <aMQoMoQnj6eD1KL2@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA0PR01CA0121.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:11d::11) To CH0PR11MB5332.namprd11.prod.outlook.com
 (2603:10b6:610:bf::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH0PR11MB5332:EE_|PH7PR11MB8569:EE_
X-MS-Office365-Filtering-Correlation-Id: d3dfce22-7403-4462-2967-08ddf3576905
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?K1RuSFYyblA1ME8vTGxYQlFsTmhVOGFuSm9uSzgvdW5DWE1YUUhjZzBtRy9O?=
 =?utf-8?B?QXhIcHRpSUJlbFhKMVNxUEYrTG4zb0l3ek5FTlIzbFh3Mmh2eDNWd0M5NTBL?=
 =?utf-8?B?SDVDZ0tLVzZUWDVNUmpnWGU1QWJ6L1BENjE3UVJvVjBvM2taSjNRc2pmTWN6?=
 =?utf-8?B?Wm1qSThqa1JtRG1KeTZVdjBVYzdMWm5aUzZtQmVUN01BSnJxbDZVTU9NRWlX?=
 =?utf-8?B?TzhHS3R5RVJqT0ppRUdZcDQ4U2RsQU1PQmxwaFZ6cldNZ2cxNGFIVVdlc1hW?=
 =?utf-8?B?L09VY3FDU1VhelpHZ21iSnViVy9FenVuVkJGYjRCdkE2UEUveEZabWt5cU5R?=
 =?utf-8?B?TVhKM2pvTTFLTTF4eVRySXNDTHhGcmNNcXUzL1dWTFRzVHhFSFhIMjdlRkRK?=
 =?utf-8?B?a212cC9OblZsZmFsQm9vR2JnR3MrZjRYVExUd1BJempUcFpKWHc2dm1UcENY?=
 =?utf-8?B?TWFZZnl2UFJkaitWVUovd3U3bi9oODRxTVBhZkN0ZmFNbm9wMExwNXBxTGlw?=
 =?utf-8?B?WUtnZDNPQTh1QjhNdmVaOEcxdXFSN0RIdlAvUTFndkVXdHp4ekZ3dkFLdldm?=
 =?utf-8?B?VFFYYVUyQzRGS0pYa1VNUGlvNzNQZ1pFZXptZDhkZldwUmRhR3BueTRXS0VK?=
 =?utf-8?B?ZGg0YW1wd2crTTErQWJzSE0yU2FCYXg0Z2JwN1dpc1NhV0NlcmZGTGpQejZw?=
 =?utf-8?B?MkFOS0tNV3BZUkF0NkJIOUM4c2hsNHV4a1FqTFc5UE4ycVh4TzlrRVFiRWRE?=
 =?utf-8?B?S3JHeUlsV3Y2enJ4bUR2N1hMZEcrQmpObDVWR09kZ0o5dzg0ZWZONmdLQTNC?=
 =?utf-8?B?eGRRZ1RtZVdHSm01WkxQOWl1S2hNRG9yakdkN0EvWUlEQWdnRWdYUXlISC9T?=
 =?utf-8?B?WTR3MVRHeWJZb3ZYNndIbVhOQjYrMFJ4Sld6WmthZ2RnRks3dGV4a3dSb0Jj?=
 =?utf-8?B?MDQyUWVlcVlOL3hrVlhPMGhwbmxhakNyRnZ4alBBTmp3c0xqRTMvaTAxWjVT?=
 =?utf-8?B?R3FRaWhMSFA4Y3BJdmVyRVlKRGtvb1hUeGVuMlM3U3Y0MXEyenpGN2pCc1Rq?=
 =?utf-8?B?UytHcWZ2eU53dkRSWTQ1YXFEbFF4VTZ3Zm5wYldXV0JVd1VsQ1hrWWNJNjFX?=
 =?utf-8?B?N0ljSElVZ2dIeStGMXY1Q1luYWYvR3ZaU1k1ZC9iWjRhMnRTWjN3MjhTdG84?=
 =?utf-8?B?alJFaGVSVW9tWkp1bXh0bUtKSlpNMTY5dWJkUWdFUm5nTENXT0lhVjdEY25k?=
 =?utf-8?B?a0RVWVBlQzJYbG1TQ0x1UXpZQWlNS01KVGI1OTliZ2FiUW4zL2JZbjc0bHBT?=
 =?utf-8?B?ajIrUklRbUZZaVc1U3FGU0VHWElzQjBHdnkwZnJWZFNZRzJ4eDJUQW1OQ1RL?=
 =?utf-8?B?bW9xcHdpWDd0WmFjb3IvOWI2Q1JSMWxsOFBTY2wrQ0ZtVzYzMTE5bTZ5MjEw?=
 =?utf-8?B?eGJ0WnFrL2JRdHBBYzhFcXpvZ2xHZlU1Nlh4bG9PS01UZnh1ckk2QTFTSXE1?=
 =?utf-8?B?aUh6SUhKVlV6ZHIzRERNL1pKLzBFUkg0ZlFpT0dzRDFiUk8veUVIYm5rSlVV?=
 =?utf-8?B?aVRJVnRlSi9Ba0ErQlRZa1JSRHF0aWcvc01UZytMSzFHOUtlaWdZaWpoMEYz?=
 =?utf-8?B?eE5LRDRKaFl4VXkrL2xPcEU0bUxsdFZZemRyWEVVUFpYRFdPdU5tb3U2VWRy?=
 =?utf-8?B?bjR2b0ZqOGh2dGlHOC9ORmZIZTdLb09QcWVCVUE3UTl0WWJKS3lhR29UYlBr?=
 =?utf-8?B?VTJRaUdTWUhqaFB5Q2xONTc3Q3oycysyMndoNWd4d0w3WDQ3ZlcyQVZKTFV1?=
 =?utf-8?B?c0hrOGczeExqZGsxOEZ6eElNTXYzbHU4L054WWtObWpHaXR5V1FjQTRFbzJp?=
 =?utf-8?B?UXpJM2ZMVFZibzh5S3cvV2ozQVJpS2gxSU4ycys1SFR6cys0MWxFWU5hUjdy?=
 =?utf-8?Q?XM7HTOoSIuw=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5332.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Ti9TelJUKzVEdUFBM1d2ZTQxbUpxSlNlZ3UyREVCNzcxTE13cEMybExXVEJj?=
 =?utf-8?B?YU5vaE5MWUFGSFRZbnU3aWxVdDdSb1dXcXdzMG5xKzlQOFIzYWN6cW52ZHpP?=
 =?utf-8?B?UEZnakdIWWhFeVBjRWNmc2hBNTFlSjlOMVdmWjRBVlYwak04VU1kY1ZRaUpw?=
 =?utf-8?B?Z21xTUNzN1NnRzlkZW8vcVg1ODE1S3FrakN0VVJCdTJoRXNkQWZWOW9pMnJy?=
 =?utf-8?B?UDE1YmRQdjQvanNXSG1oV1dGanBNYVR2MmkrWUhiRkh5SllvQVVKWUsrWmhW?=
 =?utf-8?B?dFRQVWdGS3ZkTTNtRHhkaThWb1pjcGk5bDNQeGwrdUhhSURaUVZhY0hWZERW?=
 =?utf-8?B?eUhMOWYzaHBkVmNSNUJ2VUhpdTB1V0EwWk0rU3h6VVUvejgvTTF1RlNrZDJn?=
 =?utf-8?B?aWx6Tnh3RVk3aEdVeWxrRFUwa3FjTnZmQjJHYkpxMnYvWkF2UWVYUTljMFBo?=
 =?utf-8?B?dXdEQU0vRjZIcUpzaUlnSVBmY3RmaGtnaXJRNXp1NVhadUdoenIzSlVnU2pC?=
 =?utf-8?B?em5XeVlTdEdCdnRiakJrcEIvc2hsUHl5RXEzOGZObnhjM1BXREV3SFlIZmcr?=
 =?utf-8?B?eFRSZm5XNXNzRWtBV0lzK0lyRVpNTm9Lb3BqZ0dXQzcxaXR1M1NncXBVQisw?=
 =?utf-8?B?VU5uYTZwNUZyMHQyb0VwWVBXMGN4SU1kVE9FZnNtRFVLRDFBcVA0eC9HWkh4?=
 =?utf-8?B?Z21RUDF4VEQraVZ1TjdvNWdOK2lyWGFVZnVjdjU4M2tuRGsyZ2xJQ0hLbHBL?=
 =?utf-8?B?LzNFZlU0V1dyYzB3Y05oUENPZHphU1hncUdPbUlvcWZuVVI5TnRPeUhtMmpH?=
 =?utf-8?B?MExCSW5ON2JwVW4rZGJ2UU83cy84ZUJDNHNPdG5KVm5mMllTTXZhVTdYUFlt?=
 =?utf-8?B?M282bk1rcDJMdGU3ZjNXYTBqTjdhQ2IxbENGZzM5OE0wZDRFeVFYM1BwcjhI?=
 =?utf-8?B?YTNqZmtLd0FZTHJuOVJ1ODdZMEVPZWk3MjBzNkRzR1h1MTJOMEt4anI2WXpB?=
 =?utf-8?B?dlAwaUMvZWRaNEhFeDgrTXcwVVdBemdDRUJMUDJaRXV5VllqMGFBdkFZblRh?=
 =?utf-8?B?RlhIbWxLVXBzbU5jTHV3b2dLV3dZMXlXU0I5K2pJTGJhcTJEZCtnMUJaazV3?=
 =?utf-8?B?RWdsdjRoQnhLR2lwbkFXb0FnZU9Uc2VrMXFCcTJWaGVhUjFLV1hiVVdFazMy?=
 =?utf-8?B?aU5ZQkppRmRsRWFZN2ozSWlISHpqakFwK2dqMHViaTc5c3JJdUxuV1NkMDlT?=
 =?utf-8?B?ZG96cEQrSVFxNGxRUWZvZlJlQzVaV2lhUE1GelZDR2FsUjd5blE4bkhDUzEz?=
 =?utf-8?B?aThkUHllbVU5cGRpUytHMExzd0tiSVZiQVZ1UzR2QVhSUXlRZmRHZStCM3Bv?=
 =?utf-8?B?U1NMZ3pDYTBxRmlTQTlCdEo4K2RtZ2YyTUk5NzNUWXlLL2JZaTIzWGljVUVr?=
 =?utf-8?B?ZVV0MmQ3ZjNIU2d3R01LMnFXZ3Z4OWJjZDZ0U1BTdmhDU3pXYUduVCtBTy9i?=
 =?utf-8?B?NjRZUndRV2FPUy9SbThodTQxK1ZGK0V6NVdFbEdjTEFwdGIraEJLYzZlcDBX?=
 =?utf-8?B?RVJHbnRBK3J3WWtQQnFnS2NuU0JaYWJmWkxjSGpPNThMWDFxT1R6Z2w4SEIw?=
 =?utf-8?B?bm1tNWpsTUh0VDNXNTZVSVVPT1hOUGpwOXJCbVhUTGZnV3pwN1VMT1pTL0FV?=
 =?utf-8?B?VWpCSGJleUZaWU8zaEt1amo2TElBbDRKQ0x1NTVLNGhCVUpXS1dvYXJBSEcx?=
 =?utf-8?B?dFNORU56REIvV1ZJcjNTdytNbDVhWG43WXYvZnpnN1lUV0pjM2pJVDRoZDNF?=
 =?utf-8?B?ek9FM0w5L1I5a2tWeWZFTDYxeXIrZzBOaTIvSDVTVVRqdng1TEdtNW1DZW05?=
 =?utf-8?B?bzBicll5aVZtQjQwQlZXT0w2cFZoZmF6Z0lneStXVUtUa25URWtMQnJMOFhq?=
 =?utf-8?B?MlRiRzhPeVMvVVhiY1QvZnRLNG1JWDVHcHhFRWZBMUZPUTY1VlcrRkhydmtP?=
 =?utf-8?B?Wmt2Unl3a1FJSDduaGVqMytrOUNFYXFiN3VmWnFURTVuSjh5N1RHMVAyWGtJ?=
 =?utf-8?B?V0k1OEs4UmJQMDJXelRrMjR3T040bzJxamZTdlIzNFRnYU56S3AzdjNraUZi?=
 =?utf-8?B?bXFLamVyOGRrNFBNMFFtNFJoMDd2aW5ranZmY0UxbUM0bjlEYjZxdlZTU0hw?=
 =?utf-8?B?Y3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d3dfce22-7403-4462-2967-08ddf3576905
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5332.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Sep 2025 06:24:51.0593 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: eDO2l/qF5Z7KF+SvDLLqEKf1pEtXjEcOyqgFT92CwMJVUVUG6DlDN3v4nEu/MyNMNUoOZvR2haYFYrbSa6pdeQa+GzeUr148iZKV4G1AEd4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB8569
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


On 9/12/2025 7:33 PM, Ville Syrjälä wrote:
> On Thu, Sep 11, 2025 at 08:15:39AM +0530, Ankit Nautiyal wrote:
>> Instead of setting vrr.guardband to vblank, use optimal guardband that
>> works for most of the cases. This will help in avoiding need of change
>> in guardband and fix the LRR feature that needs seamless switching to
>> a lower refresh rate.
> I think the _only_ thing we need for that is intel_crtc_vblank_delay()
> to return a different number. But this series is doing all kinds of
> stuff to other VRR logic that I don't understand at all.

There are couple of things which are done apart from 
intel_crtc_vblank_delay:

1. The delay calculation based on the pipe fill latencies as given in Bspec.

There were some checks which were already there, I have moved them into 
different place and added new checks.

There are still some things like PKG_C_LATENCY which might need a relook.

2. The SCL value is shortened as we see some issue with the 
dsb_wait_for_usec just after the push if its in the SCL window.

I am still looking into this one to root cause, but somewhere seems to 
be related to DSB_CHICKEN_BIT 15 wait for safe window.

I agree with the changes you have suggested in other patches, and will 
send new version with those addressed.

Will get rid of other changes that are not required now.


>
>> First few patches fix/refactor and extract common functions required for
>> dsc/scaler prefill time computation. Later patches use these helpers to
>> compute an optimized guardband.
>>
>> Also, for seamless_mn where vtotal is same but mode clock is changed to
>> seamlessly switch to lower rate, re-compute the vrr timings.
> As Art pointed out that stuff is defeatured on LNL+ (just sent
> a patch for that) so we don't need to worry about it too much.

Thanks for the patch, looks good to me.

I will drop the patches related to this.


Thanks again for looking into the series and to provide suggestions and 
corrections.

Regards,

Ankit

>
>> Few things that still need work:
>> -The timestamps corresponding with next start of vactive still need to be
>> fixed with the new scheme.
>> -Re-enabling CMRR
>>
>> Rev2:
>> -Address comments from Mitul.
>> -Extract helpers for dsc/scaler prefill latencies.
>> -Fix downscaling factor for chroma subsampling.
>> -Use missing pkg C max latency.
>> -Fix guardband computation for seamless mn, always use vblank for
>> higher resolution.
>>
>> Rev3:
>> -Drop patches for computing and storing PSR/Panel Replay wake times
>> latencies and use existing helpers to compute these in intel_alpm.c.
>> -Drop patch to change the Vmin as it was not required.
>>
>> Rev4:
>> -Rebase
>> -Drop patch for checking bounds for scaler array access.
>> -Use a new flag for setting vrr timings for seamless drrs.
>>
>> Rev5:
>> -Address comments from Mitul, Jani:
>> -Refactor few helpers for computing latencies.
>> -Rename the helper to check the guardband to intel_crtc_guardband_atomic_check()
>> -Refactor the helper intel_panel_highest_mode().
>>
>> Rev6:
>> -Rebase
>> -Address review comments from Mitul.
>> -Improve documentation for and other minor fixes in Patch#12
>>
>> Rev7:
>> -Address comments from Jani.
>> -Move the latency helpers from intel_display.c to intel_vrr.c and rename
>> the helpers appropriately.
>> -Drop redundant check for HAS_VRR with intel_vrr_possible().
>>
>> Rev8:
>> -Fix CI issues.
>> -For fixed RR wait for delayed vblank before dsb interrupt.
>>
>> Rev9:
>> -Fix vrr.vsync_start/end timings for 3D modes (patch#1)
>> -Rewrite the patch to wait for delayed vblank before dsb interrupt
>> (patch #11)
>> -Fix the flipline and vmin timings with optimized guardband (patch#12)
>>
>> Rev10:
>> -Address comments from Ville: Use min guardband computation for setting
>> the vblank delay and set the crtc_vblank_start to delayed vblank.
>> (Patch#13)
>> -Modify the TRANS_SET_CONTEXT_LATENCY as per new guardband and use
>> vrr.guardband to readback vblank_start. (Patch#11)
>>
>> -From previous revision:
>> ->Drop patch#11 "drm/i915/dsb: Align flipdone with delayed vblank using
>> guardband wait", as this is no longer required.
>> ->Modify Patch#12 "drm/i915/vrr: Use static guardband to support seamless
>> LRR switching" to only introduce a helper to compute the fix guardband.
>> Modify the commit message and the subject.
>>
>> Ankit Nautiyal (15):
>>    drm/i915/vrr: Use crtc_vsync_start/end for computing
>>      vrr.vsync_start/end
>>    drm/i915/skl_watermark: Fix the scaling factor for chroma subsampling
>>    drm/i915/skl_watermark: Pass linetime as argument to latency helpers
>>    drm/i915/skl_scaler: Introduce helper for chroma downscale factor
>>    drm/i915/display: Extract helpers to set dsc/scaler prefill latencies
>>    drm/i915/dp: Add SDP latency computation helper
>>    drm/i915/alpm: Add function to compute max link-wake latency
>>    drm/i915/vrr: Use vrr.sync_start for getting vtotal
>>    drm/i915/display: Add guardband check for feature latencies
>>    drm/i915/skl_watermark: Remove redundant latency checks from vblank
>>      validation
>>    drm/i915/display: Use vrr.guardband to derive vblank_start
>>    drm/i915/vrr: Introduce helper to compute min static guardband
>>    drm/i915/display: Use optimized guardband to set vblank start
>>    drm/i915/panel: Refactor helper to get highest fixed mode
>>    drm/i915/vrr: Fix seamless_mn drrs for PTL
>>
>>   drivers/gpu/drm/i915/display/intel_alpm.c     |  15 +
>>   drivers/gpu/drm/i915/display/intel_alpm.h     |   2 +
>>   drivers/gpu/drm/i915/display/intel_display.c  | 236 ++++++++++++++-
>>   .../drm/i915/display/intel_display_types.h    |   2 +
>>   drivers/gpu/drm/i915/display/intel_dp.c       |  63 +++-
>>   drivers/gpu/drm/i915/display/intel_dp.h       |   3 +
>>   drivers/gpu/drm/i915/display/intel_panel.c    |  11 +-
>>   drivers/gpu/drm/i915/display/intel_panel.h    |   3 +-
>>   drivers/gpu/drm/i915/display/intel_vrr.c      | 272 ++++++++++++++++--
>>   drivers/gpu/drm/i915/display/intel_vrr.h      |  10 +
>>   drivers/gpu/drm/i915/display/skl_scaler.c     |   5 +
>>   drivers/gpu/drm/i915/display/skl_scaler.h     |   3 +
>>   drivers/gpu/drm/i915/display/skl_watermark.c  |  89 +-----
>>   drivers/gpu/drm/i915/display/skl_watermark.h  |   1 +
>>   14 files changed, 586 insertions(+), 129 deletions(-)
>>
>> -- 
>> 2.45.2
