Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ACF2E925E8D
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Jul 2024 13:37:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 54F4C10E7B4;
	Wed,  3 Jul 2024 11:37:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="k1Yo1g0A";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C13FF10E7B4
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Jul 2024 11:37:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720006657; x=1751542657;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=QGHSCMerP+Z8VYwtjmR/FRkCrztvax1NftC6/EAF1VE=;
 b=k1Yo1g0AkR6A+sG+nz4Tb++UY69yNryobYvtacyiEu7R3Ds7hlxbYXjm
 LencM8/ax1x+MqJyjQl37NWUl/Q71TPbp45D39gxequ6mP7LTwgIxhs2e
 IBXvUPknwLciYAsod/V+Q4K1+vd7VxuuJC6GYzD6VX3NVfJo4583kN/0G
 +CamXTtu2MjGzNX70Sp6J4oVURHaT+I7h3kosuIR0UcfUosyAMiOdoEqe
 0mLwQ2KQXk+bSfkIb1Gq8+JQ1QbrOwmS/hqxhMuZVlzCFyBUemf7kvOCf
 QbYFKuO47snujMF/EpHgRPYslWzxZf+F6cuPEhX7Lk93mowRCR4w5ZoJk A==;
X-CSE-ConnectionGUID: fqcoEdrIR/Gx1vn4q/g73w==
X-CSE-MsgGUID: 1RU6nITeTYadXs3swA0hiQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11121"; a="16951824"
X-IronPort-AV: E=Sophos;i="6.09,182,1716274800"; d="scan'208";a="16951824"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jul 2024 04:37:36 -0700
X-CSE-ConnectionGUID: y2w6QIYGTfyJ/3IfJvmNUg==
X-CSE-MsgGUID: YCcOcSKcTf+xJTd1y9VCyg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,182,1716274800"; d="scan'208";a="46367690"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Jul 2024 04:37:36 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 3 Jul 2024 04:37:35 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 3 Jul 2024 04:37:35 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.41) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 3 Jul 2024 04:37:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PoIWGVBB7HCRl3E4Qf73uz3Z6YlUOwsJtVpDtitZEmUJl9LwNb7uzF3mNXsAw4jsVwwMuRSRfCTTsnLcmug8+ncVkScnuZ73lX3sTfY7SPD/Rxt723SkSD3XDL5u7DiD59mXnind56rxBYCtSWcZJ239/xVL5TnLxdkhOMkcUsJ0hPe+sd2D1MscyWVO6tz7HwDvETyAFYljjvE5s73EC8qg7e6NSi1xxrybisIYFt8S8dqUMOE4xtuiImkQlT8fmTUayEOuMtLCGMk1p8NqHrSoSzQWO54Tcl2rgncRrbOzJGpmyD8vG7SbuPfiLFf7caC6Jblumqb31EOqPoo7Zw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QGHSCMerP+Z8VYwtjmR/FRkCrztvax1NftC6/EAF1VE=;
 b=Vi/hUYRpolV12F+YyLeetYM40uR4NdA3xLBkgw2C8LWQZ+wEcIr49iQWuUJNuWROSM2EAoH9YIFsl6FpxHY9iBszJeZBuoFRpRrE9SRWEc8lJn+gl0mGJ+WDQp1DxsmNWwY2pRlEWm2H91Tep1yt3sTJBEPlliHNTGHma1oeKEirwOcmzQ2vFCDfIxXMBk7LUMh6PyLzxTPsnD2f6wStCi2+0A2sqmgf3QTOMp3UmdaOrlgpl9YzrVCn6PQ6XqY2TLdqxTHPmzgQlm2Dh36UT+ssjsU6DgnhDdne+TnG9LOrcRRQdBKVpyJ7XGxgfed8Sn8shCduFmq4yXpXMql9Cg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by DM4PR11MB6503.namprd11.prod.outlook.com (2603:10b6:8:8c::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7741.25; Wed, 3 Jul 2024 11:37:33 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0%4]) with mapi id 15.20.7741.017; Wed, 3 Jul 2024
 11:37:33 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH 09/14] drm/i915/dsb: Introduce
 intel_dsb_wait_scanline_{in, out}()
Thread-Topic: [PATCH 09/14] drm/i915/dsb: Introduce
 intel_dsb_wait_scanline_{in, out}()
Thread-Index: AQHaxmpYlblwBeO4rUO/iwIzmWJehrHk6mRw
Date: Wed, 3 Jul 2024 11:37:33 +0000
Message-ID: <PH7PR11MB59813B125C1B84675C19F4B7F9DD2@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20240624191032.27333-1-ville.syrjala@linux.intel.com>
 <20240624191032.27333-10-ville.syrjala@linux.intel.com>
In-Reply-To: <20240624191032.27333-10-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|DM4PR11MB6503:EE_
x-ms-office365-filtering-correlation-id: 9e3b0037-4f31-4543-a880-08dc9b548788
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?WXVibi9CM01NR3FIZ2QzR2JHUWh2WkV1YVZWN0FuTEt2VjVWRVVpQ2lJZ3V4?=
 =?utf-8?B?VmNjeW4wZlYxZ1A0U3YvWWgwUXJtRHNTOTQzUlRnR1FVd3dnajhVVURKamVU?=
 =?utf-8?B?c21McThoVzFNR0JDR05iNk9hY3c1Mi8vQ2p5ekNyNmhzTDVuSENGTWVFb3NX?=
 =?utf-8?B?bEhTbldMeFJYaWxJQlBld011YkNyZzRWM0toZDhoYkZwWVROeUtBdm5xb3Vy?=
 =?utf-8?B?WXE0Y05CQ2p2aTc1ckNTUlVBZEsxazgrSkxVWDl4VWQ2Z2RENFNkRExGOHhx?=
 =?utf-8?B?NDhiNUFQWlVGL2s1eElwZU9LN2xrVWlnNnlDL2tHaGNubUtFTUZqa3RVR1A5?=
 =?utf-8?B?TDM3QWtjWFVSdFUrT2FBa253NUMvV2lJdzdLK2s4d1lGcjZmaHlpY09WWlk4?=
 =?utf-8?B?VzlRT0crYTE1K2dTZk9iMWE2QlkvRVYxNnZUU1FBZzFGSjUvUTNqVFc1UG4z?=
 =?utf-8?B?Wk96emlZRS9jWDk0ek1NRHN5UXNaSFp6Y0FFZjZUU2VuTnRDRk9ONytocys0?=
 =?utf-8?B?SHpMZ1ZqTVpYUHlwOWI5dTRTL0tZRENHd1k5dTZ2V2kvYXRTcU4wVDFWb3lk?=
 =?utf-8?B?aVBYejNDYlhIOWV2VFkrdlFLWm10Rjljd1VxNEExVkJKWDkxMDFHZmEwL0pa?=
 =?utf-8?B?UXdkZkEwNmlnRFU2WlVrejBDMlh0NHdycVBoZDk1MmRzNlNJQnhRVG1NbW8w?=
 =?utf-8?B?N3NrMHVaQjV1dEZleUJKRi9GQkh6NG9YeWFYU3MzdkN6dzRsb1pTT2M3WWMw?=
 =?utf-8?B?SDFNQWcveldPSXN3QlIxZzYwS0xyWTN0NjFIL0ROdm94WjVtOTJuVEgyb2hu?=
 =?utf-8?B?VDI5QVo3UTQ0bHFiVk4zZVhmUHhQSlpRc0ZxcWxlMm1Pd1N5aVE4RmxEeWFY?=
 =?utf-8?B?STN4d0pkYWo4TTVqRkZUWEdiM1FkbUZuSGtrUm9ERm9TVmtTNnJFY3lkeVI3?=
 =?utf-8?B?dnY2RXBWdC8xZ21SQzBmZzU2NVRBNGplMUhOckJQWjhYTDFtcmZaR0pray9U?=
 =?utf-8?B?SmRaTHRJdFRRM1BrT2FWNGZYZjVFVXoxQWFyMjh2ajdaT0t0cklBSGFwQWYz?=
 =?utf-8?B?c1pmQ05YV3VWc2VSSklWOURiOUF6OWxYZWd3YVpkb3E0Y3A4NXNGTithTkM5?=
 =?utf-8?B?eEo1Uktyc2FhbW1VTjMxYW9qWVc0cmtHRE9jNXBNczJYcXlKc0NmLzdJbnow?=
 =?utf-8?B?bmR1U3BqMWFHT1drM0ZFOU9Pa2IyLzNTbzNIcmpkK1R0Z3h2cEVwQ0EwU1ph?=
 =?utf-8?B?cTljb2pwYVVWa2R0TXR4SGcrcTJ1TlRqcUZJVk05QTlZN1Bkam51Uk0rVFND?=
 =?utf-8?B?cE8rMkIza3NIcy8vZlUzT1ExejhJTDE2TUhrUE1ML0paWncrL1UrMWdwYmpl?=
 =?utf-8?B?SjJHRWRBMDZPUnROSlozOU00ZldXNjh4VmJ3bm51NlpENC9EaHZGR2NPUEtB?=
 =?utf-8?B?cDFqY1JSVGk1bzZxYzB4NW1JUjlwWHhpTFBTT3NYNm1ubzZ6TkIwMkUweFIx?=
 =?utf-8?B?c2J5VW52ZGZ3aE5mM2FGU3FTS0J6ZkprWGF4cUxSNHVZNEFMYlNMY1pPS25s?=
 =?utf-8?B?UEVNT0ppZ2kxVHE0amxBd1prQjA1TVNSQmh2Y0tiTUl5S1Qrb29ZMUE4d2xi?=
 =?utf-8?B?d01HNHV0eHNBUnkrRnNuQkNpREp4MmIwZExtaGc2Y1AvK3VpUFlLaUgrMTlP?=
 =?utf-8?B?OUR0WmdxZVczUHlNcTZnWllRM0RFVkZJWkVheDlGL1p2U2M2L1BOSFYzQTVL?=
 =?utf-8?B?SXg1aGlHRTdGN210M0Jwc3lzdjZ1enEwNEtUSEZNQ3ZOQzJPK2VRMDdSU05u?=
 =?utf-8?B?d1NjTXVXbWZ1WWF1NklSVkR2M3lsQTVNNFBZNW85YnUydklEQTl2Qm1EejJx?=
 =?utf-8?B?MUVhY0VZcEdBYVBjSDcyVGxhUTZRVVdnOCs5UlI0akZlSGc9PQ==?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dUQ1MUZLT1ZvWDhkRUF6WlMrTUJZV0ZrWE05Q3pDa1N2cG9Ba2RzVCtQdS90?=
 =?utf-8?B?anI0aC9FckJSQjl1dnl5c1pBcU5SZ1pzSkdZM3Via3hSQjBGWTB0d1dSMmJS?=
 =?utf-8?B?QXE4Q3NwMnlpdU4vWmswbUdkZmJxVWpkVDhoWC9ITW9tajBiclpwUjlRUmtH?=
 =?utf-8?B?S1czY1AwbEs1NHdxMjFkMnhERWtjQTJGMFNISzZQZTFGSm9PdXdneUI5azdP?=
 =?utf-8?B?di9UeWVmamdWWituYmF4dTRXTFZ3YjJOajVwcytpWjdKbERtb0lnUUFpbFVB?=
 =?utf-8?B?Ri9naGVNeEIzT3pPK2JWNDF6bnFFLzhMSm1WMGdwM0M4OFY4UkJocWhYb3BR?=
 =?utf-8?B?NjM4b1ArWS9JcGhJNjBrdlFJcFQ2aVNMbWdvYVlrTE5UelJCdGh6ZElOc0NG?=
 =?utf-8?B?Ykgycmg5eGpNakpLTWJyQVlCTWVvSlR1bVYrQVljNHhsdnRVVTkzQzI5V0I1?=
 =?utf-8?B?aUJWZCtkT1FIZkQxYms3N3kwcnVDRzZyUnZCMUg3b2dEc0tHOFNYWVlQbWln?=
 =?utf-8?B?NDlXbVpINUJoSzl2OEJFaldqL0EyQVRUSFBXWXo4MGFTejFSUWlHckg3enBu?=
 =?utf-8?B?V3VITWZiR1ZzcXd2ZnRzaTNKQ0pNUnpIMFZpR0xKQkZQSmMwY0VEU3NFRVNQ?=
 =?utf-8?B?TmtGUDVCektmdGVFUHYxSFFjejZrUWdKZXl6VGNKVGUzT29DSlRiODZIYmxF?=
 =?utf-8?B?Z0taODIrdi9XMHVqb1ZkYlROVjBYUjg2bjVKeWNubGpFdE5RNDZwRUYyTnpY?=
 =?utf-8?B?dmREWjNZeDFkZ0IrL0s5WlpYREVDcUwrdXY4czg1WXJJanh6OUhSc2cwM0M4?=
 =?utf-8?B?dVhCTzg0d25lZkxJdXF5ajBEK0dGRUcvaEwxTUh6V0FkZGJrTmRLVGlZQmFR?=
 =?utf-8?B?ckNUQThQVmtvWDdrbmdqdmd3dGRqTjJFZnloZ0I1MU5EN04waE5kRjdlTGZa?=
 =?utf-8?B?MUJCRlYwME80NUMwcDlxK0g3R2plcWVFUG9IeXdRVW1tODlnSjFhQ216azNH?=
 =?utf-8?B?MC9pT2hMck84OVFhZWJodGZFcWlPQUVvWCt2NVRHZFdvUHRmVHltZFNSemty?=
 =?utf-8?B?L2toVWRBZVNNZjA5M3hVTTRWY0FYQTBVQVZiVmc2Y3pJcVlWeTZILzVFMEV5?=
 =?utf-8?B?ODZ4SGJFUnVwQ29hSUJUTTJvUWZPc2luNkUwWTEvUUxOZlY2Qm1DUk4rZjVF?=
 =?utf-8?B?V2orU2ZDT0RsUk5FYUZPd3lBNElsUkpRbFVNSDJkS0poTWpRWkRoTTd5V1Fp?=
 =?utf-8?B?KzFKV3EwdUFSd2thcWVMZ2hoUlBoZkhhcjJKd0JxYUlpMmJuUndTVHVCTXFk?=
 =?utf-8?B?K3NBRXppZ2pTamlMTlBYWS9EU0Frc3JnT1FCaERhek1NdU1mNDdmTVh4QS90?=
 =?utf-8?B?SFNJdXZyYkZsVUVzdmhzWFNBTFAzSkdPM0hORmUyRW1RcEd5cmlYMnRibzVH?=
 =?utf-8?B?Vk9BVHFqQUl2WW5pWkk1aTZpY1pPSFpBdHdPeWhZN2p4L080bUJSUEt1YXdI?=
 =?utf-8?B?ZXdGdkNSWncxcTFNOHFhU01TcDkrVFJaZExhUm9vNk1pTUZNdm9PbzRmUi8v?=
 =?utf-8?B?ZVIvcERYZFdQOXpuNlZJYkd0d3RDQlFVOTJyOGtGbExmcTRZcmduNEN1MEJZ?=
 =?utf-8?B?ajkwcXltU2NwdUJWczBBOUUwQXN3NWtxZzM1a0hta09vdnJGN1N6YTl0N1NU?=
 =?utf-8?B?WTA3WTVRcldhbCtVSkNhT0kxTzRXcDFsaTkzTWJUT2hMRDVCaENHZzVqdHc2?=
 =?utf-8?B?SU5ibHhnOVYrdzlNaVA4SDJpZVZOTHJUdWFROE52R1dyOWVnYS9KN09Dejlr?=
 =?utf-8?B?TC9mL0JnRGdZQ2s0SWlpVTAzeWxSZ3lNbWtieVFpWHFyaE9IakJ3dDhZSmpK?=
 =?utf-8?B?WkZmOVgyK2RYZExROXpNN1Z4cWdabTRZdEZrYUFUVHdLaG41WCs1SG9IVXd4?=
 =?utf-8?B?NGwxSnROa1lic1dSY0dUMUFKRFpBOUVnMVRFYjErTFRvMm1lU1VMUGxhT0Jj?=
 =?utf-8?B?VWVPYlJLMUY4aXRLOVJRcnVFRVR5ZFludUkvUzNIT2VkQXB2U2dkNlVpQnZh?=
 =?utf-8?B?Y3owQ1YxcEQ3dFdhV0FWZm04RDl3cGhwMFlFSnlndWtKNEJKZVhWM0g2TlI4?=
 =?utf-8?Q?zQW3XQbOjymCUe68dggr3oz4T?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9e3b0037-4f31-4543-a880-08dc9b548788
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Jul 2024 11:37:33.3026 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: DcXE1CCQ3wWfVlJaB0IhPjSsViT9nxUiIViR+AVa7+tbmXve0iRgRKAjiHL44ivjN2bG8E+WA+v17EbmE3ZIzQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6503
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtZ2Z4IDxpbnRl
bC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBWaWxsZQ0K
PiBTeXJqYWxhDQo+IFNlbnQ6IFR1ZXNkYXksIEp1bmUgMjUsIDIwMjQgMTI6NDAgQU0NCj4gVG86
IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gU3ViamVjdDogW1BBVENIIDA5LzE0
XSBkcm0vaTkxNS9kc2I6IEludHJvZHVjZQ0KPiBpbnRlbF9kc2Jfd2FpdF9zY2FubGluZV97aW4s
IG91dH0oKQ0KPiANCj4gRnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4
LmludGVsLmNvbT4NCj4gDQo+IEFkZCBmdW5jdGlvbnMgdG8gZW1pdCBhIERTQiBzY2FubGluZSB3
aW5kb3cgd2FpdCBpbnN0cnVjdGlvbnMuDQo+IFdlIGNhbiBlaXRoZXIgd2FpdCBmb3IgdGhlIHNj
YW5saW5lIHRvIGJlIElOIHRoZSB3aW5kb3cgb3IgT1VUIG9mIHRoZQ0KPiB3aW5kb3cuDQo+IA0K
PiBUaGUgaGFyZHdhcmUgZG9lc24ndCBoYW5kbGUgd3JhcGFyb3VuZCBzbyB3ZSBtdXN0IG1hbnVh
bGx5IGRlYWwgd2l0aCBpdA0KPiBieSBzd2FwcGluZyB0aGUgSU4gcmFuZ2UgdG8gdGhlIGludmVy
c2UgT1VUIHJhbmdlLCBvciB2aWNlIHZlcnNhLg0KPiANCj4gQWxzbyBhZGQgYSBiaXQgb2YgcGFy
YW5vaWEgdG8gY2F0Y2ggdGhlIGVkZ2UgY2FzZSBvZiB3YWl0aW5nIGZvciB0aGUgZW50aXJlDQo+
IGZyYW1lLiBUaGF0IGRvZXNuJ3QgbWFrZSBzZW5zZSBzaW5jZSBhbiBJTiB3YWl0IHdvdWxkIGJl
IGEgbm9wLCBhbmQgYW4NCj4gT1VUIHdhaXQgd291bGQgaW1wbHkgd2FpdGluZyBmb3JldmVyLiBN
b3N0IG9mIHRoZSB0aW1lIHRoaXMgYWxzbyByZXN1bHRzIGluDQo+IGJvdGggc2NhbmxpbmUgcmFu
Z2VzIChvcmlnaW5hbCBhbmQgaW52ZXJ0ZWQpIHRvIGhhdmUgbG93ZXI9dXBwZXIrMSB3aGljaCBp
cw0KPiBub25zZW5zZSBmcm9tIHRoZSBodyBQT1YuDQo+IA0KPiBGb3Igbm93IHdlIGFyZSBvbmx5
IGhhbmRsaW5nIHRoZSBjYXNlIHdoZXJlIHRoZSBzY2FubGluZSB3YWl0IGhhcHBlbnMgcHJpb3IN
Cj4gdG8gbGF0Y2hpbmcgdGhlIGRvdWJsZSBidWZmZXJlZCByZWdpc3RlcnMgZHVyaW5nIHRoZSBj
b21taXQgKHdoaWNoIG1pZ2h0DQo+IGNoYW5nZSB0aGUgdGltaW5ncyBkdWUgdG8gTFJSL1ZSUi9l
dGMuKQ0KPiANCj4gU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxh
QGxpbnV4LmludGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2RzYi5jIHwgNzMgKysrKysrKysrKysrKysrKysrKysrKysrDQo+IGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmggfCAgNiArKw0KPiAgMiBmaWxlcyBjaGFuZ2Vk
LCA3OSBpbnNlcnRpb25zKCspDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kc2IuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZHNiLmMNCj4gaW5kZXggODE5Mzc5MDhjNzk4Li4wOTJjZjA4MmFjMzkgMTAwNjQ0DQo+
IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmMNCj4gKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2IuYw0KPiBAQCAtMzYyLDYgKzM2
Miw3OSBAQCB2b2lkIGludGVsX2RzYl9ub25wb3N0X2VuZChzdHJ1Y3QgaW50ZWxfZHNiICpkc2Ip
DQo+ICAJaW50ZWxfZHNiX25vb3AoZHNiLCA0KTsNCj4gIH0NCj4gDQo+ICtzdGF0aWMgdm9pZCBp
bnRlbF9kc2JfZW1pdF93YWl0X2RzbChzdHJ1Y3QgaW50ZWxfZHNiICpkc2IsDQo+ICsJCQkJICAg
IHUzMiBvcGNvZGUsIGludCBsb3dlciwgaW50IHVwcGVyKSB7DQo+ICsJdTY0IHdpbmRvdyA9ICgo
dTY0KXVwcGVyIDw8IERTQl9TQ0FOTElORV9VUFBFUl9TSElGVCkgfA0KPiArCQkoKHU2NClsb3dl
ciA8PCBEU0JfU0NBTkxJTkVfTE9XRVJfU0hJRlQpOw0KPiArDQo+ICsJaW50ZWxfZHNiX2VtaXQo
ZHNiLCBsb3dlcl8zMl9iaXRzKHdpbmRvdyksDQo+ICsJCSAgICAgICAob3Bjb2RlIDw8IERTQl9P
UENPREVfU0hJRlQpIHwNCj4gKwkJICAgICAgIHVwcGVyXzMyX2JpdHMod2luZG93KSk7DQo+ICt9
DQo+ICsNCj4gK3N0YXRpYyB2b2lkIGludGVsX2RzYl93YWl0X2RzbChzdHJ1Y3QgaW50ZWxfYXRv
bWljX3N0YXRlICpzdGF0ZSwNCj4gKwkJCSAgICAgICBzdHJ1Y3QgaW50ZWxfZHNiICpkc2IsDQo+
ICsJCQkgICAgICAgaW50IGxvd2VyX2luLCBpbnQgdXBwZXJfaW4sDQoNCkxvd2VyL3VwcGVyIGtl
eXdvcmQgbWF5YmUgY29uZnVzaW5nIGZvciBkdXJpbmcgaW50ZWxfZHNiX3dhaXRfc2NhbmxpbmVf
b3V0KCksIG1heWJlIGdvb2QgdG8gaGF2ZSBuYW1lIGxpa2UgaW5fc3RhcnQgYW5kIGluX2VuZCwg
c2ltaWxhcmx5IG91dF9zdGFydCBhbmQgb3V0X2VuZC4NCg0KPiArCQkJICAgICAgIGludCBsb3dl
cl9vdXQsIGludCB1cHBlcl9vdXQpIHsNCj4gKwlzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YyA9IGRz
Yi0+Y3J0YzsNCj4gKw0KPiArCWxvd2VyX2luID0gZHNiX3NjYW5saW5lX3RvX2h3KHN0YXRlLCBj
cnRjLCBsb3dlcl9pbik7DQo+ICsJdXBwZXJfaW4gPSBkc2Jfc2NhbmxpbmVfdG9faHcoc3RhdGUs
IGNydGMsIHVwcGVyX2luKTsNCj4gKw0KPiArCWxvd2VyX291dCA9IGRzYl9zY2FubGluZV90b19o
dyhzdGF0ZSwgY3J0YywgbG93ZXJfb3V0KTsNCj4gKwl1cHBlcl9vdXQgPSBkc2Jfc2NhbmxpbmVf
dG9faHcoc3RhdGUsIGNydGMsIHVwcGVyX291dCk7DQoNCklmIGxvd2VyX2luID4gdXBwZXJfaW4s
IHRoZW4gY2FsY3VsYXRpb24gZm9yIGxvd2VyX291dCBhbmQgdXBwZXJfb3V0IGlzIG5vdCBuZWVk
ZWQuIEV2ZW4gYmVmb3JlIGNhbGxpbmcgZHNiX3NjYW5saW5lX3RvX2h3KCkgd2UgY2FuIGNvbXBh
cmUgYW5kIGNoZWNrIGlmIGl0IGlzIGZvciBzY2FubGluZV9pbiBvciBzY2FubGluZV9vdXQuLi4g
cnQ/DQoNClJlZ2FyZHMsDQpBbmltZXNoDQo+ICsNCj4gKwlpZiAodXBwZXJfaW4gPj0gbG93ZXJf
aW4pDQo+ICsJCWludGVsX2RzYl9lbWl0X3dhaXRfZHNsKGRzYiwgRFNCX09QQ09ERV9XQUlUX0RT
TF9JTiwNCj4gKwkJCQkJbG93ZXJfaW4sIHVwcGVyX2luKTsNCj4gKwllbHNlIGlmICh1cHBlcl9v
dXQgPj0gbG93ZXJfb3V0KQ0KPiArCQlpbnRlbF9kc2JfZW1pdF93YWl0X2RzbChkc2IsIERTQl9P
UENPREVfV0FJVF9EU0xfT1VULA0KPiArCQkJCQlsb3dlcl9vdXQsIHVwcGVyX291dCk7DQo+ICsJ
ZWxzZQ0KPiArCQlkcm1fV0FSTl9PTihjcnRjLT5iYXNlLmRldiwgMSk7IC8qIGFzc2VydF9kc2xf
b2soKSBzaG91bGQNCj4gaGF2ZSBjYXVnaHQNCj4gK2l0IGFscmVhZHkgKi8gfQ0KPiArDQo+ICtz
dGF0aWMgdm9pZCBhc3NlcnRfZHNsX29rKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRl
LA0KPiArCQkJICBzdHJ1Y3QgaW50ZWxfZHNiICpkc2IsDQo+ICsJCQkgIGludCBzdGFydCwgaW50
IGVuZCkNCj4gK3sNCj4gKwlzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YyA9IGRzYi0+Y3J0YzsNCj4g
KwlpbnQgdnRvdGFsID0gZHNiX3Z0b3RhbChzdGF0ZSwgY3J0Yyk7DQo+ICsNCj4gKwkvKg0KPiAr
CSAqIFdhaXRpbmcgZm9yIHRoZSBlbnRpcmUgZnJhbWUgZG9lc24ndCBtYWtlIHNlbnNlLA0KPiAr
CSAqIChJTj09ZG9uJ3Qgd2FpdCwgT1VUPXdhaXQgZm9yZXZlcikuDQo+ICsJICovDQo+ICsJZHJt
X1dBUk4oY3J0Yy0+YmFzZS5kZXYsIChlbmQgLSBzdGFydCArIHZ0b3RhbCkgJSB2dG90YWwgPT0g
dnRvdGFsIC0NCj4gMSwNCj4gKwkJICJbQ1JUQzolZDolc10gRFNCICVkIGJhZCBzY2FubGluZSB3
aW5kb3cgd2FpdDogJWQtJWQNCj4gKHZ0PSVkKVxuIiwNCj4gKwkJIGNydGMtPmJhc2UuYmFzZS5p
ZCwgY3J0Yy0+YmFzZS5uYW1lLCBkc2ItPmlkLA0KPiArCQkgc3RhcnQsIGVuZCwgdnRvdGFsKTsN
Cj4gK30NCj4gKw0KPiArdm9pZCBpbnRlbF9kc2Jfd2FpdF9zY2FubGluZV9pbihzdHJ1Y3QgaW50
ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwNCj4gKwkJCQlzdHJ1Y3QgaW50ZWxfZHNiICpkc2IsDQo+
ICsJCQkJaW50IHN0YXJ0LCBpbnQgZW5kKQ0KPiArew0KPiArCWFzc2VydF9kc2xfb2soc3RhdGUs
IGRzYiwgc3RhcnQsIGVuZCk7DQo+ICsNCj4gKwlpbnRlbF9kc2Jfd2FpdF9kc2woc3RhdGUsIGRz
YiwNCj4gKwkJCSAgIHN0YXJ0LCBlbmQsDQo+ICsJCQkgICBlbmQgKyAxLCBzdGFydCAtIDEpOw0K
PiArfQ0KPiArDQo+ICt2b2lkIGludGVsX2RzYl93YWl0X3NjYW5saW5lX291dChzdHJ1Y3QgaW50
ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwNCj4gKwkJCQkgc3RydWN0IGludGVsX2RzYiAqZHNiLA0K
PiArCQkJCSBpbnQgc3RhcnQsIGludCBlbmQpDQo+ICt7DQo+ICsJYXNzZXJ0X2RzbF9vayhzdGF0
ZSwgZHNiLCBzdGFydCwgZW5kKTsNCj4gKw0KPiArCWludGVsX2RzYl93YWl0X2RzbChzdGF0ZSwg
ZHNiLA0KPiArCQkJICAgZW5kICsgMSwgc3RhcnQgLSAxLA0KPiArCQkJICAgc3RhcnQsIGVuZCk7
DQo+ICt9DQo+ICsNCj4gIHN0YXRpYyB2b2lkIGludGVsX2RzYl9hbGlnbl90YWlsKHN0cnVjdCBp
bnRlbF9kc2IgKmRzYikgIHsNCj4gIAl1MzIgYWxpZ25lZF90YWlsLCB0YWlsOw0KPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2IuaA0KPiBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmgNCj4gaW5kZXggODRmYzJmODQzNGQx
Li5kMDczN2NlZmIzOTMgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZHNiLmgNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kc2IuaA0KPiBAQCAtMzksNiArMzksMTIgQEAgdm9pZCBpbnRlbF9kc2JfcmVnX3dyaXRlX21h
c2tlZChzdHJ1Y3QgaW50ZWxfZHNiDQo+ICpkc2IsICB2b2lkIGludGVsX2RzYl9ub29wKHN0cnVj
dCBpbnRlbF9kc2IgKmRzYiwgaW50IGNvdW50KTsgIHZvaWQNCj4gaW50ZWxfZHNiX25vbnBvc3Rf
c3RhcnQoc3RydWN0IGludGVsX2RzYiAqZHNiKTsgIHZvaWQNCj4gaW50ZWxfZHNiX25vbnBvc3Rf
ZW5kKHN0cnVjdCBpbnRlbF9kc2IgKmRzYik7DQo+ICt2b2lkIGludGVsX2RzYl93YWl0X3NjYW5s
aW5lX2luKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLA0KPiArCQkJCXN0cnVjdCBp
bnRlbF9kc2IgKmRzYiwNCj4gKwkJCQlpbnQgbG93ZXIsIGludCB1cHBlcik7DQo+ICt2b2lkIGlu
dGVsX2RzYl93YWl0X3NjYW5saW5lX291dChzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0
ZSwNCj4gKwkJCQkgc3RydWN0IGludGVsX2RzYiAqZHNiLA0KPiArCQkJCSBpbnQgbG93ZXIsIGlu
dCB1cHBlcik7DQo+IA0KPiAgdm9pZCBpbnRlbF9kc2JfY29tbWl0KHN0cnVjdCBpbnRlbF9kc2Ig
KmRzYiwNCj4gIAkJICAgICAgYm9vbCB3YWl0X2Zvcl92YmxhbmspOw0KPiAtLQ0KPiAyLjQ0LjIN
Cg0K
