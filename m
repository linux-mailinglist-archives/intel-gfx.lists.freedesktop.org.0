Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A0783A06EAA
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Jan 2025 08:08:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C9BA10ECF5;
	Thu,  9 Jan 2025 07:08:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="A10Z0Un6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CF7B810E450;
 Thu,  9 Jan 2025 07:08:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736406499; x=1767942499;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=AXO/XuGuTZdklMEbeRsbdTmoVjCkqRs768O1fiwp9q4=;
 b=A10Z0Un66b8zGc4CKvALH7NdsUmEDA79rEiJXY0bqAArfg6wRNyXuk0f
 0J13QfQkrSKci2WDhWXEqWxCJXgTya2+TT2T6O10NEn4vAJ2BSacaQa4f
 I6dntW9zxNsFxIqFXUc6g7lixn9xai0RNH25JE4FHeUytKi6GaBpe8Qog
 DXaecMHO8pdZcD3t8Qu/Cl/Y0WESGfa3wbpee2XjKslw/tvNh2A9DoifC
 CuU1bRcUEeV7Vea4h1JOsrl/bKSjS88cW7g+NR04/djJiK42Sf8OmF+PB
 5zsl8OD4s5UIbslv7FM/thMr24GuMthxUgre4UqLBgbfsWsdW+FZOPuNp w==;
X-CSE-ConnectionGUID: mMG6MVPTQzS+7pJu/lX//w==
X-CSE-MsgGUID: Q2FJi6h8Sci+Ffvi7wkaIQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11309"; a="54198474"
X-IronPort-AV: E=Sophos;i="6.12,300,1728975600"; d="scan'208";a="54198474"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2025 23:08:18 -0800
X-CSE-ConnectionGUID: HCBipcSSR6GqNVXgJPSRwA==
X-CSE-MsgGUID: Aesa512WTp+3mnJLC4iRlg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="104195211"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 Jan 2025 23:08:10 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Wed, 8 Jan 2025 23:07:57 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Wed, 8 Jan 2025 23:07:57 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.174)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 8 Jan 2025 23:07:56 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=CIevTolsVegmURZtLJdsHYYacBQwfBMEe0PhKD3FiYyii+NEAXd6J5gB1+SAg25IkmHKkwfP8BbIAotLcvlH6wQN+rZ/YLfEQhtOoEYnthE5SHda/hVboK+Yw03+k3Tr1aYELOQ8t3befmsxJjwNWYpDWa0FIY77Ug1w3XHwsT9jGHB5dXxOdKeBel1AJEG7rnYxC/wi8WKVj1NBoAbr7cud7WJfaj3mbFZ+h1tMXhDKP3HPoUZVxsZ43FRSL/biz+teY9ynS4j6IJZBNetbOro5guH1tDA/Y+Kk+igoFRlwLuOVEOEUPeExrLZUSsoL9QP+rJp16IafUuFyx4xX+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AXO/XuGuTZdklMEbeRsbdTmoVjCkqRs768O1fiwp9q4=;
 b=khFvCwUjWtS+7jYhCaOq+U4gavEhX+ZDWetL/bEN6BG7anS34wbxAGQLhr5LGVR783PpgXlc6uhNIAhyYydTbeUf62XCs3gzNQrbyZjUYBCBCzvpy44EBkVUr8oyCC9aptjMK27/AppAF9r9J8t2SFFKMzuHHZFCsQISsntfay0XJw5nV5P72//wWHY658wiGitJennUnoYNXBQj/xngd9zXGDu193KC1OY+Rw9h0T4ny7968XCZHQV5JiH0G0Ta5B6dBS0YjVws9ifPzSzaFH6Qa4A4pk9IzjimHMpsdF/GOIWe8kWIj2WzttTpEePP2V19HZKtFeuTVox3a9cvPA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 DM4PR11MB7206.namprd11.prod.outlook.com (2603:10b6:8:112::21) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8335.11; Thu, 9 Jan 2025 07:07:36 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%7]) with mapi id 15.20.8335.010; Thu, 9 Jan 2025
 07:07:36 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Sousa, 
 Gustavo" <gustavo.sousa@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 3/3] drm/i915/dmc_wl: Track pipe interrupt registers
Thread-Topic: [PATCH 3/3] drm/i915/dmc_wl: Track pipe interrupt registers
Thread-Index: AQHbXghCFSEUtTIxnEWBdP7uPsZrtrMODkCA
Date: Thu, 9 Jan 2025 07:07:36 +0000
Message-ID: <bec56e1d562bef2b8c16da3f4ba6a6479e5e7539.camel@intel.com>
References: <20250103174223.58140-1-gustavo.sousa@intel.com>
 <20250103174223.58140-4-gustavo.sousa@intel.com>
In-Reply-To: <20250103174223.58140-4-gustavo.sousa@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|DM4PR11MB7206:EE_
x-ms-office365-filtering-correlation-id: 759caa01-7ce8-4d5b-efbc-08dd307c4bf7
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|10070799003|1800799024|376014|366016|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?YXhFRkRzY2laZFhIVjVDYXlrMndwTUE5UXJHSnlWWkorRm9INFlSekdUN2dN?=
 =?utf-8?B?d1JSZitrek05c2dxa25aL2lqNkpLOVZlVHhvR2tBNzJDTkRrcHBoNXVFa2or?=
 =?utf-8?B?elFTMDZ2SWpuY0ZDdndFQlVOMk95UzgzQVlwZFBEM0lnWEY1cittMzh1QkZ4?=
 =?utf-8?B?bUY0OUY0am1yb1d6Qm1TU2xrVGwzenk1Z3dvc0ZQVllBaE1HbUQzM084QUtC?=
 =?utf-8?B?d0tyY09JandNOXMrQlMvTzd2Uko1cXdnL2VNOS9EZEkzckhQZWVhY1p5K1dE?=
 =?utf-8?B?ZlYrbGtZMU1HbXJaUnhueHR1VEFUamp6bUVuYWRHQ2piT1NsVElvVGNIeldy?=
 =?utf-8?B?Z3RrUlVOQVlmUDJMT0dBYzl1cTh2d0FidGpxM3pOT0pLWHV5MEYyaE1hbzlU?=
 =?utf-8?B?akpSTEY2RVFnU3l0b29JT2xNVlVBNWQ3Z0VtNFFvcTdHWkVtQkdheFE5Z3A3?=
 =?utf-8?B?ZmlBd2VINElKYURDMC9nSVVVakh4TkhISjlFWFpra21uUGc1RllMN0R0OHlV?=
 =?utf-8?B?NUI1VnVwNTk1MjNLeG1veWxaWFNaUDBmSmsySnBaT0dZTUpSOGIxWU82QTR0?=
 =?utf-8?B?NDBuRll6STJRdGQvM0RrYk9ncWhONkRlVnV5NXZSZmcweUZHUXJUS1B5ZStm?=
 =?utf-8?B?RW9ock9UeXlKOEtmeHp5WHJVdXd0MHZYbUY4Vkd1cHhHcVRZMzZCanZnQnV3?=
 =?utf-8?B?enhSZ0RWUjR5bWxlL2NyUWlOSHRyNWNLTEEvVkRNYUI3MTA2ckhOVVppRlZ5?=
 =?utf-8?B?Q2tIazJyU0g3ekl3aDBybHByKzRFWlJ6Qzl2cDhvTXFpdW9vc2JtMHJVYmhZ?=
 =?utf-8?B?elhsd2VQSTZkQXNGWEF6M1FhSEMvdWZaV0pZNEtWMXBSbGNMYjlDUU12bEpY?=
 =?utf-8?B?Z05OVk5HeW9kR0JjU3ErZ1R3K212dktOdUt2QmJHQXFnaXczcFZ1K2hxK3A0?=
 =?utf-8?B?NzNEcnBWdTBsZ1Q5N01pVmZHNkpDd3VxQko4VjJid1ZneUJPRVpDTWY2VEtq?=
 =?utf-8?B?VCsxTjRObFJkTzJlQnZFUlB5M212Z05sR2VXa29PYjZaeFdIYW5HY0xZWmF6?=
 =?utf-8?B?S2g2R3lKWmpSdEdkeUJpQ1QyTHFIUEpNdHRWRkZtSHR1Yk9UWUQxd2t1amp4?=
 =?utf-8?B?dk5lQzBDV3RrUTFYZ3MwaFBUZVRnVW5mUG50L1JNbm9jY1dnUTJvOStWWE1C?=
 =?utf-8?B?UWJtQlFQci9sWDU3S1gwOVFlaVowa3lqNFR4REFkSWE1alNRK1JtK1RrZjI1?=
 =?utf-8?B?bGpERkV5aVVQaGptUERCVXg4TnFjMnp4VU43RjU2THRxL3NEd096Qi9vN1p4?=
 =?utf-8?B?Wm5lTm81ZEo5d3puK0xqemN2YmVVRGNTU2luaUVjU3ZGVmhhYm56eWIzNjRT?=
 =?utf-8?B?czFHTDRnZC9IbVBma1paWGJOY1lrNUkwQXUyUzF3dmdnUk9yRnI1d2tzcTRW?=
 =?utf-8?B?eHQ1K2ZuVHRpVThCbVlqZWVJODZPUWpRSGwrWkZrWVRyUmFUM1NMakdpRVpQ?=
 =?utf-8?B?eWxBS3k5LzVEbXFUQStYRHJJSC9oQlRRZ0hlcllFQ0JsZTROcE9GekdlNzZD?=
 =?utf-8?B?KzdUTkd4Z2YyVlFKc1Z2eTk2eDVSODJ4UjN4bWJHMjdkNWpLeHZVbTlEbm9k?=
 =?utf-8?B?bWNPRTMwTmozSDdmYXdwYThpZ0wrY0pyTkE2SjVsTUNmcExOSDMxSnYzQTBm?=
 =?utf-8?B?eHkzbUs3QXdOeFNVR081K1ZFN285N21yQ3J6QW1KcnpIV3lhalIvSkZvZmcw?=
 =?utf-8?B?M2VyM0pyQ25YOHQ2ZTl4c25XcTZMNzlTQnhiUVUrem9kbjF1Q2pSN0N1NmN6?=
 =?utf-8?B?enRERVZQRXhTeVFIbmFHYkJGYkZLU0xRaWtDZ0Q4SHRxelc2aHRWZjdSY2ts?=
 =?utf-8?B?YmRwUlNxZEFBMktLTlRlMzM3bUlOQjlYVGJLV3luRkdKaDRvcmpjU2tueC8r?=
 =?utf-8?Q?SRIzbXefP6xRZbYyawmEbMXOwM0rKm9i?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(1800799024)(376014)(366016)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?OTFzV0wwM3ROZkNQNGNCUTZlTldBQXpMK1FNQUVIeEhWZGtxazNoK0dDR1ZD?=
 =?utf-8?B?aUE1SkhsTWMyYzkxU29FVVE4OCsxdHpWSmNOZGRvQ1M1ZmtOWXplK0d6UCtZ?=
 =?utf-8?B?MFowSisvNUJ3cDZkL1JncEQzc0h6SFlsbkJDbUc3RWNJZTlkTkpJV2dsN25O?=
 =?utf-8?B?WEZ0RkU0cnVuVDd5MFhRN2FCWUFsUmFsUkwrWG02dzJOYWYxNDFOaGh1eU8r?=
 =?utf-8?B?djZsK2FoTnBCeW5LSnBkZmV2d3kwZThHODdJb1AySFZlZFVob01LWXRGNXJJ?=
 =?utf-8?B?QUJ2MWZTMjZKbWg2RFlpY3VtRmVkTHc5cVljMVMreCtuMjZvNkNIVHlIak82?=
 =?utf-8?B?ZVZyeHhidnJaR0FuMyt6UnBQaTNtdk5JbXNVanVKREswWkZQRSs0NjZ6ZVJy?=
 =?utf-8?B?Q1ZDWm9tdFgvalN3U3ZzVCtKUmpNWVVpblZmcUlIYlBUTExOSWRtMUg0d1Ru?=
 =?utf-8?B?VDhWc2cwODU0SDFhN1dMTENlTHlha0xLWGh5cVdBNW83d1I3VGszbi9POHlq?=
 =?utf-8?B?N1hjVkpaV3VFdmRvdFZLT3ArYzN0enNxZ0xldzZobmkzZXR5a3lIMWhYVnJh?=
 =?utf-8?B?WmJucy9EcTBKSGtUU2pURnh1TVdFRVZiY1VtUFc5M1FaMnlkSXZmMllWMXpl?=
 =?utf-8?B?cVNHemwzWHU4NWxkdnEvandsUE04eGpHNWNpWGdWK2dDeWM0Y2NqNWNGaHVP?=
 =?utf-8?B?dU1wRG9DYXBvMGVsbmFXL0xuWGFMUExHSFdsTUhPSWxUQzN4TnF3YzQyTXFN?=
 =?utf-8?B?bUluVXN6YW9iNG1NaVFKZVFhaEJ1ZHB2MnZPOFZyVTFnaGF3bE54R1h2MXJr?=
 =?utf-8?B?WVVEVkJHdTJFL0duL0t0YTQwTVBhNDlOYlhkbU9mL0lKbzVrQi9Fenh5dWl3?=
 =?utf-8?B?VjVvZXF6T01KUENBSWJ2V0g4dWpvWFhndFlVUHF2VEwvaG5aU295d0xXVDJD?=
 =?utf-8?B?MUlTdGZNVmREUnZBdW41QUpBc1VNby9TbVRhUzRHUWcxdHRacXZPTHVVdW42?=
 =?utf-8?B?Qi9SeWRPb3NhaUFsU29adTZzUTVFUzJWT1ZGS3dTMHdKVEJ3MDQrc1dCaHJX?=
 =?utf-8?B?QXJaUUtPTFRkakcwd1hmOGJMWE9QZi9odUw3L0VVL0NGZGxjZHNkK2FTTGYx?=
 =?utf-8?B?bU1qUnFFSjU0NWVsbkFxbVFxYXM5WUlqdmJYbE1iWWtZNGthYU1MejRaeXB4?=
 =?utf-8?B?ZmYwYnlRS1RZR3MyeDJVem1LY1pRMFB0UmRvTzJjcm5zOGlqRi9oZExKcGJH?=
 =?utf-8?B?bXRzN0dxMnhzUVExVnkrcXlPTnFEZW1GMnhWUG5XQ1hLWTQvVi92eEhsZmpT?=
 =?utf-8?B?UXU4dXVXZDkzdG9QaVhDZG1oZkxqZ0tuNDdCWGFkK2NoQkJCVmNFZVVDdHNX?=
 =?utf-8?B?bHF3TFBqeGgvZE1jLzlTbjlZN01zTFMyTkt1dklPQzZDVkFjSk45dVZIMDhx?=
 =?utf-8?B?OE5ybXA1K3pRdXF6T0ZVbUROSUNPVVVGWHg0QUZ0L0h3VlJ6UGtiWnRhRWho?=
 =?utf-8?B?cHoxL2JIQ2paWmhINUsrT1B3L25uQ2hBNHZvY21OZHpHd2NpVFpLZUZ1M0tS?=
 =?utf-8?B?ekRjK1R0RzZBMlphcWVRMjh6WkpOMXlNbFAzN0EvQTRDTm5HdEFUem9GZ2Jz?=
 =?utf-8?B?N0UxbWozbnpPNU5FMHNnaCtTVzRWNFNsVGhJbzRCWVg3Tk5wMlkvS3pvQkVX?=
 =?utf-8?B?U2YzWW5naVdROUlhL2xoaFdENWNSVlpnMGlDUUVqOTlhRjlUaVR6eVJtditQ?=
 =?utf-8?B?K2JzYnRIZXlyekJNYjA0OVFFbnB5NDFRL1lISnJiZkZ6UGNIV1h2bGU4bnZ1?=
 =?utf-8?B?bGRLK3JIdHpMcmU1SStEYjFHbEtDZzRhbmF3ajJEYkdpNDkzUUNzNjNWSVJP?=
 =?utf-8?B?bVN1Rk5rWWI2c0plY1hRRmVLRjArYmhxNGZtWGpkU1JKRDRWM0U0MXk0TnZR?=
 =?utf-8?B?VTBQcjNsWTJUOEwyWkwwWXVCVzc3WkdibHhNZ1ViWk9udFlMWEk4NDN5Zmts?=
 =?utf-8?B?Z3lINzRWRHhCRlp1cEV1QnRPQzNDZEpGSzBUZUNRV293QjVhSGVNcnpndGZk?=
 =?utf-8?B?VFUydERPODFRci9KT0VtMzJGM0xwM2hYOWlhRHhtb3VQY1BEQjVjNHBpYXZQ?=
 =?utf-8?B?b0FjaGFZc2N6eUxMT243ZThrL2R5OXBxZm5DTWVnR282NmxlMWxVanFzWjNX?=
 =?utf-8?B?NjMyRlVyWTJvZVliK2NwcHJ3UVN1MnhUVlhMTU9KeXZ6MHpwUFQ0cWFqL0VK?=
 =?utf-8?B?YW5rUFh2N28raHFhcXp6ME5PVERnPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <CC8DDE240747C94BB3D1A96E7A34518D@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 759caa01-7ce8-4d5b-efbc-08dd307c4bf7
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Jan 2025 07:07:36.5022 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: sHbAvJMYnK+IOaF7yR2w9ABKofa3JKlxKYIxpZpF7ixfM9VNjF8G4TH5cQ5nqd12o/hC7W34k+2Ibv9rT6UugZ2tDM2r4ze+XTkzX5jPtUo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB7206
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

T24gRnJpLCAyMDI1LTAxLTAzIGF0IDE0OjQxIC0wMzAwLCBHdXN0YXZvIFNvdXNhIHdyb3RlOg0K
PiBQaXBlIGludGVycnVwdCByZWdpc3RlcnMgbGl2ZSBpbiB0aGVpciByZXNwZWN0aXZlIHBpcGVz
JyBwb3dlciB3ZWxscywNCj4gd2hpY2ggYXJlIGJlbG93IFBHMC4gVGhhdCBtZWFucyB0aGF0IHRo
ZXkgbXVzdCBhbHNvIGJlIHRyYWNrZWQgYXMNCj4gcmVnaXN0ZXJzIHRoYXQgYXJlIHBvd2VyZWQt
b2ZmIGR1cmluZyBkeW5hbWljIERDIHN0YXRlcy4NCj4gDQo+IFRoZXJlIGFyZSBwcm9iYWJseSBt
b3JlIHJhbmdlcyB0aGF0IHdlIG5lZWQgdG8gdHJhY2sgZG93biBhbmQgYWRkIHRvDQo+IHRoZQ0K
PiBwb3dlcmVkX29mZl9yYW5nZXMuIEhvd2V2ZXIsIGxldCdzIG1ha2UgdGhpcyBjaGFuZ2Ugb25s
eSBhYm91dCBwaXBlDQo+IGludGVycnVwdCByZWdpc3RlcnMgdG8gZml4IHNvbWUgdmJsYW5rIHRp
bWVvdXRzIG9ic2VydmVkIGR1ZSB0byB0aGUNCj4gRE1DDQo+IHdha2Vsb2NrIG5vdCBiZWluZyB0
YWtlbiBmb3IgdGhvc2UgcmVnaXN0ZXJzLg0KPiANCj4gSW4gdGhlIGZ1dHVyZSwgd2UgbWlnaHQg
d2FudCB0byByZXBsYWNlIHBvd2VyZWRfb2ZmX3JhbmdlcyB3aXRoIGEgbmV3DQo+IHRhYmxlIHRv
IHJlcHJlc2VudCByZWdpc3RlcnMgaW4gUEcwLCB3aGljaCBzaG91bGQgYmUgcHJvYmFibHkgZWFz
aWVyDQo+IHRvDQo+IG1haW50YWluLiBBbnkgcmVnaXN0ZXIgbm90IGJlbG9uZ2luZyB0byB0aGF0
IHRhYmxlIHNob3VsZCBiZQ0KPiBjb25zaWRlcmVkDQo+IHBvd2VyZWQgb2ZmIGR1cmluZyBkeW5h
bWljIERDIHN0YXRlcyBhbmQsIGFzIHN1Y2gsIHJlcXVpcmluZyB0aGUgRE1DDQo+IHdha2Vsb2Nr
IGZvciBhY2Nlc3MuDQo+IA0KPiBCc3BlYzogNzI1MTksIDcxNTgzDQo+IFNpZ25lZC1vZmYtYnk6
IEd1c3Rhdm8gU291c2EgPGd1c3Rhdm8uc291c2FAaW50ZWwuY29tPg0KDQpSZXZpZXdlZC1ieTog
Sm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQoNCj4gLS0tDQo+IMKg
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kbWNfd2wuYyB8IDEgKw0KPiDCoDEg
ZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZG1jX3dsLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2RtY193bC5jDQo+IGluZGV4IDAyZGUzYWUxNTA3NC4uOTg1YWE5
Njg2OTJlIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2RtY193bC5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZG1j
X3dsLmMNCj4gQEAgLTU2LDYgKzU2LDcgQEAgc3RydWN0IGludGVsX2RtY193bF9yYW5nZSB7DQo+
IMKgfTsNCj4gwqANCj4gwqBzdGF0aWMgY29uc3Qgc3RydWN0IGludGVsX2RtY193bF9yYW5nZSBw
b3dlcmVkX29mZl9yYW5nZXNbXSA9IHsNCj4gKwl7IC5zdGFydCA9IDB4NDQ0MDAsIC5lbmQgPSAw
eDQ0NDdmIH0sIC8qIFBJUEUgaW50ZXJydXB0DQo+IHJlZ2lzdGVycyAqLw0KPiDCoAl7IC5zdGFy
dCA9IDB4NjAwMDAsIC5lbmQgPSAweDdmZmZmIH0sDQo+IMKgCXt9LA0KPiDCoH07DQoNCg==
