Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CD862B83D44
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Sep 2025 11:39:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6674010E103;
	Thu, 18 Sep 2025 09:39:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NvlkngzB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4728E10E103;
 Thu, 18 Sep 2025 09:39:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758188398; x=1789724398;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=uim+rTJEmg9e7qE9p0w9NRre8jEWQB533tyrHEyoy1o=;
 b=NvlkngzBJlquS+nXhIOHQYXQUxPHvPatapg0iDBzR49JokbvwcnMJ9Ds
 Z4scRQVVONLU/bvK0MH0fFBpwIXJImtva7wyRiRKdb48TXqJ7UgJBvoBb
 e+Srh590f7ee2bWkb9NB0GvgaeAaXTFhR/jT845j4fOu2UxUgdQ03MsW9
 4HdWux/OM2CWUrVPSAkHtBfYTf+5XTvFMMtx32MSzm1sAmSDTbdAokC8x
 aJTz7sP9+gMlZYd1scUFPpc1ZEDZB2ulEGWy8VUDOnobMd3Slj9SQvo4d
 GdQ5QOTlls5I/GAPCJv1pEh3+GEn7DkMfDC3wDMZR+HyYkIcJf3ZU6MCa g==;
X-CSE-ConnectionGUID: cRBhtYOlTwyWFXO69A+Hvg==
X-CSE-MsgGUID: 8JgQ6dOyS/ihs0RcXypgEg==
X-IronPort-AV: E=McAfee;i="6800,10657,11556"; a="70764839"
X-IronPort-AV: E=Sophos;i="6.18,274,1751266800"; d="scan'208";a="70764839"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2025 02:39:57 -0700
X-CSE-ConnectionGUID: xn3UQ4NvQqCU8J+bPht24Q==
X-CSE-MsgGUID: HeixrnlcRYuaWkbk1fQJVQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,274,1751266800"; d="scan'208";a="179491490"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2025 02:39:57 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Thu, 18 Sep 2025 02:39:55 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Thu, 18 Sep 2025 02:39:55 -0700
Received: from CO1PR03CU002.outbound.protection.outlook.com (52.101.46.21) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Thu, 18 Sep 2025 02:39:55 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=q0fi2RAzDRLzcmK6SCsog1SnybqkIGJjMNArvqB8hcjTgJyOZh7aYStwkFgl4dHh8WFEr7y45uHpgkwSVeFpZyLxyH8yn+JKgDBkcnMw3gnNxkxEgpRY+zM/A8SVzbpn+El7mFeCtHI0+/ACMy5J5Xp3+kz4P1ZjYd0iqnrRwu98YD/26ASu0JNbbZiv7jnAuERfO7TqA+md1MhcI5gWIMRNRzTzBM9Jqu5M/v5f4H+IV7HcBaGWcCooV+BnGukZDMnDk7nylBN450Hma9HAcOzLy/tZDuXnP17Ld4fOY0NpCHQp5uIaIU77T8sAiOW9s5AMDGPWAigQb4sUhy2ebw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=d30J08432Is5Xayr0lnqOVJXTJxDMWq2rMj9aHREgFg=;
 b=WjIYv4MPoir0SgiOexmgDK49wsFJ2loaCLAfDGi4Nc0ZdS+/2ePViXbPM8pMbN0QboUYO+xbMZZqC/X97du6o8NwNnmi6OkNiAAVp7X0ougtVmjbTpahU92agLYvcBjcMee0fzV0/NrnH9x5vlGDF9WC+b9X+g8Ire4xja7XS1AUkmlupZ9JCCItq6OFD5Pu5jHnkHd5OszsJxkG4ZEIOIEzFou6UL4QOYL7FmJMTmjq8TU0CU7pDHsYiVJCp3f9IMxap2yl35fAkaOgAnXMr7Mj8tEZWuCvNMK13F3/UoZpwUV1oKI5YB190+cByG1RaumjTKtYfLnvYgkmDvgjQg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by DM4PR11MB5995.namprd11.prod.outlook.com (2603:10b6:8:5e::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9137.13; Thu, 18 Sep
 2025 09:39:53 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%2]) with mapi id 15.20.9115.020; Thu, 18 Sep 2025
 09:39:53 +0000
Message-ID: <5c921892-9bc6-4326-a983-6302176818bb@intel.com>
Date: Thu, 18 Sep 2025 15:09:46 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/5] drm/i915/vrr: Extract helpers to convert between
 guardband and pipeline_full values
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: <intel-xe@lists.freedesktop.org>
References: <20250917203446.14374-1-ville.syrjala@linux.intel.com>
 <20250917203446.14374-2-ville.syrjala@linux.intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20250917203446.14374-2-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA1PR01CA0160.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:71::30) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|DM4PR11MB5995:EE_
X-MS-Office365-Filtering-Correlation-Id: 1de7e164-aa15-4d68-ef6c-08ddf697518b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ZldxS3NPa0kyUm9hWHh5TW5vZkRGTDNUVjlFVU5LNUtnazNRbFFGQWl1b3Ez?=
 =?utf-8?B?MDVpb3B3K29JSWYxRlU0Nmt6K2hXUzZoL0JLclhLMDhYVTZ0bG00S2tXQ3Iv?=
 =?utf-8?B?UWc3cHZnd2RjVlN1eU40MUZSYjIrQmxqeGgyTXNrQms2Sm9nQXVnNG1HOHU0?=
 =?utf-8?B?STFYbkJoZ0tXeGdqWDQ0TEpnN2d4WGtlbmVmNWI2WXQwY1dpcGk5cm5mMDlZ?=
 =?utf-8?B?d1VnUjROK0JqTUVnbTZtMmpXLzZxckRmMEtsWG1xK1llcW8zdmVqZVgxNWc4?=
 =?utf-8?B?VkVuZ2h6TmZHODVubHlTaklGNG1xY01BSm1aNGNydC9YTFZBaDkzQ3RleUFL?=
 =?utf-8?B?S1VFcXcrbnFsM0RkNzhJUGVVOXNLZnFjeUxIODd3VklYM24xSTBkMUJOM0lx?=
 =?utf-8?B?TUFEOEdtYlVGT0ZHNUZuWjRiT09sZFZIUG1HYVVGUGhvWjBwdGZFbWNuOUJt?=
 =?utf-8?B?UmpTQzdMVU1kT2liWTRCSys5aTJBZDhsVmtLcG5sdnhjMGtESDRWN1dMVnhB?=
 =?utf-8?B?NmpRUkxUWnJYbWZUazQvaTRKc1pPMWV4cW55NXE2U01PSjZxbHlHSTZZdUVs?=
 =?utf-8?B?cGQ1aExUd1Y3dWp5bm81MVdWN3VkVFEwSVNCcU00aEpFZ0pCZzUraW9lU0g3?=
 =?utf-8?B?R1Fla3pCWWVjQW5BNWN4eFZsWFEybSsrUWx5Snh5blVOZmNJcklGQkRDdGg2?=
 =?utf-8?B?OTI5MGpwWjRKWS9UOXBEQlFva3N1WnMrZHgvbk11djNsY3hYNG1DUG1CK0hL?=
 =?utf-8?B?eG5FM3A2bTRQbDgvcHdPTnBUODVVUXdYdEIrRkpKMnlrY2daUkJaWTlveXE1?=
 =?utf-8?B?NGVlaWtGd1ZKRkN5ZEZKQ1NLYWxXeUFFb3ZvYlFQV2xtZUhWU1NqVHZLRnc4?=
 =?utf-8?B?VmMyTFpoOENTWkdHRUNhWktKbCtvZE1VTkp4VDZwWldIVFpPbHh2aUJUZDRU?=
 =?utf-8?B?bEN4OFdWbGlDQ0tyNlZuK2F1N1J6dk5lNmRoR3NMLzVNQ1ZWS0MyMTVUUUdN?=
 =?utf-8?B?clk5YVUzdndlWWFYL3pUZGphdGYxS0N5azk2Z0xKUEhVcmRoUE8waXI1SjBL?=
 =?utf-8?B?dEpIS2JTK3pjQVZoaXVPczlrNy8vMmpuQ21ibVFBRGNkQllaM1pVTW5hNzRE?=
 =?utf-8?B?djY3OXFNeTViaTdzVVdTaVNtRktMSkNrQ04zV2IyblJlcGI3eUFCclNkQzY1?=
 =?utf-8?B?ZVhibEt0VXVtREJVdHhrSjg5SGFXSVdmUFZkWHdGWldUUjRoTjAzZVVlWnRM?=
 =?utf-8?B?N05LbElZc2k5TmJMaHRYVkI2WnFuUWs4SC9TUDBkNjhDL0JhSzlKOXA0cnBS?=
 =?utf-8?B?Zy82enh6aGlwZ2NGcjRNMnRlcC9UZk5wREcvQUZJMER1YjZpUGVZcFp2dnJ4?=
 =?utf-8?B?OGkrUWNzalFNZGRHRmQ4UGJUVUhsaUc4UnRZUng1bldOVVVEeXl4RWprL1l3?=
 =?utf-8?B?Tit5c09QdmZ6a1puelEzdUxmMFg1T0NEZWpWZUFvM1hzYkhZalIzVFp5U3A2?=
 =?utf-8?B?Qkw5amk0Y1ZuWGEreDFaMG12YmNVcmNYc0FwN1JzK0IrdzlQYmVFeldiK3Jx?=
 =?utf-8?B?b1VKN1ZKWkdtaXQ5aXRYNGdJTlJpL29iSjVBUFVXMkdDT0ZtQzBRNFQ4QzFs?=
 =?utf-8?B?NC8vdlMwTVVkNCtHaHBEOW11a0xJeHdhT3NGWEJRUVhMWWdUVjg4QTVVMzdn?=
 =?utf-8?B?K0ZPZUs2M3dhYnJidGRHcnlDN09QT0QvOEJRSk0rVFJGQ1p1TjdvRDhMVXBI?=
 =?utf-8?B?Ly84dVN0QjRlWiszdEx1SjhMajBWQ2lqM1pIeXB4SWg5ZWp0VDRia1dQWmwv?=
 =?utf-8?B?b0VxU0ZiblpUQ2YxVW8yQTdDSlkyVWFKZVNHdXhmWW5nT3hJaHdFbkJyY1BG?=
 =?utf-8?B?bUkxRkhSS3RocFB3TWMvcVBoVXNWRFJZRExSV2FNY1RrbXpuVzRRakpnL1dj?=
 =?utf-8?Q?RcQSiwhicAo=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?M2dzQVhTcy9iUnFvOEdya0dIQWhtR2VleSt4QVRKM2RIdWI1eDF1bSt3YXdo?=
 =?utf-8?B?UHg0L2t5WTE1NTNlM0ZaeFgzbVlmVEUrRWJCUEFVM3V4aVpnQkpxVTE2cFJZ?=
 =?utf-8?B?VkJKNHFXVWJEVnA0L2FCTkkvN1IvaVZ1ZndOenA3YXM0L3FBT1pydXFLeEZu?=
 =?utf-8?B?MTl4TXVPM21NeXh0RkRiNGh4a1EvUW9kNUlRZzlYeXlaTWJiYmY5RHpCK0tF?=
 =?utf-8?B?TDdueEJVMXA1aEpNRGJnekFWR1EweG54R0dKbnV2a2h0WEh1OHJBTmtRSEVR?=
 =?utf-8?B?SWdmakVWK0o2WnhiamhoNVIySVhXYWU1QmdvK0JNcnlhZ1ExWTFtTU5zSVR0?=
 =?utf-8?B?QW1CeVNQOEJyamhKSHlVSEIxNEhMYUhiT3dmSVMyNUVnc1N6aG1LQ0M3aElp?=
 =?utf-8?B?QmNXZk81c2k4SHdOVUdlRWJKcnJWVjU1RThaVklxZW10N2RsQVg3cnJ6ajNI?=
 =?utf-8?B?eE53T1phdGFIczhvUDY4RnRPNHRDODVhMy9HVGJJbTlpQ1VZS3oyb2lRcHNp?=
 =?utf-8?B?bUNlalRjbGo2Q204eGdDbERRZDliczJENHdaRWlqWkJyZ1lDRzdjUTU4WXFO?=
 =?utf-8?B?OGpja2dRUm93NGJnMzFiNVpLeVV4dFptREFaWWNMbDhESzRwcjQ3VFNNT2VK?=
 =?utf-8?B?b3JNTE5ISkpXUTBTejMwdTAvbzRLM1Q0YjBmQ25vdDluNFUycXdTUnRqZG81?=
 =?utf-8?B?VXlWY2w4ZVcwZVdLU0ZoY29DcTd2MG1nVXcrMmJCMk1qcy9zVGgwdVZjanR0?=
 =?utf-8?B?ZjdlWDA4ZkM0dnE2a1dJd0xNeXYxNFljeUtPcVRJZEZ2VmU0YjZQSVNKNnc4?=
 =?utf-8?B?M3g2eHpCVzl2WWUwUDVEQ0FydGF4L1FuNTZid1hUNmlEL3JrUmt1TFAwTzI2?=
 =?utf-8?B?cG03Zm54QUo3Nkg5VTl2dTQ1YlphcnVIQzFPNmNQV3h0OFFZbEV1ZXE3Y3J3?=
 =?utf-8?B?bzlhSUx1aUVaSHdQWUdHdWFHNmxXdU5SbkpLeGg5bHkwNlVnOExRVGNwSVA2?=
 =?utf-8?B?N0lUSUNValRHSGFtUDBXdU5qNjRXQU41QjU3Q3grTUppc1owWFd1VDM5U2FY?=
 =?utf-8?B?NnNYNWw2NDFlVmhXMXk3SnNmZklpMGs4T0c1VmFjSEoyaTV4cFFMQmRmaHRs?=
 =?utf-8?B?QW1IVGluSnQyb3gvd3IzVUl3a1dSNmFYaStnaFUraXRYRlF4ZlBTMEVPRGtu?=
 =?utf-8?B?TS82cG5zWUsyWjRRVUVMTVBPZk9oRGdpMkJWNE9xV0FOaGFINnE5QVM2WWJt?=
 =?utf-8?B?UzhNSStuNVphaWpUTTJRa3FWVjk3RUZqQ2l5aVZ3UVlIU1lzZm82TmJieGdW?=
 =?utf-8?B?Y201T21PZWtWUzlpM2x1RTZpUkJ2QjkxMXBsR3VQb0RNdWFuMzd0MktsQmNO?=
 =?utf-8?B?ZjFuY1NYNFoyVkJRcjdhOWJkVlc3SjZudFY4amRZaWxKRVVmYndWQllHMTJl?=
 =?utf-8?B?RVVNMkN2czdlRm05d1g5dExwaU5iRXdBR2RqNm8xUVoxcDlpL014RVdtVGR6?=
 =?utf-8?B?dHQ1a3ZmS2hVRStMcm56d1EwVUNSdUFNSk8xYmZibFBtTEd1dTh2VjlRMFZu?=
 =?utf-8?B?SzVnYTREYnF5OU1yRGg2dHRjbkhIMUYxcjNlVGNZc3FqaGdJZEVQTVIrRUw0?=
 =?utf-8?B?ZHRUUlU1MlFoV3Q1TnJVd2w4ejI5VUluNm5RVTROY3IvdEpjWmJlYytRcG9T?=
 =?utf-8?B?Q2JETWZiZGdaZk9Bdk42SVF3YlBEb29BNnFjS1Awdi9ickIzazgrUjBKWUlo?=
 =?utf-8?B?SzMxT3FxREN5ZjRPRXc2aUNlK0lhV2NWMThyelhnN2EzNGR4d3ZKc2lEQ0FY?=
 =?utf-8?B?ZlQ2ODlyZTc5R1pyWE5DRmFOODRCTXdqZjlmT2ExZGptSGJlMEhrdlZIcGw4?=
 =?utf-8?B?T01LTWV0ak9MdzR0NmZ5WHJPWlhYTmN6TlVLUlRlM3U4YnN2NGd0MVJEQ25Z?=
 =?utf-8?B?T2J1ZFNtd0c5YjJXc2YyVmxxNjFtbUFYNGhHY2htNmU3Y3RuanVZQk1KRmVr?=
 =?utf-8?B?ZldrS3MxUUxtUEkzTmE3bmJBZWZobnVweHdHVFMxMGZRR0kxNnBLaTdxSTdJ?=
 =?utf-8?B?cTd5TWw5WGRpbkRINXJKTk5DMExKU1dBVTNiTHJHSXFWSUdNVEdjaXhoRTI5?=
 =?utf-8?B?RFlHcGVXTk9QdkVBNjRzR2hkckRDd2dXSHIwZG11TENvQ1VsQTVhWG1nYk9Q?=
 =?utf-8?B?c0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1de7e164-aa15-4d68-ef6c-08ddf697518b
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Sep 2025 09:39:53.4468 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: XNjVHHhuzwEyZv10SJud5keb7yDlFmuZbw3l4JDXb4Nv7naRMQ6s5DfaYiVVAksQCwwkp6qRd9gVZfdO+7NhxZ/HIE1t1KDo1FZDbgkTM40=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5995
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


On 9/18/2025 2:04 AM, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>
> I'd like to move towards a world where we can't more or less
> pretend that the ICl/TGL VRR hardware works the same way as
> ADL+. To that end extract some helpers to convert between
> the guardband and pipeline_full representations.
>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Thanks for this, it will really help to just work with guardband instead 
of pipeline_full and all.

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


> ---
>   drivers/gpu/drm/i915/display/intel_vrr.c | 28 ++++++++++++++++++------
>   1 file changed, 21 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index 3eed37f271b0..5fee85b0bc99 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -119,6 +119,20 @@ static int intel_vrr_vmin_flipline(const struct intel_crtc_state *crtc_state)
>   	return crtc_state->vrr.vmin + intel_vrr_flipline_offset(display);
>   }
>   
> +static int intel_vrr_guardband_to_pipeline_full(const struct intel_crtc_state *crtc_state,
> +						int guardband)
> +{
> +	/* hardware imposes one extra scanline somewhere */
> +	return guardband - crtc_state->framestart_delay - 1;
> +}
> +
> +static int intel_vrr_pipeline_full_to_guardband(const struct intel_crtc_state *crtc_state,
> +						int pipeline_full)
> +{
> +	/* hardware imposes one extra scanline somewhere */
> +	return pipeline_full + crtc_state->framestart_delay + 1;
> +}
> +
>   /*
>    * Without VRR registers get latched at:
>    *  vblank_start
> @@ -142,8 +156,8 @@ static int intel_vrr_vblank_exit_length(const struct intel_crtc_state *crtc_stat
>   	if (DISPLAY_VER(display) >= 13)
>   		return crtc_state->vrr.guardband;
>   	else
> -		/* hardware imposes one extra scanline somewhere */
> -		return crtc_state->vrr.pipeline_full + crtc_state->framestart_delay + 1;
> +		return intel_vrr_pipeline_full_to_guardband(crtc_state,
> +							    crtc_state->vrr.pipeline_full);
>   }
>   
>   int intel_vrr_vmin_vtotal(const struct intel_crtc_state *crtc_state)
> @@ -417,18 +431,18 @@ void intel_vrr_compute_config_late(struct intel_crtc_state *crtc_state)
>   {
>   	struct intel_display *display = to_intel_display(crtc_state);
>   	const struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
> +	int guardband;
>   
>   	if (!intel_vrr_possible(crtc_state))
>   		return;
>   
> +	guardband = crtc_state->vrr.vmin - adjusted_mode->crtc_vblank_start;
> +
>   	if (DISPLAY_VER(display) >= 13) {
> -		crtc_state->vrr.guardband =
> -			crtc_state->vrr.vmin - adjusted_mode->crtc_vblank_start;
> +		crtc_state->vrr.guardband = guardband;
>   	} else {
> -		/* hardware imposes one extra scanline somewhere */
>   		crtc_state->vrr.pipeline_full =
> -			min(255, crtc_state->vrr.vmin - adjusted_mode->crtc_vblank_start -
> -			    crtc_state->framestart_delay - 1);
> +			min(255, intel_vrr_guardband_to_pipeline_full(crtc_state, guardband));
>   
>   		/*
>   		 * vmin/vmax/flipline also need to be adjusted by
