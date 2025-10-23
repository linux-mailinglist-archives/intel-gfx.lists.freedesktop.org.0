Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C0C3BFF98D
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Oct 2025 09:30:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F117510E89A;
	Thu, 23 Oct 2025 07:29:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lecjc3Nn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3680A10E89A;
 Thu, 23 Oct 2025 07:29:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761204597; x=1792740597;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=hb1NezjeGU359SyEFG2a1IydiPrRN/7LrmwY8MTX9mk=;
 b=lecjc3NneNXcOM5Fum4ZMoqNq7cGB9EbACv3altGhRpjbC/pq1WsBkmH
 sVe58cMWOTAJ3YWENRGLTRoKKavGFARMIPOMjuIlhMse5PGQtLq9treB0
 GmhlOHfAeMXzG35CcmVjgXucOD4mEhxPJQVRwOA/+Su3ndqpjEH8eUUlb
 wagaqHbl+DbSfLrAt7NKB2JzhwK5AiSygk61s5F798RzDuWNQpX1Eh5V8
 kF9SXFsiPKuXT/8zbe7WKkPbOQ5zlhBwxLUXLcpxnB/y44q0//T6iJgPb
 IbMJdy4VEnuIphTOp7zoZxSbHD5Drbh5ZAFlBpMdEvIya5DctV6uoR85W A==;
X-CSE-ConnectionGUID: 41kq2EghQyi3AYEMWjo1qw==
X-CSE-MsgGUID: te31XJRnQkCl9S9S8elLgw==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="67202615"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="67202615"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2025 00:29:57 -0700
X-CSE-ConnectionGUID: nDZbry8UStOfvMhPfKdlTg==
X-CSE-MsgGUID: RcWa9J3bRs6Q3dV88bL1Tw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,249,1754982000"; d="scan'208";a="183979498"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2025 00:29:57 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 23 Oct 2025 00:29:56 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Thu, 23 Oct 2025 00:29:56 -0700
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.32) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 23 Oct 2025 00:29:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Ef1r5UxUuQXWQl8Ggg0+myLImphtUEnlCxhzK64UIHXenptsBQhL92rJJzV+NX6V4XaE3B7XHy0ws0gpAu77WcToV9n15vUJuRS0fYfrDcbTiAC5XJHAEf8VJSwgtfbwjBALbXgNqLXxIAmv2fnzkPLeDfGXWafrdkQ/Mg05Fq1ZWfIjb7xjwfC60opTJvDTz54d8fRu8lgjnd0AQEiEPTGdkZg+kXZk5QJNQdPdcpX/67qkxwK8DN38iyeHww8Ba593IA3oHCi9Vaw6BKITV9fkqMhrb2SOUfiC7vNSIQNTP50ZPAfMcv6YCqmPgGIkR4Wk9AwpaZ6rMcT/eE2tcQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Pwpp8wY9jpC8WEFQQeSf4fG7JamlIFG1tp00ntF5l4Q=;
 b=vZCPDDxArBITaedPNl+RxcQSkIld0O5O8jcRftmBMhAkGwwhbktSsDSd97i/tX988WpKnoTPNsctYsKoQrg5jmSpcz1PNzO2OSl04i/IdGtXm5MFWSwsDVQYxbgGVGznH8wnaBcmL3KQKCPEatYgPQ1UBdApLkYdy3E3QZk5ybvWBbdll/xUNklPs7zc5t/mpHH+cnVvlmN6N+XobjxKWaRng9mGiW/IfP2lESx397dZ1JLZDV80+7CTcdylAT4E1Uy/xVheeQRSolxHY0SEqFc/sjfAZxa69a5q88W8h2LaQRI8GHYxllozj8Ir1vizWc1YFNdiAL4FejOGuIAxJA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by SA1PR11MB8280.namprd11.prod.outlook.com (2603:10b6:806:25d::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9253.13; Thu, 23 Oct
 2025 07:29:54 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::dafa:d38d:8ac1:e843]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::dafa:d38d:8ac1:e843%6]) with mapi id 15.20.9253.011; Thu, 23 Oct 2025
 07:29:54 +0000
Message-ID: <44fc6f69-7b18-47e9-ab8c-e8fac1d45338@intel.com>
Date: Thu, 23 Oct 2025 12:59:46 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 06/25] drm/i915/ltphy: Read PHY_VDR_0_CONFIG register
To: Suraj Kandpal <suraj.kandpal@intel.com>, <intel-xe@lists.freedesktop.org>, 
 <intel-gfx@lists.freedesktop.org>
CC: <ankit.k.nautiyal@intel.com>, <uma.shankar@intel.com>,
 <gustavo.sousa@intel.com>, <lucas.demarchi@intel.com>
References: <20251015040817.3431297-1-suraj.kandpal@intel.com>
 <20251015040817.3431297-7-suraj.kandpal@intel.com>
Content-Language: en-US
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
In-Reply-To: <20251015040817.3431297-7-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5PR01CA0158.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:1cf::6) To IA0PR11MB7307.namprd11.prod.outlook.com
 (2603:10b6:208:437::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA0PR11MB7307:EE_|SA1PR11MB8280:EE_
X-MS-Office365-Filtering-Correlation-Id: 576b939d-3c3a-4ed4-9908-08de1205f5b9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?LysxWThCMWtkT3plKy9ublZjbm9JTzNkKzRSTTVJZ2dOMDJpN1BXMmFNTmlh?=
 =?utf-8?B?dGtlbEtyOCtndmdDMDM0RHY4NzZCbnA1M0tLYXRXazg2RURjT3FFQStCZHEy?=
 =?utf-8?B?cXlFTWh6RzA4dUVmOGpzeEdraVhROGdVc3U0aDlZZU5CaEI5U3BtcVJhR0dB?=
 =?utf-8?B?U01LS1Fiejl6enJZaWNUdUlnWFkwS2dBdHRJUnVXTXVGTENqOWNMdGx1YXF4?=
 =?utf-8?B?WDJwRzFoQVZzdU5YcnU4d3ZUdnZ2cXZjcGVFNG5KWU5hTnpOdVl6RHdqaXp6?=
 =?utf-8?B?dWZDUmR1TkdJbnpJMXVFMnprWDJpOVowMjFRZTdUV25PUTNDVDhlZ2ZsaUY5?=
 =?utf-8?B?dzVPNnZ4QnlpSFVxeDNvTzNENmUvMW9rbStJaWtpcXV3Wm16VGxNcDdib29w?=
 =?utf-8?B?NG5SMUhKQW9pV0RlYTRWd1JBZ01SNnBRR09rWFY1QlNkaE8zVEFLSU0xamZK?=
 =?utf-8?B?WHpMZGdWOXB3eFoxU3pGdWVtV3F0Q3hSZGRVK01ROGkzL1ZlNHM5ZDRNb2xO?=
 =?utf-8?B?TmY2M2t6aS9Panl3dGp0N3BDZEUxa0VEZkJYOVhuMWJTTjdPZDZZZ082eWFr?=
 =?utf-8?B?L2xQdERsQWVVczY4dGJCWEdhNG5LcDJLZ0JzS2dxSTRydEhwNzAzWGo1VE9w?=
 =?utf-8?B?N0hSeVB4NjZnWElHNGQ2bFRNaGRkRFh1R0FvOGQrTDAvckJsclVoZkcxUGd1?=
 =?utf-8?B?L2JzZFBzZTh2QkwwRzRJNC9NL2tuWDA2ZXR0TlBkQ3VmdzZjZEpSZWNHZGZu?=
 =?utf-8?B?L0toYVk5aXhkUk5keHhMcDBScG10b3hkWE9hMTN2UE1kWkp6N21FUS9SMjdi?=
 =?utf-8?B?dmZqOGhNQktrblk1YkYzRWtSeGh0bWRQNHpCSERaRHFwY2xkYXE0ZFEybkxV?=
 =?utf-8?B?S3dCVW9vZm5XTmtTTFROcmlBWnlVQ2RKZ1ZzU0xhMVNhTmxGK3MvMDZzZVI3?=
 =?utf-8?B?OTcyZWNoZ01MOWVZMnJjOUVCZ0RCRzh1eENnMEFCd1Z2Z0RxUDF3aS9pYWdR?=
 =?utf-8?B?SEdRR3FhWEg3QzI4Y0QwakRIQi9QMkFpd2dhb3pDeWtMTUpOZ2FER0VlVFJB?=
 =?utf-8?B?WmNOME9iNjVheEVRL1p3VjVzc0V5Ykt3WTZkZGRHczU1a2QrV0pENWF3S0o0?=
 =?utf-8?B?blRJbW9qcy93dnJlQ2JuMXlLbFUwZ3FKcFF0aFNaVGtOcjB6NXBKVzRvMnhU?=
 =?utf-8?B?TnVlZVpzNzNFZTJPb3cvbTI5YW1HS0cvOVB0VExneEo0cFcxenJFREEwNTN1?=
 =?utf-8?B?RGRnSjE3bVR3MEZoZDJJeWFFbkhCZHJ1OW1sR29vaDdId2JoZDhtTS9xNjhB?=
 =?utf-8?B?RmFreTVxS0RqMk5xQ21tZ05KL1ZwaDFoQWNLWVduM054TDNZR2xJVW5KSC9v?=
 =?utf-8?B?RGovMjdWL2xtRnVSZy90NUxHRmZNNVRQYVNLMHR5amRqcDQxNUVLOXZxVzBx?=
 =?utf-8?B?WkFVTjlJT1o1eUl3VFA1alN5MUlJWVNJU1dLY0tSWkJhR0hVY0hFZW9pWXdQ?=
 =?utf-8?B?c3FGdW0yTXppcmFrZXpLcVBqWGIwSzBDVTM4YlladC9FSmtRVExjRWdvQ09R?=
 =?utf-8?B?MkdmVWVSK2RrV0dYbVV0VE5QRXdUZ1RJV1RMYnVOM3c3QXNsSVhTRjV6cVVJ?=
 =?utf-8?B?N0lvSlIyd1hEd3JZSWE1aUhKcGh5SXpoTkM3bHR4cFdGaVpOcWd3VFBMbC9Y?=
 =?utf-8?B?TEg3dFEwMTlOZEtKaHJJWm5kSjAwUWxxaFpaSWhJVCs1MVBXOFQ2ejg3cGsw?=
 =?utf-8?B?YUtldmZIdTJaem1DbWNhcEMwbExpTXpuNjMwWHRDZ3NZSWxiY1BrMTIvbGxQ?=
 =?utf-8?B?QXJQLzdSd0h2ZDVXTmpSdHRFRW5sTmlGQTlWSWp3MDZhMXNDenJrWUsxU1Qx?=
 =?utf-8?B?MTdNd2NVQ1VQeVEvb1hudU0rZWJzUnkxQUpuOFk2cG9EbTFCamhkSVF4STNV?=
 =?utf-8?Q?PwplBmpkFvhnU/X2AjmhdrDbcs+Axp3W?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bVhCR0xwY0x2bERjOW5jaEVpVW1ienMyUS9nSkpoWlJHNy8yMlRtSUU2RUNZ?=
 =?utf-8?B?eUQrODlSaHpGV3RLNEFnbXJRckRoWnF0NHBXOXgyV0w1cnRpeTZFSjZGSFhB?=
 =?utf-8?B?VHQ3T1RGTGZGV0VMekErY2N3eG01WitBZ3VpSkZndXVISVhQU2VGV1FoTkVK?=
 =?utf-8?B?b0dnWnBySkN0cS9ZaU94RXBYUFA1YXBtNjJBbGxiZXRGcnVNZllNN2FJMXpP?=
 =?utf-8?B?OXcrVTk5VnE0SWVlZ2JVSEx1MllpSTVNN2VhMVFhdFlZYTl5SVBsNzRHbjF6?=
 =?utf-8?B?VWFMYzBpZG1iaWxOeEtIZHFuYWRraUtxaUJnRXNTUDd5ZFlmL0pNQzdkZjJN?=
 =?utf-8?B?bGMrZ1IzTjZzYUlWWldJcS9TcnZFRWhtTVVCRllTMjVSdHVnQXZYMlBVbkx6?=
 =?utf-8?B?SnFiM2FhN0J6T2VIY3lqcGZFVC93MGlrVEg3enZEWlI2TGlGbGhJaHlmdndS?=
 =?utf-8?B?NE5vK3RiNzc4OXBqZDB1K1RyQ0p3VytxdndjTzVwazNTanVUU3RjNXhxWVJl?=
 =?utf-8?B?UGNNdlRwN1B2eUVlYW5KWXB0alc4YlVOREJNN1M3eDJyTExVdWNIYnd6OG5k?=
 =?utf-8?B?dHBoZEhVcCtnNTVQdFBVNTRmTjBHVWFML3dYandJaS9GTWpuYnFEUnJXNDM3?=
 =?utf-8?B?R3BIQUF3dHZkdHEwbnE4Ymd0NW5OKzZEaHVmQzBqd1JkNmc2eEVFRUw1S2h0?=
 =?utf-8?B?TUY4aWxrVjZzb28wdFNvdTRUVzQ2ZmtpbmR0NDlqZ250TVJtd0h6OW1MbkRK?=
 =?utf-8?B?eHZTNENsT2xTZG9CNE5lWDZEQ08rTHJpdkVxelBLVG56RE00TTFTZnJTcEZk?=
 =?utf-8?B?eTJIdTBuZFk5QllRRDQxSFp2ejJhbldGYjE2cUJJYnF4WlNUWWo4dXI0ZGUw?=
 =?utf-8?B?WUV5N1BDditXZzlVSWp3TW5RUWQvcVJnbm5uQkxWYk95dHZ1NlVPbytXTFlW?=
 =?utf-8?B?cFVYSWtYZXdreWlXSUZ4TWhGYk96cEJidFZKZEJpWm1BUXdoM0pJUll6RzhP?=
 =?utf-8?B?R2FQNTlxM1JtU28yS0FzT25ZdHY2dzB1dVJ3SzVGRlMrMHVnZVpTSjU2eVJW?=
 =?utf-8?B?TVExcnJZemJGY3FwRjJydWtTTk40OUk4S04xOGJNdDlwOVpNZlBOMGlkdWNX?=
 =?utf-8?B?L0ZqN04xZHFxKzJHOWtlQjlRM3UzaFVTVm1zOVdKRm5EWVo1T1c2VXcrajJ0?=
 =?utf-8?B?UEh3NkdOaUE0U1hqUk95UW1VQXhaaUVSUTRQQlBGY1lsSFEyczJ3WGpGM0ZO?=
 =?utf-8?B?NkRIOWVqVTZnNlM0bTRQVzJ0MEwzbkFxN29UakR4UVJiLzhuYlp2NGJSY0lv?=
 =?utf-8?B?REZEdHlKSkNJVkJ6b3FLZDNsU3ZLMWp6NVc2QlB6N3VDdHlLRFE3M0h5MkxB?=
 =?utf-8?B?NGJLN0FBY1ZJcEh2UDNQY3RjN3h2VEY4bWp0NmlxTE9obWJPSzNyV0VibUd0?=
 =?utf-8?B?b3JjUlRUYUVaR3FuaGdNQW5LUkpCRWNwYkxzcGo2Zk9EOVlsTTZFdDNYM0FC?=
 =?utf-8?B?QVVZc3hHWmF0YVp5YnQ1MHUybEs5cDJZRjZlZzAwcjcvUGJnQUxWUmRUd2oy?=
 =?utf-8?B?akQ2K2JKMWtENUZJSEhyWmVGbG9zdHFOelliQTJPeFNOVGlySkJ6WlN6aFJn?=
 =?utf-8?B?c2RFTmg5L3Z3bGRNKzNpM2JEYnZ1RUxQTnI0QmhSTlVWditYbXJxK1pzaC92?=
 =?utf-8?B?Znl4TGN2d0RwVlNFSzZsMzh6RDFsa2RtemtKMDBYc2toNnJnWUNLaXp1Y0JT?=
 =?utf-8?B?TFgzK2NoQlpNeVdJMDFPUE9PTWtCUlFKZCtLKzdrTm51dldHd0UzVk9OTXht?=
 =?utf-8?B?bXk4ZlIzemRhRDhENXVIZUNhUGEwbVd1YmVSMUwzZXd5enRRc0U0WHZ5QTNI?=
 =?utf-8?B?U2tqbitGTzNJUmQ3MFphaTBPang1azFDdVNKcWowS2VaZ0ZoNTZUL1JlRk1Q?=
 =?utf-8?B?dytyRTBwVlcvWlRnZitmWW8vaUw4WDNmcUFYdmU5ZlgyWFFDYnl6cUtZYmxu?=
 =?utf-8?B?cmRDOGpDbDlTdkI3R1hDY1F2dFJ4WmRjMmEwZE92SkFuK3pCTTVQRWpmNXBX?=
 =?utf-8?B?YWJ0MCtQY0RXSWxJbXJlaHFJUWxSUHFjZ2hVamdKYmNmemZtVWlJMnhVbGdH?=
 =?utf-8?B?TlNrMW12VlcxOGV1dDhJUWpGM2Z0NEtNZVNHUTJGN0o3cVdBa0FVQlFBRGxH?=
 =?utf-8?B?dWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 576b939d-3c3a-4ed4-9908-08de1205f5b9
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Oct 2025 07:29:54.1553 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: DojPuxMTtyGcxRDOZd2Nj9bn+a5L7sfOZpFASiir9DwTapuOiUNgyU4eURbFkFTdXrQBg5GasNzYM0TU7T6JuA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8280
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

On 15-10-2025 09:37, Suraj Kandpal wrote:
> Read PHY_VDR_0_CONFIG to check if there is any change in the register and
> decide based on that if some steps need to be executed or not.

Can using "some steps" be replaced with a proper seq/word? Something 
like if no change in PHY config then omit the P2P and port control 
configurations.

With the above correction
Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>

Thanks and Regards,
Arun R Murthy
--------------------

>   This
> scenario only happens if the requested mode uses 1.62Gbps with DP mode
> since LT PHY defaults to this mode if any other mode is requested we
> need to follow the whole sequence.
>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_cx0_phy.c |   4 +-
>   drivers/gpu/drm/i915/display/intel_cx0_phy.h |   2 +
>   drivers/gpu/drm/i915/display/intel_lt_phy.c  | 146 ++++++++++++++++---
>   3 files changed, 127 insertions(+), 25 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> index 8455d0725968..4e074754a78f 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> @@ -271,8 +271,8 @@ static u8 __intel_cx0_read(struct intel_encoder *encoder,
>   	return 0;
>   }
>   
> -static u8 intel_cx0_read(struct intel_encoder *encoder,
> -			 u8 lane_mask, u16 addr)
> +u8 intel_cx0_read(struct intel_encoder *encoder,
> +		  u8 lane_mask, u16 addr)
>   {
>   	int lane = lane_mask_to_lane(lane_mask);
>   
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.h b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> index 8c9b97f0922d..b448ce936c37 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> @@ -46,6 +46,8 @@ void intel_cx0_powerdown_change_sequence(struct intel_encoder *encoder,
>   int intel_cx0_phy_check_hdmi_link_rate(struct intel_hdmi *hdmi, int clock);
>   void intel_cx0_setup_powerdown(struct intel_encoder *encoder);
>   bool intel_cx0_is_hdmi_frl(u32 clock);
> +u8 intel_cx0_read(struct intel_encoder *encoder,
> +		  u8 lane_mask, u16 addr);
>   int intel_mtl_tbt_calc_port_clock(struct intel_encoder *encoder);
>   void intel_cx0_pll_power_save_wa(struct intel_display *display);
>   void intel_lnl_mac_transmit_lfps(struct intel_encoder *encoder,
> diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.c b/drivers/gpu/drm/i915/display/intel_lt_phy.c
> index 263e9780b55c..c2d5e4b82db5 100644
> --- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
> @@ -6,6 +6,7 @@
>   #include <drm/drm_print.h>
>   
>   #include "i915_reg.h"
> +#include "i915_utils.h"
>   #include "intel_cx0_phy.h"
>   #include "intel_cx0_phy_regs.h"
>   #include "intel_de.h"
> @@ -13,12 +14,14 @@
>   #include "intel_display_types.h"
>   #include "intel_lt_phy.h"
>   #include "intel_lt_phy_regs.h"
> +#include "intel_psr.h"
>   #include "intel_tc.h"
>   
>   #define INTEL_LT_PHY_LANE0		BIT(0)
>   #define INTEL_LT_PHY_LANE1		BIT(1)
>   #define INTEL_LT_PHY_BOTH_LANES		(INTEL_LT_PHY_LANE1 |\
>   					 INTEL_LT_PHY_LANE0)
> +#define MODE_DP				3
>   
>   static u8 intel_lt_phy_get_owned_lane_mask(struct intel_encoder *encoder)
>   {
> @@ -31,6 +34,12 @@ static u8 intel_lt_phy_get_owned_lane_mask(struct intel_encoder *encoder)
>   		? INTEL_LT_PHY_BOTH_LANES : INTEL_LT_PHY_LANE0;
>   }
>   
> +static u8 intel_lt_phy_read(struct intel_encoder *encoder,
> +			    u8 lane_mask, u16 addr)
> +{
> +	return intel_cx0_read(encoder, lane_mask, addr);
> +}
> +
>   static void
>   intel_lt_phy_setup_powerdown(struct intel_encoder *encoder, u8 lane_count)
>   {
> @@ -148,12 +157,96 @@ intel_lt_phy_program_port_clock_ctl(struct intel_encoder *encoder,
>   		     XELPDP_SSC_ENABLE_PLLB, val);
>   }
>   
> +static u32
> +intel_lt_phy_get_dp_clock(u8 rate)
> +{
> +	switch (rate) {
> +	case 0:
> +		return 162000;
> +	case 1:
> +		return 270000;
> +	case 2:
> +		return 540000;
> +	case 3:
> +		return 810000;
> +	case 4:
> +		return 216000;
> +	case 5:
> +		return 243000;
> +	case 6:
> +		return 324000;
> +	case 7:
> +		return 432000;
> +	case 8:
> +		return 1000000;
> +	case 9:
> +		return 1350000;
> +	case 10:
> +		return 2000000;
> +	case 11:
> +		return 675000;
> +	default:
> +		MISSING_CASE(rate);
> +		return 0;
> +	}
> +}
> +
> +static bool
> +intel_lt_phy_config_changed(struct intel_encoder *encoder,
> +			    const struct intel_crtc_state *crtc_state)
> +{
> +	u8 val, rate;
> +	u32 clock;
> +
> +	val = intel_lt_phy_read(encoder, INTEL_LT_PHY_LANE0,
> +				LT_PHY_VDR_0_CONFIG);
> +	rate = REG_FIELD_GET8(LT_PHY_VDR_RATE_ENCODING_MASK, val);
> +
> +	/*
> +	 * The only time we do not reconfigure the PLL is when we are
> +	 * using 1.62 Gbps clock since PHY PLL defaults to that
> +	 * otherwise we always need to reconfigure it.
> +	 */
> +	if (intel_crtc_has_dp_encoder(crtc_state)) {
> +		clock = intel_lt_phy_get_dp_clock(rate);
> +		if (crtc_state->port_clock == 1620000 && crtc_state->port_clock == clock)
> +			return false;
> +	}
> +
> +	return true;
> +}
> +
> +static intel_wakeref_t intel_lt_phy_transaction_begin(struct intel_encoder *encoder)
> +{
> +	struct intel_display *display = to_intel_display(encoder);
> +	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
> +	intel_wakeref_t wakeref;
> +
> +	intel_psr_pause(intel_dp);
> +	wakeref = intel_display_power_get(display, POWER_DOMAIN_DC_OFF);
> +
> +	return wakeref;
> +}
> +
> +static void intel_lt_phy_transaction_end(struct intel_encoder *encoder, intel_wakeref_t wakeref)
> +{
> +	struct intel_display *display = to_intel_display(encoder);
> +	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
> +
> +	intel_psr_resume(intel_dp);
> +	intel_display_power_put(display, POWER_DOMAIN_DC_OFF, wakeref);
> +}
> +
>   void intel_lt_phy_pll_enable(struct intel_encoder *encoder,
>   			     const struct intel_crtc_state *crtc_state)
>   {
> +	struct intel_display *display = to_intel_display(encoder);
>   	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
>   	bool lane_reversal = dig_port->lane_reversal;
>   	u8 owned_lane_mask = intel_lt_phy_get_owned_lane_mask(encoder);
> +	intel_wakeref_t wakeref = 0;
> +
> +	wakeref = intel_lt_phy_transaction_begin(encoder);
>   
>   	/* 1. Enable MacCLK at default 162 MHz frequency. */
>   	intel_lt_phy_lane_reset(encoder, crtc_state->lane_count);
> @@ -169,29 +262,34 @@ void intel_lt_phy_pll_enable(struct intel_encoder *encoder,
>   	 * 4. Read the PHY message bus VDR register PHY_VDR_0_Config check enabled PLL type,
>   	 * encoded rate and encoded mode.
>   	 */
> -	/*
> -	 * 5. Program the PHY internal PLL registers over PHY message bus for the desired
> -	 * frequency and protocol type
> -	 */
> -	/* 6. Use the P2P transaction flow */
> -	/*
> -	 * 6.1. Set the PHY VDR register 0xCC4[Rate Control VDR Update] = 1 over PHY message
> -	 * bus for Owned PHY Lanes.
> -	 */
> -	/*
> -	 * 6.2. Poll for P2P Transaction Ready = "1" and read the MAC message bus VDR register
> -	 * at offset 0xC00 for Owned PHY Lanes.
> -	 */
> -	/* 6.3. Clear P2P transaction Ready bit. */
> -	/* 7. Program PORT_CLOCK_CTL[PCLK PLL Request LN0] = 0. */
> -	/* 8. Poll for PORT_CLOCK_CTL[PCLK PLL Ack LN0]= 0. */
> -	/*
> -	 * 9. Follow the Display Voltage Frequency Switching - Sequence Before Frequency Change.
> -	 * We handle this step in bxt_set_cdclk()
> -	 */
> -	/* 10. Program DDI_CLK_VALFREQ to match intended DDI clock frequency. */
> -	/* 11. Program PORT_CLOCK_CTL[PCLK PLL Request LN0] = 1. */
> -	/* 12. Poll for PORT_CLOCK_CTL[PCLK PLL Ack LN0]= 1. */
> +	if (intel_lt_phy_config_changed(encoder, crtc_state)) {
> +		/*
> +		 * 5. Program the PHY internal PLL registers over PHY message bus for the desired
> +		 * frequency and protocol type
> +		 */
> +		/* 6. Use the P2P transaction flow */
> +		/*
> +		 * 6.1. Set the PHY VDR register 0xCC4[Rate Control VDR Update] = 1 over PHY message
> +		 * bus for Owned PHY Lanes.
> +		 */
> +		/*
> +		 * 6.2. Poll for P2P Transaction Ready = "1" and read the MAC message bus VDR
> +		 * register at offset 0xC00 for Owned PHY Lanes*.
> +		 */
> +		/* 6.3. Clear P2P transaction Ready bit. */
> +		/* 7. Program PORT_CLOCK_CTL[PCLK PLL Request LN0] = 0. */
> +		/* 8. Poll for PORT_CLOCK_CTL[PCLK PLL Ack LN0]= 0. */
> +		/*
> +		 * 9. Follow the Display Voltage Frequency Switching - Sequence Before Frequency
> +		 * Change. We handle this step in bxt_set_cdclk().
> +		 */
> +		/* 10. Program DDI_CLK_VALFREQ to match intended DDI clock frequency. */
> +		/* 11. Program PORT_CLOCK_CTL[PCLK PLL Request LN0] = 1. */
> +		/* 12. Poll for PORT_CLOCK_CTL[PCLK PLL Ack LN0]= 1. */
> +	} else {
> +		intel_de_write(display, DDI_CLK_VALFREQ(encoder->port), crtc_state->port_clock);
> +	}
> +
>   	/* 13. Ungate the forward clock by setting PORT_CLOCK_CTL[Forward Clock Ungate] = 1. */
>   	/* 14. SW clears PORT_BUF_CTL2 [PHY Pulse Status]. */
>   	/*
> @@ -205,4 +303,6 @@ void intel_lt_phy_pll_enable(struct intel_encoder *encoder,
>   	 * We handle this step in bxt_set_cdclk()
>   	 */
>   	/* 19. Move the PHY powerdown state to Active and program to enable/disable transmitters */
> +
> +	intel_lt_phy_transaction_end(encoder, wakeref);
>   }
