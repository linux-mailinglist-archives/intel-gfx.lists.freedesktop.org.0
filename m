Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 98F04A008F6
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Jan 2025 12:56:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC37510E2B0;
	Fri,  3 Jan 2025 11:56:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="frTjNxFq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2941610E2B0
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Jan 2025 11:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1735905412; x=1767441412;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=PCrckmvyHKPBDMoY+eKTMrzCSKNs5Y8SyHmEivSQmlw=;
 b=frTjNxFq34ndLg/IYzLIjiFmvwDW/v831P+K1iB3UkPv29Ro8cXcNYDn
 jufiDIz4kEemsbqO3QWaSnz/FsAUEqhOctBdqN/9IGfORi1/28H4r3/78
 lo1L3TgW4PMjEfON0Q6fMzwARg9GVItlJO+Uo6+hMUOt6NwRKiRqYfOtK
 5TPFwgTxWQM5xNodbMCZVWCDggtfRjdlb36xOguZgvZ88hI/xuWEvpSWV
 g8AjS6OTNoJpnrtnl7/SZLrYj80anc3I4I+JHUpCXy/d29Pgj3G3cumuD
 DuE3Zs7xkfbOs/tn6YsHA+tncZm9A9gqd05acYEUTo1FMI74uXeQ0TET7 Q==;
X-CSE-ConnectionGUID: Br7Zd7x7TfGz+kpXa8J9XA==
X-CSE-MsgGUID: xOuDreL1R1SXecflS5HPMw==
X-IronPort-AV: E=McAfee;i="6700,10204,11304"; a="58620095"
X-IronPort-AV: E=Sophos;i="6.12,286,1728975600"; d="scan'208";a="58620095"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jan 2025 03:56:52 -0800
X-CSE-ConnectionGUID: VPKVLeGoRtG3XDyCn6ghuA==
X-CSE-MsgGUID: tp1y9MEOScqbQZYUhSInlg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="125059682"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Jan 2025 03:56:52 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Fri, 3 Jan 2025 03:56:51 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Fri, 3 Jan 2025 03:56:51 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.49) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 3 Jan 2025 03:56:50 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=yPwiVNfQAPwpJ/EuX6sOczgQc6eXbLiomJWRTLEgo36UeDJpv9wSLmiPP7o56WrFlr/Mo0OZ78AFyhfGftFdrE5g4j2hYW2mYRZpx6PN3CeHsdLaJa9iqv2CRHcres5BqiGoEvZmjS+Bc/NCnEO2X87ZBPxyPyYA0Y//NgdIO4m4mnGKXPd0o3do5VGkPKBq29swjdKblyhjQz5FXXHbe53atG8kEqmCS9K9jSengKG7pEYgBTeKsQ80VgKXWBD/3siR4pHnjXVxd2ndYVV5vTqj9xRAO75sUhqiahkpLSOoUt+0y7KbI+tVEfy07E3gFc38ixPFF21aXWfQ0+VY3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AMYCWDhW6dAVDDR6KBQI3W280+7yEn3UT5j6c6nBTlo=;
 b=Rbbx2a9FMYA69kdeDQwQaPRWfNwJbcpDvllnuqBWGgIXQJhGozDtSFhEkPyYy6ALyoNkVCd+yhEk42HXhSS6+Zb2PJaKz8v/ClhjVMGRr7VZmUe+49IGtwVJ1c3P9V1MUBBP3tfMc7fdx5Pke5xAv/f+nKlWcnnYdHRQp/m9Ktn9t0snO5flul89YYoo42wZWqmN0ODY18O/pPLhR4upBH52/iVhADp4w+xA1pXGpBHNgxCduPmspS5BrMf81KoL5UN23B/lt1B/UHZAngkOFD89RkY9w+/x1vE2ygY7qQxYF4bq4aL4Y46cuPveZRzreuwwiKtfXqcH0B34JWa+4g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by CH0PR11MB8141.namprd11.prod.outlook.com (2603:10b6:610:18a::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8314.14; Fri, 3 Jan
 2025 11:56:29 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.8293.000; Fri, 3 Jan 2025
 11:56:29 +0000
Message-ID: <e1109e92-ff5c-49d7-a8cf-ac4ab630969e@intel.com>
Date: Fri, 3 Jan 2025 17:26:23 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 13/18] drm/i915/vrr: Drop the extra vmin adjustment for
 ADL+
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20241210211007.5976-1-ville.syrjala@linux.intel.com>
 <20241210211007.5976-14-ville.syrjala@linux.intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20241210211007.5976-14-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PN2PR01CA0100.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:27::15) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|CH0PR11MB8141:EE_
X-MS-Office365-Filtering-Correlation-Id: ccdb252e-5fdb-4f2e-10a5-08dd2beda84d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?bFVzN2U0bVRKUkpDL2lZWDR3d0hId1ZDLzF6R3BjeXFTaEROcmZvZzFmcWQ2?=
 =?utf-8?B?L0dpT1A0V0UxMGF6aStDNGE4dllHYVFTd0dsMHJwKzZNcE1kRUlzeldXaXZ6?=
 =?utf-8?B?ay9kOWZ4bDdjczROQUsvMS9KM1JvZ1duakJrN2NvczlyK01LdzNQeWV0aTFj?=
 =?utf-8?B?UFJGU0ZjVG03emh0TU9ZR3BhTHhXTEFaN2s0NDRZTDlnTERUS0pFaFBXNW9F?=
 =?utf-8?B?V1lVa0YzaERmS1Y1QXBZekhtKzFYeEFlKzUxaklXRCtXalJVRFRXS2hrTmUv?=
 =?utf-8?B?dXBEYjY0K0tWUGdONm5LdXF0d2M5UWlGMW5mNWZESStjZUh3NkxCYldCY3Ay?=
 =?utf-8?B?dVFFVUtJSlBlWXliRzBwSDM3TFp5ZGlnYXROelJOaEVibFR0T3p0QzhGQ3pN?=
 =?utf-8?B?WklTVCthQktJOFdXK3BzTWxEVkRsYlhkWk1aMlVralUwWkpIaXNHekpHV3Zh?=
 =?utf-8?B?dWhmNnRVeW5xRGhlMituUWZYME1VRUJadWQ5LzFNdnZ1anlkQlRndTR3TkFt?=
 =?utf-8?B?cHJjc2o0SnNBRUFhZVp2OUdJRCtsSEV3TmtkWGdMUHRKU2ttSS80YlU2cWtH?=
 =?utf-8?B?Uy9pL3dseEdPeDEzUk1hSTNRZk10dWJWZ0FwY3BETitUZkIyK2VaY1NjZWdu?=
 =?utf-8?B?OUNidzNDd3FiNVU2eG8reHY5YzE2aGI0Q05TV0E5MWV5RFJ3VWhXRmV5Qk5Y?=
 =?utf-8?B?NFFaZllkM1NlNEdlN0E1ZmY2WU5rYXpNR2czREZpSVNpa1B0V0F3WHR4WDR5?=
 =?utf-8?B?WGpjemlsRzBwMTdrVTc2cGYrUDRtc2U5bnlxS0dzeVdIemhGT1ZrTTFrdzRs?=
 =?utf-8?B?Q09Sa3l3MENTOGFnRmZOUG1SUzBBMlN3YWwzZDl1SVdoVXJCZUpoT2NqVVRn?=
 =?utf-8?B?MWF4VmhFZUovcG5kM3NaYStaSFhhMy9lN2xwU242bGxUalNXQ1h6WlVtZnJ5?=
 =?utf-8?B?YmV6RlBCSDdyTHl4MHFJbWtCQU43UnhRSDRVUlA0SGV3SHJZNGcwaHcrNHZZ?=
 =?utf-8?B?cGE2ZFVMMmpwaGV2WjMxekJ3aWpHQzRLOWFuek01U3Y0dFdEK0V0dnZGd0Jt?=
 =?utf-8?B?dVF0RGxTWVFmOXZtbzVlUGZRa3R0WXI4RVl3WmM2QTdhL2R5UDBZOFljUmZD?=
 =?utf-8?B?WkUrRzFvdGpGUVRiYUoyOERGS0FKdGoxc1Q2UnhubTRiWHdqRnp6bnRIMjNv?=
 =?utf-8?B?MHVJdTcwbFdCZjBoTUlnUjltMHhBeG8wbFA1dGRTU3JGdThKQ25vd1M0dFly?=
 =?utf-8?B?MUp2dTRRU2htcitXVGV6cmwxWitVbW4wQUJST1NOV1VrUE80SnFQb1haRGh0?=
 =?utf-8?B?YWhTNGc0WUlTcCtLZ0NjcTF1MytKYmk5N1VHTkNoUE5oempoV25SVHFJNlM1?=
 =?utf-8?B?N2tNVStFVER5Skd0UlhTdFMxVjFISUIrZm5lTDZhSFBPRGNFK0NycnBXN05u?=
 =?utf-8?B?WktRVkpscGpzSVJuT09DTWR4aE1SVFEwcXpEZU5FRXlqcUFvVk9GaEFycHM1?=
 =?utf-8?B?MVhPSUdkV0ZKSUE0Z3Y0dmtucjhoUGhacWhCYjY1MFJwd0ovWUhESW16Y2U5?=
 =?utf-8?B?SzZSeGVBNTNlTEtDRDRWTXoxN0VKby9xY28veTlaVXk3OFl3aXhsZzdPUjk3?=
 =?utf-8?B?R2RGbFZJaFhFSllob0tlQzd4eSs5QkZyKzdSbnVIck9RL3BGNTFCSkI0WVl3?=
 =?utf-8?B?RERiZHpCTDZZVDFJZnJvSlMyZ01XMi9aY04rT3ozcVY3ZksxYzY0VG1zMitR?=
 =?utf-8?B?dEMzM0JrR1BSZXBkMm1mV1B0U3lXVmJMRWtXUWEvdm1hSmw0MXdLUndJTEN6?=
 =?utf-8?B?dHJIL1lSc1RKRmU0T0NDSkhyWDA0c0RydE9jSE5WQ3pZdzd1REpTWG5mZm01?=
 =?utf-8?Q?BZlQL3NUOnlzt?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TXkyM2lsbElDREJvZTlNZzVhV0Q0RUI3NWlVb3lldFAyTTF4TWw1R0hzakJ6?=
 =?utf-8?B?NjhrVGxEOUpBNzExU1o2U0lEc25PWlk5cGYrZmFNa3RiQlZrb0tnQTBab0pJ?=
 =?utf-8?B?UUd5S2tWU2xnbjYvV0RaTnEvbFM2M0dKNTdUWXNNTXVDS21Nbk9MQmE4dGtW?=
 =?utf-8?B?WnBuQ1dMVC9pR2o0Mk11YmxUSGFvTm1LL0hsM1hvOWZpd25ERjgyQnN5SFUy?=
 =?utf-8?B?UXB6QXlNSUdKZGJQaVAyMWVlYlhpcXF5VUE0QnRjTDRtQXJycm9pMzFsMFlC?=
 =?utf-8?B?L081a3Bxd3MvOFUyOXJhUG1SUG9pdG56dkFCZHRkZXVpV2w1V0Q1UVAzNHJZ?=
 =?utf-8?B?ZUhFc0loV2dpWWdBOFdYL21jcmlTdU5IR255dGc4YnhmRzY5ekJqdUFJbWFB?=
 =?utf-8?B?dEpkWndhUURjWFFsQk53U3pNOHg1NWtMYWZ3NVgwRFdydHlDVkNyaHhROXEx?=
 =?utf-8?B?NkYxRXpnWVNHSG10cVJXVldnczEySWZsVVBocWpyM1JQZUtjQkYrQzgxY3B4?=
 =?utf-8?B?NnQwUmE4ZU9zVkhIUWtLaDVsOC9aVjlvWk1hMnlPVkZRblAvaEY5ZjZ4UFpu?=
 =?utf-8?B?TVpuNzB0ZUJXUDEzTW9JdVhiNXh6YnRwd1NUdGJ5NjVwS2xiRHoxN1JiMTla?=
 =?utf-8?B?YnJ2bWJCeVpWU3pOckhSN3pMMVk2OXlFRVJNZ3JLbkcrV0VubUdrSkU2NWhz?=
 =?utf-8?B?aHZ3aGpMaTRIMGF0eGNtOFJ4WDdUeFdZWEdrZHFIVVovMEgvWTcyZjYyMUlO?=
 =?utf-8?B?eXFkSDdZNjFlTXJxaG9LS3hZZG52cmxMNGxqdG03RC84VjgzYXZKUWFXZnla?=
 =?utf-8?B?TVlnYVVrUDNBVFFlMmdVT1YvWXdqcS8xV1pLRXdpb29FMGswZGsvT0VFSUVX?=
 =?utf-8?B?L0NVdzQvZ2tLTlFhTlVBNklWUW5kd1RGNlRGTzZNbmdmTlhwUXRPb0lIb2pE?=
 =?utf-8?B?ci9sMGY4N2pDb3crSGJQaUJQWmdEWWtBUkpkM25Da1FTZUJwMGdGR1V4T2x2?=
 =?utf-8?B?RkZUMnhPQnRFR0xRSXQvckNUWmtSM0ZodGJJWEJ1bmNpWHNpalJsd0FtRWVT?=
 =?utf-8?B?Q0NvdlU3UXYyUFc1amlKdEM0MzQ1SjJUd2d2SE1YSVdVRzd5MzE1dW1USkJn?=
 =?utf-8?B?aDBvYm5kZmFKNndzakN6ZFFOR2M3TndQVHZaRUU3STNVRHN0eEVlOWJmOEZp?=
 =?utf-8?B?UndoM3hYbm1rYUI5NWNXOVZjaERodHd1WWVqMEJJQXZhNk5HNzM3ZnFqZ1Rn?=
 =?utf-8?B?aE5rTWRFK2RQcGg2cVR1ZEV0ZXlRbThWZEtHZFJ6ZGVCeEJuVmUyV2c0aTZL?=
 =?utf-8?B?Tnh4cmU4K004anVkbHh3bHJyVHBCQ2VXN0N5NUxZNHNxeVhkcDI4ejJYTFp1?=
 =?utf-8?B?citORVR1enRURlkyUmdkRTR4b092RXB1Z21lREwwRnA2WnFJaHQ2OHYveEhH?=
 =?utf-8?B?akpEYWNBTmVWUEMwdWRmNTlDLzFyUHdGaytJVVJYcWgxTElESnBwT25LUURJ?=
 =?utf-8?B?cjBVTnRoT0gvOFdjSTlieUd4TWZzUXVkK1NEb05CdnowYmE3dWlMZVdQVlJk?=
 =?utf-8?B?d1ZiS3VRblpjRUtHN0NiaFRyNVRiTTVUa0FRRFl6YUV5dmxFL252VGNGVUhn?=
 =?utf-8?B?RFVGVlV2bkNOTEMzcW4xUjczRGgwdmpGQzhvdkY5SFc3Z254NHdwQjJ5QXJv?=
 =?utf-8?B?WjRvTExsMkJ2YU9FcE9NZXdHTGF5RTB2SUVraElvMUtuOGNsTitPbVZ4ZS94?=
 =?utf-8?B?OUpnYTlTb0MyTWd3K3JYZzVmRkpiKzMrN1FqdXlaemNPbjVscU14UTNrdGdF?=
 =?utf-8?B?eDFCdXBIREN3MHliblEvZGllcGo0c3ZqbzFaeEcwWkdGYkxzVE1IbUsrNWQ4?=
 =?utf-8?B?SHQ4QVVPMFVNQWN3alByQzcxaTJpYklaMDJkV2FYa2k5a3lzc1JBajY5Y3FL?=
 =?utf-8?B?bTBIeDI1VzU1a0hLSEJoU1dyUlFKT3dUUlRJeUExZU8zUzAzMmhUMHdDODZF?=
 =?utf-8?B?UVYxUDBDSzlSRjI3cUFGeThOSU5aS2VHc01sM0lscnJnMnNWNUVtRHI0YndS?=
 =?utf-8?B?dFV3NmRBbFVuUUVCSnEvNm4xVHduajJoRldPOVZSYnZEaGltMkViOEJkTWgw?=
 =?utf-8?B?ZlNtR1YyaDhJRE5EQk9rTysrY1VTa1dybnE4SWpMMWZVRVE3L3VCZFpuZ3lD?=
 =?utf-8?B?cWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ccdb252e-5fdb-4f2e-10a5-08dd2beda84d
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Jan 2025 11:56:29.0702 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: tvUc8DAOIW5JLu/ZKpXBxlQ7W81AaZVadYTXDfcYJnkllrm+OoyZNjhvahxLzC/IdPtQc9HfSPuZgK5sNaWO81Q4OL78TBsW2XEc2y7r7ZA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB8141
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


On 12/11/2024 2:40 AM, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>
> Apparently on ICL/TGL need the annoying vmin adjustemnt. On
typo: adjustement
> ADL+ we can program flipling==vmin and the hardware actually
typo: flipline
> respects that properly.

I had tried to remove this earlier for ADL+, but was lost with +1 and -1 
(handling this offset) in different places, and failed miserably.

Thanks for this patch, its now quite clear.

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_vrr.c | 39 ++++++++++++++++--------
>   1 file changed, 27 insertions(+), 12 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index a0ddc288c1a3..15017254d250 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -82,6 +82,19 @@ int intel_vrr_vblank_delay(const struct intel_crtc_state *crtc_state)
>   		crtc_state->hw.adjusted_mode.crtc_vdisplay;
>   }
>   
> +static int intel_vrr_flipline_offset(struct intel_display *display)
> +{
> +	/* ICL/TGL hardware imposes flipline>=vmin+1 */
> +	return DISPLAY_VER(display) < 13 ? 1 : 0;
> +}
> +
> +static int intel_vrr_vmin_flipline(const struct intel_crtc_state *crtc_state)
> +{
> +	struct intel_display *display = to_intel_display(crtc_state);
> +
> +	return crtc_state->vrr.vmin + intel_vrr_flipline_offset(display);
> +}
> +
>   /*
>    * Without VRR registers get latched at:
>    *  vblank_start
> @@ -111,8 +124,8 @@ static int intel_vrr_vblank_exit_length(const struct intel_crtc_state *crtc_stat
>   
>   int intel_vrr_vmin_vtotal(const struct intel_crtc_state *crtc_state)
>   {
> -	/* Min vblank actually determined by flipline that is always >=vmin+1 */
> -	return crtc_state->vrr.vmin + 1;
> +	/* Min vblank actually determined by flipline */
> +	return intel_vrr_vmin_flipline(crtc_state);
>   }
>   
>   int intel_vrr_vmax_vtotal(const struct intel_crtc_state *crtc_state)
> @@ -122,8 +135,8 @@ int intel_vrr_vmax_vtotal(const struct intel_crtc_state *crtc_state)
>   
>   int intel_vrr_vmin_vblank_start(const struct intel_crtc_state *crtc_state)
>   {
> -	/* Min vblank actually determined by flipline that is always >=vmin+1 */
> -	return crtc_state->vrr.vmin + 1 - intel_vrr_vblank_exit_length(crtc_state);
> +	/* Min vblank actually determined by flipline */
> +	return intel_vrr_vmin_flipline(crtc_state) - intel_vrr_vblank_exit_length(crtc_state);
>   }
>   
>   int intel_vrr_vmax_vblank_start(const struct intel_crtc_state *crtc_state)
> @@ -220,15 +233,17 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
>   	if (vmin >= vmax)
>   		return;
>   
> -	/*
> -	 * flipline determines the min vblank length the hardware will
> -	 * generate, and flipline>=vmin+1, hence we reduce vmin by one
> -	 * to make sure we can get the actual min vblank length.
> -	 */
> -	crtc_state->vrr.vmin = vmin - 1;
> +	crtc_state->vrr.vmin = vmin;
>   	crtc_state->vrr.vmax = vmax;
>   
> -	crtc_state->vrr.flipline = crtc_state->vrr.vmin + 1;
> +	crtc_state->vrr.flipline = crtc_state->vrr.vmin;
> +
> +	/*
> +	 * flipline determines the min vblank length the hardware will
> +	 * generate, and on ICL/TGL flipline>=vmin+1, hence we reduce
> +	 * vmin by one to make sure we can get the actual min vblank length.
> +	 */
> +	crtc_state->vrr.vmin -= intel_vrr_flipline_offset(display);
>   
>   	/*
>   	 * When panel is VRR capable and userspace has
> @@ -273,7 +288,7 @@ void intel_vrr_compute_config_late(struct intel_crtc_state *crtc_state)
>   
>   	if (DISPLAY_VER(display) >= 13) {
>   		crtc_state->vrr.guardband =
> -			crtc_state->vrr.vmin + 1 - adjusted_mode->crtc_vblank_start;
> +			crtc_state->vrr.vmin - adjusted_mode->crtc_vblank_start;
>   	} else {
>   		crtc_state->vrr.pipeline_full =
>   			min(255, crtc_state->vrr.vmin - adjusted_mode->crtc_vblank_start -
