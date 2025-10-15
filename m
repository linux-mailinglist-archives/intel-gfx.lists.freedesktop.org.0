Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 68E8BBDD5CF
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Oct 2025 10:23:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE88A10E73A;
	Wed, 15 Oct 2025 08:23:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BDOgyFVS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6848210E283;
 Wed, 15 Oct 2025 08:23:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760516632; x=1792052632;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=Cu9ozduzhsQvBEuAgHzyDSq8ctEWCBm9MjMwCDGEpFU=;
 b=BDOgyFVSD2y6azO0BsFuUDIgP/xxDchio++n2LF3F1Ht9yhsE71pxwU1
 cd83+/t7huvCdg5SPRuGA8KdRJ1JjftOp6+x6rhi767Feydji7RRdjUnZ
 nCqYqd5AN2iCfvbTuFHsfl999mEO5iYEc+VMAtXVbtm4zNfXqSbpFdvrS
 4iBw93mOZOcXEiSVr6EcsDQspg+3P3SEUQ5ksShc2dfVB+qkOYwM53d5i
 ZcVK3JQJYAfl2SvW9b0aegN4bzODBvWa0nGvF0F0V4+w2Gvmu3DwGsQ+m
 wtwKQP/7XfFrMn3yCRxk+lb3lI87vV7tM6hygMpGSPnOF+eeOpT1yMvN7 A==;
X-CSE-ConnectionGUID: nGb4TY2YRzaYEdRjIjf16Q==
X-CSE-MsgGUID: LQDnfUcQQ5G8swT6XN9oDg==
X-IronPort-AV: E=McAfee;i="6800,10657,11582"; a="88152779"
X-IronPort-AV: E=Sophos;i="6.19,230,1754982000"; d="scan'208";a="88152779"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2025 01:23:52 -0700
X-CSE-ConnectionGUID: SdFEQmwCTzKHeueBJc+1hg==
X-CSE-MsgGUID: Wgw1z15pQV2dybwGISlqbA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,230,1754982000"; d="scan'208";a="181325938"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2025 01:23:52 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 15 Oct 2025 01:23:51 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 15 Oct 2025 01:23:51 -0700
Received: from CO1PR03CU002.outbound.protection.outlook.com (52.101.46.1) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 15 Oct 2025 01:23:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Ydris1N98+KQQo670P/ZGkDc1abnCPE0wg/tHQl+3BTJHz0Tp4X8ilKLDGqv1PR9CcBIKSsDt8qNlutq6RUGqbcdtlUzpxrArn9bBpX7p4p2hoo2Kz+42iDop5Zu4JNE1tltibF5+jVJimXXEYEpAfRJCshOUEtH/eUkKt7BjPuHZtWUyXLwvznPhKnAW4+jnksUcgl+4no7H+EmKVwmIsABN/iO8pQLp8A3EJ+TE3yYY5GSxUXTgIsyX705xK9bzVI5lBSnQnoqKuM1BLLHBO4b21PrcZdHJWwO+XgAwVsCMSfZ51l+vAUkoHzvg4Oc9CO5C6+Uj3Cl5ayx82kJRQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Cu9ozduzhsQvBEuAgHzyDSq8ctEWCBm9MjMwCDGEpFU=;
 b=mA0Dh5PEbPYAfyPytnGypnQJRRWWcFksHTuWG8vj1bowLmNepZKsuAVYIzkMyKA/uZklZ9Lm/+uqNzkJOqS2Vah7KI+b35vacicIdNUvYKt5n34QcAtoS+L4Suy6wTVgnoaFRbFNKr5RbkqdShZw5gBpj3wpePk0h8tRKrXLDg5YsGQ3hqdUeci9dGDZHdG3q+u18uT7nQaqORIsnLFqjFieaElAW1nLExjfs3SOnZ63FrXbRqLAeqOZoW0A0PkxiVmKhWiIOZ55JboWlmyUrc0SM9utBCz0gG03anZ2VJw2rP81lEy9Scmk+aYAN8xU62vvl5oiOmT8YSmSrpcweg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from LV2PR11MB6024.namprd11.prod.outlook.com (2603:10b6:408:17a::16)
 by CY8PR11MB6937.namprd11.prod.outlook.com (2603:10b6:930:5b::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9228.11; Wed, 15 Oct
 2025 08:23:48 +0000
Received: from LV2PR11MB6024.namprd11.prod.outlook.com
 ([fe80::dc22:ef1e:53e2:f00f]) by LV2PR11MB6024.namprd11.prod.outlook.com
 ([fe80::dc22:ef1e:53e2:f00f%4]) with mapi id 15.20.9203.009; Wed, 15 Oct 2025
 08:23:48 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>, "Manna,
 Animesh" <animesh.manna@intel.com>
Subject: Re: [PATCH 08/10] drm/i915/psr: Check if final vblank is sufficient
 for PSR features
Thread-Topic: [PATCH 08/10] drm/i915/psr: Check if final vblank is sufficient
 for PSR features
Thread-Index: AQHcPaZT44GOBlBLuEuyzQyRWpIWGLTC3sAA
Date: Wed, 15 Oct 2025 08:23:48 +0000
Message-ID: <6aa087759e3b2467ebe47d25309afdc56a4e986b.camel@intel.com>
References: <20251015072217.1710717-1-ankit.k.nautiyal@intel.com>
 <20251015072217.1710717-9-ankit.k.nautiyal@intel.com>
In-Reply-To: <20251015072217.1710717-9-ankit.k.nautiyal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: LV2PR11MB6024:EE_|CY8PR11MB6937:EE_
x-ms-office365-filtering-correlation-id: ddfb422b-5c60-411a-8fe4-08de0bc42a49
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|10070799003|1800799024|366016|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?MlhCK2N6UU5QTnNtUTBUZTltcktaSGZKS1MvR1kwVTdWcTFqamg1MTZyQTly?=
 =?utf-8?B?bzJFQ0kvTnVtYWhNT1VFa012RTF0U2Frc09iYi91Mi9EK3JTYzhOQzQ2a0Vx?=
 =?utf-8?B?ZmdhVFMybUJhRkFiVkVxcmtJREFVSHd0cjBkbklpeWJ3MEczTG9uSkdhWjZ4?=
 =?utf-8?B?eExTdVczbE80MWFVRjIxMW0rMWNXTVAzRjFITUlaSEhtd29ETlZ5YnQ0Mk11?=
 =?utf-8?B?RC9WREJSc05GUVY2L3N4WjRPQkhuYWJ5RDJUaGxtMVNDQ3NMdmphclNZd1dK?=
 =?utf-8?B?TnhJR2JNR2pQaXBlektWaUdTc05Dc1RxaEdRUXZIWUg4TElxb3lVcUtKbnZT?=
 =?utf-8?B?dW1KK2FrMWFqQlhReld6QXRad2FhakpRSmcwN243Z20yN0JxOStxckh5cUJn?=
 =?utf-8?B?QnFpVGt2RkIzT0swMHRmSWF4V0JvdFFITXZMSnlSNGx6cFYzTVJHL0Q0by9m?=
 =?utf-8?B?MWxxYVp5NjM4WU9VSFlEY2JMTmtvQXBQRmdoNGpxQ2pVbTkwc1NmRnZKSVpV?=
 =?utf-8?B?ckVjZVI1a2x3L2dZV1lma2pJWVg5OEZzZmoxa0RVMFZ5RittOW9JUUVLR1BO?=
 =?utf-8?B?T2dTSmJ4cWVTZEVLbm9IOTllNk9SQmtQeEkzTTNGMXJEQVF2cGxJSzl3M1lJ?=
 =?utf-8?B?U0hrckk0a0ZFenYxRjg3SjlGMjlKcHBwYkdHTGpScXh6Y0NIZVBUZ3ZGdnJT?=
 =?utf-8?B?R29oUzJyYjZPNlAwM2pTc1ZwZi8rdy9zTDhBSmFyZ0ZnT2NqT0hrV0MzclBk?=
 =?utf-8?B?WnBnNG4vbG51Sk5DZDdXZHpnRm54ZWowVmp4cHRRQ1RxdjRYTnVXNXBsS01j?=
 =?utf-8?B?V0xtSENSVEI5OFlCbHR2N3oyclhZZWFheE1zQzlZL1NqV0lQMFhHMkswbkd0?=
 =?utf-8?B?a2xUQng2eTVBNXQyam1jeUFOWld3Zm1QSlJ2My9yclFZZFJ0S0F0RzFmOU9x?=
 =?utf-8?B?ME5wRFd2VWhWSnl5aG04QVZBZVB0VEJPeTU4UnJTdUJtWGpscmhDYjZLb25S?=
 =?utf-8?B?RjNpOUgzZGthZTI3TXAwZkpjWXpxT2I0czJwQU94M1FNNWhacHBNQXV3WVI3?=
 =?utf-8?B?ZUxTVC9qdDEraHZsb3BsRENBZ3VXNzd6OGQ0UHBBUFNkWjFtdEg0UU1XVmFB?=
 =?utf-8?B?K1ZtQlNwbUs1aXYvZ3ROSjl2c2RIeEpkUXR0QUkyZEpuMzBXZU1yWWVhQzE5?=
 =?utf-8?B?cGRhNzhTbW8xVExYdm9mdHdWd0RkdWJHRnlIWEdtc0lOOXg0ZkFqU2tHa2RC?=
 =?utf-8?B?T3hOT1pHMnJvTDQ0R0svbW9Yd0VoUldBSEppVVBUK0pMdVV4SVUrN2wwdTdi?=
 =?utf-8?B?R1pteXRNaFlCV1ZXR2E1R2dVRWlmaUF0MGlOZUM2aVBpYkVHemw0dzFORFE4?=
 =?utf-8?B?ampXZXVTa3lEa2ZISWJTQWJvQXQyRytkeFlheFRCd1BLK2J1NnFiSFNXNFVE?=
 =?utf-8?B?TTVKTm1tdGcwbmtOZC9zdTJwa0I2eUxzNEU5NWErSG1CTld1d1pGQzFNVEp4?=
 =?utf-8?B?c2kvNDhBUElqdTJhUzNEVmYvYnZtZUJGckMwcUkyMHR2RmVvZXFLNm0xUmU1?=
 =?utf-8?B?Qk1oQ2xlVkNCM1Rway9ybVgwK1VpOEt5QmtWdFFmSTJZaVlxL3NVU2p5djJP?=
 =?utf-8?B?bDU2TEFUTXMzTEF3L3hYOXBOajJDZmMvWHNWV2FDS25xSEdOd21kYmFLU3FV?=
 =?utf-8?B?WmZzNnBlSXdjcXhmWHRaM0FrNXZJSVZrdTRqelh2MCtwY1c0c3pQTWkwVlJv?=
 =?utf-8?B?ZUx2dFNPb2lKeW5aRi9vK3oxQWVsMkRzbjBDbGc5UnVEaTFhTmtkSWcwT2to?=
 =?utf-8?B?V1hSYkZ6L282K0RTWW9CRjdFMnpwKytOUWxBUGRZN3lqRSt5bFVJZmpaMDN6?=
 =?utf-8?B?bStyald5NEpMUHVtU08zR21VTEJRM3pGQUVOZjJReVNlUnZiVzJFcVdKY1lv?=
 =?utf-8?B?K0JzM0JkNGV4ek5EWHRPSmU4c052bnNJZ3lMODBOdWQ0VElpMXNpRjVGZHNk?=
 =?utf-8?B?bDRIVkdQUGFLUTRHdGd1WTVqL21yM0o1bkpQV1BQNDByQldCSExuSXVaYzZa?=
 =?utf-8?Q?A/so3g?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:LV2PR11MB6024.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(10070799003)(1800799024)(366016)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?elFyOEpaWDRSYVdBeVZGbDRvU1MxWnVxV1hYNEJSS2NwcHUwWUQ2ck5JOG1i?=
 =?utf-8?B?b0NkN0lSZjhPMWNTRmNHL3NCZGZTT3JEOVdNU0lqTXkvSUIydGZqSjRpWVZx?=
 =?utf-8?B?QmJnU1MvZ2kybjk0cXIyYlRmejEyVkc2Q25MbTM3NmFKSWN2bVY1L3Evd0ds?=
 =?utf-8?B?NkJLcEhRMEpTemxKOGIzN0dMM1JCdXFJYm5wbWFNd1JpVzc0SWtTT1B5TzdS?=
 =?utf-8?B?NUhPNFJ6dGJ0VEREMHdDVDdzYVZpQ0NXeHdsYklVY2dmN1Aweis4V2pMRnZN?=
 =?utf-8?B?cFNvKytyU3pYV1B4cTl0cjMvbjZoVldVcEhGZk5OQXZuaGNvcU9kZ21lNHNO?=
 =?utf-8?B?ZXpYNUxnb2VNV2J6eG14ditZSHI5ZE95dkM3VThjMHJzSUt2NFdieHVLek5R?=
 =?utf-8?B?M2ZGallGcm5GaFhCUnZOZnA3SldvUDU4RlNSc1Z6YkppalQyQ21BdGs1WUEv?=
 =?utf-8?B?YUJqNFMyM1RsSkZiOVdta1RnbXlUMlNiY1A4UTdUMUhqeVUyaE11SG93K2JY?=
 =?utf-8?B?UzVEN0lqZDEycldtNWxnVk8xQjhoN29lOURSVEJSRkNNZGFwOFo2Y29mMkU4?=
 =?utf-8?B?WXFBT29WdVVsOWxOanFSb25ERkRNS216c0pzMnlZQnFDSDJ3bWN6NStxRHBN?=
 =?utf-8?B?UUFOZ3JSQmc0Q3pIOXRORTZJbWZUZnlVNVY1d3ZGTWxTMWdDTDB2K09KblJR?=
 =?utf-8?B?QjJjZ0FTWEpWcHEzRHZiWlV2ZlRDVEFHZ1V3OE1QYlh0MWtNeHBVQlc1N29M?=
 =?utf-8?B?MWRXd1NvUDNOVGNhMEhMM0NFZ3FLVEU1SXhKNTlLR210L3JzckdpdkYyOFgy?=
 =?utf-8?B?c0pxQ1lRem4vMlREMzZVNWpJMURHdDk5YUdyMURnSTh0NFNhUUJBLzMvOGtO?=
 =?utf-8?B?Q09DRDFMOFc3YXhscnBSdndnS29JRjZ5U0sxa3VnNEJ3TkZSckNGYi8rUDhW?=
 =?utf-8?B?ZGdXa3RCTkpoUld5V1o4K0JzY09HcjQ0dFdPTjJSWk54MnhYVEZVU0VCc0My?=
 =?utf-8?B?MllHeC9ZL0dnTkFSNkV4SmRCTHBKcWNxZVk1ejVkdXNLUCtJVi9UT3RHVzVq?=
 =?utf-8?B?YWdaTkpMbklWN2JET0I3OXJTdWNhM1pmYjdkRHR1VjdYcURQWkZZWU5pRUgz?=
 =?utf-8?B?aktmMWhOMXlRaURRL293WmpFNEE4Tlo4dTh5RXNBd3d4aTQzZVlSUVNLQjFC?=
 =?utf-8?B?RWtyajRTVnRvZWwxZnJkRGQ0ZXc1N0ZyRCt6SC9SV1V1RmdaM3NlazB2b0lY?=
 =?utf-8?B?WWkveVNsSVVlN1VuK2lZd1VDVTZXemFkRTlGMm1mN0RyZ1A3UzR2eFpDekZ3?=
 =?utf-8?B?NmRMRzNseDRGY0VqUnBZWFJSUnVyRThXQ3NGQnRsWC82NjdLVXJDSlU4TEZ6?=
 =?utf-8?B?SityUS8za1RsSXI1VGpYM25MTFlrT3hxNTZpa0k3RjNuekFyRDhqRGxhRXlQ?=
 =?utf-8?B?ZkZrYmNEbGw2YU5IakU1NlVkQU55TVp1T1BMNU5xMW8wd3lmT21Dd1Q2b2Vj?=
 =?utf-8?B?M21HaTY5N2lqamltZzNOQytSZFp4TXdMaDd3NHZGUFBIam5HeUdYd2hoOHdC?=
 =?utf-8?B?REQ1dWt0MTNEMTlVbldrNmpKbkVNdVU5RHdPcUFRUzdtT3BVTi9FTWFGVkJT?=
 =?utf-8?B?TmNtYkwva29MTjFrdVpYQThBOFRyMFR3ODQ0MmJUOTFPWC9qSU8xYXF6eEhz?=
 =?utf-8?B?cW9VWktrN2g0RmVRWnlUSUtrVWp3OEt5YTh6bzNQMnQ0TkxOM1lRNmtmb3R0?=
 =?utf-8?B?TUdUNUtUL2tzRTFkRm1LZ0RyZ2xrOVVkeHNud3h6YWJzODA4Z0lHQnRIcmdr?=
 =?utf-8?B?eVllcFNCZ291MmtGWmlIQVJ5ZG9BK0FtcVFIZXpqSDFiVXNOODZnMDU0UHg3?=
 =?utf-8?B?WGt3VlJ4Wk5PNVpHWDloVmVSTmlmcDRXK0o1OTFGS3RuRTEvYWZBKzBOS2s0?=
 =?utf-8?B?Ym04VnkycGtnL3ZOaWNzV2RyanZRRmVBek95RWMvdW82NFlJU1ZMQUpyWXR3?=
 =?utf-8?B?eVlSWFMzQWlQUzBnU21VOVZWRTFrc09OQnRZcTJWdTFyRVVyT1IwRWU0QlIw?=
 =?utf-8?B?aTdCb05XZjN0SmdaSWUwT1Joc3U1Wk5PSmRnR1JkblBhdERwdjFTVTIxOFhn?=
 =?utf-8?B?M3B1RlBabFk3bVZDNGY3cVl3S0lhNTF3UGg1bFozbU03UHo5TmtMVWVMemtq?=
 =?utf-8?B?dTFLdUptM3NZOVpHYmlkN2lWbS83YzRaVjFHQWZEenVqZC9EMWt2c3VhazBM?=
 =?utf-8?B?Y3JnTU55dFEzOWYvdzJubHVWV2pnPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <49008360809A90469CC64C8F67C2A047@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: LV2PR11MB6024.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ddfb422b-5c60-411a-8fe4-08de0bc42a49
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Oct 2025 08:23:48.3583 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: cDpT3OLr73JK/U2FaTwWbEt4CwLdutyXBZOGF7JxDUcXs5cL/DvF+rY/zxzVDxbkyDGBuho7SolObWY38WFoQww7nj1A2SXCEhGcifCrSCM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB6937
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

T24gV2VkLCAyMDI1LTEwLTE1IGF0IDEyOjUyICswNTMwLCBBbmtpdCBOYXV0aXlhbCB3cm90ZToN
Cj4gQ3VycmVudGx5LCB3YWtlIGxpbmUgbGF0ZW5jeSBjaGVja3MgcmVseSBvbiB0aGUgdmJsYW5r
IGxlbmd0aCwNCj4gd2hpY2ggZG9lcyBub3QgYWNjb3VudCBmb3IgZWl0aGVyIHRoZSBleHRyYSB2
YmxhbmsgZGVsYXkgZm9yIGljbC90Z2wNCj4gb3IgZm9yDQo+IHRoZSBvcHRpbWl6ZWQgZ3VhcmRi
YW5kIHdoaWNoIHdpbGwgY29tZSBpbnRvIHBpY3R1cmUgbGF0ZXIgYXQgc29tZQ0KPiBwb2ludC4N
Cj4gDQo+IFZhbGlkYXRlIHdoZXRoZXIgdGhlIGZpbmFsIHZibGFuayAod2l0aCBleHRyYSB2Ymxh
bmsgZGVsYXkpIG9yDQo+IGd1YXJkYmFuZA0KPiBpcyBzdWZmaWNpZW50IHRvIHN1cHBvcnQgd2Fr
ZSBsaW5lIGxhdGVuY2llcyByZXF1aXJlZCBieSBQYW5lbCBSZXBsYXkNCj4gYW5kDQo+IFBTUjIg
c2VsZWN0aXZlIHVwZGF0ZS4gRGlzYWJsZSB0aGUgUFNSIGZlYXR1cmVzIGlmIHRoZWlyIHdha2UN
Cj4gcmVxdWlyZW1lbnRzDQo+IGNhbm5vdCBiZSBhY2NvbW9kYXRlZC4NCj4gDQo+IHYyOiBBZGQg
Y29tbWVudHMgY2xhcmlmeWluZyB3YWtlIGxpbmUgY2hlY2tzIGFuZCByYXRpb25hbGUgZm9yIG5v
dA0KPiDCoMKgwqAgcmVzZXR0aW5nIFNDTC4gKEpvdW5pKQ0KPiB2MzogUmVzZXQgb3RoZXIgcHNy
IGZsYWdzIGJhc2VkIG9uIGZlYXR1cmVzIHRoYXQgYXJlIGRyb3BwZWQuIChKb3VuaSkNCj4gdjQ6
IFVwZGF0ZSBjb21taXQgbWVzc2FnZS4NCj4gDQo+IFNpZ25lZC1vZmYtYnk6IEFua2l0IE5hdXRp
eWFsIDxhbmtpdC5rLm5hdXRpeWFsQGludGVsLmNvbT4NCj4gQ2M6IEFuaW1lc2ggTWFubmEgPGFu
aW1lc2gubWFubmFAaW50ZWwuY29tPg0KPiBDYzogSm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dh
bmRlckBpbnRlbC5jb20+DQo+IC0tLQ0KPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfcHNyLmMgfCA3OCArKysrKysrKysrKysrKysrKysrKystDQo+IC0tDQo+IMKgMSBmaWxl
IGNoYW5nZWQsIDcwIGluc2VydGlvbnMoKyksIDggZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gaW5kZXggMzgzZTZkYzFlZDYz
Li44MTZhZDY3ZTMzY2QgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfcHNyLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9wc3IuYw0KPiBAQCAtMTQwNSw2ICsxNDA1LDIwIEBAIGludCBfaW50ZWxfcHNyX21pbl9zZXRf
Y29udGV4dF9sYXRlbmN5KGNvbnN0DQo+IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0
YXRlDQo+IMKgCQlyZXR1cm4gMTsNCj4gwqB9DQo+IMKgDQo+ICtzdGF0aWMgYm9vbCBfd2FrZV9s
aW5lc19maXRfaW50b192YmxhbmsoY29uc3Qgc3RydWN0DQo+IGludGVsX2NydGNfc3RhdGUgKmNy
dGNfc3RhdGUsDQo+ICsJCQkJCWludCB2YmxhbmssDQo+ICsJCQkJCWludCB3YWtlX2xpbmVzKQ0K
PiArew0KPiArCWlmIChjcnRjX3N0YXRlLT5yZXFfcHNyMl9zZHBfcHJpb3Jfc2NhbmxpbmUpDQo+
ICsJCXZibGFuayAtPSAxOw0KPiArDQo+ICsJLyogVmJsYW5rID49IFBTUjJfQ1RMIEJsb2NrIENv
dW50IE51bWJlciBtYXhpbXVtIGxpbmUgY291bnQNCj4gKi8NCj4gKwlpZiAodmJsYW5rIDwgd2Fr
ZV9saW5lcykNCj4gKwkJcmV0dXJuIGZhbHNlOw0KPiArDQo+ICsJcmV0dXJuIHRydWU7DQo+ICt9
DQo+ICsNCj4gwqBzdGF0aWMgYm9vbCB3YWtlX2xpbmVzX2ZpdF9pbnRvX3ZibGFuayhzdHJ1Y3Qg
aW50ZWxfZHAgKmludGVsX2RwLA0KPiDCoAkJCQnCoMKgwqDCoMKgwqAgY29uc3Qgc3RydWN0IGlu
dGVsX2NydGNfc3RhdGUNCj4gKmNydGNfc3RhdGUsDQo+IMKgCQkJCcKgwqDCoMKgwqDCoCBib29s
IGF1eF9sZXNzLA0KPiBAQCAtMTQyOCwxNCArMTQ0MiwxNiBAQCBzdGF0aWMgYm9vbCB3YWtlX2xp
bmVzX2ZpdF9pbnRvX3ZibGFuayhzdHJ1Y3QNCj4gaW50ZWxfZHAgKmludGVsX2RwLA0KPiDCoAkJ
CQkJwqDCoMKgwqDCoMKgIGNydGNfc3RhdGUtDQo+ID5hbHBtX3N0YXRlLmZhc3Rfd2FrZV9saW5l
cykgOg0KPiDCoAkJCWNydGNfc3RhdGUtPmFscG1fc3RhdGUuaW9fd2FrZV9saW5lczsNCj4gwqAN
Cj4gLQlpZiAoY3J0Y19zdGF0ZS0+cmVxX3BzcjJfc2RwX3ByaW9yX3NjYW5saW5lKQ0KPiAtCQl2
YmxhbmsgLT0gMTsNCj4gLQ0KPiAtCS8qIFZibGFuayA+PSBQU1IyX0NUTCBCbG9jayBDb3VudCBO
dW1iZXIgbWF4aW11bSBsaW5lIGNvdW50DQo+ICovDQo+IC0JaWYgKHZibGFuayA8IHdha2VfbGlu
ZXMpDQo+IC0JCXJldHVybiBmYWxzZTsNCj4gLQ0KPiAtCXJldHVybiB0cnVlOw0KPiArCS8qDQo+
ICsJICogR3VhcmRiYW5kIGhhcyBub3QgYmVlbiBjb21wdXRlZCB5ZXQsIHNvIHdlIGNvbnNlcnZh
dGl2ZWx5DQo+IGNoZWNrIGlmIHRoZQ0KPiArCSAqIGZ1bGwgdmJsYW5rIGR1cmF0aW9uIGlzIHN1
ZmZpY2llbnQgdG8gYWNjb21tb2RhdGUgd2FrZQ0KPiBsaW5lIHJlcXVpcmVtZW50cw0KPiArCSAq
IGZvciBQU1IgZmVhdHVyZXMgbGlrZSBQYW5lbCBSZXBsYXkgYW5kIFNlbGVjdGl2ZSBVcGRhdGUu
DQo+ICsJICoNCj4gKwkgKiBPbmNlIHRoZSBhY3R1YWwgZ3VhcmRiYW5kIGlzIGF2YWlsYWJsZSwg
YSBtb3JlIGFjY3VyYXRlDQo+IHZhbGlkYXRpb24gaXMNCj4gKwkgKiBwZXJmb3JtZWQgaW4gaW50
ZWxfcHNyX2NvbXB1dGVfY29uZmlnX2xhdGUoKSwgYW5kIFBTUg0KPiBmZWF0dXJlcyBhcmUNCj4g
KwkgKiBkaXNhYmxlZCBpZiB3YWtlIGxpbmVzIGV4Y2VlZCB0aGUgYXZhaWxhYmxlIGd1YXJkYmFu
ZC4NCj4gKwkgKi8NCj4gKwlyZXR1cm4gX3dha2VfbGluZXNfZml0X2ludG9fdmJsYW5rKGNydGNf
c3RhdGUsIHZibGFuaywNCj4gd2FrZV9saW5lcyk7DQo+IMKgfQ0KPiDCoA0KPiDCoHN0YXRpYyBi
b29sIGFscG1fY29uZmlnX3ZhbGlkKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsDQo+IEBAIC00
MzUxLDYgKzQzNjcsNTIgQEAgdm9pZCBpbnRlbF9wc3JfY29tcHV0ZV9jb25maWdfbGF0ZShzdHJ1
Y3QNCj4gaW50ZWxfZHAgKmludGVsX2RwLA0KPiDCoAkJCQnCoMKgIHN0cnVjdCBpbnRlbF9jcnRj
X3N0YXRlDQo+ICpjcnRjX3N0YXRlKQ0KPiDCoHsNCj4gwqAJc3RydWN0IGludGVsX2Rpc3BsYXkg
KmRpc3BsYXkgPSB0b19pbnRlbF9kaXNwbGF5KGludGVsX2RwKTsNCj4gKwlpbnQgdmJsYW5rID0g
aW50ZWxfY3J0Y192YmxhbmtfbGVuZ3RoKGNydGNfc3RhdGUpOw0KPiArCWludCBhdXhfbGVzc193
YWtlX2xpbmVzOw0KPiArCWludCB3YWtlX2xpbmVzOw0KPiArDQo+ICsJaWYgKCFpbnRlbF9wc3Jf
bmVlZHNfYWxwbShpbnRlbF9kcCwgY3J0Y19zdGF0ZSkpDQoNCk5vdyBhcyBwc3JfY29tcHV0ZV9j
b25maWdfbGF0ZSBpcyBub3Qgb25seSBhYm91dCB2YmxhbmsgeW91IGNhbid0IGhhdmUNCnRoaXMg
ZWFybHkgcmV0dXJuLiBZb3UgY291bGQgaGF2ZSAob3IgZG8gaXQgYXMgeW91IHNlZSBpcyBiZXN0
KToNCg0KCWlmIChpbnRlbF9wc3JfbmVlZHNfYWxwbV9hdXhfbGVzcyhpbnRlbF9kcCwgY3J0Y19z
dGF0ZSkpDQoJCXdha2VfbGluZXMgPSBESVNQTEFZX1ZFUihkaXNwbGF5KSA8IDIwID8NCgkJCXBz
cjJfYmxvY2tfY291bnRfbGluZXMoY3J0Y19zdGF0ZS0+YWxwbV9zdGF0ZS5pb193YWtlX2xpbmVz
LA0KCQkJCQkgICAgICAgY3J0Y19zdGF0ZS0+YWxwbV9zdGF0ZS5mYXN0X3dha2VfbGluZXMpIDoN
CgkJCWNydGNfc3RhdGUtPmFscG1fc3RhdGUuaW9fd2FrZV9saW5lczsNCgllbHNlIGlmIChpbnRl
bF9wc3JfbmVlZHNfYWxwbV9hdXhfbGVzcyhpbnRlbF9kcCwgY3J0Y19zdGF0ZSkpDQoJCXdha2Vf
bGluZXMgPSBjcnRjX3N0YXRlLT5hbHBtX3N0YXRlLmF1eF9sZXNzX3dha2VfbGluZXM7DQoJZWxz
ZQ0KCQl3YWtlX2xpbmVzID0gMDsNCg0KCWlmICghd2FrZV9saW5lcyB8fCAhX3dha2VfbGluZXNf
Zml0X2ludG9fdmJsYW5rKGNydGNfc3RhdGUsIHZibGFuaywgd2FrZV9saW5lcykpIHsNCgkJZHJt
X2RiZ19rbXMoZGlzcGxheS0+ZHJtLA0KCQkJICAgICJBZGp1c3RpbmcgUFNSL1BSIG1vZGU6IHZi
bGFuayB0b28gc2hvcnQgZm9yIHdha2UgbGluZXMgPSAlZFxuIiwNCgkJCSAgICB3YWtlX2xpbmVz
KTsNCg0KCQlpZiAoY3J0Y19zdGF0ZS0+aGFzX3BhbmVsX3JlcGxheSkgew0KCQkJY3J0Y19zdGF0
ZS0+aGFzX3BhbmVsX3JlcGxheSA9IGZhbHNlOw0KCQkJLyoNCgkJCSAqICNUT0RPIDogQWRkIGZh
bGwgYmFjayB0byBQU1IvUFNSMg0KCQkJICogU2luY2UgcGFuZWwgcmVwbGF5IGNhbm5vdCBiZSBz
dXBwb3J0ZWQsIHdlIGNhbiBmYWxsIGJhY2sgdG8gUFNSL1BTUjIuDQoJCQkgKiBUaGlzIHdpbGwg
cmVxdWlyZSBjYWxsaW5nIGNvbXB1dGVfY29uZmlnIGZvciBwc3IgYW5kIHBzcjIgd2l0aCBjaGVj
ayBmb3INCgkJCSAqIGFjdHVhbCBndWFyZGJhbmQgaW5zdGVhZCBvZiB2YmxhbmtfbGVuZ3RoLg0K
CQkJICovDQoJCQljcnRjX3N0YXRlLT5oYXNfcHNyID0gZmFsc2U7DQoJCX0NCgkJY3J0Y19zdGF0
ZS0+aGFzX3NlbF91cGRhdGUgPSBmYWxzZTsNCgkJY3J0Y19zdGF0ZS0+ZW5hYmxlX3BzcjJfc3Vf
cmVnaW9uX2V0ID0gZmFsc2U7DQoJCWNydGNfc3RhdGUtPmVuYWJsZV9wc3IyX3NlbF9mZXRjaCA9
IGZhbHNlOw0KCX0NCg0KQlIsDQoNCkpvdW5pIEjDtmdhbmRlcg0KDQo+ICsJCXJldHVybjsNCj4g
Kw0KPiArCWF1eF9sZXNzX3dha2VfbGluZXMgPSBjcnRjX3N0YXRlLQ0KPiA+YWxwbV9zdGF0ZS5h
dXhfbGVzc193YWtlX2xpbmVzOw0KPiArCXdha2VfbGluZXMgPSBESVNQTEFZX1ZFUihkaXNwbGF5
KSA8IDIwID8NCj4gKwkJwqDCoMKgwqAgcHNyMl9ibG9ja19jb3VudF9saW5lcyhjcnRjX3N0YXRl
LQ0KPiA+YWxwbV9zdGF0ZS5pb193YWtlX2xpbmVzLA0KPiArCQkJCQnCoMKgwqAgY3J0Y19zdGF0
ZS0NCj4gPmFscG1fc3RhdGUuZmFzdF93YWtlX2xpbmVzKSA6DQo+ICsJCcKgwqDCoMKgIGNydGNf
c3RhdGUtPmFscG1fc3RhdGUuaW9fd2FrZV9saW5lczsNCj4gKw0KPiArCS8qDQo+ICsJICogRGlz
YWJsZSB0aGUgUFNSIGZlYXR1cmVzIGlmIHdha2UgbGluZXMgZXhjZWVkIHRoZQ0KPiBhdmFpbGFi
bGUgdmJsYW5rLg0KPiArCSAqIFRob3VnaCBTQ0wgaXMgY29tcHV0ZWQgYmFzZWQgb24gdGhlc2Ug
UFNSIGZlYXR1cmVzLCBpdCBpcw0KPiBub3QgcmVzZXQNCj4gKwkgKiBldmVuIGlmIHRoZSBQU1Ig
ZmVhdHVyZXMgYXJlIGRpc2FibGVkIHRvIGF2b2lkIGNoYW5naW5nDQo+IHZibGFuayBzdGFydA0K
PiArCSAqIGF0IHRoaXMgc3RhZ2UuDQo+ICsJICovDQo+ICsJaWYgKCFjcnRjX3N0YXRlLT5oYXNf
cGFuZWxfcmVwbGF5ICYmIGNydGNfc3RhdGUtDQo+ID5oYXNfc2VsX3VwZGF0ZSAmJg0KPiArCcKg
wqDCoCAhX3dha2VfbGluZXNfZml0X2ludG9fdmJsYW5rKGNydGNfc3RhdGUsIHZibGFuaywNCj4g
d2FrZV9saW5lcykpIHsNCj4gKwkJZHJtX2RiZ19rbXMoZGlzcGxheS0+ZHJtLA0KPiArCQkJwqDC
oMKgICJEaXNhYmxpbmcgU2VsZWN0aXZlIFVwZGF0ZTogdmJsYW5rIHRvbw0KPiBzaG9ydCBmb3Ig
d2FrZSBsaW5lcyA9ICVkXG4iLA0KPiArCQkJwqDCoMKgIHdha2VfbGluZXMpOw0KPiArCQljcnRj
X3N0YXRlLT5oYXNfc2VsX3VwZGF0ZSA9IGZhbHNlOw0KPiArCQljcnRjX3N0YXRlLT5lbmFibGVf
cHNyMl9zdV9yZWdpb25fZXQgPSBmYWxzZTsNCj4gKwkJY3J0Y19zdGF0ZS0+ZW5hYmxlX3BzcjJf
c2VsX2ZldGNoID0gZmFsc2U7DQo+ICsJfQ0KPiArDQo+ICsJaWYgKGludGVsX3Bzcl9uZWVkc19h
bHBtX2F1eF9sZXNzKGludGVsX2RwLCBjcnRjX3N0YXRlKSAmJg0KPiArCcKgwqDCoCAhX3dha2Vf
bGluZXNfZml0X2ludG9fdmJsYW5rKGNydGNfc3RhdGUsIHZibGFuaywNCj4gYXV4X2xlc3Nfd2Fr
ZV9saW5lcykpIHsNCj4gKwkJZHJtX2RiZ19rbXMoZGlzcGxheS0+ZHJtLA0KPiArCQkJwqDCoMKg
ICJEaXNhYmxpbmcgUGFuZWwgcmVwbGF5OiB2YmxhbmsgdG9vDQo+IHNob3J0IGZvciB3YWtlIGxp
bmVzID0gJWRcbiIsDQo+ICsJCQnCoMKgwqAgYXV4X2xlc3Nfd2FrZV9saW5lcyk7DQo+ICsJCWNy
dGNfc3RhdGUtPmhhc19wYW5lbF9yZXBsYXkgPSBmYWxzZTsNCj4gKwkJLyoNCj4gKwkJICogI1RP
RE8gOiBBZGQgZmFsbCBiYWNrIHRvIFBTUi9QU1IyDQo+ICsJCSAqIFNpbmNlIHBhbmVsIHJlcGxh
eSBjYW5ub3QgYmUgc3VwcG9ydGVkLCB3ZSBjYW4NCj4gZmFsbCBiYWNrIHRvIFBTUi9QU1IyLg0K
PiArCQkgKiBUaGlzIHdpbGwgcmVxdWlyZSBjYWxsaW5nIGNvbXB1dGVfY29uZmlnIGZvciBwc3IN
Cj4gYW5kIHBzcjIgd2l0aCBjaGVjayBmb3INCj4gKwkJICogYWN0dWFsIGd1YXJkYmFuZCBpbnN0
ZWFkIG9mIHZibGFua19sZW5ndGguDQo+ICsJCSAqLw0KPiArCQljcnRjX3N0YXRlLT5oYXNfcHNy
ID0gZmFsc2U7DQo+ICsJCWNydGNfc3RhdGUtPmhhc19zZWxfdXBkYXRlID0gZmFsc2U7DQo+ICsJ
CWNydGNfc3RhdGUtPmVuYWJsZV9wc3IyX3N1X3JlZ2lvbl9ldCA9IGZhbHNlOw0KPiArCQljcnRj
X3N0YXRlLT5lbmFibGVfcHNyMl9zZWxfZmV0Y2ggPSBmYWxzZTsNCj4gKwl9DQo+IMKgDQo+IMKg
CS8qIFdhXzE4MDM3ODE4ODc2ICovDQo+IMKgCWlmIChpbnRlbF9wc3JfbmVlZHNfd2FfMTgwMzc4
MTg4NzYoaW50ZWxfZHAsIGNydGNfc3RhdGUpKSB7DQoNCg==
