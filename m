Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OM/8N8c/qGl6rQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 04 Mar 2026 15:20:55 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4890B2013BD
	for <lists+intel-gfx@lfdr.de>; Wed, 04 Mar 2026 15:20:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 92E1F10EA07;
	Wed,  4 Mar 2026 14:20:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KYk4h9Xj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 25DAD10E9E9;
 Wed,  4 Mar 2026 14:20:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772634052; x=1804170052;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=Ls+o0bsdGJWh3NGnk6qoiWyOcm5iF7YIv9PFAdIeGbg=;
 b=KYk4h9XjHcT3VZhVmkFlBm+i5RMBZZJH5lCXPJgEb9ZO9ieMHtW+g6VK
 aBfh6y+6QfbShx5Pzovs3LfRLvtnhOIHR8+fj0UV/YzTqldiJJTMiS1Vm
 kAcRksjkk5+Z7li5IXlisH5EISFQ8TRTH+OLUE5jH99pxtpuEACTABdCq
 QH9M/VKh9hN5RO20HuMXReH7Yr/wpoIgsuHPdCKyI69ldsfZU+Ao11PDI
 FUuz6LbCsy6qO14Kx8TIyJPccrJsSpxZJ7cAs1EzMNQNMhGaH/fM8oh9Q
 qmA2YGR7m3wfqno9l2Vq56gZrQ0ln6EgXySjFT4ebhhwFCTbtpBg0uSfL w==;
X-CSE-ConnectionGUID: n/a2b/G4TFerpJXumKzylA==
X-CSE-MsgGUID: qzgqkSs8RQuAY1ep0bBDBw==
X-IronPort-AV: E=McAfee;i="6800,10657,11719"; a="73659588"
X-IronPort-AV: E=Sophos;i="6.21,324,1763452800"; d="scan'208";a="73659588"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2026 06:20:51 -0800
X-CSE-ConnectionGUID: XG+4DWFMSq+ZWObYvVIIAg==
X-CSE-MsgGUID: 1unLBtUqT3mxipWyRYKA2g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,324,1763452800"; d="scan'208";a="217585793"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2026 06:20:51 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 4 Mar 2026 06:20:50 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 4 Mar 2026 06:20:50 -0800
Received: from PH8PR06CU001.outbound.protection.outlook.com (40.107.209.21) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 4 Mar 2026 06:20:49 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=TXYYG4SGLRV8TmGoOvlkmhuZDbuLAfHgPFj+mqsBcJHACTbqkOJuUoc+AK3x8cZbetfV7dQYm0CD+XPn8lUy69TflrDAnLVSstbKGO9Lzkuqg/VATXKsG4IJCvrpsFHAvcHdx5yAd9TovkkOdD8wQkM8H8HpFvbcbdxP/YupnE0p3+SghwElVKstVQOiGfcCuUabB4rM3lVuximaUk8gRg1nns/YMXqu6GBc0MBjEU2BgNi4kIRmk6E13MkVuCPrb9ltoAcC90RfIsXXpsCkR6D8msBWYDzWz3OcUOs9RcqdGeMRDmiy0fn6gn8tldiAedfq65ympfS+8JrzJ+Tz1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Ls+o0bsdGJWh3NGnk6qoiWyOcm5iF7YIv9PFAdIeGbg=;
 b=JsHcVm8arsuXyLc2RZehw2T1V7EWrKScD60ai2B59FtebZ2PtpQW3i+6XF/MvaTBlqb4xzJZHFR4oh4hIojOz9W4C1QHvN0++txxT8VH5M2TuAimYmXqu+izRP9AVGF9f5HLTXJyXRXKqs1xzmPznUjIrLJD54W+M5A6p+yJxzlhimh93qysdH7TalPZlVXw7R9oWSxQ9319vxBUZS40Bj1FNKDHE0PlR0K7yZyPgQZYUy9fr0tZlN287+3CTBHEQGM7qZonPLUFK1xRHrrmkRJ8gBx4xZW3g1jql0NKy8dND7ktM5lRncbskCNq4yGWDN9H/k9aqfL0JSd3VcQl9A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 DS4PPFD667CEBB6.namprd11.prod.outlook.com (2603:10b6:f:fc02::53) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9654.22; Wed, 4 Mar
 2026 14:20:47 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::9086:5e0b:ad24:762]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::9086:5e0b:ad24:762%6]) with mapi id 15.20.9654.022; Wed, 4 Mar 2026
 14:20:47 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 1/7] drm/i915/gem: relocate __i915_gem_object_{flush,
 invalidate}_frontbuffer()
Thread-Topic: [PATCH 1/7] drm/i915/gem: relocate __i915_gem_object_{flush,
 invalidate}_frontbuffer()
Thread-Index: AQHcqnD9X23MTC8YeEOrPagJwl+3mrWeb00A
Date: Wed, 4 Mar 2026 14:20:47 +0000
Message-ID: <846e0fde752600f4f8232713f13816d4f17a5dc2.camel@intel.com>
References: <cover.1772475391.git.jani.nikula@intel.com>
 <d779ef44b4b43feda9df63f1225a947a9cd23ba8.1772475391.git.jani.nikula@intel.com>
In-Reply-To: <d779ef44b4b43feda9df63f1225a947a9cd23ba8.1772475391.git.jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|DS4PPFD667CEBB6:EE_
x-ms-office365-filtering-correlation-id: 05125b80-f877-40ee-748a-08de79f93afd
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|10070799003|38070700021; 
x-microsoft-antispam-message-info: kg30N//mAzskacIxEop2qbs4p5TP+loaJDthAyx8H6hF4X47nit99ppIe2c4bw42L4iBKKvocRMQXl39H5Rqe6S1omOrsfu7oXpD+2Nn+TFtozRYt0D8tgTZZEZ9hZyzjAlEPKUHQIh2M0rfnw6jnc07FxV+tZbtQqvjQx6YZ2C5LhL08e98X1KtvuiYw19Yx9TFu6zf5AfrGLqMYlfb7+oRleP3CjQ5ZEPb9glOV180yOCT5unj/UcSMtsyg3/XW2trc2+RDQHtbHBQ+gxvMR9SNGCjSYn3IN2ivznsTWbAykFX900DEqURMpXaqoJpXBejluUhbigmbdgkqmZDIaIFkeVnBNtGLXyeUlDyPH3WO+0XqabQEraJy9ccVCeR5vcV1uebNInryXBoLI7nd8Zy14OtdrSECwB+0N0U2vjEVhoOTCUfXyowNDe0ch0fBFcFGRTBkEjWTU+l8oGr3piU3Dt2dNlJX8zZpEriRX4nl/T5IZ/fuQwbjfuwxnICvLlpEt+U+YjarAZEyfEx73QjuU10w424WaLp0qDE+NxyuzHg6Mr1dZCloBX/w28yKrkX1UQrzWIrqwyXsEni51OiCoKli2+lzo6MWa8MSmlm9shJdwZdXfCivIRuV/+HXJxjz8/nj50ff94eB67u2IPxW/vGqyME1lX3hKEcZ+R/V55dVZR7qozZjpR811+t2sWLlZhmftJ3f8kHKzXAcuCJzPkQRIYX3vAaaP/6mtFneiU9zG0KTPM/GkPOuvDeDTCodHBNQcZ8qFk2c5FGrVXsvUTZhu8aIOeRPH9MeWo=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(10070799003)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?eUZ6R0hmcHhsUDBMYWpEc1F0bGUrZ09JTmwxdDVYS2RXQ3BBOC9LR3VSVlBv?=
 =?utf-8?B?ZjVMZ2hvVC9vTEJqRThjaFFRRTloaXdJckFYSkFpZ3JyOVVQQjlLQUhXdWRv?=
 =?utf-8?B?Y2QvalFWRmVVVGVhaEFnUlVzc2pINE5hUVJnZVJkcjJENnByczhOdjNaTnhk?=
 =?utf-8?B?Umk0SlZzN0tLbkNCR1JJa0dEekpSVFpMMWsxYzRzcUM2S2dTSHh4TXZWdUQw?=
 =?utf-8?B?Y0F4RWEyZ2dPSFRkL3VxL0tMVEZuSmxRSHk2ajV5V1JlZnduRVM0VUZoOXRr?=
 =?utf-8?B?NW5UODc4eWJPTktGQmJFV1JtQ25peEY2S0NBOVdUNktWZlVNZEV3SVVZcHFI?=
 =?utf-8?B?Mmt5Mzh4RHVUM1JQeklVVGYzbGhRSzZ6cTVjZHRuODlDOTZBNVF1UUtiWjlx?=
 =?utf-8?B?UkVDQ095QjdOTUQ2U21YbXgvRnNva241Ti9hZkp2VUNGMVhnajUzTktBN1ZX?=
 =?utf-8?B?cTVzZEVyQmpqWWh1SDlyaVZObi9USld1WmpEQW96TnJFYm1sTmQ3eUJna0xJ?=
 =?utf-8?B?d2hDUDBTVjljZVVFcU9vNm1sdUpCdkU1V2wwd0JCSmRSaWVXRFJadzcvbzdS?=
 =?utf-8?B?bGd5VjRKbmhGWFJPSnkrMFRDTzZhSXljQ0o5OXV0L0pqVnkxUmhPaVMwc3Fj?=
 =?utf-8?B?SmRTNEtTMDlpd2NhVTg0NEpzaEpSQTAzcllUbXIveWt0S1lWY1JmeXR2dkNF?=
 =?utf-8?B?UWNqSTZjSTJBRllYQlMvNnB5YUlHV2dVM2tJSEU5bFZzbVBnMDh0OFo4Zllr?=
 =?utf-8?B?cHQ0Q1RBL05QelhYVzhkZDZSRVp3dWRUUytWd212TkRYVGtuR2Rkb1VwNFI3?=
 =?utf-8?B?WDdpeDl0S0RBL3lHVmphWnBNOFBDMCtjTmVHYm9RQ3JGZUFVT2xiN1VNalZH?=
 =?utf-8?B?U1BpaldqYzU2M0hwRFVFNlFQbktRaUk5TTI2UEFPQVFsZ3E5c0pGbVJmbUx4?=
 =?utf-8?B?NkM3d0E0dkp5VzdKbHRiSGxpUHd0em9FSnFlZ2FGMmU3Rks2bFcwRC9ZMnpQ?=
 =?utf-8?B?aFZCc3F3SU1aWlFBQUVmWXk4OHJuUmFPK09NczBKdkV6ZW5UcWtFeVBSNlNW?=
 =?utf-8?B?bTJKUC9PQkVVbDU5ZDI3eDFtV0pBN3lkUzk0eG1lMml4c0U0aytEMFkrV2Ix?=
 =?utf-8?B?NlpkOTB5VjlYb3RYWDd3RXd5SDBHOVJXSUhhT0RtNlpMV1o1dDgwK2w5dmE2?=
 =?utf-8?B?Nm1sQ09QUTdmZU1LbkpLdG9wbWRERXVwcUQrVWc1ZVA3RFk2bHdMTzgrZy9r?=
 =?utf-8?B?V3pES2Y4UjRYa0dHOGhhSlZpUXFIMjkrMlVtRExJM1NiYUtJRWhvcGpNbEFB?=
 =?utf-8?B?djIxdGx1WTFHLzNBdFQ0WWZ3RFpac3NlUlhIVzREd0lmOTlQSk13L3RYSGk4?=
 =?utf-8?B?WlF2UHhZMDJrcytNR3hOL0M1KzJZTHZIYm53YXNTbmFaOEIrbkN6SE9LMnJv?=
 =?utf-8?B?cHc5ZlkyN25GaCtRNTYxUGszckQ3S2tmUUVWK1ovV0lkU0c4QmpEWWMwczRn?=
 =?utf-8?B?eUVlUEZUUlZCS0FoTmIxM3pMT0VSM2xUVzRoUFlWek1KdlBCSG43dnA4TU5W?=
 =?utf-8?B?SDYzWkxia1U2WnNyNVBRQlo4Ulg0L0I2MXFrYTYxRnBaNHlnek9BRnlLaU1p?=
 =?utf-8?B?dXE3Ny9hdWFuL3o0T2t3WGpsc3JVVmV0bndJczVjT25DcXd2Lyt3NUN2YWFl?=
 =?utf-8?B?WG5yMnFacmN6S2Zwb3hCR3NqelVyZ0lCLzlKYXg0SG9vcGlRWW8wUEtaSFVk?=
 =?utf-8?B?RjluMHc3SXRuVzNQakdIVFUrT0xyN3E2dGF3cmNkTTlYM016OXk0RHBKeWNG?=
 =?utf-8?B?Unh2Mmc1UXhUY3FwdW1pZ21YSGxlYncwbUZRSSt5SGJSR1dZSlVXZDNhTG5G?=
 =?utf-8?B?VUZqNVE0VkhITXNxODFWT243d05GaXl4WFE2MTZHNy9Ba0o2K0xzOGRweGVo?=
 =?utf-8?B?Qndab2ZQQzNzY0ZwU01RRVFSMXNXenBUNTdSeERnbTlCNjhSYjFKVloyWEFH?=
 =?utf-8?B?MTdYU3FwdHpyUGVXRTY2bnRicG1TN0Z4ek45Tk52NlNscU5ZdkNLQkFDQmpO?=
 =?utf-8?B?NjFQR2dsSzgySGVBRGphUFR1eGQzWDVQMDhyVDNoSmxKeUcrZTNTMndYdE9v?=
 =?utf-8?B?U244WmswRzZ1Uy9ZbG1TMnQ4S01DTnNjcitWVHk2WDh5d3ZRY0FXb1RaQVU4?=
 =?utf-8?B?SFhsQi9pZis4bTgvN0tObEVrUk9weXN6QVBpK21JTjZpTm1YZzJCemxDVzhR?=
 =?utf-8?B?d3BrbGdVVGErZG1yODhndDZqSHh4LzBaU2ZpYjJ4Q0ZLeHlsbzFpYy9vUHlW?=
 =?utf-8?B?cHJ6cURLSDhXcXQvUnp6YmNweDZFbXpVcVp5QlR1Smd5YlZIV2t0WkZzZ2ph?=
 =?utf-8?Q?teGtv36V1SDl9kLgK2rcjORDGksGt544g5xYZ58AhwbaM?=
x-ms-exchange-antispam-messagedata-1: NMDnpOb4GiXMwp48G+wzxvLCIQ9zCVQaFHc=
Content-Type: text/plain; charset="utf-8"
Content-ID: <E69BAD65BA0E094C99E3CC2ACFA62F5F@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: MOXztfLVq5p5U4Bur0wXpV87oqi4n4TeEZBnVIGo5QtNzzfl3/YjMEurUBoKRO4MXerFk0qNTILPKI7sWPpSdug3xGFIyWjnnlh+sLiKCPbm0ITxPDieyGYhM4oNjJstDF3Mh+AqpwXSuRmP6AdhsrQu6n8+KuVtgwbE7CgSDKPjm/R3Jr1VpykNnWJJCmfqr5n27z5NhAnwLM8onZk3QOEbI2q7CL/czOJwZh4RQsrbQ1gjdY8WF4TkOpa25EVFSiQxZXLFyghb8KV3JlmC5xvhgMC0E/HSzQK/TaL8AG4t8U61I0IL9MBRmTYC/ojfeJvWFrrJPayOmdH94cVjIw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 05125b80-f877-40ee-748a-08de79f93afd
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Mar 2026 14:20:47.6493 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vfSa+hUcIU0UiYjtcnlG7LcyGnSaspohFtXYzGC87IddOpaR/ow93QcttpHUO1K55ueedlOFvgxNEVJiN8N3pGfqXJjDHcE7k3Qfyecuad8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS4PPFD667CEBB6
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
X-Rspamd-Queue-Id: 4890B2013BD
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.21 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_BASE64_TEXT(0.10)[];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:dkim,intel.com:email,intel.com:mid];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[jouni.hogander@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

T24gTW9uLCAyMDI2LTAzLTAyIGF0IDIwOjE3ICswMjAwLCBKYW5pIE5pa3VsYSB3cm90ZToNCj4g
TW92ZSBfX2k5MTVfZ2VtX29iamVjdF97Zmx1c2gsaW52YWxpZGF0ZX1fZnJvbnRidWZmZXIoKSB0
bw0KPiBpOTE1X2dlbV9vYmplY3RfZnJvbnRidWZmZXIuYy4gQWxsIHRoZSBvdGhlciBpOTE1IGdl
bSBvYmplY3QNCj4gZnJvbnRidWZmZXINCj4gZnVuY3Rpb25zIGFyZSB0aGVyZSBhbHJlYWR5LCBh
bmQgdGhlIHJlbGV2YW50IGRlY2xhcmF0aW9ucyBhcmUgaW4NCj4gaTkxNV9nZW1fb2JqZWN0X2Zy
b250YnVmZmVyLmggdG9vLg0KPiANCj4gU2lnbmVkLW9mZi1ieTogSmFuaSBOaWt1bGEgPGphbmku
bmlrdWxhQGludGVsLmNvbT4NCg0KUmV2aWV3ZWQtYnk6IEpvdW5pIEjDtmdhbmRlciA8am91bmku
aG9nYW5kZXJAaW50ZWwuY29tPg0KPiAtLS0NCj4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0v
aTkxNV9nZW1fb2JqZWN0LmPCoMKgwqAgfCAyNCAtLS0tLS0tLS0tLS0tLS0tLQ0KPiAtLQ0KPiDC
oC4uLi9pOTE1L2dlbS9pOTE1X2dlbV9vYmplY3RfZnJvbnRidWZmZXIuY8KgwqDCoCB8IDI0DQo+
ICsrKysrKysrKysrKysrKysrKysNCj4gwqAyIGZpbGVzIGNoYW5nZWQsIDI0IGluc2VydGlvbnMo
KyksIDI0IGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2dlbS9pOTE1X2dlbV9vYmplY3QuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9p
OTE1X2dlbV9vYmplY3QuYw0KPiBpbmRleCA3OThjOTIwMTYwY2YuLjUxNzJkMzk4MjY1NCAxMDA2
NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdC5jDQo+
ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9vYmplY3QuYw0KPiBAQCAt
NDc0LDMwICs0NzQsNiBAQCBzdGF0aWMgdm9pZCBpOTE1X2dlbV9mcmVlX29iamVjdChzdHJ1Y3QN
Cj4gZHJtX2dlbV9vYmplY3QgKmdlbV9vYmopDQo+IMKgCQlxdWV1ZV93b3JrKGk5MTUtPndxLCAm
aTkxNS0+bW0uZnJlZV93b3JrKTsNCj4gwqB9DQo+IMKgDQo+IC12b2lkIF9faTkxNV9nZW1fb2Jq
ZWN0X2ZsdXNoX2Zyb250YnVmZmVyKHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0DQo+ICpvYmos
DQo+IC0JCQkJCSBlbnVtIGZiX29wX29yaWdpbiBvcmlnaW4pDQo+IC17DQo+IC0Jc3RydWN0IGk5
MTVfZnJvbnRidWZmZXIgKmZyb250Ow0KPiAtDQo+IC0JZnJvbnQgPSBpOTE1X2dlbV9vYmplY3Rf
ZnJvbnRidWZmZXJfbG9va3VwKG9iaik7DQo+IC0JaWYgKGZyb250KSB7DQo+IC0JCWludGVsX2Zy
b250YnVmZmVyX2ZsdXNoKCZmcm9udC0+YmFzZSwgb3JpZ2luKTsNCj4gLQkJaTkxNV9nZW1fb2Jq
ZWN0X2Zyb250YnVmZmVyX3B1dChmcm9udCk7DQo+IC0JfQ0KPiAtfQ0KPiAtDQo+IC12b2lkIF9f
aTkxNV9nZW1fb2JqZWN0X2ludmFsaWRhdGVfZnJvbnRidWZmZXIoc3RydWN0DQo+IGRybV9pOTE1
X2dlbV9vYmplY3QgKm9iaiwNCj4gLQkJCQkJwqDCoMKgwqDCoCBlbnVtIGZiX29wX29yaWdpbg0K
PiBvcmlnaW4pDQo+IC17DQo+IC0Jc3RydWN0IGk5MTVfZnJvbnRidWZmZXIgKmZyb250Ow0KPiAt
DQo+IC0JZnJvbnQgPSBpOTE1X2dlbV9vYmplY3RfZnJvbnRidWZmZXJfbG9va3VwKG9iaik7DQo+
IC0JaWYgKGZyb250KSB7DQo+IC0JCWludGVsX2Zyb250YnVmZmVyX2ludmFsaWRhdGUoJmZyb250
LT5iYXNlLCBvcmlnaW4pOw0KPiAtCQlpOTE1X2dlbV9vYmplY3RfZnJvbnRidWZmZXJfcHV0KGZy
b250KTsNCj4gLQl9DQo+IC19DQo+IC0NCj4gwqBzdGF0aWMgdm9pZA0KPiDCoGk5MTVfZ2VtX29i
amVjdF9yZWFkX2Zyb21fcGFnZV9rbWFwKHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmos
DQo+IHU2NCBvZmZzZXQsIHZvaWQgKmRzdCwgaW50IHNpemUpDQo+IMKgew0KPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdF9mcm9udGJ1ZmZlci5j
DQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdF9mcm9udGJ1ZmZl
ci5jDQo+IGluZGV4IGFkYmEzZmE5NmMwNS4uMjkwNzZhZWZkZmQ4IDEwMDY0NA0KPiAtLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0X2Zyb250YnVmZmVyLmMNCj4g
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdF9mcm9udGJ1ZmZl
ci5jDQo+IEBAIC0xMDEsMyArMTAxLDI3IEBAIHZvaWQgaTkxNV9nZW1fb2JqZWN0X2Zyb250YnVm
ZmVyX3B1dChzdHJ1Y3QNCj4gaTkxNV9mcm9udGJ1ZmZlciAqZnJvbnQpDQo+IMKgCWtyZWZfcHV0
X2xvY2soJmZyb250LT5yZWYsIGZyb250YnVmZmVyX3JlbGVhc2UsDQo+IMKgCQnCoMKgwqDCoMKg
ICZpOTE1LT5mcm9udGJ1ZmZlcl9sb2NrKTsNCj4gwqB9DQo+ICsNCj4gK3ZvaWQgX19pOTE1X2dl
bV9vYmplY3RfZmx1c2hfZnJvbnRidWZmZXIoc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QNCj4g
Km9iaiwNCj4gKwkJCQkJIGVudW0gZmJfb3Bfb3JpZ2luIG9yaWdpbikNCj4gK3sNCj4gKwlzdHJ1
Y3QgaTkxNV9mcm9udGJ1ZmZlciAqZnJvbnQ7DQo+ICsNCj4gKwlmcm9udCA9IGk5MTVfZ2VtX29i
amVjdF9mcm9udGJ1ZmZlcl9sb29rdXAob2JqKTsNCj4gKwlpZiAoZnJvbnQpIHsNCj4gKwkJaW50
ZWxfZnJvbnRidWZmZXJfZmx1c2goJmZyb250LT5iYXNlLCBvcmlnaW4pOw0KPiArCQlpOTE1X2dl
bV9vYmplY3RfZnJvbnRidWZmZXJfcHV0KGZyb250KTsNCj4gKwl9DQo+ICt9DQo+ICsNCj4gK3Zv
aWQgX19pOTE1X2dlbV9vYmplY3RfaW52YWxpZGF0ZV9mcm9udGJ1ZmZlcihzdHJ1Y3QNCj4gZHJt
X2k5MTVfZ2VtX29iamVjdCAqb2JqLA0KPiArCQkJCQnCoMKgwqDCoMKgIGVudW0gZmJfb3Bfb3Jp
Z2luDQo+IG9yaWdpbikNCj4gK3sNCj4gKwlzdHJ1Y3QgaTkxNV9mcm9udGJ1ZmZlciAqZnJvbnQ7
DQo+ICsNCj4gKwlmcm9udCA9IGk5MTVfZ2VtX29iamVjdF9mcm9udGJ1ZmZlcl9sb29rdXAob2Jq
KTsNCj4gKwlpZiAoZnJvbnQpIHsNCj4gKwkJaW50ZWxfZnJvbnRidWZmZXJfaW52YWxpZGF0ZSgm
ZnJvbnQtPmJhc2UsIG9yaWdpbik7DQo+ICsJCWk5MTVfZ2VtX29iamVjdF9mcm9udGJ1ZmZlcl9w
dXQoZnJvbnQpOw0KPiArCX0NCj4gK30NCg0K
