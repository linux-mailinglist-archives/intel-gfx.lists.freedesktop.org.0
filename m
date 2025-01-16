Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E4C9A133A7
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jan 2025 08:19:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B60810E8BF;
	Thu, 16 Jan 2025 07:19:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JT+Q2cox";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 370F210E8BB;
 Thu, 16 Jan 2025 07:19:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737011968; x=1768547968;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=b8yRw6Wrl2TmJMo5mHyqbw09LVABQLJJ4h2Fi6H7DBk=;
 b=JT+Q2cox5H8/XqRqvWvf4KpCDNGbRSsg9mzxjQgbiguIO1n7NPJL9VUt
 V2YbR6I1liC4T6/EZhL9XBIdeXTASipZH7JzhWwzi+QJRIQfiqSO8VLo0
 zvmeLKc8OmVyjkB0MHh/KNhIX5iMXdUNpZSdMm5WCHNT8xdotNld3N1Az
 NgXw4PBrzDsiILg8+1bBOGWVtk+HqjQaGpqY+NlkzE0OwXtcvnHc9C3mn
 fkVqfH9U2KAMu6xNq6FGhSjIe7RAL2tk/AXhSlFu3HjinP1O+ATuf7Fh2
 DtTmylVib91yFw5q2c7vgBobIJwzxHisREd9zu9krj4KtJlrMEYmiLkmQ w==;
X-CSE-ConnectionGUID: rkTnieXwRXW/zzfuj32Kmg==
X-CSE-MsgGUID: g1xHzOU/RaiDtQqDmQRgFg==
X-IronPort-AV: E=McAfee;i="6700,10204,11316"; a="37075289"
X-IronPort-AV: E=Sophos;i="6.13,208,1732608000"; d="scan'208";a="37075289"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jan 2025 23:19:27 -0800
X-CSE-ConnectionGUID: dn0D4aITSq+4XEez72AbWQ==
X-CSE-MsgGUID: Q6tzfmS6SYme08PYDLUxWg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,208,1732608000"; d="scan'208";a="105326391"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 15 Jan 2025 23:19:26 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Wed, 15 Jan 2025 23:19:25 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Wed, 15 Jan 2025 23:19:25 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.175)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 15 Jan 2025 23:19:23 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=KpV8AZ/oiPoyP1FLX1RAs/AYjjxePQ0Xw8UUY2b+C4sovD3jmIprqK4SUN1s8YoqQAOTJBQweOiWGUxRwRjmC05ijs908EnZyDLdYqTTprNJHbbTDSC/nf5bxy7MF5FT9OHPWhMXtFB86SMt20IPgPYBfxLTh82FiUrYo9NUqw33Ps6mbjNlM/G0lpN6kzyyc8FRZ4sKg3WNfHFca8sgkVTWutPWIuQl5qdBh9Qt264MTYL096rLufN0qj6boKOBDvSqG4Ti1Z8x3y1Fr+TRRI3/pweuPCnJq/AbyrM9QTeV0Uci4HvrvQJAj9hdGZ16R8eRO7GZcRlJ/DRpUEWFjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=b8yRw6Wrl2TmJMo5mHyqbw09LVABQLJJ4h2Fi6H7DBk=;
 b=adqJoHFHSVmc7aQIODNGvGyKMxuO4DWXi2Mfp1DLVJfcdNf0iRImjomXG90r2D9jXebPzcCpGfVBxfcQZJC4Pt2tyv2tSeQxNiiHelC+9x7prFwpVzOgf1UH9u1/th3YyBWxwEPuC1mDeTmtCvuIPS4BidBhSqtM5DRSZjlmppRfsB1j2MG8Io1mH7IG39BPIeFumWyTg6huwvvIbNdKGggW/EVwNzDqFaWrbTcs52tSiR5jJ4jllTl707qzBxN93n2+lZ4FF9x0gbbxLgbqGhV5he7h4L6pknyqsqSbryByu2cUkXU+w3ZRlMGOcZH9kAFl7IZLozkoWkHLIbNHTQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS7PR11MB5990.namprd11.prod.outlook.com (2603:10b6:8:71::5) by
 MW4PR11MB6912.namprd11.prod.outlook.com (2603:10b6:303:22a::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8335.18; Thu, 16 Jan 2025 07:19:21 +0000
Received: from DS7PR11MB5990.namprd11.prod.outlook.com
 ([fe80::60e:9fa:d735:5be7]) by DS7PR11MB5990.namprd11.prod.outlook.com
 ([fe80::60e:9fa:d735:5be7%5]) with mapi id 15.20.8356.010; Thu, 16 Jan 2025
 07:19:21 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Hogander, Jouni" <jouni.hogander@intel.com>
Subject: RE: [PATCH v3 09/10] drm/i915/display: Don't use DSB if psr mode
 changing
Thread-Topic: [PATCH v3 09/10] drm/i915/display: Don't use DSB if psr mode
 changing
Thread-Index: AQHbYmioZFf9PaOQpkSo4/JT8pbUp7MZCArQ
Date: Thu, 16 Jan 2025 07:19:21 +0000
Message-ID: <DS7PR11MB5990736C14FFF235945E274FF91A2@DS7PR11MB5990.namprd11.prod.outlook.com>
References: <20250109073137.1977494-1-jouni.hogander@intel.com>
 <20250109073137.1977494-10-jouni.hogander@intel.com>
In-Reply-To: <20250109073137.1977494-10-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS7PR11MB5990:EE_|MW4PR11MB6912:EE_
x-ms-office365-filtering-correlation-id: 7571e9db-9717-4f0b-e813-08dd35fe1910
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?utf-8?B?akNUWHJnMmVLQzZDNmxsblN0bW9BMGtRc1pZSmNEazRUeitFaVRoRWZZcDVP?=
 =?utf-8?B?RFNBL3NseVdId1k5NzdEZW5nWTlIYlZGcjFpUnFNMDh6eC9DcXlwaWpXOE00?=
 =?utf-8?B?My9SS3k1Z3F5YVc5a0RwNTIzbVpEcitjQ1NYQlZwTnR4cG94YjZPbjNmT2JN?=
 =?utf-8?B?TUtyQU1VUDA2dnNTcWIvM3l1SDdYU205MEVGRSt4aCtUQ0dtcFY2RndlTHdQ?=
 =?utf-8?B?SDlwV1VGa2RBd2t3M3p5U25vd1Jsd0d1c05aTUNaWVVGY0dVVTNEMEY3Rk8z?=
 =?utf-8?B?WGE0c05CZnZwL2ZCRTNLQ1pFSDJNV2x6NlcrVytMQitoUkhIRlBJcFJCOHBC?=
 =?utf-8?B?ZjlSSmZHc1ZVSmRQcGFzTDdSVXlocGlCVWtNRXhJZUdiTExKVEJEeGNOdDgv?=
 =?utf-8?B?emNkYVpSZE5PNnB3QzRZbWVCdGxTam5SRWVNaDMvbE1Pdlc1M25QT1RkK2x2?=
 =?utf-8?B?Q1hiRVVQUlNjektiWVUrMkdqSHMzU3JaeFcrQmk2RFExQmJZV3pGZnNGOWIv?=
 =?utf-8?B?dm8rRktEbG9vT2FUTkVUM2ZyalczVGtLbzVKdVMyTjBaQWtRY0t1ekMwY0pV?=
 =?utf-8?B?Vzlra2tzbWk4dzN1eWZvUnZxaUZhMHd4MzhJQURKbElrVGhMSjRKNU9qTHdm?=
 =?utf-8?B?cnJJV1ZzMEl1N0ZJdnNnblQvWEdXeUhTSXJmWEVKMDhod25zaGhJdHlVYU0y?=
 =?utf-8?B?bE1PcUtFV0ZqK0g1Ym5teU1wNThORVcyZlBSMnluc0hCb29IV1VHQ3pxNEVR?=
 =?utf-8?B?cytHWm1rRVFnanprYjVMcG82bTdPSVRQNE5uM0dTVTF6SzlpUDhsbE0xbWZF?=
 =?utf-8?B?Y1h4NnJZRmRFMFhJaHhyZldYWEhwaUZEUWlkZG9RQStRYS9rUmlWWlNXUi9o?=
 =?utf-8?B?UW1XYW1YNlJNV3BIVllOd2ZaOW4yYWcwS1ZoZE1kYndtZUJ6R3lsTkRHS01j?=
 =?utf-8?B?eTJRdzF5MC82YzZ4Q0J2V2tsSm8zVEdaTUJqb3Yvb1QxMktpdll6QTUxSGtq?=
 =?utf-8?B?d01uZW1NYXRBMEpFVWNUQTRWSzJGcldVamVIRERJNGl4RjJLUTJ5UDNyRlNQ?=
 =?utf-8?B?ZkI1U2lYa2ZvZWdNdnRvYjZrNHdQa0psZllLUm5iNGl5bG1ZOWl0MnN5N0VW?=
 =?utf-8?B?N0NmUW9jNjRvNXlWMDJaQ1FTYkhXSmFrNzhrYXdqc1pIeVVxb0V5MEh1ZHBY?=
 =?utf-8?B?RGwxVmYvbzNQMVF2dS9qQjFJNlhFS1N6blJ0NG1OTWQ0OTJxODdYMWJTTXJr?=
 =?utf-8?B?S2ZLM1Z6T1VubGxBeityS1RSM2htd1BZM1BDUDZxR0ZwNU5udzZ2ajNoM3lY?=
 =?utf-8?B?SCtQeTVLRHpEcFg1UG4xQnhISVZabXArYkVjNDVCNW1JOVhrOTlmaVY3Y1Nl?=
 =?utf-8?B?ZlRNREJ6QVZjQXFUeXpwWHovcHVSNzZ5azljb2NXVnlPRzd3THFCQ3VRV0ov?=
 =?utf-8?B?Uk5YdWRkSk4xUGoyNTlkc1pXejFjZjhoSkg2TzFEVHJ5ZS9lcFl1YUdLUE1a?=
 =?utf-8?B?WTNNbXI5eGpQUUpLWEFyS2d2bnNObGlLRjZHSS9CYXFXMGI3eklmd0FCMTRq?=
 =?utf-8?B?MlFGUzBrbFFtSWZtNEE5WjdJRHdpc3BjNDJXU1pGdTFxcFcrQmR0aWRReklK?=
 =?utf-8?B?RmJXV0FwdERpZ0duVGRvVHNqZE1JVWhXV3V4VjY2N1NsYmZnT1RiRUtDZGdB?=
 =?utf-8?B?WnVtbFZObmljNTBXSEU5eFZMeHRCV0h1cGVNcUZZRlZhTnEyZVJXaEt1SW5X?=
 =?utf-8?B?QmVSTE85WC8yQ3JIWlpJMG1udmNhMWt1R1dsT2Q4ZmtnRmp2NHphV3JzSlVV?=
 =?utf-8?B?MnNxM3ByK2NZRDgvdkFaUG0wa2tkOEhLeHdMb3dpRzRMS3VWZytiUm9YRi9l?=
 =?utf-8?B?KzUzOTduTkkxZlY5eHloYld3eWhKMnZELzdlYVErQ2ZXY2o4Mk85Q2FXR0hs?=
 =?utf-8?Q?TwDqsXqmC0qPiBdyIlC/sZ2taIkeDo29?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB5990.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?UytCK2xvVUU2UmhlUHp3bktSaFNsaVZXYUZrdzRzN3JlWGFDOWdXaE1vVm51?=
 =?utf-8?B?M0ZxK0dXTGlSbzd0dVZVeDBXVzR1c2ZTcnp4S0RXd2NhaFc5SHFxSjkvRWhv?=
 =?utf-8?B?WDNTQWVNeVFaVENRZXRJdWdySlNjRnFDd1pQOHg0eTdLNEZKeVFPQ0ZQSk5v?=
 =?utf-8?B?YWhiMmJuZUpBbHlrejR2cjlZNndRbHV2L1c1NEJDNlA2R3dqQ0ZnM0VUR2xK?=
 =?utf-8?B?d0dwRUpYM0xLeWJtTlBvUCtoMjRaSFI1a1hxdWdGekNzcUl1cldreUFwclBE?=
 =?utf-8?B?bXF6QTdGZ2xrS1pvdUZxK2h6aHdUSlFsZFJzUFlmaTBseUluVkk0OHdVbnor?=
 =?utf-8?B?bG8wK3A3dGxwcGx3UnFEZVBBazdndjhCWlVaYmlocmpMRHVaelNkV3N2OXo4?=
 =?utf-8?B?WWFEemZ3a29MbUI2MXhmaWZlQXRwR1lvTmRmVGloQ0w4cGl0WTBhMXQzYkt4?=
 =?utf-8?B?YkpLalRhNUk3cC9MZHFQN0lYQUVxdlZlTERkR2dvNmhlNitZZVZjbVVRSmxU?=
 =?utf-8?B?Wjg0eXNaaW0zSHdhSUM2U2NPQ2FMQkNpWlI0M2RjMEtiL21udEJWUnhoQnYr?=
 =?utf-8?B?dHo1NDdMekRSWnhQOVN0Q0hSZHhCREF3QlI2Z3RiWE9CcnUrTFdobDhhN1Bu?=
 =?utf-8?B?Y0ZaeU1LRDNnK2ZFUC9rODBHQUovcHFFNkRzTzZHM0hLTGYycEV1eVUxb1h6?=
 =?utf-8?B?UXRkelY1bjI0TDA3em1UeFQ3YmM5NmtNbHpPVlBua09FbVpJY292aXFOdFdW?=
 =?utf-8?B?QmRPWjd2RHlzOGQvVVFUMzBmZTZuWlJoWXlBWk1WN2dyYTNPN0EvZ29MdlVs?=
 =?utf-8?B?djFnS2dhQXZkb1BZb1FYV0IweWdIRWVHbG81dWRkbU9JYURLTys5UlVtaVN2?=
 =?utf-8?B?NTV2R2ZuSU1YVmxIVXVTSnJqMjZyZFZjS3NlcE84L1hyT1RqNzZkS1JEYW4w?=
 =?utf-8?B?UmxvcjdOVzBTVlQwcU1sZ1hxZmUyaFdXd3pFTFdFMyt0MWEvZkowc0tJd0x5?=
 =?utf-8?B?Ty9nZGlIVlM4VlQ1N0NyYUh4MUEzTXV2U3NIZVNaRHpCSTFmZkFIQ2M1anU3?=
 =?utf-8?B?MmsrdHF3T3dLVWVHc3cvLzJyT2c2SlVlTjF4WWdjVXdMK1RrNEpxQjFadG5i?=
 =?utf-8?B?cnU3ZEp3a2l6SkpoV1pabmRibFh6OXJybkZsY2padjF3Z00veEdaNTU3UnZJ?=
 =?utf-8?B?RUlOZG9oL2hjTEc2RjdPRVExUkRFZWxkbk5RRkFxNmNIcy9qTURNMUtWTjhJ?=
 =?utf-8?B?K1R4Q2IvenVsTGluNUh2VUVaZW9kdnkvZXMrUHU1YmdOMDlUeXYyZS9aeWpW?=
 =?utf-8?B?Y0hMYXRzdElRRWJOQUh5SmlBR0RHLzV0Sm5pbkg2VzhxY1FpMmUrV2p4eGUv?=
 =?utf-8?B?Z3NXYjdFWkNwdWhpYmw2aC9GMldjR0pJNERKL2U1eE5mUXVxSjQ4NmZ5UTAy?=
 =?utf-8?B?SVYzb0I1dmN6TWltK3JidG9ZaGZsMlRQUEU4U21UTVp3cUNBM0tFcTUxZEFx?=
 =?utf-8?B?TVBqNDJYYjFSK3o0TFlvVlU0bkJMMWhMTm9kTWJXMU1QTVduN1QrNDY4d0Rw?=
 =?utf-8?B?V1ZjamQ1TTgyT0ZmSVVpMFBVWkFINkJEVDNIQlV5Vm5EUmdEZXhBY1B2bmRS?=
 =?utf-8?B?ZDdGL1A0VXdQRG5Gd0JKZ0ZWRmJaaGdVTXhPVE9XSkJMMHI2NVlGVndOLzJQ?=
 =?utf-8?B?M0tSbVprYW9jcHlkZEorQ3RoSWV1MWMwSFYyYWo3dGYrYi8zZjd2bGV6Q2pZ?=
 =?utf-8?B?ZWpYcURjRlBEcDB2N1pnNDhpRGNWVGZFOXA0R1dQUmdqZWpaZjZnZHY3a2NT?=
 =?utf-8?B?akhodytaSUdvOVgvMVNITnExU3JzQmNwSDdoNTJYZFd4TmJwTzJrcm1ZaVJP?=
 =?utf-8?B?UUUva0lrYWdMRi9jVXVhT0JFN2tRd09BWHVBcy9FWGY2aW1JbWRNMlg4Y0ZW?=
 =?utf-8?B?d2N1OE9XUHNob21td2xhWTJqM3BLanhSRGFkU2xMczVXbk9YWUNqOFQwaU1x?=
 =?utf-8?B?S3c0d0o2UlJXa0VmSGJuL0I3MzhBSTBQb2hNbnNBRTdvMzZuM2U2dDlWa3FV?=
 =?utf-8?B?bGRWQU5pd0VlYklhVTdiR2xBVzRCVGpPRHk5Smg2eU5IWFFERm45WWZ2dXR1?=
 =?utf-8?Q?Y3VoqJoVTiMN06IcA+QxJSKY0?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB5990.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7571e9db-9717-4f0b-e813-08dd35fe1910
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Jan 2025 07:19:21.4546 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qot3LFLYrCcNnZH/thy6532dUL/C54cHuEeFiDelw3sgCfdx6Fy+XqH+rQEUWkyvudE4SeVZV5vEBXo9end1iA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6912
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
bT4NCj4gU3ViamVjdDogW1BBVENIIHYzIDA5LzEwXSBkcm0vaTkxNS9kaXNwbGF5OiBEb24ndCB1
c2UgRFNCIGlmIHBzciBtb2RlDQo+IGNoYW5naW5nDQo+IA0KPiBDaGFuZ2luZyBQU1IgbW9kZSB1
c2luZyBEU0IgaXMgbm90IGltcGxlbWVudGVkLiBEbyBub3QgdXNlIERTQiB3aGVuIFBTUg0KPiBt
b2RlIGlzIGNoYW5naW5nLg0KPiANCj4gU2lnbmVkLW9mZi1ieTogSm91bmkgSMO2Z2FuZGVyIDxq
b3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQoNClJldmlld2VkLWJ5OiBBbmltZXNoIE1hbm5hIDxh
bmltZXNoLm1hbm5hQGludGVsLmNvbT4NCg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIHwgMyArKy0NCj4gIDEgZmlsZSBjaGFuZ2VkLCAyIGlu
c2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+IGluZGV4IGQ3NjQ1NGE2OTM5OS4uZTQ0OGZm
NjQ2NjBhIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Rpc3BsYXkuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rp
c3BsYXkuYw0KPiBAQCAtNzY0Nyw3ICs3NjQ3LDggQEAgc3RhdGljIHZvaWQgaW50ZWxfYXRvbWlj
X2RzYl9maW5pc2goc3RydWN0DQo+IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsDQo+ICAJCSFu
ZXdfY3J0Y19zdGF0ZS0+c2NhbGVyX3N0YXRlLnNjYWxlcl91c2VycyAmJg0KPiAgCQkhb2xkX2Ny
dGNfc3RhdGUtPnNjYWxlcl9zdGF0ZS5zY2FsZXJfdXNlcnMgJiYNCj4gIAkJIWludGVsX2NydGNf
bmVlZHNfbW9kZXNldChuZXdfY3J0Y19zdGF0ZSkgJiYNCj4gLQkJIWludGVsX2NydGNfbmVlZHNf
ZmFzdHNldChuZXdfY3J0Y19zdGF0ZSk7DQo+ICsJCSFpbnRlbF9jcnRjX25lZWRzX2Zhc3RzZXQo
bmV3X2NydGNfc3RhdGUpICYmDQo+ICsJCSFpbnRlbF9wc3JfaXNfcHNyX21vZGVfY2hhbmdpbmco
b2xkX2NydGNfc3RhdGUsDQo+IG5ld19jcnRjX3N0YXRlKTsNCj4gDQo+ICAJaWYgKCFuZXdfY3J0
Y19zdGF0ZS0+dXNlX2RzYiAmJiAhbmV3X2NydGNfc3RhdGUtDQo+ID5kc2JfY29sb3JfdmJsYW5r
KQ0KPiAgCQlyZXR1cm47DQo+IC0tDQo+IDIuNDMuMA0KDQo=
