Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C448093F912
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Jul 2024 17:07:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 56F6B10E406;
	Mon, 29 Jul 2024 15:07:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iX3uy8V4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 564E210E406
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Jul 2024 15:07:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722265623; x=1753801623;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=XaujMtscOyGGT1WgOqRVQM8WRMnWOAoTwcxfKdN+1/w=;
 b=iX3uy8V4y5M7OXdpYXVQFkyRf037QLBbwmniZZ1AZhzuux1WfNtL/H6B
 w8S29a6Ydtd9Movptzgplc08UNBYZxojexmZ0Mpsh3ON05L4LwniaR7YY
 PH11Xp6gsojpLnj6zXEpoPVhCTaQ236aX7ZKa/DinD1ImPkDXi9Jnj4kR
 3a8Zia4cJxDbV3oN5TA1t+GlcFJKvxQ9lkCUDDCEcysusEWU22pUZuqB2
 g1NuKe6ok68OMQD9nAt+rJ5xCIzOiNiD896X7IDoPBw+4YJhPpmAL7Q5z
 TbeLuT+dR3v5Kn+wXBhHJYSIRKbYhUAoXqEJtIAAOcN+aVhg0evV89ZXh g==;
X-CSE-ConnectionGUID: d83Ogem+QWmhC1u0JAkrWA==
X-CSE-MsgGUID: bWL9pwjNRfa0pGCb8WdNVw==
X-IronPort-AV: E=McAfee;i="6700,10204,11148"; a="23819888"
X-IronPort-AV: E=Sophos;i="6.09,246,1716274800"; d="scan'208";a="23819888"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2024 08:07:03 -0700
X-CSE-ConnectionGUID: +3FidT1fS0+z/IpL2zl/BQ==
X-CSE-MsgGUID: S/HnrFYEQMiU34XKQk8xKg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,246,1716274800"; d="scan'208";a="58583604"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 Jul 2024 08:07:02 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 29 Jul 2024 08:07:02 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 29 Jul 2024 08:07:01 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 29 Jul 2024 08:07:01 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.44) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 29 Jul 2024 08:07:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=aHbVt3G7TB27M8jQlRxD8kVc17/cA868rkzsAZd1gnmQOkAajgUQyGY12ZZSW4MTMgZz3bXEZ1Ck8OP73BETGEa/MfLaDeA031/zIYEWYl8M7+iwfv/31/ZrRZ0/56c/s/kXqjfoYwkVw+EbV8wlHuPVVvaEhGU2FjUOMxl8dBt4jBH6V2HlE/LXB8+uMyxRrJEwFGSP4/Ti+7mkgofMrCx6kmAtlsPh1CDpPiZ/N8mQmwCKSHqoQapiaPgie4LmtAZfeaNGyQVNSNKqi4sw17Bp0hpzbCfH3qPVEsErcCAO3G4+s9061zJ3L5mNfjZDD52bCJCAQ6ozlbTPDpBrAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Shz26+wYil7BMnuauTvVKbhMHk222YQc4oqJe7IwLAg=;
 b=MhumrHkKwjaiUyAQ9ERf9FCVRJuwiQpyztQS/BGCa5rihEA+LXpQ+bojEeAkhjzxeXl+e/+bg2BqMIbq+n1BZgAKtc4KElxCmcE1J9umnucMLk5NbikDMWWeJvTj7hfH24QKbbIWdJ4dTa2neDOXqd35Fbv4m4+/Fs1bf5ncW+voZGaBu1R65qA3J00mQTR10WKlL3kiLpSDspIVm7tj2jo7bYD+N9/GveNTo5zgS/DyHzvLcmdcZWiFxcAsL0GdRpLs56V/GMWF/IQ6Ilz3aWPxphL9RbqeNR8J2purEfMqb8lcVeshyoyFwl3okeMbQBtaWldU1XSlHzNIfp892Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by CO1PR11MB4851.namprd11.prod.outlook.com (2603:10b6:303:9b::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7807.28; Mon, 29 Jul
 2024 15:06:59 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%2]) with mapi id 15.20.7807.026; Mon, 29 Jul 2024
 15:06:59 +0000
Message-ID: <2a611196-930c-4d68-bea3-ce8c9f8a660f@intel.com>
Date: Mon, 29 Jul 2024 20:36:50 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] drm/i915/display: Call panel_fitting from pipe_config
To: Nemesa Garg <nemesa.garg@intel.com>, <intel-gfx@lists.freedesktop.org>
References: <20240726095357.1261804-1-nemesa.garg@intel.com>
 <20240726095357.1261804-3-nemesa.garg@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20240726095357.1261804-3-nemesa.garg@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA0PR01CA0111.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:11d::17) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|CO1PR11MB4851:EE_
X-MS-Office365-Filtering-Correlation-Id: a3342dec-3dd8-48aa-d3dc-08dcafe01834
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?NHMzeGJEZ3NrcFFHZE5qOWFVZXkvaFl6NENUakUwQ1lRSkFLeFZCdFI4aGhD?=
 =?utf-8?B?czY2Qk5QWlllRS8xOEtkOHJOVlRKMDd2QkdsQ25na1lNN0tsZTVxVytrQzJv?=
 =?utf-8?B?amlCMjhqNVJJS2I4bEVHZFQ0dkZ6V3BRbEhtSlcxRm5ERlFPMy9XNTg0NzNX?=
 =?utf-8?B?S0FySkZ3NFc1QmlUemwyTkVPcUtyUzhuVzZ6bytOVXdEMUpBcWJBUnZFcVVn?=
 =?utf-8?B?UVhZdzM1SXNtWUhUQnVrNUxkUm1pcXM1UHJTNHNBZlBudzFUOTdLN0h3OXRm?=
 =?utf-8?B?OXJ3Y0lCSmtYSG9NT1lRN2gyTFQ1MFAzVXZsdm56V3EycGFqTUpEYVB1ZGNH?=
 =?utf-8?B?R3FHLzY1MWM5N2hEdTdETzl4V1YzbU80d3BNN25QMHgzaXptdUd5MU9LSE1m?=
 =?utf-8?B?eU1EdWxYcTdnVFAzRkdnL2o3L0EyZE5CeHR4cUNGNUVaSGRBb0NHY0hQZU5O?=
 =?utf-8?B?UG1seXBaR3AxSFBFaVdTRGk0QXQ3SmtyVVFLVmZhUzNnNndJNURPOWtJS1Y3?=
 =?utf-8?B?ZU53UVB6eldCWTBJR0xzeXBIcEhpOGpzeUtVbkk3SGNEczF4a3h3TlRhOTBY?=
 =?utf-8?B?dTc2VWxCaEh6S0FYVnpwZ3dNdTFwYXRoMGZ3R1dyTU9BcTVpcW5mdVA5cE1n?=
 =?utf-8?B?ZW5nbkJJeUlUNWttSGhvSXEwQmpQOXA5ZFdyR3dsbi9YY1NDbVVIaTFhMlFZ?=
 =?utf-8?B?dmZoenY5M0o2QzB3c3VaVFl2bklFQUJueUs3ZDNVVTJTRlhNdE1uK1VWejhB?=
 =?utf-8?B?VEJEckpxd3hVR04zQnRsdDJBdi9RVU5iQnV2TTVhRHZiOStnNlpKOHc1OFpE?=
 =?utf-8?B?V0pEaW81QnB6UDYzSFkzVkhKbWQwNTZ6ZUJOb2g0Tko3UFZZQWp6bWc3TGx1?=
 =?utf-8?B?K3l1NnFmRVRNSDBhMWNrL0VSNk1Gc3RscEZzalUwNEFYbGFRLzV6QUZMSEpZ?=
 =?utf-8?B?YnZtRGIvMUZQeVYyeUNPT3E4a3VNSDlrS2lKc3czd3ArOTNqeitxOTl2NnlX?=
 =?utf-8?B?OVlYMnZvemgvb3ZnRnAxbVBjcVBJYWVxVUZ2aUtjQTRmSmp1NTBMemI2d1Zn?=
 =?utf-8?B?M0Jac2RTcEM3dHN2Rmc2bEVJWGhwakNQMGFaUHZ4OEswdUhaaFJOS3lJQWo0?=
 =?utf-8?B?MGpyZEVCYkVjVkZaRk1ycSs5UG81NjN4VzMzSTBiYWVvUTNRSWxaN0dXcUVJ?=
 =?utf-8?B?MEFObE5EbWZwZ3NPbUkxbzF4a3g5cjJEcFl4Y0Z5OCt4ek9ZcEtXcC9VU0ps?=
 =?utf-8?B?dkkxc00wUUtrbk5oS0pZUC80VjFFaGV1NndkUEI3RjBLZDJyYWVaczQyKzRp?=
 =?utf-8?B?UmF6YVF6dFpvSDVnMHQ0bzdacU11amhmODFSMEowNi9Db3JIK3g0dGdmdXlV?=
 =?utf-8?B?aXFPM2RwV1l4bk4zdmlVVHNpR2EzUzZvRW5xSEtIUFNPZ1lXZ2U1YWUyTkd1?=
 =?utf-8?B?UmV3MlVYUFp0TGFCcmlrMVpoNzRHTDFpQXlqRzFySFllSk03dkVMZnN4Yld5?=
 =?utf-8?B?c1JMVTVBTE02aEk0TjEyTlQ5NVJDR2U2SDU0UHM3OE9sWnQvdExicmdwbnhZ?=
 =?utf-8?B?YWQyUmlCdlRlYWJwWG50SmV3L1BMNTVucDc1SlMwOHBxQVVnOGlYRVk5YmNt?=
 =?utf-8?B?R2FrTWxVRndjTWNhM296NzlPNlQ4d3VzRTdZZDhrZXBxakJTNysvc1NLYkkr?=
 =?utf-8?B?L2JFTG8xQkRnZWkrSjZpRU1ZMVkxMXc1eXAzRlVsNTZtU1B6dDlkYldPbE1J?=
 =?utf-8?Q?21r097MbRBVRT30Ubw=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TXJmekRiQms5d0QrS09CeFlvQktDTzlFeVBsOWhsU2VtQzFiRmNXbCt3cUho?=
 =?utf-8?B?NUZ1aExueEZJb2RsNFh2VDhsL1YrNkIrQ3ZiNGx3NTl0ZTE1TjVRQWRHVWRh?=
 =?utf-8?B?OEVScTcxWFgrWXBNa2hrUFFDSDVaVm9hdTBiMWMvMmhXUSt2ZmlSOEE5SjVk?=
 =?utf-8?B?a1YzUlZUMERaRmJNMGo2a2s4UG5sUm1LOEhXcWcwbzZzUHRHcEJXOWlQRExO?=
 =?utf-8?B?REJYOVBSWEMwNFZLYXlod2lvdk83UUwvbkU4Z2I3UUczaURyTE8zR2xpNUxI?=
 =?utf-8?B?UnNDaUpsa0ZyMWcrcUowSTdKYXFKK2FaQm1LU2trTVpNYkxWNWQ4dEVDZDA1?=
 =?utf-8?B?Qk95anVsTXJkZTM4TW01WU10cjRoNmlWbDViY1JjcXVYTUFsaHRPQXpJYVNz?=
 =?utf-8?B?UUZkMnl2SFlIUStkZElFYVYrbTFkZjE3YnpnelVaWGl5WTg5UHVRanp6VEhL?=
 =?utf-8?B?NDM5S2VlaTgyWDJWbHl1Z1l1WkFyR1AzN3VaRzBtM013aGhQWWZQTXlHL1Y1?=
 =?utf-8?B?RGRRWjY4amhQZ25oL3BFdUdNeTdiYmZiY2k2R1pzaWQxdjlCUVQvaVFwYndz?=
 =?utf-8?B?bnBtVlpsT2l5K1R0VGVXbk1Gb2R0elBZb092V2JESGZuQWh1SVkrNXJzRVJI?=
 =?utf-8?B?d3Ivai9GNlpycHBzZ1lDTnB2NUxKV3VkOWg3SCtqZTBZUnFRY0pvM0JseHI5?=
 =?utf-8?B?YnJtbUlIdlFBMmJ6TUlEV0JsSTZ6ZkF1ZW11OEJ3MWJhNkNzZFM4Qjc3Zlkz?=
 =?utf-8?B?eGluc1BhU1U0ZTBlM2lsVUlwM3RYZFI0ZkIwSGlNcW1FRUYxaHNqc1IydzFB?=
 =?utf-8?B?NUhaL3FGZitXclNTQXhmWFB1dFJWdnJPbldRTXdvSXAwZ0lCN2xUMUQzM0VO?=
 =?utf-8?B?bURVaU8rM1VLNEdCa2tGRmM4YUN5ejlIVkNzOURkNkhOWTgyNU5heGY1S1hn?=
 =?utf-8?B?VzVYWkR1RkpFaEpMU0VReWtLajh3eXRyZmg4aU5Cd3BZK1FTRlNTRkM2dTlx?=
 =?utf-8?B?akRqbEVNdjJ5eXN5Yk9mWUJVU0dlNHA4dHpLbjNNbmR5Y0hjZmdaN2l3N3p1?=
 =?utf-8?B?N3pWSHQ4TFJNdFp3Ulc1NlJIbHV5ZGJzRVhUcFJaK1VYU1FhUTRiTTQwaUNQ?=
 =?utf-8?B?Ni9ROTJMMGh1dUlBYVpobzFVVmRUNmVvTGNYQzlsWHJjYkU2cEdsNEJRRFMv?=
 =?utf-8?B?REhzQk5hSzMyQXlNVEhwUjFycXlleTd2aXFsMVE5ZGREL3NVV2twOXpCQTFJ?=
 =?utf-8?B?UmErUURYRHZhZUdaTWs0RllxNE1CL2tQTVJBQTF6T3UxNlZLYWc0UE1PaEdU?=
 =?utf-8?B?eTN2Vmp2MC9LaEZtcjNTdXBqMVFTZ3p5TjI2Q2VWaVluR3l6ZTdRbXNsb2hJ?=
 =?utf-8?B?N3MvbVFkbjl2bHFwNjR0aTVJTjE5SmJFZmxMdEtBcjdONDROa2hGYVFjRG9a?=
 =?utf-8?B?dndkRmc5aXNNRVpNR1R5dmRpQUIwdENrYUFXbllwSk9Zc0FOMmhvS0Zzakdv?=
 =?utf-8?B?OTVaMW5UVVVJWFJxNUdmNTNkUGZ2c2I5YlU2Ym1EVllkSFNhM3lXaFAwNzhS?=
 =?utf-8?B?TzRQdXpEb2xGWmNWaWNnNUdCTTY0K1daTmxLWHZBSW9hVlA1YjNnYWJIeUU0?=
 =?utf-8?B?azgyREd5REY0Vm1Ia0wwb0crVUJpR1BsTmdWcHZxN0c3c3hhYktHNzhQcHdK?=
 =?utf-8?B?VXVLT3IwTzdFK202VU9RN0xZOUZ0WGVSc3dSTVFTMXh5UWZRa0RzdmJ3TEVU?=
 =?utf-8?B?WllXcENDZkZCTFdKYXJVWWpFZDNYMVRRSzlqRmhCd3dSRXRRekNTTkN4Q2py?=
 =?utf-8?B?ZEhaQzdIelhrOUIzQnNlMCtuZHBjY3J3VEovcngrNTRGTlNRZERvaE9kUWFs?=
 =?utf-8?B?M3ZZdHBvVW1qWnd6SFFQRW1Yeit2dm9YMWdsSUNCZ0NJempHd0FQL2prN3pT?=
 =?utf-8?B?a1NRNEdwbHdOR0RnMzVabm1NUnNDWEJVU1lycVI5ckFKemNNVXBmbS9qR3k3?=
 =?utf-8?B?SjNmRDRLaHdIUVc0SmdTZDVWM1hFWnQwWE0veC9HSE84U2dtYzZRbXR1SHpF?=
 =?utf-8?B?b1RVQ3dmRFhDU1hJcExUa3gzNGNyazJhTE95WndvbVR3dS9QYUMvcHduQ3h5?=
 =?utf-8?B?WVl3RTIzeFluY3RZN3ArTVRZdDdFOXZ4bzNWY3R1REEzSk9sOVhRbzNqQlNw?=
 =?utf-8?B?akE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a3342dec-3dd8-48aa-d3dc-08dcafe01834
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Jul 2024 15:06:59.6590 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: O9LhcQuDV+/5P4ldK684XIWLQ+G65G7v93629K4roJocXUwzVTTUDcI9e32jLOGvhsmTVW7p9Sf3niNClCatFa6zOm1RziM4dQU7/wgSNkI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4851
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


On 7/26/2024 3:23 PM, Nemesa Garg wrote:
> In panel fitter/pipe scaler scenario the pch_pfit configuration
> currently takes place before accounting for pipe_src width for
> joiner. This causes issue when pch_pfit and joiner gets

typo: get


> enabled together.
>
> Introduce a new boolean flag is_required which can be filled
> during dp compute_config and later is used to compute panel_fitting in
> pipe_config. Modify pch_panel_fitting to handle joiner pipes by adjusting
> crtc_hdisplay accordingly.
>
> Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>

Lets add version history from previous revision : 
https://patchwork.freedesktop.org/patch/602385/?series=135791&rev=1


> ---
>   drivers/gpu/drm/i915/display/intel_display.c       | 11 +++++++++++
>   drivers/gpu/drm/i915/display/intel_display_types.h |  1 +
>   drivers/gpu/drm/i915/display/intel_dp.c            |  7 ++-----
>   drivers/gpu/drm/i915/display/intel_panel.c         |  3 +++
>   4 files changed, 17 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 8bbde03f2508..a7194a84b6b8 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -4796,6 +4796,17 @@ intel_modeset_pipe_config(struct intel_atomic_state *state,
>   		return ret;
>   	}
>   
> +	for_each_new_connector_in_state(&state->base, connector, connector_state, i) {
> +		if (connector_state->crtc != &crtc->base)
> +			continue;
> +
> +		if (crtc_state->pch_pfit.is_required) {
> +			ret = intel_panel_fitting(crtc_state, connector_state);
> +			if (ret)
> +				return ret;
> +		}
> +	}
> +
>   	/* Dithering seems to not pass-through bits correctly when it should, so
>   	 * only enable it on 6bpc panels and when its not a compliance
>   	 * test requesting 6bpc video pattern.
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index a04d52dbf6e1..a4ab26d8fa43 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1258,6 +1258,7 @@ struct intel_crtc_state {
>   		struct drm_rect dst;
>   		bool enabled;
>   		bool force_thru;
> +		bool is_required;
>   	} pch_pfit;
>   
>   	/* FDI configuration, only valid if has_pch_encoder is set. */
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index d0d878da71ee..d892c5a429f1 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -2922,11 +2922,8 @@ intel_dp_compute_config(struct intel_encoder *encoder,
>   		pipe_config->has_pch_encoder = true;
>   
>   	fixed_mode = intel_panel_fixed_mode(connector, adjusted_mode);
> -	if (intel_dp_is_edp(intel_dp) && fixed_mode) {
> -		ret = intel_panel_compute_config(connector, adjusted_mode);
> -		if (ret)
> -			return ret;
> -	}
> +	if (intel_dp_is_edp(intel_dp) && fixed_mode)
> +		pipe_config->pch_pfit.is_required = true;

Although joiner is currently used only for eDP/DP, if we are changing it 
for DP, we need to do this for other interfaces also, where 
intel_panel_compute_config is called.


Regards,

Ankit


>   
>   	if (adjusted_mode->flags & DRM_MODE_FLAG_DBLSCAN)
>   		return -EINVAL;
> diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm/i915/display/intel_panel.c
> index dd18136d1c61..0da45c2330d3 100644
> --- a/drivers/gpu/drm/i915/display/intel_panel.c
> +++ b/drivers/gpu/drm/i915/display/intel_panel.c
> @@ -395,6 +395,9 @@ static int pch_panel_fitting(struct intel_crtc_state *crtc_state,
>   	u16 crtc_hdisplay = adjusted_mode->crtc_hdisplay;
>   	u16 crtc_vdisplay = adjusted_mode->crtc_vdisplay;
>   
> +	if (crtc_state->joiner_pipes)
> +		crtc_hdisplay = adjusted_mode->crtc_hdisplay / 2;
> +
>   	/* Native modes don't need fitting */
>   	if (crtc_hdisplay == pipe_src_w &&
>   	    crtc_vdisplay == pipe_src_h &&
