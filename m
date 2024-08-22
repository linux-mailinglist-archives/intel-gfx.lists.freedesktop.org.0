Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E8DE95B0D5
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Aug 2024 10:45:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0BBE110E666;
	Thu, 22 Aug 2024 08:45:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="P/jqcD6v";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1907F10E803
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Aug 2024 08:45:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724316344; x=1755852344;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=c6+5rz3XVUvr1PgLg7N2bhCxg2uhCVA8SkBfsAjHQpI=;
 b=P/jqcD6v3OAz5bsQImI3E6zs73imVogMipSqTM/VzMm2S0ddVkqZbBOl
 ZKlD68YQoPHBurFQ/T8YvYDhE27D7pmzKCMbu+NLZzH+wb6L/f67ePvpN
 qBHTE+Zcv/XGP06yIhmDTvn788S4+Mvb7+zoZdosMzoBKpGe5hPO6mmqS
 0et5qpiEdwcCnt4OPPFMKH5BRUM9PbPRBoIewlFpR1VMgNTuGiHckmWtX
 3Z+eHLjIF+j9TQ9Xj8RxLtYkaj/1JSvGpTLTZWBJWNkJOzMxvuR1aRG8v
 rKkTAcK9qaxewOHF72MbITPiSw7+c3DXVkyWXmk21Gb+OBH7vV+TDcs44 g==;
X-CSE-ConnectionGUID: vuPVMW9kT5adttwV7WW7Ow==
X-CSE-MsgGUID: 17AAig+7SN6hTbfKNkFYmQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11171"; a="48110737"
X-IronPort-AV: E=Sophos;i="6.10,166,1719903600"; d="scan'208";a="48110737"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2024 01:45:41 -0700
X-CSE-ConnectionGUID: nbkPEB0lRV2I6A2/IXpFJw==
X-CSE-MsgGUID: uGB8wE2tRxi5RnXuNMLwQQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,166,1719903600"; d="scan'208";a="84546166"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Aug 2024 01:45:39 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 22 Aug 2024 01:45:37 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 22 Aug 2024 01:45:37 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.176)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 22 Aug 2024 01:45:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=VvSV4PmsvTeb5ePAAQn1IpvTHmn71h3BrhABNk6oaunOxU4EknK7WkVT8HUcRBmKHZPT5jtiNEBXNVAcVy0xskr/VH+TkJZGJS1ADY7/6wPApdpI2lFi07AwqacDhybNeU0bzbfW6Ws+53+CYEf31vq20+NHAvIjhWde/hu8mC+YGXaDh2VPoRS7HeL4gJTIb20V1f7eBeqEN7rdAYcwWXq2HiNt2507/4nDzrNfc0DKRKu1gVSsXz/ByvWzR7pFu3Qwd8bE8skF05hAdUoNrAoK5iUladIe9t/RNNmNsqZaC5obhceISUHb6EyMUHZhLjKMYcIs9HSYbat8Tc9IxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=c6+5rz3XVUvr1PgLg7N2bhCxg2uhCVA8SkBfsAjHQpI=;
 b=DXY0x6m3wvuROqmK9VItFKBejqtSHyW1yHcnC+TRPmZ0L68FhgACZD6mndpGAwq14T55ZXO+z+V/gtJgc38xGBz3mcDEhjn0ZIiioXHIx58XBRQ99770Aav8pRiEw8tZR7u6itPRBH5g5PIYnxi/CFsjgXxG89iqAMQkV0A/tXp6btVBYEJETU48YvyYVFoKU9cE+H6r2055J/g1iwDSTbUKTuP6ZepkKKA+mHUFAy+AQw53Q/2VvkgEe4D2vAdwb8UmMoXXz3q3/zM7sdCyS+sgVM/aNIl0kbNVmoDY/qDvSHApKmij0q8eKnULD9FbGkbH/ZRQMu7HdLT+ZZL/WQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 DS7PR11MB7857.namprd11.prod.outlook.com (2603:10b6:8:da::17) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7897.18; Thu, 22 Aug 2024 08:45:35 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%3]) with mapi id 15.20.7897.014; Thu, 22 Aug 2024
 08:45:35 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Murthy, Arun R" <arun.r.murthy@intel.com>, "Manna, Animesh"
 <animesh.manna@intel.com>, "jani.nikula@linux.intel.com"
 <jani.nikula@linux.intel.com>
Subject: Re: [PATCH 2/2] drm/i915/psr: Implment WA to help reach PC10
Thread-Topic: [PATCH 2/2] drm/i915/psr: Implment WA to help reach PC10
Thread-Index: AQHawgLiGl+DcXoIHk+b/IcyBx7F/7IzW0aA
Date: Thu, 22 Aug 2024 08:45:35 +0000
Message-ID: <10be50e89952324062170828e3a055774fd28768.camel@intel.com>
References: <20240619043756.2068376-1-suraj.kandpal@intel.com>
 <20240619043756.2068376-3-suraj.kandpal@intel.com>
In-Reply-To: <20240619043756.2068376-3-suraj.kandpal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|DS7PR11MB7857:EE_
x-ms-office365-filtering-correlation-id: c2c61ad9-f41f-4ef5-de49-08dcc286ca2c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?NXIyL0dzdTg3eG5lZTdRM29FZk1mVjI4VWRpMzRZaU5ZMkZFdm05SGJEMGZh?=
 =?utf-8?B?OTVBTjhhYVpMOUhXdDlxWGxRVisrMUxCSWw0N1lYMmpQTXZ5SzZCNDBNdHdZ?=
 =?utf-8?B?cW84dlc0dW9oSFNmdTVvMnJkRGE3N2FMMGNFZzlIMTlOanZQamtSUTRMSEps?=
 =?utf-8?B?eDRJY0x2dmd1K2F4Nk9zQm1hRmV0ZjJlQ21Td2xaTFdmZ3NFb3VuMHpBbjB3?=
 =?utf-8?B?WmVBdHU4S0paZWtBWUY4YmxvK1MvbTZzUnFCdHBJOHkvV2VhOHN2WU9JMzdl?=
 =?utf-8?B?akxtV2ZFcnF2SjR5OGhoSEtrcE5CM2lENDc3WmpQM1hDK3F0SklWM21EMWdL?=
 =?utf-8?B?ZG82UXZhcTU3Nkp1YVZvazVOWlVPaEloK3ZKcUg1QzZuYVlKQTdwNC9UUEZv?=
 =?utf-8?B?blNpQjVwMFhOSnJyVXJ3dTBFOHZUM1FGL29TK1J3eGQ5cGF1SzhNY0NHN3pv?=
 =?utf-8?B?S3lBT1FlVFRuNGFxbDhhMzB4cHRpWnJyMTdRTk9DNXdFL25rSkE1SFVzWms1?=
 =?utf-8?B?bnNkVUJsUnFRV0FvY1oveGRabmxKcFpjWWRpcGE3SjZnaTNhT0orVHBiVTFC?=
 =?utf-8?B?OWIxTjk1bm9KT1hBb2kzQjhtc1FYTGFIZEtnYlNkekFwaDJWVGhaWGFNUkZ2?=
 =?utf-8?B?QkE2SG1vbDY4aHpML2d1Z1Y0Tk5HMGdxc3RmOGwxdmMrYlB2SGIwQXloRFhV?=
 =?utf-8?B?dWZyVEEzTUhPZ0FldmpLWGNlNlE0L21VQTNJNkhHZXZIakhncG5WOWpqWlo4?=
 =?utf-8?B?L0VtZmVGMDNQUUdYUmFFTVNHUjJrZFRZM1dibXlPWFRGb2F5bDZYeXJZNUIy?=
 =?utf-8?B?V1NCdEtvaDE2UzJIQ2pTTWRiYXcwdlFrelRBWUpUWTNoNzFKWFhqOHhEdVQ3?=
 =?utf-8?B?aWxQY0RVQ1dtTDZVYzNXVzFvQzI2Z3Fwa1BRWU94ejVDSDlPT0E3SUV5UURw?=
 =?utf-8?B?TU5XdHpYcittemVzeUo0bDBSbm1FM296MXVWcW8wOWRGSjFwZmtBYjVzbXlM?=
 =?utf-8?B?U0xiOWZjdlc1ZUFqMVpmSWxqNE1mbDFLMG5ZTERKQ1FZS2F4L3FOZWxZU29l?=
 =?utf-8?B?OTlWUkhTZjFsSm11eXJ1YmJuamJPR0U1T0o2bWtNcis0eHdubjdtUmJxdXN6?=
 =?utf-8?B?VDU4MDh2dW5NZ0hrcGxjOFlDSHpaZWZsSitEZ29QaytYbjFYSUU3RHFkczVU?=
 =?utf-8?B?ak1GN2EwOUhiK3hrSkoyVEZ1WS90RnhMMXZNa3JhT3pMdW12RGFteTkwUnZz?=
 =?utf-8?B?cGx6VHZKKzI5Z3h2UnZwOXNFK1ZTa29rNEMrVCsxSzVFa0dTaUZ3ZkxHenNG?=
 =?utf-8?B?V1d1YU9Bb0lTTzgrbWlsSkVtNWdwbXV5ZXo5WEJjZHB5anJmL0sxM0FhL0Y4?=
 =?utf-8?B?ZmlTZzZtcHdEUGhFYVpRaGZIak5SdVBJSk5Vc0g4VlBKcGtBbC9BSU1IRzlN?=
 =?utf-8?B?dnJncHJIUEZQVmp4VTdDVWxIeUo0VnRjSEpxWHJkbUxDdTg3ZzkyMkljamts?=
 =?utf-8?B?M2R3LzRoMmVPeXpxZjM5eGwyOFRmQXBNWjFHcU56Q1UvK25keFB2c1BnM0Rs?=
 =?utf-8?B?U2dUVkdNVS96dit5RGpWa3hUMlpxQXRsL1NLcUZrZU5sVjRUeDBDZWpBQkdy?=
 =?utf-8?B?RUxnUTZWN2RrdU5MMmFYSXJxSHVIa09aYm1IVHpVdkdBZFB0SldRaXJ0RGRo?=
 =?utf-8?B?ZzN5UENFUkxFVEJwQUVWYkM4VHpqSFQ5R2ZUNlM0S08yaE9mTjBRS1ZwdU1C?=
 =?utf-8?B?NkZpRm12dFV6MFVlektQOERNL2JNZFpQMzQ5Zi9kTUhlMHF3SU5lcHZ6Rllo?=
 =?utf-8?B?MWV5VzFqdGhRRk1Zam82V0JrRUoyL0JraytkL0ZQUGtONWR3Mk5LdWs3bnhv?=
 =?utf-8?B?cDZhek9ubUlCejMzclhFZGtXS1dMRmlpaTJoanBJOFFjZnc9PQ==?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?akNsWXhvdDJHUmVnTWRNOE9FR1ZLYkg4alF4aXdWM1R2WVo2aGN0VGcrRGV1?=
 =?utf-8?B?NkpwL2ZZbUVUcEZkOWZwOGVPRU9TOUkwWGVLWTNMVHE3RTlPendWSnVLRlNU?=
 =?utf-8?B?dE43MFFkcTZzaVE5UFlJZWthVEU1MFdNcFJpbmZQaDB4V21qemQxL3B5L1JD?=
 =?utf-8?B?cEtDeDdlUFRpOGlWbllVNWQ3TWFhVDBjZkxEUUVnV25ybzM2ZFVuVFgzSHZu?=
 =?utf-8?B?S1pkT0laS01HakhYVXNTQ0xTTWlJTWtjMXlYWFRHVlFsc1JTdjM1VThHNDNH?=
 =?utf-8?B?NzZOaFNBWGh1cmR5bHRtZjhiOER1dCs1MXdzL0lacmllSjdoZEx6S2JFRXFt?=
 =?utf-8?B?dGxpeFcvZTQxUnE4czFGN2FjQkRFRUZhY1JUaTBGcGdIdTFrenFaeG1aN0Fu?=
 =?utf-8?B?Z2VHdzFxWVJKMmM2TEZNaSt3dmRNU2F3REQrTndpS00yTDVyYzNWTk9lZEVv?=
 =?utf-8?B?Z0ZtVmdPMnMvenIvUU9ZeVhwR0ZkQTNuZ01tcjBqKzY2ZlloWUlWdXVUNHRu?=
 =?utf-8?B?NDVCNVFvcUNWVjBrN09TR0NqWVhyblhBWklWR0RqTnNsay9PejBCVG9KODBG?=
 =?utf-8?B?d2RYU1RlekNJSkp6Mi9MR3NRUytQVFdzM2NaT2pEL3JyUHVVcGZPUk5SUEk5?=
 =?utf-8?B?YW1xY1VabXpwdTlmZkYwajEreFBTNkFFOERFMlo3eDdWNnRPQWdubDQxdDdt?=
 =?utf-8?B?SzArODR5VDdrZVM1L3llOUxtZkg5d1R0VGdpU2Y5Unh4TWtFVDRCT3h6RnEr?=
 =?utf-8?B?Q1VmN3RLOGJyQndxWUZ4NVEzNTFTNW52NUpXQ1JRWlhLOTRVVy9lcCtPbmFh?=
 =?utf-8?B?SmIyS1RYeXd5RXlBN1BlQ1luV0pyaU5uOFBxMFBjb2JxQnljVkNOd3UxaTRX?=
 =?utf-8?B?SWI5eldyM3VzNHYzTDNJZzZ4UjIxV3VWRXFsTzlxckRwSTMvRnpnTHVDUjE2?=
 =?utf-8?B?MGxWQ25aUlg4ZlduOGk2OXpHZDBnR2g3OForOERGKy9GaEF3b0dpczBWZnBx?=
 =?utf-8?B?SHo1REFDWEpwUGlSWDZCMERsZElYNmh0d3V4NWoyNTQ5elNnakpPczlsa1lv?=
 =?utf-8?B?TTJCaU9Td0c3bkRtdTVhMFhBZkVNTGs5ZU01am9kQlpKUUdVYisvV0ZoMFRi?=
 =?utf-8?B?VHBlcDh0UWhWRmlTYnVDbi9Ib1pzVUlQN2FMS29QSmovd0hESmVuTFcxMlRh?=
 =?utf-8?B?a1F2Wm1FUkV3MmFRLzR3a1VXQnlRVUpUTHh6ejhrZkQ4ME16YUt2UlAwdXNS?=
 =?utf-8?B?WkZHNGNTeTRVQmRVR0VOcFplMjJxRTMzV3Bzek5jTDRBaXVodUlBNDNhSm9z?=
 =?utf-8?B?aVV4dVZBZHBoMkxPUGpQZ0N6Zjg3cU44VGZCTXUwTkZBQ0daK2ZocTNBczBD?=
 =?utf-8?B?UUNQcUYyR2pZY2dtK1B3SXNIRElhSHdNU0l3Vk1VZS9icGEyL1FQbC82Q2xQ?=
 =?utf-8?B?OXVuV05zckltZ3Q0ekFMT0JyNnVjRndXeFEzZzRHSUtVbHVPL2U3TXk0VDBz?=
 =?utf-8?B?MTNOVWl5d1c2NytXT1h5L2s4TWRyb0FwTkpsNktiWXNOWnFWNjM2ekkrVC9L?=
 =?utf-8?B?cnpVNENXdEFNS1NGWXlUditOZVl2bXJxbTJoS0RYZW1scTUyV0hrbUpFQ1RC?=
 =?utf-8?B?RnZuQ0hvN0orUVVlYXlsRFovOVEzdWc1MU5UTno3akZLODdHWlZqdGF5S1R4?=
 =?utf-8?B?WWVCd3dWZFU3TmlYRXlOdlNSdzBTeE5tcGViL0lqLzVTQjVHRXpTTGpIdzBW?=
 =?utf-8?B?ek9DYWpkaUMyUFBzZy95TU9HeEJiTlhCby91SGZUR2VTU2lJYTluMUpPaFJX?=
 =?utf-8?B?NjVtd3ljM2FEVG16dFowMEJHdi83RTRxV1R1NEoyMnZ1QkpSNTRwQ2hPcmgy?=
 =?utf-8?B?eFVOcTBpWUQ1Z21GV215Rko4Smlpd0oycFBqVVlkSFR0ejRBSlErRTRXbGhI?=
 =?utf-8?B?NWg2MUdyUERkdXpqUnhKQW5LZ1l4Rk85LzAzOUNZRytoWmhqNEZvc2pIMVlK?=
 =?utf-8?B?QU96M3A4L1BmL3ZKRnVVNGY2L2xJdTVweVY5K2JxRk5uaDV2NWRQelEvUjUr?=
 =?utf-8?B?T2wrSzQyaHhCT3pwdy9rSWR0eUx4cW9kZFcrRFNGV0ROeFJkVVJqM1hUemVV?=
 =?utf-8?B?NzdEY0gzM0MyOEorcXFmUjVpMzI5U1BTWTZTYnk2RjZBLy9lMlZNZnV0cE5r?=
 =?utf-8?B?UlE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <1DF4B8B33D9C7947A9D162F56446D587@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c2c61ad9-f41f-4ef5-de49-08dcc286ca2c
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Aug 2024 08:45:35.2626 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: PZbYJ0xTcRJhNwNvUiIK5S68NDi+P8gNCRnijm2bfx2GI8n3x8deMR4Da2sSHZR0F3YdsCf9QAQ2J+ARA/Uxht2TucyJx/EjWwAz7YOmXEY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB7857
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

T24gV2VkLCAyMDI0LTA2LTE5IGF0IDEwOjA3ICswNTMwLCBTdXJhaiBLYW5kcGFsIHdyb3RlOgo+
IFRvIHJlYWNoIFBDMTAgd2hlbiBQS0dfQ19MQVRFTkNZIGlzIGNvbmZpZ3VyZSB3ZSBtdXN0IGRv
IHRoZQo+IGZvbGxvd2luZwo+IHRoaW5ncwo+IDEpIEVudGVyIFBTUjEgb25seSB3aGVuIGRlbGF5
ZWRfdmJsYW5rIDwgNiBsaW5lcyBhbmQgREM1IGNhbiBiZQo+IGVudGVyZWQKPiAyKSBBbGxvdyBQ
U1IyIGRlZXAgc2xlZXAgd2hlbiBEQzUgY2FuIGJlIGVudGVyZWQKPiAzKSBEQzUgY2FuIGJlIGVu
dGVyZWQgd2hlbiBhbGwgdHJhbnNvY29kZXIgaGF2ZSBlaXRoZXIgUFNSMSwgUFNSMiBvcgo+IGVE
UCAxLjUgUFIgQUxQTSBlbmFibGVkIGFuZCBWQkkgaXMgZGlzYWJsZWQgYW5kIGZsaXBzIGFuZCBw
dXNoZXMgYXJlCj4gbm90IGhhcHBlbmluZy4KPiAKPiAtLXYyCj4gLVN3aXRjaCBjb25kaXRpb24g
YW5kIGRvIGFuIGVhcmx5IHJldHVybiBbSmFuaV0KPiAtRG8gc29tZSBjaGVja3MgaW4gY29tcHV0
ZV9jb25maWcgW0phbmldCj4gLURvIG5vdCB1c2UgcmVnaXN0ZXIgcmVhZHMgYXMgYSBtZXRob2Qg
b2YgY2hlY2tpbmcgc3RhdGVzIGZvcgo+IERQS0dDIG9yIGRlbGF5ZWQgdmJsYW5rIFtKYW5pXQo+
IC1Vc2UgYW5vdGhlciB3YXkgdG8gc2VlIGlzIHZibGFuayBpbnRlcnJ1cHRzIGFyZSBkaXNhYmxl
ZCBvciBub3QKPiBbSmFuaV0KPiAKPiBXQTogMTYwMjM0OTcyMjYKPiBTaWduZWQtb2ZmLWJ5OiBT
dXJhaiBLYW5kcGFsIDxzdXJhai5rYW5kcGFsQGludGVsLmNvbT4KPiAtLS0KPiDCoC4uLi9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaMKgwqDCoCB8wqAgMiArCj4gwqBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jwqDCoMKgwqDCoCB8IDgyCj4gKysr
KysrKysrKysrKysrKysrLQo+IMKgMiBmaWxlcyBjaGFuZ2VkLCA4MyBpbnNlcnRpb25zKCspLCAx
IGRlbGV0aW9uKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZGlzcGxheV90eXBlcy5oCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2Rpc3BsYXlfdHlwZXMuaAo+IGluZGV4IDQ2YjNjYmViNGE4Mi4uMDMxZjhlODg5YjY1
IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxh
eV90eXBlcy5oCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNw
bGF5X3R5cGVzLmgKPiBAQCAtMTcwOCw2ICsxNzA4LDggQEAgc3RydWN0IGludGVsX3BzciB7Cj4g
wqDCoMKgwqDCoMKgwqDCoGJvb2wgc2lua19zdXBwb3J0Owo+IMKgwqDCoMKgwqDCoMKgwqBib29s
IHNvdXJjZV9zdXBwb3J0Owo+IMKgwqDCoMKgwqDCoMKgwqBib29sIGVuYWJsZWQ7Cj4gK8KgwqDC
oMKgwqDCoMKgYm9vbCBkZWxheWVkX3ZibGFuazsKPiArwqDCoMKgwqDCoMKgwqBib29sIGlzX2Rw
a2djX2NvbmZpZ3VyZWQ7Cj4gwqDCoMKgwqDCoMKgwqDCoGJvb2wgcGF1c2VkOwo+IMKgwqDCoMKg
wqDCoMKgwqBlbnVtIHBpcGUgcGlwZTsKPiDCoMKgwqDCoMKgwqDCoMKgZW51bSB0cmFuc2NvZGVy
IHRyYW5zY29kZXI7Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfcHNyLmMKPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMK
PiBpbmRleCAwODBiZjVlNTExNDguLjRkZGVhNjczNzM4NiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYwo+IEBAIC04MDgsNiArODA4LDczIEBAIHN0YXRpYyB1
OCBwc3JfY29tcHV0ZV9pZGxlX2ZyYW1lcyhzdHJ1Y3QKPiBpbnRlbF9kcCAqaW50ZWxfZHApCj4g
wqDCoMKgwqDCoMKgwqDCoHJldHVybiBpZGxlX2ZyYW1lczsKPiDCoH0KPiDCoAo+ICtzdGF0aWMg
Ym9vbCBpbnRlbF9wc3JfY2hlY2tfZGVsYXllZF92YmxhbmtfbGltaXQoc3RydWN0Cj4gaW50ZWxf
Y3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkKPiArewo+ICvCoMKgwqDCoMKgwqDCoHN0cnVjdCBkcm1f
ZGlzcGxheV9tb2RlICphZGp1c3RlZF9tb2RlID0gJmNydGNfc3RhdGUtCj4gPmh3LmFkanVzdGVk
X21vZGU7Cj4gKwo+ICvCoMKgwqDCoMKgwqDCoHJldHVybiAoYWRqdXN0ZWRfbW9kZS0+Y3J0Y192
Ymxhbmtfc3RhcnQgLSBhZGp1c3RlZF9tb2RlLQo+ID5jcnRjX3ZkaXNwbGF5KSA+PSA2Owo+ICt9
Cj4gKwo+ICsvKgo+ICsgKiBQS0dfQ19MQVRFTkNZIGlzIGNvbmZpZ3VyZWQgb25seSB3aGVuIERJ
U1BMQVlfVkVSID49IDIwIGFuZAo+ICsgKiBWUlIgaXMgbm90IGVuYWJsZWQKPiArICovCj4gK3N0
YXRpYyBib29sIGludGVsX3Bzcl9pc19kcGtnY19jb25maWd1cmVkKHN0cnVjdCBkcm1faTkxNV9w
cml2YXRlCj4gKmk5MTUpCj4gK3sKPiArwqDCoMKgwqDCoMKgwqBzdHJ1Y3QgaW50ZWxfY3J0YyAq
aW50ZWxfY3J0YzsKPiArCj4gK8KgwqDCoMKgwqDCoMKgaWYgKERJU1BMQVlfVkVSKGk5MTUpIDwg
MjApCj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHJldHVybiBmYWxzZTsKPiArCj4g
K8KgwqDCoMKgwqDCoMKgZm9yX2VhY2hfaW50ZWxfY3J0YygmaTkxNS0+ZHJtLCBpbnRlbF9jcnRj
KSB7Cj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHN0cnVjdCBpbnRlbF9jcnRjX3N0
YXRlICpjcnRjX3N0YXRlOwo+ICsKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgaWYg
KCFpbnRlbF9jcnRjLT5hY3RpdmUpCj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqBjb250aW51ZTsKPiArCj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoGNydGNfc3RhdGUgPSBpbnRlbF9jcnRjLT5jb25maWc7Cj4gKwo+ICvCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqBpZiAoY3J0Y19zdGF0ZS0+dnJyLmVuYWJsZSkKPiArwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHJldHVybiBmYWxzZTsKPiArwqDC
oMKgwqDCoMKgwqB9Cj4gKwo+ICvCoMKgwqDCoMKgwqDCoHJldHVybiB0cnVlOwo+ICt9Cj4gKwo+
ICsvKgo+ICsgKiBEQzUgZW50cnkgaXMgb25seSBwb3NzaWJsZSBpZiB2YmxhbmsgaW50ZXJydXB0
IGlzIGRpc2FibGVkCj4gKyAqIGFuZCBlaXRoZXIgcHNyMSwgcHNyMiwgZWRwIDEuNSBwciBhbHBt
IGlzIGVuYWJsZWQgb24gYWxsCj4gKyAqIGVuYWJsZWQgZW5jb2RlcnMuCj4gKyAqLwo+ICtzdGF0
aWMgYm9vbCBpbnRlbF9wc3JfaXNfZGM1X2VudHJ5X3Bvc3NpYmxlKHN0cnVjdCBkcm1faTkxNV9w
cml2YXRlCj4gKmk5MTUpCj4gK3sKPiArwqDCoMKgwqDCoMKgwqBzdHJ1Y3QgaW50ZWxfY3J0YyAq
aW50ZWxfY3J0YzsKPiArCj4gK8KgwqDCoMKgwqDCoMKgZm9yX2VhY2hfaW50ZWxfY3J0YygmaTkx
NS0+ZHJtLCBpbnRlbF9jcnRjKSB7Cj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHN0
cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyOwo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqBzdHJ1Y3QgZHJtX2NydGMgKmNydGMgPSAmaW50ZWxfY3J0Yy0+YmFzZTsKPiArwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgc3RydWN0IGRybV92YmxhbmtfY3J0YyAqdmJsYW5rOwo+
ICsKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgaWYgKCFpbnRlbF9jcnRjLT5hY3Rp
dmUpCj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBjb250
aW51ZTsKPiArCj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHZibGFuayA9IGRybV9j
cnRjX3ZibGFua19jcnRjKGNydGMpOwo+ICsKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgaWYgKHZibGFuay0+ZW5hYmxlZCkKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoHJldHVybiBmYWxzZTsKPiArCj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoGZvcl9lYWNoX2VuY29kZXJfb25fY3J0YygmaTkxNS0+ZHJtLCBjcnRjLCBlbmNv
ZGVyKSB7Cj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBz
dHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwID0KPiBlbmNfdG9faW50ZWxfZHAoZW5jb2Rlcik7Cj4g
K8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBzdHJ1Y3QgaW50
ZWxfcHNyICpwc3IgPSAmaW50ZWxfZHAtPnBzcjsKPiArCj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBpZiAoIXBzci0+ZW5hYmxlZCkKPiArwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqByZXR1
cm4gZmFsc2U7Cj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoH0KPiArwqDCoMKgwqDC
oMKgwqB9Cj4gKwo+ICvCoMKgwqDCoMKgwqDCoHJldHVybiB0cnVlOwo+ICt9Cj4gKwo+IMKgc3Rh
dGljIGJvb2wgaHN3X2FjdGl2YXRlX3BzcjEoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCkKPiDC
oHsKPiDCoMKgwqDCoMKgwqDCoMKgc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0g
ZHBfdG9faTkxNShpbnRlbF9kcCk7Cj4gQEAgLTgxNSw2ICs4ODIsMTQgQEAgc3RhdGljIGJvb2wg
aHN3X2FjdGl2YXRlX3BzcjEoc3RydWN0IGludGVsX2RwCj4gKmludGVsX2RwKQo+IMKgwqDCoMKg
wqDCoMKgwqB1MzIgbWF4X3NsZWVwX3RpbWUgPSAweDFmOwo+IMKgwqDCoMKgwqDCoMKgwqB1MzIg
dmFsID0gRURQX1BTUl9FTkFCTEU7Cj4gwqAKPiArwqDCoMKgwqDCoMKgwqAvKiBXQTogMTYwMjM0
OTcyMjYqLwo+ICvCoMKgwqDCoMKgwqDCoGlmIChpbnRlbF9kcC0+cHNyLmlzX2Rwa2djX2NvbmZp
Z3VyZWQgJiYKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqAgKGludGVsX2RwLT5wc3IuZGVsYXllZF92
YmxhbmsgfHwKPiBpbnRlbF9wc3JfaXNfZGM1X2VudHJ5X3Bvc3NpYmxlKGRldl9wcml2KSkpIHsK
PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgZHJtX2RiZ19rbXMoJmRldl9wcml2LT5k
cm0sCj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgIlBTUjEgbm90IGFjdGl2YXRlZCBhcyBpdCBkb2Vzbid0IG1lZXQKPiByZXF1aXJlbWVudHMg
b2YgV0E6MTYwMjM0OTcyMjZcbiIpOwo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBy
ZXR1cm4gZmFsc2U7Cj4gK8KgwqDCoMKgwqDCoMKgfQo+ICsKCkkgd291bGQgcmVjb21tZW5kIGRv
aW5nIHRoaXMgaW4gaW50ZWxfcHNyX2NvbXB1dGVfY29uZmlnIGFzIGEgbGFzdCBzdGVwCmFuZCBk
cm9wIHBhdGNoIDEuIERvaW5nIGl0IHRoaXMgd2F5IHdvdWxkIGJlIHNhZmVyIGFzIGl0J3Mgbm90
IG9wZW5pbmcKbmV3IHNlcXVlbmNlL3N0YXRlIHdoZXJlIHBzci5lbmFibGVkID0gdHJ1ZSBhbmQg
cHNyLmFjdGl2ZSA9IGZhbHNlCmFmdGVyIGludGVsX3Bzcl9lbmFibGVfbG9ja2VkLgoKQlIsCgpK
b3VuaSBIw7ZnYW5kZXIKCj4gwqDCoMKgwqDCoMKgwqDCoHZhbCB8PQo+IEVEUF9QU1JfSURMRV9G
UkFNRVMocHNyX2NvbXB1dGVfaWRsZV9mcmFtZXMoaW50ZWxfZHApKTsKPiDCoAo+IMKgwqDCoMKg
wqDCoMKgwqBpZiAoRElTUExBWV9WRVIoZGV2X3ByaXYpIDwgMjApCj4gQEAgLTkwNyw3ICs5ODIs
MTAgQEAgc3RhdGljIHZvaWQgaHN3X2FjdGl2YXRlX3BzcjIoc3RydWN0IGludGVsX2RwCj4gKmlu
dGVsX2RwKQo+IMKgwqDCoMKgwqDCoMKgwqB1MzIgdmFsID0gRURQX1BTUjJfRU5BQkxFOwo+IMKg
wqDCoMKgwqDCoMKgwqB1MzIgcHNyX3ZhbCA9IDA7Cj4gwqAKPiAtwqDCoMKgwqDCoMKgwqB2YWwg
fD0KPiBFRFBfUFNSMl9JRExFX0ZSQU1FUyhwc3JfY29tcHV0ZV9pZGxlX2ZyYW1lcyhpbnRlbF9k
cCkpOwo+ICvCoMKgwqDCoMKgwqDCoC8qIFdBOiAxNjAyMzQ5NzIyNiovCj4gK8KgwqDCoMKgwqDC
oMKgaWYgKGludGVsX2RwLT5wc3IuaXNfZHBrZ2NfY29uZmlndXJlZCAmJgo+ICvCoMKgwqDCoMKg
wqDCoMKgwqDCoCBpbnRlbF9wc3JfaXNfZGM1X2VudHJ5X3Bvc3NpYmxlKGRldl9wcml2KSkKPiAr
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgdmFsIHw9Cj4gRURQX1BTUjJfSURMRV9GUkFN
RVMocHNyX2NvbXB1dGVfaWRsZV9mcmFtZXMoaW50ZWxfZHApKTsKPiDCoAo+IMKgwqDCoMKgwqDC
oMKgwqBpZiAoRElTUExBWV9WRVIoZGV2X3ByaXYpIDwgMTQgJiYgIUlTX0FMREVSTEFLRV9QKGRl
dl9wcml2KSkKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHZhbCB8PSBFRFBfU1Vf
VFJBQ0tfRU5BQkxFOwo+IEBAIC0xNTAyLDYgKzE1ODAsOCBAQCB2b2lkIGludGVsX3Bzcl9jb21w
dXRlX2NvbmZpZyhzdHJ1Y3QgaW50ZWxfZHAKPiAqaW50ZWxfZHAsCj4gwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqByZXR1cm47Cj4gwqAKPiDCoMKgwqDCoMKgwqDCoMKgY3J0Y19zdGF0
ZS0+aGFzX3NlbF91cGRhdGUgPQo+IGludGVsX3NlbF91cGRhdGVfY29uZmlnX3ZhbGlkKGludGVs
X2RwLCBjcnRjX3N0YXRlKTsKPiArwqDCoMKgwqDCoMKgwqBpbnRlbF9kcC0+cHNyLmRlbGF5ZWRf
dmJsYW5rID0KPiBpbnRlbF9wc3JfY2hlY2tfZGVsYXllZF92YmxhbmtfbGltaXQoY3J0Y19zdGF0
ZSk7Cj4gK8KgwqDCoMKgwqDCoMKgaW50ZWxfZHAtPnBzci5pc19kcGtnY19jb25maWd1cmVkID0K
PiBpbnRlbF9wc3JfaXNfZHBrZ2NfY29uZmlndXJlZChkZXZfcHJpdik7Cj4gwqB9Cj4gwqAKPiDC
oHZvaWQgaW50ZWxfcHNyX2dldF9jb25maWcoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIs
Cgo=
