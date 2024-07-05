Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E716928C05
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Jul 2024 17:58:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1214E10E25C;
	Fri,  5 Jul 2024 15:58:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PYwxuqQK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BFD8C10E25C
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Jul 2024 15:58:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720195124; x=1751731124;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=M32u/ffZN15bJ0jiKobZpEerhyJpy0BltC7LHiT+LIY=;
 b=PYwxuqQKrHXbOsmp/GhKhFvO//S/EfRg7Vie+7uuTIEPMl1QjRn8rhXK
 ftglo6sj/gwPh1TQ5pqgmO/giKknIlhGWlWSPWlFoFCU9vPaKlcfMBfIC
 KGzV8q8UgVMXwh8zMUh8RKjKHc9Sa9GJEeXOtkCLV4N0yFwwM42zUji8Y
 Bb0rJwg5+9raS0RpazK0IDq8s67rG+UU+capl9DImJuaxo5ceEjSDBl61
 YyyW6nJ/FXOy3591CZQDwtsPb9/SWfqac7z8noY5tax7QITB/S39rZv6b
 coORK28haw1fuGH7kN/TdWJyuaupFmn8KiBw3HcCV6FiVZqnyJMp5YH0Y Q==;
X-CSE-ConnectionGUID: FGBd7f7wSLySZtiJgH+Iyg==
X-CSE-MsgGUID: fi/QqPGkS86bTsQhzIpkxA==
X-IronPort-AV: E=McAfee;i="6700,10204,11123"; a="28106161"
X-IronPort-AV: E=Sophos;i="6.09,185,1716274800"; d="scan'208";a="28106161"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jul 2024 08:58:43 -0700
X-CSE-ConnectionGUID: olxsCzGZQEimMgvxQ6xMsQ==
X-CSE-MsgGUID: 5iwCSDmvT22P9dLqikKitg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,185,1716274800"; d="scan'208";a="46879413"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 05 Jul 2024 08:58:43 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 5 Jul 2024 08:58:41 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 5 Jul 2024 08:58:40 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 5 Jul 2024 08:58:40 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 5 Jul 2024 08:58:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mvIj1Q8NkY353x9ghLXyxvURw25onSK4z2NiffyAd+lJCa8N127vjXg+ZU1MweXyjh6D4QLRDV3u++wpD4Hhc8qaV+4sw0sqI59F7FH3mVChuNKokngUzGrTwTushYkLNUET8bNKEtOuHW9SQT65d2wJ/l3vPCrSJAzyBHWFdQZXXSHxpZdUauwepXB1S0LrZ5qcxpg5tWdFRslBJhetQhvGjoSyvEmekmfhHkUlQSOaIyrRBXXQqYKANE3e/KRHXenmzyhWyA/AmwDDdXlVhmthqwDqMGn8gClhoo8+Mkj3Vul9kzR2HTR2Uau0DeaRw1tKYOdr4IbmVSND2ReDZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=M32u/ffZN15bJ0jiKobZpEerhyJpy0BltC7LHiT+LIY=;
 b=PfF9uyFn7S4yuq7zgWBaC0SIlr4m1QDjykO53oeWM25kiUwgLUMk1l31dIMxHY4p4797UhDW97jddsLXZn05MKpYwZavB3HG+fPXAHL4N3jTeYWreup9v146+dJQ0lW0gA8w2tnjHjxpw88HQ4+oOFdcwnr0VbuSd20FYUmwTgNaonKAha1F9P8gud0A1WCNjV2V+0ThkEdgDkc06+jWbgBrn5bLyNhAPl8s98bZP/ak54+AXF8x+MAzhwN5FpPZ0OpJclvMPjUCPAzY7Av4tXw3Ini6XBvkFoqTRmd4GDoG/C9vSwUHNnm/p7zp+IxQGfqrx7Gx9QhFXFd379imbg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by CY8PR11MB7084.namprd11.prod.outlook.com (2603:10b6:930:50::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7698.31; Fri, 5 Jul
 2024 15:58:32 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0%4]) with mapi id 15.20.7741.017; Fri, 5 Jul 2024
 15:58:32 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH 11/14] drm/i915/dsb: Allow intel_dsb_chain() to use
 DSB_WAIT_FOR_VBLANK
Thread-Topic: [PATCH 11/14] drm/i915/dsb: Allow intel_dsb_chain() to use
 DSB_WAIT_FOR_VBLANK
Thread-Index: AQHaxmpTP7/zlQICe06J0ru5SG7sK7HoWTSw
Date: Fri, 5 Jul 2024 15:58:32 +0000
Message-ID: <PH7PR11MB59817808A0D51050365D665FF9DF2@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20240624191032.27333-1-ville.syrjala@linux.intel.com>
 <20240624191032.27333-12-ville.syrjala@linux.intel.com>
In-Reply-To: <20240624191032.27333-12-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|CY8PR11MB7084:EE_
x-ms-office365-filtering-correlation-id: 89518ad4-59d6-49db-18de-08dc9d0b5211
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?MXZTVHFtZExOMHJWOHVmcTBCM3J0NjMwVzBJZkNETDVzVmt3YUFQb1BMOW5Z?=
 =?utf-8?B?bHhFdlc2VkpRaWloeFdIYjdBcHJGbkJPTHE3Wlk0M0x6eU02enE3bmo0bkhH?=
 =?utf-8?B?QzVLWWFxWXF2K1dpU1RLbTlKSWZOMnB3OTdobUp5VklLdHo3c2tJdDMxbmND?=
 =?utf-8?B?NEVoTXFOWnFNZG9GTkdLNWwvZlN1NExuQk83dW92UmtLSk5rQVJBcGZWL3Vz?=
 =?utf-8?B?d2FBak0wRE1yVmRhVzQyall5NngrQlRTVGsrRlhLT3FzZVpTczBRVHRqNHFE?=
 =?utf-8?B?ajVBMUN2NWE5UmlrT3JYY3p4dDlKSWg1bGkrWHRlWlNwNDBTNnVHOFJ1c1N4?=
 =?utf-8?B?SndVYzArZE5pUHlLZDd0Yk9JT3ZaMlAvY2VXSFF3S2RoWWNQNUZiWmNIeUJw?=
 =?utf-8?B?YkJUVFhYU1FONC9USGhPc05EcmVobUozUW9QYitiMEVHZGtiWjBzYW5kc2x0?=
 =?utf-8?B?OEhvTUo4aWpWM2E3V1VpdldSUVdWSXpQZHdLS2lTRmJJQ2p3TXFqTmcvaXJP?=
 =?utf-8?B?TjNNMWVVQ29RazVHQ0U3empsbW11WjVhRWVyUm5nNUNjazNpaEo5MzV1elFM?=
 =?utf-8?B?b2hXNHhsd2M2b0p5elM4SmV0TkdLSkVpYW5CN2ZZOGJ4eldCbHlEZ2xaejZa?=
 =?utf-8?B?djVPcVBKVmIyR0pDZUZMMEFIYjl1dlJyU256bVFMaFNIOWJyME9WNnhKd2x0?=
 =?utf-8?B?V05pNUM3VjFjZE5rM1VETFdiRDJ4YldnSlVZZjl2dUhQM0Z4UWNBNmloWldQ?=
 =?utf-8?B?dzQ1bzlId1BUQ0xSMEhXOUdKeUpTY0pKcFRLSFFxaWpZMmtGd0JnQW1GK0xa?=
 =?utf-8?B?Q3pOTHJDcFRBUU12dXBVVHhKUy9LQjJsQ1g0Y1Nwa0hGSXhaemJYOEtCbkFN?=
 =?utf-8?B?QjFlYm9NNXdENVEvbTNNUVRrT0V5d3RZcWM1QVdBZU51UWlwQWJZUE9BTzNG?=
 =?utf-8?B?KzJqNWQ0eG4vM2VmQzVvYmhGZ3ZGSTdCMlFPQ2ljTXVEVkRJbnZFRloyQzRK?=
 =?utf-8?B?dXlacWpkUjBPN1ZVM1VvclBzd1B6VmNhdVFQeWl5blBIaFRMd0lFMTAvRGFV?=
 =?utf-8?B?dTFoKzFBZGZVRzZnbzBXODJoaHBSZVdJVWtkSXZGRDNLbk56YjBxK2hxdjNt?=
 =?utf-8?B?TldzT3pXL2tOc3dqOGlNd1dTNmxYNS9IZFJIVThBL1ptMWU2bWtseTNWZWc0?=
 =?utf-8?B?M3hLallja3dTSi9tR2xxYjgvVCtFSWlyZDJrcTJpUFBseDdaYmNyUnVIc2hT?=
 =?utf-8?B?SkdudWl0bEp0TjN2YnBLLy9UY1U5a0VacWN2WFdSK1VadFZ6SC9XK080WFlG?=
 =?utf-8?B?VkZjSDRkaTlBZmJsbjZPTkltOW1uZnBtYi9nT0hXWW9sUXpzMGw4aGZwTDgy?=
 =?utf-8?B?aDRHUHI3aWpVV1JuMmVuaUh5bG5YdGI2MWVvZ2NiU3hyVHJWbjI0anZpeE55?=
 =?utf-8?B?RVlveVNPQWR1bjZLYnFrZDZXQmgvMisxNnlqQWRLUUMxTG5WTUNobkFBRSto?=
 =?utf-8?B?Rk9sM3N1QTFFSFNQbUoraWNzdy9jRWJiZ0N1U0Z1U0NOWTZlV3dXL2lzcmFi?=
 =?utf-8?B?Y1BrUUVNYjN1MmJaT3FZSWNoQjlSV05FTzdpaE9vTlVXNnVYSCtKWlJsbE5X?=
 =?utf-8?B?WlZhM3JqZ21BdmFlYWxMVFdHbjJkY01leDJTd0M3STY1eWtncDgrNzBCbGFz?=
 =?utf-8?B?dDdId3Vjb2hEZlJoNTgwei9nblk1b216Y3NwenpUTHQ4UWYyc25nUnFQZXBx?=
 =?utf-8?B?aGlnNEFsRmx4OTcvRzZBcGliSkFxS2tEc1podFRnbFlvN0t3UjNBQSthZDd1?=
 =?utf-8?B?NnJlNE4zY3pIcXJ5RGMvNU9pUFBvZDNONjN6VGtzRDgzQkIycDZiMzRNVkZ2?=
 =?utf-8?B?TWE5WDh6amtrUEd0MVA1ZFlyNk43bkhaZXNlQWs2cVhmdmc9PQ==?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ZjdDeXI0Zjc4TTQvWXU5QWxITkxwZ3RLaHE3R25DdTdrUmlQaDZ2T2pNV29C?=
 =?utf-8?B?eDcyYzYyTGRYeWVjQXJNVERnNTA2R1pCSW9ZN1dxcHBGQ0x5MWZaSUI1aUdh?=
 =?utf-8?B?Ni9WR012cmc2UXZRWHkzTGg2REVlaVVDbjczQldORGx6d1RoSlRkQmhZczlx?=
 =?utf-8?B?UFBZSHNIbnlkRVFjQ0RHZFM3MDF3Rms2QlNtbWUva3AyT1I4YjFqc3VNUlZM?=
 =?utf-8?B?YW5KYXNtbWZoS0Vyc21nc1lJQ20xWjZ1QWxMVzdsd0VFMWhsQ2ZVemtxYUhM?=
 =?utf-8?B?RXJUSHZFLzJmczBrTDdja3VQSFp4U3RtMmc1SzRKUTV2VVBqUTNCZlZiaVZW?=
 =?utf-8?B?SVBabm5NamJJTnVlMXRVWXp2eHBsUVUvZTNveFdUM0tXcmFFbVF0REMxd0Zv?=
 =?utf-8?B?a2xYMjFTa2dFaElHVkZiN1YwMjZqS3V5VTRxcEgya1JSWG0zbFpxK0IveDR5?=
 =?utf-8?B?bnJwVkdPS3JyTktYYTBoWUJEclUxNWY4d2RJelV1am1LTE1XV21wK0h0Q3JD?=
 =?utf-8?B?VldnQkN1dHB0ajVySUdYUHRsZCtXaXdSaWxaZTZXakR3bUR0VXJITDdwSkxD?=
 =?utf-8?B?QXZ5S0ZtakRhL0ZaaDZUTjduRFgzMU9KeFc5Z2VxRVpMcGIvaU9RTHNNdDFQ?=
 =?utf-8?B?Z0dhVjcrZ2h3blJ3aC9JY2RVZk9PWFpvSWRZZU42SDNsVE9CcE1tWjRjMXdH?=
 =?utf-8?B?ajhlaDlVU3Q0Y0ZLWi93ZGNZU0hPY0xDUEFYdnRvWDZHVHBKQTJ0Um1JRHBN?=
 =?utf-8?B?TlZxTUlQeUV1a0pleGU2WlkwbHVDS3QvSFFSbWNNRkNhYnVxaFd0UnhFV1Zv?=
 =?utf-8?B?enliYk5DOTFENTJHWVhUTFVJMk5LOVhubHMzK0haeHlCenEyYURaUS9oNkhp?=
 =?utf-8?B?b2Z5WnR1NmtsL3NUTm92eTZqN0VaanczejkzVmRIRTZ1YnBQajlYNk56OUxW?=
 =?utf-8?B?bjRaOFRkczVMT2Q0K2srYmJtcmpTdUhPTDBSc0NkRlNuSzIvRUVDdWZidGU3?=
 =?utf-8?B?MHpFWDBGdWd0OEVXRFZ3a0xwTFJkM2toRzY3emc0b0tRa1JXMFNJUDR0aGpo?=
 =?utf-8?B?OWZ4cTN1ZmpvNk8xRGdKSStML1NQZzd2MmNhM2pML05aOEptMzRkZFQya3hM?=
 =?utf-8?B?TmhpSkpVZmNIeVk0M0dLWm1tcVdNVHJacDIvOHgzbUd6aWpBa2ZZTFRacUg1?=
 =?utf-8?B?UDBtZGxKanVJK0c4TDFKWXNZTmQvV3N1YlBMUncyMGdPb2FJdkFnZ2dPQnM4?=
 =?utf-8?B?TmJXOGlZc0x6UUV3QXc0MTI1L3ViQWRlMGZSam1DRmw4aTF6RFhZU1VPRTU2?=
 =?utf-8?B?VDdkNDE5V3JHb1dtVEUzOSsvYS9penNvemNXNTJ5bFFXSEpvSEw3eS9semFX?=
 =?utf-8?B?Qm42VmpsbytBaVYyVklLT0hUekM5N1Rqczh1SmVXZFRNSTJYZUJ6UVBzWERL?=
 =?utf-8?B?SW5yUmdSTUFTZVJnQWVSRkxOR0h4dXNYMUVieUlFV1R1bElmL0VQRXRNNXQz?=
 =?utf-8?B?QmJLeE9SODVKRTI2dUxOQWU5ZUpDSXQwWTVKd2F4anM0dWVucjVMUmxTRXJT?=
 =?utf-8?B?RGpLaGZWTGdGZWZSTFhocFBONi9WZWNKaVRVQ3pLeVl6bTNQRkthOGZzVFJV?=
 =?utf-8?B?bWpHcEV5bSttclhEcWgwcFhDTnNPQXRiRUxnTVFTMFFCRGVRVmNFVHZxS2pK?=
 =?utf-8?B?QkRONmszTGZwOHJPbGVPMXR5SzVHZ3daSjhJVU1JZXAxcXpkM0IwTlhISXZ3?=
 =?utf-8?B?Rjl6ZGlrT1pRb0RxTFlpTVFVWGF6MUV0QXRQS29tdVVnU1hYVjZBbHNpL1kx?=
 =?utf-8?B?ZGRnSVZXV2grdjlFbVh3b1BsZ0ZmUmRnczFxRVl3N0p6aVAyMGw5ZmROMXkx?=
 =?utf-8?B?bEd4V0FjZmZuTURjQ0hKeURpcWZvamdhRWdtRWVkNjRabzRBeEt3RHZhaEZE?=
 =?utf-8?B?OGVwVStXYkFXZEFubzF5TDJySU53dWxPSHlCYVBwU0RuTGI1K3pwS0k1M1dq?=
 =?utf-8?B?TnFVU2NNd1RBZ0ZnTDV4NHZoS2ZCY1RmeEs0TjJBd3FraklWbS94L2Y3blFZ?=
 =?utf-8?B?emo2QTRCRHZ6bEFLaklHVktmVlJNS1grR2FMSGx2YStrbXdzZkhzdDFaM1Vu?=
 =?utf-8?Q?OI/+A1ogy9zxoIVyBxnwV4TIT?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 89518ad4-59d6-49db-18de-08dc9d0b5211
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Jul 2024 15:58:32.6291 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vuu2cTztDbqtGmkbo8rb0zapwxtsDg7sjUU3+Vrc6tRnNEqK/0wPCMIOM9GqtdTgaoGIlYt3a9e1RX5azGSb1A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7084
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtZ2Z4IDxpbnRl
bC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBWaWxsZQ0K
PiBTeXJqYWxhDQo+IFNlbnQ6IFR1ZXNkYXksIEp1bmUgMjUsIDIwMjQgMTI6NDAgQU0NCj4gVG86
IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gU3ViamVjdDogW1BBVENIIDExLzE0
XSBkcm0vaTkxNS9kc2I6IEFsbG93IGludGVsX2RzYl9jaGFpbigpIHRvIHVzZQ0KPiBEU0JfV0FJ
VF9GT1JfVkJMQU5LDQo+IA0KPiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFA
bGludXguaW50ZWwuY29tPg0KPiANCj4gQWxsb3cgaW50ZWxfZHNiX2NoYWluKCkgdG8gc3RhcnQg
dGhlIGNoYWluZWQgRFNCDQo+IGF0IHN0YXJ0IG9mIHRoZSB1bmRlbGF5ZSB2YmxhbmsuIFRoaXMg
aXMgc2xpZ2h0bHkNCj4gbW9yZSBpbnZvbHZlZCB0aGFuIHNpbXBseSBzZXR0aW5nIHRoZSBiaXQg
YXMgd2UNCj4gbXVzdCB1c2UgdGhlIERFd2FrZSBtZWNoYW5pc20gdG8gZWxpbWluYXRlIHBrZ0MN
Cj4gbGF0ZW5jeS4NCj4gDQo+IEFuZCBEU0JfRU5BQkxFX0RFV0FLRSBpdHNlbGYgaXMgcHJvYmxl
bWF0aWMgaW4gdGhhdA0KPiBpdCBhbGxvd3MgdXMgdG8gY29uZmlndXJlIGp1c3QgYSBzaW5nbGUg
c2NhbmxpbmUsDQo+IGFuZCBpZiB0aGUgY3VycmVudCBzY2FubGluZSBpcyBhbHJlYWR5IHBhc3Qg
dGhhdA0KPiBEU0JfRU5BQkxFX0RFV0FLRSB3b24ndCBkbyBhbnl0aGluZywgcmVuZGVyaW5nIHRo
ZQ0KPiB3aG9sZSB0aGluZyBtb290Lg0KPiANCj4gVGhlIGN1cnJlbnQgd29ya2Fyb3VuZCBpbnZv
bHZlcyBjaGVja2luZyB0aGUgcGlwZSdzIGN1cnJlbnQNCj4gc2NhbmxpbmUgd2l0aCB0aGUgQ1BV
LCBhbmQgaWYgaXQgbG9va3MgbGlrZSB3ZSdyZSBhYm91dCB0bw0KPiBtaXNzIHRoZSBjb25maWd1
cmVkIERFd2FrZSBzY2FubGluZSB3ZSBzZXQgRFNCX0ZPUkNFX0RFV0FLRQ0KPiB0byBpbW1lZGlh
dGVseSBhc3NlcnQgREV3YWtlLiBUaGlzIGlzIHNvbWV3aGF0IHJhY3kgc2luY2UgdGhlDQo+IGhh
cmR3YXJlIGlzIG1ha2luZyBwcm9ncmVzcyBhbGwgdGhlIHdoaWxlIHdlJ3JlIGNoZWNraW5nIGl0
IG9uDQo+IHRoZSBDUFUuDQo+IA0KPiBXZSBjYW4gbWFrZSB0aGluZ3MgbGVzcyByYWN5IGJ5IGNo
YWluaW5nIHR3byBEU0JzIGFuZCBoYW5kbGluZw0KPiB0aGUgRFNCX0ZPUkNFX0RFV0FLRSBzdHVm
ZiBlbnRpcmVseSB3aXRob3V0IENQVSBpbnZvbHZlbWVudDoNCj4gMS4gQ1BVIHN0YXJ0cyB0aGUg
Zmlyc3QgRFNCIGltbWVkaWF0ZWx5DQo+IDIuIEZpcnN0IERTQiBjb25maWd1cmVzIHRoZSBzZWNv
bmQgRFNCLCBpbmNsdWRpbmcgaXRzIGRld2FrZV9zY2FubGluZQ0KPiAzLiBGaXJzdCBEU0Igc3Rh
cnRzIHRoZSBzZWNvbmQgdy8gRFNCX1dBSVRfRk9SX1ZCTEFOSw0KPiA0LiBGaXJzdCBEU0IgYXNz
ZXJ0cyBEU0JfRk9SQ0VfREVXQUtFDQo+IDUuIEZpcnN0IERTQiB3YWl0cyB1bnRpbCB3ZSdyZSBv
dXRzaWRlIHRoZSBkZXdha2Vfc2NhbmxpbmUtdmJsYW5rX3N0YXJ0DQo+ICAgIHdpbmRvdw0KPiA2
LiBGaXJzdCBEU0IgZGVhc3NlcnRzIERTQl9GT1JDRV9ERVdBS0UNCj4gDQo+IFRoYXQgd2lsbCBn
dWFyYW50ZWUgdGhhdCB0aGUgd2UgYXJlIGZ1bGx5IGF3YWtlIHdoZW4gdGhlIHNlY29uZA0KPiBE
U0Igc3RhcnRzIHRvIGFjdHVhbGx5IGV4ZWN1dGUuDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBWaWxs
ZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiAtLS0NCj4gIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmMgfCA0MyArKysrKysrKysrKysr
KysrKysrKystLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmgg
fCAgMyArLQ0KPiAgMiBmaWxlcyBjaGFuZ2VkLCA0MCBpbnNlcnRpb25zKCspLCA2IGRlbGV0aW9u
cygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZHNiLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzYi5jDQo+
IGluZGV4IDRjMDUxOWM0MWYxNi4uY2Y3MTBmMGJmNDMwIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzYi5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmMNCj4gQEAgLTEzMCw4ICsxMzAsOCBAQCBzdGF0aWMg
aW50IGRzYl92dG90YWwoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsDQo+ICAJCXJl
dHVybiBpbnRlbF9tb2RlX3Z0b3RhbCgmY3J0Y19zdGF0ZS0+aHcuYWRqdXN0ZWRfbW9kZSk7DQo+
ICB9DQo+IA0KPiAtc3RhdGljIGludCBkc2JfZGV3YWtlX3NjYW5saW5lKHN0cnVjdCBpbnRlbF9h
dG9taWNfc3RhdGUgKnN0YXRlLA0KPiAtCQkJICAgICAgIHN0cnVjdCBpbnRlbF9jcnRjICpjcnRj
KQ0KPiArc3RhdGljIGludCBkc2JfZGV3YWtlX3NjYW5saW5lX3N0YXJ0KHN0cnVjdCBpbnRlbF9h
dG9taWNfc3RhdGUgKnN0YXRlLA0KPiArCQkJCSAgICAgc3RydWN0IGludGVsX2NydGMgKmNydGMp
DQo+ICB7DQo+ICAJY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUgPQ0K
PiBwcmVfY29tbWl0X2NydGNfc3RhdGUoc3RhdGUsIGNydGMpOw0KPiAgCXN0cnVjdCBkcm1faTkx
NV9wcml2YXRlICppOTE1ID0gdG9faTkxNShzdGF0ZS0+YmFzZS5kZXYpOw0KPiBAQCAtMTQxLDYg
KzE0MSwxNCBAQCBzdGF0aWMgaW50IGRzYl9kZXdha2Vfc2NhbmxpbmUoc3RydWN0DQo+IGludGVs
X2F0b21pY19zdGF0ZSAqc3RhdGUsDQo+ICAJCWludGVsX3VzZWNzX3RvX3NjYW5saW5lcygmY3J0
Y19zdGF0ZS0+aHcuYWRqdXN0ZWRfbW9kZSwNCj4gbGF0ZW5jeSk7DQo+ICB9DQo+IA0KPiArc3Rh
dGljIGludCBkc2JfZGV3YWtlX3NjYW5saW5lX2VuZChzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRl
ICpzdGF0ZSwNCj4gKwkJCQkgICBzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YykNCj4gK3sNCj4gKwlj
b25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSA9DQo+IHByZV9jb21taXRf
Y3J0Y19zdGF0ZShzdGF0ZSwgY3J0Yyk7DQo+ICsNCj4gKwlyZXR1cm4gaW50ZWxfbW9kZV92ZGlz
cGxheSgmY3J0Y19zdGF0ZS0+aHcuYWRqdXN0ZWRfbW9kZSk7DQo+ICt9DQo+ICsNCj4gIHN0YXRp
YyBpbnQgZHNiX3NjYW5saW5lX3RvX2h3KHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRl
LA0KPiAgCQkJICAgICAgc3RydWN0IGludGVsX2NydGMgKmNydGMsIGludCBzY2FubGluZSkNCj4g
IHsNCj4gQEAgLTUyOSwxOSArNTM3LDQ0IEBAIHN0YXRpYyB2b2lkIF9pbnRlbF9kc2JfY2hhaW4o
c3RydWN0DQo+IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsDQo+ICAJCQkgICAgZHNiX2Vycm9y
X2ludF9zdGF0dXMoZGlzcGxheSkgfA0KPiBEU0JfUFJPR19JTlRfU1RBVFVTIHwNCj4gIAkJCSAg
ICBkc2JfZXJyb3JfaW50X2VuKGRpc3BsYXkpKTsNCj4gDQo+ICsJaWYgKGN0cmwgJiBEU0JfV0FJ
VF9GT1JfVkJMQU5LKSB7DQo+ICsJCWludCBkZXdha2Vfc2NhbmxpbmUgPSBkc2JfZGV3YWtlX3Nj
YW5saW5lX3N0YXJ0KHN0YXRlLA0KPiBjcnRjKTsNCj4gKwkJaW50IGh3X2Rld2FrZV9zY2FubGlu
ZSA9IGRzYl9zY2FubGluZV90b19odyhzdGF0ZSwgY3J0YywNCj4gZGV3YWtlX3NjYW5saW5lKTsN
Cj4gKw0KPiArCQlpbnRlbF9kc2JfcmVnX3dyaXRlKGRzYiwgRFNCX1BNQ1RSTChwaXBlLCBjaGFp
bmVkX2RzYi0NCj4gPmlkKSwNCj4gKwkJCQkgICAgRFNCX0VOQUJMRV9ERVdBS0UgfA0KPiArDQo+
IERTQl9TQ0FOTElORV9GT1JfREVXQUtFKGh3X2Rld2FrZV9zY2FubGluZSkpOw0KPiArCX0NCj4g
Kw0KPiAgCWludGVsX2RzYl9yZWdfd3JpdGUoZHNiLCBEU0JfSEVBRChwaXBlLCBjaGFpbmVkX2Rz
Yi0+aWQpLA0KPiAgCQkJICAgIGludGVsX2RzYl9idWZmZXJfZ2d0dF9vZmZzZXQoJmNoYWluZWRf
ZHNiLQ0KPiA+ZHNiX2J1ZikpOw0KPiANCj4gIAlpbnRlbF9kc2JfcmVnX3dyaXRlKGRzYiwgRFNC
X1RBSUwocGlwZSwgY2hhaW5lZF9kc2ItPmlkKSwNCj4gIAkJCSAgICBpbnRlbF9kc2JfYnVmZmVy
X2dndHRfb2Zmc2V0KCZjaGFpbmVkX2RzYi0NCj4gPmRzYl9idWYpICsgdGFpbCk7DQo+ICsNCj4g
KwlpZiAoY3RybCAmIERTQl9XQUlUX0ZPUl9WQkxBTkspIHsNCj4gKwkJLyoNCj4gKwkJICogS2Vl
cCBERXdha2UgYWxpdmUgdmlhIHRoZSBmaXJzdCBEU0IsIGluDQo+ICsJCSAqIGNhc2Ugd2UncmUg
YWxyZWFkeSBwYXN0IGRld2FrZV9zY2FubGluZSwNCj4gKwkJICogYW5kIHRodXMgRFNCX0VOQUJM
RV9ERVdBS0Ugb24gdGhlIHNlY29uZA0KPiArCQkgKiBEU0Igd29uJ3QgZG8gaXRzIGpvYi4NCj4g
KwkJICovDQo+ICsJCWludGVsX2RzYl9yZWdfd3JpdGVfbWFza2VkKGRzYiwgRFNCX1BNQ1RSTF8y
KHBpcGUsIGRzYi0NCj4gPmlkKSwNCj4gKwkJCQkJICAgRFNCX0ZPUkNFX0RFV0FLRSwNCj4gRFNC
X0ZPUkNFX0RFV0FLRSk7DQo+ICsNCj4gKwkJaW50ZWxfZHNiX3dhaXRfc2NhbmxpbmVfb3V0KHN0
YXRlLCBkc2IsDQo+ICsJCQkJCSAgICBkc2JfZGV3YWtlX3NjYW5saW5lX3N0YXJ0KHN0YXRlLA0K
PiBjcnRjKSwNCj4gKwkJCQkJICAgIGRzYl9kZXdha2Vfc2NhbmxpbmVfZW5kKHN0YXRlLA0KPiBj
cnRjKSk7DQo+ICsJfQ0KPiAgfQ0KPiANCj4gIHZvaWQgaW50ZWxfZHNiX2NoYWluKHN0cnVjdCBp
bnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLA0KPiAgCQkgICAgIHN0cnVjdCBpbnRlbF9kc2IgKmRz
YiwNCj4gLQkJICAgICBzdHJ1Y3QgaW50ZWxfZHNiICpjaGFpbmVkX2RzYikNCj4gKwkJICAgICBz
dHJ1Y3QgaW50ZWxfZHNiICpjaGFpbmVkX2RzYiwNCj4gKwkJICAgICBib29sIHdhaXRfZm9yX3Zi
bGFuaykNCj4gIHsNCj4gIAlfaW50ZWxfZHNiX2NoYWluKHN0YXRlLCBkc2IsIGNoYWluZWRfZHNi
LA0KPiAtCQkJIDApOw0KPiArCQkJIHdhaXRfZm9yX3ZibGFuayA/IERTQl9XQUlUX0ZPUl9WQkxB
TksgOiAwKTsNCg0KQXMgcGVyIGNvbW1pdCBkZXNjcmlwdGlvbiBhbmQgY3VycmVudCBpbXBsZW1l
bnRhdGlvbiBhbHdheXMgbmVlZCBEU0JfV0FJVF9GT1JfVkJMQU5LLiBKdXN0IHdvbmRlcmluZyBp
cyB0aGVyZSBhbnkgc2NlbmFyaW8gd2hlcmUgd2lsbCBwYXNzIGZhbHNlIHRocm91Z2ggd2FpdF9m
b3JfdmJsYW5rIGZsYWcgdG8gIGludGVsX2RzYl9jaGFpbigpPyBJZiBubyBjYW4gd2UgZHJvcCB0
aGUgd2FpdF9mb3JfdmJsYW5rIGZsYWc/DQoNClJlZ2FyZHMsDQpBbmltZXNoDQo+ICB9DQo+IA0K
PiAgc3RhdGljIHZvaWQgX2ludGVsX2RzYl9jb21taXQoc3RydWN0IGludGVsX2RzYiAqZHNiLCB1
MzIgY3RybCwNCj4gQEAgLTY5OSw3ICs3MzIsNyBAQCBzdHJ1Y3QgaW50ZWxfZHNiICppbnRlbF9k
c2JfcHJlcGFyZShzdHJ1Y3QNCj4gaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwNCj4gDQo+ICAJ
ZHNiLT5jaGlja2VuID0gZHNiX2NoaWNrZW4oc3RhdGUsIGNydGMpOw0KPiAgCWRzYi0+aHdfZGV3
YWtlX3NjYW5saW5lID0NCj4gLQkJZHNiX3NjYW5saW5lX3RvX2h3KHN0YXRlLCBjcnRjLCBkc2Jf
ZGV3YWtlX3NjYW5saW5lKHN0YXRlLA0KPiBjcnRjKSk7DQo+ICsJCWRzYl9zY2FubGluZV90b19o
dyhzdGF0ZSwgY3J0YywNCj4gZHNiX2Rld2FrZV9zY2FubGluZV9zdGFydChzdGF0ZSwgY3J0Yykp
Ow0KPiANCj4gIAlyZXR1cm4gZHNiOw0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmgNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2RzYi5oDQo+IGluZGV4IGU1OWZkN2RhMGZjMC4uYzM1MmMxMmFhNTlmIDEwMDY0
NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzYi5oDQo+ICsr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmgNCj4gQEAgLTQ3LDcg
KzQ3LDggQEAgdm9pZCBpbnRlbF9kc2Jfd2FpdF9zY2FubGluZV9vdXQoc3RydWN0DQo+IGludGVs
X2F0b21pY19zdGF0ZSAqc3RhdGUsDQo+ICAJCQkJIGludCBsb3dlciwgaW50IHVwcGVyKTsNCj4g
IHZvaWQgaW50ZWxfZHNiX2NoYWluKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLA0K
PiAgCQkgICAgIHN0cnVjdCBpbnRlbF9kc2IgKmRzYiwNCj4gLQkJICAgICBzdHJ1Y3QgaW50ZWxf
ZHNiICpjaGFpbmVkX2RzYik7DQo+ICsJCSAgICAgc3RydWN0IGludGVsX2RzYiAqY2hhaW5lZF9k
c2IsDQo+ICsJCSAgICAgYm9vbCB3YWl0X2Zvcl92YmxhbmspOw0KPiANCj4gIHZvaWQgaW50ZWxf
ZHNiX2NvbW1pdChzdHJ1Y3QgaW50ZWxfZHNiICpkc2IsDQo+ICAJCSAgICAgIGJvb2wgd2FpdF9m
b3JfdmJsYW5rKTsNCj4gLS0NCj4gMi40NC4yDQoNCg==
