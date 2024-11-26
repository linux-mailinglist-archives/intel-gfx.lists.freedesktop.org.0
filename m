Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F15D29D9115
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Nov 2024 05:42:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D15FF10E78C;
	Tue, 26 Nov 2024 04:42:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fHi0CrIv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F204A10E0B7;
 Tue, 26 Nov 2024 04:42:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732596133; x=1764132133;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=apc5m1garf2NOVk4Fm37CCwqcEWmMznoZI+ynC2k6mQ=;
 b=fHi0CrIvXOAIUZX5486XMtBSa7hJq9axrRrn7GXK+0DsEmK3ZZT0jjIP
 wB9ScxS4leA7U6zUNnEu0IKmnCJb3q59rTlhjblkWZqlyNmeRUFzuMaaq
 NnS05k0TeLBoedCMkiOCrf0+wujfh7oAdMl3lz9Z6AALkLG0OK6xl30GS
 WXAmJtnL3OAdXUFgg5aaY8WY74VokLxmqFUBQsdMyJhLHdxfpYtIraUW1
 2sIq/njpr4FuEFw7zonFQUibjwwNYsqhj0qymDynfDC1qBXX2ar9TxumB
 EuqK77iMAx63ZDvk6tsGTHY31dMBwv/Hg7GV4fb9AFWyojeoi9C5ZEVoD w==;
X-CSE-ConnectionGUID: yPCL8aKQTMyvLVVxGkTJ2Q==
X-CSE-MsgGUID: CbTaWJnTSQuDZ/htw7o1Cw==
X-IronPort-AV: E=McAfee;i="6700,10204,11267"; a="58144893"
X-IronPort-AV: E=Sophos;i="6.12,184,1728975600"; d="scan'208";a="58144893"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2024 20:42:12 -0800
X-CSE-ConnectionGUID: K2hlLH4vSVGlGKHsbu/SOQ==
X-CSE-MsgGUID: /tzAnQl/SN6VpUMvaJcKhg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,184,1728975600"; d="scan'208";a="96259080"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 25 Nov 2024 20:42:12 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 25 Nov 2024 20:42:12 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 25 Nov 2024 20:42:12 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.48) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 25 Nov 2024 20:42:02 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=i27jPeMJYFOjeOn0qgroap3lvjF8iRBuUUcKFW+z5A552A2tP25lTkfA+cJBw0j6VXwl7bA2UPYJZL8CH58l2voGPnMfrwniNGCpr5d7bPglElM1xWNCRt6IOFNU8fW999uSndPXKm7Vr7CkorDLqjDEBLWSG9mtRdX+mAIdhuvz0z8xr6ee/KEQPZwfLjcANtourYLZR/NToax0KkSSDMJZMdcGNmfjMqwp+rJ3Prg/Fis8lSWHKCCzYmL6Kae3x82/AN/BHQi5U8pv5U4wLfCSr2VcgWmztDsAt4+9hU9Ybx7xT0ep0CBjOZfy1iOmDaf9zt+8JDxvmc/9kh9tRg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=apc5m1garf2NOVk4Fm37CCwqcEWmMznoZI+ynC2k6mQ=;
 b=pZiq8EOhVAkYF9VrptLF1ywWAf/n+Qh8yapwlN7R/K91TB1A5HhqbLTTCtxIORNWNFsS4TPDoQS0Tmc0E9EcJ/h1L0t5Cg3+wnQyJEcM/edRWYpS6ypzrKGE6vP2dzsVRU61UZN6Pzo85jvrLvrsSrkt6mUCs4CsrHs5ReTJGchy8bcXpAzgkRAeE90tvsi2SfdEXESlKY1FgF6Hh8LIkVvvXwjZYLQ5DShHoQoKg2E0vv+I/MRsoShgez3DjhIxWWpX5sh/J+GLOXOWq3jweeA95SOj8sZBiqeogbrt2zgdYZCiQuZCMRazxhOYRT1RRCJirpYlVOJv4u1IeKdbVA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH8PR11MB6753.namprd11.prod.outlook.com (2603:10b6:510:1c8::22)
 by PH8PR11MB7095.namprd11.prod.outlook.com (2603:10b6:510:215::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8182.19; Tue, 26 Nov
 2024 04:42:00 +0000
Received: from PH8PR11MB6753.namprd11.prod.outlook.com
 ([fe80::2554:e827:dbde:714]) by PH8PR11MB6753.namprd11.prod.outlook.com
 ([fe80::2554:e827:dbde:714%7]) with mapi id 15.20.8182.018; Tue, 26 Nov 2024
 04:41:59 +0000
From: "Illipilli, TejasreeX" <tejasreex.illipilli@intel.com>
To: "i915-ci-infra@lists.freedesktop.org" <i915-ci-infra@lists.freedesktop.org>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: =?utf-8?B?UkU6IOKclyBpOTE1LkNJLkJBVDogZmFpbHVyZSBmb3IgZHJtL2k5MTUvZGRp?=
 =?utf-8?B?OiBjbGFyaWZ5IGludGVsX2RkaV9jb25uZWN0b3JfZ2V0X2h3X3N0YXRlKCkg?=
 =?utf-8?Q?for_DP_MST?=
Thread-Topic: =?utf-8?B?4pyXIGk5MTUuQ0kuQkFUOiBmYWlsdXJlIGZvciBkcm0vaTkxNS9kZGk6IGNs?=
 =?utf-8?B?YXJpZnkgaW50ZWxfZGRpX2Nvbm5lY3Rvcl9nZXRfaHdfc3RhdGUoKSBmb3Ig?=
 =?utf-8?Q?DP_MST?=
Thread-Index: AQHbPz5rkgvjaJLg6U+eGfuo5zYHWLLIE9CAgADnSbA=
Date: Tue, 26 Nov 2024 04:41:59 +0000
Message-ID: <PH8PR11MB67534C9ACF4E14806C7F7B9BF22F2@PH8PR11MB6753.namprd11.prod.outlook.com>
References: <20241125120959.2366419-1-jani.nikula@intel.com>
 <173254146652.2830354.556775084917022077@b555e5b46a47>
 <87ldx7xtbc.fsf@intel.com>
In-Reply-To: <87ldx7xtbc.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH8PR11MB6753:EE_|PH8PR11MB7095:EE_
x-ms-office365-filtering-correlation-id: 4917587e-7148-409f-737c-08dd0dd4aa59
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?MXVlVWR1Y0VRcGc0Z0tjRnlUa2lGQTdncGo2L2kvbjdUQVBTSVBEdjROSlJw?=
 =?utf-8?B?bU1ha2N2bHFoa0ZzaGg5b2JiSHVDbTkvSGhqLzYwQ3NraWlVWUg0dlFDTjA3?=
 =?utf-8?B?QXZTbFB0Q0lVeDdieHdIUEVvQ2RSeW5SZ0hPcWp5N0FON09JajhFM2Y1ajNF?=
 =?utf-8?B?cmdDcnVwZVBjSTNqaUh1bzRoSkJtdnpVMmc5cFBZU3lGWll6MTdMKytxSEZ3?=
 =?utf-8?B?SmhhZHZxc255UjdRRmxGOE1yLzQ5SXVlb3dvMkRIUGgvRXAwa0JjQVN1Y2hJ?=
 =?utf-8?B?SmlYS0hWUkJCOW1NNSt4emkvVXdWWG9QUWJBSEdZbjBhNXRJMm9nQXJNZ3ha?=
 =?utf-8?B?elNsVzZ3eHlpRnZ6NGdXOUlwaml1ZERHUzhGT1l0ejdtWEExL3UrSEo0QkFp?=
 =?utf-8?B?OUZ1Nkk5cG5ZSEplN0FjWEdiLzQzNmhpQ2JLL3hBbFpFVnVPUHh1emJSYkJK?=
 =?utf-8?B?b2h0RW9TWW1rVFdrZE8rc0lFUWIrVnVBVG9ZanovWmh6UHhxUVlOaWxBNTRu?=
 =?utf-8?B?R0hOYjZMSWZvODkvODBQTXlrNjl3NzllR3A0ZUdyc3IyVDJ4M05RaG12cTFW?=
 =?utf-8?B?L3FHVmNNYkZBTWdjT3Yra0cxNnNReE9DUXYrM1ErektMZXVWNnFuQUdsK0Vt?=
 =?utf-8?B?M0VzcWMzczAxSHhFY05rOW1kaWZHMTZNbHlLa2FkMjBJTDhFTjBIUDRBWmg1?=
 =?utf-8?B?QzJxdzlCYW84VVZOVVpObmhqbGVPVHNGWTh3VXVCWDRtdzVvSWhOa0xjSi9n?=
 =?utf-8?B?T1VSTnFZcVhSMGxBaVZBdCttY0ROeTlacndlVWg4M2ZFa0F3cWREb0NMR2M4?=
 =?utf-8?B?OU83dlBJc2pxWEx2M0N6RUcxVnhhbHM0bWYyN3BveW9OYnBVVGZYUEpXejF5?=
 =?utf-8?B?ZnhaRTR3MXg4bUMzSS9XMGs4YUFKZ0dnMjYvV0oraVpnQVF3QThWMTBDQjZS?=
 =?utf-8?B?WlBLUjZXa0xvcllOREZKSUZDSmtpZldCbm11UUZpUnA5UmFZUk9SL09hczJl?=
 =?utf-8?B?aUptd0ZNL1NPbERSZXNFS0RTL1ZPUm1NaEdYSkw1YVpFcHMzM0xBQUFRZFZv?=
 =?utf-8?B?MXA1d092UkVjSmxQNzhZc0NidXRHQmVkeFBVU21ITW0zVjlnQlBRNm85NytU?=
 =?utf-8?B?MC9Pc2lYaUZrUjJGMFhwcFFSTU5NTmpkb0JsVnVTNFA3N0xPR3Q0S3VhWTFD?=
 =?utf-8?B?RUN3aG5NYU9FTDZrbWtNQlRYNEFrOUhBTW92R0I1dzhpYWpiUmlZbVV1ZThz?=
 =?utf-8?B?UU5KV1FoMXFnOWJsS3FNZHpFR0RNS1l6RFdoT1FGM2VxMGt2VXFJOW9jRWcx?=
 =?utf-8?B?Nm1FWHFZZlhmUHRhSHY2VFBvM1VFQXNxRVQrZCsyVmh3M1lvM29USEtkSTFn?=
 =?utf-8?B?UUc0YzBBZHZQVWU0N0s3NmdTZFNuZ0Z0aysvRDJwKzNOYW12L1hTcWdmN3BE?=
 =?utf-8?B?UlRVMW02R3FXcUtUaDVHdy8vWDd4ejdXdHU5clQ0aGlRdEZzN1IvcmJPSkxn?=
 =?utf-8?B?OUhic0ZpWFVlMEUxSEMrQTRtakcyRUJKZlNNanlCckgxcGJsVmNOR0NFYlJW?=
 =?utf-8?B?bThobVlGU0dndXp6UFU5bUovRlZ4WDF4azU0aVM5dmdJeHM1SFUxaHA2QVph?=
 =?utf-8?B?TmY5VURSa290NXBuSjl5SFhaWm1mTmxqelVmdWdDRGpzZ1dmVm9zOHUzK1VC?=
 =?utf-8?B?cnVRcmRaUzhYRlNadWM1VTlQWjNPd1BCbXd5a0lNVVhBVVlkZi9NUEZJekJx?=
 =?utf-8?B?RFVMY2hBdnpHVXZEUERNdGttYWlJRXNYZVd0M0hRSXA0Q0VSNkkzcDFDTWtt?=
 =?utf-8?Q?+R6XmtlQK8lRRzehpa9dfatv9ek2Nz0GIALvI=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB6753.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MXhteUpsQWFwN21KNXJCOEh4UEZBU3ZSSVRCQmp3WHZvS3lwVDl2Um1uNEVz?=
 =?utf-8?B?ZHVlTE5DTTZjNXYrSzV3bitoMjJEZzRMQ0h3c25RT0E1RmNXZEFCY1Y3eW4r?=
 =?utf-8?B?MW1rR256WjVDZkZCUXlnVTVyYWE5cEtjVXNnY0Z6YUtrNW8xZWlCQXpuMzlv?=
 =?utf-8?B?OHRocTYwRHRnZXJ5SmRpcWk0OEZYTmRiZ1lEMDJ3ai83ckpEWHhNUXVDaWxR?=
 =?utf-8?B?N0Vrd1RINlhrb2RlRDM2bzJaT1VrYkZDdjlpZjJTUWJwWXYwdEFMT1lmSm1j?=
 =?utf-8?B?ckE0aHlWR1ZPaVFYa0NzSTAvZERwR0F4K0NtTEV1cUZjMHRuVFppRXc5U3pV?=
 =?utf-8?B?Z2lSZ3kwd0paR3BZRmpKUGdLdEFGRDM2eGpObk53Sm1rN05vcEJQOGEvZnhW?=
 =?utf-8?B?RWFIc2V6Y1VIb25aS1A5d3UwUjdzaDIvNms1YkRJbG5iZVE3aVpocExhR3c4?=
 =?utf-8?B?L3FxTnBMZXhDM2VVcmJ2ODZzRFgwTVNJOWJ1WW5NMU1UMFNEb3owVGl3Umdm?=
 =?utf-8?B?bGpwSVZkOVFXOWpGSU82aGRHRklsZlBiU1hEdlRnejVheTRlelhwMWNJNlU0?=
 =?utf-8?B?dkhZRU14RFNtY280V1RkS2pDdWdJWVZBUFRaeEZJVHo2eGdiaTlnKzNGRnZK?=
 =?utf-8?B?UDBLSDBSd2g1bUpKTEhpbFhCaVlmRjFUc3hrSXNGek91cFhyN2g1d0psLzlO?=
 =?utf-8?B?TUQ2OEF0L2JmWVh4WnVUN1FDV3RTZGZrWjVVTVFBSTVzSjd3YWlGVEJzSmtO?=
 =?utf-8?B?QUtSMncwUjA4MTJQaUR0R0U3dis0MkFPNFNZQWExQ2RUNkYycStBbHN0Szkv?=
 =?utf-8?B?NEYwczJxWUpRK0FlR3NOVTNadW8xRWhoWklOWmExck1ZNFpTeFZHK0hWa0hK?=
 =?utf-8?B?WW9MUmlqNUljNDdHNE1PbjdiclM0eDVmTXR4STZrVkNablRVcUQySUcrcnJI?=
 =?utf-8?B?UmhHaDFiczFuMVMxWXI5cEJrVmp6R1BRTVJZOW55dHRXVXU4Sk9UV3U1cUdP?=
 =?utf-8?B?UHg3S1ZNamt0T2JVVWJnaDFxM3Z4S2U5dUdSa0Flb3FqM0hyNVZ6UXh3dmtm?=
 =?utf-8?B?Umd0OHBneks0QkFjNXBYMWJGNksyR3NkZVFUVFJyRDV3aWpVR28zUDQwU3k2?=
 =?utf-8?B?RENiS0dEdmJyUmtDTFRXQWlHTkhsSU9JbitJaEpqTHkrMkFWUlhvT2VGYmVT?=
 =?utf-8?B?VVhNNVZjc3cvUTJiQ3VTandUbjFQU2laSlFMc2hkaEVaaE02YWkyajdueVhT?=
 =?utf-8?B?VzFKZUsyTVhjU2s5WXRPSkIrbkZTMUp0dG9YWWpSbzJXQ3NiTHE1dndPZG1H?=
 =?utf-8?B?OEpoRDlFYlYwOUJkV1p0Skh2eWtLS0RmcXdYaWtxd3hETFlPdnh6RloreldS?=
 =?utf-8?B?Smw2Y1JHSDU3ZkV5a0hEL3VHVW1vTEw1K3FSVVM3a3FZTUJROFBZVHVyaXp2?=
 =?utf-8?B?OE14eHRHckhsM21GUXMxV2MzdkZEUCt0NHhSTmFYdWkzQzlONDdPWkxWSUlt?=
 =?utf-8?B?cnR4U0VvRGZFai9Dc2hXZk5MS2FxME1ISW9HbW1mVUhnd0VFTVlFTURJdG05?=
 =?utf-8?B?VWxuaE9md1NGWGhpdnhLZWdaK05idmlMcXltWm1pU1BHN3MrWU15SnU1UEVt?=
 =?utf-8?B?OFBtQzZWRUtKQ01LV3Zqa0hhVytLRWgyT1p2a3ZWa05WUUE5Mnh3UVNFbkc0?=
 =?utf-8?B?dmZNcmlwUmVYVnZrWUs2YmFzejFlUFdOL1JSRkR6WDI4OGE2WlNsVE5nMnJp?=
 =?utf-8?B?S3NaL0FERlZFZlMyeW1kSkFwTVJidVlENHl6L21ZZXhlVFVTMjduQlhGNG8v?=
 =?utf-8?B?YnBUb1Z6SXhvQ2ROblZIUlZEcVpxR0QxZUdYbEgrUHZvVENnc0UyaEdMQjNG?=
 =?utf-8?B?dmVWc2hKTGxGN1R2QlFLdHcyS0h1QnlYYnVOdU9HcitiRTVpSm40Y1Z2ZUU4?=
 =?utf-8?B?VGpHSkZ2ZFlZZ2JUS3ZNcXZWZ0NndnZvT2RoVml5MWN0amw5Q3FOclNoRE9G?=
 =?utf-8?B?VUh6d2VQVHFDV1pobGVEVUE1N0RvMk5yN3M3c3lJSEQ0amxtakp5VEY4QytZ?=
 =?utf-8?B?b05EdWF6aGdKbjZOU29yYnNWNExXZDJEZW92dU05emUzWkpRNzdkU0NlQ3VB?=
 =?utf-8?B?WEo4a1FhYnhyQ2w5aUpPQitoWlpRUUhwbnN3UjRneGgzUEVKMlp1dThyZVBn?=
 =?utf-8?B?NUE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB6753.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4917587e-7148-409f-737c-08dd0dd4aa59
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Nov 2024 04:41:59.8348 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: XnPiuge3V9LgZXRQf1pKWuyFjdbeSphpjButd3B/hdSh5/wiSFOov8WRod3Y1Zln+VkmqhFOWxOYAf1a9D3kWjpBzQYsD9s4GFyaElDDkgE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB7095
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

SGksDQoNCmh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvMTQxNzQ5LyAt
IFJlLXJlcG9ydGVkLg0KDQpUaGFua3MsDQpUZWphc3JlZQ0KDQotLS0tLU9yaWdpbmFsIE1lc3Nh
Z2UtLS0tLQ0KRnJvbTogSTkxNS1jaS1pbmZyYSA8aTkxNS1jaS1pbmZyYS1ib3VuY2VzQGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mIEphbmkgTmlrdWxhDQpTZW50OiBNb25kYXks
IE5vdmVtYmVyIDI1LCAyMDI0IDg6MTkgUE0NClRvOiBJOTE1LWNpLWluZnJhQGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZw0KQ2M6IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNClN1YmplY3Q6
IFJlOiDinJcgaTkxNS5DSS5CQVQ6IGZhaWx1cmUgZm9yIGRybS9pOTE1L2RkaTogY2xhcmlmeSBp
bnRlbF9kZGlfY29ubmVjdG9yX2dldF9od19zdGF0ZSgpIGZvciBEUCBNU1QNCg0KT24gTW9uLCAy
NSBOb3YgMjAyNCwgUGF0Y2h3b3JrIDxwYXRjaHdvcmtAZW1lcmlsLmZyZWVkZXNrdG9wLm9yZz4g
d3JvdGU6DQo+ID09IFNlcmllcyBEZXRhaWxzID09DQo+DQo+IFNlcmllczogZHJtL2k5MTUvZGRp
OiBjbGFyaWZ5IGludGVsX2RkaV9jb25uZWN0b3JfZ2V0X2h3X3N0YXRlKCkgZm9yIERQIE1TVA0K
PiBVUkwgICA6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvMTQxNzQ5
Lw0KPiBTdGF0ZSA6IGZhaWx1cmUNCj4NCj4gPT0gU3VtbWFyeSA9PQ0KPg0KPiBDSSBCdWcgTG9n
IC0gY2hhbmdlcyBmcm9tIENJX0RSTV8xNTczOCAtPiBQYXRjaHdvcmtfMTQxNzQ5djEgDQo+ID09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT0NCj4NCj4g
U3VtbWFyeQ0KPiAtLS0tLS0tDQo+DQo+ICAgKipGQUlMVVJFKioNCj4NCj4gICBTZXJpb3VzIHVu
a25vd24gY2hhbmdlcyBjb21pbmcgd2l0aCBQYXRjaHdvcmtfMTQxNzQ5djEgYWJzb2x1dGVseSBu
ZWVkIHRvIGJlDQo+ICAgdmVyaWZpZWQgbWFudWFsbHkuDQo+ICAgDQo+ICAgSWYgeW91IHRoaW5r
IHRoZSByZXBvcnRlZCBjaGFuZ2VzIGhhdmUgbm90aGluZyB0byBkbyB3aXRoIHRoZSBjaGFuZ2Vz
DQo+ICAgaW50cm9kdWNlZCBpbiBQYXRjaHdvcmtfMTQxNzQ5djEsIHBsZWFzZSBub3RpZnkgeW91
ciBidWcgdGVhbSAoSTkxNS1jaS1pbmZyYUBsaXN0cy5mcmVlZGVza3RvcC5vcmcpIHRvIGFsbG93
IHRoZW0NCj4gICB0byBkb2N1bWVudCB0aGlzIG5ldyBmYWlsdXJlIG1vZGUsIHdoaWNoIHdpbGwg
cmVkdWNlIGZhbHNlIHBvc2l0aXZlcyBpbiBDSS4NCj4NCj4gICBFeHRlcm5hbCBVUkw6IA0KPiBo
dHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDE3NDl2
MS9pbmRleC5odG1sDQo+DQo+IFBhcnRpY2lwYXRpbmcgaG9zdHMgKDQ1IC0+IDQ0KQ0KPiAtLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0NCj4NCj4gICBNaXNzaW5nICAgICgxKTogZmktc25i
LTI1MjBtIA0KPg0KPiBQb3NzaWJsZSBuZXcgaXNzdWVzDQo+IC0tLS0tLS0tLS0tLS0tLS0tLS0N
Cj4NCj4gICBIZXJlIGFyZSB0aGUgdW5rbm93biBjaGFuZ2VzIHRoYXQgbWF5IGhhdmUgYmVlbiBp
bnRyb2R1Y2VkIGluIFBhdGNod29ya18xNDE3NDl2MToNCj4NCj4gIyMjIElHVCBjaGFuZ2VzICMj
Iw0KPg0KPiAjIyMjIFBvc3NpYmxlIHJlZ3Jlc3Npb25zICMjIyMNCj4NCj4gICAqIGlndEBrbXNf
Y3Vyc29yX2xlZ2FjeUBiYXNpYy1mbGlwLWFmdGVyLWN1cnNvci12YXJ5aW5nLXNpemU6DQo+ICAg
ICAtIGJhdC1hcGwtMTogICAgICAgICAgW1BBU1NdWzFdIC0+IFtETUVTRy1XQVJOXVsyXQ0KPiAg
ICBbMV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzE1
NzM4L2JhdC1hcGwtMS9pZ3RAa21zX2N1cnNvcl9sZWdhY3lAYmFzaWMtZmxpcC1hZnRlci1jdXJz
b3ItdmFyeWluZy1zaXplLmh0bWwNCj4gICAgWzJdOiANCj4gaHR0cHM6Ly9pbnRlbC1nZngtY2ku
MDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQxNzQ5djEvYmF0LWFwbC0xLw0KPiBpZ3RA
a21zX2N1cnNvcl9sZWdhY3lAYmFzaWMtZmxpcC1hZnRlci1jdXJzb3ItdmFyeWluZy1zaXplLmh0
bWwNCg0KVW5yZWxhdGVkLCBwbGVhc2UgcmUtcmVwb3J0Lg0KDQpCUiwNCkphbmkuDQoNCj4NCj4g
ICANCj4gS25vd24gaXNzdWVzDQo+IC0tLS0tLS0tLS0tLQ0KPg0KPiAgIEhlcmUgYXJlIHRoZSBj
aGFuZ2VzIGZvdW5kIGluIFBhdGNod29ya18xNDE3NDl2MSB0aGF0IGNvbWUgZnJvbSBrbm93biBp
c3N1ZXM6DQo+DQo+ICMjIyBJR1QgY2hhbmdlcyAjIyMNCj4NCj4gIyMjIyBJc3N1ZXMgaGl0ICMj
IyMNCj4NCj4gICAqIGlndEBkbWFidWZAYWxsLXRlc3RzOg0KPiAgICAgLSBiYXQtYXBsLTE6ICAg
ICAgICAgIFtQQVNTXVszXSAtPiBbSU5DT01QTEVURV1bNF0gKFtpOTE1IzEyOTA0XSkgKzEgb3Ro
ZXIgdGVzdCBpbmNvbXBsZXRlDQo+ICAgIFszXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3Jn
L3RyZWUvZHJtLXRpcC9DSV9EUk1fMTU3MzgvYmF0LWFwbC0xL2lndEBkbWFidWZAYWxsLXRlc3Rz
Lmh0bWwNCj4gICAgWzRdOiANCj4gaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJt
LXRpcC9QYXRjaHdvcmtfMTQxNzQ5djEvYmF0LWFwbC0xLw0KPiBpZ3RAZG1hYnVmQGFsbC10ZXN0
cy5odG1sDQo+DQo+ICAgKiBpZ3RAaTkxNV9wbV9ycG1AbW9kdWxlLXJlbG9hZDoNCj4gICAgIC0g
YmF0LWpzbC0zOiAgICAgICAgICBbUEFTU11bNV0gLT4gW0lOQ09NUExFVEVdWzZdIChbaTkxNSMx
MjQzNF0pDQo+ICAgIFs1XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRp
cC9DSV9EUk1fMTU3MzgvYmF0LWpzbC0zL2lndEBpOTE1X3BtX3JwbUBtb2R1bGUtcmVsb2FkLmh0
bWwNCj4gICAgWzZdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1Bh
dGNod29ya18xNDE3NDl2MS9iYXQtanNsLTMvaWd0QGk5MTVfcG1fcnBtQG1vZHVsZS1yZWxvYWQu
aHRtbA0KPiAgICAgLSBmaS1jZmwtZ3VjOiAgICAgICAgIFtQQVNTXVs3XSAtPiBbRkFJTF1bOF0g
KFtpOTE1IzEyOTAzXSkNCj4gICAgWzddOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJl
ZS9kcm0tdGlwL0NJX0RSTV8xNTczOC9maS1jZmwtZ3VjL2lndEBpOTE1X3BtX3JwbUBtb2R1bGUt
cmVsb2FkLmh0bWwNCj4gICAgWzhdOiANCj4gaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3Ry
ZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQxNzQ5djEvZmktY2ZsLWd1Yw0KPiAvaWd0QGk5MTVfcG1f
cnBtQG1vZHVsZS1yZWxvYWQuaHRtbA0KPg0KPiAgICogaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZToN
Cj4gICAgIC0gYmF0LW10bHAtODogICAgICAgICBbUEFTU11bOV0gLT4gW0FCT1JUXVsxMF0gKFtp
OTE1IzEyMDYxXSkgKzEgb3RoZXIgdGVzdCBhYm9ydA0KPiAgICBbOV06IGh0dHBzOi8vaW50ZWwt
Z2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzE1NzM4L2JhdC1tdGxwLTgvaWd0QGk5
MTVfc2VsZnRlc3RAbGl2ZS5odG1sDQo+ICAgIFsxMF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAx
Lm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0MTc0OXYxL2JhdC1tdGxwLTgvaWd0QGk5MTVf
c2VsZnRlc3RAbGl2ZS5odG1sDQo+ICAgICAtIGJhdC1hZGxwLTk6ICAgICAgICAgW1BBU1NdWzEx
XSAtPiBbQUJPUlRdWzEyXSAoW2k5MTUjOTQxM10pICsxIG90aGVyIHRlc3QgYWJvcnQNCj4gICAg
WzExXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fMTU3
MzgvYmF0LWFkbHAtOS9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlLmh0bWwNCj4gICAgWzEyXTogDQo+
IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0MTc0
OXYxL2JhdC1hZGxwLTkNCj4gL2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmUuaHRtbA0KPg0KPiAgICog
aWd0QGttc19waXBlX2NyY19iYXNpY0ByZWFkLWNyYy1mcmFtZS1zZXF1ZW5jZToNCj4gICAgIC0g
YmF0LWRnMi0xMTogICAgICAgICBbUEFTU11bMTNdIC0+IFtTS0lQXVsxNF0gKFtpOTE1IzkxOTdd
KQ0KPiAgICBbMTNdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJ
X0RSTV8xNTczOC9iYXQtZGcyLTExL2lndEBrbXNfcGlwZV9jcmNfYmFzaWNAcmVhZC1jcmMtZnJh
bWUtc2VxdWVuY2UuaHRtbA0KPiAgICBbMTRdOiANCj4gaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEu
b3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQxNzQ5djEvYmF0LWRnMi0xMQ0KPiAvaWd0QGtt
c19waXBlX2NyY19iYXNpY0ByZWFkLWNyYy1mcmFtZS1zZXF1ZW5jZS5odG1sDQo+DQo+ICAgDQo+
ICMjIyMgUG9zc2libGUgZml4ZXMgIyMjIw0KPg0KPiAgICogaWd0QGk5MTVfcG1fcnBtQG1vZHVs
ZS1yZWxvYWQ6DQo+ICAgICAtIGJhdC1hZGxzLTY6ICAgICAgICAgW0ZBSUxdWzE1XSAoW2k5MTUj
MTI5MDNdKSAtPiBbUEFTU11bMTZdDQo+ICAgIFsxNV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAx
Lm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzE1NzM4L2JhdC1hZGxzLTYvaWd0QGk5MTVfcG1fcnBt
QG1vZHVsZS1yZWxvYWQuaHRtbA0KPiAgICBbMTZdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5v
cmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDE3NDl2MS9iYXQtYWRscy02L2lndEBpOTE1X3Bt
X3JwbUBtb2R1bGUtcmVsb2FkLmh0bWwNCj4gICAgIC0gYmF0LXJwbHMtNDogICAgICAgICBbRkFJ
TF1bMTddIChbaTkxNSMxMjkwM10pIC0+IFtQQVNTXVsxOF0NCj4gICAgWzE3XTogaHR0cHM6Ly9p
bnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fMTU3MzgvYmF0LXJwbHMtNC9p
Z3RAaTkxNV9wbV9ycG1AbW9kdWxlLXJlbG9hZC5odG1sDQo+ICAgIFsxOF06IA0KPiBodHRwczov
L2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDE3NDl2MS9iYXQt
cnBscy00DQo+IC9pZ3RAaTkxNV9wbV9ycG1AbW9kdWxlLXJlbG9hZC5odG1sDQo+DQo+ICAgKiBp
Z3RAaTkxNV9zZWxmdGVzdEBsaXZlQHdvcmthcm91bmRzOg0KPiAgICAgLSBiYXQtYXJsaC0zOiAg
ICAgICAgIFtBQk9SVF1bMTldIChbaTkxNSMxMjA2MV0pIC0+IFtQQVNTXVsyMF0gKzEgb3RoZXIg
dGVzdCBwYXNzDQo+ICAgIFsxOV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2Ry
bS10aXAvQ0lfRFJNXzE1NzM4L2JhdC1hcmxoLTMvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZUB3b3Jr
YXJvdW5kcy5odG1sDQo+ICAgIFsyMF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVl
L2RybS10aXAvUGF0Y2h3b3JrXzE0MTc0OXYxL2JhdC1hcmxoLTMvaWd0QGk5MTVfc2VsZnRlc3RA
bGl2ZUB3b3JrYXJvdW5kcy5odG1sDQo+ICAgICAtIGJhdC1tdGxwLTY6ICAgICAgICAgW0FCT1JU
XVsyMV0gKFtpOTE1IzEyMDYxXSkgLT4gW1BBU1NdWzIyXSArMSBvdGhlciB0ZXN0IHBhc3MNCj4g
ICAgWzIxXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1f
MTU3MzgvYmF0LW10bHAtNi9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlQHdvcmthcm91bmRzLmh0bWwN
Cj4gICAgWzIyXTogDQo+IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAv
UGF0Y2h3b3JrXzE0MTc0OXYxL2JhdC1tdGxwLTYNCj4gL2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVA
d29ya2Fyb3VuZHMuaHRtbA0KPg0KPiAgIA0KPiAgIFtpOTE1IzEyMDYxXTogaHR0cHM6Ly9naXRs
YWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pOTE1L2tlcm5lbC8tL2lzc3Vlcy8xMjA2MQ0KPiAgIFtp
OTE1IzEyNDM0XTogaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pOTE1L2tlcm5l
bC8tL2lzc3Vlcy8xMjQzNA0KPiAgIFtpOTE1IzEyOTAzXTogaHR0cHM6Ly9naXRsYWIuZnJlZWRl
c2t0b3Aub3JnL2RybS9pOTE1L2tlcm5lbC8tL2lzc3Vlcy8xMjkwMw0KPiAgIFtpOTE1IzEyOTA0
XTogaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pOTE1L2tlcm5lbC8tL2lzc3Vl
cy8xMjkwNA0KPiAgIFtpOTE1IzkxOTddOiBodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcv
ZHJtL2k5MTUva2VybmVsLy0vaXNzdWVzLzkxOTcNCj4gICBbaTkxNSM5NDEzXTogDQo+IGh0dHBz
Oi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9kcm0vaTkxNS9rZXJuZWwvLS9pc3N1ZXMvOTQxMw0K
Pg0KPg0KPiBCdWlsZCBjaGFuZ2VzDQo+IC0tLS0tLS0tLS0tLS0NCj4NCj4gICAqIExpbnV4OiBD
SV9EUk1fMTU3MzggLT4gUGF0Y2h3b3JrXzE0MTc0OXYxDQo+DQo+ICAgQ0ktMjAxOTA1Mjk6IDIw
MTkwNTI5DQo+ICAgQ0lfRFJNXzE1NzM4OiBiMjFmMTQxM2VhMTg2MGU4MGZkMjc4MTEyZTgyMGU2
ZGFkZmM5ZGY5IEAgZ2l0Oi8vYW5vbmdpdC5mcmVlZGVza3RvcC5vcmcvZ2Z4LWNpL2xpbnV4DQo+
ICAgSUdUXzgxMjQ6IDgxMjQNCj4gICBQYXRjaHdvcmtfMTQxNzQ5djE6IGIyMWYxNDEzZWExODYw
ZTgwZmQyNzgxMTJlODIwZTZkYWRmYzlkZjkgQCANCj4gZ2l0Oi8vYW5vbmdpdC5mcmVlZGVza3Rv
cC5vcmcvZ2Z4LWNpL2xpbnV4DQo+DQo+ID09IExvZ3MgPT0NCj4NCj4gRm9yIG1vcmUgZGV0YWls
cyBzZWU6IA0KPiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNo
d29ya18xNDE3NDl2MS9pbmRleC5odG1sDQoNCi0tDQpKYW5pIE5pa3VsYSwgSW50ZWwNCg==
