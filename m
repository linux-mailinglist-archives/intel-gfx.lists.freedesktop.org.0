Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EAFB9E3C45
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Dec 2024 15:11:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E355410ED46;
	Wed,  4 Dec 2024 14:11:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ULDPvsB6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6AFCF10ED45;
 Wed,  4 Dec 2024 14:11:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733321479; x=1764857479;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=KuiPFQwtC/6OOT7hGVXUMVlm2TbTkgV40b2b44DUSQ8=;
 b=ULDPvsB6qacCKG2N7nuXOz+NlDW3yBljW/QJu0BS4PWG8yFAqHalgBH+
 bxatibAYELSvcjodhWMpt7QuYvLnwdH2GerylwSnX1gAqimoqg9Y0BMNs
 1LeO8xOgS4jXpZRO9hNdZoh3A8v0lDk3cogvuRHDYw6k2/D73XfLMzzWT
 y6yHrGX4Bqo2MqC3CLPWC97kjXV0xynqc9muaZWYO05TzQ+w8dtRSWGFA
 PGwhg+qfIQwKEKnoA4G5ZdSIojw98WJE+OC29cA5hsLX/6SiYea2OAOI3
 wCcZMQ9hL08o8XfGBqgP6fX2KyoOVGdKids01QAzQHxIBJnRJ0eULs6Wn g==;
X-CSE-ConnectionGUID: lZ3A4sRiTg+dxX+SNb0j7Q==
X-CSE-MsgGUID: nJJS3/0tSg2XTzFFrIUNEg==
X-IronPort-AV: E=McAfee;i="6700,10204,11276"; a="44618571"
X-IronPort-AV: E=Sophos;i="6.12,207,1728975600"; d="scan'208";a="44618571"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2024 06:11:19 -0800
X-CSE-ConnectionGUID: Qq848wxPRgGW6vks5D/wNg==
X-CSE-MsgGUID: jNy2UshiRrmZk24RB/T0zQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="98796020"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Dec 2024 06:11:20 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 4 Dec 2024 06:11:18 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 4 Dec 2024 06:11:18 -0800
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.43) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 4 Dec 2024 06:11:18 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=v4vkDoA+iJuw0IC7eOKf9FRyoSrKdGm1obQhNe48aHqcJm67g52X9pu1quPof7J2B+Pc5Zg7QTMODnxLyHCnb+j6rGl2dRBKovtdon8xuF7br/mgKiG9mpFAg8M1Pi8LZBpsidvLwgndK965zEXcUafZNySMG/1OnKKUJG1kFkqAOqvwyir4p8Ixm+w8rJlABPH/sx0jMtuYCABrNKwk0DwyRvWPfHwc1pZh7mU3crrB6kxJxslbi9myo1scyHoz9EKIiCSSNLnXLVI9axbnP3fZWIKc8LFmR751DYu/2sN4J0+wvv+d9jOHCqEqfd5FxT1uNsz4L2VotXGHiE8zmA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KuiPFQwtC/6OOT7hGVXUMVlm2TbTkgV40b2b44DUSQ8=;
 b=lJBMyvyLYqvz4lOQ5gWaMilDWvCV/zBn0yy+pIqtMkiAfZMNj3j/XXQBrWZ9S0O1y7PfhwUsh+M8igDZhQtZaH9KkJ4/9YjGipfLXZDzm+8ywfA6Lj/wJDFKHkh4Ab38uJstWtN1Luk05Xd7E7wCRARDnr+tRSLs0E9BdEcOm3MQf8uqUm+Q+4oWPW1zyenzbsMXLeFegy2Ema2l02En+/iccemIIkbYD375HRTBV8AJALDyy0z2sMpes6fGRxflabhPS9COTu+GOUgbp02/cBZcb1zrtsQeAF/QGqHQxDlivMNj2CIxR+KicYRxQP4sOOQDtqjkwqKI2AKt3EzEdw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by MW4PR11MB5822.namprd11.prod.outlook.com (2603:10b6:303:185::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8230.11; Wed, 4 Dec
 2024 14:11:15 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%6]) with mapi id 15.20.8207.017; Wed, 4 Dec 2024
 14:11:15 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20241204102150.2223455-1-jani.nikula@intel.com>
References: <20241204102150.2223455-1-jani.nikula@intel.com>
Subject: Re: [PATCH] drm/i915/display: convert intel_display_driver.[ch] to
 struct intel_display
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <jani.nikula@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
Date: Wed, 4 Dec 2024 11:11:09 -0300
Message-ID: <173332146931.1598.5367405260871758876@intel.com>
User-Agent: alot/0.10
X-ClientProxiedBy: MW2PR2101CA0019.namprd21.prod.outlook.com
 (2603:10b6:302:1::32) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|MW4PR11MB5822:EE_
X-MS-Office365-Filtering-Correlation-Id: 3f7fd478-f43b-4794-1e0b-08dd146d83c6
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Y3B0ekVaakxSbnR2OHhmME1tTXBZYzB1OXJDRU1qVzFsdXYrZVBuTGplWE8w?=
 =?utf-8?B?dUo3Uzc5Qkk0amdtL0lJdEdGWE1oaUVhV09VU1RMTDNBdVNmZlVXdTJmYXNC?=
 =?utf-8?B?dTJwck1XemtOTkJEK21sVFFPVTgyYXJJS0RQRG5kVjZoQjRGM1BVYXpYRGR1?=
 =?utf-8?B?ekRoQk9BeTZmM1pDS2xIRE8raWdFSmZRaFVlVGNBK3E3d0d5dGdmZm5pakh5?=
 =?utf-8?B?bGlZbll0YVdnSUNkL0RncTZpcGNpTnMyeXlCUVRwVGU4Y0NpelhubTVXTDYz?=
 =?utf-8?B?TnVnekEwTFIzTTVGYlRuYjJQVjRpNUpSK2hjbmNpVytFQU9rclIxUDRxNkdC?=
 =?utf-8?B?cnhhendVZlRrMEJ5aTczOTRCM2xuaWNiK2dIamhtajQ5bEFXZGtOM3dZNTFE?=
 =?utf-8?B?c0oraHhuZmZPU3NyazFIRlAreHJzdlpiYlV5UldjVVp1RndKMmZKendYWk95?=
 =?utf-8?B?K0lyeHVaazh4Nk5SMFYreW5zU2ZEZFBocFZMN0F3Z0ZMYXJXck93RlVjUVpW?=
 =?utf-8?B?R3NjTmVwY3ZNV0l6ZTRtcjRXM2hNOHVSZ2gxUVMwT1Z0RjQ5TmlIYUxZeXhX?=
 =?utf-8?B?MEhSWnpoL2ZaYWgrdTByanc0OEkva0NhMGpWdTB0a09vK2J2MVVsR01OK1h6?=
 =?utf-8?B?SDVvVVFSY05pUVVkR0FxZzlUNzROdXVpV25CbytWUEM2b0JTU2RQWCtqRkVs?=
 =?utf-8?B?NjZuVkI3S0JFVUFUVC9hL2gxKzdwVDc4ZHJVamYvNFVrRU93NGJpNGpMYUNW?=
 =?utf-8?B?OTJwcjhoV2JxTE01c0pqK3FkNkFuQUZrMHJYeTE2VkJ5WGZhZG9kYzc1bFBJ?=
 =?utf-8?B?akVJYUNDOUJ6Sy9wMUlWb2VEL3FnNlVEQWcxYnBkbmtkbi82MmF0L05qRVFB?=
 =?utf-8?B?bFFHS2dKcjBsM0IyZ2pxNDRxOVB4Ukh5MXBOZEgxclF0S2NuOVNCWTBacEZC?=
 =?utf-8?B?SHhRT1cvUnMzS1JNNUdTcDVyaVVqQnlMVjJyYXEwYXI1MjVzc1hYTzVVZjdl?=
 =?utf-8?B?TmVhbkt6NGMrWTNHRkRpdDgraHNNZjk4eUJ1VTcwVkM2OUc0QlcxV1J0VjAv?=
 =?utf-8?B?eHVWeEoreFVLMFRSMnN3K0pLbUFYUkx1eVBhUnNRckNWOGdpZHFmYUtJY0Zs?=
 =?utf-8?B?Wml6bEJxMkpPT2xMVnVBWjdOcXdaZ09DMnI3cDdSYit5TWlFczFzUkdwMXFl?=
 =?utf-8?B?RWlQQ1BPSzlsOWM4WGk2UjBJTDB6YXlGUXFxbkxRbWZUR2pHMEEvTHZPYlFX?=
 =?utf-8?B?VDA5ZWVJYXZXdWwxTVlsT3RzalN6MFVmRVgramRiS0Q4Nkg2ZFRHUnJYeDJN?=
 =?utf-8?B?Y1lOQUJDRGF0VGgwK2xoM2NXSnNvcktINWFzVXpOK3RUMDF6RDNmb2htd1ZX?=
 =?utf-8?B?VHJRYXVHWHA5VkxxVkJuR1ZJYTEwTSt3WllmVHViNTFZYVcwN3A4L25CS3Jl?=
 =?utf-8?B?eTBaTkhrL1FJNUZ0dWdhcDhkdFcvZU9qZ2grZ3pNcnNHVWZWZnBTc1ZjcTFk?=
 =?utf-8?B?WWErQ0xjK0duL3VEQXBYYyszSm43NGFvYzNYVW9DaFFBbzRoc3JrUjVzdlQr?=
 =?utf-8?B?ZncrcjdyclF1UWZQNGQwZVRLV3VvRUF4eGNIcENSM0s4dmFhc0ZmU1owY0lQ?=
 =?utf-8?B?ZEVlOU1tbjUybDNqUEJtUWRZdnY5eUJuelNFaXR4enM1RzQyNlN0T05TU01k?=
 =?utf-8?B?VHN5MDN2V1UwcHVBS1h1LzRtaWg5cFgrb2ljMUVzZUxtUngvT0V3emNhbWZw?=
 =?utf-8?B?QURCU3hLeFRjZllmRStkcGhwUXBHU3dTU3lXVzVXQlMwa0hpUkgrU25SSlI2?=
 =?utf-8?Q?T8luDSjrPa5j+SRl0CnS8Kd8H3UGLPUDWSvXE=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?K2Jhd2hQckF6d2JLTGVzMGt2eldDRGJzWUJqemhEdnp6Ujc0S20rL0R4MFFk?=
 =?utf-8?B?UERsMW4zNzVPZTBBMzJ2blg5dFlXay9pSGtzdWIzbk9WcGwyMGF4UExYUEtC?=
 =?utf-8?B?Q3NlVlIxWFNsaTRRQzAxVEY3RHA0QjE0RDBndkduOG4xVFlhenlickVZcXMy?=
 =?utf-8?B?NWpwWU9VNXA0ajBCRitvaU9nRW5tSXhiSkdmbGUrVFBLWlNVVVlObXREVk50?=
 =?utf-8?B?R2dpNXprZVBESjNQVzhGUkk2V1hYbG85UFRPOUV2cWw4b3BYRWZ3blRFK2RJ?=
 =?utf-8?B?emxtZ0NSMEVjZ0JTU3JuN1NSYXpENzBWRVZUOWo5eGxUdW5XaWFRc0VZQU9v?=
 =?utf-8?B?NHhGdTdMTFA1Y3YzSjVTK2kwM25uemd5U01kS0RzZ0JDbER3MmI5TlVMcFpn?=
 =?utf-8?B?bWJuanlrdWVjK05zWXpCekpMV0daeDdqc296aVlYb21PNWY2K3FUeUlsRDk4?=
 =?utf-8?B?cFBOcW5aNDlsMi9oOWlPK3c5QlErOEdSb2F3NzNoUC9qb3hQSFFkRm5OWS9Y?=
 =?utf-8?B?V21GaHo1N3d0YUpRYmFocWdHRG1WQ1NIVSsyUEYrVVZvREtsbE4rUllhSWRC?=
 =?utf-8?B?Sy9Bek9XR0tQZlRZUVRuWTVzbkJ4VmkvRk9LTEdKaVVmMG5MRTJIUEszMk1r?=
 =?utf-8?B?UUpPV0ZnMldzL2hJZDhnOGZEeEI5TnhpYTdFL1RKNXY1eE5VRGVrdEFML1px?=
 =?utf-8?B?SytIcVdrRElLVENzQUxweGNIb1ZhSG5ZZEZOTThsNkFFdjRNaVp1UVZFYXcz?=
 =?utf-8?B?NytYUXJmYTdHL0cwaW9JdzhJeElJZkNLUzBkUGs4c1k1dTRYRDVhZno2aTVw?=
 =?utf-8?B?VmdzZGdqRDExNmpxcGtNV013MnRqVlQ2azJnTEZKMXB4YXJ0V1BoZXg3YWli?=
 =?utf-8?B?SmhFWkpydkNsOUU1dllNMHUyUlVTVHhMQ1FCUEp5Y2xTb2ozTFNJMmp6Z3RS?=
 =?utf-8?B?cUcxZW1pcUZlcnBBR1FYNTNQSU1KellGNWgyc0ZxRE43c2tuQThhRDFnTFpy?=
 =?utf-8?B?b2FJZ0p0NFdJN3FDaEo1UkZGbnM3VEFldS8vVThBbXZnSENuYUxkVEE2eUZ3?=
 =?utf-8?B?WTg1Tm5CT2lXeFJQYWNrbUpWYmdlWjZ2NWlBbFIwTEZzaDhFQjR0SnFrczVu?=
 =?utf-8?B?bWhVTm45bk1WTkJKN0dhRTMrbktQK2Y3MzVaWmg4S3NLbEFmVTh1TDJIRnBK?=
 =?utf-8?B?dGJId1dKZGVLZkF3QlQvTTBybkYrakR1Yk01Y2tOcXFrc1VYRlVpVGhTbFVN?=
 =?utf-8?B?L0lpUVg5Sk1OM0Z1UFZ3RHhLdnR5Z0x3ZzRscFZaNTRaOVVEUFRiOHFvWkYw?=
 =?utf-8?B?ZzZUT1pQTXpheGhoVGdEUHdZbjVadjFLL1NVMUhQS2JBdmE3dlZZS0EvOEhE?=
 =?utf-8?B?RGRvMEpDS2hVdFlZN2JudFZqN0hONWlPeUFOM1hKV2pzcEJ0YUdZTzVjbEl6?=
 =?utf-8?B?Q3Mrei9yZjgxbFZnTCtaZGFRamJPaGpKMHlSZHBNWmZsMVdCbjVYeFFUUEhM?=
 =?utf-8?B?S2gvRFFXTm5oZE1yeXF2eFV2SUtKbDdxUElLNkV1Tm9uNlNJMmJpaU1oTnV4?=
 =?utf-8?B?ckRxaEhkVUl1SDNJQUZiUkFEQzJFTkZiY01ZR1dHR0FJczhCcVF5eHRDZ3Rl?=
 =?utf-8?B?Y0hKb1FITlV0c1RaelBBYkxFWmRxNzlnOFdHUzI4aElRcTFXUVoxZTB6MXp4?=
 =?utf-8?B?UFV1VUxUTmg1bXFuWUxuQUozbzUxRWtvaEZ2S2huYXRKZjA2OHR2d1BsVncw?=
 =?utf-8?B?Z1BxU1Fia3JhVzFSTnhLeGcxZkVrREY4QlJoVmNRa0ZKQ3FxYzUyTU0rVFdO?=
 =?utf-8?B?aWNWRVdlQ05ZL2pJaXhjaWMzdllMc1luUWE1UU5YN1J3NlpXOXdwUm42dDFG?=
 =?utf-8?B?N3E3LzJSZnhLeDVKSDg1Y0Z5ZHJxUTVHQjl4UDBZZWxzMFBIRGJEaUdCY2J4?=
 =?utf-8?B?a2JrWjN4NVlPTDdTa0M2anBQSytuTU1wZXhDSnlZZU82TEFnQ1FGN2JZdjly?=
 =?utf-8?B?ekxWMmRwY2R2SXV0RWFvTFk0SEtDSWFVbkl4dEdoN3pLTlhodXIvY2NteDRp?=
 =?utf-8?B?emZpRWtFZTlhOUhWTytlRnZpc0NZR1p6dXpsWkI3ZWVvTUVqTDlqVXhIYmRu?=
 =?utf-8?B?YXBqbU0rR0Qwb1pDNlVGWUkwempYYlFucEJWREF5RTUwdktDMVo2bWlSOWsr?=
 =?utf-8?B?S0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3f7fd478-f43b-4794-1e0b-08dd146d83c6
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Dec 2024 14:11:15.2726 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: afID5edyyHwtNeHCRYBiyd3meJHjk5/8TgczbIMxxjyPm0nsmK6+aT4G/LnZfj3w/+wbyMy++qd5waW4eK5pHQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB5822
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

Quoting Jani Nikula (2024-12-04 07:21:50-03:00)
>Going forward, struct intel_display will be the main display driver
>structure. Convert the main display entry points to struct
>intel_display.
>
>Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
>Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Used b4 shazam followed by git show -W --word-diff and things look sane
to me. So, also trusting the compiler,

Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

Note: I found some places where the i915 variable could be dropped if we
replaced &i915->drm with display->drm (calls to logging functions), but
perhaps that was left for a future iteration.

--
Gustavo Sousa
