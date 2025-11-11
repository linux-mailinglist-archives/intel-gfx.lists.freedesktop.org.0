Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D9593C4B7B3
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Nov 2025 05:49:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3814B10E4CB;
	Tue, 11 Nov 2025 04:49:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UeLm2lBC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C99C810E4C8;
 Tue, 11 Nov 2025 04:49:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762836543; x=1794372543;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=nx4qBgowj8jdfJaVdWiFUO1T1zrTqditpd1HVHG4IDA=;
 b=UeLm2lBCOFJ+zl/aeI6sl6A3+MDjAGPL0NR2C87uGseXXk/AuxUTY3mE
 yNUHtil1NCSseM4qaSyuP7oUaMTGZKXrXsYkyTsUGYCUSEyeJbAQ4wC1U
 p9rZYMvUGc1MCdoQDtyGQXIhScOAjo+RjmNTw+szwYfyRM4wV9VcYdkYd
 T72AHVF0VfBYueeGLwW7HuMKVZRSNFJ/ld3nlQ3CLbUjKUXKWfXw6bl/n
 cFI71IGwTbPXj8ZqAJrkbDvkv9YgoXaPhEeF9lWjusTPyTvlV9bhM+FNU
 n1YR4Z38N/lvMqfboamoU6FFwA99n47oyfgL4MV7r+FLC1OxAFqLHkaFg g==;
X-CSE-ConnectionGUID: 2t2fdnfRR+60fbajnRF78Q==
X-CSE-MsgGUID: nEcRrrBxQgO10X9dZ2h21g==
X-IronPort-AV: E=McAfee;i="6800,10657,11609"; a="87524995"
X-IronPort-AV: E=Sophos;i="6.19,295,1754982000"; d="scan'208";a="87524995"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2025 20:49:03 -0800
X-CSE-ConnectionGUID: CRPJer38QSWtUBCKU+niJg==
X-CSE-MsgGUID: C5SlVjiyQhG1ZFbz6Q1EyA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,295,1754982000"; d="scan'208";a="212246376"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2025 20:49:02 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 10 Nov 2025 20:49:01 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Mon, 10 Nov 2025 20:49:01 -0800
Received: from CH5PR02CU005.outbound.protection.outlook.com (40.107.200.10) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 10 Nov 2025 20:49:01 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=jNBckRcKsat/u5pFMGVQnzw35QAbHON+Lq1TY1RoHOgb59C5tV1ux7WGyf1Rdu2B7Cn6BCHtNEv/S9iB2OBWbrIKXm4cQ3VFhr230+sb/oEy/PfPqLnAGO2tlufUNZQrHzzepOxu3znYQhQTFYZiJJXWIQM8CdYtKUdJTn010MmEROOPUkNXt2qAM8YYUxbaSgLFGWnaFi2Oo8fOcXtlPtkNVhZxoTwhLEy+aNlf6sSPvSOmAoBEa7m00Uc3YZ1Zcr7iR/P+FmunJTdjBvoIoBlvJtVarq+IQOO/Dzl0zKpbz9Nfmim5PGl9hQW5spemWF7XD2hTzlMbO88nMlB9ng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nx4qBgowj8jdfJaVdWiFUO1T1zrTqditpd1HVHG4IDA=;
 b=iwHh/2fa15yrHhXnar/etQCC32HnfJ+w+Ab8zVknZwS0C6mXSdxOKJtyGpevW3dkujjN2XhCjjKQH45Zon/1RAAX+fcdQUAxg4yOWENsUQuqGlaCH0ksgUUGkGxU7dgxo3m+o85ObNT4gNPsuE0l5ip34SLNqFzrvhBaRT+tjw8pzqoZvxDDbN5UCpn15Fsk8IO2OekUdtXmmyeu9EQsgndY9UN1v2nE3YLmfy9HqsA3prUUecMV8VtWEdOIw8vxL+nA/NB64R7KZGc3OLZeM78w9RJENTdNv+NU+EZCBdCgLropAXY4+KVLPbv3EW12S2+CJUPdajz/HUA8JjFXXw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8937.namprd11.prod.outlook.com (2603:10b6:208:57c::14)
 by CO1PR11MB5059.namprd11.prod.outlook.com (2603:10b6:303:9a::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9298.16; Tue, 11 Nov
 2025 04:48:58 +0000
Received: from IA3PR11MB8937.namprd11.prod.outlook.com
 ([fe80::7fcb:5ca0:942b:bfb3]) by IA3PR11MB8937.namprd11.prod.outlook.com
 ([fe80::7fcb:5ca0:942b:bfb3%4]) with mapi id 15.20.9298.015; Tue, 11 Nov 2025
 04:48:58 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH 15/16] drm/i915/power: Use the intel_de_wait_ms() out value
Thread-Topic: [PATCH 15/16] drm/i915/power: Use the intel_de_wait_ms() out
 value
Thread-Index: AQHcUmiruXiNiX+kPkmkQKK9A/Vg+LTs59SA
Date: Tue, 11 Nov 2025 04:48:58 +0000
Message-ID: <IA3PR11MB8937746157283DE46E3B387CE3CFA@IA3PR11MB8937.namprd11.prod.outlook.com>
References: <20251110172756.2132-1-ville.syrjala@linux.intel.com>
 <20251110172756.2132-16-ville.syrjala@linux.intel.com>
In-Reply-To: <20251110172756.2132-16-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8937:EE_|CO1PR11MB5059:EE_
x-ms-office365-filtering-correlation-id: 24723925-ad48-46b5-557f-08de20dda092
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700021;
x-microsoft-antispam-message-info: =?utf-8?B?MjBsdEExaERxNzZKM3pPRlY2ZlZsamJaU2diT3ZnZGpUU0dOQjIwYnRBZGtr?=
 =?utf-8?B?WVVBMXRSZ3VtSnVNcjZDQnpNQ0xFdnE0SDRQUmIyWE55TUZFL055Y0g3cWJH?=
 =?utf-8?B?N0pZdWdFeE5pczFIcW5jellIbm53QkFwM0dueU5BTUVzOXJHYjIxWnRiN3dq?=
 =?utf-8?B?OGl4T3h1dVF5Q3R6UWJuR2RzOGR2NEF6QnJjbnlsdk0rTDIwUzk4VFNXRk1D?=
 =?utf-8?B?c3k2Q1VJMWRrSzRsMWh3WGlJbW5jTDc0NFNlMVd5V2lqVkZES01iZ2Z4SXho?=
 =?utf-8?B?Nk0wazRteXRSQlFLMHo1U2ZURnpMbXRDajduTVZudEhmS3JzVTFjR2NBczRR?=
 =?utf-8?B?dWNCeVJNS05BdTUzdU93UzFsR2hzV0lQaXQ1Z1BCWHgwVVdTMDAyUXJEZ3Yz?=
 =?utf-8?B?ODNEKzZSRFJEOTF4Qm5DRXluTk1XWFZZL2tqVGZiNHU4OHRqNmRxcFArWWo3?=
 =?utf-8?B?YlJPcEhzNVRzbjdWSVJCT0wvckhrWFpXRlR5SWt0dUlRTVFqNDlVQlBuOVBw?=
 =?utf-8?B?THFYUW8rZHlWVklzRGo0MnBPTmJ1eWJQc093YTNKR2dMaksyWFBaei94LzE4?=
 =?utf-8?B?NlhlM3UzTisrcWVoOHcwVG14UE9OYzN0N0FEQmpTV3liWlV1ZnJYRVBpL0Jv?=
 =?utf-8?B?Y2VTZ0g1TjZYcHo4Z0xhUXdVYmQ3VUFCd2NEUkdEcWdwRVRpWjR1Y29PUjZw?=
 =?utf-8?B?NEhSNDV1WFFXRnhwYjhHS3Fqend5RysydFp5bG5seU1KalJHbGtCVFR2dm4r?=
 =?utf-8?B?OXNHRkgza0VPMmNURHh2K2U5R3NTWUhSZG9wMWRHNGczTFl2RDBGd052bjRa?=
 =?utf-8?B?UHNUb2J0OXd1ZlFCaUl1dzNYajdRdDdlTHFnRVN0NTFKWlB4eXNrSmlpWlBD?=
 =?utf-8?B?ZmF2aUliYkxMelhhSVZZTWxrVnVvbSt0bnBnLzZKZWpjeHIyQ2g4bmxCNTU1?=
 =?utf-8?B?dUlCT3h1NkdWYjc1UTdja1B3N1UzNGxFVnRoQ1hwUzVFb3dkRTNJMVF4WHho?=
 =?utf-8?B?VHRta0FLMC94MEtSV29VUUpkRHlYeFh6bjA4K2RXNWxMaFEwbFQzeGRoQ2ts?=
 =?utf-8?B?d3VLZWhyT2xaZmxvdFVZWlRhZzU3OFpoNkoyWXpsYkRPVVhVeERlNTZQYzVh?=
 =?utf-8?B?cXNrc2JuUzNCSnNBczZyMzZyRFkwS1hvRkZ3V01XN2pFNlFDMm5vWVk1SU5x?=
 =?utf-8?B?NnFraCthN2ZlT2NHem85QXN1cURzY2RTNllEWHpWeDRaMVJjVnRyM29KUWhn?=
 =?utf-8?B?aHpPdlF5OU1qOWJSVTdVcXFybVV3aGVtaGg1LzJBdm1EN3luejM4VElObWtr?=
 =?utf-8?B?QXRodzQ2NlpvUnBPcTUyT3F3Tkd2L2FNaFFoZ2R4UGg4UXVJZzV0TTdlQ3pz?=
 =?utf-8?B?REpqTzJqY1hLdjBHcURUTDk2ZXBGN0krcUVFNUJ6WVJOTkVmd0ZHczNjMWpY?=
 =?utf-8?B?QXFrSHRHMndLS0VyUTRoaWw2QVRJbDgydjc1VzNKNzdlemRqR2ZyQzVNT29x?=
 =?utf-8?B?bmxMeUtVUysyMEtISysrNkk2K3JFMXl6SS84T3hOVGFUQUF0SjFJdmVoMmlr?=
 =?utf-8?B?TEZiZ1RGY1YyS0NjSVJEbWxWTXNDUlEwVy9XTUZtcy8xSG1RaCtYZXlkNnM4?=
 =?utf-8?B?YjFCM1JNQzVObE9MZ2xkeXlmTFBvbVV1ZGtzNXNFYU9RM3daaWpFZjRNa3BR?=
 =?utf-8?B?algyMUFxSTQva3B3SC9FMEJJOENYeWxlWWNCdVR6ejZ2dDdncmdkQVlNbzBS?=
 =?utf-8?B?dk4wOExWUVFwc1hBRjlsRjhsV2IxYjdmNjF1WFBnTTduWUR3QmxuTHhsemtq?=
 =?utf-8?B?RXBJbUFCRHUwY3F2VXd3RXlSd1B3WU5lMVJBREdqTXl1NFFFTzA0SVV0MEZD?=
 =?utf-8?B?TjBJZDB5NEsrWHN4ejVOSEt1b3N3SlFhb2V6c2pJOUZ1S2hmd3JlelNEY0tG?=
 =?utf-8?B?Ri9leE9IUGZka1VkSkZ0VHFrd1hwRGwxVXNYVWVxdVFwWFcrczkyR2ljWXZa?=
 =?utf-8?B?MWQ1UlIyWXRJdzYwQjVjRFNtajQyUlNSdXhRL2daSUZuSDMzL2tTVWEyZ2xI?=
 =?utf-8?Q?mcSkB6?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8937.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?TDFtVjBMUnJXK1hYWHNOVGllZVdhMkxHUVhOeGhQenlkOHp1THZNaVJURTZD?=
 =?utf-8?B?a0h1c21RdTZCd2tKblpkMVFMZVNHL3RYSXVBRmlaM3FKV1Rza3hUa3JENXhC?=
 =?utf-8?B?aFVBd2xpK1JhM1IrbWhQbVBPcDVCNUZsTGlKL3d3MVJxYmdBb0NnUnZSU3ZS?=
 =?utf-8?B?VEtick40c0ZGTUhTc3gwVUNlK21BOUEya3IvSWtJVVlMd3FPUDRuU044Rm1l?=
 =?utf-8?B?ZWZVS253YURYeHhsditDQ1gwcXFDWnNYbmVRVlhVbFkrVTg4bkMxTG5vQjQw?=
 =?utf-8?B?UDJ0ODdYNGRncFh0UWtiTC9EZEYxNHdoQWlubmxKMGUxdThyTXJ5OUxOVXhx?=
 =?utf-8?B?em1OcUtQNXpWNVF1Y1BJQy8vVW5NUy92MFk2RVlHb0taMWE3SWpvblhMMllX?=
 =?utf-8?B?YytVY1VObEVKNE9vT2t1Nk8zL05rSVZpd2tLSGI3bXNnT3VJaDRtcHJnWFVz?=
 =?utf-8?B?YzhnekV0QUdnOEF5Q2tpRlJ3aXhFdmtjNkpsdndOeGVjNVV6aW5Rc3hVbHFw?=
 =?utf-8?B?NWhMYStVc0c3QlFHUktnVU9LY1VXaFhDWFFEbmcwT1VoUVQ2VVV0QWY5OUND?=
 =?utf-8?B?THdod1liUGtJeDVjVUdrR2ZsT3V1Wkpnc0FSMHFsSU5ITFI2WjhhU0JraERw?=
 =?utf-8?B?WGNoY0Rnd1ErTzFaSmpLWG96U3I3aWg4c2YySFhya0wzd2wvRUZxZzdyNzcw?=
 =?utf-8?B?MWx4WnBFSU4zb29sOXFjV2FiTXlmOXFyQXZieXo3bEhhUDVWRy9ybFM2aU16?=
 =?utf-8?B?dFhzUU85SEwvdXBqYVdCdFJNL3VINnJ4cEpPM3dTV3Irczd3ZFVFTm10SWpP?=
 =?utf-8?B?MEVWbnE5Z3V0alphM08zbml5Y3gyY0FQRVhudUpYYllEVzZxeE5ZVWF6bVJB?=
 =?utf-8?B?QVJUWmNHcUlyZ3BWbGNUQi9sMFRPYkNZaTIwcklDNnAyNzlrcDlVVTJzZXdZ?=
 =?utf-8?B?U0xGai9WaERFb2VKcGt0S1ZOWUNaNFVTdFZZRFJjNGVUZ0lvZUhKSkZYRDhy?=
 =?utf-8?B?a1hwN1V6UXBjcWEvcHBQRkFaYy9NMHdpcVI5QWsvaVJQSVBlWUVaQjF2SVJ4?=
 =?utf-8?B?eGhUK3BvYU1DeG5VTjh6MENGWlZ6eVR6Y2p6Q1p2cWpXa29iV3NKR1hHd0R1?=
 =?utf-8?B?NlhnZ2U2ek5ZOWdiWUdNNTY0TXBHQ0o1aHVuNkRqZzZyVlIrckROWHBDWmx2?=
 =?utf-8?B?Nzl1ZFNKRjBUaEFzNXlUdHpLcmI2dVpGMTlkNldCbU5NZW1QZENQYjc0ZitG?=
 =?utf-8?B?cFh3SkNlZFlWYmpCTWZVTG0raHlYKzhQTmdxTEZkMHJBRU9od2JZRW5CeUZi?=
 =?utf-8?B?b3lqQ0lGOXhQOXYzZ0F1Zzdlc3BXTng5enBpWUpWejBxRXVCRjJ5VTk1bTBW?=
 =?utf-8?B?OXZBVlBSK20rVUVaRkNxbEZoQXJyZHdRRjFOM1YySHJvZjdpR01QbDc1WTM1?=
 =?utf-8?B?NENqa3k2UmlDZUwvQXYrdXlPWDBLYUY1a2pkM3NVcytuWkZnQ292ZlZ1MEk5?=
 =?utf-8?B?bWpvdE9hajZDNlhobE5qTkgzanRTeXI1Zm1KOEcreUlZYWJFUmo4NFdyaEVL?=
 =?utf-8?B?NU1XbUVndkl0KzY4L2Zha09TbGQ5TkJnNEprOVk0L2xvU0QrcGxMcUxycm05?=
 =?utf-8?B?dDBvZTdZNjFLK3BocWk0UFhVV2xLeHZVanppK3ZBdVFMcVNsMnRZMnl4T0w0?=
 =?utf-8?B?dHFDckkyNGJVaVJ2SGhNbjBvK2dxcVdPdC94ZEVHR3hOWmxxOXJtN0JRZHNa?=
 =?utf-8?B?OFdNTGpnNUltWGxFdThiTC9wZGRFcU5lak92ZnBxN041ZXJJdm4vY092RUtR?=
 =?utf-8?B?WmdHeHhYWUgzbFhXWTJ2NFB2bEx2M1BsV29XTkdzeXVyeURNblAwYjJhMmtL?=
 =?utf-8?B?aHQzOWdZTWtXbjZVTC9ubjRKS0ZzYml5OHZsUUFNMTJZWGN2WkZCakI3WDRk?=
 =?utf-8?B?UmhKN254eWNib3E2Z3NoMjF6UnJTU1RCTlRvUjZpZHZtUHQvOUE5MXRjbVI5?=
 =?utf-8?B?OVlIMUI4QkkrZGRNblg3Y0ZPbjBHN2ZGeFRPNnhpSGVjQUpzSlI4ZGF0NWdZ?=
 =?utf-8?B?R05JbTUzT3ZnMHZ4WUh6UHBEM2hzc3djZ2w3NElPRXZaakI3eXFFeVZzTE8x?=
 =?utf-8?Q?ozpVbVqEnLFEjDJzJlGp5bqTK?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8937.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 24723925-ad48-46b5-557f-08de20dda092
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Nov 2025 04:48:58.6721 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gNK1eRi55CG9VFz7dDc99eX+zf2gMn+AaziT02BTLxouSnVgpQw16Fjb9T/DXSHz6Oz5C+KHOWbF+6WbbayhcA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5059
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

PiBTdWJqZWN0OiBbUEFUQ0ggMTUvMTZdIGRybS9pOTE1L3Bvd2VyOiBVc2UgdGhlIGludGVsX2Rl
X3dhaXRfbXMoKSBvdXQNCj4gdmFsdWUNCj4gDQo+IFV0aWxpemUgdGhlICdvdXRfdmFsdWUnIG91
dHB1dCBwYXJhbWV0ZXIgb2YgaW50ZWxfZGVfd2FpdF9tcygpIGlzbnRlYWQgb2YgcmUtDQo+IHJl
YWRpb25nIHRoZSBQSFlfQ09OVFJPTCByZWdpc3RlciBhZnRlciBwb2xsaW5nIGhhcyBmaW5pc2hl
ZC4NCg0KKiBpbnN0ZWFkDQoqIHJlLXJlYWRpbmcNCiBXaXRoIHRoYXQgZml4ZWQNClJldmlld2Vk
LWJ5OiBTdXJhaiBLYW5kcGFsIDxzdXJhai5rYW5kcGFsQGludGVsLmNvbT4NCg0KPiANCj4gU2ln
bmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNv
bT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlf
cG93ZXJfd2VsbC5jIHwgNiArKystLS0NCj4gIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMo
KyksIDMgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyX3dlbGwuYw0KPiBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlcl93ZWxsLmMNCj4gaW5kZXggODU5M2Qy
ZGFlYWE2Li5mNGY3ZTczYWNjODcgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlcl93ZWxsLmMNCj4gKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyX3dlbGwuYw0KPiBAQCAtMTM1OCw2
ICsxMzU4LDcgQEAgc3RhdGljIHZvaWQgYXNzZXJ0X2Nodl9waHlfc3RhdHVzKHN0cnVjdA0KPiBp
bnRlbF9kaXNwbGF5ICpkaXNwbGF5KQ0KPiAgCXUzMiBwaHlfY29udHJvbCA9IGRpc3BsYXktPnBv
d2VyLmNodl9waHlfY29udHJvbDsNCj4gIAl1MzIgcGh5X3N0YXR1cyA9IDA7DQo+ICAJdTMyIHBo
eV9zdGF0dXNfbWFzayA9IDB4ZmZmZmZmZmY7DQo+ICsJdTMyIHZhbDsNCj4gDQo+ICAJLyoNCj4g
IAkgKiBUaGUgQklPUyBjYW4gbGVhdmUgdGhlIFBIWSBpcyBzb21lIHdlaXJkIHN0YXRlIEBAIC0x
NDQ2LDExDQo+ICsxNDQ3LDEwIEBAIHN0YXRpYyB2b2lkIGFzc2VydF9jaHZfcGh5X3N0YXR1cyhz
dHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSkNCj4gIAkgKiBzbyB0aGUgcG93ZXIgc3RhdGUg
Y2FuIHRha2UgYSB3aGlsZSB0byBhY3R1YWxseSBjaGFuZ2UuDQo+ICAJICovDQo+ICAJaWYgKGlu
dGVsX2RlX3dhaXRfbXMoZGlzcGxheSwgRElTUExBWV9QSFlfU1RBVFVTLA0KPiAtCQkJICAgICBw
aHlfc3RhdHVzX21hc2ssIHBoeV9zdGF0dXMsIDEwLCBOVUxMKSkNCj4gKwkJCSAgICAgcGh5X3N0
YXR1c19tYXNrLCBwaHlfc3RhdHVzLCAxMCwgJnZhbCkpDQo+ICAJCWRybV9lcnIoZGlzcGxheS0+
ZHJtLA0KPiAgCQkJIlVuZXhwZWN0ZWQgUEhZX1NUQVRVUyAweCUwOHgsIGV4cGVjdGVkIDB4JTA4
eA0KPiAoUEhZX0NPTlRST0w9MHglMDh4KVxuIiwNCj4gLQkJCWludGVsX2RlX3JlYWQoZGlzcGxh
eSwgRElTUExBWV9QSFlfU1RBVFVTKSAmDQo+IHBoeV9zdGF0dXNfbWFzaywNCj4gLQkJCXBoeV9z
dGF0dXMsIGRpc3BsYXktPnBvd2VyLmNodl9waHlfY29udHJvbCk7DQo+ICsJCQl2YWwgJiBwaHlf
c3RhdHVzX21hc2ssIHBoeV9zdGF0dXMsIGRpc3BsYXktDQo+ID5wb3dlci5jaHZfcGh5X2NvbnRy
b2wpOw0KPiAgfQ0KPiANCj4gICN1bmRlZiBCSVRTX1NFVA0KPiAtLQ0KPiAyLjQ5LjENCg0K
