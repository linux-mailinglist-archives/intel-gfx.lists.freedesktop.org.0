Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EF4AA72A06
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Mar 2025 06:56:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F2AE810E2B2;
	Thu, 27 Mar 2025 05:56:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KO1ikLKg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 170F710E2B2;
 Thu, 27 Mar 2025 05:56:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743055000; x=1774591000;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=+A1VKx81ugOXVfTTUlosNKPOp4RA18svZHJTW3o/e68=;
 b=KO1ikLKg13UTf9qxDpLLqTJQCVp72fhAGH72EclPoWnDRnavvB+bHG7P
 DgBlDtsKscizMDxKj9uSb5djqfrHJQ+hq+W0NrZVFrL6fVBCAIHQzBOqI
 AAeevoIT3g0Ys3jiXrm3DX4Thtk+24E7Qydo3vBz9dNJ/5brS10Z06RS2
 al7nPuU64QDf5zCcmk2lVsKITHx68DxEl57WXZLQCskKf/vfjJ2IrJgTd
 LyC8I7dMxsQ6MbLOoh/3xOTV+oND0deGOgir9EQBG/DgjQNhECiabYzTQ
 9SgFUDTTjLGcoYZdjVgiasC8sl5/78NUNeZZmDJhmQw1ZNXnivswHbEG9 g==;
X-CSE-ConnectionGUID: fKzjxSFlR32BTfXNwcC/dg==
X-CSE-MsgGUID: ZeeWBV2+TPW0ILlvkOCmTw==
X-IronPort-AV: E=McAfee;i="6700,10204,11385"; a="44259425"
X-IronPort-AV: E=Sophos;i="6.14,279,1736841600"; d="scan'208";a="44259425"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2025 22:56:35 -0700
X-CSE-ConnectionGUID: PQycyWJsSpG/uz7bjQkHow==
X-CSE-MsgGUID: 1YAChTLgT8yXwOrI0ysKEA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,279,1736841600"; d="scan'208";a="125239546"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 26 Mar 2025 22:56:34 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Wed, 26 Mar 2025 22:56:33 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Wed, 26 Mar 2025 22:56:33 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.42) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 26 Mar 2025 22:56:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Nh+EiF0PDsOlnHYxDJKf09mdrY/bzDnqascT1aNlXqTOwVf6xqbq/3ljBi3oeuQzeZCv/GrcYTqLAZrBUgFKoGMjiFIXUXejZyCvSOt8iRxvT3uvda/LOZDbOZEfCk8FSjYu2T5d2836L+L5nc7nD3rceXAgNolmcB8Fv+kw8tMigkfymM2YZDfa3QWRevLqwSZraW//o4ZPhvNdat8GGDNS0Vgblag6lbhyMa99dQ5Nj1BzENWxmOBdMIcSZdToVQaiWQyQGbGpRsT2yuakpqPJnYdFTwVf6SFxdRj2afWaD9tQAflsub8dkte/Ug+2FUij3P3EApkXSbdkDCzpoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+A1VKx81ugOXVfTTUlosNKPOp4RA18svZHJTW3o/e68=;
 b=d8hp0/E2u8pDfj6XFtS3SPvFC5j4rj99jDriXah6KfEqZA/g6IrsDa+R2APEVxJD77Ufb5SogHGCkPSBUiD95q+mtLwphzao2xMAs/9FEn3KcBRR9xio5wuuG0BdASZziRJGwYg6bfee/rUoKANw1Yie9oC+FG+LrNpusti6+Gxa3wHHqEVcyQwl2T9lF5aasjHmuTj+w+BPgZ3MXt4V+n6b81dUzyB7MgYGY8yfeFQPBnr1Ul9QjkAPY39iGcLQqodOgiR2mnRwoHbma40OnChe6unCttRobuFh/QyictROhC2tm6X6Rxq7HsIuq/7kGp54K+w9tDpGO5X8WVB1PQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL1PR11MB5979.namprd11.prod.outlook.com (2603:10b6:208:386::9)
 by CO1PR11MB5044.namprd11.prod.outlook.com (2603:10b6:303:92::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8534.44; Thu, 27 Mar
 2025 05:55:57 +0000
Received: from BL1PR11MB5979.namprd11.prod.outlook.com
 ([fe80::b0f6:fbc:94be:2372]) by BL1PR11MB5979.namprd11.prod.outlook.com
 ([fe80::b0f6:fbc:94be:2372%5]) with mapi id 15.20.8534.043; Thu, 27 Mar 2025
 05:55:57 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH] drm/i915/psr: Add PSR pause/resume reference count
Thread-Topic: [PATCH] drm/i915/psr: Add PSR pause/resume reference count
Thread-Index: AQHblK1u8aLwISZHqk6cwQxE7Mey+bN9YCuwgABFWQCACOfnsA==
Date: Thu, 27 Mar 2025 05:55:57 +0000
Message-ID: <BL1PR11MB597966EC25F3724311A5A0CEF9A12@BL1PR11MB5979.namprd11.prod.outlook.com>
References: <20250314065015.879143-1-jouni.hogander@intel.com>
 <BL1PR11MB5979ECA217C60944121BF197F9DB2@BL1PR11MB5979.namprd11.prod.outlook.com>
 <cff2088e6f38bd23a694beee993b070ff0ebee9d.camel@intel.com>
In-Reply-To: <cff2088e6f38bd23a694beee993b070ff0ebee9d.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL1PR11MB5979:EE_|CO1PR11MB5044:EE_
x-ms-office365-filtering-correlation-id: 205066db-f419-4e3d-651e-08dd6cf40b1f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|10070799003|366016|1800799024|376014|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?utf-8?B?WHNnZDlmZDFzN0JhR2VEU2xrQk1FaEFSdGN1NFVyUk1XMk5vK0Q0S3EwaVZJ?=
 =?utf-8?B?RUJTRnFFSmNvc0dVSUFWYVordDFEU1BqSGQ4TGx3NWtIaFR6b3NudGFwSGpY?=
 =?utf-8?B?bGY0Yk9BcHJQdFJ2WTAwcnM5a3M2ajg4RitlQVloSGZFUi9uc0xQT0hkME9Y?=
 =?utf-8?B?dDFJbk50S2x1Q2RBQkpvbURNY0V0LzJ1dW1MeFh2N0V0WVNjVWV3Q3lVUlY3?=
 =?utf-8?B?b0Yxbk8yeGtWenRQTXZkVElwaHB3TlZMWG1QcUFlVWRIWmxjWmxXYkl4eEdJ?=
 =?utf-8?B?UmdWUElwRkRiZ0tnWDJTcEdBRGt6YVIrN2JQMFYvYys2SDVoaDJkemhQOTFX?=
 =?utf-8?B?b0l6MEFSNUZRNElyVkpnOVJNWFA2S01vWjF2dCtGdVFBbDhuZ1d0bng3RFMv?=
 =?utf-8?B?ekVRZFAwdmpRcU41ejZtcmxuZzF4T1hsYVZmUnZVVWVIOTkra2FwRE85dU9K?=
 =?utf-8?B?TitiR21nWVhRenpUNE82dXV3elZhaDBQTktvcTlSWW1qMThYUWdpT0JXOFFT?=
 =?utf-8?B?Y3VrZjVqY21JeWRhQlZPeUw3NnU0Q3ZsU2hhQWsxTm5uT2UvV1BDNEZON09U?=
 =?utf-8?B?M3dmNFY1bnlPUFNaek1tc2xkcGtRY0hRQU5PNDFkOFZoVlpZOEoyaUIxV3Vy?=
 =?utf-8?B?MThsZElrY1cwK0NFTW16V2lVeFEvTnNEbnFPMk8yUkZFOENJbWxhZkJDSWJa?=
 =?utf-8?B?THNpYlIybTZ4ZnZ0cDFKYkFlQm54QVJXSFBiWTBtcDJrUXR4TzBpeWw0MWRO?=
 =?utf-8?B?S29VYTMzVkVaeERHbHp2dE5BODdjTXgzZkN3cVRhVHd2Vk83QjRqN2JHNlRv?=
 =?utf-8?B?dkJLL3kzaGhwaHFwV2pRZ3hLTGpPbU5lMFZhMkY5RTlWcUlsZDdGNzR2Rm5F?=
 =?utf-8?B?WTUzaTY5VEZHVDBkSGJLVDgzN2pUK2h0amI1VW4wQ2M0UGdoaDhOcDNOV3M4?=
 =?utf-8?B?YkhUSjhOc1pQRis2ZU5BTWxtak90ZUZ4aUlFYWhOUVB0emRNTnBuQUMvS0Nm?=
 =?utf-8?B?bWp0bll3NWlJYUUycmlOVkwzZU92N1JLc3hLY1AvS3NWL292bit1dThiVmI5?=
 =?utf-8?B?WFZUMkdYUUJjbkM0KzdIZXg1OUFvRUxVUGdXZ0J0YVg1bnBuRmxrc3YyYndr?=
 =?utf-8?B?TXNRTngvczVQOStRZXpZOFZiT3gwY0FxeU1UTnc2bThQOGVxdHppMUFaT0pN?=
 =?utf-8?B?akRCWUZTZWw0bW8wUG0wR0VleFRvcTZxUGxUVXlYMTl1UkdOOURDUXBzcHpU?=
 =?utf-8?B?Q2JXdGV2WUtmYi96RVozSWFET2F1L1JBdmpQSTk3czZFZnltVkJwMFlpMXhY?=
 =?utf-8?B?MVFUMWJOTDYwYTlFbXFVY3h4cjZ3ZjZuSlZIKzloT2hjZ3QxWE4vdW5WYlFM?=
 =?utf-8?B?MDRtZFpON292YXI1ZzNVTW45bzJpNE1ybUJudUdWcGNGNUtSSGNrWk9BTE1O?=
 =?utf-8?B?U1ZpaWxJSHMxY2t4VzBtemVYRVpMT21tS1lXbW52MUc4YWZncW45K2E5dEJD?=
 =?utf-8?B?MzhjMWR0OExkNlN6U0NBSTlHQVltMk4wcllFR0IyVENmRTFkdjlWZVFPc0NT?=
 =?utf-8?B?akRDQmFjZ2tuc2FUdndQRmpYUU56WUZDWVJSQ3I5U3d5TDNKZi9QLzJwNXVh?=
 =?utf-8?B?YlVid01Tdy80dEF4emEzc2JwZUNqQzlMZWJXdlJpc2V5ZWxrbEFSMGZaRlor?=
 =?utf-8?B?WjRKc2pxUFc2MWpicDY1d2xRazNGQ0FSdzRkS3hNRHR1UzZPWFRQM2ZEQ1pt?=
 =?utf-8?B?UWFJTXBkQkY5b2ZNUFVJQ1ZGN3YvTFhNR0xkNExOdjNsTmdURWx4TVZFL0U0?=
 =?utf-8?B?N2dVQkhrYVVmaWFtc2JmUVloZE9jcHRJV1dpdlNTQ1lIdkdOUFpxTG9nZHhO?=
 =?utf-8?B?Q0pnOStkY1JCcnpOOEF6aTFON1ZiYk1ZNEtuRU9PMWk5NnZCUVIvclpNbVZD?=
 =?utf-8?Q?c5a6A6SGx8Q9l+w1PVDjEvqn/Vx0PvKe?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL1PR11MB5979.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(366016)(1800799024)(376014)(38070700018)(7053199007);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MHMvN1dPajN2bHdRaFQ0WEpkMitCRkZLeGZvTU41Q1dyaDZkbUxmWmN6b0w5?=
 =?utf-8?B?VElNOFdPd0NycXFpd3VVTmRXanJoTW1zNzd5T2RzUTNJbmdKR0NNTXFpMUJt?=
 =?utf-8?B?K3BiT2k4R3AvZUsySkZld08wMncvVWM4ZVV1bTd3WStKNjZPMG1SRlBIWkZj?=
 =?utf-8?B?eERudWhJWkQ5eS9UWnMvUjJJNFdjQ0NzOUl3cTlZaWprSTFUZTBSVi9MK2pi?=
 =?utf-8?B?dzdvSlJHVllUMzFOMWkxZmY3MmxKRFNSYUtLMDU4VS83dnZjd3V0NzkxbmdW?=
 =?utf-8?B?eDM0Sk9adTE3NjB5SDNEZTZlTnFtb1VqdFhZZFhOME5RTlViYW1UTlRmSmZ6?=
 =?utf-8?B?ZFhGcnNKdHZXbndPdGI2dE9pOC9Wa3lXaklRUjRJY1VSeEkwNjE3TS9FNEtF?=
 =?utf-8?B?bzJxTUFyczRNVHlOQkx1RWRtNXcyZi9hbUwxLzJWZDlzL1ZjdHFpSS9xak42?=
 =?utf-8?B?RXF6VVZCdUNZdmVrRytuOU0zdmV4SDFGMG90VXNjN24zWUhyMjBGZ1MrU2x0?=
 =?utf-8?B?L2orRTE4eVZpOXl1eEVrZFVBK2w1Q2tSdnUyUVRQT2dydkw4c1pGMHpDMW1P?=
 =?utf-8?B?S3lIeldOR1dSeE1EZm5RejF2M3RhMURUVDg1MXV3Yk9KbFZjM0NnODdwekZq?=
 =?utf-8?B?RmR3NElucTVMUzFBZlZzVEo5SlJuUjArWENWazk2OWkweXl6MXlSRmNNMVVq?=
 =?utf-8?B?bEhsZzRwNXFPcExLQUVScm41bktIVlhZRnlkWkZJSE5xT2dWNGloM1pnUlJV?=
 =?utf-8?B?YlR2eXdoRGFMMmxKR0V6YzVhcmNqZEUzQnoxdi8xaTIvTHllaUNsblhtMjFy?=
 =?utf-8?B?bnhiR3pNcDdPV0RUNWw5Z1dVTUJFTEFjY25wT2w1ZzRmRy9qLzNhQ3VzeGxM?=
 =?utf-8?B?R3BKYXFqZWtyUU5VWXF6cUw2Z1V5MmRsMEVzSDZpWjlSaEREdGdBZ1NsUVVT?=
 =?utf-8?B?UW1VdDh1ZHB5WCtEbzhJZ1hhMi9DaGpFUWdnSXRldzBlb2RGZGU1ZGd2a3ZN?=
 =?utf-8?B?bHVFNSs5ejVaYlRMWTVDZW5KOUFUU01nOWgyNnZYUERaVVFDaDR4MkdLTUFO?=
 =?utf-8?B?Q3F3MjJ0QnB0RUMxdG84YjRZV2NMN3YxMEJPNGNTSFZHWnp5Nnc5ZWQrS0Z6?=
 =?utf-8?B?YkpFZXF1RHdZM0xIbkdkWEtsN2xidnlqZ1hUaUM1ZlJPR0NiazEyVGZkOEdL?=
 =?utf-8?B?OVgvRnhLYWJkbUhybFNVaHNVM0FCS3Azd2N1bFcxUWN1YlB6VDNlT1JsMGpV?=
 =?utf-8?B?NVJlVHMyZ0Ixd2FrUTVDbVJjYTFYWHI2Z1ZGK0hPeTRyakFOVEd0Wnd5SlJO?=
 =?utf-8?B?MERwc3ZGMEZPbTcrK2hzemJuOU92endUdW5OcGhudGJQRnQweWlWeEhiUCta?=
 =?utf-8?B?Z29XTER6eElEdVhxQnN4SDlzejJEVmxGT2I4bEgrSEJYSU94Q0Q5SCtrVVpk?=
 =?utf-8?B?YnZvaDBkREFDUWFCWmhNV1hFbjdGZFhwVDhDWDAwdjhwV2M3bzJBYjEvMjlw?=
 =?utf-8?B?NERROVEvZXVnZ0FiTnBEQm80NXVkblZMbmpnK05IdzNYMThMMi9OU0xCamhX?=
 =?utf-8?B?L1A1U3NhZXhkWld2cytBTFF3bDdRY1NHU2szanNJK2ZmZ25sVjBDSUx5ZkNN?=
 =?utf-8?B?QjZkUXF4ekZ6Tzh4dHBZS1VOallmR01JY1NicVJIR21PcEVESStybU8rcU9D?=
 =?utf-8?B?bGJGUUdSNWJZMEEzcmpkMWdXQ1ByRmNuS2tlcVZFSHFNdnF1THpsRjBVdTFG?=
 =?utf-8?B?M1ZIa3U4dDhBQjBzdHNvVXVtdjdVTFdMQXNmbzZxbTI1TTNYTGpFVXNQakkv?=
 =?utf-8?B?aytZV0pKOWhMR1E5aXFmbU8xYW5UNUp3c1JWWHBPY3NheTh3eDhsKzQzYmN3?=
 =?utf-8?B?RHhJMElKUWZTa2NxSWlNSjQ4RXl2ZGRpL3M5RUR5VVhzTG1IM1lUZ0FqeUpu?=
 =?utf-8?B?YmdKMlN5TmZFQUFoR2oyQVlMRlAvbW5nZjVZTEVKaWZlcFFSaEREd285S0dz?=
 =?utf-8?B?NnIvQ21McHY1VFBjc1Bna0liT3d5L3E4V0N3VG5rZC9PY3Z1QUpvNlQycmln?=
 =?utf-8?B?RGVXZHFIczFRRUZDbFJ4L0V2K2pKa2s1bmlZR3V4ejNmTGdTeXRpenlNQ3li?=
 =?utf-8?B?ZWxaQW50OFA0YXN0L0h6WEZlMFUzbGRRTzFZNlBBcUt5dytuRWpmL3E5L1RJ?=
 =?utf-8?B?eXc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL1PR11MB5979.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 205066db-f419-4e3d-651e-08dd6cf40b1f
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Mar 2025 05:55:57.0716 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ELwxDyoula7+MS3/rqgfoBMOVGJEsMr6fA/EfmSI3ab8CstPM7IDzrW/fSG7uQwqBTaMGqjDumnkA/eMi2IV9A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5044
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
IDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IFNlbnQ6IEZyaWRheSwgTWFyY2ggMjEsIDIw
MjUgNzoxNSBQTQ0KPiBUbzogaW50ZWwteGVAbGlzdHMuZnJlZWRlc2t0b3Aub3JnOyBNYW5uYSwg
QW5pbWVzaA0KPiA8YW5pbWVzaC5tYW5uYUBpbnRlbC5jb20+OyBpbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnDQo+IFN1YmplY3Q6IFJlOiBbUEFUQ0hdIGRybS9pOTE1L3BzcjogQWRkIFBT
UiBwYXVzZS9yZXN1bWUgcmVmZXJlbmNlIGNvdW50DQo+IA0KPiBPbiBGcmksIDIwMjUtMDMtMjEg
YXQgMDk6NDQgKzAwMDAsIE1hbm5hLCBBbmltZXNoIHdyb3RlOg0KPiA+DQo+ID4NCj4gPiA+IC0t
LS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+ID4gPiBGcm9tOiBJbnRlbC1nZnggPGludGVsLWdm
eC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmDQo+ID4gPiBPZiBKb3Vu
aSBIw7ZnYW5kZXINCj4gPiA+IFNlbnQ6IEZyaWRheSwgTWFyY2ggMTQsIDIwMjUgMTI6MjAgUE0N
Cj4gPiA+IFRvOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnOyBpbnRlbC14ZUBsaXN0
cy5mcmVlZGVza3RvcC5vcmcNCj4gPiA+IENjOiBIb2dhbmRlciwgSm91bmkgPGpvdW5pLmhvZ2Fu
ZGVyQGludGVsLmNvbT4NCj4gPiA+IFN1YmplY3Q6IFtQQVRDSF0gZHJtL2k5MTUvcHNyOiBBZGQg
UFNSIHBhdXNlL3Jlc3VtZSByZWZlcmVuY2UgY291bnQNCj4gPiA+DQo+ID4gPiBXZSBoYXZlIG5v
dyBzZWVuIHRoaXM6DQo+ID4gPg0KPiA+ID4gPDQ+IFsyMTIwLjQzNDE1M10gaTkxNSAwMDAwOjAw
OjAyLjA6IFtkcm1dIGRybV9XQVJOX09OKHBzci0NCj4gPnBhdXNlZCkNCj4gPiA+IDw0PiBbMjEy
MC40MzQxOTZdIFdBUk5JTkc6IENQVTogMyBQSUQ6IDQ0MzAgYXQNCj4gPiA+IGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmM6MjIyNw0KPiA+ID4gaW50ZWxfcHNyX3BhdXNl
KzB4MTZlLzB4MTgwIFtpOTE1XQ0KPiA+ID4NCj4gPiA+IENvbW1lbnQgZm9yIGRybV9XQVJOX09O
KGRpc3BsYXktPmRybSwgcHNyLT5wYXVzZWQpIGluDQo+ID4gPiBpbnRlbF9wc3JfcGF1c2Ugc2F5
czoNCj4gPiA+DQo+ID4gPiAiSWYgd2UgZXZlciBoaXQgdGhpcywgd2Ugd2lsbCBuZWVkIHRvIGFk
ZCByZWZjb3VudCB0byBwYXVzZS9yZXN1bWUiDQo+ID4gPg0KPiA+ID4gVGhpcyBwYXRjaCBpcyBp
bXBsZW1lbnRpbmcgUFNSIHBhdXNlL3Jlc3VtZSByZWZjb3VudC4NCj4gPiA+DQo+ID4gPiBTaWdu
ZWQtb2ZmLWJ5OiBKb3VuaSBIw7ZnYW5kZXIgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCj4g
PiA+IC0tLQ0KPiA+ID4gwqAuLi4vZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVz
LmjCoMKgwqAgfMKgIDIgKy0NCj4gPiA+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9wc3IuY8KgwqDCoMKgwqAgfCAyNiArKysrKysrKystLS0tLS0NCj4gPiA+IC0tLS0NCj4g
PiA+IMKgMiBmaWxlcyBjaGFuZ2VkLCAxMyBpbnNlcnRpb25zKCspLCAxNSBkZWxldGlvbnMoLSkN
Cj4gPiA+DQo+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kaXNwbGF5X3R5cGVzLmgNCj4gPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgNCj4gPiA+IGluZGV4IDk5YTZmZDI5MDBiOWMuLjY1Yzgw
OGJiYTFjNmMgMTAwNjQ0DQo+ID4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2Rpc3BsYXlfdHlwZXMuaA0KPiA+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgNCj4gPiA+IEBAIC0xNjIwLDcgKzE2MjAsNyBA
QCBzdHJ1Y3QgaW50ZWxfcHNyIHsNCj4gPiA+IMKgCWJvb2wgc2lua19zdXBwb3J0Ow0KPiA+ID4g
wqAJYm9vbCBzb3VyY2Vfc3VwcG9ydDsNCj4gPiA+IMKgCWJvb2wgZW5hYmxlZDsNCj4gPiA+IC0J
Ym9vbCBwYXVzZWQ7DQo+ID4gPiArCWludCBwYXVzZV9jb3VudGVyOw0KPiA+ID4gwqAJZW51bSBw
aXBlIHBpcGU7DQo+ID4gPiDCoAllbnVtIHRyYW5zY29kZXIgdHJhbnNjb2RlcjsNCj4gPiA+IMKg
CWJvb2wgYWN0aXZlOw0KPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfcHNyLmMNCj4gPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9wc3IuYw0KPiA+ID4gaW5kZXggNGU5MzhiYWQ4MDhjYy4uNGQ0ZWNmNzU1NWI2NiAxMDA2
NDQNCj4gPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMN
Cj4gPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4g
PiA+IEBAIC0yMDI0LDcgKzIwMjQsNyBAQCBzdGF0aWMgdm9pZCBpbnRlbF9wc3JfZW5hYmxlX2xv
Y2tlZChzdHJ1Y3QNCj4gPiA+IGludGVsX2RwICppbnRlbF9kcCwNCj4gPiA+DQo+ID4gPiDCoAlp
bnRlbF9wc3JfZW5hYmxlX3NvdXJjZShpbnRlbF9kcCwgY3J0Y19zdGF0ZSk7DQo+ID4gPiDCoAlp
bnRlbF9kcC0+cHNyLmVuYWJsZWQgPSB0cnVlOw0KPiA+ID4gLQlpbnRlbF9kcC0+cHNyLnBhdXNl
ZCA9IGZhbHNlOw0KPiA+ID4gKwlpbnRlbF9kcC0+cHNyLnBhdXNlX2NvdW50ZXIgPSAwOw0KPiA+
ID4NCj4gPiA+IMKgCS8qDQo+ID4gPiDCoAkgKiBMaW5rX29rIGlzIHN0aWNreSBhbmQgc2V0IGhl
cmUgb24gUFNSIGVuYWJsZS4gV2UgY2FuIGFzc3VtZQ0KPiA+ID4gbGluayBAQCAtMjIxMCw3ICsy
MjEwLDYgQEAgdm9pZCBpbnRlbF9wc3JfZGlzYWJsZShzdHJ1Y3QgaW50ZWxfZHANCj4gPiA+ICpp
bnRlbF9kcCwNCj4gPiA+IMKgICovDQo+ID4gPiDCoHZvaWQgaW50ZWxfcHNyX3BhdXNlKHN0cnVj
dCBpbnRlbF9kcCAqaW50ZWxfZHApwqAgew0KPiA+ID4gLQlzdHJ1Y3QgaW50ZWxfZGlzcGxheSAq
ZGlzcGxheSA9DQo+ID4gPiB0b19pbnRlbF9kaXNwbGF5KGludGVsX2RwKTsNCj4gPiA+IMKgCXN0
cnVjdCBpbnRlbF9wc3IgKnBzciA9ICZpbnRlbF9kcC0+cHNyOw0KPiA+ID4NCj4gPiA+IMKgCWlm
ICghQ0FOX1BTUihpbnRlbF9kcCkgJiYgIUNBTl9QQU5FTF9SRVBMQVkoaW50ZWxfZHApKSBAQA0K
PiA+ID4gLQ0KPiA+ID4gMjIyMywxMiArMjIyMiwxMCBAQCB2b2lkIGludGVsX3Bzcl9wYXVzZShz
dHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKQ0KPiA+ID4gwqAJCXJldHVybjsNCj4gPiA+IMKgCX0N
Cj4gPiA+DQo+ID4gPiAtCS8qIElmIHdlIGV2ZXIgaGl0IHRoaXMsIHdlIHdpbGwgbmVlZCB0byBh
ZGQgcmVmY291bnQgdG8NCj4gPiA+IHBhdXNlL3Jlc3VtZQ0KPiA+ID4gKi8NCj4gPiA+IC0JZHJt
X1dBUk5fT04oZGlzcGxheS0+ZHJtLCBwc3ItPnBhdXNlZCk7DQo+ID4gPiAtDQo+ID4gPiAtCWlu
dGVsX3Bzcl9leGl0KGludGVsX2RwKTsNCj4gPiA+IC0JaW50ZWxfcHNyX3dhaXRfZXhpdF9sb2Nr
ZWQoaW50ZWxfZHApOw0KPiA+ID4gLQlwc3ItPnBhdXNlZCA9IHRydWU7DQo+ID4gPiArCWlmIChp
bnRlbF9kcC0+cHNyLnBhdXNlX2NvdW50ZXIrKyA9PSAwKSB7DQo+ID4gPiArCQlpbnRlbF9wc3Jf
ZXhpdChpbnRlbF9kcCk7DQo+ID4gPiArCQlpbnRlbF9wc3Jfd2FpdF9leGl0X2xvY2tlZChpbnRl
bF9kcCk7DQo+ID4gPiArCX0NCj4gPiA+DQo+ID4gPiDCoAltdXRleF91bmxvY2soJnBzci0+bG9j
ayk7DQo+ID4gPg0KPiA+ID4gQEAgLTIyNTEsMTMgKzIyNDgsMTQgQEAgdm9pZCBpbnRlbF9wc3Jf
cmVzdW1lKHN0cnVjdCBpbnRlbF9kcA0KPiA+ID4gKmludGVsX2RwKQ0KPiA+ID4NCj4gPiA+IMKg
CW11dGV4X2xvY2soJnBzci0+bG9jayk7DQo+ID4gPg0KPiA+ID4gLQlpZiAoIXBzci0+cGF1c2Vk
KQ0KPiA+ID4gLQkJZ290byB1bmxvY2s7DQo+ID4gPiArCWlmICghcHNyLT5lbmFibGVkKSB7DQo+
ID4NCj4gPiBBbnkgcmVhc29uIG5vdCB0byBjaGVjayBpbnRlbF9kcC0+cHNyLnBhdXNlX2NvdW50
ZXIgaGVyZSwgbWF5YmUgd2UgY2FuDQo+ID4gY2hlY2sgZm9yICFwc3ItPmVuYWJsZWQgJiYgcHNy
LT5wYXVzZV9jb3VudGVyID4gMC4NCj4gPiBPdGhlciBjaGFuZ2VzIGFyZSBMR1RNLg0KPiANCj4g
V2hlcmUgeW91IHdvdWxkIGRlY3JlYXNlIHBhdXNlX2NvdW50ZXI/IEFyZSB5b3UgY29uY2VybmVk
IG9uDQo+IHVuYmFsYW5jZWQgcGF1c2UvcmVzdW1lIGNhbGxzPw0KDQpZZXMgd2l0aG91dCBpbnRl
bF9wc3JfcGF1c2UoKSBnZXR0aW5nIGNhbGxlZCBpZiByZXN1bWUgZnVuY3Rpb24gaXMgY2FsbGVk
IHdoaWxlIHBzciBpcyBlbmFibGVkIGhlcmUgcGF1c2VfY291bnRlciB3aWxsIGJlIGRlY3JlbWVu
dGVkIHdoaWNoIG1pZ2h0IHJlc3VsdCB1bmJhbGFuY2VkIHNpdHVhdGlvbi4NCldlIG1heSBub3Qg
aGl0IHRoZSBhYm92ZSBzY2VuYXJpbyBidXQgZ29vZCB0byBhZGQgYSBjaGVjayBpZiAgcGF1c2Vf
Y291bnRlciA+IDAgdGhlbiBvbmx5IGxhdGVyIGRlY3JlbWVudCBpdCBpbiB0aGUgc2FtZSBwbGFj
ZSBjdXJyZW50bHkgYWRkZWQuDQoNClJlZ2FyZHMsDQpBbmltZXNoDQoNCj4gDQo+IEJSLA0KPiAN
Cj4gSm91bmkgSMO2Z2FuZGVyDQo+IA0KPiA+DQo+ID4gUmVnYXJkcywNCj4gPiBBbmltZXNoDQo+
ID4NCj4gPiA+ICsJCW11dGV4X3VubG9jaygmcHNyLT5sb2NrKTsNCj4gPiA+ICsJCXJldHVybjsN
Cj4gPiA+ICsJfQ0KPiA+ID4NCj4gPiA+IC0JcHNyLT5wYXVzZWQgPSBmYWxzZTsNCj4gPiA+IC0J
aW50ZWxfcHNyX2FjdGl2YXRlKGludGVsX2RwKTsNCj4gPiA+ICsJaWYgKC0taW50ZWxfZHAtPnBz
ci5wYXVzZV9jb3VudGVyID09IDApDQo+ID4gPiArCQlpbnRlbF9wc3JfYWN0aXZhdGUoaW50ZWxf
ZHApOw0KPiA+ID4NCj4gPiA+IC11bmxvY2s6DQo+ID4gPiDCoAltdXRleF91bmxvY2soJnBzci0+
bG9jayk7DQo+ID4gPiDCoH0NCj4gPiA+DQo+ID4gPiBAQCAtMzMyMiw3ICszMzIwLDcgQEAgdm9p
ZCBpbnRlbF9wc3JfZmx1c2goc3RydWN0IGludGVsX2Rpc3BsYXkNCj4gPiA+ICpkaXNwbGF5LA0K
PiA+ID4gwqAJCSAqIHdlIGhhdmUgdG8gZW5zdXJlIHRoYXQgdGhlIFBTUiBpcyBub3QgYWN0aXZh
dGVkIHVudGlsDQo+ID4gPiDCoAkJICogaW50ZWxfcHNyX3Jlc3VtZSgpIGlzIGNhbGxlZC4NCj4g
PiA+IMKgCQkgKi8NCj4gPiA+IC0JCWlmIChpbnRlbF9kcC0+cHNyLnBhdXNlZCkNCj4gPiA+ICsJ
CWlmIChpbnRlbF9kcC0+cHNyLnBhdXNlX2NvdW50ZXIpDQo+ID4gPiDCoAkJCWdvdG8gdW5sb2Nr
Ow0KPiA+ID4NCj4gPiA+IMKgCQlpZiAob3JpZ2luID09IE9SSUdJTl9GTElQIHx8DQo+ID4gPiAt
LQ0KPiA+ID4gMi40My4wDQo+ID4NCg0K
