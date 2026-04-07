Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QAwtO5zF1GmmxAcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Apr 2026 10:51:40 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B8BA3AB871
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Apr 2026 10:51:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 69C2D10E215;
	Tue,  7 Apr 2026 08:51:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nGk8xa3q";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 64B0310E058;
 Tue,  7 Apr 2026 08:51:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775551898; x=1807087898;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=+eFZQAr6pzvS+0gOr4BuhFvOELVxk6Prm2pGZH9r1aU=;
 b=nGk8xa3qEYirVqGsYsK94Zznr+LF2scH3LT3XEfuYURSXWc0Y513no/h
 GqgH10QvRPVkJEbOOTdTnM4sLwXTD1dRlbLTp0nHC7MDPy9kNF6H1GQIX
 0x0jWkdM8jQQrTVhTIE/4yH6c8kNYjCQrHOhXRc2w/PbZhDa1EVip5vKs
 8EIZN67D3Mu50HvIIpggbes9VkvlrIthroYgpFlqqthZDcUY19UZCpEBw
 6kZS7Ecxsnlx6KX7GS2BjbGSAi8aVO6WX9X4ROH1zSHpKZF7nG42flw3t
 f6/Miuyji6lXBA6Md4xEtH0D/SgX8wnCR5uzJmcO1WchKh2KLscqp02Nj g==;
X-CSE-ConnectionGUID: vY+0xeShRASl4CgmLrkhAQ==
X-CSE-MsgGUID: Xjm/SKQpSlqEylw2c8QvwQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11751"; a="76226131"
X-IronPort-AV: E=Sophos;i="6.23,165,1770624000"; d="scan'208";a="76226131"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2026 01:51:37 -0700
X-CSE-ConnectionGUID: iNvJIqC1TnedTEsoJK2XgA==
X-CSE-MsgGUID: SCB3f4lkRpyxqRR9qKvXTw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,165,1770624000"; d="scan'208";a="232145583"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2026 01:51:29 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 7 Apr 2026 01:51:28 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 7 Apr 2026 01:51:28 -0700
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.65) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 7 Apr 2026 01:51:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Hs9Brjqm3NV3Q3zyE4e6nGjkY3CaQqqW5KOUSpnM28rcR3LV4Lv8XA+yCcRIi2hFZgw3k3pUEGiUD7kdpvR7MZqxIsQDbT0ywSsJ5u0c3A70FST9aPyMhWKUQ6sAYny4jYFgfiSlDwuYxIR5yCCDRgCgweToFBycmwAPiS6WCGulNkmQ5H7sGewjOYFoBnOYLBkghm1kQxuz01r/buj5Sl/GhDqZUk5Jz4ma3fitLFKed8FMUxyzWVYT+uvPsfqsFANoqKRX4ANaeN9mZpZeyl5Q7HEVc58Gxyico8Qc2buIT9Uhkf4/aNmCxTlRosVVkAMn6dkExG9wlTe/+lvEMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MRNekUdDB3uaVs4QQYaPWgGTxbBKvNlUNEheWdzSzR4=;
 b=PIOeNWywNb9A10789QOBVyW+3n+IjxcCfbWKknfj6/jQKXRWgZy9bmEfkW/6/uhx2yyRVyObDIKXrWbPXm0QuZjRXLSeQWQj/8jHG1mMexac5SgTNTo9Dsyfbx7Saomer7CXhpkxQEn2HAxN97yHhjeGtm+6XgVAYEbiFt6Dx8RPDUtEjXZdj0ThjnNN/Ok8wpEe1M80IgC5oMRAqjt1pYKqpfr3t7T9OV39i5SuEJr5I9hsaq1rUhhY5jR9uNJ8ZPtfF6T+YCqbyoxfTVZpWAlaPkjwZty6AxZQf5iH8P+PbceMGa7+03hi/8AFcA6z3/iBXKf83ePevsFJvAQKSQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SA1PR11MB6808.namprd11.prod.outlook.com (2603:10b6:806:24f::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.17; Tue, 7 Apr
 2026 08:51:19 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4%4]) with mapi id 15.20.9769.016; Tue, 7 Apr 2026
 08:51:19 +0000
Message-ID: <af89e4c7-d62d-45d0-807c-fa2616db9b9e@intel.com>
Date: Tue, 7 Apr 2026 14:21:10 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 19/23] drm/i915/dp: Set relevant Downspread Ctrl DPCD bits
 for PR + Auxless ALPM
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <dri-devel@lists.freedesktop.org>, <jouni.hogander@intel.com>,
 <animesh.manna@intel.com>
References: <20260402080425.548702-1-ankit.k.nautiyal@intel.com>
 <20260402080425.548702-20-ankit.k.nautiyal@intel.com>
 <ac5JYcs5eP31T7Bi@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <ac5JYcs5eP31T7Bi@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA0PR01CA0039.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:81::10) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SA1PR11MB6808:EE_
X-MS-Office365-Filtering-Correlation-Id: 6cdd4968-39af-40d2-787c-08de9482d62d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|56012099003|22082099003|18002099003; 
X-Microsoft-Antispam-Message-Info: y2QNV0T8C1zrLxX0Tg8ngR8gUKE3md4ya6zGyoaX4MnYC0U0AsdcSMG/6KgdXqLLPvKF1ahxUf//3LyOVFKeCj/6Dv2SuwVM/rLF5xjm4xsbhSAV3Vg8iOa4ZItpYLzeO0eR01Cmx0HT1+alV5JHsUfsSHzdaaVSDURsAWfXi3Avje5uTBBTRHhI+I2ls97+sQCTP1lQORhHdd2XIu4fOnpEq8O3BsIDY6khKeun5YYgcV853S7keQ0H+2pgiGLSiDIjjit1KvvfJaWPewLx+DprkgaIyFmSjWHCUZtkTg2V1+bHBUwnUcxZpafQe84RHkurs0Y/T9clbPVIqsQaZiq7pajIz4Gjlwzkhu67o8fblNYkgL3K7T9jffeYCTj1eBJBDeTUrAfQh4mDq1EVWE9yu+6Jwixmspi27uMq1r7WKfN6FufC2UFHsnFSy0nvLe7ToDrCSE802oRgUz3z5aIhGIG6QjtmDE2N/HrdUefSzOy9TZtTIJjzED0jHNghwIuquRLmHDa78UPT4KYdPfOvzMnb4JtPzPKeNA6RNyNhuv1t00f5mqFJuY+CoLbLgp/o0MPdhhCBMDB8m1z1XgijR60hbDYxks+VLse6iZNxAjHsYFVYzOZyZlVfppa3Xm1o1wVLalaHGORXK9rLn6BQan0JUgI2CnNeItG3/Zt8NXxWGkqhtM2AKcka93tdZFcdeZ0GeKJbsi54peVAaRVySh0fkqd93eDnW2PsDak=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(56012099003)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QmNaMDVFdkcwZW4yUXg2RGZpZ2cyYjIrV2RIWVR4RVM5WVFRYjVHQzhWZStq?=
 =?utf-8?B?c1g1MXlXSE9CeDRNTXdINkk3QTdENjFZbEtWQVNMS2ROK0VIdEZhS2xBVDZh?=
 =?utf-8?B?QStoZGp3ZjJpUlFvMkNtU0I0ZXpZS1lkMDhNU3FmOHJsVHhvb3pLYVRDSm5v?=
 =?utf-8?B?U1FTU3JMSnJpSkNOcFBTR2dmcjdOalVFRUs1U2FGRVRtbzdqcmlBdDJxVHZ0?=
 =?utf-8?B?eDFSZlpOTVBpVVU5R0lPbFJBYTZCb3UvUG8wSTdHVlY4dWdaWEJ3bGZZR3ZE?=
 =?utf-8?B?dEVubnQ2Q3hKYnkxQ24vOGVoa000Tm5MUWxMdW5Vam96UmFjSTRhRmhqNHZI?=
 =?utf-8?B?a2JuWlVVQ01WZmpXaFFTdjNseU1vQXRVQ3ZEaE9XemRWNWxyY2JZMDlpRUV6?=
 =?utf-8?B?V0JvV1R0VHNnV29jQ3d0NnJsV3pFelZjUUY1bkdZVkIvWTZBTzdSaDFTZkNJ?=
 =?utf-8?B?S29zNUdEMWU1RlM0U0xobDFWRkZqdWwxK1ExbWJVWCtiOENDVW9IWXVHZk0v?=
 =?utf-8?B?YjlCeHphY2d2dk1iUVFXK0dJSlFaMEtKWE9yNTdSMGdFQ3JLSlFMbks0dklo?=
 =?utf-8?B?MWtTSSsyWkVENFhQNlRiR2hkcmFoNnBpWVdndUJiMGIyMlV4QTBYV1NsTjVt?=
 =?utf-8?B?UFdja0xMZU9WQUhqMHNYWktiMjd1akk0RXBnVHEwcHFhS0ZIcTRPUkFmVHVT?=
 =?utf-8?B?czQzdGJlbW14bTlONm9aZDBaeXNod2xLMGQwY1pMUkxtc2tsTHpYSGsxV0hn?=
 =?utf-8?B?Rm5taS92N08yOEZuTVVnWWJwbHB2S1lEWDdtSzFYYVExTGVQNXErVUM2MTdh?=
 =?utf-8?B?K0JJdVZTVmI5eXd5UU00MGU4Ynp6WFl0RUxSeXJEVzZYYThPRmxQTVpPaW1y?=
 =?utf-8?B?UHRiTzFwN2hRVHUrd1dMbm5wYmhRNVZmd0NLR0ZqWVVVMUowSkF0S05ZMEx2?=
 =?utf-8?B?d1EzRVlDVDBVUSsrRDRLVHd5bFdmWEVmSlp2UVBxbExISWgxaEJUUjJCV0lB?=
 =?utf-8?B?ZmJxblpiN2Y5ZjU0N295eVpjTHNObE81anA2eWttNFRaR3NEK3RGbUFTRG1Y?=
 =?utf-8?B?VFh3akxSMmpvUlJlVDBsM01hZmE5SGpXbVhzMFFWR0EvSGY1Mk5seFZlVmdz?=
 =?utf-8?B?NHNpUitIZXZQMmtTRFRwcEZQMUxTb3M5ci9haWZzb3N0bTVYdVEwL3ViWDAv?=
 =?utf-8?B?SERBTHAyTjNBOS9IMWN4Mno3NFhma0RIWkZxQ2prRGhjK21lZURoWEFKbE9Z?=
 =?utf-8?B?bkNLZFpjZ0NZVnZkbkhTRjlUZ0VRNWs2VWdaaytITE1PR2VvemJ6N3U3NkdN?=
 =?utf-8?B?dnBpWk1qZTJSRjNja3d1T08xRm9TZDJZZEFvN2JoMWl4SktyNUtrRG5lODJU?=
 =?utf-8?B?Z3F3ZE9iNElOcmozbDZDenJFTE1GcjRra3E1aGFyRWI4bGpuLzl0dFJERi9K?=
 =?utf-8?B?OUdSTlJnbjUzaldVN0lXN0YwVGxMYitjbmJCYzBYMGJveEhuY05DR0QrY2F1?=
 =?utf-8?B?VXhneG1hUUp1bXczTGlNUXZMaGgvUndjUy9LQkZSdU1INkk0a052dlRFZk4v?=
 =?utf-8?B?TFZoTEkxL0o3blFFWlVHODBNb2JvbkZGZXRuNFh2THExYWRrZm1QV2ZmNnRT?=
 =?utf-8?B?Y205RWtaZGNtZ0dvV1laeG03MXhCRGFXbDBPdVczVkJPUkxxVk1TeUE4VlJx?=
 =?utf-8?B?NEM2bGs1NThVTGxoQjl3NG84UktCZHA4TUFOTTNEditjSG9RQlBHNU14cGhC?=
 =?utf-8?B?NHZBVzFob1l1ZXpDUEw0di9tV2dMS25DOG94U3E2c3F4bkNXOVFiM1pzNlNY?=
 =?utf-8?B?UnNDaGZoRytUSlJEemd4UEVqRUk0QkYzb2Y3ZmN2SUxyZGpBVllWMEROUk9v?=
 =?utf-8?B?ZStaaTZUWXYvc0phVzJ3VXEvaUNhQ0RlYjl3blBhVUlNK1FTSzJyV3czcktX?=
 =?utf-8?B?VW5DcnIzZm9KR29Pa29hbEZnZk0xajhZVFF0YldWSnRmOVRwV0JiZ3RpNDFZ?=
 =?utf-8?B?RjE1UlBxRGplODNwN1BjcFZJRDMwNjJPMzNSSjE3Y3FLRnhodHcvSnJDUkpl?=
 =?utf-8?B?LzdPWHV6M2VCRHFaWWlFTyt0eDdFaVFBL3NOV3BnU3JVR2ZFRlhmeDlDSTMz?=
 =?utf-8?B?OFZFOUQrQStWY2YyOWRlUHBUQkMvdU9oZHpOT005OFJvN2c0T3d1elBZK3M2?=
 =?utf-8?B?ZEZkUjVMVExUL3plMDhnUWxLREtDVjlZVTA2QzFibm0zVnBiZ0lTdGZua2tC?=
 =?utf-8?B?czZ6NE9wQXpoeEx3RDdEUHc2R1pKYkhneXY5SG93ekhLVkc2WndFVVBBalBh?=
 =?utf-8?B?SThsb0NWTVdHU3NScGFqVmpTTzltSUgxVldRaGpJN3pYODZuT0dtZjJEdkpD?=
 =?utf-8?Q?vtN6sNK3mcuDRakE=3D?=
X-Exchange-RoutingPolicyChecked: g6LqL+bpa/s7qqIZLSUvbiec9y937bvMLt3s6pO3N05yGjKYEFuqYXESJs7QErzAxReUH6PMB1iJP0KUcbESHujzsfA5bxavPhuhl1LC6rc58E+vnEVaxeRc/zCiFDoi3bdcnZ5kTF3iA3IaAM2K38tZG+MoCeATpQRMr33Maa/dj2c65JaU8qNCkBQLzpPWP18F5z0K4x6DY3b3ekFNEaUvkE5G+2sg3m1jKXtQmkdhKNMLEq92ZbMiZ0ZLhI+QF380FVcweGoC09jSJkOPKPfCOZZ17YImquA/KqAKmVW3UFw/VcP6+VG2lVPoNCIjh912CoGwSknPZTAVrVKiyQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: 6cdd4968-39af-40d2-787c-08de9482d62d
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Apr 2026 08:51:19.6705 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: c6Yb69FeI8P/UBszkr+ZbdiOzlBv0ioPPOIMqIefrWoy9rqVkukBGqw98RgDRbmkrnA8ZDvi904P/qaLIT1EdQA4veaJnDtu/cQqo810/2c=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6808
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,intel.com:mid];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_FIVE(0.00)[6];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 5B8BA3AB871
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On 4/2/2026 4:18 PM, Ville Syrjälä wrote:
> On Thu, Apr 02, 2026 at 01:34:19PM +0530, Ankit Nautiyal wrote:
>> If a Panel Replay capable sink, supports Async Video timing in
>> PR active state, then source does not necessarily need to send AS SDPs
>> during PR active.
>>
>> However, if asynchronous video timing is not supported, then for PR with
>> Aux-less ALPM, the source must transmit Adaptive-Sync SDPs for video
>> timing synchronization while PR is active.
>>
>> If the source needs to send AS SDP during PR active, this requires setting
>> DPCD 0x0107[6] (FIXED_VTOTAL_AS_SDP_EN_IN_PR_ACTIVE). This applies whether
>> VRR is enabled (AVT/FAVT) or fixed-timing mode is used.
>>
>> This bit defines AS SDP timing behavior during PR Active, even if AS SDPs
>> are briefly suspended.
>>
>> Program the relevant Downspread Ctrl DPCD bits accordingly.
>>
>> v2: Instead of Panel Replay check simply use AS SDP enable check. (Ville)
>>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   .../gpu/drm/i915/display/intel_dp_link_training.c    | 12 ++++++++++--
>>   .../gpu/drm/i915/display/intel_dp_link_training.h    |  3 ++-
>>   drivers/gpu/drm/i915/display/intel_dp_mst.c          |  2 +-
>>   3 files changed, 13 insertions(+), 4 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
>> index a26094223f78..8b21c479ebfc 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
>> @@ -27,6 +27,7 @@
>>   #include <drm/display/drm_dp_helper.h>
>>   #include <drm/drm_print.h>
>>   
>> +#include "intel_alpm.h"
>>   #include "intel_display_core.h"
>>   #include "intel_display_jiffies.h"
>>   #include "intel_display_types.h"
>> @@ -34,6 +35,7 @@
>>   #include "intel_dp.h"
>>   #include "intel_dp_link_training.h"
>>   #include "intel_encoder.h"
>> +#include "intel_hdmi.h"
>>   #include "intel_hotplug.h"
>>   #include "intel_panel.h"
>>   
>> @@ -710,11 +712,14 @@ static bool intel_dp_link_max_vswing_reached(struct intel_dp *intel_dp,
>>   	return true;
>>   }
>>   
>> -void intel_dp_link_training_set_mode(struct intel_dp *intel_dp, int link_rate, bool is_vrr)
>> +void intel_dp_link_training_set_mode(struct intel_dp *intel_dp, int link_rate,
>> +				     bool is_vrr,
>> +				     bool as_sdp_enable)
>>   {
>>   	u8 link_config[2];
>>   
>>   	link_config[0] = is_vrr ? DP_MSA_TIMING_PAR_IGNORE_EN : 0;
>> +	link_config[0] |= as_sdp_enable ? DP_FIXED_VTOTAL_AS_SDP_EN_IN_PR_ACTIVE : 0;
>>   	link_config[1] = drm_dp_is_uhbr_rate(link_rate) ?
>>   			 DP_SET_ANSI_128B132B : DP_SET_ANSI_8B10B;
>>   	drm_dp_dpcd_write(&intel_dp->aux, DP_DOWNSPREAD_CTRL, link_config, 2);
>> @@ -737,7 +742,10 @@ static void intel_dp_update_downspread_ctrl(struct intel_dp *intel_dp,
>>   	  * especially on the first real commit when clearing the inherited flag.
>>   	  */
>>   	intel_dp_link_training_set_mode(intel_dp,
>> -					crtc_state->port_clock, crtc_state->vrr.in_range);
>> +					crtc_state->port_clock,
>> +					crtc_state->vrr.in_range,
>> +					crtc_state->infoframes.enable &
>> +					intel_hdmi_infoframe_enable(DP_SDP_ADAPTIVE_SYNC));
> The bit is only documented to be valid for panel replay capable
> sinks. So we should probably not set it otherwise.
>
> But the weird thing is that the AS SDP DB0[1:0] description does not
> provide for a set of valid values for that case (DPCD 107h[7:6]=10b).
> Either they assumed that AS SDP v1 is used in that case (in which case
> the we'd not be able to support FAVT and maybe some other stuff without
> PR), or it's just an oversight and the same values apply as for
> 107h[7:6]=10b as they do for 107h[7:6]=11b.


Yeah you are right, the spec doesnt say any specific thing for AS SDP 
DB0[1:0] when DPCD 107h[7:6]=10b.

It says for values 11b and 01b. As you said, I agree we should have a 
Panel Replay check also.

I'll just use:

intel_alpm_is_alpm_aux_less() &&
crtc_state->infoframes.enable & 
intel_hdmi_infoframe_enable(DP_SDP_ADAPTIVE_SYNC))


Regards,

Ankit

>
>>   }
>>   
>>   void intel_dp_link_training_set_bw(struct intel_dp *intel_dp,
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.h b/drivers/gpu/drm/i915/display/intel_dp_link_training.h
>> index 33dcbde6a408..d3ae8ee38a75 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.h
>> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.h
>> @@ -18,7 +18,8 @@ int intel_dp_init_lttpr_and_dprx_caps(struct intel_dp *intel_dp);
>>   bool intel_dp_lttpr_transparent_mode_enabled(struct intel_dp *intel_dp);
>>   
>>   void intel_dp_link_training_set_mode(struct intel_dp *intel_dp,
>> -				     int link_rate, bool is_vrr);
>> +				     int link_rate, bool is_vrr,
>> +				     bool as_sdp_enable);
>>   void intel_dp_link_training_set_bw(struct intel_dp *intel_dp,
>>   				   int link_bw, int rate_select, int lane_count,
>>   				   bool enhanced_framing, bool post_lt_adj_req);
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
>> index e8de17834dcd..ffd1cf0aad9a 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
>> @@ -2142,7 +2142,7 @@ void intel_dp_mst_prepare_probe(struct intel_dp *intel_dp)
>>   
>>   	intel_dp_compute_rate(intel_dp, link_rate, &link_bw, &rate_select);
>>   
>> -	intel_dp_link_training_set_mode(intel_dp, link_rate, false);
>> +	intel_dp_link_training_set_mode(intel_dp, link_rate, false, false);
>>   	intel_dp_link_training_set_bw(intel_dp, link_bw, rate_select, lane_count,
>>   				      drm_dp_enhanced_frame_cap(intel_dp->dpcd), false);
>>   
>> -- 
>> 2.45.2
