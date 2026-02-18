Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CI2GKp+nlWlVTAIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Feb 2026 12:50:55 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 16611156191
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Feb 2026 12:50:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8928510E5AE;
	Wed, 18 Feb 2026 11:50:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="K3oTJAHh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8C09F10E5AC;
 Wed, 18 Feb 2026 11:50:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771415452; x=1802951452;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=f57ZMMOe8GzGEOgqzckrn2vNtErBytpDkx7c1YXpQjA=;
 b=K3oTJAHhIT7BhzCl4NLpACAbQbrUB/OnB4m6sCWfnnGVoWuaKL3aEkN6
 kWuf66BucwzQs/VxmBu6A6NmC6MS8eTi6znPhjPmzzCtDu5WIvi7jn4B2
 1oS208tMX7nY8NvUMqzVjypxWBCrWplhAGyJuZ3oQ0YK/ZDQTGhtUi+HC
 We0J4Ygio2HdEeQNHOrFSs2O/rJhwTF8CHFRP3bKtfeST6ZyvTZe4qVyl
 K9isxUwuRHO+QLR1FDyog0vBzh9cmJOkb3jkv/UAPJMTtUJeyS6XFJ7mx
 /+muRyyd7Z3xBqcHBIHmGxYZBqjRDcn8Xfq/9xn1AriFJboEUfOJmcMvn Q==;
X-CSE-ConnectionGUID: pCe6gKFeRAOJ6GkUrAJ18A==
X-CSE-MsgGUID: 87XFY1UEQRm2XcEYRQjRiQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11704"; a="72378166"
X-IronPort-AV: E=Sophos;i="6.21,298,1763452800"; d="scan'208";a="72378166"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Feb 2026 03:50:51 -0800
X-CSE-ConnectionGUID: fCo93HLgRWKvMf0+TGLodQ==
X-CSE-MsgGUID: sZf1K5j+Td+/F3fRdx2Rjg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,298,1763452800"; d="scan'208";a="218701876"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Feb 2026 03:50:50 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 18 Feb 2026 03:50:50 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Wed, 18 Feb 2026 03:50:50 -0800
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.33) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 18 Feb 2026 03:50:50 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=EKNaP/+jyIfkORcGr0w1BrJfJez7u8ZdPkZuElbW6LPn15FASUIxmuoNZ8hVBXzgLawPK0IccAZjr0Ov2ZQ5ydnAWsZvD60+QZOLswVidLfK0R1VhrHgJKJoo42O3GkNRLY0Q+QAkbOSauld9x4Pcw9CVAzwkWjxv7/VjY07bon2zDO+CE6B5KIYxnV+0vpow6mFRRwXUHsnKkx0BL8D6gnO3UurAWaR8RMm28VFEP7+ohesOpPHh7QqniYBN7TLfhi5aNQumWKWZ6iisBR/miVkiZWSy37Kzbi/fPtgrybGD45YeBWddHiucDoEJdbiipqeluT994bhccm+WVn94Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=X0P8EvP8IgdQdv3dsEXbT0Tfu9+PgfYUxvhPxZrvKJY=;
 b=srqDFJ4z7qkjHFLqF5co1bAqn+mKXUBlxR5Wv9hQMVvB7wcdsxu1OJ2UNOmYGGuBMSBz+ImvpgDGRoKEQ9MFGHOUuoItDw46gAKo7LwZVih1KL+zOv/3rpOyAnfn553rQ5Ga6DdoMGpwxz3kqF6LLCTmrDWku9Vx1d38n9URRSXBzXkNUG1wdvLQsvWq7NTdH8mhjP5ADoqVnLzyjBCphVyXeA6mUuyhzil4ZJi1OvdDjpw0Egl6yLVGn1ZGdlqOdiSdUpHEiCbJ9Gdd9poHylzrJpN2kA6e5o31sdSlFA1/wezweoooXiPjCadMRAWG5HDEA8aYVr/F+EAI+VQWuQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by PH7PR11MB6746.namprd11.prod.outlook.com (2603:10b6:510:1b4::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.13; Wed, 18 Feb
 2026 11:50:42 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4%4]) with mapi id 15.20.9611.013; Wed, 18 Feb 2026
 11:50:42 +0000
Message-ID: <4454b4e0-4a12-4cbd-9a57-514049c6a070@intel.com>
Date: Wed, 18 Feb 2026 17:20:35 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] drm/i915/dp: Fix ww mutex lock failure in
 for_each_joiner_candidate() loop
To: Imre Deak <imre.deak@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
References: <20260218105708.845161-1-imre.deak@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20260218105708.845161-1-imre.deak@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5PR01CA0118.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:1a7::8) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|PH7PR11MB6746:EE_
X-MS-Office365-Filtering-Correlation-Id: b275e5d3-a81c-43fc-3d39-08de6ee3f163
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?cnpUenRyWlhTd29yM1VPVytWZ1ovd2RFb1RMa09aUVlWWVh4Z1ZkQWZqSFJh?=
 =?utf-8?B?MHN0MnRtd2hKc2lmWWw1ZFErcDVGa1U3ZUhscGlDYlQ5aXRHVkxsT3FtOWVw?=
 =?utf-8?B?RmRGNEJyUzNCbzAyNVhYMFRqRVpFeHdibDJpaWN4QnZQejBPai91dWdHbHVR?=
 =?utf-8?B?dkc5QWVoU045NUFHVnRaUlNCd0N5NEhVTDEvT3JoVlJsZlJobGpQZk5LNHht?=
 =?utf-8?B?VE5OUDM3UHRiakpOekZSTjl0T2lEa0VxZWxOUkNRVmg5QzFLRjNraFk5ZWdP?=
 =?utf-8?B?US9uK0twSWl4YTdEa3BrZmpSTTRYSWNiUTlaa3U5ekZaQnl6akdoaTdPeUo0?=
 =?utf-8?B?ZjBnKzlaL0FvK0R0a2VybnY3RGttemxBSWlrY01BMk56Y2JNZ1lXTEpOZDJo?=
 =?utf-8?B?ZkxrdTJHd3lZYzNCSWdjL2w0dnNqRmU0bTdiVXR5QnZVTVNrdVVScnJNdk5P?=
 =?utf-8?B?ZTJqblo3Njl6Qy9XT3pST01ZRGlCQnFNVHNjUjhjaFBuQURJL2FXYWZ6QzVU?=
 =?utf-8?B?bk0zQjhsVlk1S2pLdkNhN1hRMExQN0l3bm1Gd3l1QVphYVBsZGx5c3c1eEFV?=
 =?utf-8?B?Q0RSZG5rSmFXUEJZWkxrU3ZCMlhBc0NJbi9QYjdEUUJMVEhJQ0JFRVNmdlVx?=
 =?utf-8?B?NFZCNDdJdWNzT2NzQTVuazc4bTNnYjcyQ2xjbTBKbm5SQzlSS0x0MFhjMWZz?=
 =?utf-8?B?b0tTQjJkam1ma2ZyaG04ZnpRK3NKQ0R6M3RaSGpSWFdYWTczUlpUS1p6aU9B?=
 =?utf-8?B?dzgyMDRpUEgxNWttdWtodGQ5eWs3cE9jVGVkcmwwWVZNaVBLM3pUNVFOVlZa?=
 =?utf-8?B?dml6T051aG9OblFkRFVOUzVva3gyRlg2ZXVJL3cwM2p2OHByNHhMUFZyczdo?=
 =?utf-8?B?TnhOV0FQN3YwMUpXejZTU0lrU3N4NUJpWTZWYTNYMzl2WXYvTEN6UW0zZG1k?=
 =?utf-8?B?VU1FT1pwV2VQWld2clh4bGFBNS9QVlc1OSs3N3phMkU3RGE3NGppdzZoT25T?=
 =?utf-8?B?b05oLzJiS2tyU2dMQ2h3WElDWVJxZ2RtckQyRDB2STdFSndEbFlPbUV0Q3Ux?=
 =?utf-8?B?ZTNkK1BlNnFjRmpIakVVWEMvVllPOFQyS1l5dGtaMlRORk40Vmt6RUNRNlJH?=
 =?utf-8?B?aEkrQmZway9RTFpqaXV1am91K3ZBUlhxbCtidXRia1NpdmRiWjVieE9MSGhR?=
 =?utf-8?B?b3pNYWJDcG15Wkp2aElOMGhzTzRpUzFyaG1kdWtoM2tvRXZTVGRYK2tWQzQv?=
 =?utf-8?B?UEhsK0Z0QTc4RHlTYTVrSVVualh3SmVQRUJMQTdldUJkYXptbXE1aTdXL05a?=
 =?utf-8?B?YnpNWklyMTVvL2tGdFFiazVtTG5IbGlqNmYrclZhRkNqdFRDRmpES1k0Mmpi?=
 =?utf-8?B?SUtranpWZjdTZ0JiMU1xUFJYZEJpWlZNT2c3dDJGMGNaa3lLZklURnRGVnFa?=
 =?utf-8?B?RERPZ3hFcm1hZGlOU2hYeVFCZFE2RjRWMWNEcWJMMGtNaFZWOVgzMUZHWmVO?=
 =?utf-8?B?YlpJSWxibzNmTG1VSGNUbjUydGhmTEZKU05jVlhDcFZEM0FsdDBBeWJnN0JI?=
 =?utf-8?B?NmExRlRLaUdUSTF5YWVIclN6dDlOOE5MU1AwMGVwdUdTMjlDcHpENW4zc3Rk?=
 =?utf-8?B?WEx2NFAwSGNlQzBtMDY3YmVoU2UvUElEMXprZy9zcnJDK0NkSlRWSTBVL2hv?=
 =?utf-8?B?SXVkNm9ISlN0ZW1rZ0o2TGtUaW5YRWVINWxmWVFXcDZYZHJiaE44VzE4V1Zw?=
 =?utf-8?B?WjhiMjVUUnNtbERhYW1jczREMjFhS1hUZXkza1JGWDdjUGVWTy9rMTVxa0Ev?=
 =?utf-8?B?VXI0bjk2T2lEVUxYZG16WnM5b1JlV1RUNC8rdE9RWVI4emM5TXo5VWJ4bG5N?=
 =?utf-8?B?R1l6YXQ3YjlVNittQkNDbzk3bEZKMFl1dnNFR0xmbDJqdzJZVzdBb3NERlNC?=
 =?utf-8?B?QnpOaFZzVS9oZC9YRkVKQUVQNm9haUt3VmRuM0FGajRUdCt3bi9HNGFYMldk?=
 =?utf-8?B?TUdnNndRLzNRUUdiVFd0VU9pRWxIZEk3NHgyby9nZFp4SVV6OWE2MHdoWlpu?=
 =?utf-8?B?aFhvWGNaOUkzS3FGQUpOUlRWQmlrUDgrMVplUno1Wmdabk5aTHVmTW1FOFps?=
 =?utf-8?Q?/8RA=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Zi91Q1N1RlRkLzVZd2xBNVZBa3JONG5EVGhhd2doUmg3MHlDT1E2WVNVNGJm?=
 =?utf-8?B?TlliMDI5S2FzZWRXakJienpSVHdEM3ZKR0dENWdMR3hIdTVMQVYydmJteXVh?=
 =?utf-8?B?WXJqNENCUXA5SGxjeCtNaEdCNTg2R25FZk5rQXVHTmQrRzRhY3U4bjZRTkFm?=
 =?utf-8?B?T0hrVFJaOGszV3JhMGk4cGtHUG92KzBTd3Q4NWlnTjAyZTBteDN4THdFQSsr?=
 =?utf-8?B?eEF4ZkJUZmpLQ1FZRERPL0FNOENxS20vdVUyUmI0UTNxSzdHN291bzJuRDRr?=
 =?utf-8?B?aHRtdTZ1eWlVaktJUDdQOEl5RVBGY0FxbXFvdi9GY2JEVU5qa2prTzFha0tX?=
 =?utf-8?B?U1hBUUtSRWlBTkRONlRSZEVraExPd3AzaG41STk5K2czVGNNcjRTbUFJQnZn?=
 =?utf-8?B?V2lFSXdXa0xsT3dYN0tBTTg1NENCZ1JZZzFKUElRTy80bnAydkdDbkg2d0hD?=
 =?utf-8?B?eTNBaFlObGJGdldPeXFnSnBacld3UEU0THpEc3pid1ZsanFTM2NoeGlBbzRE?=
 =?utf-8?B?MVFBZEdHRlZ2MkJpMUhMWmhLdVRnZ0pXa0RQSmZNNVBpazd5dkhXdWhUSkw3?=
 =?utf-8?B?YllyVjdiU3BMVDVUUVNGS1RJV1JCRWVOVUtiVmo4TkMxNTBEL2dFMEpXbnlR?=
 =?utf-8?B?cVRWYThPZkY3VTlIUGhyZGpsSHliQTZCR2xxWUtYWHo4U09GaXJDZklwOFYy?=
 =?utf-8?B?N1dEMWI5V1VCbWkreU9laGdZTG9ta0FVQWJKU1V3ZWdPZzNyMDN3WkttTjJX?=
 =?utf-8?B?K2w1cDB0cHg4YkVpbVlEcE8vRDdqZFVkMVBjYy9FK0IrTG5nUFBEcWhkblZa?=
 =?utf-8?B?aHhOcWdsYUNoN3VwUHVjcmRUVVhwTGNGMG43NnVBdnN0VTA2dVlRR3dVQ3Vx?=
 =?utf-8?B?UkRYK3VoOWhUL3E3NlFLem9KT0tKeWM5K0JQc0pYVFY3RG5oMjFIQjlhYzEv?=
 =?utf-8?B?cTlDRVlJaW9adTY5MmRia3l4SlkvVzYydEhNZzRkRUljcTRDTTVyRWhjUm5O?=
 =?utf-8?B?THZxQldQTzRVcmVibHZ4STFDS3k1M2FZcVdYN25obEZoektpNDR4WklBU2Nj?=
 =?utf-8?B?VSt1Mm4ycjJxNWNXamd4Q3NhTjFFUHdxYUFjTWl1NU5hVzdxWlRDS2RmSXdI?=
 =?utf-8?B?SmFZNms1WVNkYWdLMDFMc0JJeVgvQ0ZuZ2htR2lPTEpKQ3RrREdJKy96c1cz?=
 =?utf-8?B?UGluN2gyMWZGR2FaM3FMb2NxVXFzMitGU0dHVURzU2ZyNnY4b2x5OUIyU0ly?=
 =?utf-8?B?RVJrd0pJNWk4aG9DaVdkQ3R3aFlGam1hMXFxczdjOHVOdnJjaVMvTGx3Ym5I?=
 =?utf-8?B?b2RmaTZDdnZMUUo0L3BpVWJQYzBDUWpoMWhQVlRBUm43cmZrV1BUMmtadU5N?=
 =?utf-8?B?ckhhU2Y5djNQNHo4Q0NVUXh3RDhNaTNiUFZvZHZDU2l3akxvZGNoVTNvV1hr?=
 =?utf-8?B?cWdhQXVjbkRUa1NPeVMwQ3hqcTR2Yyt6UXhYVVFudk1BU0RTSi9zN0VGUXlY?=
 =?utf-8?B?WkF4RnNJZllUTTJIWUtJZXNFdnZFajNaNFBCSEYzQkxPdy82ZE5wRGZnM1VP?=
 =?utf-8?B?dzVvbEF3M2lpeWI3dk1Ib0drQ2RkQVc5K2wwMFFTWHUwb2tzS2N5VmwwVU5n?=
 =?utf-8?B?YmNLMndlTkR0NGh6Q3M1RTFJZW42a3ZGbEZwc3Yxc1QyMzhZVnhFM2R2RFM1?=
 =?utf-8?B?d2xUVndObWZuQm1heHMveXN0cEZLby9lVHVWTEQwYkFNYnZPUlpVdTc2eEhP?=
 =?utf-8?B?blEwVDNVTW5vb2dqanZ1R3N2WUlmT1VwbDE4cFVGT3lYSFVsSUNEa3ZMbXkv?=
 =?utf-8?B?T1ZRb3paVDM2RnV5Ynhoazc0TWlOL0gwNTRici8vRjI1MmZEaEQrbjZIN0pa?=
 =?utf-8?B?Vzd2MjZmWmZwVWthNysyTkFLUnQzRUlkdStBaThnSzQ1UFVsekMxV3J1dXhi?=
 =?utf-8?B?S3BWa0ZMMHAydS9QcGVlMlZHTW90YXg1RWNOaDh5OE1DY1JPeUFqVFg5RDFj?=
 =?utf-8?B?QzFKNzdMU083a3pEZkM2WTdGK3FrcERYUWZiZWRuMlRVa3o1OEVmcXBOVllv?=
 =?utf-8?B?T2VCUDQ2WGY0WHhDVUtNTUdTUGdJb3M1dGl3SjFIS3Fhb1VQa3N5dmlGZjJU?=
 =?utf-8?B?UkswOEFrUWEyL0dCZzRqV3BwZk5hdnp1a1NLQW1IWTl5dys1T2QySHBOMXl1?=
 =?utf-8?B?SnZxZjZDT1Q3YTZvVlBaay9UVyswQ0h3SnpTTnZ3YW1JU2p5NGFHUUtYd05X?=
 =?utf-8?B?OVM5V1BFRitRcEtjb0E1Ky9QNU1rTkRiTHZ6RFlDMFVxY2tPWnRFV29sci9n?=
 =?utf-8?B?TzZtMmw2djQzekNuSGh2OFg1emUrMWVZdXk4ZzJmbzM4bktyZlM5aUZLckIz?=
 =?utf-8?Q?ocRu813OcIh4pmBw=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b275e5d3-a81c-43fc-3d39-08de6ee3f163
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Feb 2026 11:50:42.3064 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: pAowMnUwFG1Wm42OBHT2rxg+F1E/iPVLaBkEUmyN4wmjY9hcMJVgtjUlds8OFL2YfVR5KY0DFUTZ6dfCyBM67unHNj7wF0IkPjApUEOqCCM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6746
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:dkim,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9];
	RCPT_COUNT_THREE(0.00)[3];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 16611156191
X-Rspamd-Action: no action


On 2/18/2026 4:27 PM, Imre Deak wrote:
> Handle modeset WW mutex lock failures due to contention properly.
> Return -EDEADLK to the caller instead of attempting to lock the same
> mutex again in a subsequent joiner candidate iteration, where the WW
> mutex is already in a contended state.
>
> This fixes the following warning:
>
> WARNING: drivers/gpu/drm/drm_modeset_lock.c:298 at modeset_lock+0x1c0/0x210
>
> triggered by ctx->contended.
>
> Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Fixes: 1f1e3e5c65f6d ("drm/i915/dp: Rework pipe joiner logic in compute_config")
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_dp.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 454e6144ee4e2..025e906b63a97 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -2969,7 +2969,7 @@ intel_dp_compute_link_config(struct intel_encoder *encoder,
>   
>   		ret = intel_dp_compute_link_for_joined_pipes(encoder, crtc_state, conn_state,
>   							     respect_downstream_limits);
> -		if (ret == 0)
> +		if (ret == 0 || ret == -EDEADLK)


Seems like I had missed that intel_dp_mtp_tu_compute_config() and 
mst_stream_compute_link_for_joined_pipes() can also return -EDEADLK.

Earlier we would just return any non‑zero error and the IOCTL would fail.

But now this code runs inside the iteration loop, so we try the next 
joiner candidate for normal errors.

However, for -EDEADLK we need to break out of the loop and let the IOCTL 
fail, since the lock retry sequence has to be handled by the upper layers.

The fix LGTM.

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


>   			break;
>   	}
>   
