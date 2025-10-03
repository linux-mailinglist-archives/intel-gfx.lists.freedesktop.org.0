Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A11DDBB71F6
	for <lists+intel-gfx@lfdr.de>; Fri, 03 Oct 2025 16:10:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BF7A110E918;
	Fri,  3 Oct 2025 14:10:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kRm8ZXFU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 43A4310E919;
 Fri,  3 Oct 2025 14:10:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759500601; x=1791036601;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=lSTUugfREb5LmOOX/uI13QKE8ZYdg1I4vTHepy0o1Gs=;
 b=kRm8ZXFUyuVK9VVKcDVkJP/zPErA0vCQrJCPGQI+97qtK8qMLiXOomOO
 9W3jdhtnIYNfiDrNE+0Ujl3LKATUiGW9/s5KneGD73xuomdB8uFMWvdPS
 DBl0PR+TNM2u5cIA5dUqYPz21esFgM/e8atllSNcmhT2ts0kEpQvT1OVd
 eCf74P8TMkayuwYbhG10N9wIJ59YUzHBiGihMAnpEBU3DF+Zl3T2Saxw9
 TxL2Gtd8GydLnybqEZMFFQTOWaJJ3ae/BddP4cLIzx4gh0hlcUzjLeC6U
 Sa6L4qdxR4TkPSZxlMhnWeqFj0uoZzIwzJmUaDnQD1uoNegaHTshbDCGZ w==;
X-CSE-ConnectionGUID: wM9/EvyJS5S1nLDURYHMWw==
X-CSE-MsgGUID: Yr8ZgbJySLWMpD2CO4Lw+Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11571"; a="65422247"
X-IronPort-AV: E=Sophos;i="6.18,312,1751266800"; d="scan'208";a="65422247"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2025 07:09:57 -0700
X-CSE-ConnectionGUID: ioOnDvNpS7OSob2kaL11wA==
X-CSE-MsgGUID: CCIlLjTQQH+FW+auSRTkHA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,312,1751266800"; d="scan'208";a="178940236"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2025 07:09:56 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 3 Oct 2025 07:09:56 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Fri, 3 Oct 2025 07:09:56 -0700
Received: from CO1PR03CU002.outbound.protection.outlook.com (52.101.46.25) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 3 Oct 2025 07:09:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=QKFmMxg1vLdNAT7R88LTh/6ur+0t1fs44TAWGMEciHf48T9Sy6trjy4res+MW/CDnDSMP6t7nBU3mrlv5Ylt+HmxF7HvFFIQmE0dn/K447SsOqPS1dPpRDvfKTnqJT62m8faDzpK70PBLSckUhmJ1iThtUQ6fMvM9TllEKfXwJziVPAIXBMFahOACYqI+JkmnveiUrGsRz8uM8FHMZY1V9k6U8pQ6A3j4Yxm/11cE/nuEaqvJAh74WC96Qqj868uOr2t936IfM29tUuSRaHtuMkpkDyLx8c+uPPzJYkl42Q/Bv8ympB5QK8xZVpOV5yzMz5+J9fLOob8Fc9NTG8aaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LpGMwOWwIz5uuDInZMozEd3gWUuUcbtNiS5TafjsYII=;
 b=CoOoInEiu0UswQJ3uqm3Uh9oYNOWzBAmGZX4SDBGINIAYsph45Dp/kbU0Lo17hoIT4jx6rDplt5J7VRsUtVx4m4qOtQGWTWpiBw+0VgHpBOFCKL9gS6W8gSE968B77bB9lZfh7JFyKCskN1zsNMKSlrQ3eBLDowaoTYkgDE57+GI60vGQXgwHKkMhcLBdZFhiZMW8j3LLIDAiRotYxf1wjk6zVuXKSKSwk4TAaJ2SvTUOdgz/RU46xoXQA49XwMKVGHUMadk/IFDbKPtd+gfY5lhEr7mgOEim+KJJhD8JVkxz6FhPSDc92LLxXKfZ1Ab5Om/UiOqGrgZewV01XoolA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by MW4PR11MB6764.namprd11.prod.outlook.com (2603:10b6:303:209::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9160.18; Fri, 3 Oct
 2025 14:09:50 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%7]) with mapi id 15.20.9160.015; Fri, 3 Oct 2025
 14:09:49 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <aN5AQkfIqubWK_l6@ideak-desk>
References: <20251001-pica-power-before-aux-v2-0-6308df4de5a8@intel.com>
 <20251001-pica-power-before-aux-v2-2-6308df4de5a8@intel.com>
 <aN5AQkfIqubWK_l6@ideak-desk>
Subject: Re: [PATCH v2 2/2] drm/i915/display: Enable PICA power before AUX
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
To: Imre Deak <imre.deak@intel.com>
Date: Fri, 3 Oct 2025 11:09:44 -0300
Message-ID: <175950058472.812591.6490111675338161159@intel.com>
User-Agent: alot/0.12.dev22+g972188619
X-ClientProxiedBy: BYAPR02CA0008.namprd02.prod.outlook.com
 (2603:10b6:a02:ee::21) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|MW4PR11MB6764:EE_
X-MS-Office365-Filtering-Correlation-Id: 7a545388-2656-458d-f121-08de0286837f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?cjUwNjdwN1RQb0JJcFB1RlNMVHlGRE5pT1ZONkQ5aGNKVkxZYmdNV005ZlV4?=
 =?utf-8?B?aUJ1S056VFBUSGZVdUs3R3E1SzZHVy92Y1NtVTQyNll1VUFjSjNZWXF0UGJj?=
 =?utf-8?B?RXhaMmRkc3lvNkpTbGQrYlZMeTFwNk9TV0tHMzFOdnN4QTRXZjJQZCs2N1JO?=
 =?utf-8?B?N1A1QXEra2VDVnJKMUdqdkQzSHR6WnlucG1DRStsYmpMbmxNdElBUVE4U3h0?=
 =?utf-8?B?RENlSEttWFJCOHJMZkFyYVBkOCt6Z1Jqb2RiNlgybkNyTFpUcW9qbVhCRW1t?=
 =?utf-8?B?bWNZenlDOC83aTN1QVQ1bVlGd3NtOVNVL3I0dGd0bjNFN2RoUExFTFJiRGtl?=
 =?utf-8?B?RmVZc3E2OVdpWVNEc2xyTms2c2VUZVFKREMvWTNaQWpvVXZQb2ZlMThramQz?=
 =?utf-8?B?ZHdzM1laWjdVMll4VEp3ZHdwTUpNcTBhZjNCNjJKTlBGWFR3OG9nenNQVllY?=
 =?utf-8?B?MEFPK1BJblpKUXVDdW5pcVpYMGhDT3hxSERrVk1wUTNoOURKKzRRTFVKaStl?=
 =?utf-8?B?d1hET2dyaEhyZTlXK2pFcTljTE1ja1NOWUdEVlFsZ3ZKOXBrUHgvVm5Vbmgr?=
 =?utf-8?B?bHRGcnVpYjFvZE5aNW1jNXdUYWx0LzFiRGdiREoyeThXNnVyWVlMVW5XTWtL?=
 =?utf-8?B?aTUrZDIyUXBkdHRuZ1dPVExXalB5dSt4QUY1Qzg5R0loSDhUVGQ3UHhpb1NC?=
 =?utf-8?B?N0RMS0J4eG0wOTJ5NSs3VkN5ODU5d3h6WDdRTmFwYmY5V05wWW14ZE5ZUmZ5?=
 =?utf-8?B?TDY5Z3F6dDl0WHpyZ1JRaUZTMDVSRGFBR25yditwVitLL2VLNFFvMnRwZnlI?=
 =?utf-8?B?Qk9DQ3BCUi9KVjZuYTdWd1cxZzMrcE1BYVY4djJHbTVzcUFFUklrR1pmRFow?=
 =?utf-8?B?UExDSHFWUlRTNWt1eVdWRGo5RTdGZXl0SlMvOWtaNVZocC96aG13NUJ1NU14?=
 =?utf-8?B?SWRXVEliMTB5UzdDZERtZkV4bVIyVU10ZktudGhmcEt2R3pMd0xZZVA5OFpF?=
 =?utf-8?B?V01hanVZOUw2NXNUYWtMd3h6T3Q3K2poeTFZWmdHTU5kbWNDdW00WGhpWlF0?=
 =?utf-8?B?YzJyRjZXS0dnd1laYS9CazV0Vi96QUVHUG10V0ZIcVFTcVc0SHFoa3FPNmw5?=
 =?utf-8?B?QmVOeFljTzN4ZUFYK1lZTWFPSkZZSm5ld0hmWllLWXg3dGNSOVBjaG9KM2VJ?=
 =?utf-8?B?K2pkbFBoUXp4eW50RFgrS0hVSk1ZWUpDNkUzWXA0amdQUXV0eTRwdThnUWh5?=
 =?utf-8?B?THR2U1JWVk1ncWRFT2ZDWEg1VlgzaUhTdFBSbklITWNNci9KZ21sdXR6TEhy?=
 =?utf-8?B?RHlRUWpLckNxRkt5Z3ZVcTVuKzc2VlZ2QkI2SmhqcjBDMmlBMk83SDVtbllw?=
 =?utf-8?B?RERUZm9ULzFQK0lxUjk1ZFBrcTVDUmxoWllMMmViZ0hMRW9iYzlTZ3RzcnI3?=
 =?utf-8?B?OVh1aXVlbDdWZWF2NmN1OHYyQlYraHBiNVlJQk91dW5wZ1F5K1FacnhZa1p1?=
 =?utf-8?B?ZGNzbXo0UVVsVGhVRUZ1SDJhOE5XQTdRM0dXSTUyeUo1Uy9lL0NOenhIQTJJ?=
 =?utf-8?B?ZTk0SG9iODBQcDY5U1hKV1FGMHJ5YTRNSlNlWDUzMjEyZXF1Vjh5dzd2UjdW?=
 =?utf-8?B?c25DcWdrU2JVMlJFZkZGZXdsbFNqakl4aGZmMk45UzBScU5STWM3K01JbDV3?=
 =?utf-8?B?YmQrNElQU3RWS2xyVjdaL1R6QnNHbG1IVThvcGcwZTBZTjcyd0Q5a0c2SzIy?=
 =?utf-8?B?YkxYeVd0UDduMUNsQ01FclNlUzhaM1F0U01weisrWGNWYjl3bFFWUWc0Zmdt?=
 =?utf-8?B?VDd0d2E3M2M2ZUNaNTdYRlJKN2JFWEZDemt4L01kczZrMkM5R3NxN2RLSFBm?=
 =?utf-8?B?OFJtMUhzZnpjZk51QmxVWXdEc0dqbm52RnVPOVhtRjMwclJ4NVBDdEovMUZt?=
 =?utf-8?Q?KgCeKmkrQewHqo28NCKVrXzg/EZnfplC?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ak5zNzZrdDR3SW0waE5LcjJFTFlvTDA1ZCtOMkMxbVFndVA0YjRvdUJHWmhi?=
 =?utf-8?B?bjJ5UVZKWm0xQ2VwZlBKNi9Fd0VzN056aDQzRi9ESUNBenpMSm1qT3lUQVdw?=
 =?utf-8?B?OVBneXMrS0ZBZXdtSjBKT2tFL3RoTVBDU2RnU0ZJVEIxSEo3U3lJcGxvaDhw?=
 =?utf-8?B?MXVNNGwvT0RTMS9VQmxhbTVNK3NWZVVMVi9OelBiNk5FV0JZYXB4OU9VNDJJ?=
 =?utf-8?B?bEdERVVIUkpDbnFReDBGUDNoclh0UE9ueUQzVzE1a2dHNW1NRUVpYVNLTFVw?=
 =?utf-8?B?aWk4UVBCQWE0VUZZRmFBYjBUR2hpSjJIMGhQSURDelpTaytpRXJ5cW9TMUhk?=
 =?utf-8?B?bk83ek9tZGpmNEx2dkhqcWp4SE1uOER1SUxjNEJYWXMySUUyb3p3b0JsZ2RS?=
 =?utf-8?B?UDdTdVVxR2dRTWdtUWEwZDh4T3l4dHFpb0pjbTc4Y3UrTmxVZmhPSVhZbnp3?=
 =?utf-8?B?eHVZZGVtL2RyZGhMRnloSld6aldNTnA3UllkR2R2cmxIYTRLaW5YNWF0QXNv?=
 =?utf-8?B?VE1BYU4wOU1ybVU0SGJPZTg2dE9lWForYStDbkUzQ0lwa3pCQTRQZW9PeEtN?=
 =?utf-8?B?SWNLMkM1OHV4SHlYTzljQzVXRlNyelpuMno4RjJvVFk1bnlQMmJwL3pHTEpZ?=
 =?utf-8?B?KzBkRkhPRDhrR0xWNnY5UTY0Q05ZQTFpSnRhRzU1aHNxVDlSeTRTZ2ZDWGsz?=
 =?utf-8?B?WnhWdmRQeW54M3NiWDF1c1ZTQ3Y4ZmQyOGlIVVlZZC9UT3RDVk9JUk4vWDJB?=
 =?utf-8?B?L1VQN0FPQVhnbnNzN3JIbVl3Zjc4RFRZS1NBWDFjaTBTZXpMcHI5cXpEME5J?=
 =?utf-8?B?M0JNUzRNYmw1YXpBblB5bVRmZVU2SlVzVENZK3NjNkFKbUVnS1pHTFZEd09L?=
 =?utf-8?B?c1pvVHZtVDV1ZE1DUE9YVHVkOHdYRVBjRGt5OUd4S1kxOERSMGNKZ3NRRzNv?=
 =?utf-8?B?TW81d1EyZWtsQU1JQUNWQ24vdW9CTncycDc3a25mTGRpK09oSDlkWUNDcVFO?=
 =?utf-8?B?dHRxTllxMGRKS2lGU0YrN3BDSzJxamg2UXg4VUdMb1kyV0pYR0s4TXpvRC93?=
 =?utf-8?B?SjFZUm5Bc3gwWDI0UnJpY045U0J4bXh4MWsyTDhoWWJuclU5L0t3QmtNNjFI?=
 =?utf-8?B?ODBWSTJoS2JSNDNSZjFzWXo4SFBzTklKVjZxenpWTXMwWEt0RnJsbjMrenVy?=
 =?utf-8?B?TzNpWG1YdGRHNXRlcjlOREhkcDhYT0RWbWd3eCtCS2NsUXY0YUNNeCtJWnRi?=
 =?utf-8?B?VUU3MXE3Nkw3YUJFY2pLM2NoczZxdi9EbzNKVWZIMUVBZ05nK0FaUU55N2RR?=
 =?utf-8?B?S0cvdkphekFzRXVYZHpTQ0E3eXh1RU0rSXZnMmVWQXBBc25kdDFpbGJhNks5?=
 =?utf-8?B?R1hlek50SUt0dlhLMEQ5VHZSRWxqTDF6T2FueGwzdWVyVi9EKzNsandCMVo4?=
 =?utf-8?B?Qmlwd2FYRlNtaG4yMU5JNEZjcDIwTnM5TEF2VnhuUm95SU5aRGxQazVqRnRR?=
 =?utf-8?B?N0JyNW9JYVpVQkxUWkp1TjZFQjRINHc1R0hudXpwVlo0N1BRekROOHNJZWEr?=
 =?utf-8?B?THQrVjV4N0dHUHNQY2RhQjNyaW0rSmlaTHBOL3pISVFIQ3lkcTlldUJVQmFo?=
 =?utf-8?B?WTVWMFhZZG5kSTdxb3RtRm9LQVlQWU9DRllQUDhoYjZMS2tDd3JxaTdDR25H?=
 =?utf-8?B?OEdYdDYwR2l5M01sL2hSaGZpa0JUQXZrVkc1a0xtSGRTRG5yNG9Ham9xZUoy?=
 =?utf-8?B?b2RkWStvekNKVDI3cHBwbE5HSG5NQzVDNDhVQ0xtWXJxRXp6U0ZtMVhMMURM?=
 =?utf-8?B?WWp1b3RzTVNQQ1R1S2VuQklFdHJUcldYd3FLVEVlZDF3SDhFSXc4TFIzeTdJ?=
 =?utf-8?B?c3EwWmZ6ZStXSUUvUGJscFgrTHA1TkgrRUFsK2VqM2FmWUgzdDcwWHozMEdh?=
 =?utf-8?B?aFE2dElSUitab3FlSFVqcnVoQXdnNVVtTDB3aXU2ay9rUkFoOVJHSkVaWDdD?=
 =?utf-8?B?N2pFakMwc3ZHZUI4TDJqTXluRDEwSkJQRyt5MzJ6TXZoVkYrckFDRithcW15?=
 =?utf-8?B?d3lhTWNYMHVGS0IyaFB1eWFEVVhxM08xNnFjMXpXRmIrUUhzY1BFSmRlQTB6?=
 =?utf-8?B?b1diZTZXaTZ6TTNSYWpyNUVCU2xzbk9UQVQ3Tk9KUS9XZEVUMUxVSzU5ODdx?=
 =?utf-8?B?akE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7a545388-2656-458d-f121-08de0286837f
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Oct 2025 14:09:49.0494 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Lu6zSS8AFGUyZJ3XL8r/Wigrzb9jko0wxdo0eHXj7gPwKgYyIKS7eB0V8SoooWywdDlPOXhqRoSWL8P3Y3uoZg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6764
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

Quoting Imre Deak (2025-10-02 06:05:06-03:00)
>On Wed, Oct 01, 2025 at 01:04:49PM -0300, Gustavo Sousa wrote:
>> According to Bspec, before enabling AUX power, we need to have the
>> "power well containing Aux logic powered up". Starting with Xe2_LPD,
>> such power well is the "PICA" power well, which is managed by the driver
>> on demand.
>>=20
>> While we did add the mapping of AUX power domains to the PICA power
>> well, we ended up placing its power well descriptor after the
>> descriptor for AUX power. As a result, when enabling power wells for one
>> of the aux power domains, the driver will enable AUX power before PICA
>> power, going against the order specified in Bspec.
>>=20
>> It appears that issue did not become apparent to us mainly because,
>> luckily, AUX power is brought up after we assert PICA power, even if
>> done in the wrong order; and in enough time for the first AUX
>> transaction to succeed.
>>=20
>> Furthermore, I have also realized that, in some cases, like driver
>> initialization, PICA power is already up when we need to acquire AUX
>> power.
>>=20
>> One case where we can observe the incorrect ordering is when the driver
>> is resuming from runtime PM suspend. Here is an excerpt of a dmesg with
>> some extra debug logs extracted from a LNL machine to illustrate the
>> issue:
>>=20
>>     [  +0.000156] xe 0000:00:02.0: [drm:intel_power_well_enable [xe]] en=
abling AUX_TC1
>>     [  +0.001312] xe 0000:00:02.0: [drm:xelpdp_aux_power_well_enable [xe=
]] DBG: AUX_CH_USBC1 power status: 0
>>     [  +0.000127] xe 0000:00:02.0: [drm:intel_power_well_enable [xe]] en=
abling PICA_TC
>>     [  +0.001072] xe 0000:00:02.0: [drm:xe2lpd_pica_power_well_enable [x=
e]] DBG: AUX_CH_USBC1 power status: 1
>>     [  +0.000102] xe 0000:00:02.0: [drm:xe2lpd_pica_power_well_enable [x=
e]] DBG: AUX_CH_USBC2 power status: 0
>>     [  +0.000090] xe 0000:00:02.0: [drm:xe2lpd_pica_power_well_enable [x=
e]] DBG: AUX_CH_USBC3 power status: 0
>>     [  +0.000092] xe 0000:00:02.0: [drm:xe2lpd_pica_power_well_enable [x=
e]] DBG: AUX_CH_USBC4 power status: 0
>>=20
>> The first "DBG: ..." line shows that AUX power for TC1 is off after we
>> assert and wait. The remaining lines show that AUX power for TC1 was on
>> after we enabled PICA power and waited for AUX power.
>>=20
>> It is important that we stay compliant with the spec, so let's fix this
>> by listing the power wells in an order that matches the requirements
>> from Bspec. (As a side note, it would be nice if we could define those
>> dependencies explicitly.)
>>=20
>> After this change, we have:
>>=20
>>     [  +0.000146] xe 0000:00:02.0: [drm:intel_power_well_enable [xe]] en=
abling PICA_TC
>>     [  +0.001417] xe 0000:00:02.0: [drm:xe2lpd_pica_power_well_enable [x=
e]] DBG: AUX_CH_USBC1 power status: 0
>>     [  +0.000116] xe 0000:00:02.0: [drm:xe2lpd_pica_power_well_enable [x=
e]] DBG: AUX_CH_USBC2 power status: 0
>>     [  +0.000096] xe 0000:00:02.0: [drm:xe2lpd_pica_power_well_enable [x=
e]] DBG: AUX_CH_USBC3 power status: 0
>>     [  +0.000094] xe 0000:00:02.0: [drm:xe2lpd_pica_power_well_enable [x=
e]] DBG: AUX_CH_USBC4 power status: 0
>>     [  +0.000095] xe 0000:00:02.0: [drm:intel_power_well_enable [xe]] en=
abling AUX_TC1
>>     [  +0.000915] xe 0000:00:02.0: [drm:xelpdp_aux_power_well_enable [xe=
]] DBG: AUX_CH_USBC1 power status: 1
>>=20
>> Bspec: 68967, 68886, 72519
>> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>
>Upgrading my R-b from v1, where I didn't consider that the order of
>enabling/disabling the PICA PW would change wrt. PW_2/pipe PWs. That
>shouldn't be an issue in theory - spec doesn't forbid it -, but Windows
>is also using the PW_2 -> pipe PW -> PICA_PW order, so better to keep
>that order.
>
>Thanks again for debugging and fixing this issue:
>Reviewed-by: Imre Deak <imre.deak@intel.com>

Pushed to drm-intel-next. Thanks the review!

--
Gustavo Sousa

>
>> ---
>>  drivers/gpu/drm/i915/display/intel_display_power_map.c | 6 +++---
>>  1 file changed, 3 insertions(+), 3 deletions(-)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_power_map.c b/dr=
ivers/gpu/drm/i915/display/intel_display_power_map.c
>> index e89f18b7037f..9b49952994ce 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_power_map.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display_power_map.c
>> @@ -1588,8 +1588,8 @@ static const struct i915_power_well_desc_list xe2l=
pd_power_wells[] =3D {
>>          I915_PW_DESCRIPTORS(icl_power_wells_pw_1),
>>          I915_PW_DESCRIPTORS(xe2lpd_power_wells_dcoff),
>>          I915_PW_DESCRIPTORS(xelpdp_power_wells_main),
>> -        I915_PW_DESCRIPTORS(xelpdp_power_wells_aux),
>>          I915_PW_DESCRIPTORS(xe2lpd_power_wells_pica),
>> +        I915_PW_DESCRIPTORS(xelpdp_power_wells_aux),
>>  };
>> =20
>>  /*
>> @@ -1710,8 +1710,8 @@ static const struct i915_power_well_desc_list xe3l=
pd_power_wells[] =3D {
>>          I915_PW_DESCRIPTORS(icl_power_wells_pw_1),
>>          I915_PW_DESCRIPTORS(xe3lpd_power_wells_dcoff),
>>          I915_PW_DESCRIPTORS(xe3lpd_power_wells_main),
>> -        I915_PW_DESCRIPTORS(xelpdp_power_wells_aux),
>>          I915_PW_DESCRIPTORS(xe2lpd_power_wells_pica),
>> +        I915_PW_DESCRIPTORS(xelpdp_power_wells_aux),
>>  };
>> =20
>>  static const struct i915_power_well_desc wcl_power_wells_main[] =3D {
>> @@ -1768,8 +1768,8 @@ static const struct i915_power_well_desc_list wcl_=
power_wells[] =3D {
>>          I915_PW_DESCRIPTORS(icl_power_wells_pw_1),
>>          I915_PW_DESCRIPTORS(xe3lpd_power_wells_dcoff),
>>          I915_PW_DESCRIPTORS(wcl_power_wells_main),
>> -        I915_PW_DESCRIPTORS(wcl_power_wells_aux),
>>          I915_PW_DESCRIPTORS(xe2lpd_power_wells_pica),
>> +        I915_PW_DESCRIPTORS(wcl_power_wells_aux),
>>  };
>> =20
>>  static void init_power_well_domains(const struct i915_power_well_instan=
ce *inst,
>>=20
>> --=20
>> 2.51.0
>>
