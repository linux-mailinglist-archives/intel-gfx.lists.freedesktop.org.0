Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id pmqvJiDul2kN+QIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Feb 2026 06:16:16 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EBC20164BE3
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Feb 2026 06:16:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A619110E781;
	Fri, 20 Feb 2026 05:16:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YPAB7TVi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BA27410E1A7;
 Fri, 20 Feb 2026 05:16:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771564572; x=1803100572;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=JSCJNadiMatuGUllpbK2OKx1+j4ukB+rZ7o8eA4/xXM=;
 b=YPAB7TVi65Jds/p5oMKU0nF6xC76Mh35n4Jw3TuFu89WelhRiivC9Hqj
 umHld/tm+A+nj9j9TqQmeKH26/DOXgO3EbvgpCqsmSiX2aDomz24XqeMG
 mTxH+AE/rSiBGEA9OVH27Vmap6vZB071dVgbKi3cxy5lyguRZ6LfxCJDt
 EbujZ1sfopkVlJicqq69qgHFMnVCZOkMalhOQwcuDkdlYh1T75vRo8OZ3
 1CUE3kHs69rDKH6mKH98sgDFFENLN1E+CxnPFnjjtbLez0VdZRZpcdvCK
 mqn/BAglScWuAFN5uX5Nt2LzyaHFVcz9o39DytvX8YEnnPIf+/R81x/DO A==;
X-CSE-ConnectionGUID: 3BIyJU1kTmq3tPUr1N0ObA==
X-CSE-MsgGUID: MR4TKDpYQdCGOU39OTdg2Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11706"; a="75268810"
X-IronPort-AV: E=Sophos;i="6.21,301,1763452800"; d="scan'208";a="75268810"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Feb 2026 21:16:11 -0800
X-CSE-ConnectionGUID: /NvhAPT+SJKrQN4tiivUzg==
X-CSE-MsgGUID: dfnd6XrXTe+WEX6RYj9vSA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,301,1763452800"; d="scan'208";a="219308170"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Feb 2026 21:16:11 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 19 Feb 2026 21:16:10 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Thu, 19 Feb 2026 21:16:10 -0800
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.62)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 19 Feb 2026 21:16:10 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=r4+bjfGRZuvg5sOQU2CHLyAuuFNosm5UqhaKWqWKkVgEnmbsO+EPzx1TVqi1Od7ro/Py7efpY40nvRuIlJjhfpAiLOk/cpwgXSaXEZ4F5CuLk02DdHwTWNutoBBP8lNAbnQO1xQ2MwqcZbXkzQcaXqAe69Lgh2IwnSjjfCw0YQ2OAeGz8wsPCrpA9M2CXGLjjrMrmUMYxFmq97So2RcrwRxne18rBdTd7/mcbeodYCJMUla+3fBJsbDnT/X/WL/RNe0onlamxw8dBMnB6ezhI00QeqCKmmFg2vzfGl9lim3BoG8NhjJV4iGKyCygw0CWom3eCdBWfbhxNY08BiapDw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=eoMjNPty33yvdMG8cnZhCC7CjHJntAwdlsScGRu/N5w=;
 b=o6vBZdGuLVdkfA8yZaYCd2vAikOToyuAqS1Kg9ouqZ7oC810O2qPXWlug6G2FEylt3Mf7juVelhKmFXi3YXwynD7eCvmEaU37DY/zioVdIA1OHN5jqs/AMMsY+Y5233a4Hz3PO3cdWEiWyPcchoyPACtCAVRGbmEvw19IukvE6vbNnq1vXWzXaVzeCpyLEm1toSyHGyw1DxkGR1mcgiiM9srIEYHlvZbwD7kihptJWC/syukkESJPNJb4bH1hICWkS2Vz8YaSfJGf7O803IYpzf8TxFrU7/FYR2OwHhOnU+Op5tWO0J2j1rLRLs+0XjCdTroOmYqf0b3U7BxFZKp8A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by DS0PR11MB7443.namprd11.prod.outlook.com (2603:10b6:8:148::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.15; Fri, 20 Feb
 2026 05:16:03 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4%4]) with mapi id 15.20.9611.013; Fri, 20 Feb 2026
 05:16:03 +0000
Message-ID: <bc41cb6c-044e-4ff6-a066-a6c29ea3b144@intel.com>
Date: Fri, 20 Feb 2026 10:45:55 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] drm/i915/backlight: Make try_vesa_interface as true
To: Suraj Kandpal <suraj.kandpal@intel.com>, <intel-xe@lists.freedesktop.org>, 
 <intel-gfx@lists.freedesktop.org>
CC: <arun.r.murthy@intel.com>
References: <20260219022454.2417063-1-suraj.kandpal@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20260219022454.2417063-1-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5P287CA0230.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:1b1::14) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|DS0PR11MB7443:EE_
X-MS-Office365-Filtering-Correlation-Id: 0ae26586-d6c6-42e8-0536-08de703f23e1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?NmhJYTgxV1dHUWhLVExBWHpBdCt5UVZYd1BHSVp4Rjlhb2VTVmxEVm9ibHlL?=
 =?utf-8?B?aEZOR0d4K0dSMEo1R2xqcnJ3OHVnMEVBekhQcFdpQWNpelB6d0VYeXo0Z3k3?=
 =?utf-8?B?a2VMUGtacVcyUkN5dyt3NVROVWdMWGgrYThFWUNSZlRYNy9BRWJ0ZHhlZk9R?=
 =?utf-8?B?dFF0ZFoyUHFhWGJKZUp0R3U0U2RTTVFsSFc5Nzlkbjh3UkpOd1ZFakZ2ODdV?=
 =?utf-8?B?TWgraEM0UjFKMDNYQlcwNGxsOGJUQ2FRVyt3UXhHZnBaWFB5Y3FSZktSNXFO?=
 =?utf-8?B?aDh5UHM3SEFCOG50VUMxdm1jYmd4Y0VJSDZ2WHdkdWZTNmVNU0s4bzlBaUtO?=
 =?utf-8?B?VVJ1cTM1NXVDNWRxYmJQVFR1WUlmb0VWWTBVZGdXNGxDNFBXL1RkSHZwSUlL?=
 =?utf-8?B?dFgrOWNDWlFqcEFSc3Awc2ZWTzVBV3orc09uQ0phL2JUOEdZUkxwdFloK3ZQ?=
 =?utf-8?B?bCs3VWVQWnViM1Qrc21DeDl5SHJaK2lZSytzREtNa21aUUxOcnhrb2czSW0r?=
 =?utf-8?B?aE5zei9QTHE3QUt0V3ZMcDVVZU1NamxJa29vUGIyUWhJQU5Fb0pHRWQ4VS9z?=
 =?utf-8?B?dHdvRkxrUVVpekhLZFJ6cWY3WWFuU2hIVWNhSktjMmQvYUpaNk5mbGU2dFJP?=
 =?utf-8?B?dnFlbFpySEFuTk1hMHVyanUyRU5aazRPZ1o5Q2d4T0hhbFpJZ2h2THlMM1Ru?=
 =?utf-8?B?TkxSWTQvMXZaYVl3MFhINGE4RENRRUdQek81STRhV0lPRlFjT0w5dVhadXVk?=
 =?utf-8?B?aDgyWWFYV2lLUy9mWTIyWjV5SmJnYXpYcGtheWYxdlByZ1JvSHdHRi9FeVp2?=
 =?utf-8?B?Wlk5ZW9odHUrTjFDVUVCcEJSZWkxUU9PSitWejhpMUxVUWJIRHUxVHlkWXJi?=
 =?utf-8?B?NmQwVWU2ZFNCUGcwdmtVakVrV3c1M0I3ODhPRy9RMGRPaGpGeTNWL094K1VG?=
 =?utf-8?B?am5LU2EvUFZqdmw3L3kzQkRKeXBRdk1FNjdWL1VlWnE1Y1R3d29JUHRqZjZq?=
 =?utf-8?B?RndMNlY5YUlWWHVwc0Y5dU44a1B4WFIrWGI0T3psYjRSZEZJRDl5a1FxMG5i?=
 =?utf-8?B?MU5SY08yOVJZc0s4Q0k3d1hNdFRac3cvVkMwK2l1OU9RK0REZW1lTkRmbzd5?=
 =?utf-8?B?RGlndUNoYkJMMWpoT2NKSjRnVTdSYzkzRXR4eXAvNnhoTE96ZWo2QVBTbGJ3?=
 =?utf-8?B?ZmF6elovdjdlbHRNSkE3R1lCTXRQNXVtWWthLzJrNDFJZUswU0JaVWR0blgx?=
 =?utf-8?B?UUVXeldBZTgvdmc4cm1PaG1uVU5YSVowK3VPZ3lQM0dWMVB2Vm1lSi9PbjBW?=
 =?utf-8?B?WHdCS2JwN0V3Zmhnb2hkaGdoWXdKY2t6YUZjNlJqVDhTSTFJbnZmaWhzYWJa?=
 =?utf-8?B?V3NFRk5yanlFYVNOVnN4SUoxWHpqV21jWjM4VDljbnlRdmRUYlFKMEhGSUQ3?=
 =?utf-8?B?NU9QYXZkWHE0M0xTOEIvcjZ5Z2t3MlkzSkZrV1VvVWN1NHlQWitaQ3pVbkVj?=
 =?utf-8?B?d1psU0hPaEVsTjFTS095cWd1ajFXaVJ1UTZLMTNTeXJFTC9aOEdQOUVhOGNM?=
 =?utf-8?B?YWlicXZBUXFrUzRuaXdEQUtxcFFKcWhTUXNLcG9jS0kyM2xNK2t6UGZNeEc4?=
 =?utf-8?B?aEs2M0dEVFQrWkM3V1JhbUdXUTZuRHVNOG0vcE50TTU3RFlIOXNSQjJhSUtj?=
 =?utf-8?B?bmQyc2hPTER0aFhZenc2d1pMVWwvVlJweXdNdFkxMW4vdWU2WmU4UGZzeHZp?=
 =?utf-8?B?c0dsUDdrWmlrM0pBOVdRSmVyOHZ3c0gzV3hOaWc2RWZWcUlSNTBrMTFSRTV2?=
 =?utf-8?B?aGFlWk5ORlNva0ZBRURDL0xiZzZOdWRRVjNiQldZZmNGWW5NSWwyVVBTZzJS?=
 =?utf-8?B?bzRENWFOMDZvYi83QWlUbzNISEpDRGQwczR4NURDQUFqRWtNM3BTOVVaUHBS?=
 =?utf-8?B?bVFQa2ZRZDlyOXdxM1pDL0FOMHpLTWJWcE44RGpRNmgxaXdnb2dDUXNtTSs2?=
 =?utf-8?B?cCtZd3psQWh0STdPcklncEZsakFmRjJUSDdsT1lXbmtWRW5ORnRNRnhFbHdJ?=
 =?utf-8?Q?5RqAk4?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Z2ZlMnJGaG9TbVJJNHlYQVJVaWVRUURLVXFmeFRFVHVKWXFqbEdkNkFyajB5?=
 =?utf-8?B?elZEWlFoWnoyRDlyQ3A2OE9vLzdYcysya1EzQ015djVSS3J1VkFnRFBoQkov?=
 =?utf-8?B?dGJrS0VCV1pPMWNQeVdwYWNjU3hNMDc0Tk83eEo0aUVHMldiam9OVjhPNU5C?=
 =?utf-8?B?VzNqTTZ4cmVJMXhTYXUvaXZ0cmpCVFBGZjNlK3VnT3A2YmpQelJmWDFxa2Yv?=
 =?utf-8?B?SW10ZVZxT0YwdHhRajBMblBwWGIwSFpJV1ZwU3Fib2NoNGVMMzdQUHFZNmlo?=
 =?utf-8?B?LzlOQTRNOENrYXBOWHVjMWhFeVBPQ2ZpcFhhV0hvWDdZRjN0U2FDWUpNUGky?=
 =?utf-8?B?N2srTkZmSFN6SCtjOXJmWEFZajFYT3VYRzYySUxQUG5CdXp4cEx6aFNESFBL?=
 =?utf-8?B?MGZZcFVPaEdXNkt6VlNrU1kxY2UzN3pjbytZbWlIbU91YlRaOGVpMmVxZlpI?=
 =?utf-8?B?bjIzU05OR043S3Y5UnhOMytXOGYyU0o1a0VJNitIcm9yNnRsZWY1dnF0NXZT?=
 =?utf-8?B?RXZhK3VRajJRd29na2xMMndnU2dBQmtNMHFuZ2tPZ1Vhb0ZHNndYcVZmTU41?=
 =?utf-8?B?c2NwcHNJY2E3MXRJUGJ3YStJWW9Gem5vL1UzQ2l1K3l0Sm8rOVkrQ2tYS3RM?=
 =?utf-8?B?bXdJL2dWTkZYcFpqUUI3T0VBTWZuRjFON2xqcFcxL3lURC9VWEtFOHh1OEZD?=
 =?utf-8?B?Ym1PbTVxOUo1NFRhTlRYMU5DZnM1RTIwd2I3RTRSN1ZpdExORkVydjJtTXhW?=
 =?utf-8?B?K0dEVHJORkhONzBiaVVnMm1HNDk0M3hGdXhIb0ZMOVNGWkR1YXNYTmQ0dHll?=
 =?utf-8?B?eHhYSTVoUWljekc3V0lyZWFreFVFU3B1YWVwcTQ1bUxCZWpJZVBSNk02cWUx?=
 =?utf-8?B?bk9QOUw5M2xhUlpuRXYwL1lCUnE2c0V5ZzVIRnZLUkY5Z2JRbnVXS0RvQmk0?=
 =?utf-8?B?K1VsN09HV2xJN3VHdjlka08vcDZlaytWWm1VWHVEbndBc0hodGkyU3psMUQz?=
 =?utf-8?B?NTZjVWFLNWpKYlBFazFRWnFZRVpRdDN4Ull5dmdPOEdTTStWOWFaWlQyaHI3?=
 =?utf-8?B?cU9vVFNpYjN2dVA0NjZVejBJOENZTitpODhMdDVsa3dXVzRDSWc1RVp3amlC?=
 =?utf-8?B?QjRicUdRSWpPZG9OUjk4T0xYMWE1eVBuWWIvOEpDaEJQWFpXREdUWndHVVNN?=
 =?utf-8?B?UW83aWF1OHVYRlA0Ymo3RUUyMm9hbFUwK2V1Zm9aeUdYL2pobzBnYWh6MGZt?=
 =?utf-8?B?SndjVS9sUzZST1B5aGJqeFZySmpxZFd5SmV6dTJpbXUzSFZPbk1HdlBwQjZ6?=
 =?utf-8?B?ZlBhSEcxTTJOZ3dsQTgvVUxmMVNVRDMwcWpud096Mlg2dm5idXlUQzZHRyt2?=
 =?utf-8?B?NzZ2SUs3Q3hLaUJkOGF3aEtyTjBDS1pzREF5bDltWFlyTVBCTzdMRmpwM3hu?=
 =?utf-8?B?anRoclBPKzg3QXNmVHBIeU5OUXQ5czJtTGd3NFlrU2UzTXpOcEZaZWE1YmY2?=
 =?utf-8?B?YmxtN2cweHNkbHNkODkwYlhjMlk3VlRFZm02YW9nMkFQZHdiYmRGTjgrTG9i?=
 =?utf-8?B?TTRiNkFialU5WmdHZjZZanpDY2NPSCs5cFIyYm5LaWdXd0NJTUVaRXlJM2NG?=
 =?utf-8?B?Q08wU010RjZ2eHdqelJQK0NDZ3RtbHBwdSt4UThPcVFzdW1aRFIva1pFL0tL?=
 =?utf-8?B?cTFjcFM3Nzd4OTFaWGZQeVJUVGJEVnhtM2RGWGorVkJRV2M1M2JTVU90RFIw?=
 =?utf-8?B?YTMvdUtjVFFiWGEzQ2hUeURiVjc4TmhjRjVqNWFHdi9HSStTUGdadHZKRmh1?=
 =?utf-8?B?dTFjRlpheTdsMVdUcjVOcExhdlVBM09HakZRSXdRTGdjNXZQZ3ZQeTdyTkhG?=
 =?utf-8?B?N1N6aVhkOFN0MnA3RCtGbjdBVkViankrTFVNbkxoRHJIbTVmeWs0WnFqeG0x?=
 =?utf-8?B?a0xwTE1GUXNFdmVSL2F5WXQ0YUI4SFp1VG5nNkQybS94aEtCYnBSM3R6ei9o?=
 =?utf-8?B?b1NVblFnL2I2WmV5MW96aW03MEJTcjJjTHd3SG9TdnczSkZoT2wvcm1vUFlF?=
 =?utf-8?B?OFdNZGlpT1YwREluMEkyemtGblFTK1UwT21nMlJlQ0hDVjU2ZUYzOWQvNHQ0?=
 =?utf-8?B?bjNnWDBuVDg5YkxOYXNDV1lJN1dKMzlSRHVybzVWR1JpWEJvaVVYakNZYUlU?=
 =?utf-8?B?eWZublBJQ2RVZVZOSThWanVWL2dvUEhraU9DUWd5cHFNR3N3VUhhNC9zS1ZV?=
 =?utf-8?B?NEhaMkFkakdlekpndTVFVWFMSDBzMi95WDhkWFBGVldIWksrbzQwbG1JV3c0?=
 =?utf-8?B?M3BkdFpoU05hSmUvRWhtbGNwdWpqSTVQWWk2NXpYcWNjN0NZNXdBRHRvR0h0?=
 =?utf-8?Q?32hAzQMhI5vNCFYA=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0ae26586-d6c6-42e8-0536-08de703f23e1
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Feb 2026 05:16:02.5260 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: JfQJhPZYa8VQuMGo2o1kV8glKrgA4WayIchVuE/ZkdZm4bb6mKovxElq4ukjgqmQ1czh3WbnmM0pJqafTH19PcjJ7BGzdirjFBxfBhrDwcc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7443
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
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:mid,intel.com:dkim,intel.com:email];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: EBC20164BE3
X-Rspamd-Action: no action


On 2/19/2026 7:54 AM, Suraj Kandpal wrote:
> Make try_vesa_interface as true by default. This is so that there
> is a fallback mechanism for Panels which needs VESA DPCD AUX backlight
> mechanism to work but has a broken VBT indicating otherwise.
>
> Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15679
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> index eb05ef4bd9f6..f14abc48a2a7 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> @@ -644,7 +644,7 @@ int intel_dp_aux_init_backlight_funcs(struct intel_connector *connector)
>   	struct intel_dp *intel_dp = intel_attached_dp(connector);
>   	struct drm_device *dev = connector->base.dev;
>   	struct intel_panel *panel = &connector->panel;
> -	bool try_intel_interface = false, try_vesa_interface = false;
> +	bool try_intel_interface = false, try_vesa_interface = true;


hmm If we want to fallback to VESA interface and we already check for 
Intel interface first, then I think we can drop the try_vesa_interface 
variable altogether.

In the note below, where the rationale of checking for Intel interface 
is mentioned, there we need to add that some VBTs might be broken (in 
the sense that they advertise Intel interface support, but are missing 
the necessary support in the panel).

In such a case try VESA interface as a fallback.


Regards,

Ankit

>   
>   	/* Check the VBT and user's module parameters to figure out which
>   	 * interfaces to probe
