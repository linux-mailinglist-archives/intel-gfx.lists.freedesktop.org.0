Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B7C6DCB931B
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Dec 2025 16:51:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5495110E8D5;
	Fri, 12 Dec 2025 15:51:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HyobyDJ9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D67810E093;
 Fri, 12 Dec 2025 15:51:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765554703; x=1797090703;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=ChB/zPSkBq5H1g4I3JI+6fLyrQtYBI+AunpvwD4dF8k=;
 b=HyobyDJ9LFE1qITMLz6CJ3VD3TH5lBUM6V/fbJX21J+iyVjqr+IoQS4S
 DlmtWWesanIbr9z6OcGZrPBR8IMdGawRKoMTOqvQaQhFzd3Ht2MqhPH45
 Jix8KkhyhmF/36HKcH8llVQub96K2XSH3HyrSWyumqhwtVjuG3n5n6eF4
 /9cKh+9Yz/HedvK2RiUR5yFWjPkcWubAgfomzIP9DfPxVd+6QIAeKgsNm
 AMdWlBno1YqlgBtn8FFbx77MHS7iIsxur3SD8mR79yk4AkVtat9v/nI96
 MBZ8L9SH0ECdcQx443m9kRfGau8c+i4K8mjV1o5amEIZuTInl5dBMnBkS A==;
X-CSE-ConnectionGUID: bzZrM02zTuWOxp3lp1ewww==
X-CSE-MsgGUID: wD5tugqMQSOcZlAh8MYmCA==
X-IronPort-AV: E=McAfee;i="6800,10657,11640"; a="78262942"
X-IronPort-AV: E=Sophos;i="6.21,144,1763452800"; d="scan'208";a="78262942"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2025 07:51:42 -0800
X-CSE-ConnectionGUID: Cz2f3nHdSjW7YHqO6oYGpg==
X-CSE-MsgGUID: fpP3a4PzTBSGkMY/yi881Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,144,1763452800"; d="scan'208";a="234521874"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2025 07:51:41 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Fri, 12 Dec 2025 07:51:40 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Fri, 12 Dec 2025 07:51:40 -0800
Received: from CH5PR02CU005.outbound.protection.outlook.com (40.107.200.21) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Fri, 12 Dec 2025 07:51:40 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Aq6gwuWIVM37DvOIDjIkyXOc3WFh2KfMR1M6uQaXKwmDBBoh6RYvUdV4HR1qLNdMLovKl7H38NbvnO6uGT0hmw11E6d1gztjFQfhspYsTAYZXZC6FjDmicW+bdeIbnDdz/7gx5qYvIxVZEfV9Yt45uwKwbQVQVnVFBF2gJex2aK93mzJuAKny3UIyVIwRbwaD86ZP0fKuDg+ac/3H6mEinzNUWjbZCM0ux5FeE0QQP4bk7cT1MD0M+/pTZuxTsBBkVeMBlsLSf2b/lMu9O68JCNpbVAdkdeQCTfB0MljGHCszVeJoFWdI7BHBpvx3R98tmOWbhzKQ2Z+tMlCw1xGPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ChB/zPSkBq5H1g4I3JI+6fLyrQtYBI+AunpvwD4dF8k=;
 b=MJf4eXNJc2ATdcycAgyEXnrSQgEw63DQp/nGdoy2vL5hJWbT7VSdX1appSDkJ5yxKgYw5ppFlV0RxwT+Xn3wOgxE8dpGRRC1SHyUjzDoyd6OPo7+JcmucWRDf0kiU4tiBDLeN0GLzOr7RDNPS6yjWgH0rU4C7nZToze4QCe34/dMlGUU+NH1SsCSPekFWwfe8zL4udvtCHP2luBhLrLzBtDo6ohx65efeFL9+rSnsOr9N1eJFjNZ4snjJaXebIbCO+chvywcpn5goZOX0u6l7cD8plVlWtXIU1+RUiJXe2O7eG+i/m168ARGfEHz7MlrkXNGxwGQCSwsRbMWY2YIzQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7777.namprd11.prod.outlook.com (2603:10b6:930:71::14)
 by PH0PR11MB7494.namprd11.prod.outlook.com (2603:10b6:510:283::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9412.9; Fri, 12 Dec
 2025 15:51:38 +0000
Received: from CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8]) by CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8%6]) with mapi id 15.20.9412.005; Fri, 12 Dec 2025
 15:51:38 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Deak,
 Imre" <imre.deak@intel.com>
Subject: Re: [PATCH 17/50] drm/i915/dp: Fail state computation for invalid max
 throughput BPP value
Thread-Topic: [PATCH 17/50] drm/i915/dp: Fail state computation for invalid
 max throughput BPP value
Thread-Index: AQHcX8eoeW7Sp2CsREuCiNRgUYa/8LUePtQA
Date: Fri, 12 Dec 2025 15:51:37 +0000
Message-ID: <cb27538c39fd239fa2599b41dbf8434ccf141b8c.camel@intel.com>
References: <20251127175023.1522538-1-imre.deak@intel.com>
 <20251127175023.1522538-18-imre.deak@intel.com>
In-Reply-To: <20251127175023.1522538-18-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.52.3-0ubuntu1.1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7777:EE_|PH0PR11MB7494:EE_
x-ms-office365-filtering-correlation-id: 198408a2-97d5-41f1-cc25-08de399655c7
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700021;
x-microsoft-antispam-message-info: =?utf-8?B?REpLSTUwbjB4cXhNcDI0OCtXNm5PWkpFbzlSU3ZZOVN6RnY4dU1NY0JqSDJp?=
 =?utf-8?B?K2FwWDVsNStJVzJCLzZKUEE2STYvejJvQUVCejZSTWlNaWFGNkhzcHBabFRM?=
 =?utf-8?B?c05HaHUwaUF5dlprd3Nid29vT01BVmtkMkFRZXVBZHBQNVlzYUpYc0FXaWJh?=
 =?utf-8?B?dGhyV1VxdllveCt4emJnY2FXSFVIYmpOM3MyYWh4dUNaUWllMEVvdUxrb0NJ?=
 =?utf-8?B?WWh1UEE1YXg5RTBjcDFNM3U0OFdpMDdkTExDUDFja3dEYlA2VEhBUzRlVGdO?=
 =?utf-8?B?U1N0cnBzcXpvbyt3TFQzdC9lNFdDSWR6VG9INHN4ZXAydDFrbHk3SS9sV1dR?=
 =?utf-8?B?OGRDSmYvTWRiK3JaMEU3cE5oaTJXSXVVcGxrN1BMUXAybUcyM3hJVjVZdzJG?=
 =?utf-8?B?dmhYbnNUdHk0U1JxcDRmUHJqS29rc0MxcldoTUk4MHNYR1M1bkpFMlNOU284?=
 =?utf-8?B?VjhUQkViZDZZbXM3cWFKQTFBbWJDaThZSVRMQTUzSTZUWHZvWVFpTUMySnlr?=
 =?utf-8?B?VlNYakNTSWNzbjk0bzJIRE5wWVYwTE9OMm5KSzVQZFQ0b2pGaHlWaEQyQlBQ?=
 =?utf-8?B?cjVrWHZWazVBRXVIUUxVbEtCTWZERXVkakRwUk44TkJKR2RCV1JCaUl1Z3Q5?=
 =?utf-8?B?Y0xVbmk0cVd6WkZ6amhYZkloZnJ3eVRHWGJoRGNNdDU2akd2N0xLMlJteFk0?=
 =?utf-8?B?ais3TnJKWG9RT0l1OWtDbGphNGJ6ZkhGaVB6MGlyZGM2WVI2ekJhWTZzdGpC?=
 =?utf-8?B?Zjh1cWhYSjBoQXNoVkhPeDFLeWw0TGJQdElaZDFxRzY0T1ZaNkp6eFFlNmxt?=
 =?utf-8?B?K3JsZ2kvYjdDMVplcVVLOUtaeW9vRDYwaFpVVTVFQ05GcHpYb3F2Z1RDc1cy?=
 =?utf-8?B?akgxRzBsOVhZRTFmb01iU3ZXcmlJTSs1V2diNC9odUJRUGNwcEdJZnU4Z0RH?=
 =?utf-8?B?TWFIYW00NEE5Y1FsWVlFNUVxOU1ReWs3OExuNG5NWmVSbmlTcFBDUXIrVTBz?=
 =?utf-8?B?M1IwZFhXWXdjTVU3T2QxRldnMG1lTUo5WHVwM3ZGcU81ZFgvYjdma05QazVN?=
 =?utf-8?B?ckh5QzN2R3Eyd0FLY3pKczdjODBhaGF1Q0plTmwveGowejlPcit6R2NlUXFM?=
 =?utf-8?B?S2ZrVFZLVC9SZWFkRkJjbW5vVzVKeFg4b01LMk9sSmVUeVRNYlFuU0trZU9q?=
 =?utf-8?B?OXE1QUNPazE0ZUhIVi9vVXBmWjhZbEo2TDltZ0V2TU1Lc1dPTGZ6dWJmU0pY?=
 =?utf-8?B?bWFvZDNtMnNtSm0zUVZUbUxkQ2NaSXJTSjVnZ0RsRVhHS0FPaXhFSVc2YVlz?=
 =?utf-8?B?S2FQTGtheXF6MXVFcXdrM2paRVJESWNhWHVmNGw1dGlwT2R4NzJtVGwvZ0wz?=
 =?utf-8?B?WmI4T1lwaE54andYK0pMNEs3MkQvRW4yc0p3d0Q2czhkeGNCMFNCZHh4Z1Bp?=
 =?utf-8?B?d2J5Tjc3RTEwenhMSVU4MU5PWElUazBha3VRL011cTN1bTEzYUFmZVlRMFI4?=
 =?utf-8?B?M0FlZ3V0Vm1DcVRldUltMTdUaUVhN1ZNcE9QY2pQRTFZZ0FVL0I1bzRuYzFj?=
 =?utf-8?B?MEgrUXFRNmRyK0d0UldhSlJaSVkwUndpNmVWSVp1ajhROFhaUTdRUk9yNGRq?=
 =?utf-8?B?L2d1L1BLOXA5VmZpYnZQeUNaZ1F3Wk5DamNuUERvUm5WOEdMbTZjWlZrbkVm?=
 =?utf-8?B?QWRZaFpmTTQ5Z3cwdDRpcEFzek5vdDdobWJ2L0tzSmxrZFl0VUZtNE9zemgx?=
 =?utf-8?B?eHpVbDFoUndDVEVSMHRBSWU1QitvUnR3QXM3RTM3Wko3dUkwOXJvdWtoNmhJ?=
 =?utf-8?B?NGl6U1lwRnhiS2Jpa01VREJkdUxYU1RKU2VBNGVERld2dGxGdjBDd2JMVlhx?=
 =?utf-8?B?OWtsYXp3QWVHQ3hTMVhVMGxPUW9RV2RrenpRb1lsUFNxUWJVUXB1bWN6TW81?=
 =?utf-8?B?cG1ZYUt3T2ZPZUZtVkxRY0RHR2NMaVczVVMyU202ZGhJdkJWMnJOMnd2MUpz?=
 =?utf-8?B?THllMjdZbEZoa2tYWXNFU0JDVDl1VmgreVhiOEgxd1JxS3RPdnA4T2xhS1lT?=
 =?utf-8?Q?0cmYNS?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7777.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?VmV2Q3Ryb0hjVnRWME95RTlScFZmeTdnTW9tTkpuQmZFUUtqK1I0b0VzcFRP?=
 =?utf-8?B?VXJlWVNpY1QwTlQyZTJ0SEhJYUY1bEJ3a0pHdnR0Q28wSHZ3U2cxYnREOTha?=
 =?utf-8?B?dWI0R0NvNDVOb1N3MnRlYUlWMjBGcXVaaXQ0STE0VU54aEJHaWc2MHRuUk5r?=
 =?utf-8?B?Wm8rUFpFdm9MS2IxOUI2V1hkVnlXcG5oZWtGZC80VzE1amQzeWNMSUQ0MjFu?=
 =?utf-8?B?dGlZdDBpYm54bTlwWkMwZTZoK3Y2NDB3K2U3UXRvTVZYbTNhRmZaN0diVzNq?=
 =?utf-8?B?cTJRUEV5SzFQSEZqdzg5WjJxdjQ5Z2tpeXZVVDUxVTF4b3UyN0Z4Yzh1MXBm?=
 =?utf-8?B?TVQ5S2tNSE9nQXVFRkRPTHJTakxaY3FvSTJjZWkzY1JOaU0xek93Z0pKblBJ?=
 =?utf-8?B?ZGw1aFpWMWhXUkwyWG5wNFFZT2RzMUlNSEMvTkt1SlYybXdhMzFybmJGMFdR?=
 =?utf-8?B?eFI0ZWNZdElwTkxmTE5lN01DUGYvOVFoU055cGFoM09xY3lOTEhhQmhuNXV2?=
 =?utf-8?B?cStKM3JjMVRKdTV3aWUvN0ZORE1XY2tyb2lNWnJrazBqTm5SSVBpSDhxcWlZ?=
 =?utf-8?B?WExOSXBxRGlkRmVSMDFGVmVUWkdPWm1Yc2YxV0NYNVlZZ1dhOTJubTFzN1pS?=
 =?utf-8?B?Yk5BRUtRVWFiTnFjV01UKzk5MGdmZk1BbENFeDQxU1JURnhpNFlyblpJVG9K?=
 =?utf-8?B?aWRYZVdQS1JlbkhrbldKMzM1SUc2SXVVT3c5V1N6Vy9uUWlSN0s4cWFqRUYz?=
 =?utf-8?B?RWVabEwxdW1MZStjY2Yvbmp0Y29TMndvRzhlMWg3bnZFM1BmTStTRUVqaE5w?=
 =?utf-8?B?aFNrY3FCT1QvR2dtbHlicG1KWDlkYVdvektDT0ZuTjFXcWVtK1Y4VVJvK2Ew?=
 =?utf-8?B?RFVNR3U4QzhGLzlPVk9ROERWR0JKWm0ybEVXbDFHdVYxU1g0ZENaeGd2U25K?=
 =?utf-8?B?Unc2OTlEWENaU1RYcVh3MWE2ZlFockcrbWVLMnU2anZxVXJzVEd3QjdZbDlC?=
 =?utf-8?B?Qk54em13bGZxOHJ6bkdnSnJ5NWpkMW9HTHF6OHFzVTFaSFpFSno5K3M3bWtu?=
 =?utf-8?B?eGF6K3FKL3hjZlgrNTU1aEVCczEzMkJYdi9FRGhVeVpkeWpUV0JNVUtMNXpa?=
 =?utf-8?B?WldiWk42TzdtVHFmZG81dFNmVG1kenAvSlpZRTBHTHhuZlk5anNkWEpIT29G?=
 =?utf-8?B?TEc5VlZ3T2ovN1d3VEJEQWVwV2kyQjE0d09vZFJHcU1SeHlrYU9pcGQ2UzV5?=
 =?utf-8?B?eXFvc1VOMW50MS9HV0I2S1ZtQVJBODZuWUpGblVocElhL25ackdpNTB5L3Js?=
 =?utf-8?B?R3NRQXVUQU5KOE5TZXdOVmNCdHlUcEZmZnhMNzVrNzc5REoyRC9DZUVsekZt?=
 =?utf-8?B?T24rZytRZFB1azlxWTNwQlFtWmFhNkNiTElZc01wYnJUWkUxZWVzeGNIV3ZE?=
 =?utf-8?B?cmdTd1ZsQ3NTSWFBV0tMbDE2TXA4cVVORFFjUisyV0huS1dTdnpORUwrcEt2?=
 =?utf-8?B?RE1wZTR1enhvTVpRTDZUalI4U3hQMUNlanRXK3N1SVc4Y0I4cWJwS0FNWktJ?=
 =?utf-8?B?MC9FYkFuR256RVd0YzB3eDBBY0tvanF4eVNUcXI0bUtNRXFzdThSZndURytQ?=
 =?utf-8?B?ZzBRNU5VVStVanlRTUJ1Q0VhQWVMeGphdTBqeHJkT1d6YlpiTkljdkdDUG95?=
 =?utf-8?B?UzNPNVBjRklTaUt5di9WenRpNm54RjQwRFJ5V0dOMmFqbWtiNm1pekxzZHFw?=
 =?utf-8?B?REJDazc3VWtONTV5NHNEWnJpRmQ1YWhvbktJR1V3VzVTWDB6K056Y3pUWTU2?=
 =?utf-8?B?V3pUYlhMVENRYzlvVFVheUUwbUNzZFBvaGlVK3V6VGxORU8xMitSTlVlTXNp?=
 =?utf-8?B?a21NTjNHNXUyQkphSUQwRUc1VjBsSUpiYmhucUtINmVqclFuYVF2REppRFpv?=
 =?utf-8?B?NVd0TzJxdlMxL2pFUWZPemtUeVJOL2x5WFhjMTJVUFNkMHBIMVJJclFnS1hO?=
 =?utf-8?B?OVJKZFNTQ2F3SkF2NzlGZDV4WUhJTFZqQUNpRnJSak40dUJCZ0ZjalU4VXlK?=
 =?utf-8?B?M1ZNcW9jUmhIZjVNM1N2NkU0czkxREczN0NPTXNnUFljNzZNMmVvU3c5RmRn?=
 =?utf-8?B?MUYyVy9zdzNUckpvM2RqNGF0VU81VW92YldYUkE5WkRJTk1vTGtseVpZR1lR?=
 =?utf-8?Q?xQxv8Q0PdjSLFkP9LOfGfXo=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <13B3F425E0EE2546BD4A524F7F6576CD@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7777.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 198408a2-97d5-41f1-cc25-08de399655c7
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Dec 2025 15:51:38.0028 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: aJo1NqphRB5yHLWFrHEHSq8KvuN759HK3PIQMUYNXubMKw9Psx1EcGAuuOCkAiYxsx9DuD0I5ygTp8sXKwsOS/mPucq9uGpUrGLpH8hpBxY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB7494
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

T24gVGh1LCAyMDI1LTExLTI3IGF0IDE5OjQ5ICswMjAwLCBJbXJlIERlYWsgd3JvdGU6DQo+IFRo
ZXJlIGlzIG5vIHJlYXNvbiB0byBhY2NlcHQgYSBtaW5pbXVtL21heGltdW0gbGluayBCUFAgdmFs
dWUgYWJvdmUNCj4gdGhlDQo+IG1heGltdW0gdGhyb3VnaHB1dCBCUFAgdmFsdWUsIGZhaWwgdGhl
IHN0YXRlIGNvbXB1dGF0aW9uIGluIHRoaXMNCj4gY2FzZS4NCj4gDQo+IFNpZ25lZC1vZmYtYnk6
IEltcmUgRGVhayA8aW1yZS5kZWFrQGludGVsLmNvbT4NCj4gLS0tDQo+IMKgZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jIHwgMiAtLQ0KPiDCoDEgZmlsZSBjaGFuZ2VkLCAy
IGRlbGV0aW9ucygtKQ0KPiANCg0KUmV2aWV3ZWQtYnk6IFZpbm9kIEdvdmluZGFwaWxsYWkgPHZp
bm9kLmdvdmluZGFwaWxsYWlAaW50ZWwuY29tPg0KDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2RwLmMNCj4gaW5kZXggNTQ1ZDg3MmEzMDQwMy4uZjk3ZWU4MjY1ODM2YSAx
MDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jDQo+
ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYw0KPiBAQCAtMjYz
OCw4ICsyNjM4LDYgQEAgaW50ZWxfZHBfY29tcHV0ZV9jb25maWdfbGlua19icHBfbGltaXRzKHN0
cnVjdA0KPiBpbnRlbF9kcCAqaW50ZWxfZHAsDQo+IMKgCQltYXhfbGlua19icHBfeDE2ID0gbWlu
KG1heF9saW5rX2JwcF94MTYsDQo+IGZ4cF9xNF9mcm9tX2ludChkc2NfbWF4X2JwcCkpOw0KPiDC
oA0KPiDCoAkJdGhyb3VnaHB1dF9tYXhfYnBwX3gxNiA9DQo+IGRzY190aHJvdWdocHV0X3F1aXJr
X21heF9icHBfeDE2KGNvbm5lY3RvciwgY3J0Y19zdGF0ZSk7DQo+IC0JCXRocm91Z2hwdXRfbWF4
X2JwcF94MTYgPQ0KPiBjbGFtcCh0aHJvdWdocHV0X21heF9icHBfeDE2LA0KPiAtCQkJCQnCoMKg
wqDCoMKgwqAgbGltaXRzLQ0KPiA+bGluay5taW5fYnBwX3gxNiwgbWF4X2xpbmtfYnBwX3gxNik7
DQo+IMKgCQlpZiAodGhyb3VnaHB1dF9tYXhfYnBwX3gxNiA8IG1heF9saW5rX2JwcF94MTYpIHsN
Cj4gwqAJCQltYXhfbGlua19icHBfeDE2ID0gdGhyb3VnaHB1dF9tYXhfYnBwX3gxNjsNCj4gwqAN
Cg0K
