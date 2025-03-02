Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B5677A4B3EE
	for <lists+intel-gfx@lfdr.de>; Sun,  2 Mar 2025 19:06:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE50C10E0C7;
	Sun,  2 Mar 2025 18:06:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZlR83tkq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F32FF10E0C7
 for <intel-gfx@lists.freedesktop.org>; Sun,  2 Mar 2025 18:06:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740938783; x=1772474783;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=By8g4AhFi+W9AjIASNTwFp3gS5wIKPkeMtMxycvpxGY=;
 b=ZlR83tkquYt426dgxbM45nUSc6TS/PPZ+lkcHOShG23/i5IH35qvV06O
 TyBbQtZsDcaZ7YP3F8DhchCCOkgbee5vgFpLLememchGT8Oqp6q5ALkNC
 yY+CUseHMUeAq4fVhnjk0Pf8PgDg3mBdaWmB+8gVYDFFgTkGuHv17naUT
 5mm62NSDrpVjEgEiAFGd7MvPUfqL11+YwnG4mxHDJwlEWKomeL/boFol/
 GMKm2nZsMvF0SDT36asBz6LDIN2vwbEAsk1UQ4KY+BJcGhbEsTtTiWnAw
 JLOIDl01VSXXCS9q8NrcJEOk+PMi7AiLwPryJsvNQa9cZ4nHPlUcieHNq A==;
X-CSE-ConnectionGUID: FQ7tTANWQqmaRLPC5jAIzw==
X-CSE-MsgGUID: hs9mjuBnShWv+tiesSnz4w==
X-IronPort-AV: E=McAfee;i="6700,10204,11361"; a="53202063"
X-IronPort-AV: E=Sophos;i="6.13,327,1732608000"; d="scan'208";a="53202063"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2025 10:06:23 -0800
X-CSE-ConnectionGUID: xvkV9wotQquV67k4Ft0hoQ==
X-CSE-MsgGUID: Dz41FkbtRnWEvzjmUoHx5g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,327,1732608000"; d="scan'208";a="148611732"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2025 10:06:23 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Sun, 2 Mar 2025 10:06:22 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Sun, 2 Mar 2025 10:06:22 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.174)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Sun, 2 Mar 2025 10:06:21 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=w8tzkSIwhJ/W04Tbdb9kFvmHNksQjEQg9sAWcYGY1SlJNGfTo2JQHJ0ZxL/qf+mL4FMiokBM4ivyHL6+rE+VM0UFBcEuKEWbWRBtkNipy54+Yz3zkaeh0bIgAE4YMyi84rkIHZG9gXMicWC1spvYi40akHWzPf+yj/hk1UlpRWXmJS4OngTfUDJU7EYfIWQck/emr2R/QsmhHz8gCvKDifVttCIvKaMBYrBf5J2dwEjPnka61CL5nNchM3kk8m/Gbd/ZEjjcrAupMnJbQM0TelZDPtLWxOe+sO4hJTIdDgmI3SvD90T9oxhlIJlY2CZkjpEi2o+IIVrXmbTx1w3opQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=By8g4AhFi+W9AjIASNTwFp3gS5wIKPkeMtMxycvpxGY=;
 b=AyoEeAqaKeuq7kyo2Y6pEvFSkHXmPyhc+qQyK2gENxT9C+lJsNJaOiBVvJW40qvWNOa/Awx3Uz6fVG5QNqjbtYt6hNgxGA6kVs8MtR8ZoMRIP9C0jSZrYrveqA+YVPZcTTq+bES68DfLAyI4WZDewKDLDhaKOmoTcVeL3ndwln+m9y1BIXuZBZOnpe+fBtt8OKDG8Pu3FuAU1PcEBmo4qD4QIOZj1tVqthxgfAF0nKWUmxt7+iVgCBg8pY2wV7V6HKOicKgi0OLOo01MkJwWnEYnbaz0bwywXPuBsYOLRrUdusvGp0bbET6M15l90riP6Quh3ftPy7LdJcMf+bXmag==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7777.namprd11.prod.outlook.com (2603:10b6:930:71::14)
 by SA0PR11MB4749.namprd11.prod.outlook.com (2603:10b6:806:9a::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8489.22; Sun, 2 Mar
 2025 18:06:06 +0000
Received: from CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8]) by CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8%4]) with mapi id 15.20.8489.025; Sun, 2 Mar 2025
 18:06:06 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 06/19] drm/i915: Extract skl_wm_crtc_disable_noatomic()
Thread-Topic: [PATCH 06/19] drm/i915: Extract skl_wm_crtc_disable_noatomic()
Thread-Index: AQHbgkrYTB/Yz/ujNESL/7UWM3/sm7NgNvAA
Date: Sun, 2 Mar 2025 18:06:06 +0000
Message-ID: <9558483c97b4e3e07463b1b218148c63a9c07d9e.camel@intel.com>
References: <20250218211913.27867-1-ville.syrjala@linux.intel.com>
 <20250218211913.27867-7-ville.syrjala@linux.intel.com>
In-Reply-To: <20250218211913.27867-7-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.52.3-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7777:EE_|SA0PR11MB4749:EE_
x-ms-office365-filtering-correlation-id: 7ecf4562-25ee-4801-29d1-08dd59b4e722
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?KzR0My9iNVVJN2EyOFhxZExNSzlFMGZjREZ4aHVqMkNsWmF6SkdZVEt3S3Va?=
 =?utf-8?B?OHpyN3pVK1EwNm5kY3AxWHpkZVcwS0c5USs4cjdDQS9YMEprdkRSS1ZjbjlY?=
 =?utf-8?B?Wnd0ZXYyQStYaDBhT1U2Q2p4aUhwaXlaWGJhaFQxMC9PUGZBQ1B2Tk1ZOUo5?=
 =?utf-8?B?V1YydWR5b3JqWDRlNFlRK1E3MWF5aTFEWkRGY2FnR2kySkhUM2VCSEZic05o?=
 =?utf-8?B?akN4NHIyVmxFK2FQRUxXc0ZIMEhxWWFseFVPTWZRV0t4UTZvd2hoTURhOXZB?=
 =?utf-8?B?djBRRHRKeW1GR0hncGt5MDdvVTBQenVOcnNHUVdTTnVIeHFhci9kN3pqaXJ6?=
 =?utf-8?B?aVgxQWRhYll3R2tiWE51NDhiUDhMODY3OHRnRmFFSTg2czlKQ3MvendjUFF1?=
 =?utf-8?B?czVZQmJIdUt0VzQvbmsyK3lhRW9IRUMrZlM3dS9nU1pmNkFJa0RyM3gvMkZG?=
 =?utf-8?B?TnRDcVFUQnNmckQ5RkRXZnRMRFZNZjRFSjVYcFpFUHM4WHE5NFhyWnlvdFVy?=
 =?utf-8?B?czZMek45cWFIeTg3czcxeitXVlhzM2htZHBkTVMyMlJZMHlodkNuUU01czBu?=
 =?utf-8?B?bEJJUWtCU2xxUVo0ME14UTJ2WEVYdHlIazFmbVhSQmhBQ1NXVmpoR0VhK1Vu?=
 =?utf-8?B?WTBDTEdZN3gzWkpWRWdIUVM2QzhrZmVLUndIQ0dwVUo0dm52Y2QwNlRHTU41?=
 =?utf-8?B?cHlkSmtZd0hJOXpxOWc2d3JjZVlxT0tybEVIZ1ZrWkdSbDR5LzZJaXRkWFNk?=
 =?utf-8?B?Unlndm1wMWtrM1ZPeW1HTmdMZlFVZUM3djA4VUVkR3FGVmRrTXNmVUMyRHRm?=
 =?utf-8?B?V0o4YmVaNVdnL0wySTE4RXN3NXZIQWp1b3ZtbFI4QkJndTBqQ2lkbHpaWTFr?=
 =?utf-8?B?b3Rldkt5ajltSjI4RU9jY1A4dWFnUkY0UFdaN015UGd5N0M0cG5hdld5V25T?=
 =?utf-8?B?cFBHUDZwdTRFelBGQ0M5WVlzWVM2QktIRmZmZzFkTHRzaDBDN09rSi9RWnFo?=
 =?utf-8?B?WlZvL2FSR1RsRXorL1V5cUg3bHl0ZytxcTQvNHArL2FZVXFZazdDdGdRamJE?=
 =?utf-8?B?Rzd0Mis2UzVnK0FDRWpYWXROa1NDRlc1WHplRVA4K1piSGRHWldhaytIV045?=
 =?utf-8?B?UThNaXlSdnhKbjkzOXQxY3ZlTkwySTc4RE1WN0E5Z1U5cDFSSkNBdXY0dXBM?=
 =?utf-8?B?N2FGMzhkczFNK29UczNHb2hRMVg0eUpQdWtKZ1dLZ1hYSHdiVllVaXZRdUdN?=
 =?utf-8?B?eWdDODlPQVpYalBvSTFXbjhlcG81c2xPWWxvMWZTOUFYUWdRZk1Vamp2N1VL?=
 =?utf-8?B?YjFRYVFqaStiUWpIa1dzL2tLQk51bS9QNmw0Yi9HU3ZFUEtWc0lPS0V6MitI?=
 =?utf-8?B?SThpd2dOcThFSzMrejhIMWRzS3VXWk1acjcrTmZQbFBnN0pWU3FIemZKc0tu?=
 =?utf-8?B?dHFuRnJISnlaK2cxdmV4TlE5MkN1VUdFQWZkU0Y3YkFMczJiTFR0Qjdpbmhx?=
 =?utf-8?B?Wis3cldHNThtY3RjZUF6NFN6Mlp4NjZRRkJ3VXEyT1RTUGdxR3RsenBGSWZl?=
 =?utf-8?B?cVgvQVgzY3poSmdyVVBQSXdJU2FaRDFxd25xKzdvRXJXQmUwOEtOQkJQRnFw?=
 =?utf-8?B?QWRYSGlDUWo4U00ydEx0S2hRZ1JrdzRMS3RtdjRNZGZ4OGVwL1NBcnVQLzVV?=
 =?utf-8?B?bi8wOWtRemxJWTIrQnc0WnhsWGhiR1B6VTFibkZwWDMxMlVOKytoZ3Raclhw?=
 =?utf-8?B?MEhTRkQ4d2N1elN4dUpzRm43ZmdNWXVXMmJ1VW5iWkFMcExQdVBOREZackcw?=
 =?utf-8?B?MldHYXFYeGJBNlRNRVhrT2RwbWlZamYzSHdQZGRYckprQkJjRERKdUdNRWhL?=
 =?utf-8?B?Sm1ENzdZRjVrY2hvRERKUGpQcGxnbzIwSlRKRXk2NkY3TVJKNVg1c3o4ZVFB?=
 =?utf-8?Q?eJJkDAdG2JrasDq0eYAdIVNEqRNfzz2n?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7777.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Z05UcS9aSlVhbDFZTTcvMkFEcXNrMFVQVENWYzU0SCtKakpZeThOYTZuRkxY?=
 =?utf-8?B?MEQwT25KS2YzNHg2emhMWEJ5c2I0ZmN3NzRPekoxU0N2YU1rbGlsZmZiN3N4?=
 =?utf-8?B?Vzllbk1HT3JFRmZCQXJQVWJuWjI0aDk5R2hiSWhsU1RqRmJzZWpkbEZROEhv?=
 =?utf-8?B?Y3pMd1dmRDI3N3JXRGtYUmpPUk13OEhpQWYyMkNDQmNOMUtxbzNpc21zS3dk?=
 =?utf-8?B?c3ExTXNhS2VBcGkwSGZ5TUNkRnVXclZhZEZZQzlMWWpyOEZ2SWtrUGxFN1Bq?=
 =?utf-8?B?OEcyMWhWcmZaUDhib1Nmc0xNak5ocnRyZklEQTdpTndGOExyQ3NXa3lsRDhK?=
 =?utf-8?B?aElUVDVCVTdkVE1DK3A0U1BqT0I4K2N3MG9lcmk2OHd6QnpLeUE5M3NsTVNY?=
 =?utf-8?B?ZGVuWHcyRTJFeU5FUjR2NkhNY1k4L1dCd2dpTW5DMU9kRnFPZkZWTTA1UW02?=
 =?utf-8?B?R3ZZOVRrWWFDeGRhN2QvMlZXcHlmdkp4c29lK0g3QU5aTUJ0ZGtmZnBVdlc1?=
 =?utf-8?B?bVRPMFNiZWt3RnBSVEYvcDZ4YXBndUZJZzQ5VTA2RUhiUDRJQ09ITEZoc3J0?=
 =?utf-8?B?UUZxaHVBVjNML1pqK1AwZFM1NzhCcG83QTRPM1pKLzh0RWZEY3owdkhQSVRP?=
 =?utf-8?B?ZmZqTCt1TDZFTDJ1QzY2M08vbU1GNlQrRVdxZElTc2NqU0RWUW9YREU3cVdx?=
 =?utf-8?B?cVR4OWFNdUFTeHdPRU9HZHNaM21QN2VibU91dnJuaUVSQlNjYWNQRGdsZm4z?=
 =?utf-8?B?UHFteDBudVpIMmhFYSt4dXV4bVhsNUsrVUJVcjJWRGY1UWM1a2RKSjk2cnJG?=
 =?utf-8?B?ckIvdVg0aHV0U0ppS1hiaUJma28xUzRadUNsek1LZERLQ0R0YVVGQTZRejVi?=
 =?utf-8?B?eFNBcFdVK1NZMXNHOVNhS1JWQm1CUkpWdGRxMGFSbjVBTDZkVGJWYlVoNlJl?=
 =?utf-8?B?WFZWNXlaeUN5emtCYTBIaXo5NTNHMFNHb0dlNFpFU2FUV0p2eWt6Ty9laXkv?=
 =?utf-8?B?dFFEblFlWm1aUzNwdUZLSEFQU3FvQkluRStVSDdrRVpRdHR5RjNTNXRFZGc0?=
 =?utf-8?B?SmJvanE1aHhXd1ZJSi9YT01JUFRERDVaYTAwaVVIUUxwaFB3UGd5R1M3U0I3?=
 =?utf-8?B?TkEzM1ozQ242K2E0aU4ybjlSNXNpVGpnZG56QWNiT1ZjbjEwaDBic0lLKytO?=
 =?utf-8?B?TzZKNnArUFhyd0JTcUpPenVzMldEQjhMbitVSFhxUEU0RjNkTU5TV1plTzIz?=
 =?utf-8?B?M3JOTnhwd3RBdjlDejl4Zy9IK2NVMCt2Z3NwSHZ6d3hLaUx0U2ZEYVo4bWF3?=
 =?utf-8?B?WGNJTk1rU1lFa0QxUktUQnJ3UnR2cmFSV2ErS0twajNSMVpEMHQ2SjdCNkkx?=
 =?utf-8?B?clJNWlRrSjFTUHdkdzZzOStYMkRXMDBVSU5sLzJzblZKS3Y5M2MzM2F0Y0lk?=
 =?utf-8?B?NEZveGtLZ05HdHhuL0dBbDk2OFZ2NDF1amdIcE1TTDFxNUZEVFFQdE1NS3Va?=
 =?utf-8?B?NWIxc0oyaUxwUUFuMzczTmdKdkZGeEt2SnprWURKZ3VvbmFZK24vcGVWSWkr?=
 =?utf-8?B?TWtNWXhKUXA4bkdwaWsybFMwMUt3dTB5NEVMZ0ZEaFNjZVBqNE5Fd1V4TndI?=
 =?utf-8?B?LzVWaHBObkc2TDc5ZGp2VVlkeDY2VGNOSDVzd3ZWRnJ0TCtxYzlta3ZxMDha?=
 =?utf-8?B?Mk1naXMxM3BPY3AzdC9BTEF0VXNMc3A3U05wYXJoT2NXWkE2Q0NiZ2Z5ZHFa?=
 =?utf-8?B?M0NudEhYNlVWNlZabi8yNGpMSFZEQk52cUtpZ3IzT1o2N2dGU0Z2QlRyVjcy?=
 =?utf-8?B?eW5wV25ONDZMYXVTSzk5NDZJS1J5dmpXQUVxNVF1eGR5aVJLVEhpOFBBYWxM?=
 =?utf-8?B?SjBVQTRJRzVHcm91eTFXWDBUOE9WSENRTndVYVZLZzU3WE15MXhmZ2kya0dq?=
 =?utf-8?B?TC9wZnNzOEZKaDhMYWZjY1JDVVE3Y3B2MUNOcHdvMnNkZWFRZEdJY3hVYlR3?=
 =?utf-8?B?MWl2U1RjU2RkRjhzK0kzaldqSXhpWGZVVDZJMzBZU1doRFR0WkU2NmplQ3ZS?=
 =?utf-8?B?L2NnYjZMR0VtYTdRbkhVNitJYm1nbjJyOGxwa3VoUXFtTlI0YlNlS29mUDVt?=
 =?utf-8?B?UFlTdkR5eWtTeG4zV3QwMWVjR2dHZU5zTEtkdWJuSUwwSndCUUdHaGZRUHZW?=
 =?utf-8?Q?e0+8/NZQ0N3qHrWJLw0W5Pk=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <93BBD0061077F54D92FD3944F8070555@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7777.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7ecf4562-25ee-4801-29d1-08dd59b4e722
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Mar 2025 18:06:06.3128 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: F5DXNeelJjonZedSdSS4vz+jUlSA5NGYnaS7MSKgQD8ThxzLNcsHOkxoFV1/VGCjxzXK7BRAcocM5j/uHsHZTJEDiAhwcfzkjrzmuqT1EUM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4749
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

T24gVHVlLCAyMDI1LTAyLTE4IGF0IDIzOjE5ICswMjAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOg0K
PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiANCj4gSG9pc3QgdGhlIGRidWYgc3R1ZmYgaW50byBhIHNlcGFyYXRlIGZ1bmN0aW9uIGZyb20N
Cj4gaW50ZWxfY3J0Y19kaXNhYmxlX25vYXRvbWljX2NvbXBsZXRlKCkgc28gdGhhdCB0aGUgZGV0
YWlscw0KPiBhcmUgYmV0dGVyIGhpZGRlbiBpbnNpZGUgc2tsX3dhdGVybWFyay5jLg0KPiANCj4g
V2UgY2FuIGFsc28gc2tpcCB0aGUgd2hvbGUgdGhpbmcgb24gcHJlLXNrbCBzaW5jZSB0aGUgZGJ1
ZiBzdGF0ZQ0KPiBpc24ndCBhY3R1YWxseSB1c2VkIG9uIHRob3NlIHBsYXRmb3Jtcy4gVGhlIHJl
YWRvdXQgcGF0aCBkb2VzDQo+IHN0aWxsIGZpbGwgZGJ1Zl9zdGF0ZS0+YWN0aXZlX3BpcGVzIGJ1
dCB3ZSdsbCByZW1lZHkgdGhhdCBsYXRlci4NCj4gDQo+IFNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5
cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+IC0tLQ0KPiDCoGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfbW9kZXNldF9zZXR1cC5jIHzCoCA1ICstLS0t
DQo+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9za2xfd2F0ZXJtYXJrLmPCoMKgwqDC
oMKgwqAgfCAxMyArKysrKysrKysrKysrDQo+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9za2xfd2F0ZXJtYXJrLmjCoMKgwqDCoMKgwqAgfMKgIDIgKysNCj4gwqAzIGZpbGVzIGNoYW5n
ZWQsIDE2IGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pDQo+IA0KDQpUaGF0IHByZS1za2wg
Y2hlY2sgb24gdGhlIG5ldyBleHRyYWN0ZWQgZnVuY3Rpb24gc2VlbWVkIGEgYml0IG91dCBvZiBw
bGFjZSBmb3IgdGhpcyBzcGVjaWZpYyBjaGFuZ2UuDQpCdXQgYW55d2F5IG5vdCBhIGJpZyBibG9j
a2VyIGZvciBtZS4gDQoNClJldmlld2VkLWJ5OiBWaW5vZCBHb3ZpbmRhcGlsbGFpIDx2aW5vZC5n
b3ZpbmRhcGlsbGFpQGludGVsLmNvbT4NCg0KDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX21vZGVzZXRfc2V0dXAuYw0KPiBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfbW9kZXNldF9zZXR1cC5jDQo+IGluZGV4IDgyNjk5ODkwOTA0
NS4uMTBhMjQyMWY3YzUwIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX21vZGVzZXRfc2V0dXAuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX21vZGVzZXRfc2V0dXAuYw0KPiBAQCAtMTU4LDggKzE1OCw2IEBAIHN0YXRp
YyB2b2lkIGludGVsX2NydGNfZGlzYWJsZV9ub2F0b21pY19jb21wbGV0ZShzdHJ1Y3QgaW50ZWxf
Y3J0YyAqY3J0YykNCj4gwqAJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSB0b19pOTE1
KGNydGMtPmJhc2UuZGV2KTsNCj4gwqAJc3RydWN0IGludGVsX2J3X3N0YXRlICpid19zdGF0ZSA9
DQo+IMKgCQl0b19pbnRlbF9id19zdGF0ZShpOTE1LT5kaXNwbGF5LmJ3Lm9iai5zdGF0ZSk7DQo+
IC0Jc3RydWN0IGludGVsX2RidWZfc3RhdGUgKmRidWZfc3RhdGUgPQ0KPiAtCQl0b19pbnRlbF9k
YnVmX3N0YXRlKGk5MTUtPmRpc3BsYXkuZGJ1Zi5vYmouc3RhdGUpOw0KPiDCoAlzdHJ1Y3QgaW50
ZWxfcG1kZW1hbmRfc3RhdGUgKnBtZGVtYW5kX3N0YXRlID0NCj4gwqAJCXRvX2ludGVsX3BtZGVt
YW5kX3N0YXRlKGk5MTUtPmRpc3BsYXkucG1kZW1hbmQub2JqLnN0YXRlKTsNCj4gwqAJc3RydWN0
IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUgPQ0KPiBAQCAtMTc4LDggKzE3Niw3IEBAIHN0
YXRpYyB2b2lkIGludGVsX2NydGNfZGlzYWJsZV9ub2F0b21pY19jb21wbGV0ZShzdHJ1Y3QgaW50
ZWxfY3J0YyAqY3J0YykNCj4gwqAJaW50ZWxfZGlzcGxheV9wb3dlcl9wdXRfYWxsX2luX3NldChk
aXNwbGF5LCAmY3J0Yy0+ZW5hYmxlZF9wb3dlcl9kb21haW5zKTsNCj4gwqANCj4gwqAJaW50ZWxf
Y2RjbGtfY3J0Y19kaXNhYmxlX25vYXRvbWljKGNydGMpOw0KPiAtDQo+IC0JZGJ1Zl9zdGF0ZS0+
YWN0aXZlX3BpcGVzICY9IH5CSVQocGlwZSk7DQo+ICsJc2tsX3dtX2NydGNfZGlzYWJsZV9ub2F0
b21pYyhjcnRjKTsNCj4gwqANCj4gwqAJYndfc3RhdGUtPmRhdGFfcmF0ZVtwaXBlXSA9IDA7DQo+
IMKgCWJ3X3N0YXRlLT5udW1fYWN0aXZlX3BsYW5lc1twaXBlXSA9IDA7DQo+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L3NrbF93YXRlcm1hcmsuYw0KPiBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvc2tsX3dhdGVybWFyay5jDQo+IGluZGV4IDEwYTFkYWFk
MjhlYi4uNDkzMGU1MjMyMmQzIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L3NrbF93YXRlcm1hcmsuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L3NrbF93YXRlcm1hcmsuYw0KPiBAQCAtMzg0NSw2ICszODQ1LDE5IEBAIHN0YXRpYyB2b2lk
IHNrbF93bV9nZXRfaHdfc3RhdGVfYW5kX3Nhbml0aXplKHN0cnVjdCBkcm1faTkxNV9wcml2YXRl
ICppOTE1KQ0KPiDCoAlza2xfZGJ1Zl9zYW5pdGl6ZShpOTE1KTsNCj4gwqB9DQo+IMKgDQo+ICt2
b2lkIHNrbF93bV9jcnRjX2Rpc2FibGVfbm9hdG9taWMoc3RydWN0IGludGVsX2NydGMgKmNydGMp
DQo+ICt7DQo+ICsJc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXkgPSB0b19pbnRlbF9kaXNw
bGF5KGNydGMpOw0KPiArCXN0cnVjdCBpbnRlbF9kYnVmX3N0YXRlICpkYnVmX3N0YXRlID0NCj4g
KwkJdG9faW50ZWxfZGJ1Zl9zdGF0ZShkaXNwbGF5LT5kYnVmLm9iai5zdGF0ZSk7DQo+ICsJZW51
bSBwaXBlIHBpcGUgPSBjcnRjLT5waXBlOw0KPiArDQo+ICsJaWYgKERJU1BMQVlfVkVSKGRpc3Bs
YXkpIDwgOSkNCj4gKwkJcmV0dXJuOw0KPiArDQo+ICsJZGJ1Zl9zdGF0ZS0+YWN0aXZlX3BpcGVz
ICY9IH5CSVQocGlwZSk7DQo+ICt9DQo+ICsNCj4gwqB2b2lkIGludGVsX3dtX3N0YXRlX3Zlcmlm
eShzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwNCj4gwqAJCQnCoMKgIHN0cnVjdCBp
bnRlbF9jcnRjICpjcnRjKQ0KPiDCoHsNCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvc2tsX3dhdGVybWFyay5oDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9za2xfd2F0ZXJtYXJrLmgNCj4gaW5kZXggYzU1NDc0ODUyMjVhLi44YzA3YzExMTM1Yzcg
MTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvc2tsX3dhdGVybWFy
ay5oDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvc2tsX3dhdGVybWFyay5o
DQo+IEBAIC00MSw2ICs0MSw4IEBAIGJvb2wgc2tsX2RkYl9hbGxvY2F0aW9uX292ZXJsYXBzKGNv
bnN0IHN0cnVjdCBza2xfZGRiX2VudHJ5ICpkZGIsDQo+IMKgdm9pZCBpbnRlbF93bV9zdGF0ZV92
ZXJpZnkoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsDQo+IMKgCQkJwqDCoCBzdHJ1
Y3QgaW50ZWxfY3J0YyAqY3J0Yyk7DQo+IMKgDQo+ICt2b2lkIHNrbF93bV9jcnRjX2Rpc2FibGVf
bm9hdG9taWMoc3RydWN0IGludGVsX2NydGMgKmNydGMpOw0KPiArDQo+IMKgdm9pZCBza2xfd2F0
ZXJtYXJrX2lwY19pbml0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KTsNCj4gwqB2b2lk
IHNrbF93YXRlcm1hcmtfaXBjX3VwZGF0ZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSk7
DQo+IMKgYm9vbCBza2xfd2F0ZXJtYXJrX2lwY19lbmFibGVkKHN0cnVjdCBkcm1faTkxNV9wcml2
YXRlICppOTE1KTsNCg0K
