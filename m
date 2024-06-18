Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D02990CABB
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jun 2024 13:58:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1FA2510E135;
	Tue, 18 Jun 2024 11:58:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lzvNbCtX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6B87110E135
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Jun 2024 11:58:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718711935; x=1750247935;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=aI5c8iVlXYnq2N2K80IvUUtDOPqYWiPlSAEdMR2sPgY=;
 b=lzvNbCtXCij5qXMxYMRm+M1Vc+GpAy+4ejirxkR/lPdpGYpiaZASEzVQ
 XOe6elhB+62wQLdF4VjUln5cbm8d55PkyoZ2d2xBdTmfv99Mvp4ey44Le
 NYu9FAg1b+nhwWPybKwXp6Qlk//5BrjqQgKO4lhXGFHE6GA0bGKO7nDIK
 kUvZwUW4Yza1F7ywvU573USTyZi93IpI0ZPuX2uGy/BwaMBDL/vecno4E
 j/bhYBV2JizKfCrU8FH128hSQpfAQy4WzhREbaZXGZENiech5Ph4w8Quk
 Le7Nj8jVvVdCoJmNDfrslHxvPelCWfMs/7cjDlvVQWp5tM35c6DbMtjHY Q==;
X-CSE-ConnectionGUID: MfmiBHhcSGyYlzdeixv0Fw==
X-CSE-MsgGUID: HRJX68QGTECT8R90BKZMpQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11106"; a="15817402"
X-IronPort-AV: E=Sophos;i="6.08,247,1712646000"; d="scan'208";a="15817402"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2024 04:58:54 -0700
X-CSE-ConnectionGUID: /8wscos4QxOSB97XWr8I/A==
X-CSE-MsgGUID: e3938gUxTvKLSa4xn1/z2g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,247,1712646000"; d="scan'208";a="46485434"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 18 Jun 2024 04:58:54 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 18 Jun 2024 04:58:53 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 18 Jun 2024 04:58:53 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 18 Jun 2024 04:58:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VwKiPvvJAbo7fi0rgjxSiFN9hCYaODM1na4jSJTZoi2pXg6+ezNCbHNiVRRZAJS6awLbBvF6xkw09FfGFe2R/ptF/rTmp6caHxWRAzLiravXCwriM3oxAkQVpuwXXZPykjjuCuyM9D82Pa6hUBImQa3/J9kRabKnRk97xhvrsa5VKlGUtNHhUGYN3OUVmnyKQGtwhR17F98dCqGUGcSH8SqhK7cKpX80OgNoXhkw5l+FOqP3JBuLbuUERqVmL8NDZnoyABf2XUeGsUmjqSJNTS/lfBiAJQiQif4uQvmLiab4Onk1Lc1elL78s+I868X+qoKbFFulneZOoY4O3quGmA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aI5c8iVlXYnq2N2K80IvUUtDOPqYWiPlSAEdMR2sPgY=;
 b=hzL83VXGOB8z74YMCL4yfrg4ic9oGJsEkIBXRrAiCGOnzdxd93cgiuPbSyFal8EmWyDnvvdz3J71pJ9qGzItzD2zdPujOlBL5YeMupg9NXauD+Q0H1F19RfXUWS8If8m3e9j95l6YyCAWM3oREO2aCKXr2W5M1jD6sikgm+ulYrhKQtaAfRMKuxPLdaunvYjavdEYZk66we4yiyYRGU5aJEYl1NG5rKFUku450R8ENXdURy+RtF24NDvegxKSGNXy8Oo6xSgiW+vvf0cdp20l8GVwzTT0KjSlxEuhbP8ByGdvYnfmPE8X1JnvVOxmKM/A+iGcYPC4mHkoowzCkDBHw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by DM4PR11MB6093.namprd11.prod.outlook.com (2603:10b6:8:b0::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7677.31; Tue, 18 Jun
 2024 11:58:44 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0%6]) with mapi id 15.20.7677.030; Tue, 18 Jun 2024
 11:58:44 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Kahola, Mika" <mika.kahola@intel.com>
Subject: RE: [PATCH 9/9] intel_alpm: Fix wrong offset for PORT_ALPM_* registers
Thread-Topic: [PATCH 9/9] intel_alpm: Fix wrong offset for PORT_ALPM_*
 registers
Thread-Index: AQHawUC7GV6s/HUNXkCIsR+c8ifWgbHNavaw
Date: Tue, 18 Jun 2024 11:58:44 +0000
Message-ID: <PH7PR11MB59815189661AC404601E1F22F9CE2@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20240618053026.3268759-1-jouni.hogander@intel.com>
 <20240618053026.3268759-10-jouni.hogander@intel.com>
In-Reply-To: <20240618053026.3268759-10-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|DM4PR11MB6093:EE_
x-ms-office365-filtering-correlation-id: 3c65dd4b-1753-4e5c-429f-08dc8f8e00f4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230037|1800799021|376011|366013|38070700015;
x-microsoft-antispam-message-info: =?utf-8?B?TWs1ZGw2NHhZMGMwd2ZlL1lMemduWkFiTnJvMHVCZ0x4MVVJaFUrSEFxeDVr?=
 =?utf-8?B?MXc1U1BuS1FHUGRKNkNlUzhXdWJHV0ZkZVpnZjVpRHVZdDVrK0tRWkNWVFRs?=
 =?utf-8?B?R0pENCtJc0pveFh5QVdlaDRaQ1RQaVhOa1hCVUY0bXc2TXQzaTRYNjJOSVFR?=
 =?utf-8?B?dWx5dS9HZDUwOUVXeGNudkhoRTlZc0M3Z0xpelBmbW5sLzVYazZsZFBiMStl?=
 =?utf-8?B?UHBncG9KZVlVSjY4NnVlQlk4UFAxSnAyOGZGMjhORVlKcjNFZGZ1L0xWZVZC?=
 =?utf-8?B?TUlnbEpUWGVJUEpyRUhVN1gvNzRXaDJsZHJEUUdtZllUYUxsMVNyRXdqLzZZ?=
 =?utf-8?B?RGRRR05yMmdxemo5OEhoUUdKM2dLUWlVdXo3Um0wMXZSNDMrbWRzd0tPYThu?=
 =?utf-8?B?MSt0elNpOWZ2WEJFcmtpLzh6OTdmRDgyOHJoNTNucVZxdmZ5R1VBZkx6SFNl?=
 =?utf-8?B?NEtxa3FDNjUrZG85azhnNXFiV3hTRFhRWUEvWmlhR3lIekJRbzAwWllScU42?=
 =?utf-8?B?RWZsL2IvN2REQk56cStxaE1wSEhlL0NDdUNmU0FqdERheDJxV09xUVhzYXBP?=
 =?utf-8?B?MDAyWVN0TUVFbHUvMEdkTUlTZllUU1JMNEV0WmgzZit6MW4vRlB1Q2ZaNmRS?=
 =?utf-8?B?RkE4TzJsZWZDekRvcCtJdDBIWElVS2lCSndOa3ZSNEhzMTNPbWVCd3VQWEdl?=
 =?utf-8?B?MTM3WEx3QzdkMHE1aXRieVoyeWtVSVJYSTJZVXhKSEJHQy8rTHl1RDlvNytw?=
 =?utf-8?B?Z3kvWlMydG9LWDdhMzVwa25RYTNVOGc4SXNoYk5YRUxJclhwTjkrNURtbnZk?=
 =?utf-8?B?UmtXQ3VMd0x2YUdFeW9tR1BKajRRT2lDMGVRdFlJNWtGbHU1RWx6VHd4QzNh?=
 =?utf-8?B?Qm9PVkM0OGY5MDg4cGlHMW9lZklZRi96YjRHamhwWGxGbThVY0dISmlJOHRx?=
 =?utf-8?B?T2h3UktnNUo2bXdSZFVnL2ZocExvbi9jbm5jTU5uT3ZZR2EvUG1lem5oYUlJ?=
 =?utf-8?B?bUpZbGxPUHdYWFl3bmM4aVBXTDhVbVQwZnZrbWpma0MzNTBQRktaQ1NjTktP?=
 =?utf-8?B?M1pCV0xuN2Y4bW01bjhxYUZZTm5Zc3prTGo0amtrOEJOSWh3R0daZTlCeGl1?=
 =?utf-8?B?M291TXFMU1JtcWUrdUVzZjJhY29kNk5tUEd6cy8wdTkrdlA0TGRNNk5qOEpV?=
 =?utf-8?B?TlZJaDVxZ3VIMGNFZlhTUjUrL0M3aUJYV1hDVnVrN2tZNVVpSkp1RGVlTWRB?=
 =?utf-8?B?TmVmNmRPRlo2UTdQaWxVckhSTTFzNjMvZW5CQmdIUTZDdkxIZWs5MmJ5TGRn?=
 =?utf-8?B?UW5sWUFrUEEyWVZZY2E0WUROV3MxK05ueVFDOS8yZ2JiTHpKbmtkRTJFL3N6?=
 =?utf-8?B?NG9hNVhnU1R6VldkbVdqbDZpMVZZbVNWZDB5UHJLVWIybFgvbHVqOWs2QVBP?=
 =?utf-8?B?MmU0YVZBZHZMZzFaNVdFYkgrbURPR2ZXY1FwVHh4Yy9FV0ZwSWMzdlBTbmxW?=
 =?utf-8?B?dDIySkpXaktUNkRYK1Y3UVA2ZUFueng4RXRzZmJCMFFUSkVKbGRrL1NQaWtO?=
 =?utf-8?B?QlBqTGhEeWRIeDhUY2RCamUrd2NEcXVNYldNMWZVOGR5ZnVOZ201WEhJa2pS?=
 =?utf-8?B?VTNwNjNXemo4ZzM1c1lzcmI1azZTdGcvQlRNc1IxOVFkQUFNSFl5OFhRRG1p?=
 =?utf-8?B?WnRJNHBFNkNlUGZXQnU5YStWb1VlSXlOL2ptRFcvU3dLVC9HOUR5TEZBOEgx?=
 =?utf-8?B?ZHZ0YVM5blphZjREdnhLQ2tESU1hdTkxVXVPVWR3ZTRHdlZqdnB1eXlvTHhT?=
 =?utf-8?Q?WU03fBNX0yDqh/gGhiKYZJELyaHlUVzUR/xhQ=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230037)(1800799021)(376011)(366013)(38070700015); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?RWpta2dGcWpVQTBpeXhIV0swRmRTdUNRTWtVKzhSQUk3MEJwMElXUHY2bU9B?=
 =?utf-8?B?N1JYeGU1RmhsdTNnSGVUU0srbm5jd1FnTGlFOUFUOGpML2dPVnJaN1lDbTQ3?=
 =?utf-8?B?WmdtM1FQeERQSUgzUUdySUJxTEdQYnZFY29SZjlLbGpQR0hTV2F2NnZNWjFK?=
 =?utf-8?B?SHpDeFEvZnhMeWNiVGpscUpXclBjOFphclQrcXV4YllZNzlyRXNWYXBnRVRv?=
 =?utf-8?B?ZTZTdmZheEdlMkxQU1ZNOEw1bXVtVzNvRU9qaVRObnFPYnNobkE5NENmaEZH?=
 =?utf-8?B?Z1ZnUDZ2cCthdDdkclU3TEpuZmxCbmJqVVlmV3ZCcHRWTEJSZ3hzVVROdkdz?=
 =?utf-8?B?dXB5YkhRY0NFa2M4cFRteElPWUgyOWgwczF4UHhUVmF2TG1mN3UvSFcrbGF5?=
 =?utf-8?B?d0xzd0tsRE9lYXp4SFQ2WU53bWlYaFJzRWMvRGlwNk5NTGxnM2hHYStlRXFl?=
 =?utf-8?B?THNKcllnS05YYUhQTEVuUkp4RG5kTFRFMkVscWJYS2N0TnhJby9jVytLTXNH?=
 =?utf-8?B?S0tnZFNKRlcvdmJMQ3lUMlFsMis0Y1QwOG9vT0tOMms5SmtReEdPTFEyTzVB?=
 =?utf-8?B?OXY5VXFqd0lFUlJxSG5BeE5RQXEvK1JJb2gyT2VaOTB3RUNFZjIwaWZTUFZD?=
 =?utf-8?B?eUdIS1BRL1VSLy90c09aamlyR3JSVnF4WjFLTzdGNVgycXJ5bi90UElZMW9E?=
 =?utf-8?B?VXVLQ0ZYbWNiZ1hmNFppTEMxMUwvb0tmblY3bUh3L2QzN3RQMjgyYUhxbk95?=
 =?utf-8?B?cVkzeFVhMFk4TTBoZUJkc3UvZFhDb0prazkzUXJ3UnZjWU9VRVZLQTAvdVNa?=
 =?utf-8?B?ZnBaemdidC9ncjE1WUpJMWlGeFYvdEh2TDV6REpvS3FuV0xPcXh5a3hTZ1py?=
 =?utf-8?B?cjlWOStqenlYaHIyNE5WcENTZ1U2RE02SUdaYTVGeXhqWFZZRWhIMXVBNHh2?=
 =?utf-8?B?Y3luMlBSTVRkUnBRTkgxRTlDS0g3TVNLMFE1VW1MaTJ6ZDUwZEVUN0ZpREVu?=
 =?utf-8?B?a1NHZUFnWXlRTUxnaFZuQmJVOG1qOFUvQ2dabWN5alpMS2lGQ2xxZisrQ0Jr?=
 =?utf-8?B?N3NlMjg4SUMvQzVuMmt5YmRGVmdRODlvOGo4SEJIbFZ0dTRIVUxLM0d3aExw?=
 =?utf-8?B?c3ExRmoxVTFHWVpzdDFzV3U3cmRBaXdpQ1g1UVkxSE5VK3RsL0FVdFFoSG5h?=
 =?utf-8?B?eCtXeC9lSTZYSmo3TmpkdDBwaTE3Y1V0UnlEczdzTEFIUWVLR2lBQk5aWGJO?=
 =?utf-8?B?WFJFYlFHNlBEWmF0ZnRyeEwyTE9lU1UvNmVNcGljZTJXemRGMmFnL21lc005?=
 =?utf-8?B?clJUVHVCZzFybzJ0QkdNcmQyS1BFRW1yeSt6VVkzZnJJT2VPditpdFRkZ3BT?=
 =?utf-8?B?SzVOSnErRklHNDlkcmFNNWJuLzFvTlZmUG0wV1RhVGNVNXQ1Si8yYlZZZ2tB?=
 =?utf-8?B?TTkyc05FZnVtUDB1L1B2S0ZSWXI2MnN4ZklRcEF6TVhIYkVlUEg0R1Y0aWR4?=
 =?utf-8?B?UEQ2cE5UTXF6Rk8yRmFzRVR3UVZrMk9tZ1g4dFdaYnRXbXordE11QW9ZQ29G?=
 =?utf-8?B?V3dNMDEyVkpnZEFUM0xHV01SN0c4U2prc1Q4TDJzQUxxeGxrLzR1OHIvbmdM?=
 =?utf-8?B?LzBYUzhEUE4xd3dRWVhQbU02Sk04c2hDSWFKQkVhQ1lRVGdRMTlUTG9HMXlw?=
 =?utf-8?B?bFo1SmJTWEFRNzdvMnVTYVBwWTliUERxbm1TV01CVWpJLzNSOVVwek13djhS?=
 =?utf-8?B?UTF2Zml1NSs2MzZFWlJwZEdFcGd0REk4U0ZpY25WN3JYQjRDMWpRNzhiNHdi?=
 =?utf-8?B?VkJoRG1icnJkcVVTRGdSc2EvR1ZjL1dpTGJqckFsQUwzSXhZZ01HbGJKN0g3?=
 =?utf-8?B?b1B1SDFWVzlBSW5FNjhZYWlKSU43ME1xa090OUM2eHZpSmFWOGplcjQyWWl6?=
 =?utf-8?B?bHZqend1YWRHb2xLcWNscXJpNUJpNFAzSGtJdTBzV1llUkNnVVFBUUc3NlVv?=
 =?utf-8?B?ZnErS1dOTkR0YUlZMGZJd094akNJUWMwb1dFM2hNb2J3bSttQlBVVU5lWHZM?=
 =?utf-8?B?SHNxOFRvRlBEeVhaWERFK2JNc3JYWEpjZVNpRkM5NURkMFMzcTRKclFsMSt3?=
 =?utf-8?Q?JzB3SX817oSr2ao+0DsPzyC2B?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3c65dd4b-1753-4e5c-429f-08dc8f8e00f4
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Jun 2024 11:58:44.3404 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 07rDBCPpdbTLVCW3brl/B6URNOwFxMsdtfkLWDMuyu7lru/htxRRISSEuUbWNd9cDm22RlvCWam4MAF9dJlBPQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6093
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSG9nYW5kZXIsIEpvdW5p
IDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IFNlbnQ6IFR1ZXNkYXksIEp1bmUgMTgsIDIw
MjQgMTE6MDAgQU0NCj4gVG86IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gQ2M6
IE1hbm5hLCBBbmltZXNoIDxhbmltZXNoLm1hbm5hQGludGVsLmNvbT47IEthaG9sYSwgTWlrYQ0K
PiA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPjsgSG9nYW5kZXIsIEpvdW5pIDxqb3VuaS5ob2dhbmRl
ckBpbnRlbC5jb20+DQo+IFN1YmplY3Q6IFtQQVRDSCA5LzldIGludGVsX2FscG06IEZpeCB3cm9u
ZyBvZmZzZXQgZm9yIFBPUlRfQUxQTV8qIHJlZ2lzdGVycw0KPiANCj4gUE9SVF9BTFBNXyogcmVn
aXN0ZXJzIGFyZSB1c2luZyBNTUlPX1RSQU5TMiBtYWNyby4gVGhpcyBpcyBub3QgY29ycmVjdA0K
PiBhcyB0aGV5IGFyZSBwb3J0IHJlZ2lzdGVyLiBVc2UgX1BPUlRfTU1JTyBpbnN0ZWFkLg0KPiAN
Cj4gRml4ZXM6IDRlZTMwYTQ0ODI1NSAoImRybS9pOTE1L2FscG06IEFkZCBBTFBNIHJlZ2lzdGVy
IGRlZmluaXRpb25zIikNCj4gU2lnbmVkLW9mZi1ieTogSm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5o
b2dhbmRlckBpbnRlbC5jb20+DQoNClJldmlld2VkLWJ5OiBBbmltZXNoIE1hbm5hIDxhbmltZXNo
Lm1hbm5hQGludGVsLmNvbT4NCg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfYWxwbS5jICAgICB8IDUgKysrLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfcHNyX3JlZ3MuaCB8IDYgKysrKy0tDQo+ICAyIGZpbGVzIGNoYW5nZWQsIDcg
aW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2FscG0uYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfYWxwbS5jDQo+IGluZGV4IDY3ODQ4ZmMxZTI0ZC4uYzcwOTJhZjdk
YTMzIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Fs
cG0uYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2FscG0uYw0K
PiBAQCAtMzEwLDYgKzMxMCw3IEBAIHN0YXRpYyB2b2lkIGxubF9hbHBtX2NvbmZpZ3VyZShzdHJ1
Y3QgaW50ZWxfZHANCj4gKmludGVsX2RwLCAgew0KPiAgCXN0cnVjdCBkcm1faTkxNV9wcml2YXRl
ICpkZXZfcHJpdiA9IGRwX3RvX2k5MTUoaW50ZWxfZHApOw0KPiAgCWVudW0gdHJhbnNjb2RlciBj
cHVfdHJhbnNjb2RlciA9IGNydGNfc3RhdGUtPmNwdV90cmFuc2NvZGVyOw0KPiArCWVudW0gcG9y
dCBwb3J0ID0gZHBfdG9fZGlnX3BvcnQoaW50ZWxfZHApLT5iYXNlLnBvcnQ7DQo+ICAJdTMyIGFs
cG1fY3RsOw0KPiANCj4gIAlpZiAoRElTUExBWV9WRVIoZGV2X3ByaXYpIDwgMjAgfHwgKCFpbnRl
bF9kcC0NCj4gPnBzci5zZWxfdXBkYXRlX2VuYWJsZWQgJiYgQEAgLTMyOCw3ICszMjksNyBAQCBz
dGF0aWMgdm9pZA0KPiBsbmxfYWxwbV9jb25maWd1cmUoc3RydWN0IGludGVsX2RwICppbnRlbF9k
cCwNCj4gIAkJCUFMUE1fQ1RMX0FVWF9MRVNTX1dBS0VfVElNRShpbnRlbF9kcC0NCj4gPmFscG1f
cGFyYW1ldGVycy5hdXhfbGVzc193YWtlX2xpbmVzKTsNCj4gDQo+ICAJCWludGVsX2RlX3dyaXRl
KGRldl9wcml2LA0KPiAtCQkJICAgICAgIFBPUlRfQUxQTV9DVEwoZGV2X3ByaXYsIGNwdV90cmFu
c2NvZGVyKSwNCj4gKwkJCSAgICAgICBQT1JUX0FMUE1fQ1RMKGRldl9wcml2LCBwb3J0KSwNCj4g
IAkJCSAgICAgICBQT1JUX0FMUE1fQ1RMX0FMUE1fQVVYX0xFU1NfRU5BQkxFIHwNCj4gIAkJCSAg
ICAgICBQT1JUX0FMUE1fQ1RMX01BWF9QSFlfU1dJTkdfU0VUVVAoMTUpIHwNCj4gIAkJCSAgICAg
ICBQT1JUX0FMUE1fQ1RMX01BWF9QSFlfU1dJTkdfSE9MRCgwKSB8DQo+IEBAIC0zMzYsNyArMzM3
LDcgQEAgc3RhdGljIHZvaWQgbG5sX2FscG1fY29uZmlndXJlKHN0cnVjdCBpbnRlbF9kcA0KPiAq
aW50ZWxfZHAsDQo+ICAJCQkJICAgICAgIGludGVsX2RwLQ0KPiA+YWxwbV9wYXJhbWV0ZXJzLnNp
bGVuY2VfcGVyaW9kX3N5bV9jbG9ja3MpKTsNCj4gDQo+ICAJCWludGVsX2RlX3dyaXRlKGRldl9w
cml2LA0KPiAtCQkJICAgICAgIFBPUlRfQUxQTV9MRlBTX0NUTChkZXZfcHJpdiwNCj4gY3B1X3Ry
YW5zY29kZXIpLA0KPiArCQkJICAgICAgIFBPUlRfQUxQTV9MRlBTX0NUTChkZXZfcHJpdiwgcG9y
dCksDQo+ICAJCQkgICAgICAgUE9SVF9BTFBNX0xGUFNfQ1RMX0xGUFNfQ1lDTEVfQ09VTlQoMTAp
IHwNCj4gDQo+IFBPUlRfQUxQTV9MRlBTX0NUTF9MRlBTX0hBTEZfQ1lDTEVfRFVSQVRJT04oDQo+
ICAJCQkJICAgICAgIGludGVsX2RwLQ0KPiA+YWxwbV9wYXJhbWV0ZXJzLmxmcHNfaGFsZl9jeWNs
ZV9udW1fb2Zfc3ltcykgfCBkaWZmIC0tZ2l0DQo+IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9wc3JfcmVncy5oDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9wc3JfcmVncy5oDQo+IGluZGV4IDFlNTAzMjA5ZGEwOS4uNjQyYmIxNWZiNTQ3IDEwMDY0
NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzcl9yZWdzLmgN
Cj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3JfcmVncy5oDQo+
IEBAIC0yOTQsNyArMjk0LDggQEANCj4gICNkZWZpbmUgIEFMUE1fQ1RMMl9OVU1CRVJfQVVYX0xF
U1NfTUxfUEhZX1NMRUVQX1NFUVVFTkNFUyh2YWwpDQo+IAlSRUdfRklFTERfUFJFUChBTFBNX0NU
TDJfTlVNQkVSX0FVWF9MRVNTX01MX1BIWV9TTEVFUF9TDQo+IEVRVUVOQ0VTX01BU0ssIHZhbCkN
Cj4gDQo+ICAjZGVmaW5lIF9QT1JUX0FMUE1fQ1RMX0EJCQkweDE2ZmEyYw0KPiAtI2RlZmluZSBQ
T1JUX0FMUE1fQ1RMKGRldl9wcml2LCB0cmFuKQ0KPiAJX01NSU9fVFJBTlMyKGRldl9wcml2LCB0
cmFuLCBfUE9SVF9BTFBNX0NUTF9BKQ0KPiArI2RlZmluZSBfUE9SVF9BTFBNX0NUTF9CCQkJMHgx
NmZjMmMNCj4gKyNkZWZpbmUgUE9SVF9BTFBNX0NUTChkZXZfcHJpdiwgcG9ydCkJCV9NTUlPX1BP
UlQocG9ydCwNCj4gX1BPUlRfQUxQTV9DVExfQSwgX1BPUlRfQUxQTV9DVExfQikNCj4gICNkZWZp
bmUgIFBPUlRfQUxQTV9DVExfQUxQTV9BVVhfTEVTU19FTkFCTEUJUkVHX0JJVCgzMSkNCj4gICNk
ZWZpbmUgIFBPUlRfQUxQTV9DVExfTUFYX1BIWV9TV0lOR19TRVRVUF9NQVNLDQo+IAlSRUdfR0VO
TUFTSygyMywgMjApDQo+ICAjZGVmaW5lICBQT1JUX0FMUE1fQ1RMX01BWF9QSFlfU1dJTkdfU0VU
VVAodmFsKQ0KPiAJUkVHX0ZJRUxEX1BSRVAoUE9SVF9BTFBNX0NUTF9NQVhfUEhZX1NXSU5HX1NF
VFVQX01BU0ssDQo+IHZhbCkNCj4gQEAgLTMwNCw3ICszMDUsOCBAQA0KPiAgI2RlZmluZSAgUE9S
VF9BTFBNX0NUTF9TSUxFTkNFX1BFUklPRCh2YWwpDQo+IAlSRUdfRklFTERfUFJFUChQT1JUX0FM
UE1fQ1RMX1NJTEVOQ0VfUEVSSU9EX01BU0ssIHZhbCkNCj4gDQo+ICAjZGVmaW5lIF9QT1JUX0FM
UE1fTEZQU19DVExfQQ0KPiAJMHgxNmZhMzANCj4gLSNkZWZpbmUgUE9SVF9BTFBNX0xGUFNfQ1RM
KGRldl9wcml2LCB0cmFuKQ0KPiAJX01NSU9fVFJBTlMyKGRldl9wcml2LCB0cmFuLCBfUE9SVF9B
TFBNX0xGUFNfQ1RMX0EpDQo+ICsjZGVmaW5lIF9QT1JUX0FMUE1fTEZQU19DVExfQg0KPiAJMHgx
NmZjMzANCj4gKyNkZWZpbmUgUE9SVF9BTFBNX0xGUFNfQ1RMKGRldl9wcml2LCBwb3J0KQ0KPiAJ
X01NSU9fUE9SVChwb3J0LCBfUE9SVF9BTFBNX0xGUFNfQ1RMX0EsDQo+IF9QT1JUX0FMUE1fTEZQ
U19DVExfQikNCj4gICNkZWZpbmUgIFBPUlRfQUxQTV9MRlBTX0NUTF9MRlBTX1NUQVJUX1BPTEFS
SVRZDQo+IAlSRUdfQklUKDMxKQ0KPiAgI2RlZmluZSAgUE9SVF9BTFBNX0xGUFNfQ1RMX0xGUFNf
Q1lDTEVfQ09VTlRfTUFTSw0KPiAJUkVHX0dFTk1BU0soMjcsIDI0KQ0KPiAgI2RlZmluZSAgUE9S
VF9BTFBNX0xGUFNfQ1RMX0xGUFNfQ1lDTEVfQ09VTlRfTUlOCQk3DQo+IC0tDQo+IDIuMzQuMQ0K
DQo=
