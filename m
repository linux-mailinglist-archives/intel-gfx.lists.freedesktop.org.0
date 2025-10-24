Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DBFAC06A2E
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Oct 2025 16:12:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4237F10EAA1;
	Fri, 24 Oct 2025 14:12:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jcwFNaXp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7B76A10E1F9;
 Fri, 24 Oct 2025 14:12:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761315170; x=1792851170;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=zIDhDLGlflT3LxgItZxgr5AKx530ghn+boxWbj/1LRE=;
 b=jcwFNaXpZZd/ZXfb/o5XPmLt3H13eR+7KMba16I+HA6fnDT4jbEhsQDr
 p4HLT31ESddU6pFZIH8qk0cNLK+23rzBh93G8Hfj0SmTpIm2ciZAkTlGM
 ORyHOJBIqZf1fDn6xDAfjxPVn3LKO2WszKZK+tl7iPjmWFTaMORm4S6+8
 QAtn6702w5+3EGdB7N7/a8lxgYgmL80jHvwp/D8GPvLdznGBAYbmYvSTj
 IGnjeIW1efDaI6U9+jP0+nCGq0lkjxBoA+on0yXJ3lXXECHA6s6oYf2HV
 IGk3uwpS8sWVw5VGwZaqwokpKGjNrIKuXR1XHKFF1rdQtdsDQv7PMEIkR A==;
X-CSE-ConnectionGUID: QnB59ITXS36ZYu4dqMnVNg==
X-CSE-MsgGUID: NLyzbXtFSiOnaQfXeaud9Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="86127564"
X-IronPort-AV: E=Sophos;i="6.19,252,1754982000"; d="scan'208";a="86127564"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2025 07:12:49 -0700
X-CSE-ConnectionGUID: wKeBk1/MQBurfiDwN50yqQ==
X-CSE-MsgGUID: l3K2U1AkQxmTqqWmU1mXTA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,252,1754982000"; d="scan'208";a="184920309"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2025 07:12:49 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 24 Oct 2025 07:12:48 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Fri, 24 Oct 2025 07:12:48 -0700
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.19) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 24 Oct 2025 07:12:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=awsTefMYjkvh1Fmn5xT7xU6hdqxnMIKqASJALLE/w4hxoXQGMCwsHbiPgcyRJocyy028VQa4+7NiVanaqL0Lz1ghuQQC6DNv6TugZ3+KZOh2DbSG7FYItJSZFbYl6mDVfgdlpyD5Y6InT0ewE2NTV12aaeY1Vcqh1UVsSd2dgQnO5G4b+clc6ggAvLGDbQTYt87ogcETfbWe7xjuOgYm7ZBgulrnKQ0m62BdBKs+Y5m91qnqEJgeNX5z/Oixsguq3m3MuDoYEPFNoNSB1TAunjL3Hsy42MKwBugMFnlbvemy0b2b85Od9Zai7kNGCta6IPTDDYnG2xkuqIK7tG4Blg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dIcKX21R66mloqv1oEflaDNG62zG+AgKYHm/harakS4=;
 b=IUF7qiQAG8FAd6I+ilRayg9HV1UpxCMe3rUXvdRPwJu8IB68l+FJta/YnGa4Kd0csU8R1chhX40tMqx/IvoNGQqRRp1/eck05Afz9ORI2L2w8vgUM3Nce/NHgwn31q085dU4Q70tvbJpnbmKs+Zl5PwqvWG0LfIVVwf/Webmm66XnO1+JHBrJiK4Rv5ostoWeW/0DvGziGlW+hedcQzIkUJ6dQaEAfBtnsaNZcw8pJJU51aSS/zASFP9D1MDtqREAtjb0Ocr/L42DCSwtJliJyN9f1fvVklqShS9yxiUznI5u6uL7BfrV4ZRteYE41tIqghewRLVfpEgYpBGK8PVzA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by PH3PPFEEDD586DA.namprd11.prod.outlook.com (2603:10b6:518:1::d5e) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9253.13; Fri, 24 Oct
 2025 14:12:46 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.9253.011; Fri, 24 Oct 2025
 14:12:46 +0000
Message-ID: <f6884a88-d320-4908-b185-34b2282c8a29@intel.com>
Date: Fri, 24 Oct 2025 19:42:40 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 16/22] drm/i915/vrr: Remove redundant HAS_VRR() checks
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: <intel-xe@lists.freedesktop.org>
References: <20251020185038.4272-1-ville.syrjala@linux.intel.com>
 <20251020185038.4272-17-ville.syrjala@linux.intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20251020185038.4272-17-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5PR01CA0195.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:1b2::6) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|PH3PPFEEDD586DA:EE_
X-MS-Office365-Filtering-Correlation-Id: 01022ec9-7448-4487-e568-08de130767d8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ZUMzeFhkVExUZFhURVZhMVg5MFlSYUNoaGMrZEo4RElkNVNqbDgvZ1YwRC9T?=
 =?utf-8?B?K0I3VWp0WTZNTWVzcjV0ZFU4blB2SFFMS24wTk9vODRMR0srSVlhbVRwNGtM?=
 =?utf-8?B?M24wZXptdEM5VEV1aHN0VEJhY0N4YlBZR2ozL3lhajdDbTg5aVR3OW1uandZ?=
 =?utf-8?B?ZnQvOEl5T05WUTVjanVzRENpVzRPdU5aNWY1QURkdUI5NGN4TGwxZ3lTcEta?=
 =?utf-8?B?bXhaNzFZRFYvbU13bXc2M0VxdU1ER284YnFSRXVNQVFESFR5L2M2RkQxdXV2?=
 =?utf-8?B?VE92MU0zMm1ieC9udmZzZVU1OFEwWVFHU1ZZcG1INkFmbCs1MzNFK3VJZk94?=
 =?utf-8?B?cmtHS3FqSkozWEF0b1BpT3ZSb3UzOFF0ZnN6T3FwdHhyNGNkYUFZUDdSSW0w?=
 =?utf-8?B?QXZFQzBtR2IzbWdnVEwwRncwdUFRYTFwQjlKSTBvUjZuRk5tdnM2b1d1YUcw?=
 =?utf-8?B?VFpUZkhtcEpTdWVQYS9FWUtrUTBlVjhoNmoyS0dUeHY5K0pKcHBEVG5vNUNs?=
 =?utf-8?B?TWV3TWoyTFJ3N083RU8veGpVVmNYVkJ3cm5xZkNzb3VlZ0xIcTJNNXRmZURv?=
 =?utf-8?B?WklWY2M1WElMcXZmVVYvdXFiYmVKa0dMZjllRG5PbVZ5bUhaOGZEdDBaL0g0?=
 =?utf-8?B?SWdqcUtFM3JyU3BZMHFlb1NQVkN4Sk8wbm5SUkpKbzFjRXcyL1NQaURJMlp4?=
 =?utf-8?B?eFgreTduZkdqM1VFTHl5SzZpRXJjeWplNUgvNGZWejVsYm1VSVU1ZE40eXBw?=
 =?utf-8?B?TEZkVktNKy9DNDgxUVpKM3cvaGQrY3FNN2pmbENENDZJVEM3NlFKWWdlUEx3?=
 =?utf-8?B?YzZXNVpsNzFqcTFBbDAwODBOSXM1MTEzWWZLanBCWjYzbkdja2xodkE5eHpD?=
 =?utf-8?B?VUVJVHRINncxUzBockxnWVR0cGtFOFF2eEpueTBhMnRMaEkrcklRRlV2b3VM?=
 =?utf-8?B?cXFEM21LTmYrWHRNbEV2SWJaWGtNNEdnQlFLOGUrd3hSLzBiVjVyMTArL2Nw?=
 =?utf-8?B?Nkx1VWZDS3BmNkNZcUttUHR2NzZla3NzTEdiTUZjRml5YlV3ejdGQmUrU0g1?=
 =?utf-8?B?dGwvRmdDZm1YVEtGcDd1T04rSkdnKzJQMjd2WWdISzR2b25PL29vQ3M0TmN2?=
 =?utf-8?B?WE1BbEhHZ1EraWZmUGVpMGdrYTlsMEh5SWdScTVGR1VQaElkcHdXayt0M3pi?=
 =?utf-8?B?SFBuL2xWOFdLODBWait5OXRINjl0dHF3UmNPbUUrWnkvT1ZEUENjMy9ybmtB?=
 =?utf-8?B?a3NoaUhoZXFId2ZPaloweGZjbk9Rc2pJU2w2aVhwNjdieGlTUWVZWDBIZkdy?=
 =?utf-8?B?UFNscDVLUVNKVlZNbHB5NDJkbG9Ecm9iUEs0bDRtTHJpTTl1WDM0dnVMUnhz?=
 =?utf-8?B?ZVd0RWxuUjZaQlVQY2VMWDVBL1J4MXRyLzhpbGswTlBUSURNa3ZCdW5DVTF0?=
 =?utf-8?B?ZHpvWUhNQVdWVHVhTDBhRmFjbjVBVnNHUXYreDhnYjVDN3JqM2xvdUJHUk1y?=
 =?utf-8?B?Q1NPckpZcWVDTjhxQ3J6OU5JbGN1a2Jrb3pWS1Nidnh1WHhVa3UzajlJVXJ0?=
 =?utf-8?B?akhEZzhDWHdPOGxEWFpYbzdtTXhWNGpqcE5Da0lPRFZCVjRIeStjMDgwLzZw?=
 =?utf-8?B?Q3pPOGtHR3BIQnRJU3hUNStZakV2M2hvMWpWQVQzYW1mLzZjV0VQTEF2MWtZ?=
 =?utf-8?B?T3ZRS1NBcFBqNEcrRC9xSmh5NFdlTVYzOU1sSzIxMlFOSVFpMU5SMkd4M3R1?=
 =?utf-8?B?eTN2RmF4WTBPWmhORVZpa2tvbUVuK291NGpYK1U1NlU4Wjl0TXN3YWR6UExr?=
 =?utf-8?B?b1J6NHZmNURkWVN6N0MycjkwZm8yeVJUWndsNXBmZVcvUGFwTzA1NUJCOXVB?=
 =?utf-8?B?THFhVWlhTitualBUU085QnBmbTBja0NhVzhWUzB6aVJ2a3JLY2podUM2SllJ?=
 =?utf-8?Q?qpex3Pa6+YIs6OkkOEqIubLBU9kTU0DU?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?L2dDdDFJRmlKNU5KUnlxRWxraS93RlVhREhyL2trRnY3eGdYRGQvbkErR1FY?=
 =?utf-8?B?N0NjeGdCYnRza0YxS21RdWR5MU5SZVU1L0p1ZEF6Wm0xWW1xeTdKUXMyTExF?=
 =?utf-8?B?aEtPRVVXY0YySGZQbnFBS1dNOEU0RzF2cmdDRnZHZ0JTRW1ad2h3Zm96RTZO?=
 =?utf-8?B?V2k3c28yNTJWaDg5ZGVadXJNalBJTXJabGFrMEkzb2dTcGYwOG5qN1cvZ1JR?=
 =?utf-8?B?c3JFdCtZS2E0NzYrZllLSlJRYlUwWkQ2MkRoUS9zS0tnT0c1VnV2MGdkeHc1?=
 =?utf-8?B?WXJUSzJ0RjRLMWNpdWtkYmlXT2s4TmxjYkFzYVRMQnFtSEJuQnNicVNkVEJZ?=
 =?utf-8?B?aTJuVnFtSkJWSzMyUGlZQWVzeExjZ3VHWE5Fck10R3RqNW9mMlBCK3NBdzRo?=
 =?utf-8?B?LzlNNkRqYVI3bW96V2QvTkp6WHVxMC9JaGxKbkUxaFowaHNMdDhWbElwcXBP?=
 =?utf-8?B?NUpJVnpnVGE5SU5vRkFCM3I1OTN2ZXlBV2RFRC80M2RkNEVVekpYMnprTmVC?=
 =?utf-8?B?OXE0M012Z253UVdCdjdCYlV0cXJTMnp2MU1ka0ZtWHBneGtJNGgrTE92eHRa?=
 =?utf-8?B?eExTREFYWEI2bitZeXZRWFZDUStaS1VERGZvRWRKRXZZQkFBZWg4YnR4dVJl?=
 =?utf-8?B?THRMWnpBNUtWMkM3YUF0bXhhaWk1MzlCU1ZYQm54YWFDYTZjWUo5QlNZTnhO?=
 =?utf-8?B?VVBaSTJwdGc4SEtKaXdKdmUyNnVvUEN4SWxSR2RaMFVJV1ZEdk5KSGRGVTFS?=
 =?utf-8?B?SjFteGcvcHUvR3NzbVJTOUM4S2Z5VGFWaXM5N0gycW9JM283V2ZUaVhkY1RR?=
 =?utf-8?B?WUZuWE9PMmx1c3hhVjdOaXRZcjBwV0FzS3lwUi9JM254YmVuM3pjeEpWMGF4?=
 =?utf-8?B?NEIvTXFPNU8yVFpFZjhtV3NjSlhaaXRTNmJGbFFQK1hKd05HUEo3cDBiWU5k?=
 =?utf-8?B?ZFROd1lNaVZEWUE3ZlR0ZTVXR2swZ3R0Slh5NS9pcmx2UU5ZMndlOENsVXdq?=
 =?utf-8?B?SVo2SzlyZ3pCemxMaktxN2FPK3ozamRRWW5ZWUxSY2hMVjFnU1FlTmNPZ2dw?=
 =?utf-8?B?ek5YeGlieHQ3VWc0K1d1cEVpbUdWTHpUcEpaRmE3dTdCenV5Q2xKQmFqc1I1?=
 =?utf-8?B?UTJXQjQ1L25uOFpyU3drZTZOTkxTRjdFODEzTTE0clRZZU1oMXhrV1c3enhG?=
 =?utf-8?B?R2tJbVpEWHFXajVjVVMrbWx2cHN1UWNaOHdRM1RicWdMWWdsb1llWnlQUXVy?=
 =?utf-8?B?SGZEK2NqejFmQThWbTkveHV4aXpLZ3B0bmdac2tjV1FQeTJGVnd6Ulg0QzRX?=
 =?utf-8?B?TjNPQlgrRm5Wdmp5U2NBUGhjR0xyL2N4WjNnNXBLcXJ2dUdqVGhrL2pSQ2VX?=
 =?utf-8?B?am1kTS96VHBkVGR1blR4UVI3eGNhUlhmV0x3czU5YlpyMml2ajN2OG1OT1oz?=
 =?utf-8?B?V1loSjA4VWxOdEpZTGIvVUU1R1lzMVR1Y1g2TnZOUUQvUHZXYWtTVVpZSFRT?=
 =?utf-8?B?dzUxcC9rOFNGOEw1dW9xcXdTNGtpaUw2U0RRZ2VuMmVwLzgwYmNuYXZYZFZH?=
 =?utf-8?B?NXg3SGFrOFRxVDI0anFHTEorWFdxeURrWkc5ZStDZDl4aklxT3MrM2N3L1VK?=
 =?utf-8?B?ajIxRmJxd1ExSzRsekQwSzdEclB4ZU5obXZzejlMUzdDbXZxdlhoTjBDZmFa?=
 =?utf-8?B?NWxnZzJwRFFOWnQ2L2dTbmVLVjh0cldMSHgzMWl5TTk2dlZZRklOR0hDOGRz?=
 =?utf-8?B?dm9GaDBHSjE4NHBBVTl5aUpJOFVmamtuQS9CZC9DVWlkWk9xanJkR2Z2cDNo?=
 =?utf-8?B?TXNwbU5tVTF1SGRmREtaM1pMTll0RTRRbmF3VUZSWlVPS1hkdWpsQjVZR0J4?=
 =?utf-8?B?b3huSGwxMTc4NHpmSW92RGFOandiVjJtcTJGWU5zbmwwcm1QcXorUXRtUHF6?=
 =?utf-8?B?THZRaFNzaHU2RWZxZ1RudlBXNHMwNkhIdW9xZUpCYjBDeHU1akdSMTV4NEZz?=
 =?utf-8?B?bkN2Q2tTSUgyT1hLMHNGeEozV2dIU3B0akhTZngrWUxDek9hcEZLbWVSVG1Q?=
 =?utf-8?B?WU9OaW5QVXlzRHBvdmVLN1NNUjlYN3BQcHpzMy9Na3phSS93YmtSZVFUSklm?=
 =?utf-8?B?a3MxUE81b0pVMDhIS01wN0hNbmJsdU01dmZwTVM3ZFgyek05d1Uya1BqWEJq?=
 =?utf-8?B?bFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 01022ec9-7448-4487-e568-08de130767d8
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Oct 2025 14:12:46.4474 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: VumdiQsftROh6mq00fu0taJrlh5d/qsbadzQuUR15RzGfLjwZdSOa9Mg8+470wCHHZ1jTN5aMi5xNSOJjyp4yIMU8Debq8ANHrG8hdC6YTA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH3PPFEEDD586DA
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


On 10/21/2025 12:20 AM, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>
> intel_vrr_transcoder_{enable,disable}() already check
> for intel_vrr_possible(), so the extra HAS_VRR() checks are
> redundant. Remove them.
>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


> ---
>   drivers/gpu/drm/i915/display/intel_vrr.c | 6 ------
>   1 file changed, 6 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index 67b1ed606d8f..b64a54d22991 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -760,9 +760,6 @@ void intel_vrr_transcoder_enable(const struct intel_crtc_state *crtc_state)
>   {
>   	struct intel_display *display = to_intel_display(crtc_state);
>   
> -	if (!HAS_VRR(display))
> -		return;
> -
>   	if (!intel_vrr_possible(crtc_state))
>   		return;
>   
> @@ -774,9 +771,6 @@ void intel_vrr_transcoder_disable(const struct intel_crtc_state *crtc_state)
>   {
>   	struct intel_display *display = to_intel_display(crtc_state);
>   
> -	if (!HAS_VRR(display))
> -		return;
> -
>   	if (!intel_vrr_possible(crtc_state))
>   		return;
>   
