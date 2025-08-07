Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C38D1B1D73E
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Aug 2025 14:10:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5BB8710E824;
	Thu,  7 Aug 2025 12:10:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lJ6pcMIL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C4BC310E824
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Aug 2025 12:10:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754568612; x=1786104612;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=ZtkiZaEJiRmhXetRqc3LedIasDuMwNTQqwXkXyCmaOc=;
 b=lJ6pcMILpaHhrkQfeiwOu1arLGWMiZjjgo4R06YgEc5miJSDy6jaGVbZ
 +2VlYuApputtF0TqkcGbV2VlqO+LuI7YClE2r1jUMjah1PVcGyX8YrHqN
 0s0/yes6HXBr1XB83hm5ThD1uwk9ZstaeqWVxZ43JIHThymBsiG8XZRwg
 EqkH9o4vsjKWSPy3Fdg6yAB3ezyuXMHR0z1N/v3YrcnMKH66D6rCFO5AZ
 NqlZLVq3vRNXokx4kUY5ieYOBL4K+ZyUpPMMZyYhkb3dD6q76w9Rn7LJM
 nHmfnEvfrYP8lyDClnneDQ9r76lQkc6lGIb76JLTRabRZtRsS/kZnE7XA g==;
X-CSE-ConnectionGUID: X5WXPOjgSbq8NR9m9NJCFw==
X-CSE-MsgGUID: zKWBs71aTe+8pRmNMBkweA==
X-IronPort-AV: E=McAfee;i="6800,10657,11514"; a="56799316"
X-IronPort-AV: E=Sophos;i="6.17,271,1747724400"; d="scan'208";a="56799316"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2025 05:10:11 -0700
X-CSE-ConnectionGUID: S+iV486fR6iehc7IoRPJRg==
X-CSE-MsgGUID: BDQtZ0jPQAGSZvsR2zwNKw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,271,1747724400"; d="scan'208";a="164281486"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2025 05:10:11 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Thu, 7 Aug 2025 05:10:11 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Thu, 7 Aug 2025 05:10:11 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (40.107.92.44) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Thu, 7 Aug 2025 05:10:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=dEz9GoW/eCzJd6Fg502sc0Q2xgiSj6Y46YBCohatShOJB720nD2u77u5PEprY7dTfdKHiUX1CnGZw3kzLCyzVYn+uNW4QG65CEajGQr5l3iFpKrg2Du5o5aeoKH4gkCLLmYct5faTL4CGYfn9tohjFSmp89KwiPsPdF4LIZ8ndfezqSasMxMFR2TRI0cd2yqg0iBA0GCOz+3yrCvA9Iws46nYodx4LmakJrjO0ajPddXV7yHUXztMG4CEeouE4DwUCrdg4KM+WdUYzPnYH60A/0SccT/rVzumhkaE0yyNSe9Zq1Q8lXMLhw/JddGUunzUOCv3fVRM9nGzvbOo7HtuA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZtkiZaEJiRmhXetRqc3LedIasDuMwNTQqwXkXyCmaOc=;
 b=MnNqAYy5NNpMb/2qv3dJ1ekP+k6MPyuw6jiqDsl6iceFeLqPNXpwLqRxXoTnf0WgmB9iVgurITKQFTYICU5EpSo1g1UWvjV3A/cITBGCYd9ut2c/OsSt6D7UXloTPtYdSxFtHZvcb/26J5jefgZqE8nMG520jt1HaM4q5vEZ8TXI/ZvLkeu4SpNfphfa2eYGhmJmkgWnnc61WQ79T223DHQ/3/jG+gUeP4arJCUc1CR1SBLeCCeSNv6Rq8iRAKlPwUUF8sMylHCkZ5YPv809mgVygEEblMXpfP3pSV60WGDgpQBf/tzJGw4e0N/FP4Eoqz0iAxN7c3+vRdV+A0R60g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 IA0PR11MB7282.namprd11.prod.outlook.com (2603:10b6:208:43a::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9009.15; Thu, 7 Aug
 2025 12:10:07 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%5]) with mapi id 15.20.9009.013; Thu, 7 Aug 2025
 12:10:07 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>
Subject: Re: [PATCH v2] drm/i915/dsi: Fix overflow issue in pclk parsing
Thread-Topic: [PATCH v2] drm/i915/dsi: Fix overflow issue in pclk parsing
Thread-Index: AQHcB1OHJIZMWBl850iT/6X+s0ST8LRWxvUAgABS0AA=
Date: Thu, 7 Aug 2025 12:10:07 +0000
Message-ID: <af815ea8778281edf12f046bbafe3340e4ba344d.camel@intel.com>
References: <20250807042635.2491537-1-jouni.hogander@intel.com>
 <f6147c4504cd1daa4e287ca23f566a6e59df23f3@intel.com>
In-Reply-To: <f6147c4504cd1daa4e287ca23f566a6e59df23f3@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|IA0PR11MB7282:EE_
x-ms-office365-filtering-correlation-id: 672f8aca-126e-4a99-c045-08ddd5ab59ac
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|10070799003|376014|1800799024|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?eHZCblN6NmNlRll4WldjcEEvR05EUHlTRkZwYWpoR3IzaDJIMjZIUmxZelAx?=
 =?utf-8?B?ODBKRzJpZ1B6SERRM2NtYzB3MmVCbmFlM01OQWMwY25NMHFpam1vMGdhRW9K?=
 =?utf-8?B?YVhRZHFBSUN1cHNVZHh3cWZqMnNhRks4VTFPbXVRTFVIWm9neERvU1J3M3lw?=
 =?utf-8?B?L3dOYi9GY1pYVGFiRTQrZlI1VWV2Mi9RZEdHUDB3RG0yeU00OXhLVjM1RGVJ?=
 =?utf-8?B?YW12ei9wT1J2Z3VlMUFMK3FFeVArZFRTMjBOdnRtTjdncEx2cER2WlYrS3Zo?=
 =?utf-8?B?YVR3b1VodERzK0xQUVJnQzF4UWZsQS94ditZK1pVQnRpKzQ5MEFWMTRIS29x?=
 =?utf-8?B?Y2kvdVpCTW1vRVFaVExTemw1V1JRckc4Tkd5bW5mUFc2M0tsaTJxMWxXZGpZ?=
 =?utf-8?B?Uy9RNmwzRUFWWVpBY014c0JhOTVDbXgxNmVUZlJpSzEyYStSZmVXQ0J3Njlr?=
 =?utf-8?B?REM5WGpXSXo5L2FESHdwSjBIWTdJb2FqRDRqYysxdlZxemtwL29qQnQyUlpN?=
 =?utf-8?B?VE9Mek9XRS9OeUZTL09Hd3JDeXlrU2lHeWxqdGFoa3FYb0JlRjVURUlKQ1pk?=
 =?utf-8?B?OXJCUWErNFp6L1ltWkVqWm1NeU1sOHlWN2JQUU1RSUZqa0Zhc010YU0rTnJG?=
 =?utf-8?B?QlVoZ1hCN21oQTNiK3hFZkpQT0lNSjhhanRTZnZWSXEwZXUrSVkxMW4wU3Bi?=
 =?utf-8?B?c25iZVN4RERFa1grRlU1RHFqUzMzNG5ST2oxYjRNYWoyaEtaUVNqNllkY1Nu?=
 =?utf-8?B?ak4vQlgxVnlDcGEzN0ROdkxDdTBSOENrUll6bi9uRm9xMWRvWHdQWDQ1SGFa?=
 =?utf-8?B?OE55L1ZseUVDSDZJMHg0R0xPOU0rLzM3eVkzOXJNalNHVnFhNEFmRG04S2Z1?=
 =?utf-8?B?MEFaK01GQURhajhOb201L2VVbW9hQXJ0NGZrOGU3a0RHY2pCT2VqODE2RHFP?=
 =?utf-8?B?WWFoMnVSaFNkR2VOcXBqM2V1SktOaVlMQm11M1NENmlMbWZqNzhXdkhpWTB6?=
 =?utf-8?B?Z1ErTWdzUWFmZjRBdjMyZHNPeDdjdVpNTUltTEFpRllpYUhzSTZDbnEwdWlO?=
 =?utf-8?B?djh5azllZWFrcnptTldkTFl5YkhEeDZmckV1WC9TNlE1NHlINElyVE1VeDE4?=
 =?utf-8?B?amhYQUNxRlQva3N0MXJXalRwaGRCdEZmalRQcUZxWmJoTjVGL3NqYUUwZVZQ?=
 =?utf-8?B?c2JQcHMxcy90YXdWVXdVM2hocGxDMy9PNGcxM0ZkbWVibXBMVEMxdFBROTN1?=
 =?utf-8?B?bjVlTHJ6dkhMa25raHJlRk95ZEVLeDV3VkF2a2crSXN3aFp3T1hPaldrK2RQ?=
 =?utf-8?B?bktESFFSZWgrTXAvdEpvTmE3TlVGS1QzcWx4TXVTWG81MHd0bTArT0I4d3Vi?=
 =?utf-8?B?QXkwTU44RVM4a1l2b21pbHYvbkxTalp1MndKWmh5MG9HVWNDSEZtK3A0TFYy?=
 =?utf-8?B?WHd3aEZlRndYZ0c3aUdkd1o5cEhjbVRZNFFqNFVIZ3ZZb2RyeEwxQmU0L3lU?=
 =?utf-8?B?VExHdDJzanc4VEJOU3ZRRmRUL0VlWmFKWUR3eldPV0xYNS90RFBIVVc5dndW?=
 =?utf-8?B?YUJkMXJDOXFBZVVLS1V1VmwzeUtaZlUvUWdiTngyaVFQR3diQXd2M1lveXZU?=
 =?utf-8?B?dzZGREtnU0ZHZVNsR1R4Qk04cFZtQXJHTmVnd0kreVU2THVtemJTZTRtUGJW?=
 =?utf-8?B?dXBXeU1JY3E1aWNBNS83RDI1Um8rK2VTVUZOWW5wbzJzYkdXWUlxYWRMV0o0?=
 =?utf-8?B?a1hEb2h2dzhneDBxQVZYdU5idHRpc0htaSttYXk4QTkyWTZoeWpoM0Z5VUVl?=
 =?utf-8?B?bnVsTVFkZUtKb1VzME10dzBKUEtDeTJsOTRzQWtWeDR1c1FqL0FiVGRlWUJD?=
 =?utf-8?B?b0ptR3RHUC9ObGJzdG4yZFYrMWJZc05vNittelhjNXoySm11ZHVwMWN2bEhS?=
 =?utf-8?B?cDFJRXV4b1hIa25KV3hpK1NLL0doSW5VV1pneWVCVGJMbFBiQ1N3TTRsZ20z?=
 =?utf-8?B?YS9pdkY3RVZnPT0=?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(10070799003)(376014)(1800799024)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?OHh0djY5SHR1NUJtbitLOUJ3TGNIUjIwc0FGbytCNWhxb205eEw4SkVHbTFn?=
 =?utf-8?B?a2dYcnlaZnBqbWJvUGhzUGc0NzdhZU9ZaE1TVWQvMnp2aGdabFppWnpDU2VH?=
 =?utf-8?B?eG8vWmwzRDVQaTVuMHQxMFpNWUxzaytQQzBYenYvZWx2bmVOdkJWSkRpRHNU?=
 =?utf-8?B?QVBaNXBodEI0RzUrM09kNlZoQU95OW5UK0NxK3dLVWFSeDBIVjNFSzFmcEt3?=
 =?utf-8?B?SmxkVTJhZm53eDdQNi9jS0hhSkc1SDBVQS9CMitzaG5aVE42OHdGU1RINTNh?=
 =?utf-8?B?TTF6blRJb1RYZEMxeW1WbytCZDBYWUFXci9raURncHpZTE5kQitRY3FkcERW?=
 =?utf-8?B?eXB4L3ZIOHVXL0E3T1lScTZLNFlIYWIzTzRYa0xFWEVFKzJWbEpoblZlV2VM?=
 =?utf-8?B?U0NqdEo0dmFMS2RyQndlVHNTV3NhODNna0EvTXdsYStHQ0lROVhXbVp4UDg2?=
 =?utf-8?B?TWQ1aVJlSmdUcjNwNDJpQjNNWHh3bGFOalJFRTE3M2Q5M1paYTNFeVNwcEZK?=
 =?utf-8?B?OXdtYkxyenRFTmJMWDZrNGFoeTlXdVVJYnlMSWF0UWc4Tng1bkdRWnFuTlVY?=
 =?utf-8?B?N0JUd01jTFBWUm9yTFVRZ2I3SXpFNmg0cUpqY04zck5ZZHBGQmFCUDVjbU9j?=
 =?utf-8?B?TUhWSVY0WEZmaHpldk1VRWhzZGNZdFYyZ2VpbDh6eWxvMDhTc1loOTNSOHFI?=
 =?utf-8?B?cmgrY01uWlc2Q29ZVE80YVhMVmdKS2JsdUdNa0tySkdKdWcwUTA5b29WRUVh?=
 =?utf-8?B?SkFQcFZFdVdmOWxVVnlab2J4cmpBTnlMbnBVK2tCcnhzV1lFVytWN2t5NjA3?=
 =?utf-8?B?bjZiMTJyR0hSbURFTUNoREVvSzB2QVN1dnpNOXIyVFZVR2JhVmZEVkVzRlFU?=
 =?utf-8?B?b0I1UFNiMlBMQXBIWkJ1emcweTdKOElGYWsybkUzTlpiWG5YSDlyL3dtbjNv?=
 =?utf-8?B?aUJ1cFhEN2dqR3A3MVdVMzBiSG9CNjZIZ1FET092d21MNW9KbVo1b2FETFZj?=
 =?utf-8?B?b3FXQmI1OXdWbUUrTjNrYWFCQnZTRDllb0V4VVJQSHlQWUhEbWNJTC9KU1F6?=
 =?utf-8?B?aTdzSVN5L21ySzR1b09Hc2NaNDhBdWkwdEFCWnZYWXl4QnpEaEdXcUZRbFJs?=
 =?utf-8?B?V3V0aDNmK00yN1VNa3RDN2E0dzN6cGVodndPaUJETWM1MlgzMzFyY2dOVVJZ?=
 =?utf-8?B?VWEyU2lYOTJCZU9kYkNmTDRFUXdZMXB3aW1Ib1VhY2RTZWlYZU4vaHRSRS9o?=
 =?utf-8?B?OGt6a2dxNEZSK3o0Y1FiVkFCZFptQnlDaEJsTHduYi9uMy9BT3gxaytteTFF?=
 =?utf-8?B?YTB0am5sZHVnOGppaWtLSDRmd3NodkVQeUdQLytidEpENUdyRzFEaThBU1FJ?=
 =?utf-8?B?WTY4aVZTcGMxVE50YWdIYW5aLzFMcTU4anBUV1JvUGsrcC9WRlZNM1BVNEtw?=
 =?utf-8?B?NTgxY2tVS2NnRkU4SVMzSGU4ODhVS3BIdGM4YjBwY0JsN01VelhjMVlSYjBV?=
 =?utf-8?B?U1RtaXBNYmhFT2VHaXhZa082eXEzNzNycmliSkdESDkraWJwTjd6ZzJmbDVh?=
 =?utf-8?B?ZVkyaGxFMjRqL0Zod2JzM0puRU5qVUZCUGt0Y2t5ZSthOE40QlRQZXRmUStJ?=
 =?utf-8?B?cFBlZXFTWU4vQ1FYOWV3bVp4MXYzOGxyQzA3cHFudDM3UWxqN0V3aVJWcGdu?=
 =?utf-8?B?aWhHTG9vTzBiUUJ5bmd3UmVIZzBqL0tKanZ5QldrMzRjaFhCVXBWOGY0am8z?=
 =?utf-8?B?WjRHNFZJQlhNTXZqbTVDekZjYURPSTBXWGZ5d2pMWk01SzNPdldtNW9PRFNl?=
 =?utf-8?B?Z2loRzFpSnpoQWpzSFlsNWJ4Z0hFV3YrNmQ3N0l1OGk4eUlyS1JXQmxhdXhn?=
 =?utf-8?B?d1hxbVdKWVJRUVJsYXdjSEFMSkxKc0VMbjF0U1BxemVqZ3hSZDVwdFFGOHl0?=
 =?utf-8?B?MDlMZUgrL3RqS21Jekg3UHZPQjRKZjdOZE85cDFFcnRHYjkwRy85Mng2N21X?=
 =?utf-8?B?TE1UbXlFaFg0VW5OaThmSDQrdVlDSXYyWTY3VjQ2WVJDOWZuWFR2RzEvbHVm?=
 =?utf-8?B?WTViZTJmYWZ3ZUJaL3RhVFY1Zkl2L2kwRlY5RGxodDBiSHVTY3FqdjZrWGdH?=
 =?utf-8?B?dG1SZW5sWFkyMGs1QlpUcHc0U1dIdlMzbHFQczhTcjZUT0dDSTA0bldLZWVo?=
 =?utf-8?B?QWdsa2JXanB3WXZDVlE4WGxUaVpZNTQxWTRkcWdlVUFKVVJIdHVMTWVTVnMy?=
 =?utf-8?B?WFptcXFidWxDMndHUi9MdE1OelFRPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <EF124DCA5ED7B94B8D9C28862907FA6D@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 672f8aca-126e-4a99-c045-08ddd5ab59ac
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Aug 2025 12:10:07.6546 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: eBy2UMja901HXLk8beCIjmePAYuW2SEHKqXdRQOZI0HraDtE5wuopNgOfWNTM/3aps4qaotu9WGbRPtnhIlbQ/8XNPRO3mitknFgpZPI3xs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7282
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

T24gVGh1LCAyMDI1LTA4LTA3IGF0IDEwOjEzICswMzAwLCBKYW5pIE5pa3VsYSB3cm90ZToNCj4g
T24gVGh1LCAwNyBBdWcgMjAyNSwgSm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRl
bC5jb20+IHdyb3RlOg0KPiA+IFBhcnNlZCBkaXZpZGVyIHAgd2lsbCBvdmVyZmxvdyBhbmQgaXMg
Y29uc2lkZXJlZCBiZWluZyB2YWxpZCBpbg0KPiA+IGNhc2UNCj4gPiBwbGxfY3RsID09IDAuDQo+
ID4gDQo+ID4gRml4IHRoaXMgYnkgY2hlY2tpbmcgZGl2aWRlciBwIGJlZm9yZSBkZWNyZWFzaW5n
IGl0LiBBbHNvIHNtYWxsDQo+ID4gaW1wcm92ZW1lbnQNCj4gPiBpcyBtYWRlIGJ5IHVzaW5nIGZs
cygpIGluc3RlYWQgb2YgY3VzdG9tIGxvb3AuDQo+ID4gDQo+ID4gdjI6IHVzZSBmbHMoKSBhbmQg
Y2hlY2sgcGFyc2VkIGRpdmlkZXINCj4gPiANCj4gPiBTaWduZWQtb2ZmLWJ5OiBKb3VuaSBIw7Zn
YW5kZXIgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCj4gDQo+IFRoYW5rcywgSSB0aGluayBm
bHMoKSBpcyBjbGVhbmVyLg0KPiANCj4gUmV2aWV3ZWQtYnk6IEphbmkgTmlrdWxhIDxqYW5pLm5p
a3VsYUBpbnRlbC5jb20+DQoNClRoYW5rIHlvdSBKYW5pIGZvciB0aGUgcmV2aWV3LiBUaGlzIGlz
IG5vdyBwdXNoZWQgdG8gZHJtLWludGVsLW5leHQuDQoNCkJSLA0KDQpKb3VuaSBIw7ZnYW5kZXIN
Cg0KPiANCj4gDQo+ID4gLS0tDQo+ID4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L3Zs
dl9kc2lfcGxsLmMgfCA4ICsrKy0tLS0tDQo+ID4gwqAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRp
b25zKCspLCA1IGRlbGV0aW9ucygtKQ0KPiA+IA0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L3Zsdl9kc2lfcGxsLmMNCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvdmx2X2RzaV9wbGwuYw0KPiA+IGluZGV4IGI1MjQ2M2ZkZWM0Ny4uODNhZmUx
MzE1ZTk2IDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvdmx2
X2RzaV9wbGwuYw0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvdmx2X2Rz
aV9wbGwuYw0KPiA+IEBAIC0xNDIsMTEgKzE0Miw5IEBAIHN0YXRpYyBpbnQgdmx2X2RzaV9wY2xr
KHN0cnVjdCBpbnRlbF9lbmNvZGVyDQo+ID4gKmVuY29kZXIsDQo+ID4gwqAJcGxsX2RpdiAmPSBE
U0lfUExMX00xX0RJVl9NQVNLOw0KPiA+IMKgCXBsbF9kaXYgPSBwbGxfZGl2ID4+IERTSV9QTExf
TTFfRElWX1NISUZUOw0KPiA+IMKgDQo+ID4gLQl3aGlsZSAocGxsX2N0bCkgew0KPiA+IC0JCXBs
bF9jdGwgPSBwbGxfY3RsID4+IDE7DQo+ID4gLQkJcCsrOw0KPiA+IC0JfQ0KPiA+IC0JcC0tOw0K
PiA+ICsJcCA9IGZscyhwbGxfY3RsKTsNCj4gPiArCWlmIChwKQ0KPiA+ICsJCXAtLTsNCj4gPiDC
oA0KPiA+IMKgCWlmICghcCkgew0KPiA+IMKgCQlkcm1fZXJyKGRpc3BsYXktPmRybSwgIndyb25n
IFAxIGRpdmlzb3JcbiIpOw0KPiANCg0K
