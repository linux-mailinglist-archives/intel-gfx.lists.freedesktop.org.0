Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A4A9BC689F0
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Nov 2025 10:46:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 38AA610E476;
	Tue, 18 Nov 2025 09:46:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SWh0uSaD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4BE3B10E474;
 Tue, 18 Nov 2025 09:46:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763459182; x=1794995182;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=EdzRY5Kab44rziaP3wSJOljm29XyI032mfmXMNDBxoE=;
 b=SWh0uSaDLbtVrVRsei5pjm9M5LPXMNf1bROwjErY3OSgv7CI3htihCR2
 lRrrDdKTySe2ggC6UvAy54Qc5jHl4dkTpK55Ae1MWkf0WL8npIyzk3Hne
 ZHfghIaz2KFF2UdrEeZ84FHAAnG8oewad1kwruvKy8FfhwkKDy/PknDrU
 xPk44gBu6LvPDYKOAEesS+f2tU/m+G0lDhV0FpC3LqjNhFd8nijAmLSBW
 mDvmTk3vkJnEWOgC+qHMpFrsvb5mRsSKE+LsbLiHzeTjNKH8F5BMqosOV
 pExaBx5KACNbHdFhHjPzW6zh8MuCJFRdbsc98cdsuDCasEpG2uJwwQDA5 g==;
X-CSE-ConnectionGUID: BF4lQwAWRUO0GhRVvFjqhw==
X-CSE-MsgGUID: m+o9xVJsQXO90Xd0GtEPVw==
X-IronPort-AV: E=McAfee;i="6800,10657,11616"; a="65633691"
X-IronPort-AV: E=Sophos;i="6.19,314,1754982000"; d="scan'208";a="65633691"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2025 01:46:21 -0800
X-CSE-ConnectionGUID: HdMt6vhTSU2rcp7GsNaPNA==
X-CSE-MsgGUID: cl52TRkdSyOtILE+rUG13A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,314,1754982000"; d="scan'208";a="190509453"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2025 01:46:22 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 18 Nov 2025 01:46:21 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Tue, 18 Nov 2025 01:46:21 -0800
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.0) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 18 Nov 2025 01:46:21 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=wMNvuM7nHydxGv5ji0oveYoYnVoZtQVuRFMgx2Fu8KpjYDzzOFo0rZWXDFcRzk2wpF69zQr3XzLJFif00TDUa1bGsGE4/6YRzS4o41iQ75QcoKDX0S7cAaAvTNV9Loxq40fFiQqVysqtHNFIrw948ZDAg4W+y1T7/KbOfgeOwVw/KNaFLvT4GPACxFaSbSKV4OSe5zH9xVHcjIzglzJ2mt2sqtgrEqkveDopS118IMih4CKaUnNdOtHSH4eCRfyMecoUN+y7Kmcdmuin19SyrBr/JaZFnwPz4YnYJjw3qaHkI/G6flKAX6+elv/s7P+QrY3ICjXi09sK3D8gIOc6pQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EdzRY5Kab44rziaP3wSJOljm29XyI032mfmXMNDBxoE=;
 b=C3r4CTQ0KVr4Ib8r1uraggJTJpHN+Jb+0LFz60Hnye745OVk9245pUwc+xwI54Ss4UGmLhK17ekrYMshJqK48WGW08uyWgfal7AUsBfz8yeFzCPZfQWUBva4WdU9WNEoAB1Kz6wlK0ODHLnCeT4WSfjqUHtiF/hJQyWmR2lE+GzjobqfYj5xf7k2h6dKwXqmj5JaP9X4prq1DsZcAojzi7V7nmvPTlZBZ4VNsyEFURxaqT3TBoQcWSYuGcLYNoKf5svFCbJgxLOLjm+plQlbP1/OFVUmuV/aqkvdjjt77TYZ3I1fGsjHC9hWx1umfXwnZSpidC0MSU+RTJTJ21E+jA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::28) by DM4PR11MB5971.namprd11.prod.outlook.com
 (2603:10b6:8:5e::7) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9320.19; Tue, 18 Nov
 2025 09:46:14 +0000
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::6aaa:cb72:c6c6:5720]) by DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::6aaa:cb72:c6c6:5720%7]) with mapi id 15.20.9320.021; Tue, 18 Nov 2025
 09:46:14 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH v2 21/32] drm/i915/cx0: Add MTL+ .update_active_dpll hook
Thread-Topic: [PATCH v2 21/32] drm/i915/cx0: Add MTL+ .update_active_dpll hook
Thread-Index: AQHcV7FFZG1Fd86fxkC74zS4Y73cc7T31i0AgABZEHA=
Date: Tue, 18 Nov 2025 09:46:14 +0000
Message-ID: <DS4PPF69154114F5055C5124206E9B25683EFD6A@DS4PPF69154114F.namprd11.prod.outlook.com>
References: <20251117104602.2363671-1-mika.kahola@intel.com>
 <20251117104602.2363671-22-mika.kahola@intel.com>
 <DM3PPF208195D8DBE4AE64DE33D9372C5BBE3D6A@DM3PPF208195D8D.namprd11.prod.outlook.com>
In-Reply-To: <DM3PPF208195D8DBE4AE64DE33D9372C5BBE3D6A@DM3PPF208195D8D.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPF69154114F:EE_|DM4PR11MB5971:EE_
x-ms-office365-filtering-correlation-id: b7ca30b0-b7eb-4882-0b30-08de2687502b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|38070700021|7053199007; 
x-microsoft-antispam-message-info: =?utf-8?B?MHVIRWJIZFgwdG9MdTVMNktrdHBaNkovTno2aTdoREQ1ZEpWVzJDeTZjcHYv?=
 =?utf-8?B?My9oVEFkM0JmdHkvWFd0b0FxRDhLTDcxVzgwNkw4M0o2Y0JMVUlVTmVISHJ0?=
 =?utf-8?B?cXZVVHM1T1lHTm1kQjFyRlZrQzJQS1FrcnkxTlZZU28rRnhNMFZaSVh1V3Vj?=
 =?utf-8?B?Q29mK1pqcHhEUWVDSDNRZGlZNXJSY1pwMUc5S1lTUUJWdEhNMW9GZ05hQU85?=
 =?utf-8?B?Q1NtZldKaURQNlZlNE8wb0VmRER5d0R1UnV2NVN0cTF6QWpabnNlQWhnZEIv?=
 =?utf-8?B?OTN5NEJlSFBRMEo4WjhMSjhIemhJTkJLNHVPNGJJK3Awd1lkRlh6M25WbnFM?=
 =?utf-8?B?VkxKOGRSaUxrVEhURkRsTWJDbkZTUUhLRk9xcEdNVlh3ZlVlQXlXYXhxcG5m?=
 =?utf-8?B?MWFyWEJUckkrU2x5Ynkvc1YxMFVDZlE4SUNlTkNXTzVNMzcxUURLOVlNTFJh?=
 =?utf-8?B?YWQ4VW01MERuVUpKRHptcEJSQzMrNmwyUTdnc01KczB6UHNKcTBtWnZLZll6?=
 =?utf-8?B?ME9idVBEWUFOUytRT2hGVEpveFVzV0V4a21OU1A0ZVIyQ1piNHdjU1hqUUly?=
 =?utf-8?B?SzBmMFVsRno5bUNteFM4QnBCMk1qa3FzSVBTUmF6OTNMRWt5ODg5NzZGakJG?=
 =?utf-8?B?dTdhVjZSTXhVbkc2UzZ3U3R4VFZRbEljZUhtd1dLeDNEZjJnTnhPUDRDNlJo?=
 =?utf-8?B?QTA5WnRSSERjSG1kYjB0TlNiSWJpay9IdjhaWjJ4d3l4UlhlQWVxNitOS0V2?=
 =?utf-8?B?ZDlBL2tNTXVOaHRSQXNWZWlRSHZoSEwrbTFWbzJQRUNaaXlMOWt5NTVuVjc0?=
 =?utf-8?B?NjRrcmJXajB4Nm9uY0lHbmlVeXhrSDM0ZkxiUzhuQWJYbmlDNkdXMk93NGRk?=
 =?utf-8?B?Zjk1YWtOUVpUZlNIL281MHF1M3VNbmxQVHNXWVU5QWEyZVRBUzJxamNUVWZH?=
 =?utf-8?B?aHhpTU9DcnJvU2JJaXpVWGVIWjV2T1UzcU1XcHRYeE95V3A4SWtuemsxSkdm?=
 =?utf-8?B?UE4vVmp6L0s0ZXpHTnQ5Mk9LWHM1eWNKclBsN083T3ZsYkViWHB6RE93Qzc2?=
 =?utf-8?B?VlJ4dHg4WXZXRFF3aGxHSWRWWkJsYzJTR25mSGpJZ0RocU5UZlErMGwwNXpu?=
 =?utf-8?B?ODNSekFFci9BRmhpUlZHbWxtYzhtUytMVys0OUkxYVlOQmlXWWNBcXpTektj?=
 =?utf-8?B?aDNqbHN3YitBSGM3K1B2OVcvdzhEZHZVSVdGRXllYWh3NExQNzJwYlh5Wktz?=
 =?utf-8?B?bzRDUzFsVHFFQjhIeTg5KzJvOWVtVjFYaEVnYlpqekpLMzV6Nkh0NlhlTk1E?=
 =?utf-8?B?WFc0bHNMWkxLTjljUUsvRTUwZHJDdGVZTTdaL3o1VW5UNHZWaFlmamIzanVW?=
 =?utf-8?B?R1UvQnptcVRITUl2ZWxodkw2bzRNUWFoc1FrWFMxdFhyYlM4dkJYZGV0VTQ1?=
 =?utf-8?B?Vm1kTFZWWFB6WkxpL2NVL0dUN1pvUHUrRnBJbFhabzBnMnlVd0I1bkdUSW1v?=
 =?utf-8?B?QWhuRUIzNU5FT2x4ck54T2plYmtwVGN6bFhzb0hCVG9VcG44dGN2WjNwajdl?=
 =?utf-8?B?TGlZbzVzUUtNTUQwOGYrdUpZVm5pSXZlUHFjSGR6Z1J0cWZNL0FOTXZWSHgv?=
 =?utf-8?B?NEVhOEY1UjdROU9qRkYxVUhzdUlwYVpUYzV3azJnM25pbGVZUGp3NDljODVM?=
 =?utf-8?B?ZjFoT1BtTDBvZmhGeWd5OXA3VFJDMVdGNXJJbVB3ZGZzcTAvQUlnb0Z1b2ZS?=
 =?utf-8?B?czZ0NHhkeGFJb0NaN2JYeDhEU1V6VEJmOEFyWDFPdUtsUGV3bFp2Y0xlUFQy?=
 =?utf-8?B?OUd4Qi96N0hxVVhjd3JxSlkzcmdmaVJTNHJwa01xNExMTmRrejJpdU9kY3Fz?=
 =?utf-8?B?ZjVQZHVtMUJ6eTNiZGVuMlJTdG5CRjgxelg1UkxpL2JLSWp6OUExQklYY0JU?=
 =?utf-8?B?ZWMrVmhscmVTWXJMVmpQLzM2Z0lWajNISkFjL0RpdEhUOTRWZ0RXSkZ0anFt?=
 =?utf-8?B?YmRaVDlBN3VqSFRZckhENWpLeE43d2FSQjZZdEtHMUF5YjNrV0NpR1QwcTN4?=
 =?utf-8?Q?ftHKJc?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPF69154114F.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700021)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?bXcyZnJwUU9ZZnVOMEFObDFXc1dzMmdmWEZIaTgwcGg1NStRL08vU0t5VGlw?=
 =?utf-8?B?bktUeEtBOWtnRitvYmJrSjBocEt0cGkxYVhDM2RiQ0ZpZDZEYXNZODRobWlh?=
 =?utf-8?B?Q2FSVGFwSllEeWhSQ1EyMFZGSWQwcHJCdTJqeU0rTmtrc2lncml4NDQ2RlVx?=
 =?utf-8?B?ZjJ4aXI5OVNCcEtzL0gvbTgwNFVHTEVGaUIwZ1R1MFdNVnNZbjhISnNtRk9s?=
 =?utf-8?B?T2w2R1MrbjZPSXZUVjFRU012OExUa2xaZlhWc0pNYUN0cGt5Y1FZS3d5eTl5?=
 =?utf-8?B?OEpFWXg3azBFSkwrQm1aOHpmaXlDMGl3NzdoT29VeFBnYjE2Sk9EZWpWM2o4?=
 =?utf-8?B?b0xLai80NlUwcFVsQnFwQ3BPYmw4eSsxZGZKL0NtTnRQQjBVR0R5eDBjOVYy?=
 =?utf-8?B?WGkxTlBBd2xFbXB1Tnh5c2l1NUJxMWhDdVBmd0NpWENMUVpzaHhKdUpacDJq?=
 =?utf-8?B?d2pFeWI3VmJZL0lxejNkS3dkazFEV0QvZHJHdUh0ZWFtSURpbzhYUDEzZGRp?=
 =?utf-8?B?ekZzU2JtWnJCbW9qbTB5Smt5K0JzSEp3VkVNMzlNVEw0RFllY2RaTElQNGll?=
 =?utf-8?B?dEhLSzVKM2tGOTE2M1MwRjYvTHJFYTEyeTFSZDM1SStwMjhiTWxvRjVLejZC?=
 =?utf-8?B?V050WjdxYnh4VkJBZWE5c1poLzZnVnRsVWs0c0JOam5mVzM3UVdWZGUzbkRv?=
 =?utf-8?B?YjNBMkN5d0xUTW9rM09wcGZPallpVjZkcmJNRC9aeHFNTS9yc1ZzYXdQSHRG?=
 =?utf-8?B?V3Z4dkdoUU8xT0ZZMDhsRGk0cm9QNFRmT05PaUFWUEh5cTF6YkNsYlYwVElP?=
 =?utf-8?B?cWdlRGNUZXdRTVlhRFdQOXJSNFBwcFg0U0phbWw2c25CT2VnRGpSVFpjQjhL?=
 =?utf-8?B?L2xIek5JVm14emVyN2RQbmVkUFpLMkVJK2JvYUtuZGJxYWRiMGtGYkx6L29L?=
 =?utf-8?B?RHYwc0llcitaYk9NZ1BPLzZXOVM2eEE5a1huUys5bXVHcUhlWFdWQ2tsdzht?=
 =?utf-8?B?UWVJUFRZK3MvSXVFVXQxeWxaUHNmT3NLQlpiNmZ6NDZoS3dxeS8wK1kzYkJs?=
 =?utf-8?B?ZStmVkJUVmRsTms5TThHV2pBeUF1U1hyRHlaMytsQUZkTjdxeG81b3BuY0E0?=
 =?utf-8?B?YnlMUjQvRVdsbEVQaG1TNWt0ZzZXdXlPRnpqVS9Lc0Jvd3ExcTYwdlo0S1lQ?=
 =?utf-8?B?blN5MGtOWXZicllCNG1aMTVPczZmeFFQTEpxeHhDNnp2TklvSzZTTHFaMkpE?=
 =?utf-8?B?OHh1UWV3NTBvZE5oblk2WlpMMWtCYmUyeERUVGtlSEtZUUVKZy9adEpmalpS?=
 =?utf-8?B?clROVUZMT3VVd3ZaWW1jQ1lKd1lkOWtub056UUphT0ZyZHBpcWRQT1VQTm1r?=
 =?utf-8?B?cHI5b2ZCTkJGMTZoaStFMTFEVlpSWmlwc2NqaTJqL3V1WXVEd2VqOHJJU1lh?=
 =?utf-8?B?L0tyOW5PT1lnYXpwa3ZleFViaVlFVUxIV0xJUUVCdXpWRk4vUExFb0dhaVFr?=
 =?utf-8?B?TmlUUys4ZDkraUtnU2ZxN1ZDR2xHdFZEUklhaDNFVWxERkhpN1h0MEZ3Zk42?=
 =?utf-8?B?Q1pJMWtzaXFDRzVOdGkyMGF6WmVCZ25FN1pHWVlneHliaDhnMVVIMUl3aSs1?=
 =?utf-8?B?QlJHcThMYy9RY0MwR2F4Unl2b3dONjRzYUYxUGRna1YrNnZSTjhwMkVzMDFP?=
 =?utf-8?B?bzU4MCtzU3RpeWVlVDh5R085aGJRRjU2UmhPYjF0SlJLaW54TkdsamIwK0Ra?=
 =?utf-8?B?Z3dNMUJTMnNXWHoyK1gzWEY5TlFISCs5Yko5U1lLcHU4dTVkeTdtc1kwUTdU?=
 =?utf-8?B?cU5CMit1bkduOTBadVhKUDhJdWdEbDl6L0F6M0MxcjVTS1EwSzRhbWZxWDlX?=
 =?utf-8?B?bEpIR3gyRGlVd2VzZmFNTXE3d1BENVFzV3RMOTBqdEJuTGNIVXcxN0ZnK1BW?=
 =?utf-8?B?SFBMQ2RsS21rVWhvemtLYmppVERmNzREZ05GVCt0Vm5SbS84NHhaOWxxVUFY?=
 =?utf-8?B?b3d5UHd2aWVpam1NdER1cGUrVk05RzFGRkU2Uy9VcTdLUFI3ZXRnbDhlWWVY?=
 =?utf-8?B?THliekNZMmtyM0N2d3RIM0QvMjZ6SzZWR0k5UW1admE3VGZxOUhJTmx2dmlZ?=
 =?utf-8?Q?P0oOGNDhe9E2nUig1QVW8X+fk?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPF69154114F.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b7ca30b0-b7eb-4882-0b30-08de2687502b
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Nov 2025 09:46:14.0557 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hCcXg3v9CCFTsot1S3P6Cyr/aAAumnGwW48xwcbFOpf71AgAV3wLTXsVAd+XYwm6d2ocTkEOY7axBn9iPyU5ig==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5971
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogS2FuZHBhbCwgU3VyYWog
PHN1cmFqLmthbmRwYWxAaW50ZWwuY29tPg0KPiBTZW50OiBUdWVzZGF5LCAxOCBOb3ZlbWJlciAy
MDI1IDYuMjENCj4gVG86IEthaG9sYSwgTWlrYSA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPjsgaW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZzsgaW50ZWwteGVAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnDQo+IFN1YmplY3Q6IFJFOiBbUEFUQ0ggdjIgMjEvMzJdIGRybS9pOTE1L2N4MDogQWRkIE1U
TCsgLnVwZGF0ZV9hY3RpdmVfZHBsbCBob29rDQo+IA0KPiA+IFN1YmplY3Q6IFtQQVRDSCB2MiAy
MS8zMl0gZHJtL2k5MTUvY3gwOiBBZGQgTVRMKyAudXBkYXRlX2FjdGl2ZV9kcGxsDQo+ID4gaG9v
aw0KPiA+DQo+ID4gQWRkIC51cGRhdGVfYWN0aXZlX2RwbGwgZnVuY3Rpb24gcG9pbnRlciB0byBz
dXBwb3J0IGRwbGwgZnJhbWV3b3JrLg0KPiA+IFJldXNlIElDTCBmdW5jdGlvbiBwb2ludGVyLg0K
PiA+DQo+ID4gdjI6IEFkZCBjaGVjayBmb3IgIUhBU19MVF9QSFkgKFN1cmFqKQ0KPiANCj4gSSBk
aWQgbm90IGNvbW1lbnQgYXNraW5nIGZvciB0aGlzIGNoYW5nZSBhbHNvIGJyaW5ncyBzb21lIHF1
ZXN0aW9ucyBpbiBteSBtaW5kIGhlcmUNCj4gDQo+ID4NCj4gPiBTaWduZWQtb2ZmLWJ5OiBNaWth
IEthaG9sYSA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPg0KPiA+IFJldmlld2VkLWJ5OiBTdXJhaiBL
YW5kcGFsIDxzdXJhai5rYW5kcGFsQGludGVsLmNvbT4NCj4gPiAtLS0NCj4gPiAgZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYyAgICAgIHwgMyArKysNCj4gPiAgZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcGxsX21nci5jIHwgMSArDQo+ID4gIDIgZmls
ZXMgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspDQo+ID4NCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYw0KPiA+IGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYw0KPiA+IGluZGV4IDAwMmNjZDQ3ODU2ZC4uNmI0M2Qz
MjZlNTBjIDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGRpLmMNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rk
aS5jDQo+ID4gQEAgLTM2NzEsNiArMzY3MSw5IEBAIHZvaWQgaW50ZWxfZGRpX3VwZGF0ZV9hY3Rp
dmVfZHBsbChzdHJ1Y3QNCj4gPiBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLA0KPiA+ICAJaWYg
KERJU1BMQVlfVkVSKGRpc3BsYXkpID49IDE0IHx8ICFpbnRlbF9lbmNvZGVyX2lzX3RjKGVuY29k
ZXIpKQ0KPiANCj4gU28gdGhpcyBjaGVjayBoZXJlIHdpbGwgbmV2ZXIgbGV0IHlvdSBjYWxsIGRw
bGxfbWdyLT51cGRhdGVfYWN0aXZlX2RwbGwgaG9vayBTbyBkbyB5b3Ugbm90IHdoYXQgdG8gcmVt
b3ZlIGl0Lg0KPiBJZiB0aGUgYW5zd2VyIGlzIHlvdSB3YW50IHRvIGtlZXAgdGhpcyBjaGVjayB0
aGVuIHlvdSBkbyBub3QgbmVlZCAoIUhBU19MVF9QSFkpIElmIHRoZSBhbnN3ZXIgaXMgeW91IG5l
ZWQgdG8gZ2V0IHRoaXMNCj4gcmVtb3ZlZCBvbmx5IHRoZW4gZG9lcyBpdCBtYWtlIHNlbnNlIHRv
IGhhdmUgdGhpcyBjaGVjayBBbmQgdGhlIGNoZWNrIHNob3VsZCBiZSByZXR1cm4gaWYgKEhBU19M
VF9QSFkoKSkNCg0KVGhpcyBpcyByZW1vdmVkIGZyb20gdGhlIG5leHQgdmVyc2lvbi4gVGhpcyBj
aGFuZ2UgY2F1c2VkIGEgcmVncmVzc2lvbiBvbiBtdGwgdGhhdCBJIGRpZG4ndCBzcG90IG9uIG15
IG93biB0cmlhbHMuDQoNCkknbSBwcm9wb3NpbmcgdG8gY2hhbmdlIHRoZSBjaGVjayBzb21ldGhp
bmcgbGlrZSB0aGlzDQoNCi8qIEZJWE1FOiBBZGQgTlZMKyBwbGxfbWdyICovDQppZiAoIWludGVs
X2VuY29kZXJfaXNfdGMoZW5jb2RlcikgfHwgIWRpc3BsYXktPmRwbGwubWdyKQ0KICAgICAgICAg
cmV0dXJuOw0KDQotTWlrYS0NCiANCj4gDQo+IFJlZ2FyZHMsDQo+IFN1cmFqIEthbmRwYWwNCj4g
DQo+ID4gIAkJcmV0dXJuOw0KPiA+DQo+ID4gKwlpZiAoIUhBU19MVF9QSFkoZGlzcGxheSkpDQo+
ID4gKwkJcmV0dXJuOw0KPiA+ICsNCj4gPiAgCWZvcl9lYWNoX2ludGVsX2NydGNfaW5fcGlwZV9t
YXNrKGRpc3BsYXktPmRybSwgcGlwZV9jcnRjLA0KPiA+DQo+ID4gaW50ZWxfY3J0Y19qb2luZWRf
cGlwZV9tYXNrKGNydGNfc3RhdGUpKQ0KPiA+ICAJCWludGVsX2RwbGxfdXBkYXRlX2FjdGl2ZShz
dGF0ZSwgcGlwZV9jcnRjLCBlbmNvZGVyKTsgZGlmZiAtLWdpdA0KPiA+IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcGxsX21nci5jDQo+ID4gYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2RwbGxfbWdyLmMNCj4gPiBpbmRleCBjNDVmMTgyMDFlZTguLmU2
ZGQ2ZjExMjNkNiAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2RwbGxfbWdyLmMNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2RwbGxfbWdyLmMNCj4gPiBAQCAtNDQ0OSw2ICs0NDQ5LDcgQEAgc3RhdGljIGNvbnN0
IHN0cnVjdCBpbnRlbF9kcGxsX21nciBtdGxfcGxsX21nciA9IHsNCj4gPiAgCS5jb21wdXRlX2Rw
bGxzID0gbXRsX2NvbXB1dGVfZHBsbHMsDQo+ID4gIAkuZ2V0X2RwbGxzID0gbXRsX2dldF9kcGxs
cywNCj4gPiAgCS5wdXRfZHBsbHMgPSBpY2xfcHV0X2RwbGxzLA0KPiA+ICsJLnVwZGF0ZV9hY3Rp
dmVfZHBsbCA9IGljbF91cGRhdGVfYWN0aXZlX2RwbGwsDQo+ID4gIH07DQo+ID4NCj4gPiAgLyoq
DQo+ID4gLS0NCj4gPiAyLjM0LjENCg0K
