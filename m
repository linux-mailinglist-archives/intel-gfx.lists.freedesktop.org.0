Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F1738C3E5F6
	for <lists+intel-gfx@lfdr.de>; Fri, 07 Nov 2025 04:40:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0D75B10E185;
	Fri,  7 Nov 2025 03:40:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jIoqlGMO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BAB7910E185;
 Fri,  7 Nov 2025 03:40:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762486823; x=1794022823;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=jTR7LnShfCli9jfE36YqLmnbInSQQ4jG/C9QMI7usyE=;
 b=jIoqlGMOKSMGJzrVBTtEFYhREwXaMhOmW+s5jeh7bOfHtc6oLnubssVt
 +cmIJuyseosfWEO+5SsRsnEUU4sQKB5j6xNpbrV73TVsyYVNUECXpCG28
 D2KZ82FgIrkHNmSHdxNkuIzdFoEaP+banFUfvs+FI8hU70Sy7hgFHDyKF
 bfLQevTn+BKfAJtuAv++zGFnqLSfpPf8unJ5l9TaWCa175D7UKDHxzkDv
 srtOI9p6oMxT0op5x5grZ3cNYcm+MPeBNdMjtl/gVFG+2hvqSDh6zXZuc
 OnQxFoyfIKiqhiQDJn7kyK9LiteTOkqqMozbS422sC6OyIEw4W+uXv0mJ g==;
X-CSE-ConnectionGUID: C/GTLAeYQSOWAlx281o2SA==
X-CSE-MsgGUID: DTxCVShHR+mzjnSiNi7RKA==
X-IronPort-AV: E=McAfee;i="6800,10657,11605"; a="87266979"
X-IronPort-AV: E=Sophos;i="6.19,285,1754982000"; d="scan'208";a="87266979"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2025 19:40:22 -0800
X-CSE-ConnectionGUID: Rji6P1NWRIW/zgepe9trdQ==
X-CSE-MsgGUID: kHWQUGKiSgColLZEcvGh/A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,285,1754982000"; d="scan'208";a="187593639"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2025 19:40:21 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 6 Nov 2025 19:40:21 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Thu, 6 Nov 2025 19:40:21 -0800
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.39) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 6 Nov 2025 19:40:20 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=NCPILxf7B25/o6BaYtvDFILTuTuTFgxI7tYqqVRYcrTIEDj2h0TTYjpydLAmBgAaFlp73I7xPFfu5meu13bgy/sj8s89NWr6aSqH5mUSW4hanWSZTXtMjFBKGaVHVR+/rHmjZXKcwZu4Sjf7Zjq0y01+d0u2vDW2bL/BRJQpPgm/7qaKxVNUd+wX6l4SEqld5NtgIQeDUIX8/ikqPdiCNMT2JGbpY287FHZyWQs5dPesZYRualfOiDbbZFKv+m1aX2AGGtx7Ul9K/JIJj2NLVnc2zIe/5GNZb1zdwgtzZf9DkkWR2MPMJ9/B6oMDNykVLIJ4IsdsjXBIxt5AK1rXgA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jTR7LnShfCli9jfE36YqLmnbInSQQ4jG/C9QMI7usyE=;
 b=biDqkEBy3Jna8K1mBTlmKfT3AkMUIePjyO/mo38k4TAt52W9OQsQukFiyRaiTA6Y2Iw1KHHo3lA/xG4tDZk1j9oSkBK7YhilaRK2qW/176VhbpFHuYw2BjlCyqzFIzFyth3Dm1nux8qBc/mbwz/jPpZf+exZAESr59k7R3ya6vLvwHMVGiVmPBbBMoREN3Bu2eBuKGEGf7QIjO5o6sdxKBxV99adhZQXHV9+HUfXQzWsX1XIMfqBmjexGyKmgUw646N9MbG0hG9PjsmiKb1S4NtCcUBlQW+Px7GqukR22g6+4zoChni/bngbJ7o82vDn5P5jZn03zvDhnbPt5asFXg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by MN0PR11MB6254.namprd11.prod.outlook.com
 (2603:10b6:208:3c5::17) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9298.9; Fri, 7 Nov
 2025 03:40:19 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::95c9:5973:5297:d3cc]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::95c9:5973:5297:d3cc%4]) with mapi id 15.20.9298.010; Fri, 7 Nov 2025
 03:40:19 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 =?utf-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH 5/7] drm/i915/ltphy: Nuke bogus weird timeouts
Thread-Topic: [PATCH 5/7] drm/i915/ltphy: Nuke bogus weird timeouts
Thread-Index: AQHcTocarcMzsDkLTkadoiOVPj9787TlfA+AgAAPX2CAABWLAIAAAd8AgADwS+A=
Date: Fri, 7 Nov 2025 03:40:18 +0000
Message-ID: <DM3PPF208195D8D76AD8ACA3763500F851BE3C3A@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20251105190433.16434-1-ville.syrjala@linux.intel.com>
 <20251105190433.16434-6-ville.syrjala@linux.intel.com>
 <f5d014e2b968f6b758a6c96210528b7607675945@intel.com>
 <DM3PPF208195D8D46BC28CDE4965CD063A6E3C2A@DM3PPF208195D8D.namprd11.prod.outlook.com>
 <aQyewv447ln68vnL@intel.com>
 <46ab856eab5fec27a57ce70fd4c6f454c580432f@intel.com>
In-Reply-To: <46ab856eab5fec27a57ce70fd4c6f454c580432f@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|MN0PR11MB6254:EE_
x-ms-office365-filtering-correlation-id: fd211ad9-32e8-4f3f-c17e-08de1daf5f67
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700021;
x-microsoft-antispam-message-info: =?utf-8?B?Q2pWK1JmR3lnb1YzQWpsNUdvaE13MVo1T0l4TG1XZGc4MHk3RDFSZXZFalc0?=
 =?utf-8?B?N21rYTJZVU1yYnUyUmNvVmhTaHU1RXcwdmpxU1A2anh0NXNreDFteml4Rmdv?=
 =?utf-8?B?R2hsWFF2Tkl2OVBqeEUwVmJOV0kxWmpkNXZGQ25WcVMzSnBMbC9FOWJHL0Nk?=
 =?utf-8?B?Nlp3SkdHdmFEdnBFU1RDUnBqbkZiSDQyY003OTRyaGdTblMvNkxlT0RCTnB6?=
 =?utf-8?B?ajc5dUxwSmR0eHJCWkVTdnpaUVMxWkV5MDJucVhJSmo2em54Rm15ZmI1VkJJ?=
 =?utf-8?B?VEkvMXZuUkl6TSs0ejlJVWM1Rm5SZXVvR2RzQmNjeU1adlA3WHFCKzBvSDhz?=
 =?utf-8?B?YnN2d0lsb2hsUGNGRjRHbmJDK0UvMFIyOWZtRjhKamk1T0NWdU5YMDVUMnps?=
 =?utf-8?B?Y0lnWEQzWnBzTEhoRVBKUEZIc3FzaDNCS0dQcjZvWmFwRFk3bmJ5NTdndDRK?=
 =?utf-8?B?RFNPOGtUbVhXUmRHSy9rbDJBTDlSV1RkQVMrbER3Y1pOdDNrVFdyNTdjenZF?=
 =?utf-8?B?eStrWGwxZ3pxM2gyTUhaSzlrYzdJVVRkWnBrdU9pS0kwaGZ4eHNhWXdvRlF5?=
 =?utf-8?B?Z2grRnNYSG53QlRsV2hSdG5rcXRFdFNFUUh6bU1qaWpjZisxRDMxN203Zlor?=
 =?utf-8?B?RUJrRUl4eG1RSmpKUkJHU3RrMnF3NXBxdGFocUJMUC9qMEQ2RER3TkI0a2dJ?=
 =?utf-8?B?Z1VqYUFBTC94ZUk5OHV6OFhkT0hsWDFjTWh6TnNpQklLc1NFSTdSS3ZGaWZW?=
 =?utf-8?B?ajBzQnFYTm5zUFVyTTRnSnErblRGR3FsQzA5blZyNFdXZGpTSjVRRUdaNkdO?=
 =?utf-8?B?MFp0Rm91TitOdm1mSmY2RjdJYmh1bVUvT2dlQk4yb2duT3d1ek1ySHhXRzFZ?=
 =?utf-8?B?Z1ZkRVdHZStaTElyeUM0bmFpdTJPZWIzOUZ4bDVFRVlTbFprN3BPS0NTR0I0?=
 =?utf-8?B?VmJWQzA2SGVqOU96a2lDWTBvMVNuRUgzUGx1bzlLc0lHVFhmNVhJUk5vS01v?=
 =?utf-8?B?WlJSRGE0TlVKZnhjREdnVEdqMlFvMjU5aGZsaCs4U1RnQzBydkpReVpqbm1j?=
 =?utf-8?B?U3N0WnhySzV3eDd4VExZM3Z4M3E1TGhCaS9DTSsyTjFkZElQV0I5QTZONFdS?=
 =?utf-8?B?dUZITTJrYjlOam1QMXpRNGtHcldsVkZkeU10WjlVcHdhYTVTc0RzWkQxcXhz?=
 =?utf-8?B?eUo2RnZYMFRoWUxJS1MvVC9RSHJmMFZXT0V1R0o5a0JCQ05DcGRUMjZ6TlRj?=
 =?utf-8?B?dGdlWS9ka1lPc2UrLzdaSUZDT2tFb256OEpEUTVtVXdEMUtvcVhxL2FzcGlu?=
 =?utf-8?B?RUMwUzFtZ1k1VzIwdG1PRUp3VzQycllWOGIvTWVCNTlzUUY5ZjRrc0xJRmMz?=
 =?utf-8?B?dkY0b0RyZEJ3Sy9HMHIzY1EySCtIa1hrcENURG43cXNxRWN5VUVnd3czNXla?=
 =?utf-8?B?ZDU3aVVQU0o0YnBGMVcwNGMzbWxMVkFCSXV2SnB3c1Z6d1dQYkVvaDVCaEV6?=
 =?utf-8?B?VWRDQVRnemp6TnVTcTAzVVg1UFQrZXNVdU9VMDdGVFFhRUdWN0tGdnYvRURB?=
 =?utf-8?B?NFc4dzRzcG1NSmhSZlBrcnMrSGk1RVJtWThkdGw5TENsRXE5NEZNUkE2REND?=
 =?utf-8?B?YUQ2aTdaM1RkR0pQMCtJYy9WdThxU0Y3aGR0aDR2Szk0eUFMTzBVdFE1V2dB?=
 =?utf-8?B?eDIwNHpqZnV5TmxMWllDdzk2emY3S3V6aTI3cW8wTkdDVTVJOHliMXVhSll5?=
 =?utf-8?B?ZXdIN252YmNHdHUvQnhBYmMzUzZjcVlwYXlFS1NMSEVrY3F1Qk9RemYxeXFK?=
 =?utf-8?B?Zll1YVFVRkpXWkFTNCt4cjBjcUxsc2U2TURBRjBLYUUxa2lOSFBlOTE3SUk2?=
 =?utf-8?B?WVZzalVranVaaUdSeWVDbVh0dm9Yd2V1ZkJrb2ZlNnc5R2JiVVduL3c0ZVRJ?=
 =?utf-8?B?Rnc4YzNybTgxcjB4RlJ5VitzVTQ1aytmdlhxY3dKYjg2ZDQ2SzZ5WEFGOU1G?=
 =?utf-8?B?Q1d3TW1SVlJpUzc3TWdUaWZLSFc4aGpkMTBETkJRRDd2cGxabTVqbWV3UGZt?=
 =?utf-8?Q?bU5SlT?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?UmVZNlNGU3J1OVppMFRJWlBnbGd2aDBhN3FCRExxUVlUZDRhNTRsOXE0ZTRk?=
 =?utf-8?B?SmZnbVN0OUp6OEJKODBiVDhSNjdMTlB1VmlCUllpVXZocHliU1RHV2hSVTho?=
 =?utf-8?B?cUNNM01ucE50NGlRQXJ3cG9Hd3ZRQ1VxenpDNGVvUkhRanRPSlRNM3IvRTZ6?=
 =?utf-8?B?ZlZYYkhCYVNUZFZDcWQxY0wvN2dpK3FzSHMyeVd3WGdydDFuME1IYVVnNXE5?=
 =?utf-8?B?UzdSdUVoVms0czlwcG1SYkFpVEZHa3FMRitpcGx4UGJsNWkrVk9Ta3czUFhx?=
 =?utf-8?B?L1hnK3g5a3E5Wm1BUlFVeCszelJMVTkwM3YzVWphRTMvQStlNklCdllpL2Nj?=
 =?utf-8?B?SkhCTVFBVERpam9uWkJISEo5TGVDYTMyR2ZEOW1zU2dzcTYxT1dyRGtsaldC?=
 =?utf-8?B?UXlPOWJEY25CeGVxekIrUHJDRno5VVBVU3BkZUlaZDRGQVg4R2hkVWJFNWwv?=
 =?utf-8?B?VCsxcDJlSE9US0FqMjRVcFhlNmhGaXFhYVhabys1a1gwK0RPbmsvZmxncW5K?=
 =?utf-8?B?ejF1aXVZVm5UbElqbjFBSnNjZlI5YXhYbmVINVFGTHBXZWRVUlRCa3lkSEI1?=
 =?utf-8?B?bmpoQ1dQWGl1bVl4K2o4NTFDd3ErRkdWRFlqOHNjb0VTbXRDamluVTFFa01V?=
 =?utf-8?B?WWozUk1wRThRTUJXZVZBNGhRYS8xV29jSGZ0UUZmaFQra0JzWEFiZ3FKVlNJ?=
 =?utf-8?B?WXpPZzNFS2xVdVJNZnRjdEVPbzVvSW9xM3VwVEN2ZEZraXRwcVBBdWlkSVUy?=
 =?utf-8?B?WUZOdW1LMjRtb3ZxcUVCdUt4alpGNkRLdk5VKzVTM1dCZ2tjSFRMa2xTRE0v?=
 =?utf-8?B?eWk5TngvQTFzbVVMSDhSMkpGTnFCUkYzWU1xUVpDeStKT1ZzY3lmWWVHWGRx?=
 =?utf-8?B?ZklibkFUd2FVb1B5dGtnOHZGQ0FXYlg3aExPR2FRdFpERnNiQ09ITkRJS1V0?=
 =?utf-8?B?OGQ1WTJRVzZzZjJqcDgrTmRaZGZDWkgrajBpVU5KY0kydVlleDNhMEFrUWtr?=
 =?utf-8?B?UTVOem0vOXlsTXJ3TkY5SDVKQmRUWXE1aVFUcXR5YzJpNlpYa3JFOEhtdDR1?=
 =?utf-8?B?NExpdkdncW8wMzF2SExFSmNuWExGQUNVVzZsM2dUYWVYYTJianBnemNMOVVp?=
 =?utf-8?B?ZE9uSnRscHh4UXpBaHZYWHJmZXVhS0Z0ejdMVytsM25iR0ZtNW9xQ21zNFc2?=
 =?utf-8?B?R2xZN1E1NVBORTVGaTE5andKZU91MlJSR2ltbnlKZjh2am1qei9jeU5wM1R5?=
 =?utf-8?B?NndJd1dPREJUWVpFNjBVNmk1clZaaTNPUTVnQUtob09GSlRhK3NmYUVPWDZm?=
 =?utf-8?B?ajBic1BqcFVrdVZqYVRQTFhrSVc3bEp2VnVYNjVJdFhGUWhlRjZ5bEY3aGpi?=
 =?utf-8?B?M2NiS3k4QnZ2T2k0Z1pSVks1Q0FqeS9mY0FQZ0NTZGlhUEVQV01TZnFYNVJF?=
 =?utf-8?B?aW80QTcxR0xhSzNtTXZueGxLck1TeUpidUc5VWtsdHNiZi95ZWF0YmUwOERB?=
 =?utf-8?B?WEh3RXpSY0tiVEJEZVlvaHN0OUplcmRXUDFjL05BY0t1NHhuWUxRTjM2TkJS?=
 =?utf-8?B?cVZ2dmwxd2tBVmdlcXQzdjVQR3RWRlIvKzBJK1EyRXlnNVV5bkduRVlqQjJw?=
 =?utf-8?B?a280c1lpcUpQdUNlWDdFR01XUmcvK0dOTmRXakpOVWRHRkRVZmJPVmZtK0cx?=
 =?utf-8?B?VVZXekYwRVlNdG0wYTZoRXRzRlo3a0trUHFrMmd6cU5PSStSN0xWKzVsY0Vo?=
 =?utf-8?B?aHZzK1ZhTkE0NHFFN2RFNTlHeUhtbDBTVTVrOE9OOWhTejU3ZW5xbktPUXFG?=
 =?utf-8?B?OXFQVFQ5YUZXSHBCc1R3YnNYdUlFTWNtaU5tdDUrb3pUWVVIaStGT1prSldK?=
 =?utf-8?B?djRMZU5kbHh1QzhJZnZBd3FkTDEyNnd3OXdDekpaWE1haUNRRXg4TlBhbURT?=
 =?utf-8?B?NWxXbzAxNW9sNzN3UEd4NnNjcEN3WDBMUG1wcnF4OFlpMW5QOUlTVXhGeDVL?=
 =?utf-8?B?OXRUV3JBVmw1bldxRlVYMjFwbmY3K29SZzVkRzc0dklObkFjTmFWNGxpRUZw?=
 =?utf-8?B?aTBidkxDMThzbml6S2xnY2J6UVN3Rms2TE5zaitIZ200WFRHRDR5Q2ZkNExY?=
 =?utf-8?Q?Pu6cA8K3qid/Fim3PQLGP/vNK?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fd211ad9-32e8-4f3f-c17e-08de1daf5f67
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Nov 2025 03:40:18.9934 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 5mXG3WGU+oRbnIE60jDVN5fpWLwQQWMwUz6z8DC/BoWeBLwxxr1uwxpa5p93FE6GjpYYKb4k56oEEwUu2MlDtw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6254
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSmFuaSBOaWt1bGEgPGph
bmkubmlrdWxhQGxpbnV4LmludGVsLmNvbT4NCj4gU2VudDogVGh1cnNkYXksIE5vdmVtYmVyIDYs
IDIwMjUgNjo0OSBQTQ0KPiBUbzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4
LmludGVsLmNvbT47IEthbmRwYWwsIFN1cmFqDQo+IDxzdXJhai5rYW5kcGFsQGludGVsLmNvbT4N
Cj4gQ2M6IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmc7IGludGVsLXhlQGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZw0KPiBTdWJqZWN0OiBSZTogW1BBVENIIDUvN10gZHJtL2k5MTUvbHRwaHk6
IE51a2UgYm9ndXMgd2VpcmQgdGltZW91dHMNCj4gDQo+IE9uIFRodSwgMDYgTm92IDIwMjUsIFZp
bGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+IHdyb3RlOg0KPiA+
IE9uIFRodSwgTm92IDA2LCAyMDI1IGF0IDEyOjAzOjI4UE0gKzAwMDAsIEthbmRwYWwsIFN1cmFq
IHdyb3RlOg0KPiA+PiA+IFN1YmplY3Q6IFJlOiBbUEFUQ0ggNS83XSBkcm0vaTkxNS9sdHBoeTog
TnVrZSBib2d1cyB3ZWlyZCB0aW1lb3V0cw0KPiA+PiA+DQo+ID4+ID4gT24gV2VkLCAwNSBOb3Yg
MjAyNSwgVmlsbGUgU3lyamFsYSA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+IHdyb3Rl
Og0KPiA+PiA+ID4gRnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4Lmlu
dGVsLmNvbT4NCj4gPj4gPiA+DQo+ID4+ID4gPiBUaGUgTFQgUEhZIGNvZGUgaXMgYWJ1c2luZyBp
bnRlbF9kZV93YWl0X2N1c3RvbSgpIGluIGFsbCBraW5kcyBvZg0KPiA+PiA+ID4gd2VpcmQgd2F5
cy4gR2V0IHJpZCBvZiB0aGUgd2VpcmQgc2xvdyB0aW1lb3V0cy4gSWYgdGhlc2UgYXJlDQo+ID4+
ID4gPiBhY3R1YWxseSBuZWVkZWQgdGhlbiB0aGUgZmFzdCB0aW1lb3V0cyBzaG91bGQgcmVhbGx5
IGJlIHNwZWNpZmllZA0KPiA+PiA+ID4gYXMgdGhlIGRlZmF1bHQgMiBtaWNyb3Njb25kIG9yIHNv
bWV0aGluZy4NCj4gPj4gPiA+DQo+ID4+ID4gPiBUaGlzIHdpbGwgbGV0IHVzIGV2ZW50dWFsbHkg
bnVrZSBpbnRlbF9kZV93YWl0X2N1c3RvbSgpIGFuZA0KPiA+PiA+ID4gY29udmVydCBvdmVyIHRv
IHBvbGxfdGltZW91dF91cygpLg0KPiA+PiA+ID4NCj4gPj4gPiA+IFNpZ25lZC1vZmYtYnk6IFZp
bGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+ID4+ID4NCj4g
Pj4gPiBTdXJhaiwgYW55IGlucHV0IGhlcmU/DQo+ID4+ID4NCj4gPj4gPiBSZXZpZXdlZC1ieTog
SmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4NCj4gPj4gPg0KPiA+PiA+ID4gLS0t
DQo+ID4+ID4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9sdF9waHkuYyAg
ICAgIHwgMTEgKysrKystLS0tLS0NCj4gPj4gPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2x0X3BoeV9yZWdzLmggfCAgMSAtDQo+ID4+ID4gPiAgMiBmaWxlcyBjaGFuZ2Vk
LCA1IGluc2VydGlvbnMoKyksIDcgZGVsZXRpb25zKC0pDQo+ID4+ID4gPg0KPiA+PiA+ID4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfbHRfcGh5LmMNCj4g
Pj4gPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9sdF9waHkuYw0KPiA+
PiA+ID4gaW5kZXggNmZiNjgxNTdiMzIyLi5jYzFkNmI3YTdkZTQgMTAwNjQ0DQo+ID4+ID4gPiAt
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2x0X3BoeS5jDQo+ID4+ID4g
PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2x0X3BoeS5jDQo+ID4+
ID4gPiBAQCAtMTE3OCwxMCArMTE3OCw5IEBAIGludGVsX2x0X3BoeV9sYW5lX3Jlc2V0KHN0cnVj
dA0KPiA+PiA+ID4gaW50ZWxfZW5jb2Rlcg0KPiA+PiA+ICplbmNvZGVyLA0KPiA+PiA+ID4gIAlp
ZiAoaW50ZWxfZGVfd2FpdF9jdXN0b20oZGlzcGxheSwNCj4gPj4gPiA+IFhFTFBEUF9QT1JUX0NM
T0NLX0NUTChkaXNwbGF5LA0KPiA+PiA+IHBvcnQpLA0KPiA+PiA+ID4gIAkJCQkgWEVMUERQX0xB
TkVfUENMS19QTExfQUNLKDApLA0KPiA+PiA+ID4gIAkJCQkgWEVMUERQX0xBTkVfUENMS19QTExf
QUNLKDApLA0KPiA+PiA+ID4gLQkJCQkgWEUzUExQRF9NQUNDTEtfVFVSTk9OX0xBVEVOQ1lfVVMs
DQo+ID4+ID4gPiAtCQkJCSBYRTNQTFBEX01BQ0NMS19UVVJOT05fTEFURU5DWV9NUywNCj4gPj4g
PiBOVUxMKSkNCj4gPj4gPiA+ICsJCQkJIFhFM1BMUERfTUFDQ0xLX1RVUk5PTl9MQVRFTkNZX1VT
LCAwLA0KPiA+PiA+IE5VTEwpKQ0KPiA+PiA+ID4gIAkJZHJtX3dhcm4oZGlzcGxheS0+ZHJtLCAi
UEhZICVjIFBMTCBNYWNDTEsgYXNzZXJ0aW9uIEFjaw0KPiA+PiA+IG5vdCBkb25lIGFmdGVyICVk
dXMuXG4iLA0KPiA+PiA+ID4gLQkJCSBwaHlfbmFtZShwaHkpLA0KPiA+PiA+IFhFM1BMUERfTUFD
Q0xLX1RVUk5PTl9MQVRFTkNZX01TICogMTAwMCk7DQo+ID4+ID4gPiArCQkJIHBoeV9uYW1lKHBo
eSksDQo+ID4+ID4gWEUzUExQRF9NQUNDTEtfVFVSTk9OX0xBVEVOQ1lfVVMpOw0KPiA+Pg0KPiA+
PiBBY2NvcmRpbmcgdG8gQnNwZWM6IDc0NDk5DQo+ID4+IExhdGVuY3kgY2FuIGJlIGVpdGhlciAy
MXVzIGZvciAxbXMgZGVwZW5kaW5nIG9uIHdoYXQgcG9ydCBpcyBjb25uZWN0ZWQuDQo+ID4+DQo+
ID4+ICA+ID4NCj4gPj4gPiA+ICAJaW50ZWxfZGVfcm13KGRpc3BsYXksIFhFTFBEUF9QT1JUX0NM
T0NLX0NUTChkaXNwbGF5LCBwb3J0KSwNCj4gPj4gPiA+ICAJCSAgICAgWEVMUERQX0ZPUldBUkRf
Q0xPQ0tfVU5HQVRFLCBAQCAtMTE5Miw3ICsxMTkxLDcNCj4gQEANCj4gPj4gPiA+IGludGVsX2x0
X3BoeV9sYW5lX3Jlc2V0KHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyLA0KPiA+PiA+ID4N
Cj4gPj4gPiA+ICAJaWYgKGludGVsX2RlX3dhaXRfY3VzdG9tKGRpc3BsYXksIFhFTFBEUF9QT1JU
X0JVRl9DVEwyKGRpc3BsYXksDQo+ID4+ID4gcG9ydCksDQo+ID4+ID4gPiAgCQkJCSBsYW5lX3Bo
eV9jdXJyZW50X3N0YXR1cywgMCwNCj4gPj4gPiA+IC0JCQkJIFhFM1BMUERfUkVTRVRfRU5EX0xB
VEVOQ1lfVVMsIDIsIE5VTEwpKQ0KPiA+PiA+ID4gKwkJCQkgWEUzUExQRF9SRVNFVF9FTkRfTEFU
RU5DWV9VUywgMCwgTlVMTCkpDQo+ID4+DQo+ID4+IEJzcGVjIDogNzQ0OTkNCj4gPj4gU2F5cyAy
MDB1cyBidXQgMm1zICgxLjVtcyB0byBiZSBwcmVjaXNlKSB3YXMgdGhlIGFjdHVhbCB0aW1lIHdl
IGZvdW5kDQo+ID4+IHRoZSB0aGlzIHRvIHdvcmsgcHJvcGVybHkNCj4gPj4NCj4gPj4NCj4gPj4g
PiA+ICAJCWRybV93YXJuKGRpc3BsYXktPmRybSwNCj4gPj4gPiA+ICAJCQkgIlBIWSAlYyBmYWls
ZWQgdG8gYnJpbmcgb3V0IG9mIExhbmUgcmVzZXQgYWZ0ZXINCj4gPj4gPiAlZHVzLlxuIiwNCj4g
Pj4gPiA+ICAJCQkgcGh5X25hbWUocGh5KSwNCj4gPj4gPiBYRTNQTFBEX1JFU0VUX0VORF9MQVRF
TkNZX1VTKTsgQEAgLTE2NzQsNyArMTY3Myw3DQo+ID4+ID4gPiBAQCB2b2lkIGludGVsX2x0X3Bo
eV9wbGxfZW5hYmxlKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyLA0KPiA+PiA+ID4gIAkJ
aWYgKGludGVsX2RlX3dhaXRfY3VzdG9tKGRpc3BsYXksDQo+ID4+ID4gWEVMUERQX1BPUlRfQ0xP
Q0tfQ1RMKGRpc3BsYXksIHBvcnQpLA0KPiA+PiA+ID4gIAkJCQkJIFhFTFBEUF9MQU5FX1BDTEtf
UExMX0FDSygwKSwNCj4gPj4gPiA+ICAJCQkJCSBYRUxQRFBfTEFORV9QQ0xLX1BMTF9BQ0soMCks
DQo+ID4+ID4gPiAtDQo+ID4+ID4gWEUzUExQRF9NQUNDTEtfVFVSTk9OX0xBVEVOQ1lfVVMsIDIs
IE5VTEwpKQ0KPiA+PiA+ID4gKw0KPiA+PiA+IFhFM1BMUERfTUFDQ0xLX1RVUk5PTl9MQVRFTkNZ
X1VTLCAwLCBOVUxMKSkNCj4gPj4NCj4gPj4gRGl0dG8gaGVyZS4NCj4gPj4NCj4gPj4gPiA+ICAJ
CQlkcm1fd2FybihkaXNwbGF5LT5kcm0sICJQSFkgJWMgUExMIE1hY0NMSyBBY2sNCj4gPj4gPiBh
c3NlcnRpb24gVGltZW91dCBhZnRlciAlZHVzLlxuIiwNCj4gPj4gPiA+ICAJCQkJIHBoeV9uYW1l
KHBoeSksDQo+ID4+ID4gWEUzUExQRF9NQUNDTEtfVFVSTk9OX0xBVEVOQ1lfVVMpOw0KPiA+PiA+
ID4NCj4gPj4gPiA+IEBAIC0xNzAyLDcgKzE3MDEsNyBAQCB2b2lkIGludGVsX2x0X3BoeV9wbGxf
ZW5hYmxlKHN0cnVjdA0KPiA+PiA+ID4gaW50ZWxfZW5jb2Rlcg0KPiA+PiA+ICplbmNvZGVyLA0K
PiA+PiA+ID4gIAkJLyogMTYuIFBvbGwgZm9yIFBPUlRfQlVGX0NUTDIgcmVnaXN0ZXIgUEhZIFB1
bHNlIFN0YXR1cyA9IDENCj4gPj4gPiBmb3IgT3duZWQgUEhZIExhbmVzLiAqLw0KPiA+PiA+ID4g
IAkJaWYgKGludGVsX2RlX3dhaXRfY3VzdG9tKGRpc3BsYXksDQo+ID4+ID4gWEVMUERQX1BPUlRf
QlVGX0NUTDIoZGlzcGxheSwgcG9ydCksDQo+ID4+ID4gPiAgCQkJCQkgbGFuZV9waHlfcHVsc2Vf
c3RhdHVzLA0KPiA+PiA+IGxhbmVfcGh5X3B1bHNlX3N0YXR1cywNCj4gPj4gPiA+IC0NCj4gPj4g
PiBYRTNQTFBEX1JBVEVfQ0FMSUJfRE9ORV9MQVRFTkNZX1VTLCAyLCBOVUxMKSkNCj4gPj4gPiA+
ICsNCj4gPj4gPiBYRTNQTFBEX1JBVEVfQ0FMSUJfRE9ORV9MQVRFTkNZX1VTLCAwLCBOVUxMKSkN
Cj4gPj4NCj4gPj4gRGl0dG8gaGVyZS4NCj4gPj4gSSB3b3VsZCBzdWdnZXN0IGdpdmluZyB0aGlz
IGEgQ0kgcnVuIG9uIE5WTFMgYmVmb3JlIG1lcmdpbmcgdGhpcy4NCj4gPg0KPiA+IFNpbmNlIHlv
dSBoYXZlIHNvbWUgaWRlYSB3aHkgdGhlc2UgbWFnaWMgbnVtYmVycyB3ZXJlIGNob3NlbiBwbGVh
c2UNCj4gPiByZWRvIGFsbCBvZiB0aGVzZSwgYW5kIG1ha2Ugc3VyZSB0bzoNCj4gPiAtIGRvbid0
IHVzZSBpbnRlbF9kZV93YWl0X2N1c3RvbSgpIHVubGVzcyBhYnNvbHV0ZWx5IG5lY2Vzc2FyeQ0K
PiA+IC0gaWYgeW91IG5lZWQgdG8gdXNlIGludGVsX2RlX3dhaXRfY3VzdG9tKCkgdGhlbiBlaXRo
ZXINCj4gPiAgIHVzZSB0aGUgZGVmYXVsdCAnMiw8d2hhdGV2ZXIgbXM+JyBvciAnPHdoYXRldmVy
IHVzPiwwJyB0aW1lb3V0cw0KPiA+IC0gZG9jdW1lbnQgYWxsIHRoZSB1c2VkIHRpbWVvdXRzLiBU
aGlzIGlzIGVzcGVjaWFsbHkgaW1wb3J0YW50DQo+ID4gICB3aGVuIHRoZXkgYXJlIG5vdCBkaXJl
Y3RseSBzcGVjaWZpZWQgaW4gYnNwZWMNCj4gDQo+IFllYWgsIHNob3VsZCBiZSBpbnRlbF9kZV93
YWl0X2Zvcl97c2V0LGNsZWFyfSgpIHRoZW4gcHJvYmFibHkuDQo+IA0KPiBXZSBzaG91bGQgcHJv
YmFibHkgY2hhbmdlIGFsbCBvZiB0aG9zZSBmcm9tIG1zIHRvIHVzIHVuaXRzIHRvIG1ha2UgdGhl
bQ0KPiBtb3JlIGdlbmVyYWxseSB1c2VmdWwgYWxzbyBmb3Igc2hvcnRlciB3YWl0cy4NCg0KU3Vy
ZSBsZXQgbWUgdGFrZSBjYXJlIG9mIHRoZSBsdCBwaHkgYW5kIGN4MCBwaHkgc3R1ZmYgaW4gYSBz
ZXBhcmF0ZSBzZXJpZXMgdGhlbg0KDQpSZWdhcmRzLA0KU3VyYWogS2FuZHBhbA0KDQo+IA0KPiBC
UiwNCj4gSm5pLg0KPiANCj4gDQo+ID4NCj4gPj4NCj4gPj4gUmVnYXJkcywNCj4gPj4gU3VyYWog
S2FuZHBhbA0KPiA+Pg0KPiA+PiA+ID4gIAkJCWRybV93YXJuKGRpc3BsYXktPmRybSwgIlBIWSAl
YyBQTEwgcmF0ZSBub3QNCj4gPj4gPiBjaGFuZ2VkIGFmdGVyICVkdXMuXG4iLA0KPiA+PiA+ID4g
IAkJCQkgcGh5X25hbWUocGh5KSwNCj4gPj4gPiBYRTNQTFBEX1JBVEVfQ0FMSUJfRE9ORV9MQVRF
TkNZX1VTKTsNCj4gPj4gPiA+DQo+ID4+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9sdF9waHlfcmVncy5oDQo+ID4+ID4gPiBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfbHRfcGh5X3JlZ3MuaA0KPiA+PiA+ID4gaW5kZXggOTIy
MzQ4N2Q3NjRlLi4zNmFiYzJiZGJkOWIgMTAwNjQ0DQo+ID4+ID4gPiAtLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2x0X3BoeV9yZWdzLmgNCj4gPj4gPiA+ICsrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfbHRfcGh5X3JlZ3MuaA0KPiA+PiA+ID4g
QEAgLTcsNyArNyw2IEBADQo+ID4+ID4gPiAgI2RlZmluZSBfX0lOVEVMX0xUX1BIWV9SRUdTX0hf
Xw0KPiA+PiA+ID4NCj4gPj4gPiA+ICAjZGVmaW5lIFhFM1BMUERfTVNHQlVTX1RJTUVPVVRfRkFT
VF9VUwk1MDANCj4gPj4gPiA+IC0jZGVmaW5lIFhFM1BMUERfTUFDQ0xLX1RVUk5PTl9MQVRFTkNZ
X01TCTENCj4gPj4gPiA+ICAjZGVmaW5lIFhFM1BMUERfTUFDQ0xLX1RVUk5PTl9MQVRFTkNZX1VT
CTIxDQo+ID4+ID4gPiAgI2RlZmluZSBYRTNQTFBEX01BQ0NMS19UVVJOT0ZGX0xBVEVOQ1lfVVMJ
MQ0KPiA+PiA+ID4gICNkZWZpbmUgWEUzUExQRF9SQVRFX0NBTElCX0RPTkVfTEFURU5DWV9VUwk1
MA0KPiA+PiA+DQo+ID4+ID4gLS0NCj4gPj4gPiBKYW5pIE5pa3VsYSwgSW50ZWwNCj4gDQo+IC0t
DQo+IEphbmkgTmlrdWxhLCBJbnRlbA0K
