Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 13589B452DC
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Sep 2025 11:18:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A0A3B10EB3C;
	Fri,  5 Sep 2025 09:18:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OL5DNh4a";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D02E10E2CD;
 Fri,  5 Sep 2025 09:18:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757063921; x=1788599921;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=e2YtfDYv1m9WxovN4wbT9YXTY1WmPeX1VO+nB6yj9bw=;
 b=OL5DNh4aSO2RVeaL0xXQITElH3wMix5rSEAinrpFQmE6Rhhd4J8rYJfV
 KpcMfvyjxy2/9itPiLyyh+8CmnO3K2M5Ojatx2KLKQN0UUuDnrM2pbmgL
 HTJQu8H3FBl2zx9zRyTEFiqP99lBF6YsDdTQmR//PpDoQE8U/980n2vG+
 4p9uXqiQK7FqhVgkAsZbV46AYrgot0nrZZ+IGttRq82bbRiImdxda1kkQ
 6PN/6yxl7b62bd6ibOTG7L71liqn2B/PA0rlRpxyDE2z4PoteWv+BrkVk
 nOUSPt03qPhaaLZDua7+lelUMtQNt2gbd5ynULLxFxFMPVAL8aX5KtLCw w==;
X-CSE-ConnectionGUID: 6a24+N/1TD2JURm+M/9Gaw==
X-CSE-MsgGUID: w+Ackx5uTn+T+/H8kHu/hA==
X-IronPort-AV: E=McAfee;i="6800,10657,11543"; a="58625441"
X-IronPort-AV: E=Sophos;i="6.18,240,1751266800"; d="scan'208";a="58625441"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2025 02:18:41 -0700
X-CSE-ConnectionGUID: c6x+ErYKTQaCHo5O8HfOtw==
X-CSE-MsgGUID: jM5WdgFdQA2BEptDxr+k4A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,240,1751266800"; d="scan'208";a="171329849"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2025 02:18:40 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Fri, 5 Sep 2025 02:18:39 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Fri, 5 Sep 2025 02:18:39 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (40.107.101.87)
 by edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Fri, 5 Sep 2025 02:18:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=kWKv8GeNj5YjeH1jyF74/6M22/Wrjkxoc8QqAAq3k2uGkz2/VHT0gIgc9lAvkp2QjMTzJbTvDfZxK+PDGV49KRVDTn/n6RPoDw56X6CaTeLI3+XEfky5vnq27qH+BmekNku7nSpIKf7Q45uYgQot1+wzwmU2qjq4Q7F4OnNse7p6Gl2t/OETsusuqqW/X2JJAUVfwOTWQhi4rn1CZHIuAL2URDqNQLghvh5VryvcOjGoLALUcwl8rI8BASxK+ONUy32YXitBiIYi+3hWHUVpvgGGfhGv4/OA4hepc3IFHm0Eyb7ol4Qg2nilfSsvSdsMSrCe8RSQub8wOjTQaMP9SQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=e2YtfDYv1m9WxovN4wbT9YXTY1WmPeX1VO+nB6yj9bw=;
 b=Dg62sNQQx+u5nHzCmcrO47iKj3l2O9fd0O81cSymQJuuyO8/qPUWebx3IjVFT56V+psmuMNAbOQ4hGyTXKRKvLtmp2tats/e+Xa4RRBVLUx5D0Z8MysRLDuYtPUfriw9bGQcutz3dI8owL9QbkouyzrYxw+g8R28VxAmjsRl5lTsYTLovdGhvtWtnEDQuUQvyjw4jT3NwBVlwm9BqsMiV/vwBLky8kEOhYwtj0KxJj4CzdNtHOaniGlB7OTSUYKvdQQwV+EJstnYR5ShKGtO4I4yMP0GBECGBXLTh4Z6L4MCkalQZBQNvACHAqJlVA68hLK46m+E5LJm/o82aMvgHQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::28) by SA3PR11MB8076.namprd11.prod.outlook.com
 (2603:10b6:806:2f0::15) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9094.17; Fri, 5 Sep
 2025 09:18:38 +0000
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::b3a6:f19a:9bce:ba36]) by DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::b3a6:f19a:9bce:ba36%8]) with mapi id 15.20.9073.026; Fri, 5 Sep 2025
 09:18:38 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH] drm/i915/display: Initialize phy and ch variables
Thread-Topic: [PATCH] drm/i915/display: Initialize phy and ch variables
Thread-Index: AQHcHMu3cpX4rER23Eic0lYWlRCtxrSBYC2AgAAA8PCAAAVIgIAC695Q
Date: Fri, 5 Sep 2025 09:18:38 +0000
Message-ID: <DS4PPF69154114FF52A86495F17283B5377EF03A@DS4PPF69154114F.namprd11.prod.outlook.com>
References: <20250903120147.1799446-1-mika.kahola@intel.com>
 <4007cf393a333c1ffe62c2245c098bb99751f55e@intel.com>
 <DS4PPF69154114F895D5FD0289E7008DC83EF01A@DS4PPF69154114F.namprd11.prod.outlook.com>
 <8a7129a9d1954dfbf0a3963d982fabe9feda7659@intel.com>
In-Reply-To: <8a7129a9d1954dfbf0a3963d982fabe9feda7659@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPF69154114F:EE_|SA3PR11MB8076:EE_
x-ms-office365-filtering-correlation-id: 67c83a96-751c-4339-4636-08ddec5d32a7
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?RTY0RXFGRVNUeTRyQ2M1WlM2NS9PQTV0QWlPUDYwdlZjYmw4dVFvSmFGRis4?=
 =?utf-8?B?ZDhLUVBwc3VZL3ZWK04rVWlzeHRlT0pxTitKSDlqdlBHTExQTnBVMXB6ekht?=
 =?utf-8?B?RTJ5ODZpMFhBdmllWStwT2VVUzlBd0JTUFFlYnV0NDdCUDB1eUV5VW9OZkxy?=
 =?utf-8?B?V0pUN3FCSG1tYXdpN21saVlZL01XTWtNS2hGbXV5Tk9WblRyT29mUjRIcnJV?=
 =?utf-8?B?YzZSQUhvV3orUUYrbTBaaWk4TUNZTFEwTS9IUHpRTlFaNWtHc2VNNDZtMEJZ?=
 =?utf-8?B?d0h3Tm8wdzNmb3gyVVNESFR4NjlaUU5VNVlPQlRHcGpkbGdkOW5tVnhrVjlq?=
 =?utf-8?B?MjdKWWFTdml6NWhiMFhVbVc3SnRUUENrUE9LSmFsTkJ3RThvNG9tZkE4UGhM?=
 =?utf-8?B?R1pkY0d1WHBPVWxsanAxRVk1UlBkSkZKTnBTNTFsZlZZajU2THZwY1kwVTNB?=
 =?utf-8?B?NHJ3RzdBT1l2Y2RycURNd0ZZUm5TWmJoQUZtZ0VhTXU3VnhBVnJodUErcUoy?=
 =?utf-8?B?RUNLWk9XYm5ZaVZ3OFU5Y1RSOWQwWTBsQ0FJUlVTMDdranhOU0JKR1Nzcmdl?=
 =?utf-8?B?K0ZZdGtWNm8rRGVWcTlHWDZGSVRicEhNUkdmc2dEek1SbEhyc3VNWGFGWVVN?=
 =?utf-8?B?cWZCVWgydmEvK1dWUW9adlV0cStqSzQrMXlLQU83YmgzREJVak9ldDE5N0lh?=
 =?utf-8?B?WCttNXl0ZVNIbjNqNTNmQ0hJWXZ0dXNkWjgrNG5zNXEvRzdwS1FuSHp6eVQ4?=
 =?utf-8?B?RWp4U3Y0K1dGNFI1SkR1YmVYdERjU1d4cmk0K1RJdS8rWm9mUWJTWHkrL0pu?=
 =?utf-8?B?R0dHTkgxeG1abjdzTk5uUmZoNXduVjFxRWx1S2hDV3BwZXpxdlpPVjVvZytw?=
 =?utf-8?B?OXRyNWZKVUlzeU9nVHBNTmlpZjBZeGl2eFVscUwxUFBZcHRWdHdrMUVBRnZZ?=
 =?utf-8?B?TTB6c1RXNTVETkQyNkpDcVRKc0xweDUvVkJSQ0haM1F5dWNndGo4M2tRY3ZZ?=
 =?utf-8?B?TWlaUjdSM1hodlJIRWMvZGFTQTZ5VXFmZ1pEb3daZ0F4VXJjZ25QSURrQ2M2?=
 =?utf-8?B?MmVCSk42Ly9RODkyK0lCVkFJRUN4NkV4QWtiQlV2MnB3UXB4WmR5aUFWMmNW?=
 =?utf-8?B?MWpJd0o1eVg1UGp5N3FoUHJuYU1JL3cyNjByMGtmdXlwNVRBLzNNMzdYQmM0?=
 =?utf-8?B?NUU3dy8rZGtzOVJuRGpWYzluQnNRZzE3aEdzSTJxcmJ5eEM0RjJMSlBhdnF4?=
 =?utf-8?B?STJGNCsyRENycTIrODhEcm9qYkoxMFdWb1QrSHp5RW5jcXhHZXc1ZjV5cEVh?=
 =?utf-8?B?Qnk2dDFNRW5rdVhtbm1kdFB2RGg4ckJGV09QaytIbWJvbHdyZHIvV3cwaTc1?=
 =?utf-8?B?ODV3ZWNsNjVlZVZUNE5WcTc1KytsQThOcnN6M2EzZlRsUG1UOHlzQWlCYi94?=
 =?utf-8?B?MU91TEtOQUhQcnFPK3dqejFSSHBZMi9PVE9SaVNpazJxYnl3ZjdKbFVaNHRR?=
 =?utf-8?B?T2w0UmZEQUs0NHNGNUZXaTVsOVdnZ2p0NGdVTlI4Q3NOTXRmNGs0SWJ6OVBq?=
 =?utf-8?B?WUt5c3ZsOW56TWlSUHh4MTNUVGdieVVpcGw1ZWhwU2FsZzRuZWlpRE51MGk4?=
 =?utf-8?B?MURzZ2tsaWd2cWZ6VVFyUmRFcHBERVBsMWJtbXVDdFJkWG1EQ0hWSG9yS1Bi?=
 =?utf-8?B?WnV5M0Qvdk9PUGx5SXZ5dUZIclkxQVdzM29Sb205QzNnNFFETE1mQlR5OGQv?=
 =?utf-8?B?RXg0STZTUFkxUzNacmRXZlNwaG1LSktQZ1hjRSt6NXBTL3FXMU1yeEt2dTBn?=
 =?utf-8?B?OVBkZWtDdGl3Mk4xLytMSW5ydmNoY0lPVVoweHBuODBsamZDN0czWnpPZU5x?=
 =?utf-8?B?RmQveVBEaUlha3cwVUs3Z0lGMy9NekhQeW1HK1RXbm1BcFJxYTU4VVgxNEg5?=
 =?utf-8?B?QVJQakx6S3V5NVU4d1ZVcWNsalpLL3RIb0gzVGJsWER5MzVYbjBubFZnUm8x?=
 =?utf-8?B?QUtQWldNQ1l3PT0=?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPF69154114F.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?S0c4VGg3YU5HRStxV0lCeWpOb0xiYUp5OXJQTXp6eFk2VXBqZ3d6Q1Baa1Uz?=
 =?utf-8?B?eUJ4Z1k0bVVKYlBsNy9ZblI4M05oOWVUSkNFWDdwQkxTem5EWXEwMDBpRy9X?=
 =?utf-8?B?ZDhjZVU2TE1PNmlhSzF0dnFGUG9DN3BNUXBTL2x1WFZ6UHBkc0JoUlhnR1pn?=
 =?utf-8?B?MVZOUTBJclRqeFBWcFZDL0hrWWVvb013aWhGYWhOSEErNldrWWxGcldiS0VM?=
 =?utf-8?B?UFg5V1JlNXlKdFdVYWRsSlFBQ2JXaW41ZXhwL2ZobmJLNWxiVHFzTU9zcnRy?=
 =?utf-8?B?cmhRUXMwU3pjdzV4Q3ZCNDFoMWhZcHlsZ2xpVVROQjlkdDBCWXQ0aEx6RVpa?=
 =?utf-8?B?UHdUd0pDV3BqUHdvdGNUcVNGWXhoVTdTL25RcXVQeVdyMmViUndyMGhJQjdP?=
 =?utf-8?B?MWM3NHpOc3BFdkxuZG04YVFlM2ZyUVg0WVgwSy92RVpJbVZ5VmxrZWRoRmx0?=
 =?utf-8?B?SzVQZU5ncnhwNHl1TFRVV1VSZ0FpeHRxTWk4aFk1OXpQQU9BZkZmUloybnUr?=
 =?utf-8?B?WjZSMDBLWHpWZ1BWajZidUN4OHFUUHFHcWtldTJLbGxhamtIUHR5QlliVExy?=
 =?utf-8?B?RDBoWHNQV1h4MjNyVDZ6cXRmdjl5cUFFTWV1cFgrUmJYYWdMQnI1K3ByRlNK?=
 =?utf-8?B?STR2V0ZubHg2aFhGRlNnT3Fwb3ZEbWx5TVIxUCszQmg0TEdKNmRXaWZsQmxJ?=
 =?utf-8?B?Z3AxYURDSlcxN0oyU2ZnSktwU3JhS0pXM3FRYzRSem1tU3Bsb1JtUEpzU0Uv?=
 =?utf-8?B?NWw3Z1l3LzJ6a0xxcGFlVlE0UlVCSXJEenMzUmlQRHdUcFdqWURlZDNURk42?=
 =?utf-8?B?TVp2OVlacEoxMHRaaUs1U0Z1UFhQRnFweVJUOWpFVlE3RTlabXVXZFhsOG5D?=
 =?utf-8?B?Z2xlbUZTaC9STDVkSVFGbmRwTGJ0MDJLVzZxUDNHNEhoRExiN2UwWWlIc2hv?=
 =?utf-8?B?b1FHaUcrZDVINmJNanUrb0RKOEN1V3UvaEpBZ2FyUmt4SDhuS3RVWGNCZ0tL?=
 =?utf-8?B?NEdNVE1CYWFKVnk2dXRzT0diYmlUSGJUNjU3Ny81TEt3K3FNYjI2UWNtRVg1?=
 =?utf-8?B?TnN1WDdmbkkyMVh0aEttL0NWb1pPeEJka2hMZVhGazVyOXBldDl0aElZQ2s4?=
 =?utf-8?B?eWhUUnRXdVBZK3N5TkYyanZrSG1ycCsxK0RnWjJTMElscHIzNGgzOWFoODdw?=
 =?utf-8?B?WWRpSUJjV1ZiT012eWRMOWtXTWtzL3hFOFVyang3aytHS0xONnVRQTcwOE5R?=
 =?utf-8?B?MTM2Q3RyWjh2YjBzMTZORGlDTmphZVV2dHJyV1ZmRE5vTHJkK0pXU21MRHBU?=
 =?utf-8?B?RFA0YlJKbDlvLzdadHRPV1FlT1lCanFSNEFMQlF5WUM1YlVCZE1NZHB3Y1NE?=
 =?utf-8?B?NXBsalB5TkhYOElhTEhRV1B3d1k1eVhKemxpdldTMGJIQjRWOXh6TXVwUmZI?=
 =?utf-8?B?RXF5UUJSNjVJOE4xY0d6d3h3QW5YSjFrNVhUSUZXK09EMmtEZXRTejVYdll4?=
 =?utf-8?B?VkZxTU1jN3VqaFJ3b2c5VE9QU3M4akpkSXBFYmNmN2lXMUZWUEdPMXlnSjNi?=
 =?utf-8?B?UmErSGkwdjNsajlIclQ4djVSMGRXdTdhcEQ4TE1NUTVGNjlwOWpIVHJ0SDJK?=
 =?utf-8?B?TzI3OWEvR3p5U0F2VE55MHFTN3FQNTBGV2N2bWFBR01nWDFrb0pzQS9SRWpx?=
 =?utf-8?B?dUZVUkYzMVdkQUxJMUxWNnVWV3FRTURBM09xeFFZMm0xSjBxV1lQTmtCeVRV?=
 =?utf-8?B?RDluYnZCMVozMUdJM041a2R6eFhvaTliUUowWkpIS2dVOCtQU2FyM0hDTFlI?=
 =?utf-8?B?MVFTekpQTWJScnU5UDhqRmpaOU9uNFpXMGhZQ1FPM3E2ZEtLUEFmVldzRUZ4?=
 =?utf-8?B?Y1lxQTdWd3l2MFNHSEVtQVhUUDFUSUVrdW05UzJBc2dwV1JvNkRmTVF2S0w1?=
 =?utf-8?B?aXBvMGhaV2VWUHEzQ3RWUlBCT280dnBZSFhRdW5BR2FIb0NSNVBPNFhEWkpo?=
 =?utf-8?B?ZmI1ZXAzK0RkZ21zS1NWTkIyak42NEFMYXNjbTJBRlU1VW5XeEVLN29lZkto?=
 =?utf-8?B?N3ExeHl0dHAwZklHbEkyd053b3BvUXpyZUpaOGRMa2dtdzFrdUlSZTZkdzBr?=
 =?utf-8?Q?PkQAFHdZERbtFG+IGqqF+Ewn/?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPF69154114F.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 67c83a96-751c-4339-4636-08ddec5d32a7
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Sep 2025 09:18:38.1774 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: CpJzp336gQOGrb4aEVKOcMdo7siJTt6a1Avba6Ajlk2pgoGYy/U/F18W8H5CAfxM238pG5g7w3YTW95GZIJ5jg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB8076
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBKYW5pIE5pa3VsYSA8amFuaS5u
aWt1bGFAbGludXguaW50ZWwuY29tPg0KPiBTZW50OiBXZWRuZXNkYXksIDMgU2VwdGVtYmVyIDIw
MjUgMTUuNDENCj4gVG86IEthaG9sYSwgTWlrYSA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPjsgaW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZzsgaW50ZWwteGVAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnDQo+IFN1YmplY3Q6IFJFOiBbUEFUQ0hdIGRybS9pOTE1L2Rpc3BsYXk6IEluaXRpYWxpemUg
cGh5IGFuZCBjaCB2YXJpYWJsZXMNCj4gDQo+IE9uIFdlZCwgMDMgU2VwIDIwMjUsICJLYWhvbGEs
IE1pa2EiIDxtaWthLmthaG9sYUBpbnRlbC5jb20+IHdyb3RlOg0KPiA+IE9rIGdvb2QgdG8ga25v
dy4gTGV0J3MganVzdCBpZ25vcmUgdGhpcyBwYXRjaC4NCj4gDQo+IFRoYXQgc2FpZCwgYWxsIHBs
YWNlcyB0aGF0IHVzZSBieHRfcG9ydF90b19waHlfY2hhbm5lbCgpLCB2bHZfZGlnX3BvcnRfdG9f
Y2hhbm5lbCgpLCB2bHZfZGlnX3BvcnRfdG9fcGh5KCksDQo+IHZsdl9waXBlX3RvX2NoYW5uZWwo
KSwgb3Igdmx2X3BpcGVfdG9fcGh5KCkgbmVlZCAqYm90aCogdGhlIHBoeSBhbmQgY2hhbm5lbC4N
Cj4gDQo+IFNvIEknbSB0aGlua2luZyB5b3UgY291bGQgYWRkDQo+IA0KPiBzdHJ1Y3Qgew0KPiAg
ICAgICAgIGVudW0gZHBpb19waHkgcGh5Ow0KPiAJZW51bSBkcGlvX2NoYW5uZWwgY2hhbm5lbDsN
Cj4gfSBkcGlvX3BoeV9jaGFubmVsOw0KPiANCj4gYW5kIGNvbnZlcnQgdGhlIGFib3ZlIGZ1bmN0
aW9ucyB0byBhbHdheXMgcmV0dXJuIHRoYXQgc3RydWN0LiBJdCdzIHNtYWxsIGVub3VnaCB0byBy
ZXR1cm4gYXMgYSB3aG9sZS4gU29tZXRoaW5nIGxpa2U6DQo+IA0KPiAJc3RydWN0IGRwaW9fcGh5
X2NoYW5uZWwgcGh5X2NoYW5uZWw7DQo+IA0KPiAJcGh5X2NoYW5uZWwgPSBieHRfcG9ydF90b19w
aHlfY2hhbm5lbChkaXNwbGF5LCBwb3J0KTsNCj4gDQo+IGFuZA0KPiANCj4gCXBoeV9jaGFubmVs
ID0gdmx2X2RpZ19wb3J0X3RvX3BoeV9jaGFubmVsKGRpZ19wb3J0KTsNCj4gDQo+IGFuZA0KPiAN
Cj4gCXBoeV9jaGFubmVsID0gdmx2X3BpcGVfdG9fcGh5X2NoYW5uZWwocGlwZSk7DQo+IA0KPiBU
aGVuIHlvdSBjYW4gYWxzbyBkbyBzL3BoeS9waHlfY2hhbm5lbC5waHkvIGFuZCBzL2NoL3BoeV9j
aGFubmVsLmNoLyBhcyBjbGVhbnVwIChpZiBpdCBhY3R1YWxseSBjbGVhbnMgdGhpbmdzIHVwLCBt
YXliZSBub3QpLg0KPiANCj4gQm9udXMgcG9pbnRzIGlmIHlvdSBjYW4gY29tZSB1cCB3aXRoIGEg
YmV0dGVyIG5hbWUgdGhhbiAicGh5X2NoYW5uZWwiLiA7KQ0KPiANCj4gV2l0aCB0aGF0LCB0aGUg
aW50ZXJmYWNlIGdldHMgcmVkdWNlZCBmb3Igdmx2LCBhbmQgaXQncyBvYnZpb3VzIHRvIHN0YXRp
YyBhbmFseXplcnMgdGhlIHN0dWZmIGdldHMgaW5pdGlhbGl6ZWQuIFdpbi13aW4/DQoNClRoYW5r
cyBKYW5pISBUaGlzIGlzIHNvbWV0aGluZyBJIGNvdWxkIGltcGxlbWVudCByYXRoZXIgdGhhbiBz
aW1wbHkgY2hlY2tpbmcgdGhlIHJldHVybiB2YWx1ZXMgb2YgdGhlIGZ1bmN0aW9ucy4NCg0KLU1p
a2EtDQo+IA0KPiANCj4gQlIsDQo+IEphbmkuDQo+IA0KPiANCj4gPg0KPiA+IFRoYW5rcyENCj4g
Pg0KPiA+IC1NaWthLQ0KPiA+DQo+ID4+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+ID4+
IEZyb206IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBsaW51eC5pbnRlbC5jb20+DQo+ID4+IFNl
bnQ6IFdlZG5lc2RheSwgMyBTZXB0ZW1iZXIgMjAyNSAxNS4xOQ0KPiA+PiBUbzogS2Fob2xhLCBN
aWthIDxtaWthLmthaG9sYUBpbnRlbC5jb20+Ow0KPiA+PiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnOyBpbnRlbC14ZUBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gPj4gQ2M6IEthaG9s
YSwgTWlrYSA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPg0KPiA+PiBTdWJqZWN0OiBSZTogW1BBVENI
XSBkcm0vaTkxNS9kaXNwbGF5OiBJbml0aWFsaXplIHBoeSBhbmQgY2gNCj4gPj4gdmFyaWFibGVz
DQo+ID4+DQo+ID4+IE9uIFdlZCwgMDMgU2VwIDIwMjUsIE1pa2EgS2Fob2xhIDxtaWthLmthaG9s
YUBpbnRlbC5jb20+IHdyb3RlOg0KPiA+PiA+IHBoeSBhbmQgY2ggdmFyaWFibGVzIGFyZSBwb3Rl
bnRpYWxseSB1c2VkIHVuaW5pdGlhbGl6ZWQuDQo+ID4+DQo+ID4+IFRoZXkncmUgbm90LCBieHRf
cG9ydF90b19waHlfY2hhbm5lbCgpIGluaXRpYWxpemVzIHRoZW0gaW4gYWxsIGNvZGUgcGF0aHMu
DQo+ID4+DQo+ID4+ID4gVG8gbWFrZSBhYnNvbHV0ZWx5IHN1cmUgdGhhdCB0aGVzZSB2YXJpYWJs
ZXMgYXJlIG5vdCB1c2VkDQo+ID4+ID4gdW5pbml0aWFsaXplZCBsZXQncyBpbml0aWFsaXplIHRo
ZXNlIHdpdGgga25vd24gdmFsdWVzIGFzDQo+ID4+ID4gRFBJT19QSFkwIGFuZCBEUElPX0NIMCwg
cmVzcGVjdGl2ZWx5Lg0KPiA+PiA+DQo+ID4+ID4gU2lnbmVkLW9mZi1ieTogTWlrYSBLYWhvbGEg
PG1pa2Eua2Fob2xhQGludGVsLmNvbT4NCj4gPj4gPiAtLS0NCj4gPj4gPiAgZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcGxsX21nci5jIHwgNCArKy0tDQo+ID4+ID4gIDEgZmls
ZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pDQo+ID4+ID4NCj4gPj4g
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcGxsX21n
ci5jDQo+ID4+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwbGxfbWdy
LmMNCj4gPj4gPiBpbmRleCA4ZWE5NmNjNTI0YTEuLjQ1YjY3YTM3MTZlOSAxMDA2NDQNCj4gPj4g
PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwbGxfbWdyLmMNCj4g
Pj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwbGxfbWdyLmMN
Cj4gPj4gPiBAQCAtMjE3NCw4ICsyMTc0LDggQEAgc3RhdGljIGJvb2wgYnh0X2RkaV9wbGxfZ2V0
X2h3X3N0YXRlKHN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5LA0KPiA+PiA+ICAJc3RydWN0
IGJ4dF9kcGxsX2h3X3N0YXRlICpod19zdGF0ZSA9ICZkcGxsX2h3X3N0YXRlLT5ieHQ7DQo+ID4+
ID4gIAllbnVtIHBvcnQgcG9ydCA9IChlbnVtIHBvcnQpcGxsLT5pbmZvLT5pZDsgLyogMToxIHBv
cnQtPlBMTCBtYXBwaW5nICovDQo+ID4+ID4gIAlpbnRlbF93YWtlcmVmX3Qgd2FrZXJlZjsNCj4g
Pj4gPiAtCWVudW0gZHBpb19waHkgcGh5Ow0KPiA+PiA+IC0JZW51bSBkcGlvX2NoYW5uZWwgY2g7
DQo+ID4+ID4gKwllbnVtIGRwaW9fcGh5IHBoeSA9IERQSU9fUEhZMDsNCj4gPj4gPiArCWVudW0g
ZHBpb19jaGFubmVsIGNoID0gRFBJT19DSDA7DQo+ID4+ID4gIAl1MzIgdmFsOw0KPiA+PiA+ICAJ
Ym9vbCByZXQ7DQo+ID4+DQo+ID4+IC0tDQo+ID4+IEphbmkgTmlrdWxhLCBJbnRlbA0KPiANCj4g
LS0NCj4gSmFuaSBOaWt1bGEsIEludGVsDQo=
