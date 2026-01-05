Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B43B5CF1F85
	for <lists+intel-gfx@lfdr.de>; Mon, 05 Jan 2026 06:27:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A1E7110E0AC;
	Mon,  5 Jan 2026 05:27:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ez8uvThw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E0E2710E0AC;
 Mon,  5 Jan 2026 05:27:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1767590873; x=1799126873;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=BSgLFME2nnWbXv3EwKm6V3ad/PnOw7eb1hjtm9wNiCc=;
 b=ez8uvThwskxvTpdweqyTpWR9IGcbnmWaaWSd8+98KDdxPB9vWv/0hpqU
 wmaJ0pdm63S2TqkFYF2P4xCIq+n9WhmYSSiZpUjvuXsYGONs/OKuPSo3s
 Yn7mrEv4Sb23Bztt/b9ENSVTeo87pudeggQGw7qvx4hPHDmT1HteenvN6
 QTl0QNP7tSm2vBZzLv7r/zr+sazPIjt+mjlOC9wPTkxfY5CJZWrQPfxYM
 +dKuZynMSluenMdK3XL+0WeUTtfO8+ZXJxVRGGu5tL/Oy5GEt9JVnn27k
 3iSA0H4nAeyn3DANjejcCs24IQdfHXgHQIlb4NZoQiQDws7fL2ugh4ms2 A==;
X-CSE-ConnectionGUID: 3cALcEaiRKalW2cOtsLFuA==
X-CSE-MsgGUID: ER3Otd7vRqKiqWL7B/5o6w==
X-IronPort-AV: E=McAfee;i="6800,10657,11661"; a="79678102"
X-IronPort-AV: E=Sophos;i="6.21,202,1763452800"; d="scan'208";a="79678102"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2026 21:27:52 -0800
X-CSE-ConnectionGUID: NVV4Q+JvTBqlnid0CntHpQ==
X-CSE-MsgGUID: zbhquXk4QOKHew/2DUaQ2g==
X-ExtLoop1: 1
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2026 21:27:52 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Sun, 4 Jan 2026 21:27:51 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Sun, 4 Jan 2026 21:27:51 -0800
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.51) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Sun, 4 Jan 2026 21:27:51 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=bp9s4+iHq/o0mU6C5w36nXtjLHAmmt6HJ7IbRsSmUQ04L9g8umBVzSRxUCF7s1T6SH9dIT9k13wiQGiBJs+xX/uePy87RdhtknKHOZXUaU/JHuMi8mBBO3tvkIPFUxHC9LvNqXU81q1uG5nsO9ZLjCkdlwsM0x/KgGWQdWvfGc9ZNV4ddRXBlLVFqSzh8+A0qSez90sN4iAggKqpyx4YDnV4rmvbu+hGOyYQ+K289ASdGMRMpztHbh4SzDQSU/bt1agGdP9kXdSa5zMhQJ6LLU73o5nkRsIIyqi9fwXLdmHNaPc9pAT3MgH4+F+hCNMKksPW9wQk1hezBNyvdBHVUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=i8b2JJKNgxG0cWRQhO22qT65hrLsH8P7nNhjqvn4KG4=;
 b=XV1IoL8rF5N1tWd8/AJ7LI/dZQdIBMNNoazvu9YLiISEzl2EWbUNIZcAlgKWIi1VeviZSaUuG3Kz8MVy8XCMqBNIYJX8ZwyZBw/4zXFgTMf7SDKY0k1ekRSoLdffnxTi5Q8xsPSOnQF2eBI/QjF6GMkIfUM84/JSTl7OfR5nURLusPOZ4uQOjpJeqUOT74sTuu1U66JAg0xCmpNxTXKfx666WmgHp6yMGp0lilcEvLo54yt2LdN5gQVKejoaj6pXxrgNz1+S8ZaoFje2JbyMFlutqvhOgbgt3CQyW1khVCGcqvEYCje2B+2DRQtRJjWXMTkAFHbCID3Yzqh55+SYHg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SA1PR11MB7087.namprd11.prod.outlook.com (2603:10b6:806:2b5::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9478.4; Mon, 5 Jan
 2026 05:27:48 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.9478.004; Mon, 5 Jan 2026
 05:27:48 +0000
Message-ID: <12cad47e-773a-43ed-a7e0-157569a1e129@intel.com>
Date: Mon, 5 Jan 2026 10:57:42 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/3] drm/i915/ltphy: Remove state verification for LT PHY
 fields
To: Suraj Kandpal <suraj.kandpal@intel.com>, <intel-xe@lists.freedesktop.org>, 
 <intel-gfx@lists.freedesktop.org>
References: <20251231052315.77828-1-suraj.kandpal@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20251231052315.77828-1-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5PR01CA0201.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:1b2::9) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SA1PR11MB7087:EE_
X-MS-Office365-Filtering-Correlation-Id: b6ad718e-8136-47bc-0e27-08de4c1b29ad
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?aDA3bTNKSklFekpoR25OQW4za3hWSW0vMnh1alhsakQvbTh6ZGJVazk5V0Q1?=
 =?utf-8?B?Mk9UVlJqdkx2L3h1VWFRVzhqNHVYT0lDRlBiSnBPbERGR3F5eGRBYzFiOXdq?=
 =?utf-8?B?MzhCeEEzVmZFZmxPNmladmhDK2krdFA0Rk53bENQNkZNVGZJZjBVTHBUeHRv?=
 =?utf-8?B?WGNDVFBDZkp2ckhhN1RmMFNzek9CVVc3aE1nOVpmV3Nmak4rRExXK042dStN?=
 =?utf-8?B?czRmeVlYRHpPK0poMHlsb3NvekxCQlZLUlRmekZ5ek9RNFhaTTJjdXRtL3Ru?=
 =?utf-8?B?L1JwcG41aUgxN2xsRFJGWFdlalg2bnBSRWU4N1pjTEZFZmswZ3BuUVNpVmlQ?=
 =?utf-8?B?WlhmU3lnUXI3RnNva2NsQ3BOeUkyb3R6c2JGaDBvOWhtMktMZkR1aFRmUUNF?=
 =?utf-8?B?SzY3cTFVRmI4VDVkTDUySUtDekFjOXpkeDNQZ0lxWUZkandBL1JFZkYwQVR0?=
 =?utf-8?B?NU1lL2tnRlRlVEhjNEpvSWJ5T0UxbWVBa2MrQkNuVys2WWdmZ3I0RHVIdDBI?=
 =?utf-8?B?QStzamtiejVvMDBLZDkrQ3NKd1J6b0dDekhRY29ObW9iaWNsZXJwMC9OYkNa?=
 =?utf-8?B?M1NIRHRyTG84N2RKSkZrTmJPVVlkVjRLMGIxWnRkNUF3K3NGUG1mYkxEenRu?=
 =?utf-8?B?cHp0OWh3T1N5TVdYSVQzQllQQzZSL3Vta1VsQ0hZakFYL1pDbVlJWFhNUnJK?=
 =?utf-8?B?aU9xczFVOEVyenVVcDRSTEtaQjY0VFdpK3VoQW5HSHgwSmFVQ0NhWXhuWFJM?=
 =?utf-8?B?R1BPZThCUkxTMXNyUmUyNEVDRzlQNmhhZGRhQTl1SXhaUll2THRvanNJVFdM?=
 =?utf-8?B?S2FPZGNoSUZhNW11VmRFN3NvRWtrdXZNSU84VkJmYjVOa2g5Qkw3OVpyWm5G?=
 =?utf-8?B?SElIaTZ4YjMvc2R3WWx3ZDA1bnJzeTRYY0FUWUZJUGJtcEZIbDZJcjBxRzVq?=
 =?utf-8?B?b1IxTmhabEZRSjJzOXAvV0U5L1plNDZ3QjI0dkcvOThVS2JVL3V2NHlRSFlN?=
 =?utf-8?B?Q1ZrMkp5WisvU2NiSWtUcFErb1NzUmFIaS94K0JGUDFVTC8rdURrTmJiZm5l?=
 =?utf-8?B?eXhsQjVITUI4QlhLNkx6QXZoTm9SS0FpOUJ1VXhVU3V5N1NJY2xRQThQbVhL?=
 =?utf-8?B?KzZKd0ZHV3lRemhrZVgyam5qNEVEYzFDT2lodFd5SnNYQzhycHEwVDRnUWph?=
 =?utf-8?B?ejZ4Q2htRkFUQ0dDVjRqU2Z4Tm5ZMm1QNFZvK2hGNFlUL1pmWUMrWkRBbXZp?=
 =?utf-8?B?bnliZzNLd0ZVc1E0WGxmcUYrTDhLcmQ1bEtmS2ttTWZqdWZsT1NaUCtKRXdP?=
 =?utf-8?B?Q3NMRnMvT0dZRHZqNlFNQWdIbFZTbE1sQlI2WmVWUnpGSXJ2VUxDbllRYUFF?=
 =?utf-8?B?NG1lU212enRZMkcyaDZSc0lFMzRFZ1EzTGxOM0ZOa01BMHpacktKak1DUE12?=
 =?utf-8?B?Q2RtR0ZWUW0vOGd3S01OWlcyTE9PSUthRTBJWUdNdExOZFcxUFIwbHhmSW9M?=
 =?utf-8?B?WW9HOVJNb2VQNmRlVU1qSWEvYmo2dEFPQ2VVVElJWUdSRFZVSFJIeTNUNWlm?=
 =?utf-8?B?TFFnWkVEQVQ0YXlmMnE0aTRjSVVvNWtYVTNiK3ExSmdJZXN1VlNZVitUcTRN?=
 =?utf-8?B?YU1HajB6M2pQTEorQmNXanpnWG9OY0xHeUFHWEpiTnBINDgyTkhCVEpDRjBs?=
 =?utf-8?B?V1dpNDFZMmVrRWJibzFkYitoTkVmallGbVVGZy9TaGxaV0wzb2IwcDI1ait5?=
 =?utf-8?B?cWdkZGNlZXdzRkdLa0RPZUtMaloxelMxWVl2RldRQzFrcjBQRTVSd3YvdXN0?=
 =?utf-8?B?WVp1ZkdFSUszcXZlU0hPVEZhVmpNVklJN3lUTUNCNVk5WDRja1BkYXo3emdU?=
 =?utf-8?B?K2xUWHBpQ3lYRFJPaXc2SVBOY2d6Z1BLa1dkRi9xUHFXWDFrNUtWaEFLMmJO?=
 =?utf-8?Q?mAsjCJYsG1wu8fCR9zierg23KzyE9MbK?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WkVrSDBGMUFSdEUyY0UwaGRYTldKaVFFV0NnVmwxY0tPaU5HYmJESkZjL2w0?=
 =?utf-8?B?T2QwbVZWTm0wRWtpaGFaR0pyOG9uRk95UDA4Zk1CRGsrZEY3eTNXVSs5eWly?=
 =?utf-8?B?dzREZjdiYTJ4TVdZYW9qYWJjdWJEeFdNM1dpcDF1QzF3NTlaRTFDNFZZUnhG?=
 =?utf-8?B?MGh0WFVMUTJwOGdIcDFlYkRVekNudlJIdldBMllIUTMrZVFTTmVvQngxUjBy?=
 =?utf-8?B?cEJQSDZrc1dzdWkzN25lamNMNkxGWTlzamtXNHlCZzRFWGRwR1lyd1hIN1Zk?=
 =?utf-8?B?OTJWWEFlZGNhTTV2Q05kUkVFQmdqSDVFeHJvRGVLT2NIemdZcEpaZTN3M1A4?=
 =?utf-8?B?Vkhld01mdStiVEdsMW5lZldiQnU0WkZ4dnZJWXZkUUFqYnc5OWxMbWRzTDl3?=
 =?utf-8?B?c3lVY0w4cVllYlBYQ0Y0aUJ3TlgybXNaQzRGbzI2SWYyMnV1dEVwMWljZ1FV?=
 =?utf-8?B?amZreUVQTGl4d0ZtMStmYlA5Q1FUMTd6dlplbUc1cFB6ZEE5RjR4ZG12U3Uz?=
 =?utf-8?B?TE83M3lEUGQ0MitWdDZqOUZRYTMzeW9mUjJhZ2hSSTlnS1REUXlPUm5UYzFV?=
 =?utf-8?B?QWQyc2gzTzBWQ0V3aDNxeDY4OGc0WG53R3d0cnROK0d3UzBjcGVzaUhGeG1U?=
 =?utf-8?B?MEUwSFFmRVNtMzI2VGF1dEZJbjIrNEJENzd6ZHAzZlpLYWM4SG1DaVk5MzJP?=
 =?utf-8?B?MDZQaGxpakdHWkV0TWhyL243SDRNeFlnZUI3UTZOVVhsV0t4aUdrb0FvSld2?=
 =?utf-8?B?YjFLYXhKdTQ1OXhtM2g5cVlDWU9IWGNZSFR5YUNqN3lMS0NXZW9XbTIrby9Q?=
 =?utf-8?B?RzRaWFpnUDBtSUFLZHJEaWw4dDY5dXhiWGJVcVZJVzROY3NUeHlRdmlPRHFW?=
 =?utf-8?B?YTVVcjBkcTVOZ1dTeHU1ZVBCWFRwaFROd09VamMzaitpdDA1VnljcjkrSGds?=
 =?utf-8?B?UFk1Qk93YUhyeUtiS1dRSkhtYzZGZitpS3YwU3hTWXpkbmJXWXhEenZ6REFk?=
 =?utf-8?B?TG5BcFQwRlJralFCQVdqUUZtdDR5cmJ3b1Z0TFJuRTJPZkdFcWVqNmdBeFhE?=
 =?utf-8?B?SXlSUytuV3dFM3JUZmlub2FmRDRmKzRGSmJacnpKSlBwcCtKeVpaUHp4M1F6?=
 =?utf-8?B?QkVwWDQ0dTJ4UWpHK015TGc5ckM5YkZWNXgxRUJTdUxrcEtpVDN0aDlGR29h?=
 =?utf-8?B?RzJkbDA5MitGL3lnLzhPKzlCWUZoQlRUSmhETEJTdms4SlJlU3ZjclI2VVpY?=
 =?utf-8?B?YUpGcmd6Y242QzFBSzgyZWJmRFdWVWdxWlpTTDEzemY4UWFRN3c2SkFUUEU1?=
 =?utf-8?B?aDlueHhDUVRVN3MwSzZlOVNBdi8vd2xmcXUyeEtHc1hKc3VMaE8xVWFxTDEx?=
 =?utf-8?B?eWg0Rk54Z29wWnMxM3ZKNm1qaThVK213R1ZsdGQ4RkpuVmZaNkVVUUVlQ0FY?=
 =?utf-8?B?UkZ3bFZrRnhNQWdocE90UW4vVUZzN2QwdGRDM1ZmUEJvaG05N1JtUmlUTllh?=
 =?utf-8?B?MVZsckl0UEs3MVlyRVhYQk1CUUE5SnFITDhoUTh0WCtxdFovL29zcGlPc0tw?=
 =?utf-8?B?dU95M1ZYdzdBV29mWGFPSVU0bXBrTU14dDZzU0NvK0NQcmZWcWlvMTBxQ2ti?=
 =?utf-8?B?MCtxTWlpRHM3ZWl3YzRsSlY1Q0hJQUJwQzliYjNzR2s1Z0RmL292UVh5U25q?=
 =?utf-8?B?WUlGQVU2ZEdpNVhrQ0dTazRSVlBzakExaDdOaFJHekRvUVJJcmVqUDM0TEdo?=
 =?utf-8?B?WVhPRTJWYzZFdEpBQzBxY3ltdXoya2txZWZkWC84YUZDM1YxajhYZC9kWnY3?=
 =?utf-8?B?WkR1VENLbTFGci9jemcyZ0xCVWRpOVFmejZ1QURIdHpTWHFYT1JveW1tVTdI?=
 =?utf-8?B?Z3phM0VNNkJEWEZLQ0xWWjE1YjU1N1BjcThYUEdYYld3KytJZCtVWm02aDNn?=
 =?utf-8?B?TkdYVnNwNXFlKzgrWGhTbzFYckJxWCt2YnBwdUxZRTcwSHNZM05ZTlgyWVh3?=
 =?utf-8?B?TDZaOWtUY1U2Y2RIb1dlajNZUFp0VmF2TkdGa0NmQUR1Sk5LdEFKYk4vTUNG?=
 =?utf-8?B?cU9rNXN4RjdGL3duUlBKWEFBc1NtcG5lSXp4MFplUUdsZzlobWpyV1NGUmdZ?=
 =?utf-8?B?dVBRdnJnTEVkVlQ0MTFnZFhjcitsOENXRTZHbDZ3QWlpeDZNL0xwUHFlbFNl?=
 =?utf-8?B?MGxLdFNqNm91Sm1qOTBmaUVXM081dzFIN2Z1bDh0bG1GZWYyVzNpNjVMVjN3?=
 =?utf-8?B?bHdiWTRIZHRwYmdXS3Q3SC9CNkN3OW14UWNydlN1bmRGWDhHVmZ0Q3NCMnJu?=
 =?utf-8?B?MGt5bENidS9WMHNQeFlUTElCTkluczZoRis4TWdWY1Z0M0RWUlVzaVMra2Fy?=
 =?utf-8?Q?yUEKkD3YIdOA0N0o=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b6ad718e-8136-47bc-0e27-08de4c1b29ad
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Jan 2026 05:27:48.3551 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: VvzEP6gYa7/cihdmwcb3h7P3dcTEnHvx9eftqssNIajCUWnl3QoDhBTqNyQjJmHDXP3fKqHdLFH5J3c6uhPJ+MdukJuFKkHaKHq/wohaMJE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB7087
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


On 12/31/2025 10:53 AM, Suraj Kandpal wrote:
> Remove LT PHY State verification for all VDR register fields other
> than VDR0_CONFIG and VDR2_CONFIG since those are the only reliable

Nit pick:

I think shorter sentence will be easier to comprehend. Let the sentence 
end after VDR2_CONFIG:

`than VDR0_CONFIG and VDR2_CONFIG. VDR0_CONFIG and VDR2_CONFIG are the 
only reliable`

> shadow register that hold on to its value in case there is PSR/PR

Nit pick:

shadow registers that hold on to their values even with the PSR/PR features


> which can cause power gating internally of the PHY.

Hmm.. it seems that there are few things implicit in the message.

I guess it would be easier if we mention the current practice first, 
followed by the problem faced with the current practice.

After that the solution of only comparing the VDR{0,2}_CONFIG can be 
explained.

but that is my personal opinion.

>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>


With the commit message improved:

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


> ---
>   drivers/gpu/drm/i915/display/intel_lt_phy.c | 30 +++++----------------
>   1 file changed, 7 insertions(+), 23 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.c b/drivers/gpu/drm/i915/display/intel_lt_phy.c
> index 939c8975fd4c..9501ac861712 100644
> --- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
> @@ -2259,8 +2259,6 @@ void intel_lt_phy_pll_state_verify(struct intel_atomic_state *state,
>   	struct intel_encoder *encoder;
>   	struct intel_lt_phy_pll_state pll_hw_state = {};
>   	const struct intel_lt_phy_pll_state *pll_sw_state = &new_crtc_state->dpll_hw_state.ltpll;
> -	int clock;
> -	int i, j;
>   
>   	if (DISPLAY_VER(display) < 35)
>   		return;
> @@ -2275,33 +2273,19 @@ void intel_lt_phy_pll_state_verify(struct intel_atomic_state *state,
>   
>   	encoder = intel_get_crtc_new_encoder(state, new_crtc_state);
>   	intel_lt_phy_pll_readout_hw_state(encoder, new_crtc_state, &pll_hw_state);
> -	clock = intel_lt_phy_calc_port_clock(encoder, new_crtc_state);
>   
>   	dig_port = enc_to_dig_port(encoder);
>   	if (intel_tc_port_in_tbt_alt_mode(dig_port))
>   		return;
>   
> -	INTEL_DISPLAY_STATE_WARN(display, pll_hw_state.clock != clock,
> -				 "[CRTC:%d:%s] mismatch in LT PHY: Register CLOCK (expected %d, found %d)",
> +	INTEL_DISPLAY_STATE_WARN(display, pll_hw_state.config[0] != pll_sw_state->config[0],
> +				 "[CRTC:%d:%s] mismatch in LT PHY PLL CONFIG 0: (expected 0x%04x, found 0x%04x)",
>   				 crtc->base.base.id, crtc->base.name,
> -				 pll_sw_state->clock, pll_hw_state.clock);
> -
> -	for (i = 0; i < 3; i++) {
> -		INTEL_DISPLAY_STATE_WARN(display, pll_hw_state.config[i] != pll_sw_state->config[i],
> -					 "[CRTC:%d:%s] mismatch in LT PHY PLL CONFIG%d: (expected 0x%04x, found 0x%04x)",
> -					 crtc->base.base.id, crtc->base.name, i,
> -					 pll_sw_state->config[i], pll_hw_state.config[i]);
> -	}
> -
> -	for (i = 0; i <= 12; i++) {
> -		for (j = 3; j >= 0; j--)
> -			INTEL_DISPLAY_STATE_WARN(display,
> -						 pll_hw_state.data[i][j] !=
> -						 pll_sw_state->data[i][j],
> -						 "[CRTC:%d:%s] mismatch in LT PHY PLL DATA[%d][%d]: (expected 0x%04x, found 0x%04x)",
> -						 crtc->base.base.id, crtc->base.name, i, j,
> -						 pll_sw_state->data[i][j], pll_hw_state.data[i][j]);
> -	}
> +				 pll_sw_state->config[0], pll_hw_state.config[0]);
> +	INTEL_DISPLAY_STATE_WARN(display, pll_hw_state.config[2] != pll_sw_state->config[2],
> +				 "[CRTC:%d:%s] mismatch in LT PHY PLL CONFIG 2: (expected 0x%04x, found 0x%04x)",
> +				 crtc->base.base.id, crtc->base.name,
> +				 pll_sw_state->config[2], pll_hw_state.config[2]);
>   }
>   
>   void intel_xe3plpd_pll_enable(struct intel_encoder *encoder,
