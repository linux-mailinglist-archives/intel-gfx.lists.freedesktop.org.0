Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C972FA132ED
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jan 2025 07:04:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3A76010E8B3;
	Thu, 16 Jan 2025 06:04:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iQWGjpRs";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8F34710E8B1;
 Thu, 16 Jan 2025 06:04:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737007441; x=1768543441;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=PDw8yK2i+BUVYxO38C19+YGICjL6F2mz2Qp3jDtcDwE=;
 b=iQWGjpRsYmp66Cu3VdEc7ybLrLok3TjkiawPSSVJjFCfDOcb3wnO/R7I
 74mhbF0ZauLjPyubx5o5RjChY2QRdfYma79B3Gg8JM74jFfeGukybxH/P
 ULV8KkYww+WMQdc35Y9JXBruNz3ofWXM/5AZS8/PWvNuOYe6cOPcMEamJ
 028IcYYn6fgLlK/eGgVR4MiSnidEOKy3QGMY5ET1SHP5AFHx4GnbV4e8r
 WXY9SGxtXjM6dH72Ygz6Jnjm4b0S6aj+FdU0QSfEBSZV0L02uA3NWv8YS
 yxeuX5BnxR5j1FO50UyDsHTPE0+l1Wl0sGjhg6RjSMueUOxxmgfwsEDVa w==;
X-CSE-ConnectionGUID: LhW6MEFMRrKMxWTy7dEvdQ==
X-CSE-MsgGUID: A8eALGkKQdWYFXV71lLtFQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11316"; a="37609874"
X-IronPort-AV: E=Sophos;i="6.13,208,1732608000"; d="scan'208";a="37609874"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jan 2025 22:04:00 -0800
X-CSE-ConnectionGUID: 1yVS+AWoR+ONxCxdr1b0yA==
X-CSE-MsgGUID: GrM0yvrUTYi7ekrJNggLXA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,208,1732608000"; d="scan'208";a="105423450"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 15 Jan 2025 22:04:00 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Wed, 15 Jan 2025 22:03:59 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Wed, 15 Jan 2025 22:03:59 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.177)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 15 Jan 2025 22:03:58 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Yvn76YrbnKUTzy49ZkDUPXCL6w/mHlG6sAJYWkI8HBXAfW6fCexVJN5q3YktNvQRHLyNCqqmoeoMl2x5SGZ1HVFzOkUDWNsMjgI/wfHE2D7zLvRt7WpZUxmG7TG2t013KTkZSmxxK6IcAGA8DuDnUeWGAclXGQ5CKAbS455tthI8kCj2fkRKVqjdc28nW/J2Hh7QIQw//0KrlN+eQ1LILwFiqU1o6jbgXYCLM5oQPPZAJBCbepKLMqqYAQXEcsnxLoWZEI5ikKXOkhc7K79g+29gLmnowyduUcrfqppUq8MhRf+PFCbirsieIEp/5UokGXPo4gU0Vjim15zIVacVlg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PDw8yK2i+BUVYxO38C19+YGICjL6F2mz2Qp3jDtcDwE=;
 b=dmekwxyQ+KsRfyXGmbGdmYk3zqcrhdJWNDNHQuxd10k+BgPCePlF+njL4E82vIcANvZ+CpQfab+HEtVJ5Z043yAH9fmZ25HMQL/evDK1wuH1bm5cWLAt95QgDutFG4uEZjAQoCUjRHxZ5ERntTp0UB5lLTl5spyk6mDCigoSYEvpZT96P1m/J21afmaa8SxhBJr8BbVO/cdj5PjXXKdmAztsqZmWTFPuitjPc87WkkK6x3u8A0IXgNigm0FGPOs7upEgJXndZZdhwicB5Rg+TGtzCbJDPTaVWisWIxFu2MqP4l76rf4MNRnZHRvT0FlN5Os2gmSv0O8pUtYv4mjcRw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS7PR11MB5990.namprd11.prod.outlook.com (2603:10b6:8:71::5) by
 PH7PR11MB7595.namprd11.prod.outlook.com (2603:10b6:510:27a::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8356.14; Thu, 16 Jan 2025 06:03:51 +0000
Received: from DS7PR11MB5990.namprd11.prod.outlook.com
 ([fe80::60e:9fa:d735:5be7]) by DS7PR11MB5990.namprd11.prod.outlook.com
 ([fe80::60e:9fa:d735:5be7%5]) with mapi id 15.20.8356.010; Thu, 16 Jan 2025
 06:03:51 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Hogander, Jouni" <jouni.hogander@intel.com>
Subject: RE: [PATCH v3 06/10] drm/i915/psr: Allow writing PSR2_MAN_TRK_CTL
 using DSB
Thread-Topic: [PATCH v3 06/10] drm/i915/psr: Allow writing PSR2_MAN_TRK_CTL
 using DSB
Thread-Index: AQHbYmiiNkyGQxW+QkqEanTnlJ4TZLMY88qg
Date: Thu, 16 Jan 2025 06:03:51 +0000
Message-ID: <DS7PR11MB599043F7F9C4022192318A5BF91A2@DS7PR11MB5990.namprd11.prod.outlook.com>
References: <20250109073137.1977494-1-jouni.hogander@intel.com>
 <20250109073137.1977494-7-jouni.hogander@intel.com>
In-Reply-To: <20250109073137.1977494-7-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS7PR11MB5990:EE_|PH7PR11MB7595:EE_
x-ms-office365-filtering-correlation-id: 8d38d6f1-da2f-4a88-e405-08dd35f38d17
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?QUZTV2hlazh4eUZ4cmNnRjVPb3pGWDRVN1ZKenIyYXRsZit2M1ZQTk9LVzdv?=
 =?utf-8?B?NWxYVHlLai8vbk5aWjVQVHZhckpaRDZ6ejg1QTdmajlkejQyb1g2em5jQjJo?=
 =?utf-8?B?ZFRFQk9ieFZKdUREQkR0anFlcXVsTTdKcTdhTWQwUkQ1cVd4NTh5MGhOU3Bo?=
 =?utf-8?B?ZW8yL2MvUTVPUWloTXRqWjZPMDhrdjVnUFRNU2ZFdGxENFlyaDVxQURZWGMy?=
 =?utf-8?B?UG5uMTdhSWF6VUFORE5kOHhrakFiRXZFWUFwckhwVitma3hwQ2RMV3VJdHVV?=
 =?utf-8?B?ZnF6ZEJGUTNVMFNyTW9BY0s4T0x2ZzJDNlR6R2Z5ZHVwZDkzM1FXSzBzZHA4?=
 =?utf-8?B?OXJpVGp6Y1VDUVRKVnNsL0prd1laTUlhN0pvckNKV1lVRFBkTWlQb1g2TU9a?=
 =?utf-8?B?VnFITWRYTTZIWjJBZERsQTFtcE9tQUw4bzdWV3ZtRTVMTitnaEM0MGp1L2tU?=
 =?utf-8?B?SFlOcTY5bm1sNjJoTU51ck5aMExVVXR3ZTRHWUJpaWJJbWRIWTdnTzYwa2JQ?=
 =?utf-8?B?NW1pbjdSaHU3Z3VGdmFub0hZQkpXcXgxNmVjTmd4MXo4aGF1ZytCa3RSdjNl?=
 =?utf-8?B?Slk5TE1CV3NSUGI4TFE1Y2YvYi9ibzhKcnRCaXg3Rk1EdDladFRuNzRXRWRS?=
 =?utf-8?B?VTZBNG5JU3pEbHUwZXVLL1hIeVk1b04xMmRML2RvcDRzc1RCZU0yeDUzVGNV?=
 =?utf-8?B?Szc2RG80eWVyQnJsVUNZc1BwL2p2ZXhNcUhONjlTcDVFNXQzRWdqa1I5Q05v?=
 =?utf-8?B?UGVmMTVKT3FmcENIMUpWZmZ1ZXVoSVNnNFVFZXdPc0syNjZhOTA4elhRZmxL?=
 =?utf-8?B?SzBWS3Nobng4VGcrd1Vwc0JlYkJVRnpvWXZFQkRPaGI4YTBhNUM5d3Vnc2N5?=
 =?utf-8?B?TFhYZEh1eXBYaTVFckdJYXhkVE9rNUh5NVpPMXlKMU5pQzR2dC8ralZVYm90?=
 =?utf-8?B?Y0JoSkFWbjZBMEg4dlhKOGxxMElzWUNjblBHUmJDZlV5dHdNWFhzc0R0NFlt?=
 =?utf-8?B?MFo2Y2lGWnE4YzBxYTNwOHRBTWphS2F3ZjFSQmI4a2tSZ3hUZ0pwYS9lNzEy?=
 =?utf-8?B?eWF3OEVhNU85eTFDQWlUdHl3RVJ1N25jWFh3aW1rZk4xd1d1V25aWnA5R0xI?=
 =?utf-8?B?cUJ2VVJ1MWFjazR3elVLaU5JWExXa0VFYUowdG1PSUwvSVd6TFhKUkpHZ2Jr?=
 =?utf-8?B?SzhiS1hBYnBMS3ZEd1dQS25vTFJNTjEremJPenNqTFA2QnNHbHQ5b2ZsSGdn?=
 =?utf-8?B?N0dBS0VZdjFnSThFbjNtcUh2dFE4WUdqSVRhQXNjY3BGSzJxMVQwcmtwRW9i?=
 =?utf-8?B?WVUySVVZbVFjaWNOSUowY3FUaUwxWnNuQ0dzY25oeTBJaG5xUnVTMWkxcTll?=
 =?utf-8?B?L2NOeFdYVUhiZkZxWnd0RzhMMGpNL2J2ZnJxa2xSWTlZaGNiVlBGVEJLK09k?=
 =?utf-8?B?SlJiZEhvSmRKSDljeEwwUGF5Y3JkZkZzeGdNYzRNWkZZMVQrNDR5enRPVTQ5?=
 =?utf-8?B?QTNOZHI2RHB4dVc1bXN6MEI4c1U4MHpXRE9iVTNjWnB5RlE0L3JSc2hMMDlW?=
 =?utf-8?B?ZDZISWZqckxBRzlEajNnZFZHeUNpdGlObEYvaWRrSFJpOXU1djZtZzFiN2Vs?=
 =?utf-8?B?TE9mS1Z0MDdZYWt6d1I3dkNyN0RxZEIwQ3JTNHovWitVaU5hNWZUN25FVmZN?=
 =?utf-8?B?QmF0TkVLZ2dnTEFQQ2w4eEZ0QVIyblhuOEZYUXJlWkUvSnZwYkEvMmhCQlhR?=
 =?utf-8?B?dDlETUg2Wk1VTkc2cC96K2tzQ0hxZTRKUi9uSzZKT0pZamZ0bUhEUTNXcEFH?=
 =?utf-8?B?a2ZIY0hUckJjTE1pOWhoT05iVG8rbWtVb0xEcG9OdjR3NUExcjZtOGh6U2da?=
 =?utf-8?B?OEdsOUNlY1E2ajcwcmpSSkFYNEIrRnRMTVpWN1hoT2NXeG52akhTMUhxc3Uz?=
 =?utf-8?Q?aIWf/K9eIzW1hPkBthi0h9NqDyS9GorB?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB5990.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?djhQL1d3aGFCQjQ2Y2RxdVlPbGNXQThpKyszQ2Ixekg5eWhtcFNWdG1hQXRJ?=
 =?utf-8?B?Q2FJODlsOHg2KzY3QmYyTGg5TWFIb2hmUGRTWnF5eEdsWld1YytVcExKbU1O?=
 =?utf-8?B?b09pcVkxQzUwNHZvaTU5RitNS3dkdlZ2aTlkanBXOTJONUFJUkdmVWNQQzd0?=
 =?utf-8?B?djlMaGdiVmtGZFB6UEFvbGI4aTNmZlc5YzNQR083UnlTY1dlbVpwSkIzYTlt?=
 =?utf-8?B?NGZSbno4SVZkbWJhcXBQREJRaE81WFZHSlNBa3NHWEtBRklqODFqZG11REdJ?=
 =?utf-8?B?WUVDNEMvZFd3THU2UFp3YldHQy9kNlFvVnhNOVh2bnlWTEFLbElLcjh3ZXlw?=
 =?utf-8?B?TVFiV1pHU2czbTNpVzA2NGFmcWkxRzRVT1p4VUFxWndPOFpOQ3dvNmpMQ1Vj?=
 =?utf-8?B?U1FuV0grY2NwZzI4a3ZSUjRqck5FUlo4YkRTNEMvcW9NQXJidUhqemhVV0tZ?=
 =?utf-8?B?T1pPcFZGNXlONFQ3S1M4VkZjR2N2aS9VN0V0QmNDbTBVQjRoYllKa0JvSWt1?=
 =?utf-8?B?S0laay9wc1dyYzRBOTZUc0JJU1F5WHE4elkvKzJIbEtuV1Zjdmx0K1NQc0ds?=
 =?utf-8?B?dVBsa3JPYTFJREFaS0V3TVBBQ1BQV0JTdFhZbFRWQXh4Zm9Hcms4WjE1aE5v?=
 =?utf-8?B?NHgrYWpFaHdzaFlrVWxEU0RGS2h2S3IrYjlJMEhTQ29qSDhJOHM5RXNzY3Br?=
 =?utf-8?B?RnNPTE5SUmR6bmMvdEZRcys2Q0IzRDE2ZGs4SVhjNkpTUTVOdEdQa3EwM2pC?=
 =?utf-8?B?ZWMxYUg5dXhDYjZncnRpbXVIekNneDB3UHhBbXdISVlFOEpXVWlzb3lJeDkr?=
 =?utf-8?B?VTI5R2hZcUladkNCbGc5V2RVakF4QTJhQ3J5T1Zsc0duTzFrNTJ1NUN5Sldh?=
 =?utf-8?B?M0dodEd0dTZORXZoYXBySjE1RkEvSkIwaDkxbWxaYVQ3WUR3QUN3dmFlRlhq?=
 =?utf-8?B?ajFEdXdBcDZsS2VTcVBFeFJRTytjZ2xkVzZUMjl1YlNacGlSR3VZekpJNUNt?=
 =?utf-8?B?T0pmVlhSdWNKbmJWUmZyS3dNSjl0dS9rOGVZTFZTSDNnK3JjQUJCSUphQ1k2?=
 =?utf-8?B?K0xKdWRDalppUUl4T0U3MldGdHVHVG45ZTBYQ1M0aHNFR05Wdlh6YUk3TzYy?=
 =?utf-8?B?VlFGVk9ISk9SMGdiWkI2VlFKWk51TzZtcHoxQit0M0RwZDk1UGd5K2NSNVcx?=
 =?utf-8?B?WFNleWxkcEFCek5ldGE3TkZSTDM4QmxuWExyeVg2a3E5TnBldnBsVUtSN21Z?=
 =?utf-8?B?L21TUHVFMndTR2lsd1NSSjFHWWJCUmowdkZtZU9qVmFESUh0Tklvaks4ajFH?=
 =?utf-8?B?SjdFN20yVmVuQkRGUk1TcWtTTmhvcmdtZGg2enhqWXc3UUZwSWcxV255aFZC?=
 =?utf-8?B?aVV4Tm1DWVMzZlZ5WXZvSGdaVzJkRW4ySTlKdGNSZE9DMktvb0pQZnp1eXhK?=
 =?utf-8?B?c3J0RzNjTmJuVHVZQXUxcUNoU25Bb2FQR1BuZkJid29iNTBxS3NXVDI3ZHVQ?=
 =?utf-8?B?N0VENmUzU0c0WjRrQmRacUYwTVZ0WEJJT0Y1cTZoZUlUWXZTS281eHJKVWY0?=
 =?utf-8?B?RXI1Y0JWV2xvRFRMSWxBQnM5RnBzK3o0cTJKZG5BRFlRcHY1K043YVZMSWlM?=
 =?utf-8?B?MzJoRXQ1R0puOUY0Q2xHTTFCU2pveitDTktTRzhLN3BBczEreFB3WGNFNE1i?=
 =?utf-8?B?V1o0MVVFTGdmRWhITXl6WXUzd3FvOC9sU21CeVpjQnNmZkZvaWNZZGRqNERn?=
 =?utf-8?B?ZHdKakNVYlpENXZSb1MzL2RqU2V1b2htUkdPenZleWVkdVJ3UE5HVmhIQVhF?=
 =?utf-8?B?SDFIZC9WMVMvWG9tMnd0R01JZzBmaTU3M3V6LzhqMlZGVCsram1PWU1jK3NX?=
 =?utf-8?B?QjFVSHM1WXczekJ1WFlRSWNEanhsblFQTU4xeUsxR1ZJWnc3a2ZTbzJiTmgv?=
 =?utf-8?B?NkRsY1dWcEtIVHR3WHZmVHVkQnFsdVFwY1JhRGFYNFB6bXl4SXBrZDl6NDhw?=
 =?utf-8?B?MUhaMEdseW1aK3JvZEhhSFdkQ09LSUY5eFJVOStVTzE5aVJHeklCTEhOYTZF?=
 =?utf-8?B?UGtPaU9HKzg3dmlhWitLSHpNSjdGY2YrbU9qdDJydmtMc3paVTA0Q1B4WUYy?=
 =?utf-8?Q?K4p3qroagN6YHPMdNqm04fb7e?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB5990.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8d38d6f1-da2f-4a88-e405-08dd35f38d17
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Jan 2025 06:03:51.6600 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: y2epCtSEIVxdcrLzVEaWsiqAIpRbpXaIB3hh0BErlqDslCmJfo6c9i+fCsCi/EZAU3ZGaF69zmgxeKnuWoUgUg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7595
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwteGUgPGludGVs
LXhlLWJvdW5jZXNAbGlzdHMuZnJlZWRlc2t0b3Aub3JnPiBPbiBCZWhhbGYgT2YgSm91bmkNCj4g
SMO2Z2FuZGVyDQo+IFNlbnQ6IFRodXJzZGF5LCBKYW51YXJ5IDksIDIwMjUgMTowMiBQTQ0KPiBU
bzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZzsgaW50ZWwteGVAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnDQo+IENjOiBIb2dhbmRlciwgSm91bmkgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNv
bT4NCj4gU3ViamVjdDogW1BBVENIIHYzIDA2LzEwXSBkcm0vaTkxNS9wc3I6IEFsbG93IHdyaXRp
bmcgUFNSMl9NQU5fVFJLX0NUTA0KPiB1c2luZyBEU0INCj4gDQo+IEFsbG93IHdyaXRpbmcgUFNS
Ml9NQU5fVFJLX0NUTCB1c2luZyBEU0IgYnkgdXNpbmcgaW50ZWxfZGVfd3JpdGVfZHNiLiBEbw0K
PiBub3QgY2hlY2sgaW50ZWxfZHAtPnBzci5sb2NrIGJlaW5nIGhlbGQgd2hlbiB1c2luZyBEU0Iu
IFRoaXMgYXNzZXJ0aW9uDQo+IGRvZXNuJ3QgbWFrZSBzZW5zZSBhcyBpbiBjYXNlIG9mIHVzaW5n
IERTQiB0aGUgYWN0dWFsIHdyaXRlIGhhcHBlbnMgbGF0ZXINCj4gYW5kIHdlIGFyZSBub3QgdGFr
aW5nIGludGVsX2RwLT5wc3IubG9jayBtdXRleCBvdmVyIGRzYiBjb21taXQuDQo+IA0KPiBTaWdu
ZWQtb2ZmLWJ5OiBKb3VuaSBIw7ZnYW5kZXIgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCg0K
TEdUTS4NClJldmlld2VkLWJ5OiBBbmltZXNoIE1hbm5hIDxhbmltZXNoLm1hbm5hQGludGVsLmNv
bT4NCg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxh
eS5jIHwgIDIgKy0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMg
ICAgIHwgMTYgKysrKysrKysrKy0tLS0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9wc3IuaCAgICAgfCAgNCArKystDQo+ICAzIGZpbGVzIGNoYW5nZWQsIDE0IGluc2Vy
dGlvbnMoKyksIDggZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0KPiBpbmRleCA0MjcxZGEyMTliNDEuLjVhNTEwMGYx
NDdhNiAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
aXNwbGF5LmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNw
bGF5LmMNCj4gQEAgLTcwODksNyArNzA4OSw3IEBAIHN0YXRpYyB2b2lkIGNvbW1pdF9waXBlX3By
ZV9wbGFuZXMoc3RydWN0DQo+IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsDQo+ICAJCQlpbnRl
bF9waXBlX2Zhc3RzZXQob2xkX2NydGNfc3RhdGUsIG5ld19jcnRjX3N0YXRlKTsNCj4gIAl9DQo+
IA0KPiAtCWludGVsX3BzcjJfcHJvZ3JhbV90cmFuc19tYW5fdHJrX2N0bChuZXdfY3J0Y19zdGF0
ZSk7DQo+ICsJaW50ZWxfcHNyMl9wcm9ncmFtX3RyYW5zX21hbl90cmtfY3RsKE5VTEwsIG5ld19j
cnRjX3N0YXRlKTsNCj4gDQo+ICAJaW50ZWxfYXRvbWljX3VwZGF0ZV93YXRlcm1hcmtzKHN0YXRl
LCBjcnRjKTsgIH0gZGlmZiAtLWdpdA0KPiBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfcHNyLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5j
DQo+IGluZGV4IDg1ZWNlZGQzMTYyZC4uMWU5OTMyOWI3MGExIDEwMDY0NA0KPiAtLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gQEAgLTIzMzAsNyArMjMzMCw4IEBAIHN0
YXRpYyB2b2lkIGludGVsX3Bzcl9mb3JjZV91cGRhdGUoc3RydWN0IGludGVsX2RwDQo+ICppbnRl
bF9kcCkNCj4gIAlpbnRlbF9kZV93cml0ZShkaXNwbGF5LCBDVVJTVVJGTElWRShkaXNwbGF5LCBp
bnRlbF9kcC0+cHNyLnBpcGUpLCAwKTsNCj4gfQ0KPiANCj4gLXZvaWQgaW50ZWxfcHNyMl9wcm9n
cmFtX3RyYW5zX21hbl90cmtfY3RsKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlDQo+ICpj
cnRjX3N0YXRlKQ0KPiArdm9pZCBpbnRlbF9wc3IyX3Byb2dyYW1fdHJhbnNfbWFuX3Rya19jdGwo
c3RydWN0IGludGVsX2RzYiAqZHNiLA0KPiArCQkJCQkgIGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRj
X3N0YXRlDQo+ICpjcnRjX3N0YXRlKQ0KPiAgew0KPiAgCXN0cnVjdCBpbnRlbF9kaXNwbGF5ICpk
aXNwbGF5ID0gdG9faW50ZWxfZGlzcGxheShjcnRjX3N0YXRlKTsNCj4gIAlzdHJ1Y3QgaW50ZWxf
Y3J0YyAqY3J0YyA9IHRvX2ludGVsX2NydGMoY3J0Y19zdGF0ZS0+dWFwaS5jcnRjKTsNCj4gQEAg
LTIzNDQsMjAgKzIzNDUsMjMgQEAgdm9pZA0KPiBpbnRlbF9wc3IyX3Byb2dyYW1fdHJhbnNfbWFu
X3Rya19jdGwoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3QNCj4gIAkJCQkJ
ICAgICBjcnRjX3N0YXRlLT51YXBpLmVuY29kZXJfbWFzaykgew0KPiAgCQlzdHJ1Y3QgaW50ZWxf
ZHAgKmludGVsX2RwID0gZW5jX3RvX2ludGVsX2RwKGVuY29kZXIpOw0KPiANCj4gLQkJbG9ja2Rl
cF9hc3NlcnRfaGVsZCgmaW50ZWxfZHAtPnBzci5sb2NrKTsNCj4gKwkJaWYgKCFkc2IpDQo+ICsJ
CQlsb2NrZGVwX2Fzc2VydF9oZWxkKCZpbnRlbF9kcC0+cHNyLmxvY2spOw0KPiArDQo+ICAJCWlm
IChESVNQTEFZX1ZFUihkaXNwbGF5KSA8IDIwICYmIGludGVsX2RwLQ0KPiA+cHNyLnBzcjJfc2Vs
X2ZldGNoX2NmZl9lbmFibGVkKQ0KPiAgCQkJcmV0dXJuOw0KPiAgCQlicmVhazsNCj4gIAl9DQo+
IA0KPiAtCWludGVsX2RlX3dyaXRlKGRpc3BsYXksIFBTUjJfTUFOX1RSS19DVEwoZGlzcGxheSwN
Cj4gY3B1X3RyYW5zY29kZXIpLA0KPiAtCQkgICAgICAgY3J0Y19zdGF0ZS0+cHNyMl9tYW5fdHJh
Y2tfY3RsKTsNCj4gKwlpbnRlbF9kZV93cml0ZV9kc2IoZGlzcGxheSwgZHNiLA0KPiArCQkJICAg
UFNSMl9NQU5fVFJLX0NUTChkaXNwbGF5LCBjcHVfdHJhbnNjb2RlciksDQo+ICsJCQkgICBjcnRj
X3N0YXRlLT5wc3IyX21hbl90cmFja19jdGwpOw0KPiANCj4gIAlpZiAoIWNydGNfc3RhdGUtPmVu
YWJsZV9wc3IyX3N1X3JlZ2lvbl9ldCkNCj4gIAkJcmV0dXJuOw0KPiANCj4gLQlpbnRlbF9kZV93
cml0ZShkaXNwbGF5LCBQSVBFX1NSQ1NaX0VSTFlfVFBUKGNydGMtPnBpcGUpLA0KPiAtCQkgICAg
ICAgY3J0Y19zdGF0ZS0+cGlwZV9zcmNzel9lYXJseV90cHQpOw0KPiArCWludGVsX2RlX3dyaXRl
X2RzYihkaXNwbGF5LCBkc2IsIFBJUEVfU1JDU1pfRVJMWV9UUFQoY3J0Yy0+cGlwZSksDQo+ICsJ
CQkgICBjcnRjX3N0YXRlLT5waXBlX3NyY3N6X2Vhcmx5X3RwdCk7DQo+ICB9DQo+IA0KPiAgc3Rh
dGljIHZvaWQgcHNyMl9tYW5fdHJrX2N0bF9jYWxjKHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpj
cnRjX3N0YXRlLCBkaWZmIC0tZ2l0DQo+IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9wc3IuaA0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmgN
Cj4gaW5kZXggOTU2YmUyNjNjMDllLi5mYzgwNzgxNzg2M2UgMTAwNjQ0DQo+IC0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmgNCj4gKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuaA0KPiBAQCAtMTcsNiArMTcsNyBAQCBzdHJ1Y3Qg
aW50ZWxfY3J0YzsNCj4gIHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlOw0KPiAgc3RydWN0IGludGVs
X2Rpc3BsYXk7DQo+ICBzdHJ1Y3QgaW50ZWxfZHA7DQo+ICtzdHJ1Y3QgaW50ZWxfZHNiOw0KPiAg
c3RydWN0IGludGVsX2VuY29kZXI7DQo+ICBzdHJ1Y3QgaW50ZWxfcGxhbmU7DQo+ICBzdHJ1Y3Qg
aW50ZWxfcGxhbmVfc3RhdGU7DQo+IEBAIC01NSw3ICs1Niw4IEBAIHZvaWQgaW50ZWxfcHNyX3dh
aXRfZm9yX2lkbGVfbG9ja2VkKGNvbnN0IHN0cnVjdA0KPiBpbnRlbF9jcnRjX3N0YXRlICpuZXdf
Y3J0Y19zdGF0ICBib29sIGludGVsX3Bzcl9lbmFibGVkKHN0cnVjdCBpbnRlbF9kcA0KPiAqaW50
ZWxfZHApOyAgaW50IGludGVsX3BzcjJfc2VsX2ZldGNoX3VwZGF0ZShzdHJ1Y3QgaW50ZWxfYXRv
bWljX3N0YXRlICpzdGF0ZSwNCj4gIAkJCQlzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0Yyk7DQo+IC12
b2lkIGludGVsX3BzcjJfcHJvZ3JhbV90cmFuc19tYW5fdHJrX2N0bChjb25zdCBzdHJ1Y3QgaW50
ZWxfY3J0Y19zdGF0ZQ0KPiAqY3J0Y19zdGF0ZSk7DQo+ICt2b2lkIGludGVsX3BzcjJfcHJvZ3Jh
bV90cmFuc19tYW5fdHJrX2N0bChzdHJ1Y3QgaW50ZWxfZHNiICpkc2IsDQo+ICsJCQkJCSAgY29u
c3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUNCj4gKmNydGNfc3RhdGUpOw0KPiAgdm9pZCBpbnRl
bF9wc3JfcGF1c2Uoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCk7ICB2b2lkDQo+IGludGVsX3Bz
cl9yZXN1bWUoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCk7ICBib29sDQo+IGludGVsX3Bzcl9u
ZWVkc19ibG9ja19kY192YmxhbmsoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNf
c3RhdGUpOw0KPiAtLQ0KPiAyLjQzLjANCg0K
