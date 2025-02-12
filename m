Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CEF93A32E8E
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Feb 2025 19:22:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A945C10E951;
	Wed, 12 Feb 2025 18:22:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="J2IHuIJP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4241210E957;
 Wed, 12 Feb 2025 18:22:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739384545; x=1770920545;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=PYmgbWINqfVFR2ut9EnLwjrqjlJ4vWu/ub78f3IJjaM=;
 b=J2IHuIJPyq8MoVVmgAm9WGTpnqxZgPbWOQT2cVmD5TXO9FeXb9IBZF/N
 WqvvBpqve0n+QMFj+pp3L6g8Geekc6Aa7qeQVQCCxWYAoxCIJszXnqu2t
 xfQ9JjS8dGcb9yiZUvaOXYtNfNo4LfNDyLpCqn/yJqfYTBcO0H4kFgCOn
 qZGccZIqPx2sRqjjY1tGypOWQAEzShIMQYVe1Wdk54T80gfW0vj/CEDel
 gzlSSu5UUi0Mww2OX5hPOFbxerC6QkVr6GrL3YAx+OHfPGgExSK7Tb2p6
 HlJLuE4wjjDIZJ9+SPSpzKipG2N48jswehsEzShsxjlooE1VgjDSceOyv A==;
X-CSE-ConnectionGUID: MK7uYOc3QG+zoDAQf8NTTg==
X-CSE-MsgGUID: KCAzfVpuSQefedi9BXo73g==
X-IronPort-AV: E=McAfee;i="6700,10204,11314"; a="51492587"
X-IronPort-AV: E=Sophos;i="6.12,310,1728975600"; d="scan'208";a="51492587"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2025 10:22:25 -0800
X-CSE-ConnectionGUID: y7vkBBqWR/a+lUnxw0q8+A==
X-CSE-MsgGUID: ge4nM/RUSbup/+qN0D7oIg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="113806423"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2025 10:22:25 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Wed, 12 Feb 2025 10:22:24 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Wed, 12 Feb 2025 10:22:24 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.176)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 12 Feb 2025 10:22:24 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ULeYVDxAlFKwlVoVbnzpOjYUAoqZK2Q1Kw72jPP1XEt25GGZ3Kxqt5smofskrJofIEZd4C+opztVVhj/cC7l21MnUSmUYlxBAw3p3jANk2Dn+rEnBkoV1MTWqTaxedEWvArK69j4z+d1UW6nHqLUkAD6PBk6UmlWeByK+npJ6ps+ahtBp1hQTmwUWMQguziIGlzPPjJ9NngKfw7+EX5Cz3k+tOoGjqHeKNDQozos3zOSo2pnDb/me3G9HL+NCPVJHaosE89SL0/YZSzmtRcrV9xaa5zXy5Nx41Y1z2vVkDJ2XkpX1wZSIXaEsslzEfX6Ymwh5rTolAopQmTnG7m/qQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PYmgbWINqfVFR2ut9EnLwjrqjlJ4vWu/ub78f3IJjaM=;
 b=sAiGetCG81CgXg9OCmXKSxsT+eKipczgxJlJF6odY430JLWwmPoUwmsIDWFDHJeXAJuTlWU0EzdriSDfc7qwjZ7knosuMziCHqHg+viLMcVYSrQ+m+6d/NCoNPv9P0QYF3r/9qpJWviSl+CvO2glUnN7bHE+S0zqsZYCAFpGKApoJC4aUZA0mrdkE67b5VW0aYtUAb77htBQVCsm8uoxmAITiWfBAOBjlWUQfGtzAfOWXjSgaf87kFd2jXloOuUDpacq3s2pFe6tqMoYbNnGiM+Xb1+spFAUEO4JY2CtULHChAkZNLpDG9cAbfqxlYwVanIPRxvIjl9ZYORBJzVDcQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from LV2PR11MB6024.namprd11.prod.outlook.com (2603:10b6:408:17a::16)
 by MW3PR11MB4746.namprd11.prod.outlook.com (2603:10b6:303:5f::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8445.11; Wed, 12 Feb
 2025 18:22:22 +0000
Received: from LV2PR11MB6024.namprd11.prod.outlook.com
 ([fe80::dc22:ef1e:53e2:f00f]) by LV2PR11MB6024.namprd11.prod.outlook.com
 ([fe80::dc22:ef1e:53e2:f00f%3]) with mapi id 15.20.8445.008; Wed, 12 Feb 2025
 18:22:21 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Manna, 
 Animesh" <animesh.manna@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH v7 13/13] drm/i915/psr: Allow DSB usage when PSR is enabled
Thread-Topic: [PATCH v7 13/13] drm/i915/psr: Allow DSB usage when PSR is
 enabled
Thread-Index: AQHbfSPlCVmvgU40Rk+SDOMpMwAiN7NDwTiAgAA6mwA=
Date: Wed, 12 Feb 2025 18:22:21 +0000
Message-ID: <98c28e897fe049bc9751d0afaf80c7b7bdce1750.camel@intel.com>
References: <20250212075742.995022-1-jouni.hogander@intel.com>
 <20250212075742.995022-15-jouni.hogander@intel.com>
 <Z6y1s4Unvrx0Vn8z@intel.com>
In-Reply-To: <Z6y1s4Unvrx0Vn8z@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: LV2PR11MB6024:EE_|MW3PR11MB4746:EE_
x-ms-office365-filtering-correlation-id: b0290ce0-3b3e-4bdc-1789-08dd4b923116
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|10070799003|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?c3BmTy9EMjN4N0JpaVozK1VacEx1dXJoaXZoTmhzbUVaZ2VRZ3pSTHYxUkg1?=
 =?utf-8?B?dUFFRVJnaytobGs1NE9YQit0QUQzSlB3eFJjc0xPbVZuRmRqTDZaK1crMC9E?=
 =?utf-8?B?UzkrTHRZUk9xQ1JWOGRrbUNndE1FMjJuOU9SeEZSbG1MVi93bXJXRzU1RmhE?=
 =?utf-8?B?Z05yU2oxTU01NVI2MUFYS2ZzcEF2dWpSSnRvYk9oMXBPZ2dBS2U0Tm8xLzlu?=
 =?utf-8?B?US91S3VabUhJd3U0TWt2YWttTEVPblBWSldJMnNRdkZFRkFwM0hoOUd6RXNi?=
 =?utf-8?B?Z0RsbDJLblQycnVDamovcjZYOW83a216eGFSWjZlQk5DUW1LMjdIRXU2OUNR?=
 =?utf-8?B?ZmxGWXVNV2huWVF4azBmMGhSZy9BR1BTeXBwRTdYOE1KVTU4VmtMeHBHT0RE?=
 =?utf-8?B?UzhoVzZ6S0lpKzlRdEM4UVZZeWFRb25PdWU1ZmQ4UGdSNSs2d1lYcWZMVVpj?=
 =?utf-8?B?SjFkWFdZd2lEeE9IeFREcUpRZG5nK1RrVFJGVlFQVWlBeVNqcHVIV1l0dWxG?=
 =?utf-8?B?eDBmdFRCUjRmaWZYTDJBOTZxY3J0aENWY1RtSDR5QjVLeDVLWlg3eFZwTmR6?=
 =?utf-8?B?dko0OGV0a080citZMUZMbzVJaXNtRk9TRXc3Uldud3IxUnB6ZmZmRHFuTFJo?=
 =?utf-8?B?b1FlUFBkOGRoQUlYK0FDSEZGVTFNdlFwaXpxbWYxR3haRHdTZW93SmhPVEhU?=
 =?utf-8?B?VXZ6MC9FckZKcy90NDNOZlY4SzkyRUtvWEVCdk12a3lXd3duMzNiNDE3VWFZ?=
 =?utf-8?B?cmJ4Z290Y3Q5eHBlYjBwdEdaNWpleTdaaXRwNVZTMy9rSDIzOU1ueGQxZ2lo?=
 =?utf-8?B?anhyWFBiSDR0Y3NxUnRwM0pmblI0QlF0Z2wwT2REZjFjSzhOc3lxRHJ6ZzBj?=
 =?utf-8?B?dVdwUWlqZUJ0cStpZ2ovbzVNcDYwMzRKWm4wa0JkckszUXRybThpaDhZbmUr?=
 =?utf-8?B?dGdQZ1BNWi9lM0FobUxlUVNPTjcvRHdma1lHdllNZWhpbTU2TXA3N3NoSEE5?=
 =?utf-8?B?cE1lUDZVWXQ3bkN3NGhSNnJrOUJqUHVBby83dlJWSnNYRW54d0MyNUVGSjVB?=
 =?utf-8?B?ckg0anJFMG0weitTZ3EyTjM3bG0zaGdOS0NkRXJJUkdjdzNhR2NlWEQ3RmNw?=
 =?utf-8?B?WlRobnJJSzRyVGdIWW5SZzB4ZGJEL2RqY21SZXpxdXR2d25DNUhWUXNyUUNU?=
 =?utf-8?B?U2NNemw4M2tYL2lPRmNyYkQxVkQrU0JvWVgxNUVRT0lRemgvTDVJWUdEYUlD?=
 =?utf-8?B?amZJbVZONkcxeGkybWhscUdoblUzUTd6M09PVGNNZnJUZkY5b2QxWWJveFNU?=
 =?utf-8?B?bVNwN1crU21ENkpHbWdGbkJxU29pTjkxc0ZOT2hBR1JURHZIQTNnS3hTcEpK?=
 =?utf-8?B?RGgzTzc4STJKcWMwa3h6UEE0L3J2bE9hZlhLU3pSRHdtbnJwYWdLdGZ5MHli?=
 =?utf-8?B?NGl5T1JHTkJOK0NsVi92dERiVjYyQW1ZT1plNzVBZmR6K3hzcXpLc09ONUdw?=
 =?utf-8?B?VzlJVVhMMTM5M0pTZ0t5SUpaSjJNeG52M2lDRC9SNHpCZUVJMEUwTEpva2dC?=
 =?utf-8?B?RUExNGdHbEVKbVlwYzRCaTlnNTBCOVJGc3NRNnV3UVY4ZlNiTG5XeTdxam9u?=
 =?utf-8?B?Skw4UElua0RIeWJZWk5FRklyTkJaK1F1NlVJWkQwZmNaenFXTTNnVWZKSTVV?=
 =?utf-8?B?WVVKS0VrZEk5bmpFUEtMUHQvMkR5elVoRlpkU2U4NjVwTDYxMDQwaEVvak5K?=
 =?utf-8?B?UVptWVZTaXIrREoxdGpvVGR1NnM2Q3RFdVd2dkpaOEtsRDUzQ1UxK0FKWUpX?=
 =?utf-8?B?Q0FCVGZaNCtlU084UmsrbytSdFJCUGxhWlVncGgyNiswbGc5MGM0MnExSXBG?=
 =?utf-8?B?SDkrYzhLM0tpaFAzMklrdEUvWWt6d2dnc2Zlb1FoKzhKSFZXdHh5VjBhNzk3?=
 =?utf-8?Q?Fw7B8bTyseipSETPZC5AQSxYm7FKdHUN?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:LV2PR11MB6024.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(10070799003)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?QWdnUzV6WTFaR2RFK3daRUFnci9xYXdpTlFjalNaRE5oN1BNRnlIK0NvUGF4?=
 =?utf-8?B?ZGVQaUFQUE4rc3BUOU13ZXhkOUZHRjlOVlNNTFA3SmQ5Q0FLY3FVSVh5em56?=
 =?utf-8?B?UTJjY1d1MWFVSFhBZ1RPMmpkTzNBOEo5NFppdXZxNGJaREJHVnpzeHh0UCtP?=
 =?utf-8?B?UU9iNUZNZ1o3Vk1TdmpDenVDRGZsMmVWazNCMWtTQ2cwTEZERmRRSmtmUWRQ?=
 =?utf-8?B?d3M2ZnNVQWZ4bUVGaXFoNGRCeVBhY1lCTkxLYXlvSTVtMjlpQjd3R1RXSkpj?=
 =?utf-8?B?WkxaOGU4RnQ5S1NIMWM2b1J5UXllUHJlT1VLUExjS3JnSVB4MkwrTEdXU0xN?=
 =?utf-8?B?MXh5bHJsSDlUZGowOUNrT2c0M290T3lHeFBnYU0yZ3lHZ1A3aDNpMjNPK3J3?=
 =?utf-8?B?SDVPZkZ5RDRJZEJYTXlMTG1vRjM1L0pjVU5QMmNkTjhXenk3VEZhZnA2S1JS?=
 =?utf-8?B?NU01UUxDMG1VNTRFelRablk2QnA0VlJLZ1B6QjFKVU01S3dSY2llQUlaNkVm?=
 =?utf-8?B?VVJIN0VJeVVXbGdGczNvUmg0MG9icGNpbk9oY3FwRE9WcDRBTkdDNjVyK2Mr?=
 =?utf-8?B?SVArbWNnN1BtdUVQQlJVbk84bDZVWUtVWlIvQitMV3RpSUxsRnhBYTVkQWc4?=
 =?utf-8?B?ejJ0anExK3N1TDJDRkduQWtRNTE5OUpJdlFZcEJoNGtZVkVvbG42Mkg1K1JO?=
 =?utf-8?B?MS9iTGJPamwzN1BITllRa0JmOUl1RVZKTWdHeXhOWU84NEU0U2YwN2tub2ZS?=
 =?utf-8?B?aVUzT0l3UUlOdFRpbTVTQllXRlNNWU9BOFNuU3lzeXZraDRGN3pPaXZZVTl0?=
 =?utf-8?B?am5QcWNDamQyMW52ODdjUThybE5QczAxYVVMN2IwT0h0eUJzSUFIUnRWOENI?=
 =?utf-8?B?anBRci95SGRieUpJTkxPNENjc2ZsZnJycUNIVGhUYmZhRXB3V1FqRGZMeHBo?=
 =?utf-8?B?dVYrejhOcCt4eGQrV3oxZjQwZ3phRXovaUM2ektzMWgvcDl5VEwzMFdjeEJT?=
 =?utf-8?B?QjFUdFlwMHhnNC9ueWxwc0tOaDZnUWZrNXZ3SFFWa1B0VWFKV3BFdTBJYy95?=
 =?utf-8?B?Q20zbUFsdVR6cHg5RElONktkUTB0SGJpU21FNy9VcFJqY2VtK3RlbkJiOXlE?=
 =?utf-8?B?R3lKRjVDVkwzcCtlbTUrOUVtUjlXNm9EQjRFQ25PSVJETzk1R1pVZnRKMm5L?=
 =?utf-8?B?YmRaVlhza2F3QVdWRitQVHQ4TjF5emttb1Y3aUZyby9OTzNOVGIxdWNNMXhj?=
 =?utf-8?B?MUlSWDd3WG1EY0dkcUdvbzBqT0M4bXBkSENBWVlKVVpZQ1hiOWRXYzhqRWF1?=
 =?utf-8?B?a1hBVkRBRjRWaEx5bTFZZEtRUUF4ZnBtOVV3WmhvbDJ3UCtLNUFpbmNjQ2ZY?=
 =?utf-8?B?ZU1jRUEyRlJNOGtTNFFUTGY3UVM4bS9TWHBtQ2pxT3lNVEIyL2pqS1JFT2o0?=
 =?utf-8?B?Ry9qbm9ieUkyb2I4WHlrNE8wQlBYUFBNNXV0aHNXVUxEaDdJNjRpVXp6bTAv?=
 =?utf-8?B?a0tuOXVWZlpJMGNDWkZTdVNOMkNPOE1vblB3NGRraG1oTTFTNFh1TXBHOWtn?=
 =?utf-8?B?Vy95Zi9UejdUdzcrbHJac09LVTVQQVptMDg4OE1EU0QzM2tnMXU2a1IwMXhV?=
 =?utf-8?B?c1NQL25TTXB6alZkTFJQTWNqTmp3VGg2WVJ1MUZlUVdrMmNDRzUrMG5mUk5U?=
 =?utf-8?B?T0p6dnBucndEemdnRlVKR1RUOEJtL3ZnVzJtZmdDOWRjMVcyZWNyc2liVnFE?=
 =?utf-8?B?UWw1QWVoR1R2RTA2ZExFakhTak1OZXIwdER5dlJCZmxMOWxWcmV5VG9za2tk?=
 =?utf-8?B?SnBoMm94NllqckVBazhaSXJUUmVjQURzVWVDcGZSZU5YTUNHaHkrSjR3ekVi?=
 =?utf-8?B?VUtKaXAxNS9Ib01ZNVptck92WkRaMGJTU3gvQVg0RDRZb0VGazdEVk1IaHBv?=
 =?utf-8?B?TEZzRysyb1VaNytxSEp0cllaZHMyMHVZWGpHZHFoV3V0a3NWeDVBQmR5UHRZ?=
 =?utf-8?B?dHlQYURPMWI2ZkU5WXFqOElaTUJMeW5jREsrbUJhUHZRdEhQeHhMZzFVZmpI?=
 =?utf-8?B?aGtJZkREeUVkbWdXL3dnNmRMRnFOYllocEMyR2Zndk5iWVdpWm91bFhUK0lW?=
 =?utf-8?B?a3IwU0hNdnAzSTJrYlRtWnhzcHJVeFc2VkdQY001dGE0V0dGOE1CeFJTRSth?=
 =?utf-8?B?Ry9BaGV1ZVcvUkFkTGFBTlo4R3ZGbUVvcG5XbHF3MFlnRGRxL1EyMjR1TGE5?=
 =?utf-8?B?YUR6N3VlRThxSXZVUkUwNUpycVlRPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <142416D270ED644987F5406A57104B17@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: LV2PR11MB6024.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b0290ce0-3b3e-4bdc-1789-08dd4b923116
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Feb 2025 18:22:21.6907 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: lFEceiYFupcE7F3PeNCZS3lTK8I4kNhOIlb0mwWjlnqFBFIXaXpiEs9IshncwuisboBMR+2nLHviT6x2hkcJFmUYxj9G8zt8o6MQHrATzsQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4746
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

T24gV2VkLCAyMDI1LTAyLTEyIGF0IDE2OjUyICswMjAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
DQo+IE9uIFdlZCwgRmViIDEyLCAyMDI1IGF0IDA5OjU3OjQyQU0gKzAyMDAsIEpvdW5pIEjDtmdh
bmRlciB3cm90ZToNCj4gPiBOb3cgYXMgd2UgaGF2ZSBjb3JyZWN0IFBTUjJfTUFOX1RSS19DVEwg
aGFuZGxpbmcgaW4gcGxhY2Ugd2UgY2FuDQo+ID4gYWxsb3cgRFNCDQo+ID4gdXNhZ2UgYWxzbyB3
aGVuIFBTUiBpcyBlbmFibGVkIGZvciBMdW5hckxha2Ugb253YXJkcy4NCj4gPiANCj4gPiBTaWdu
ZWQtb2ZmLWJ5OiBKb3VuaSBIw7ZnYW5kZXIgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCj4g
PiBSZXZpZXdlZC1ieTogQW5pbWVzaCBNYW5uYSA8YW5pbWVzaC5tYW5uYUBpbnRlbC5jb20+DQo+
ID4gLS0tDQo+ID4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXku
YyB8IDMgKystDQo+ID4gwqAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAxIGRlbGV0
aW9uKC0pDQo+ID4gDQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZGlzcGxheS5jDQo+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2Rpc3BsYXkuYw0KPiA+IGluZGV4IDBiYTg1NjIzODM1Yy4uYTY5NjZhNjY0ZDg3IDEwMDY0
NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5j
DQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMN
Cj4gPiBAQCAtNzY5OCw2ICs3Njk4LDcgQEAgc3RhdGljIHZvaWQgaW50ZWxfYXRvbWljX2RzYl9w
cmVwYXJlKHN0cnVjdA0KPiA+IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsDQo+ID4gwqBzdGF0
aWMgdm9pZCBpbnRlbF9hdG9taWNfZHNiX2ZpbmlzaChzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRl
DQo+ID4gKnN0YXRlLA0KPiA+IMKgCQkJCcKgwqDCoCBzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YykN
Cj4gPiDCoHsNCj4gPiArCXN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5ID0gdG9faW50ZWxf
ZGlzcGxheShzdGF0ZSk7DQo+ID4gwqAJY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKm9s
ZF9jcnRjX3N0YXRlID0NCj4gPiDCoAkJaW50ZWxfYXRvbWljX2dldF9vbGRfY3J0Y19zdGF0ZShz
dGF0ZSwgY3J0Yyk7DQo+ID4gwqAJc3RydWN0IGludGVsX2NydGNfc3RhdGUgKm5ld19jcnRjX3N0
YXRlID0NCj4gPiBAQCAtNzcxMyw3ICs3NzE0LDcgQEAgc3RhdGljIHZvaWQgaW50ZWxfYXRvbWlj
X2RzYl9maW5pc2goc3RydWN0DQo+ID4gaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwNCj4gPiDC
oAluZXdfY3J0Y19zdGF0ZS0+dXNlX2RzYiA9DQo+ID4gwqAJCW5ld19jcnRjX3N0YXRlLT51cGRh
dGVfcGxhbmVzICYmDQo+ID4gwqAJCSFuZXdfY3J0Y19zdGF0ZS0+ZG9fYXN5bmNfZmxpcCAmJg0K
PiA+IC0JCSFuZXdfY3J0Y19zdGF0ZS0+aGFzX3BzciAmJg0KPiA+ICsJCShESVNQTEFZX1ZFUihk
aXNwbGF5KSA+PSAyMCB8fCAhbmV3X2NydGNfc3RhdGUtDQo+ID4gPmhhc19wc3IpICYmDQo+IA0K
PiBDb3VsZG4ndCB3ZSBhbHNvIGRvIGl0IGZvciAhc2VsZWN0aXZlX2ZldGNoIG9uIGVhcmxpZXIg
cGxhdGZvcm1zPw0KDQpJIHdhcyB0aGlua2luZyB0aGlzIGFzIHdlbGwsIGJ1dCBJIGhhdmVuJ3Qg
dGVzdGVkIGl0LiBJJ20gY29uY2VybmVkIGFyZQ0Kb2YgZnJvbnRidWZmZXIgaW52YWxpZGF0ZXMv
Zmx1c2hlcy4gVGhlcmUgd2UgYXJlIGRpc2FibGluZyBQU1IuIEknbSBub3QNCnN1cmUgaWYgaXQg
d291bGQgYmUgb2sgdG8gZG8gdGhhdCB3aGlsZSBEU0IgdXBkYXRlIGlzIG9uZ29pbmcuDQoNCkJS
LA0KDQpKb3VuaSBIw7ZnYW5kZXINCj4gDQo+ID4gwqAJCSFuZXdfY3J0Y19zdGF0ZS0+c2NhbGVy
X3N0YXRlLnNjYWxlcl91c2VycyAmJg0KPiA+IMKgCQkhb2xkX2NydGNfc3RhdGUtPnNjYWxlcl9z
dGF0ZS5zY2FsZXJfdXNlcnMgJiYNCj4gPiDCoAkJIWludGVsX2NydGNfbmVlZHNfbW9kZXNldChu
ZXdfY3J0Y19zdGF0ZSkgJiYNCj4gPiAtLSANCj4gPiAyLjQzLjANCj4gDQoNCg==
