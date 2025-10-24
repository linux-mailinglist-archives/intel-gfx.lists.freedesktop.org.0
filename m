Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FEF2C04BAE
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Oct 2025 09:32:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D4D4F10E9F2;
	Fri, 24 Oct 2025 07:32:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="X7uFryI/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C56B910E9F0;
 Fri, 24 Oct 2025 07:32:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761291155; x=1792827155;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=8438EG8EzBXjnb7028tMlILzcLuVF6rZh3zf69qQv94=;
 b=X7uFryI/ikD8YiNNj0tlUZBAxOCWJU5BD6RfctwGPoQnNOez/mj6niBM
 VVfaxKOddyZ9F0pAMZqh+dHe3YyFKcLQBZRxpgWPlIW2DEGNHpjYn0idO
 /LgoyEhxBoozpYI63OdAk6QNl33D8JzF2Mafkko1899w4Tk67QhnssIXY
 Yb0e0WFm3a9RpQSykMH///ckWjDb6E+8fl3l1yhCrFOS5nat1Whz0FV8S
 6wmVqB70n98zqBb7SkZpwJ03+8EoBwPgob08kZ346GmX9dsEnz4wlGhjo
 giCcyyiIIR6jh/yaH0zJ2oTZd/Rhy8p4pUfG614ivu57daZOJuSbXv1LF Q==;
X-CSE-ConnectionGUID: NZQS9SqgQ1KxysYiywtS4Q==
X-CSE-MsgGUID: 2Jmw41goQD+9D3R6r/VmyA==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="67336999"
X-IronPort-AV: E=Sophos;i="6.19,251,1754982000"; d="scan'208";a="67336999"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2025 00:32:30 -0700
X-CSE-ConnectionGUID: 5E5g7xmXRpqYxNRSQ8jxng==
X-CSE-MsgGUID: cS4HEBvyRziNy4Pj2nO/0Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,251,1754982000"; d="scan'208";a="189491586"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2025 00:32:30 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 24 Oct 2025 00:32:29 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Fri, 24 Oct 2025 00:32:29 -0700
Received: from CO1PR03CU002.outbound.protection.outlook.com (52.101.46.31) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 24 Oct 2025 00:32:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=RXnhyolD7GKOuRvO/hV8bXihFuz3tO7EJCZK+3hVLQqhg+KNORyo0vnHkSZ8rc2aO5Qhup90P7Zz5jmWUJu8eGgQSNrmkFbj/K4ALy/XRqYj0opLLSuLAHiKveypuad480EDirDJ8P8nbxhiGJvnxNJfjCKv4NroyPQXMmZ7dn8YYBkGruFGSFh6+YiR4b7g1vr+yEiVb+flu42qQ2S+H5G+vTD1TiAsLp9LM41noPnG2ueivgW9ttGaGnrAymf6lPLS5zD4QhvsT9yFpqEAzKOCUo7ywg6zHxtGUkDEBnWOU8R5moihvvMwvGhlSCimWVXSk6L0D4K2jrHIXFY+nQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0OBlrv5cEs2wsvhF8W8KCco3WV0i9GABdoCjjTLIA6g=;
 b=UjziPJh4iWpssDQo3fmEg0PAG3t6trLnvelvbZIKk2d7AdnTroBDXCrYuwj7k8SrA3RyyuMB0RDEXPR8jLg7TbpwQ2mVrQBa74ecI6qCnFY6fJLuCvagH3IWrq95FUiilywwIvkDonnvwlZLk4tF0/qmlY1TOkPT8oglAE+RZWwMQ1fAUErzAGtfEpL3CJaAs1FDowPp3rBPQwQZVU+L15RL3oINLPHW6NJ1SDum1L8nCMUwVLxsTZWBJHkY+QsssIrPLC9iaaTuHhmiFh1AQ070nbQ6aw2GasjRcBWqybG04fjUcdxPpFfyC0juLhibg7Lrf5igNY2M7ri/5wIbCg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by CY8PR11MB7243.namprd11.prod.outlook.com (2603:10b6:930:96::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9253.13; Fri, 24 Oct
 2025 07:32:28 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::dafa:d38d:8ac1:e843]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::dafa:d38d:8ac1:e843%6]) with mapi id 15.20.9253.011; Fri, 24 Oct 2025
 07:32:28 +0000
Message-ID: <64f9c328-8ec5-4f57-9644-40de45fd248a@intel.com>
Date: Fri, 24 Oct 2025 13:02:22 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 23/25] drm/i915/display: Aux Enable and Display powerwell
 timeouts
To: Suraj Kandpal <suraj.kandpal@intel.com>, <intel-xe@lists.freedesktop.org>, 
 <intel-gfx@lists.freedesktop.org>
CC: <ankit.k.nautiyal@intel.com>, <uma.shankar@intel.com>,
 <gustavo.sousa@intel.com>, <lucas.demarchi@intel.com>
References: <20251015040817.3431297-1-suraj.kandpal@intel.com>
 <20251015040817.3431297-24-suraj.kandpal@intel.com>
Content-Language: en-US
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
In-Reply-To: <20251015040817.3431297-24-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5PR01CA0078.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:1ad::11) To IA0PR11MB7307.namprd11.prod.outlook.com
 (2603:10b6:208:437::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA0PR11MB7307:EE_|CY8PR11MB7243:EE_
X-MS-Office365-Filtering-Correlation-Id: c224dcef-99d7-4d4b-b43a-08de12cf7bb4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?eEtubGRYT3JIVFhTRmV6WXEwYlZSWDE0T01uSkFOSmxneWhWcFhlOTRxTVF6?=
 =?utf-8?B?NWtWa210THppZXNqWW1BZEYvWDg5OG1IN3djdlpJRGRWcS9XOGl4YWdSQ3M3?=
 =?utf-8?B?VThLaWY0RC9teUU2a2xtTHVhQUZyclNNN0YvUEZOamlIdUtHcnYzOGYwQk1n?=
 =?utf-8?B?Qis4ZDFDcUY5S0lhTERwY2xDRU1DZmZyUStIdjBpdzFEWnlXbzhKL1BMaEdp?=
 =?utf-8?B?K3NheXJla1BJY3Y0QjdxQlpkSGt1RlhDZDl4YVpmQ0kyeHk4ZVVsMGVZaWdH?=
 =?utf-8?B?ZmNUUlljZVI4SzBRNGNBSU1hcDNUUW8ybGRhUTc1bzQ5U2hyYjVKejF2UGRW?=
 =?utf-8?B?Rmt1RGFmOTVsbUVxUXRROXBMT3hCekVBU0dIbFJyUm4xL0Z3MEdEdm4xWit0?=
 =?utf-8?B?dkFsS3FTN3ZiRHJqRGQxd2x3aEovVUR1WldkYVNhUXRZVkRoVHplNTRzdFBD?=
 =?utf-8?B?L1IrS2pDMkFXSzBlRThENTQ1SzMvVnRNZm1sVURCNDV3Ti9RZS9nM1NKN0cx?=
 =?utf-8?B?SVY0RVJpcVF5M0Mzc2tyZ2gzdGk3bzhQaUZwdDJyeU1Fd2VmdnRTMkY2YU04?=
 =?utf-8?B?RFJ4cko2WEZFbWh3SEpXVC9IakZLNXVXQ2xMdWt1alZXMmpzK1M2Q2R3bWlk?=
 =?utf-8?B?b0NaUFJyakU1NzltWGluUm9sMDAzRnlKOXlFM2grUmZqQ2VZbHlNUW5GNTJr?=
 =?utf-8?B?RWpXSDBpbVc0OEFSOG5LbFBmbEkraDZKSG1LZGgzV0NZb0xJeFFLMnQyMmtC?=
 =?utf-8?B?UENtdVMvU1JLZEI1OUVTakJHZmovVmk2T25jNUQ0LzMxVE5zOUNrWUdJVFh4?=
 =?utf-8?B?V1BRZXZucnNoclNOcEFPb1NXQ1dvVkJTeUpuT3pCOTByYWI5bmZHVHd0WkNQ?=
 =?utf-8?B?R2U4SjVib3NKbVpQR2k2UHI4VG43ZytmdnUxR1RiTVJxdzIxK0hEYlJDNFVn?=
 =?utf-8?B?UFYrMElOMjRKZUwxU25xTXdXM1JSTFM3WUdTSlBYb3dRYUQ1TVY1cGRiSVpY?=
 =?utf-8?B?YzZ5YzQzcVhWNVVTZVIwWGh4VXBhOGpqdUw5TCtrbVpBdVNmVlYxNzdPRGo5?=
 =?utf-8?B?R0g4Z1J0eVVFb3ZHdVYwRHp4K3pBY0IwMHl0NkFGaTFXeVFIL0pxOUxQSXF4?=
 =?utf-8?B?THFpL3hoMnB2U1BxUmw3dnRTS3ppOWtTSUlhaEQvT2lROHVtZEIvMUJSMERq?=
 =?utf-8?B?QVErVTl3dEx5RmJGcGVjNUFSRHFoNWpCK0JsNWxoYzhQd0JucHFmQkZKUTBQ?=
 =?utf-8?B?OUladG9aZldhclVsTDBHTmlrWHlsdlBSaFVJbENjRTgvVVUxcENPNVIreUdp?=
 =?utf-8?B?cVpWSTc0ZHB5cmlpMG1ZSElienRnTGZHOUpVZXZhbXJZeVhsY3pGTXlGazBa?=
 =?utf-8?B?UzVhVzdVRVNXMlJVaHlPWTNOdlFCUmFzbk8zT1FFcXpid0xEQ3dzQWZJL0ds?=
 =?utf-8?B?ZkdkYVlDMDVtUm9rNGVnY3c0MS92VDh5ZW5TUjJ4N3JiTXpDc1crSVdONDQ1?=
 =?utf-8?B?bXpQbmE4WklwS2srakQyRCtmUFkvTXltS1BuN3RVSGdkR2JrTm1mZzVIUll2?=
 =?utf-8?B?YUlIRVFZYXk1SlRKMngwUHJySVhFQjI3R2w2MGRmbnI0ZkNQVUtiRXM1b3Zy?=
 =?utf-8?B?Zndja2JyTW00T3ZIejNmM0xzeGZZc3ZGaUdGTUFCamZQbHhselNMdVBMNHNS?=
 =?utf-8?B?VjRZcmlNdkZnVTBab1hmS1NxSXdyL1lza0gxOEVxMHhMeEdnZFNMaTlmMngx?=
 =?utf-8?B?bUgydW03bGNZYmJjUGlZb3hTT2hMMS91QWhYdGN2SUkzTVh1bS83NlhHTXpM?=
 =?utf-8?B?a0ZTRFNhWUZFaW9GN2VvZ3EzM3djSmlOSzRUYXMvRG9QcDBqM3djc1pjK1N5?=
 =?utf-8?B?L2dPcmxvT2pWNk1NQ1hxSmo0YzY2N1BQT0ZvU2RROWxWT0pNRThqRTlydTJt?=
 =?utf-8?Q?EwS7Q+qp89bZ9X1Kfk3dELAttGilAYcU?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZU4yeFhVYVJVWmdYTFhTRVJLYlRJYklQUXJOa3R2dHM1bWZZOVlzeHR2K0hz?=
 =?utf-8?B?NDFTM05sY3RHUEEvK29wM0lJWnpMRVlYUkh0Y1VnbGtDdnlaZU9qdGtHb2dW?=
 =?utf-8?B?ZWFIdkNxRmhNUytpNzVqNjdsa1paTncyNFkzenBrTnhmamwyTFYrT1VESmlz?=
 =?utf-8?B?aVRLdVI4dlhVcUdkQ0hOeXZSb0NIbUJFMm5kdE9FRWZjOXQ5dmpTZlQrYXQ4?=
 =?utf-8?B?alRwWUFLdjRyUHpaZ1p3cm5SWVNLOFRBaHJ2c2hLano2Q0RhM3RFZXgvS0xT?=
 =?utf-8?B?bmQ1eE0vcldjMVFDWkFHbTlYUEY4cXNBVU5pVSs5RkpSb3JvWG54TEJvOThD?=
 =?utf-8?B?M1N5WkNQZ0d3SjJKSkJqOE1vRSt2TzczTzdDdE81QlJZbjA4dHJEaEpNb3hn?=
 =?utf-8?B?aDNnMlBKaUlvRmRmeXRVSjBGRGNZVGE1dlh3eTRTR0FmdWtxcDIrWSs2T1Vu?=
 =?utf-8?B?cFc1dzgyTnAvd01ScE9NZkNxY05JczBEaE5adU04UnBYSFZQVmRLT2ZHaGc4?=
 =?utf-8?B?ZUROaEdoODNmOFdZazNYTUtoL2YvUU9SVk1JL0s4NEw3Z0ZFTC9IU3dMUFMr?=
 =?utf-8?B?SHBxWlBiTWhxeU5nUnZxREwrQWdLUWVzTkNuZnlaSEU5aEdYKzBNRFg4YlBV?=
 =?utf-8?B?cTR3U0FOVk5YbW1FYVE1aU9FNFJjRktCZXM1clFPaWRoVlNpaERTRzFYcThj?=
 =?utf-8?B?OXUwVGNSRVljZ2gxUnRpVVpuR0NXbXlPQUZkamVhTGtPdVlrYlBKVjUyVkJx?=
 =?utf-8?B?Y0k3eFZFdzlQRXNhdlAvcDROMG4rekVQNmErL2xxTnphYmhDNmhleWtFci9u?=
 =?utf-8?B?emVpQjhQT0xjSXFCUEY3emI1TkZrUnJDSk9rZDc1QW1zWGxxMnI5MWlKemVK?=
 =?utf-8?B?MGxHVXBNMVpHcEplcVZqYk4ydXBXMEhGMGQyVkZlRmRhallZd1ZyNXRuaVhY?=
 =?utf-8?B?ekpJYzAwZ3pBdlJBZUVrcTVuT1czbjBHYk1IQ0dMR1Z0SVFzQ0JDWTQ4bHRr?=
 =?utf-8?B?WDZyS0FQRzVvZWpoUGR1ekc2Q2g5czgyVThrcElBQlgwTXJqS1JsdW9aWjNU?=
 =?utf-8?B?M1RMQ2Q1dDY1V1dEaEkzeEFXYWd4Ym9xUHNjV3FsMytNdkwySTJnY3ZmMTBj?=
 =?utf-8?B?T3hxQmxxSXJidDZMM3pvQk9uNUpBNm1YU1pEYmNlQXI4Mkp1elJWZVlzS1Fy?=
 =?utf-8?B?aURWaVRxRW5rRGRXRFEvWnEra3FyQXlubXF4TWVvbVlYUklrNkVmMi94VDZO?=
 =?utf-8?B?UFRoRERNa0UzZlRkODhCN1hxQ0ZlNmZrc1JSZW1Ja1NLenY5RUNoUHZ0bGph?=
 =?utf-8?B?dEhpaHprM1Y5SVBueVpsTVZOOVRHQWdVVjc0V2tMcXNQZVg3cS9GbjB2dXJU?=
 =?utf-8?B?M3hCWnM3ang1SkhNS2ZBMkFjTkVxUDlBSFhsaE11cGVyeDZLZm9NaGxTWGNo?=
 =?utf-8?B?SmVobkJrWlNhSGVuUDh6MGpmdk1yK2M1Q2h4aUphSWlTTmhYZ2lZZFkzODFX?=
 =?utf-8?B?bnpoSTV3MGZIcXNiZVRuQXdTcU9qdlh6RUlmbXZFTlMyV3g5S1JsdzJsSDZj?=
 =?utf-8?B?OGVhanFFQmpJTGJZbWRudTNTVHB3RUtxR29ZS2VGQ2VlWWpJaUVYdFhyV1RH?=
 =?utf-8?B?OHpieDgrZGpPODlPNys0OFF0QmtnTEszemJkZDZncUtSWXd1SGx0SW1SdW9F?=
 =?utf-8?B?am14YWJKY1lrUmNrWVBzV1lnZzF5VTJOaVhxdGppR2pwRHhxWDJMNjZGcldz?=
 =?utf-8?B?SWtkTm5MRURhdmxYcVhCSE1kWGJqYVVFbktlVnhQK1lGTTJqb0RwTGhvaHM4?=
 =?utf-8?B?UjBjWHZRMDFETGNTdEc1S2U0dENCMjlnMjN0OGY0Mk9IQ1lDZVo0Tmp3VWIw?=
 =?utf-8?B?MXp3NDE0Q2NNZWFJYVkyTnJpUm50VGpmMWNnWjUzODlJdWNKUW5EMWlvMkkw?=
 =?utf-8?B?MGdSR2pSQ1JCNGMzSTcvTU42U2pzdVJLNDZYNW1JRjQvNXI0Sm1udzdFRjR3?=
 =?utf-8?B?Y3M1OHppUFZoTkZNZ0lHTmd5ekJxT3IzSHlIT1VycktaeUQ3SVNsVHAvb3JY?=
 =?utf-8?B?aGhKSzViMXNYVkxiY21mUmhHZjVwKzNESnROa3RzU2JQbzdoT0xUamd0c2lt?=
 =?utf-8?B?VWUyYWtUTW1HaEs2Z2wyaWZTMDd0SDRvbzRWUEVJUmVUS2NveUU3cGZJVlBB?=
 =?utf-8?B?TkE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c224dcef-99d7-4d4b-b43a-08de12cf7bb4
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Oct 2025 07:32:28.0146 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: bNzUArTSiAfsVMaZKMRuLnwKZlYYlLBvkzE5Hlw1Re0rIBeBmUd57slv16Tcn7qIEdAjxzyTc8sOV/hkKwvr3w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7243
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


On 15-10-2025 09:38, Suraj Kandpal wrote:
>  From XE3P we can now poll if the AUX power is up or down define the
> timeouts for each respectively.
>
> Bspec: 68967
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>   .../i915/display/intel_display_power_well.c   | 23 +++++++++++++++++--
>   1 file changed, 21 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> index 5e88b930f5aa..1fc2e9450f03 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> @@ -1864,18 +1864,37 @@ static void xelpdp_aux_power_well_enable(struct intel_display *display,
>   	 * expected to just wait a fixed 600us after raising the request
>   	 * bit.
>   	 */
> -	usleep_range(600, 1200);
> +

Un-necessary blank line and place the comment properly!

Thanks and Regards,
Arun R Murthy
-------------------

> +	if (DISPLAY_VER(display) >= 35) {
> +		if (intel_de_wait_for_set(display, XELPDP_DP_AUX_CH_CTL(display, aux_ch),
> +					  XELPDP_DP_AUX_CH_CTL_POWER_STATUS, 2))
> +			drm_warn(display->drm,
> +				 "Timeout waiting for PHY %c AUX channel power to be up\n",
> +				 phy_name(phy));
> +	} else {
> +		usleep_range(600, 1200);
> +	}
>   }
>   
>   static void xelpdp_aux_power_well_disable(struct intel_display *display,
>   					  struct i915_power_well *power_well)
>   {
>   	enum aux_ch aux_ch = i915_power_well_instance(power_well)->xelpdp.aux_ch;
> +	enum phy phy = icl_aux_pw_to_phy(display, power_well);
>   
>   	intel_de_rmw(display, XELPDP_DP_AUX_CH_CTL(display, aux_ch),
>   		     XELPDP_DP_AUX_CH_CTL_POWER_REQUEST,
>   		     0);
> -	usleep_range(10, 30);
> +
> +	if (DISPLAY_VER(display) >= 35) {
> +		if (intel_de_wait_for_clear(display, XELPDP_DP_AUX_CH_CTL(display, aux_ch),
> +					    XELPDP_DP_AUX_CH_CTL_POWER_STATUS, 1))
> +			drm_warn(display->drm,
> +				 "Timeout waiting for PHY %c AUX channel to powerdown\n",
> +				 phy_name(phy));
> +	} else {
> +		usleep_range(10, 30);
> +	}
>   }
>   
>   static bool xelpdp_aux_power_well_enabled(struct intel_display *display,
