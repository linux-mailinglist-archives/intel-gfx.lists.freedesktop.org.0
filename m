Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C4E07CA8345
	for <lists+intel-gfx@lfdr.de>; Fri, 05 Dec 2025 16:33:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 553DF10EB54;
	Fri,  5 Dec 2025 15:33:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="H9muLlX5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8212910EB54
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Dec 2025 15:33:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764948810; x=1796484810;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=Oe2d1pvZ+kGN4NjXk+cRXJPNMAoPxOFe107Zjh8ufjE=;
 b=H9muLlX5dBxCwzzBwdxQ7ZRbJr0gy/R0MIk4Iyu4WewC7a4g3q9ggtZ6
 jRSk0nn15xSixqV7QDscq11tmGFUKn3OvhzhHGOx6XubRiynnDo3eIBwj
 Hhrqg4qmgJj0kuV2EA5J6ynwKTyuWVGINwATgThGiNvYY+oPWmAT5nDDn
 3R6U30oeYSOeJFKmC7ys73Ep2TZZfyFGdMuBOy4VlxV1HC8Uf3ZFNKA93
 oXaq0YCVd/t0Xu5EWnTK4RnwdRVga7XOb8TdZOo/S54G4UQ4m/3DlNNh0
 6BZQUxSt6Kf1H/zgmxDF8YtDfxpaDmO51MtQLQdYSWelkFnqizqDRVJCq Q==;
X-CSE-ConnectionGUID: rw5HSwlcR7GYKX/E3KzlEQ==
X-CSE-MsgGUID: 9QMbX8lzSRe6jcPHNb37BA==
X-IronPort-AV: E=McAfee;i="6800,10657,11633"; a="66708598"
X-IronPort-AV: E=Sophos;i="6.20,252,1758610800"; d="scan'208";a="66708598"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2025 07:33:17 -0800
X-CSE-ConnectionGUID: xN1Y8+lqSJai3gGzXrkbjQ==
X-CSE-MsgGUID: Uusq5SjBRE65Vi3ok/Ka6w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,252,1758610800"; d="scan'208";a="194389401"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2025 07:33:17 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Fri, 5 Dec 2025 07:33:16 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Fri, 5 Dec 2025 07:33:16 -0800
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.14) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Fri, 5 Dec 2025 07:32:53 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=KEk50whJ+460s2H3k+Su44AFgC0LdGqs7veTQzAa/VDod4D1RKmH3ZrJxni6/0+DNtGkNH8bEP3Ni5MTFkpypWVh4VbSKG5nZmYCq9T1et2R60ZSvvzcDwx+WmLcixC0sxA5/Tyj5nyetYOcpTqiBnGK0iUrqL8qzOQ1blSjupWigGzejshBDgRnREVjSLnlZy0bEvMGCXd9L+BuAXED5Cb6MXZfpKDynyjVSO7euTkJsQJo0Tikxta8z2G0TtC/B4YFXuSVSxUfILM7BSxPnuHxfEKAyu/eZ5eW5sK0/SAZ+kPLQ8Apn6Q21TIZOCYO1IeA7CDPKFZvink100Jfig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0ckNc3NkmLXjCSg+ByQqO7ILMyO4/GJ/4HqYhZ4hSIA=;
 b=Pa8gkaTVOCm32qbhax97oP1b11gqdnKmZkD8RhDehPwu8T8rzVoJyqs6hCaVnMkiER+C1doB2azh+/FS8vBM7BgHtmbhFrC3NjHVQTGIacjryE45GedMjNOilpG2e1ufje8+vsjz72WDbQiJonlaZYxLSZT5bXbt6WCHn31TJH+efP6kIddOFqfO+MW5i6hxp5V4hKsqqq/N0SJMy+O631uR+fM/NzgVR+XELdd2FY9hI/r5QHzc8UfnWl+/OjfivjUQAvMu0w72/E8LL+jVmnTpx1mbwAwL70l20LMf30/sLoSDAOKxyIE08K7nHpedM7jkaNBTWqicE7ULcsokVA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8019.namprd11.prod.outlook.com (2603:10b6:8:12e::18)
 by MN0PR11MB6133.namprd11.prod.outlook.com (2603:10b6:208:3cb::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9388.12; Fri, 5 Dec
 2025 15:32:52 +0000
Received: from DS0PR11MB8019.namprd11.prod.outlook.com
 ([fe80::d2ab:ff8b:3430:b695]) by DS0PR11MB8019.namprd11.prod.outlook.com
 ([fe80::d2ab:ff8b:3430:b695%4]) with mapi id 15.20.9388.003; Fri, 5 Dec 2025
 15:32:52 +0000
Date: Fri, 5 Dec 2025 16:32:46 +0100
From: Krzysztof Niemiec <krzysztof.niemiec@intel.com>
To: Krzysztof Karas <krzysztof.karas@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, Andi Shyti
 <andi.shyti@linux.intel.com>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>, Jani Nikula <jani.nikula@linux.intel.com>
Subject: Re: [PATCH v5 3/3] drm: Avoid undefined behavior on u16
 multiplication in drm_crtc_vblank_helper_get_vblank_timestamp_internal()
Message-ID: <adsb5dbipw3wub6jrp3jcyrwtybxc2soujmiawt4ntnxw2get2@l2s566p26h4v>
References: <20251204143827.111428-1-krzysztof.karas@intel.com>
 <20251204143827.111428-4-krzysztof.karas@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <20251204143827.111428-4-krzysztof.karas@intel.com>
X-ClientProxiedBy: WA2P291CA0037.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:1f::17) To DS0PR11MB8019.namprd11.prod.outlook.com
 (2603:10b6:8:12e::18)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8019:EE_|MN0PR11MB6133:EE_
X-MS-Office365-Filtering-Correlation-Id: 5c1a6922-0b3c-4574-90b3-08de34138da4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?enUvWm9mQ0x2ODFqb0x0Y1ZxWW5wMVh3elB3OU1hY2pZVGowdTd3bmU4SmFl?=
 =?utf-8?B?czVsUjZORWs4WlJtMjFxK25WbkdUcVZNTHcycmdyLzRYemVkbkFnYlErb3pQ?=
 =?utf-8?B?dk9vODNrbVhyQkhmSHIwU2lXM3NpMUxzM2NpSUpOZm5UZm9FY3hkZmtDYlRy?=
 =?utf-8?B?ZFd1RmtGMTRxb3YxOUZVSzZIOVhMdFZBa3M0My8yZDJZMFMwbzd4akdFamxr?=
 =?utf-8?B?cVRtTFRvN2J0eFQzQjJpR2Q3QWRiZXhEL2NMUjRIZXF5eUhmUVhyWjZqOHZK?=
 =?utf-8?B?U28yRVBhVGV6YWhzR2xHaWxDT1NET3R3MHZKOUYxMXhkK2FaR01oQWlCcXFS?=
 =?utf-8?B?NHo3OUZFREJpWnlzRkVNMGVGcjZwWFp4c0liQUNlek1ZUHoxQjg0UnhDZWIy?=
 =?utf-8?B?ZE42bFhaaEluNVNrTStCWkQrNVh1TWluWlhtY1dTY2tFbFlrSDgxd3VPWE5n?=
 =?utf-8?B?NUgxT1Fwc1VDYTRpRGNvczVIVUpyUTduWis0c3VNRzcwRUxsaDc0VDkzRVYx?=
 =?utf-8?B?bjZQL1FMNDF3Nk1hZ2dqL3ROZTRlUmRZMnBKRlhsdCt1U2Y5VkFpbmsvVm5J?=
 =?utf-8?B?U3ZDRU5LRFN4U1NrdW10STN3dXRmUmwrWFNmN3dBNVJrTEV0QW9KcTMwZmVG?=
 =?utf-8?B?WitUa1BvOHlmMGJYT1I3MENwbEF3NjlKbFFkYzF2WG85SHNwWWY0WDhYVU5u?=
 =?utf-8?B?aXdZckRjYXdwd0lZcVRZYUxFcFZkaDJTYkQyakl5aCtoTzlWdi81VkxvaVRZ?=
 =?utf-8?B?T1phdS9KRDRLcGQ2UTlMWGlFY0xaZGkvNDBQcUVteVExYzFpaThqaDRUR2pt?=
 =?utf-8?B?WS9oMFZ3K0JCRVNSWU83U1M1TFVGZys5STdkTXB5Q3FuSkRKUkh2blFMVlQ5?=
 =?utf-8?B?SjNIUEc2WU03QW5GRlN4TW9RRzRNOUF6eEdkM0hjRFJ6b20yVENTKytycW9y?=
 =?utf-8?B?eExYRGc5bzZrQXVQTmt2cFBIYXdxbDVyTVdlQmlVUEtZVTRRN1RiaHZKMHRP?=
 =?utf-8?B?NldzSXJvU2I2WURDd2NhSE9YdUlBZC9uTWtaRy94aTROengzbzVJZXcyd1Vs?=
 =?utf-8?B?TUxoQ0VmS1czOHVZaUw2Q08yaTZOU3FqS1lVeFJQTExoSlVZRkhSMitFdkpi?=
 =?utf-8?B?NFdYQlhYMTZZVW9ubHFjNkcwSS9Bc2ZNRm5GQzEraHpkVlRnZGdIUXZiMjdI?=
 =?utf-8?B?SndpZ0ZQWEVQdlJZTUZzcE8rb1NwUzByU3plTUlZaTgxMFR5Z3h6c2U1dEE4?=
 =?utf-8?B?aUh1d0FjaUVKQ1lnb2JWWmZ6L2U0SG5idC9YcXlQS1Y3RHVTZFgvNm1relFn?=
 =?utf-8?B?bFh3eW9iZUNabXpXUGsyNTJ5VGNGaFlwK21QMi9JZFVMUlZ0dDQ3MXlJcEFt?=
 =?utf-8?B?OVUxampGSFdhYzVZTEE1c2dURDNsUC9DNkV0QTBJTC9yMEh6U3lJNUxxMFd6?=
 =?utf-8?B?RFRwT2FjTTVwOEdRQ29IL25lUlBsdDRGSU54dGxoc1RrSzBWdGdLMm0rdUF0?=
 =?utf-8?B?S2NvNTQ0a0MzSXBEaEZLaTRKTnc4T1kyajFlOTIwVTJpQUhXb2RtYk8rQlJS?=
 =?utf-8?B?SVJ0WmsycUN3bm00UEVSdGEzQVNhVllwengxV21Sc3U1T1Q1NXA2VW84U2Z2?=
 =?utf-8?B?QjkzVHprbFc0VXR0QWw3RUtqdDFKUlBWWlBzOGJsYXBZVFhscndNdXF1b2RQ?=
 =?utf-8?B?enNSOWdpSkhtSGpNdkpQMTl3R1dQR2xhQmlxR21SN3ArYXVseWhlVC92bWhm?=
 =?utf-8?B?Y0twWWdxdStDZ2NpcmVDVGFiL3hmUWtSSnVKSFlNVEdESHBncHljUWtQSDVR?=
 =?utf-8?B?Rld3MGVNRnlhUVZoY2Yxb2ZwZVU3R2J5Vm1DcWlWeUM5VGFjVTJyU2RpYXRB?=
 =?utf-8?B?eXhESzJrbUZRVUczVWt2eDB1VkQxMUFoUkwzemlsTXA4dXFUZmZwUnNMSTUz?=
 =?utf-8?Q?P62XCgpjVlEyO0vUU5XbBC3sWM/PMhlD?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TWRLdURuVXdtRzdRRkRpQmY0VGlBV0lHMlFUdkltTVBvS2FEQXNFUU1jaFdm?=
 =?utf-8?B?eEg4MXJHMzFyZ1FnbXZxYU9KNkNickdjSGJyTFF5bFpVcVozQjQ3Y2lGTGZj?=
 =?utf-8?B?NFNEdS83bVNPOW1BODM4SEU0cm1VcjZsUUl6WSt2Nzc5Vk90Y2FLd0FJUkw2?=
 =?utf-8?B?ODJUZlpWRlFGcUhueUZUWmwwaUNJQ3JWYXZwbGsrdkJUVDVGeStXcE1LQWpP?=
 =?utf-8?B?QTVPRmxrR3M1bzhXRnFqL1FvVG9MM3RkVlFJN2poVHJDOVhqNHNpZHN0Tm1V?=
 =?utf-8?B?ZkhWS2MzY1JTNExoY3AzWUFUeU9GTmUxdDIxZzNoUFozcUY4RmlqV0xoSGI3?=
 =?utf-8?B?WUhaZlU4dWF5OXRuUjg1NWY0eEZVenp3bUh0T3NZeld2eTljaGNwaHpqcVQx?=
 =?utf-8?B?UmtSRmpzaWwyYjRrbVQyYUM2cmZxNW5oakV2KzYvUFJXclpzMzg2UlNKTUlw?=
 =?utf-8?B?eVA2TEhWNkliUGRFdGlZejZSWkNYOVgyTjIwR213ckNjbEc4TEU5WFJqMjNG?=
 =?utf-8?B?T2FQWDdDU0lScGRpTU5UOUZzRXlXMmtlLzdFcWFTVWQvdVhTdHZjRXYxZ0Vh?=
 =?utf-8?B?czdXVXZqT2VRS3M0VVhUY1Ivd25yZ2M2U2xiU1lTVkwvcEREZ01aeHVGUnFZ?=
 =?utf-8?B?WUlCUVJkZW10U2wrVElQbVE3TEZQckUxRWZSeFo1T3lDRjV4enpaVXpSTDM1?=
 =?utf-8?B?T0puSXRDSERBak9KdWVLdVVZWnVmaGs2Zk9oMlJyVmVac0l2ckpnc1FUVzhZ?=
 =?utf-8?B?RVA4VjlHUUdCRjBMdk9zNmVIRWs3eVNvTDhiSzVXVDBvaVBsL2FSTDZaUkhu?=
 =?utf-8?B?bURjZ3lQMytwN0xUUHFFTTVjenpCSmlDQUFqb1liTUhaaTRmU2ZMNlpyRHhI?=
 =?utf-8?B?bnZQbDUvWmR5eDBKcHRzS0FPQzJEZUc1R3ZIT0JTNm4xOC9EUWVrMjluMGt3?=
 =?utf-8?B?UHVacjBLbENHL3p2TXBkYkpITHM5RXMyT1RPd2RDVGZpYjZnWHlaRWtvQ1ov?=
 =?utf-8?B?bWRyWTM5b3pkZmVjVG0vNVQ5MzM3UzlSZzNVMytidGlJN1pPcklSNFFDUWpS?=
 =?utf-8?B?T3dLTnNyUVlQbnZXY3VmQkd0U0pqMDBkaDFaUmRvTDRuUHNxaktPdEVINEhQ?=
 =?utf-8?B?WmNhWWZvVkJlSUEwdWNOdlliZmRyem9ET2YwRVFPeHRCK09YNS9PUUpBa0M0?=
 =?utf-8?B?cGFucHZvQ2tGN1RQTU9xdVRHMyt1SnZhZVJZc2piZVRHdWJ0ZXB0SFBOV2pr?=
 =?utf-8?B?WkU5SWpIYXdwUXJhL0ZGcTdFRkNqVUZNU3grWGxsMUpDSytsVkcraFFWT0xu?=
 =?utf-8?B?TEoxT0tENjhlS2RxV0duU0RGNXB5NDNlRFlxZ1Bxc1lTckI2SzZxbVF3ekV1?=
 =?utf-8?B?cEFaU09GUDVwZ1YydEZCT2FKdDVxZzNwRkd4OXU0eVhZRDZMVjZXRWY5Ly9G?=
 =?utf-8?B?MDByaWpFV3htVHZNc2s4cmdHV2VnUGc0TUlVa2ZJUVVmOUdsL2NkSlAzRnM3?=
 =?utf-8?B?aFlaK3VicTBUb2FCdFVYbU5rRkl5SXhJUCsxdkF0N3FIYnNGZ3J3emg1b2FO?=
 =?utf-8?B?T1JBbUpCandZZnN0N0lnOENtTk1JZjJmY3AvdUhWNElHd01DSEFmVzJaSWQr?=
 =?utf-8?B?Z2h4VlcydFV1anMzNng5b3pLVFE1TXEwSTdDSGp5TTIzREx1N3oyNUFUNUwr?=
 =?utf-8?B?KzRFSnkwZ0hyS1BId2ZFNlh2SytuSnhpK24xd3paYkJ5ZkZNdHV4anBrRlhT?=
 =?utf-8?B?K0ZGbTVuUDVMeVI1OUVPQm1tblU4VVJyOVlrMmpJRTlaLzRoWnAwN2dudDdj?=
 =?utf-8?B?clY4dUM4b2N1YUhGSlpQaXAvd0cyV3ZCa3ZicmJDeFM2RjV1djA0bEtjTmdv?=
 =?utf-8?B?dG5EaThpK0ZyY1FzNGZTUnFuTTMyT2loM1JIRk5qMVFhSmRqUEVFMlhuZnQ0?=
 =?utf-8?B?R0JqYlhVblhRWWs4TnVJS0QrL2lKOSs4TzFZd1VrUW1sSFJod0ROTGNES2FS?=
 =?utf-8?B?c1BydFpVQUlGdVhTYzRtdGRMVzdmTnRPSjA5djI2Rkx0cE1TeWhVOENmbHM2?=
 =?utf-8?B?VmJLU0ZHUnZYN21RcW56eUJNaG9ZOFltT1l0VitpSlA2emJPMzd6bE9xWVVx?=
 =?utf-8?B?cStKYmRvcCswaTIzanBnL2xqZFBsb2RXRStjbUNydDFOVWU0VzBMVGcrQjU2?=
 =?utf-8?B?ZHc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5c1a6922-0b3c-4574-90b3-08de34138da4
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Dec 2025 15:32:52.0053 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: tJIFwTeLUOhayQ+9NJUY3tkV4WzvA8P7iu1QElG6keIRphdrOvtQthbdHwgFrJ22D3CsExw1v9TRzzvT1mApviP0evJBihGkL+hPUXL7qmM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6133
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

On 2025-12-04 at 14:38:27 GMT, Krzysztof Karas wrote:
> vpos (int) field multiplied by crtc_htotal (u16) may cause
> implicit promotion of the latter and overflow the result causing
> undefined behavior.
> 
> Cast the u16 operand to (s32) type to avoid that.
> 
> Signed-off-by: Krzysztof Karas <krzysztof.karas@intel.com>

Reviewed-by: Krzysztof Niemiec <krzysztof.niemiec@intel.com>

Thanks
Krzysztof

> ---
> 
> v4:
> * use s32 cast instead of int;
> 
>  drivers/gpu/drm/drm_vblank.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/drm_vblank.c b/drivers/gpu/drm/drm_vblank.c
> index 32d013c5c8fc..e25dcaa6cad4 100644
> --- a/drivers/gpu/drm/drm_vblank.c
> +++ b/drivers/gpu/drm/drm_vblank.c
> @@ -791,7 +791,7 @@ drm_crtc_vblank_helper_get_vblank_timestamp_internal(
>  	 * since start of scanout at first display scanline. delta_ns
>  	 * can be negative if start of scanout hasn't happened yet.
>  	 */
> -	delta_ns = div_s64(1000000LL * (vpos * mode->crtc_htotal + hpos),
> +	delta_ns = div_s64(1000000LL * (vpos * (s32)mode->crtc_htotal + hpos),
>  			   mode->crtc_clock);
>  
>  	/* Subtract time delta from raw timestamp to get final
> -- 
> 2.34.1
> 
