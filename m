Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 379CAA95122
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Apr 2025 14:41:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD1F510E282;
	Mon, 21 Apr 2025 12:41:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="R8rvRV5F";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E6CD410E282;
 Mon, 21 Apr 2025 12:41:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745239298; x=1776775298;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=xk7j4tlq/9VPd8rsrAMDJBpt/WvcbpdAvTE3GlfrRJM=;
 b=R8rvRV5FDO/XvFF2UUUg3gSfWVCY9hMVynyRopWZmM5me1OhE8ELA5rP
 615Jl7mpErNvrk1x49hsXFwc1pCBSTTgnPd/lSSYyLPIXDVofwxuJ0OKP
 flI29lUFf243hy974TMICcrLzO2UXH7GMnuOG+fsakpEmE0/HcK8YfQdW
 wZ9hYJIzATeABJ04Zl2yWn5VBdh8sTqw2vuBkQ2QbRUi8UIIMDKHGsymU
 qNxPi4RCBzlcFGpxcN9PXkGayk8287YNAleqcSLZyl+8H6CXcJMaHgjSe
 FURuVTFwBRrdgLUTrTubs5iXaZAfYeGjPjxpcFIw5tkkeflj6DqdpnafW w==;
X-CSE-ConnectionGUID: grcYDq2bQLq3k+BNI5t7Eg==
X-CSE-MsgGUID: AKIRE1DhR/G2p4E6yONHbQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11410"; a="56950985"
X-IronPort-AV: E=Sophos;i="6.15,228,1739865600"; d="scan'208";a="56950985"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2025 05:41:37 -0700
X-CSE-ConnectionGUID: UlG2mK33R0yQxqJTpJNdIA==
X-CSE-MsgGUID: bsZ8WtRLQ1ORQAqNjN6xgA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,228,1739865600"; d="scan'208";a="136854363"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2025 05:41:38 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Mon, 21 Apr 2025 05:41:37 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Mon, 21 Apr 2025 05:41:37 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.173)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 21 Apr 2025 05:41:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=EduUT/xYwl75D8ATyQTUzek+I64Dwo7bfWRxJmJmFvwFCuxOFWQYGCdnHqsL7CJkoBWGJCpJrRL7o8NxM8bsVnKXxb68CHF6HEa3g6SkKWczLcserWE6YgqaRgh4XmT74hTbRnw7uypX4wL+aL5o/sPviTIPVJOymU6p5Fd58MApIcTb8+j477HcxlZWBHysNhnqN2kwiGnHgCzVHG9H8iIOprGdMDhDyeXVJNbokoboaJ6OgclsNh4l5/3dFZo//BVjmYy2p/eFxd2d4jvt/VcrARETXXVYQ+AmKsgSRySfLw7oBgUL6VQPrvqQiBVgK5RIG6G/3XUWOHRYGw3Rjg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xk7j4tlq/9VPd8rsrAMDJBpt/WvcbpdAvTE3GlfrRJM=;
 b=HjNwYti3JjLS+lpfyOfBwSMDFgWBn7RYgPOyUI9mMyRSo4z6IOj14eXBo2L97TH/H81AhNV46qwpVyfJt7srT71rwEpqRG/E6W0r9885Fg/1fGNWvz5aSw+mw/6WXsZOcwJzdrdvou+QdWNdxPh586z/7ckjpl5TVhNhqybJHKaPvOIuQeYk7pP95k+agfGvFAkWjIGsLi1AV41Krjdm5OMCgPOaqedJSgTnvZSrxZ0irWZQI1B/y9FobciajOnkk+exO3DNpOFjE2kEmDTm+AG1P8MYY68RuvV8LVRorabaLu8s+SrHmRkxz0ZaADngltFbXw9Q+lfxQtUsLXWEgQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by SA2PR11MB4988.namprd11.prod.outlook.com (2603:10b6:806:f8::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8655.33; Mon, 21 Apr
 2025 12:40:53 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0%5]) with mapi id 15.20.8655.033; Mon, 21 Apr 2025
 12:40:51 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>, "Shankar, 
 Uma" <uma.shankar@intel.com>
Subject: RE: [PATCH 01/11] drm/i915/dsb: Extract intel_dsb_ins_align()
Thread-Topic: [PATCH 01/11] drm/i915/dsb: Extract intel_dsb_ins_align()
Thread-Index: AQHbqHeYSkiZYaNbKUGs4SAW4ay1ALOuJBqA
Date: Mon, 21 Apr 2025 12:40:51 +0000
Message-ID: <PH7PR11MB5981357E1CF6913DC5F330DFF9B82@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20250408110022.1907802-1-chaitanya.kumar.borah@intel.com>
 <20250408110022.1907802-2-chaitanya.kumar.borah@intel.com>
In-Reply-To: <20250408110022.1907802-2-chaitanya.kumar.borah@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|SA2PR11MB4988:EE_
x-ms-office365-filtering-correlation-id: c3a58668-2c4a-4869-0fe6-08dd80d1c04f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?utf-8?B?YWVzWXljbGEvZ01FVUE3L2pGQWJDQmQ4VTBDSTE2RjFSVzlzUlN6MTdGMExI?=
 =?utf-8?B?eUpncmc2VGlYdkxGYjAwSk5UMjZRTUNBM2JkcEQ5QTFYY09HQWZvUmdOM2Rx?=
 =?utf-8?B?OHVMVDY4RXVac2RjdkNlM1JicHlKNGZJakpucjRITWN5UENpUmtJWVhnczYz?=
 =?utf-8?B?WDU4cXhRZjRndUF1alFnU3A4SnZaQjVKNVVoTHdNSTM0R3MyaHlXUisyZHFo?=
 =?utf-8?B?cVRxdEdIbXVaSnE1bmdwY2RNN1RkTEdpbmRWVFE4OEhuSFl1UVAvWHliS0E0?=
 =?utf-8?B?MTg3NHcwOWNYcnNVQ1BDMUVadEQxenU4eWtMT1VkS21iN2drcGFkYnNRVXF0?=
 =?utf-8?B?ajg3TGxSWFVNQVc0VVZTKzlid1BLdmJOVEF0NTBwUE53S3RKUjlpQ2kxRGhX?=
 =?utf-8?B?OWZnL3dDUUZoUVR6MHIyaU5XUUZzaGE0VG5JR1FrNzJHbFgyWkdhZ2lqWDdH?=
 =?utf-8?B?YmlheW12cFlxSGRYZi8zTm5oOEZqbXlMUWZVQkE3VWYxa2FRWjhob0QvMUl6?=
 =?utf-8?B?SDIrRWs1Q1RQZURhZXFlb3ZhcExyL2hHdVBrMXE1cHNsdHpwZjNVMldTK1d0?=
 =?utf-8?B?dGE1UmdoeTBpNEQ1V3F3NHpoOHgvaHFuS00rM2xoLyt1Q1dLNEdESVJxeHRw?=
 =?utf-8?B?cUp6Z09icG5lbHJQemtJRmkybmdzL3FncXo2OTZ2OFpRRUJkMjJHRHIzaG1l?=
 =?utf-8?B?eDlrNEtReEJaUExJZHhlckpkcENIWkdxQVNEamMzd1cvdndSM2JNVHEvM0pp?=
 =?utf-8?B?NlpxT0M4VXlGOXJobzdmd0swblN4VGlGNkNId1VsVUoveEZscXQweG9iL0ZY?=
 =?utf-8?B?S3JjMG9xaFpsYVlpaTF1aGtnaWtHc2Y5d2FLa1FLK0RtbXliZDhnNnBjMFdi?=
 =?utf-8?B?TEEwd2c4VUFCQi9Ga1VlVDJ0dnMrUVFHa0ZQZW8rYmlQY3lUYjJOeERmTGRv?=
 =?utf-8?B?Qzl0cUdMZmhOY2VKS2tNR09aaWpIYmZkajh3eXMvUEVnTEpzTnlZWHAzcFNH?=
 =?utf-8?B?V1JyYVFDYUU5TDhyNk5pbFpaZHpmSEZZSmg5RUZUNVZMU00wTGE0QWtMT0po?=
 =?utf-8?B?bmFSRWtzMVRQTzNROVNKcDBINXA4SWFIREY3ZTRUUktOVmlkSWJsZTN5TW82?=
 =?utf-8?B?Y0pjTTBlVmxCWFJjamJsOXpjZ2kzNHdTSlRCeHkrR2FVTWo3QkRWS2hYd1JX?=
 =?utf-8?B?YkZwWjB0N3ZEcFNwUjBTREswNVhBNFFycmp1T3I1NEdqYStTalQvUFpzdWFZ?=
 =?utf-8?B?TmtJSElLeHhjZGRvaGNlUFFtd29pSElvdlI3S2gybFZoR3lWVjUraGs4TFZG?=
 =?utf-8?B?SXpEVWNoMXVuRVpQUDNiOVNVTXVPTUlWMk43NGl1RnZka3ZucjkxdC9ZbTUr?=
 =?utf-8?B?aFhMUEhFUlNUVGlrTit5QUY4RGJyQm9vaFlXRTI4M1lqUkdaM0x0VkgyT2hC?=
 =?utf-8?B?dDFsNElsd2hvMkg4RGNGWm0wSnd4QkI1L21BT3ZNRWtOY3pvMEFKV1JmYXoy?=
 =?utf-8?B?WEU3ZDFBSW5DNzN3azdDbWlIbTVnc1NOcW5adlp4bHZuMlBoSlpTUzJaanZU?=
 =?utf-8?B?bjdTdThvaWtZS2xrTkVNVWxwQjBrN1VMTncrai9MY3g4T2pXR3FJQzd5aDYz?=
 =?utf-8?B?elBmMGsra0VzMkI0SkRNRmR1WTFSU1N4dVkwOTFuSU92VW8zbklTQWt5WnY5?=
 =?utf-8?B?aXdiSnB3VE53N3BuVmJGV2VkeUZ3RytOK21zTUk2L1FyTkpJc2xtTzRvSUMw?=
 =?utf-8?B?WHNtWVhGQjl4Tytna1BpWkxtb2ZkTitHWjJQRGhnRVNlaXhBWlVTVXMrVlg5?=
 =?utf-8?B?MlFFZDZZVGZZajdTalB6V1FPL2p2UCtIdHZUYXdTS1JIeTJDSVY3cVB6N0tz?=
 =?utf-8?B?K3NBV1lOMjE5L01Gd0FLYzRzZ2paZXV2bCt1NWwzUlJxMDZpM1NEUUZ2alFJ?=
 =?utf-8?B?Q251c2FRSXl1ejV1MExFTW80WTdiQ21CQ0hOd1VLVStTQllJdi80bzZISzdB?=
 =?utf-8?Q?WoQcxd9LdzdhVZ3biZGYqw/ZadOl2E=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?S1VwR21UUDg5UEx5SytYTlZMRG9FakYrZ3kzTnorcmI5dFJWUlZnajN1cTg1?=
 =?utf-8?B?VjdQd2p2YVE4dEtjSVViZU1QdjJwNExIRjFzd01YRnhqelkyUFdPWk81TXRn?=
 =?utf-8?B?ZHJsUm0zcVV2aW5ObzJEcmdRdjFiV3dhQzFrU1ZxSU8vZ1NTMncvN3ZYMS9h?=
 =?utf-8?B?NzZ2M0JzOS81UVNJUXR4TnROTmF4WHB3SThkVnJCSlBCWVpabDJueElWMEVu?=
 =?utf-8?B?WDdKMXRlVG8vWStDWktuNE1EMlZjeHZQSFcwTTdXeGNtMW54dmRIMGNCdmRY?=
 =?utf-8?B?OVMrTVR6SDVDM1JMSXlKelptdm5RU1k0NHByT0w2NVVGSHpZQVdHSklDZWVt?=
 =?utf-8?B?Mndpd0ZXd0x3NUJBeUpGcUxrMDBJTGxwcS9kc3JmTTNwWkRmMnQ2YzBURFA5?=
 =?utf-8?B?R2ZBd2sxMEFJQ3F6YkhoQ1pzQ3RidnpURGNsQmQrRi9BRDR5UlZHeUJHTjla?=
 =?utf-8?B?Qm5YYWpxSXpkS3RRT0ZlM1F6ZW1LU1lqRjRqTWhYUUVpQVpqcDVPUjdmdFJH?=
 =?utf-8?B?VGlCUjdJQklnOWhEZGFYY01TTy9ZL0tkdGxCbEdYRkczV3ZqY3ZENGc5cTlF?=
 =?utf-8?B?bGhZR1V5QmZiR0NMRTdpRldKakZhYWtZU2wwbXVhbUZsQ1FrTDNxUjFiU3pM?=
 =?utf-8?B?UmxEa0pEdmtrT2FSbWRleGxGTlRncXJJdC9tSWRjNGFqNUQ2UzBFVytrUXRL?=
 =?utf-8?B?ZElXK1Bjc2tuSXlFY21zWThQM25VVWdvVTRWeFZpL2pPTi9mbFg5QUxxS2NH?=
 =?utf-8?B?OGhrVkRid3V0WVB4VitCZXNHR0Q5U05UQzFLVGJRUWFacjMrcmZybHFnRUlj?=
 =?utf-8?B?S3hJamRTMWU2ZzZ0ZExIQ3RMaDZNQ01TeEZ3Z3FQRy81bUlZdTdsQ2hab1Rp?=
 =?utf-8?B?b0pIWUk2SVJjLzhlZ1RHZmtBdnVJazRIZms1eXNMLzk4c1RvSWlpVlVuZkpi?=
 =?utf-8?B?ZXlJTGQ3WU8wUk9VWGZWeFZoekMzM2JZNkZSUWZtRGl6YmloRERXZnpZS29F?=
 =?utf-8?B?eXc3RlBiT2xYWUNOd3JXY2JNcU56Z0NUQy9paHhrdlZEMXVtNTdFMkcxaXdJ?=
 =?utf-8?B?K093OEpSRzJmV0NkdFVaTmUrRmxyNEU2UVYyck5HcXRnbjRZWHBuWnVJbFlK?=
 =?utf-8?B?OFJKa1FJV0FuU3VWUGNwMk9hNHh5SzRTanNrdUhiWmZuS3A0UlZ3OEVYc2xH?=
 =?utf-8?B?S0p4M0pGYURPeWkrUm9kQ0JyQ0tTZHhZR2NjNitDRmViRTAvbWdsY2hwVGVj?=
 =?utf-8?B?amdQb3ZhMlM5NTh3N3BEWDMrMmdKMmpUemsxQTRhR0xFbGFiREVFR1BDc2J6?=
 =?utf-8?B?cFhNSEhMZzBuS1FadTRVZ0lHRnVvdTVtWXRDTFNxLzl2NW9ZNkFUb3hsZUNX?=
 =?utf-8?B?Z0hMdy84cVk3WCtMM2tsQ2dBMjJrQjF3MGlDOFJrU1p0aDJRblBuVExYME40?=
 =?utf-8?B?TGpzb3RRLzh1ekxFNGJCZ2dBbVc2VnliU0s2QkFPR1hVVkZxM25pV3FHcENl?=
 =?utf-8?B?QWRZeFp4SUw1V2FYZW1lNzVsaHVHaTdVbHdTOVFiUDYwdmFweXVkRXl2Sk5Q?=
 =?utf-8?B?TWRuY0VXS0JGVnpmL1grK3Y0RU50MGZOdXQvd2NRQUxERHBVS0VZMktlaWNN?=
 =?utf-8?B?ci8zZUpvVkJZM3UwdTYrc25PYi9qbFd5NzhEa2xQUDk5d3IxcTlWekdGSkRv?=
 =?utf-8?B?VU5lM0ZtQm9wZHJoZFg0TFJUNlV4T0hVTVFMT3pMRzhwV2M0cTk0Uk5VL1Jk?=
 =?utf-8?B?b3I3MDNxUzNITlZXYmxnRW5hZUpoK2RobmxUQnpMVHllVEVRQWhkcmRVYVdw?=
 =?utf-8?B?SnJYVnlzcnA1dkZ5RDNlcSs4ODlTVlhGUUhwYmFFejJjb1kwd25mOGxVdnY4?=
 =?utf-8?B?eHhIMzBXUXpESjYzaGNISE14QURTNEtWckh2R1NUVndUanF2cno0K0RoYmZE?=
 =?utf-8?B?TDJ1SWd4TEprUlN1YmJ6alNhNGFaVnh5dXFCTHYxeVd3dnc2c2R1LzVQdXB0?=
 =?utf-8?B?cWRKZDJuMkJFcloyNzk1L204RC9WUDdjMHRFMDhRZmxZVDQwSVpMS2cvVTJ6?=
 =?utf-8?B?Q0E3R0hsd0xKeUdoTElHWGdlYW5uaU1ib0x5cTJsaW85TUVnSTNrZDloK0d1?=
 =?utf-8?Q?N4Yhw3ugnJFGtkh4Dnmg7eBpu?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c3a58668-2c4a-4869-0fe6-08dd80d1c04f
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Apr 2025 12:40:51.9009 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: eWWVJPI3xdJfdfd5EcE4U8oj1J1btFIyIsTKT6AFWBV4lrNT2vRJWMQI7HDb4NqcA8BwwTE1AuMJGJpBeuQCXA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4988
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogQm9yYWgsIENoYWl0YW55
YSBLdW1hciA8Y2hhaXRhbnlhLmt1bWFyLmJvcmFoQGludGVsLmNvbT4NCj4gU2VudDogVHVlc2Rh
eSwgQXByaWwgOCwgMjAyNSA0OjMwIFBNDQo+IFRvOiBpbnRlbC14ZUBsaXN0cy5mcmVlZGVza3Rv
cC5vcmc7IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gQ2M6IHZpbGxlLnN5cmph
bGFAbGludXguaW50ZWwuY29tOyBTaGFua2FyLCBVbWEgPHVtYS5zaGFua2FyQGludGVsLmNvbT47
DQo+IEJvcmFoLCBDaGFpdGFueWEgS3VtYXIgPGNoYWl0YW55YS5rdW1hci5ib3JhaEBpbnRlbC5j
b20+OyBNYW5uYSwNCj4gQW5pbWVzaCA8YW5pbWVzaC5tYW5uYUBpbnRlbC5jb20+DQo+IFN1Ympl
Y3Q6IFtQQVRDSCAwMS8xMV0gZHJtL2k5MTUvZHNiOiBFeHRyYWN0IGludGVsX2RzYl9pbnNfYWxp
Z24oKQ0KPiANCj4gRnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4Lmlu
dGVsLmNvbT4NCj4gDQo+IEV4dHJhY3QgdGhlIGNvZGUgdGhhdCBhbGluZ3MgdGhlIG5leHQgaW5z
dHJ1Y3Rpb24gdG8gdGhlIG5leHQgUVcgYm91bmRhcnkNCj4gaW50byBhIHNtYWxsIGhlbHBlci4g
SSdsbCBoYXZlIHNvbWUgbW9yZSB1c2VzIGZvciB0aGlzIGxhdGVyLg0KPiANCj4gQWxzbyBleHBs
YWluIHdoeSB3ZSBkb24ndCBoYXZlIHRvIHplcm8gb3V0IHRoZSBleHRyYSBEVy4NCj4gDQo+IFNp
Z25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5j
b20+DQoNClJldmlld2VkLWJ5OiBBbmltZXNoIE1hbm5hIDxhbmltZXNoLm1hbm5hQGludGVsLmNv
bT4NCg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmMg
fCAxNiArKysrKysrKysrKysrKy0tDQo+ICAxIGZpbGUgY2hhbmdlZCwgMTQgaW5zZXJ0aW9ucygr
KSwgMiBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2RzYi5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kc2IuYw0KPiBpbmRleCAwZGRjZGVkZjU0NTMuLmMxNjZlMDJiOGFmMCAxMDA2NDQNCj4g
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2IuYw0KPiArKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzYi5jDQo+IEBAIC0yMjgsMTMgKzIy
OCwyNSBAQCBzdGF0aWMgYm9vbCBpc19kc2JfYnVzeShzdHJ1Y3QgaW50ZWxfZGlzcGxheQ0KPiAq
ZGlzcGxheSwgZW51bSBwaXBlIHBpcGUsDQo+ICAJcmV0dXJuIGludGVsX2RlX3JlYWRfZncoZGlz
cGxheSwgRFNCX0NUUkwocGlwZSwgZHNiX2lkKSkgJg0KPiBEU0JfU1RBVFVTX0JVU1k7ICB9DQo+
IA0KPiArc3RhdGljIHZvaWQgaW50ZWxfZHNiX2luc19hbGlnbihzdHJ1Y3QgaW50ZWxfZHNiICpk
c2IpIHsNCj4gKwkvKg0KPiArCSAqIEV2ZXJ5IGluc3RydWN0aW9uIHNob3VsZCBiZSA4IGJ5dGUg
YWxpZ25lZC4NCj4gKwkgKg0KPiArCSAqIFRoZSBvbmx5IHdheSB0byBnZXQgdW5hbGlnbmVkIGZy
ZWVfcG9zIGlzIHZpYQ0KPiArCSAqIGludGVsX2RzYl9yZWdfd3JpdGVfaW5kZXhlZCgpIHdoaWNo
IGFscmVhZHkNCj4gKwkgKiBtYWtlcyBzdXJlIHRoZSBuZXh0IGR3b3JkIGlzIHplcm9lZCwgc28g
bm8gbmVlZA0KPiArCSAqIHRvIGNsZWFyIGl0IGhlcmUuDQo+ICsJICovDQo+ICsJZHNiLT5mcmVl
X3BvcyA9IEFMSUdOKGRzYi0+ZnJlZV9wb3MsIDIpOyB9DQo+ICsNCj4gIHN0YXRpYyB2b2lkIGlu
dGVsX2RzYl9lbWl0KHN0cnVjdCBpbnRlbF9kc2IgKmRzYiwgdTMyIGxkdywgdTMyIHVkdykgIHsN
Cj4gIAlpZiAoIWFzc2VydF9kc2JfaGFzX3Jvb20oZHNiKSkNCj4gIAkJcmV0dXJuOw0KPiANCj4g
LQkvKiBFdmVyeSBpbnN0cnVjdGlvbiBzaG91bGQgYmUgOCBieXRlIGFsaWduZWQuICovDQo+IC0J
ZHNiLT5mcmVlX3BvcyA9IEFMSUdOKGRzYi0+ZnJlZV9wb3MsIDIpOw0KPiArCWludGVsX2RzYl9p
bnNfYWxpZ24oZHNiKTsNCj4gDQo+ICAJZHNiLT5pbnNfc3RhcnRfb2Zmc2V0ID0gZHNiLT5mcmVl
X3BvczsNCj4gIAlkc2ItPmluc1swXSA9IGxkdzsNCj4gLS0NCj4gMi4yNS4xDQoNCg==
