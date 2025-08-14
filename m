Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AA61DB25CF4
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Aug 2025 09:20:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B8C7310E7FB;
	Thu, 14 Aug 2025 07:20:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LpylHlZy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 02FFF10E0D7;
 Thu, 14 Aug 2025 07:20:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755156036; x=1786692036;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=VA8ouN83tRlQYMPadltXhEBskdfAEdiP4V8iBydxcrM=;
 b=LpylHlZyHKJqa6n0myVD0Z/CovmreYv32fDa7qz6hZUK5P/GVVHirzmI
 o/dJrvjX4TNqa0lP0t2d6hug5yMPIvE3CUH0xWbLSRN5KwQRSNzFERt05
 1ir1VmPXeRzJCjGvrSN49Kbup3toGLdFkU4KPo9yg1onBMWluoV8KDDjt
 WoMWtHDuj3tXz/hbafWgyO3XI0ZnPV+ORT4hfsI0HqNh5JlO3vHwBwjIl
 /qFT3gJJ71mlZncDSfUhwgxUzvia27qJ/euYFv1r1rBB6VyZSltLcDGO6
 VwP93wCj0Wf/riXV4nTPd2Ubp6F5RxYo4PnCRNLHcfTx7ySPW95pODfw0 A==;
X-CSE-ConnectionGUID: No2u7tUgSwWGHi+NnKAmkg==
X-CSE-MsgGUID: jcXG0ZLEQUaGashmdX5B7Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11520"; a="60091547"
X-IronPort-AV: E=Sophos;i="6.17,287,1747724400"; d="scan'208";a="60091547"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Aug 2025 00:20:36 -0700
X-CSE-ConnectionGUID: VvgCEp7GTkWp/HBaoW9/fg==
X-CSE-MsgGUID: wfsJUBq6T3iBW+cWEhifDw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,287,1747724400"; d="scan'208";a="171924809"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Aug 2025 00:20:35 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Thu, 14 Aug 2025 00:20:35 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Thu, 14 Aug 2025 00:20:35 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (40.107.101.84)
 by edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Thu, 14 Aug 2025 00:20:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=IzAiSubc+rF27re353SiHYxIIjEJD94WU76QgLFOgvVPLMoe//b6U6qPBWC2PPRPyd1ZYhGN7/xj1vLUAnJ1YJlLu31TWTzPimjfU0mta7gF08nHLKyHdPTjtXLcxuJmiM2JjaIZpKeoLoKZkSpRGTQcE+/Y4VNXXShVpiSvfIlXoGD1dTRi9bRUnw1yrx4jtksXspf5IHtNucwmW5zqw7I5CEd9qVWICquHYpL46REiesJS9B9QUEpHmH+YYKhSGLwskCv9wpO6KUNgPXEgNXzTgb333woemMwZySzbyyE23N64Po+aky2MXgq+0k/4VzenTrtFKq08xxp4pUa+yw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VA8ouN83tRlQYMPadltXhEBskdfAEdiP4V8iBydxcrM=;
 b=uI85MvZOCkn46PzVqUWUXG6uLss4kVSwQQSgLpSj4GGEV2tuq97oYiS0oPrzaFyTA1m6P65pYioeifyHdIl1p2Bci/6HrPj5+/AWhYGUtG3SuvBDBuX315qAKd5YS/a4Unj36DpuaSlqPgxl/lEGIwSHpPD8IL7SUMFogFaU00/zHFd4xZMAy/omKRm/pFfEek8kd413Ze8kDicEAwVsctY3XJPDhz2Gt6Yw5a3+pWDQ8FMBxUoLW3O1zB+FdiQpcTgPiGWVtRzgoQBNrum1EEhMS7RJ0446Q448yGRKPjTwszuaBF0UHE6cB8KryJ82jjzBexSBgmjnQEPaYH3dkQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::28) by PH7PR11MB7028.namprd11.prod.outlook.com
 (2603:10b6:510:20b::19) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9031.15; Thu, 14 Aug
 2025 07:20:31 +0000
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::b3a6:f19a:9bce:ba36]) by DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::b3a6:f19a:9bce:ba36%7]) with mapi id 15.20.9009.017; Thu, 14 Aug 2025
 07:20:30 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>
Subject: RE: [PATCH 02/12] drm/i915: add vlv_clock_get_czclk()
Thread-Topic: [PATCH 02/12] drm/i915: add vlv_clock_get_czclk()
Thread-Index: AQHcBen3c0q/J6yJl0mYd6TMr7iXg7Rhy+rA
Date: Thu, 14 Aug 2025 07:20:30 +0000
Message-ID: <DS4PPF69154114FFBBC421144F8F8A721E3EF35A@DS4PPF69154114F.namprd11.prod.outlook.com>
References: <cover.1754385408.git.jani.nikula@intel.com>
 <54fec0caf4f657893418e38d778fe60a155902b7.1754385408.git.jani.nikula@intel.com>
In-Reply-To: <54fec0caf4f657893418e38d778fe60a155902b7.1754385408.git.jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPF69154114F:EE_|PH7PR11MB7028:EE_
x-ms-office365-filtering-correlation-id: cace23d4-e87c-4660-fb31-08dddb030d31
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?utf-8?B?NXdRT3BBT1l0NnFveDFUUG1hY3lQaTZGbnRseU10OVNhekRqL0daTWZMS2M0?=
 =?utf-8?B?WUtDMTA4YVQ5UE4wWnRxUnpObzVLSkd5YlBYTzRYUVd3Rmh5ZTIrRTVHa2Jw?=
 =?utf-8?B?djdSa2haR0d1NThISjBLV3hFV25ucmtPZTF2UUUxTThYK1pwQXdEZEtUb3ZG?=
 =?utf-8?B?cjkrcDBwQlltZklMc2FzMi9URTFTU0ZlV25Zdk8vNkNCMStYQVZFSjk3a29S?=
 =?utf-8?B?K2F0bEZwVStiOStnS3RUVlhRWTZneWFyRTNFQXlGQXRJZmhOTm9xajcweUlW?=
 =?utf-8?B?K0E1dU1hSEluRWQySkhwWllHMnJQaDd4Unp3QmhOWGZmSXhsRzYyMzNCUmJo?=
 =?utf-8?B?ZmtIN3ZQVEVXSXc3UzdPcjRiTjJBMWV0Znp2cXRLWHRSdnBMTVdsNXFkL2F5?=
 =?utf-8?B?V1NkUG1vT0JYTFFlQjZvRmp2Y2tPTm80cHdqakVIWEhGOTRJc1FKbmsvbkJ1?=
 =?utf-8?B?RjdNU2VGN0c3K2tXL2c3STVaY3RJMmlib3QzRnoycnRGREtiUThybmlZbG9C?=
 =?utf-8?B?OEliSUtZSEY5RE5wT21wVUtGVW0xTEF5MzZieG5aRDRpL2VERDZ0VFgvSlZq?=
 =?utf-8?B?eVNBTjQ0K1ZWcjNWYkFJSWptMnFzL3RIUWV5RHBnRUt1MzlLZU4yYWVPeHhs?=
 =?utf-8?B?UTQweHloa3ptWllCOGxoUVIycnNPY1l5cUlaemV4YmhET0FTNmwwVStHMGV1?=
 =?utf-8?B?enZsMVQxYVpRNmpuSG8xSXAwYUtqZ0JQd0h3UlRVYUNhblY5S2RSWGJNUzhX?=
 =?utf-8?B?Vk95YWlyQ1BwdkpzcUE5TG9VV3I0RVptT3FhNFBCRkQyZXJ6KzUreWpHZzFM?=
 =?utf-8?B?VGV0N0NOK3lFOCswTlJ4ZUtyUkdDZVNmV0htTDBVQXI5dGRCQVN2NjNCYjI1?=
 =?utf-8?B?L3dBa3kyVTl4WW5tMVY3VmVoYk9sYTdEYUlXMVpyRkNIUzBEOEkxZ3Bwc3BP?=
 =?utf-8?B?M0NPTE4rcmMwNEovdVI2a3FxcDJoazBXWmloUVlxZFJKK2FJUlR4TTU3RFF5?=
 =?utf-8?B?RkdxZFVHci84RkdpOFNPOUpIdkF4T0o0Z1BaeG5VSFpxK2JsRjU1blhpRUFo?=
 =?utf-8?B?R1pEeU83OGxUSGJpTEhFdnNVc3RRU09IZys4WHo0Z1RDWW9Bbkp5V2Y1YXlq?=
 =?utf-8?B?cXNpUkNpcTVBNkl6Y1JoeG9iRG8vMldwRUl3NmxMNFMwOXh0d0xRWUhWZ0U1?=
 =?utf-8?B?c1V3MC9MZ3Z0Z2JKOTI4K3QrS1hrelAvR0FkdUhUWWNBNWhjTFVOMDlDUzUv?=
 =?utf-8?B?UFo3YitpTE5ZREgvb1BMVGg4ejczVjdPRWoranVQOVAraWRmY2tzN0tZMThX?=
 =?utf-8?B?WjRyakZJMWhLSkdIVHJ3dHNtd3dNYlJZNFJ5VnVuMjRuZGhOWDdHZHM0Nm53?=
 =?utf-8?B?cDVPY2pWa3dMT2V1TEI1SklCSnVSVHVxNnpoRGNYTVB1dTJ3RENsRGdwU0FE?=
 =?utf-8?B?YWVtNGxRVFpGN29oSUxaNzdNMTdKZHZhbWRiRXBxRGJVSWt2VTNjVnorOEtE?=
 =?utf-8?B?WTBtNnIrVUpFTk9acXUwYUxMclUxSXcxRU9kNUk2NkoyUnBJakRveGptZnIw?=
 =?utf-8?B?QlI0bzFBUzl5SjRVdk05UE1GMjhNQmFZZENsNWl6bVd1ZXkybWxHazRYdWtU?=
 =?utf-8?B?eTIzUk41MUpUNVRFSzl6UHN5WTRGM1dldXd5ekNwcHVUVTJpR3VCUEFEc2lo?=
 =?utf-8?B?MTFXaU1TbFFwWG5rdHFHdzdLbVR4Mmp4UmZtdnlENjlaQ1hhMkJuZGl1ak85?=
 =?utf-8?B?cmZFQzhIN3RlMnBScnZjMVpydzYzOVFYODdLRHZsbGFvVmJxUDFYdkMzaHVG?=
 =?utf-8?B?dWY2YkpiQTZYT2tId0oyb2x2WklTQ1p1cVVwZDFSbnZZTFZucXpJS1VTUDlx?=
 =?utf-8?B?aHVHcXovSXpmYjhwUHM1M2hhdXZaTG81eXVBaXhuanlFcXVndWJMQXc1ZnJv?=
 =?utf-8?B?UTg1V2FYSU92c1F0NTFvSmlrb1M5TjFMckcwRXhMYmhrMmVEbUNWL2lQUk9U?=
 =?utf-8?B?Yjd3RXhEVmpnPT0=?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPF69154114F.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?cERORXJCd2hKTkwyRVlCTTYzcGdkQm4vbG5yVG9yWEV3SnVHcm1TSURuQmlq?=
 =?utf-8?B?NDdTMUxkc0FtbXdKQTVjNVFrSC85K2RCL2xlbzFpUStlWWUrc3g1djRqcW1Y?=
 =?utf-8?B?eDhlcWl4bnQ1QytxdXpaOWRsL2F1QlNQdTVJOXB1U3loY1NYSjdTeVlWSEl0?=
 =?utf-8?B?ZzdHOUZESkxtK1d4cWRINnpaTVYyR2RvNklPd3NYOFpIajNoOUVFVEpzN090?=
 =?utf-8?B?eFpacnNQcHd2UVNnSzRld3NpajNSWjljbkhjcU5uVWpheXlBb013ZG1RMFVt?=
 =?utf-8?B?YWozV1ByWHYraHBuUE80c0NWUlZTaTByZzdaa0QwbENwYnlKd3FPRjNISFUv?=
 =?utf-8?B?TTEyUjE1dHE0UXg3MWNWdjZnSmM2TUhkK3Z1Wk5zb1Z2ZTR2bTYvS2xZa1FE?=
 =?utf-8?B?RGVEeTVuZHZvRXNXaVZFZG5xMVNUamIzS3FVSUhpZTlXZTVubmdHQnpqNDRx?=
 =?utf-8?B?bmRRaDgyREFhWXFBbll5bGxnZDNBUDJxeVNJc1lsMVliV0VOM0hhdFVHVUJP?=
 =?utf-8?B?T2ZRUHQzMnFBK3BadlZ2aVIxazVhcWpsS2VIQU9uT25vZThsWU5WdEFDSkJV?=
 =?utf-8?B?aDQyaU04TDV6ZGtaWXlseS9nZjMvREpGWTNPYmNQTW91WDRzaWp1bWdkMXVD?=
 =?utf-8?B?ZGVQQlhWYytqZEVzSG9oVHdPcmxYNFpTUW1QYk5PaVhRVnlnS0ZRU3lTOXYv?=
 =?utf-8?B?SjErVk1pRkYrbUZQbFhVRUlBWndsU25XWFRKaHBYUnE5RGNWRE9mWmdOL0lm?=
 =?utf-8?B?NlB6RVRQc2NQZjV3YXdlNGtUVmtMcHNwZmNEQUN5YUxFd3FJZ0YycEN6RElX?=
 =?utf-8?B?Yk1rVDdiU1lUSndJQmo5alE5YjhJNEVoN2FIc2ROYlR3WU4xQ2tGT1NOczZ1?=
 =?utf-8?B?NHNWdlZFbDZiaENwTDRXd25RSWNRYmsyWWxqRjZyWTdYNVdrSGUxV1RRWk1o?=
 =?utf-8?B?Vk0wZU96Vkd1OERXR0VnNzJubDgzWldQeWs1eWVaTmpKRHdjNEtBM01nblUw?=
 =?utf-8?B?bDg2Y2g2U0N5WllPbTRXZWlObEpEdzVLbDYzMDhEZkZ0SW9sNVh0eWpQTW55?=
 =?utf-8?B?SmxGMk5JdmN2YVdkbXdxSnFoMDFTeDRNbU11dm15UW5Yc01sQUUxQWx2QWRP?=
 =?utf-8?B?UnYwZTZsbU83L0dndG9LTDIxM3hRSVVRVm0xZnBWMm5VTDdSc3FQWUljQlkw?=
 =?utf-8?B?WmxtZ1FFbkhsY3QwQmN3Zy9TZ0NkbjF5LzBYN2t4NGFvTm1iZVR4bElZSC9j?=
 =?utf-8?B?MUtZK1JmTXR2RHZVWjNLWDZhZ0dFaGRuK0l5aVNFK1kwR3BjL2pvUklxV3g2?=
 =?utf-8?B?U2FFOUxHNUVLdjZSeUVtYWdlM0lyZmtqbmkyL1NidHF5cmhIcVpLeW1WZHpG?=
 =?utf-8?B?NlNGVkVOemdiUXVoa1lSQUZMM2NPcjVFdmdEVUJ1b2ZSdFc4S1RBcHEwMjJT?=
 =?utf-8?B?anhzZ29WajRwUXhBd3lBRzhSTmNMQnJ2UUpaVE9oOU04SnFibzRiaTdYdWta?=
 =?utf-8?B?UW9QSDlDOUxhV1Q5S1NIQUdVdDBqenU0djlRbVk1NVpaK1R0eWk1S3N0VFhE?=
 =?utf-8?B?RkNKWXpudU5rTTNySzAxbitYZDRCaEhwekdnMkx4R01YQ2FxVFlVbGpHb1Jx?=
 =?utf-8?B?K1g3OXFmTXdIeW5CRjY0QUk1ZWg5bzhIWE0rNDdXamRqVUlIYVowSUErdHRM?=
 =?utf-8?B?dExlalpvMzFZMTBQTEt6SjR1QW5KaHIwREtMcUVtNEhzM3JCNnVNcktqMFZ6?=
 =?utf-8?B?Z29MWXVEVERzQWViM0d2TldHb1ErNFVnUFZtN3NuVFFZZDRlQks0ejBSdFh3?=
 =?utf-8?B?Rmg5NVNhOHFScXI2eUVlcStGOHFBWnFHdVZjeWprQlp0QnpYaExvbGdOQTB0?=
 =?utf-8?B?eDhNakthVzRxNU9tRzFGK3pucS9Kc1NESWhzMlJyT3lGeHRDYkdyK3pEYkpY?=
 =?utf-8?B?NkdTVHBSRUVNOTN0c2t6S1RLL3NaN2gyNlAvdi81ck9wVFFmRGExdU52eTE0?=
 =?utf-8?B?UEFucG5uT2p2bVhkUzZMdkRFMUFSbkNQc2dOMkJsRDBpalRnZWQrVjZnY1Z3?=
 =?utf-8?B?QmUwc0VsWUtKUGQ5MlU1bncxVWZ0UHI2ZjN0aG0rZmlFZGFjVmtCRlVIRXZR?=
 =?utf-8?Q?Ed0AfCN24QOrKjDd6tlmJvKsL?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPF69154114F.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cace23d4-e87c-4660-fb31-08dddb030d31
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Aug 2025 07:20:30.8783 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: TDKhJvTo4P2LZVa2Wt9oSk9kMvcd9Nyfcwe0V2bLODQy/TIr5DOAjT54WQlB7swmaR726j+PC7A+SWqCaZNOgg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7028
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC14ZSA8aW50ZWwteGUt
Ym91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBKYW5pIE5pa3VsYQ0K
PiBTZW50OiBUdWVzZGF5LCA1IEF1Z3VzdCAyMDI1IDEyLjE4DQo+IFRvOiBpbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnOyBpbnRlbC14ZUBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gQ2M6
IE5pa3VsYSwgSmFuaSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPg0KPiBTdWJqZWN0OiBbUEFUQ0gg
MDIvMTJdIGRybS9pOTE1OiBhZGQgdmx2X2Nsb2NrX2dldF9jemNsaygpDQo+IA0KPiBBZGQgdmx2
X2Nsb2NrX2dldF9jemNsaygpIGhlbHBlciB0byBhdm9pZCBsb29raW5nIGF0IGk5MTUtPmN6Y2xr
X2ZyZXEgZGlyZWN0bHkuDQo+IA0KDQpSZXZpZXdlZC1ieTogTWlrYSBLYWhvbGEgPG1pa2Eua2Fo
b2xhQGludGVsLmNvbT4NCg0KPiBTaWduZWQtb2ZmLWJ5OiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1
bGFAaW50ZWwuY29tPg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfY2RjbGsuYyAgIHwgIDMgKy0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2Rpc3BsYXkuYyB8IDIwICsrKysrKysrKysrKysrLS0tLS0tICBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuaCB8ICAxICsNCj4gIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L2ludGVsX3JjNi5jICAgICAgICAgIHwgIDMgKystDQo+ICBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC9pbnRlbF9ycHMuYyAgICAgICAgICB8ICAzICsrLQ0KPiAgNSBmaWxlcyBjaGFuZ2Vk
LCAyMCBpbnNlcnRpb25zKCspLCAxMCBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NkY2xrLmMgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2NkY2xrLmMNCj4gaW5kZXggNTk5OTdkYzk1OTg0Li44ZjZi
MzFiZmU3YzAgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfY2RjbGsuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Nk
Y2xrLmMNCj4gQEAgLTYyOSw3ICs2MjksNiBAQCBzdGF0aWMgdm9pZCB2bHZfZ2V0X2NkY2xrKHN0
cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5LA0KPiANCj4gIHN0YXRpYyB2b2lkIHZsdl9wcm9n
cmFtX3BmaV9jcmVkaXRzKHN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5KSAgew0KPiAtCXN0
cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoZGlzcGxheS0+ZHJtKTsN
Cj4gIAl1bnNpZ25lZCBpbnQgY3JlZGl0cywgZGVmYXVsdF9jcmVkaXRzOw0KPiANCj4gIAlpZiAo
ZGlzcGxheS0+cGxhdGZvcm0uY2hlcnJ5dmlldykNCj4gQEAgLTYzNyw3ICs2MzYsNyBAQCBzdGF0
aWMgdm9pZCB2bHZfcHJvZ3JhbV9wZmlfY3JlZGl0cyhzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlz
cGxheSkNCj4gIAllbHNlDQo+ICAJCWRlZmF1bHRfY3JlZGl0cyA9IFBGSV9DUkVESVQoOCk7DQo+
IA0KPiAtCWlmIChkaXNwbGF5LT5jZGNsay5ody5jZGNsayA+PSBkZXZfcHJpdi0+Y3pjbGtfZnJl
cSkgew0KPiArCWlmIChkaXNwbGF5LT5jZGNsay5ody5jZGNsayA+PSB2bHZfY2xvY2tfZ2V0X2N6
Y2xrKGRpc3BsYXktPmRybSkpIHsNCj4gIAkJLyogQ0hWIHN1Z2dlc3RlZCB2YWx1ZSBpcyAzMSBv
ciA2MyAqLw0KPiAgCQlpZiAoZGlzcGxheS0+cGxhdGZvcm0uY2hlcnJ5dmlldykNCj4gIAkJCWNy
ZWRpdHMgPSBQRklfQ1JFRElUXzYzOw0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2Rpc3BsYXkuYw0KPiBpbmRleCBmZGQyOWQ5MjU2ZWQuLjExN2I2YzQyM2E0YyAxMDA2
NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMN
Cj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4g
QEAgLTE4NiwyNSArMTg2LDMzIEBAIGludCB2bHZfZ2V0X2Nja19jbG9ja19ocGxsKHN0cnVjdCBk
cm1fZGV2aWNlICpkcm0sDQo+ICAJcmV0dXJuIGhwbGw7DQo+ICB9DQo+IA0KPiAtaW50IHZsdl9j
bG9ja19nZXRfZ3BsbChzdHJ1Y3QgZHJtX2RldmljZSAqZHJtKQ0KPiAraW50IHZsdl9jbG9ja19n
ZXRfY3pjbGsoc3RydWN0IGRybV9kZXZpY2UgKmRybSkNCj4gIHsNCj4gIAlzdHJ1Y3QgZHJtX2k5
MTVfcHJpdmF0ZSAqaTkxNSA9IHRvX2k5MTUoZHJtKTsNCj4gDQo+ICsJaWYgKCFpOTE1LT5jemNs
a19mcmVxKQ0KPiArCQlpOTE1LT5jemNsa19mcmVxID0gdmx2X2dldF9jY2tfY2xvY2tfaHBsbChk
cm0sICJjemNsayIsDQo+ICsJCQkJCQkJICBDQ0tfQ1pfQ0xPQ0tfQ09OVFJPTCk7DQo+ICsNCj4g
KwlyZXR1cm4gaTkxNS0+Y3pjbGtfZnJlcTsNCj4gK30NCj4gKw0KPiAraW50IHZsdl9jbG9ja19n
ZXRfZ3BsbChzdHJ1Y3QgZHJtX2RldmljZSAqZHJtKSB7DQo+ICAJcmV0dXJuIHZsdl9nZXRfY2Nr
X2Nsb2NrKGRybSwgIkdQTEwgcmVmIiwgQ0NLX0dQTExfQ0xPQ0tfQ09OVFJPTCwNCj4gLQkJCQkg
aTkxNS0+Y3pjbGtfZnJlcSk7DQo+ICsJCQkJIHZsdl9jbG9ja19nZXRfY3pjbGsoZHJtKSk7DQo+
ICB9DQo+IA0KPiAgdm9pZCBpbnRlbF91cGRhdGVfY3pjbGsoc3RydWN0IGludGVsX2Rpc3BsYXkg
KmRpc3BsYXkpICB7DQo+IC0Jc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9f
aTkxNShkaXNwbGF5LT5kcm0pOw0KPiArCWludCBjemNsa19mcmVxOw0KPiANCj4gIAlpZiAoIWRp
c3BsYXktPnBsYXRmb3JtLnZhbGxleXZpZXcgJiYgIWRpc3BsYXktPnBsYXRmb3JtLmNoZXJyeXZp
ZXcpDQo+ICAJCXJldHVybjsNCj4gDQo+IC0JZGV2X3ByaXYtPmN6Y2xrX2ZyZXEgPSB2bHZfZ2V0
X2Nja19jbG9ja19ocGxsKGRpc3BsYXktPmRybSwgImN6Y2xrIiwNCj4gLQkJCQkJCSAgICAgIEND
S19DWl9DTE9DS19DT05UUk9MKTsNCj4gKwljemNsa19mcmVxID0gdmx2X2Nsb2NrX2dldF9jemNs
ayhkaXNwbGF5LT5kcm0pOw0KPiANCj4gLQlkcm1fZGJnX2ttcyhkaXNwbGF5LT5kcm0sICJDWiBj
bG9jayByYXRlOiAlZCBrSHpcbiIsIGRldl9wcml2LT5jemNsa19mcmVxKTsNCj4gKwlkcm1fZGJn
X2ttcyhkaXNwbGF5LT5kcm0sICJDWiBjbG9jayByYXRlOiAlZCBrSHpcbiIsIGN6Y2xrX2ZyZXEp
Ow0KPiAgfQ0KPiANCj4gIHN0YXRpYyBib29sIGlzX2hkcl9tb2RlKGNvbnN0IHN0cnVjdCBpbnRl
bF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKSBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmgNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2Rpc3BsYXkuaA0KPiBpbmRleCA3YWU4OTliODc4N2EuLjgxMTA2NmE5ZTY5ZCAx
MDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5
LmgNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmgN
Cj4gQEAgLTQ0MCw2ICs0NDAsNyBAQCBpbnQgdmx2X2dldF9jY2tfY2xvY2soc3RydWN0IGRybV9k
ZXZpY2UgKmRybSwNCj4gIAkJICAgICAgY29uc3QgY2hhciAqbmFtZSwgdTMyIHJlZywgaW50IHJl
Zl9mcmVxKTsgIGludCB2bHZfZ2V0X2Nja19jbG9ja19ocGxsKHN0cnVjdCBkcm1fZGV2aWNlICpk
cm0sDQo+ICAJCQkgICBjb25zdCBjaGFyICpuYW1lLCB1MzIgcmVnKTsNCj4gK2ludCB2bHZfY2xv
Y2tfZ2V0X2N6Y2xrKHN0cnVjdCBkcm1fZGV2aWNlICpkcm0pOw0KPiAgaW50IHZsdl9jbG9ja19n
ZXRfZ3BsbChzdHJ1Y3QgZHJtX2RldmljZSAqZHJtKTsgIGJvb2wgaW50ZWxfaGFzX3BlbmRpbmdf
ZmJfdW5waW4oc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXkpOyAgdm9pZA0KPiBpbnRlbF9l
bmNvZGVyX2Rlc3Ryb3koc3RydWN0IGRybV9lbmNvZGVyICplbmNvZGVyKTsgZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3JjNi5jDQo+IGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvaW50ZWxfcmM2LmMNCj4gaW5kZXggOWNhNDI1ODlkYTRkLi4wZmQyM2IwNGQzZjkg
MTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3JjNi5jDQo+ICsr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3JjNi5jDQo+IEBAIC02LDYgKzYsNyBA
QA0KPiAgI2luY2x1ZGUgPGxpbnV4L3BtX3J1bnRpbWUuaD4NCj4gICNpbmNsdWRlIDxsaW51eC9z
dHJpbmdfaGVscGVycy5oPg0KPiANCj4gKyNpbmNsdWRlICJkaXNwbGF5L2ludGVsX2Rpc3BsYXku
aCINCj4gICNpbmNsdWRlICJnZW0vaTkxNV9nZW1fcmVnaW9uLmgiDQo+ICAjaW5jbHVkZSAiaTkx
NV9kcnYuaCINCj4gICNpbmNsdWRlICJpOTE1X3JlZy5oIg0KPiBAQCAtODAyLDcgKzgwMyw3IEBA
IHU2NCBpbnRlbF9yYzZfcmVzaWRlbmN5X25zKHN0cnVjdCBpbnRlbF9yYzYgKnJjNiwgZW51bSBp
bnRlbF9yYzZfcmVzX3R5cGUgaWQpDQo+ICAJLyogT24gVkxWIGFuZCBDSFYsIHJlc2lkZW5jeSB0
aW1lIGlzIGluIENaIHVuaXRzIHJhdGhlciB0aGFuIDEuMjh1cyAqLw0KPiAgCWlmIChJU19WQUxM
RVlWSUVXKGk5MTUpIHx8IElTX0NIRVJSWVZJRVcoaTkxNSkpIHsNCj4gIAkJbXVsID0gMTAwMDAw
MDsNCj4gLQkJZGl2ID0gaTkxNS0+Y3pjbGtfZnJlcTsNCj4gKwkJZGl2ID0gdmx2X2Nsb2NrX2dl
dF9jemNsaygmaTkxNS0+ZHJtKTsNCj4gIAkJb3ZlcmZsb3dfaHcgPSBCSVRfVUxMKDQwKTsNCj4g
IAkJdGltZV9odyA9IHZsdl9yZXNpZGVuY3lfcmF3KHVuY29yZSwgcmVnKTsNCj4gIAl9IGVsc2Ug
ew0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcnBzLmMgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ycHMuYw0KPiBpbmRleCBlMmI1Y2RmNmI3Y2Iu
LjY2NGZmZTAyZGMyOCAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50
ZWxfcnBzLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcnBzLmMNCj4g
QEAgLTE3NzAsNiArMTc3MCw3IEBAIHN0YXRpYyB2b2lkIHZsdl9jMF9yZWFkKHN0cnVjdCBpbnRl
bF91bmNvcmUgKnVuY29yZSwgc3RydWN0IGludGVsX3Jwc19laSAqZWkpDQo+IA0KPiAgc3RhdGlj
IHUzMiB2bHZfd2FfYzBfZWkoc3RydWN0IGludGVsX3JwcyAqcnBzLCB1MzIgcG1faWlyKSAgew0K
PiArCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0gcnBzX3RvX2k5MTUocnBzKTsNCj4g
IAlzdHJ1Y3QgaW50ZWxfdW5jb3JlICp1bmNvcmUgPSBycHNfdG9fdW5jb3JlKHJwcyk7DQo+ICAJ
Y29uc3Qgc3RydWN0IGludGVsX3Jwc19laSAqcHJldiA9ICZycHMtPmVpOw0KPiAgCXN0cnVjdCBp
bnRlbF9ycHNfZWkgbm93Ow0KPiBAQCAtMTc4Niw3ICsxNzg3LDcgQEAgc3RhdGljIHUzMiB2bHZf
d2FfYzBfZWkoc3RydWN0IGludGVsX3JwcyAqcnBzLCB1MzIgcG1faWlyKQ0KPiANCj4gIAkJdGlt
ZSA9IGt0aW1lX3VzX2RlbHRhKG5vdy5rdGltZSwgcHJldi0+a3RpbWUpOw0KPiANCj4gLQkJdGlt
ZSAqPSBycHNfdG9faTkxNShycHMpLT5jemNsa19mcmVxOw0KPiArCQl0aW1lICo9IHZsdl9jbG9j
a19nZXRfY3pjbGsoJmk5MTUtPmRybSk7DQo+IA0KPiAgCQkvKiBXb3JrbG9hZCBjYW4gYmUgc3Bs
aXQgYmV0d2VlbiByZW5kZXIgKyBtZWRpYSwNCj4gIAkJICogZS5nLiBTd2FwQnVmZmVycyBiZWlu
ZyBibGl0dGVkIGluIFggYWZ0ZXIgYmVpbmcgcmVuZGVyZWQgaW4NCj4gLS0NCj4gMi4zOS41DQoN
Cg==
