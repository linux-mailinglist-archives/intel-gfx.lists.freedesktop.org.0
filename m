Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GHitOodA1mkFCwgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Apr 2026 13:48:23 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F2843BB706
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Apr 2026 13:48:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D7A810E0C4;
	Wed,  8 Apr 2026 11:48:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="A8rNoILG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8338B10E0C4;
 Wed,  8 Apr 2026 11:48:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775648899; x=1807184899;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=lW57YJT3tmOwFeTwRHOhLViZGbWOrJzmU4L/OGbNhjw=;
 b=A8rNoILGTcrtO5elPRuoGvn4dCIExZ0AECKSAVRb5yNBt1sWDI/yhVvK
 h+achZR5xca9Qd3VR/l/HDusI5qULVOU9A/7dT9hDqYSX36Ymfr4VFv6/
 0+zA9loDkxpqSaQxagNAUwXwoHI1m6d9dJm3Aqjb7JuSpDY4stls6CJFp
 7OrlvZle8jR2f8H+3olNqnXa/I4wgRfxF+wVs261iHDUL9mepHJOH6Obz
 kWHnR/++hcY9VSyLXaUpgS0G0erFgj1FMSkOYsZbIUidG+O/KohlrD0uv
 QTmurzYR9W5PKqCQ8GBcl2N04EelnhocHZ66fWlptW5Cqkn3mXF+k++rv g==;
X-CSE-ConnectionGUID: lUVRS+jXTH68L7SstmTUEw==
X-CSE-MsgGUID: fCwPBG5BQcyYt8wp5kCQNw==
X-IronPort-AV: E=McAfee;i="6800,10657,11752"; a="94018077"
X-IronPort-AV: E=Sophos;i="6.23,167,1770624000"; d="scan'208";a="94018077"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2026 04:48:19 -0700
X-CSE-ConnectionGUID: Zo5moxlURcStWO7jPJPA0Q==
X-CSE-MsgGUID: zdDVv5eYT1G0mfwM/j9y9g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,167,1770624000"; d="scan'208";a="232483835"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2026 04:48:19 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 8 Apr 2026 04:48:18 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 8 Apr 2026 04:48:18 -0700
Received: from BN8PR05CU002.outbound.protection.outlook.com (52.101.57.4) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 8 Apr 2026 04:48:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hZjwY/r5a+FMtts28PE5pFUprcn8oQ7UHCUL1pNQbxUcTYRpCYc4lfugBhS/+jNPoZ1JwPH3YU1t6fsnKJCYrw5Ua3T+7aif41sOvE0GF5laal2maxGAIH0hL/pywFqzQyFbxGqR+K1N44+TOej7aOvWEUPuQj9gbgbTrdnu+quuxpIlzEY0TQ391YKbq8hbKibgstkjy7zuDWOyZfo/fGfRT9InMk+xpVJxGjWlZ+EzQ1Kh2FLyd8lLBvyZTHPHGulP9WCLHDIImqaUJq/QWiCTx6KllLsbfgsA6eQdR3Ay9dz0ExJuf0eHuVEIA1oStBGJ4ghanw/l1kGqbGSUVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lW57YJT3tmOwFeTwRHOhLViZGbWOrJzmU4L/OGbNhjw=;
 b=aewoh6Qda0ukzokilYvS+/qgDJ66kcFcD+3l2W2DCCsjfw1P6G/p2zlpCsxu+5t6COau/c3lgsw8ekRzUc7qFnZARHqydG0F00qDBB3il58zLCllDYKa0BIlOHBLToVQ8CgvqwYvYCBzKZvX/V9TGnaieVTKAN/NzmG/Htd98+MnP9QC/FXng5vxnfWF5WFtI+2a2TGHKVLQnoYzLIXJWAEGWhqdOGdBdE0vToAwij6ugK+GkOVc0gXzSd5zKvVz2+VcX5eVV9nzBPPPeLMkENzT0TdBWZ8bN7o7YLvHnD0eFjusRy2Kv+Gw6KnsoM3B7iKbyidO+Bv2A1JhsO0pWQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7777.namprd11.prod.outlook.com (2603:10b6:930:71::14)
 by BL4PR11MB8847.namprd11.prod.outlook.com (2603:10b6:208:5a7::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.18; Wed, 8 Apr
 2026 11:48:08 +0000
Received: from CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::5a6:cd7:969c:fa41]) by CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::5a6:cd7:969c:fa41%5]) with mapi id 15.20.9769.018; Wed, 8 Apr 2026
 11:48:08 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 2/9] drm/i915/wm: Don't compute separate SAGV watermarks
 for RKL
Thread-Topic: [PATCH 2/9] drm/i915/wm: Don't compute separate SAGV watermarks
 for RKL
Thread-Index: AQHcu5UI+tx6h4ETp0OIwbdTYCy6T7XVI/YA
Date: Wed, 8 Apr 2026 11:48:08 +0000
Message-ID: <1ebabe4506855f45db048c87af7676171c2525f3.camel@intel.com>
References: <20260324134843.2364-1-ville.syrjala@linux.intel.com>
 <20260324134843.2364-3-ville.syrjala@linux.intel.com>
In-Reply-To: <20260324134843.2364-3-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.52.3-0ubuntu1.1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7777:EE_|BL4PR11MB8847:EE_
x-ms-office365-filtering-correlation-id: 146688a5-4d62-487d-b4af-08de9564b42c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|10070799003|376014|1800799024|366016|38070700021|22082099003|56012099003|18002099003;
x-microsoft-antispam-message-info: NNTu7Z5wTEOdPK8olPR6kESgPDbqPtQkCQbt9JuKnZtGDfw4JdfaIWHWaEd6ThhqDSVP6pYnlpgmhx9R9GyEjuf/BYlrnrChfoKj0de8Sbd1rg4yX7O0cQTFNgQjYE88Tyvb5CRDcmbwC6FH0D0MEF+cqmgtJjdeOBn81GydVwPFs7V0q/fN/jzTzDJH1Pj2LPtkzkTpgEBExfs49rlLzG6597dpI7paHECfmq/807rQ07mDGdM+OrBl0T+zSKm9Xk6m8Amv68Twc7hEFiZcRmfXkaPKNNCYWeEpffJO3Ly/9aIxXzQswbMG/YFeS7ZjciG6r0hUGEj6ASxrRBKLquN7yOT3JJrOUpIHz9miAdX2UA/DoRjI0mVxXqC0VbktzIhywKlK9d1nQy32eJgOj2olCNU6I9lSiLP2jT/NTda4PI0yXmLXdpX1HoAoQW+18N9Riaai8zq8RhCGIdcVZOWaWJf+JHwBdXCggvjil2drYZKR4hJ4GZqeMUUVt50VTW0dt7nbbwd5w+3iQWMYIQ/cS1TU/iqzh39OE7iOWRdA3wav29lwPWhQBUbji8JmDgmgwMrpUmrgsc3poQLGIESdd7KCDa4aOjNfG3CxL6c239Nu6rvt4etx3XwN6rv480qIQmz6YAdjqcrzAc0jlFzUhpCNkFPjVXV3HVDRCLVhWH14ZywDlsSLpY18Agn7MgV7MlB9tbWO0/uEterTdCt3z5gV+9jcaCKKyyPkEQc605ouDhzs2v+uMuU07zJ0XFRCBl3XoS9DNDoiL6i73Fg8bvxpMQJyoKsbh5IiNnI=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7777.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(376014)(1800799024)(366016)(38070700021)(22082099003)(56012099003)(18002099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?UUZhem5wSDlYYmkvcWhoeE80cWJSQ1VSOGk3dTQ3R0dKUjgrU0U1M3dHNS9G?=
 =?utf-8?B?SThwMnRUNWVtWUdqMzY5cENIRHExTWJVYlhuOHRuVmliZ3NEYncwSTdDQ0dJ?=
 =?utf-8?B?TXJoZ3Y0bjR1dTVOU3Z1STg2SHhpbDdDRjVxb0loMHpCZ2w1ZDNFZWpINlBz?=
 =?utf-8?B?ZjE0azFWNDVaUlN4Tmt2dTdzcmQ1SEFlMUcycm5BaTVsUVorT3VJZ01GV2hV?=
 =?utf-8?B?cHlOUnZQQTZGTjNFUWh6WGpURGxRb3hBbkswaEoyRndVclQ2NkowMXRwTGUw?=
 =?utf-8?B?MUpNdnkwR2FwclB0QVRES3JVcmxOTGlBNFhxa0xRb0RrZE5wQnNmd1JPTTdq?=
 =?utf-8?B?SlN3bUs3d2RZanRPMVVJalpjQ1pwTEFKUzZUK0lJZUxSUjBlQmRwQzgvaThP?=
 =?utf-8?B?N1RSeGxzRkVrUEJ4dGF0ZWtJQjhXZnNLZTFCWE55U1hidllzc2tTTzFvSmph?=
 =?utf-8?B?UXo1M0lZM1l4RkI1b2UrdkllbkdxMzdzbmxqU2pseUsxWGhqSjY3S29tZnln?=
 =?utf-8?B?cXVyZGE1bkRzNThYN1ZzbVBsaFBzNGsvUzdsZWgvUi9rcEl2ZkliYjVsc3Zr?=
 =?utf-8?B?QzNzZ3cyWUozdzU2RjNCREF6Q2pzdGVEKzFRK3pPai9Bd2s0bGRWazVtWHlu?=
 =?utf-8?B?aHJTN0tQam1oRTR0a2cyU2Z4eXg1RUk1b1U3RGRqcnJFdGJQZFBTWXU0R2Va?=
 =?utf-8?B?aTJWMGlUSDZsSlJNYlZ2UzJGY2R3MHA0Z1RWbXd6VHB1eGFtNkQ2d0NycW9E?=
 =?utf-8?B?R2xJT0ZLL0M1aEh6OXkxODlYZWhYbldnc2JEMFJkWk0zNmkvV2VnbzVjb3dX?=
 =?utf-8?B?anlNVlNUd0JnbHRnU2lSNFZsWHZmREtjWkxkWGRIVWc3U3JXSEZpdndmTlR1?=
 =?utf-8?B?ZCt5eW80dnRrbUlKNlRKZHNreTVoVjNxaTgwMHhqUGFMeUg2aHFJZ0psbXVt?=
 =?utf-8?B?UkNmZkc4d3JTVzNRY253K1lrL1grRHlvNHVGSmdYS3ByV25GVU1zTjZOMmhG?=
 =?utf-8?B?T2xDMGMvOVNJTHNXU2tsMWFaaGpZSmRIb3pJMHRGWTZTYTRxVDQ5Sy9LMzVQ?=
 =?utf-8?B?SitEY2pXNjhDMkNyaW1BZW9adjBPbWRUdFFGakhMQjk2cEdaOEFxMk53Z3ZI?=
 =?utf-8?B?b2gxUlEvbzQ2TU1JbUZWVzcvaTdLd0tSV1lNc2l0ajNZekcrMXhUbUhtaDYw?=
 =?utf-8?B?REJKelRVSUdVSjB5T3VQdnp1RXZXOUk3RTJFN2RWL0FjcWNXdjY1KzlBUWV3?=
 =?utf-8?B?WjMrRGhpSll4VjlpV1BsNlBEYTMrVVpIVWRVLzFLZ2hGdDE0RmtiUzQ2em9C?=
 =?utf-8?B?eE1EanlDdWhqUWlvOVYzV213d3FlVVoyamdkOFRRUFl1OW9GclRSQ0xzdDhm?=
 =?utf-8?B?bTBKWmk3Ymt1c3hYZ0RGYnZBOEV0RWxrKzNjYk5TSUM3SGVDd2tHcjBLL0FR?=
 =?utf-8?B?YjRuZys2SDVJNlZMK3dBVDBnajNPVDN2MVpid21PVzI3MHBiMFJVR2ZYbFJu?=
 =?utf-8?B?aUZJOFBLTWFqU0dvOENxNDdPcEdRUElvZ05GdE9RMGZCUHl4UlRYQW9WYzg5?=
 =?utf-8?B?ejI5eGt6SFhkeFBhN2hFcHlDdm1sRzZBWnNCaVcyTEtRT1JwdnhIUzYvZmRz?=
 =?utf-8?B?MURldjBnTTNuOXY3Q0N0eDlIb20wTnhvTzV1OEFRTHZFUFdrYS8xS2tmWUdo?=
 =?utf-8?B?MHNtL2o0K05tcVpNT0NUWmR3QWdRNndiUUR0T0VsUmNXTGN1ZGIyWVZjcGRw?=
 =?utf-8?B?eEpMeUpzTTFXMXVCOFcreElUajlLSFk5bDdGT3FDV1c1RmFNZ3ZUT1loMXAz?=
 =?utf-8?B?djJkS3R1eGhJdmVOcFdNc3FqYktCR0pPK0J2SS9tQlhReHpqb0pUaVpyV2x4?=
 =?utf-8?B?bTBXQmpHT1hqVm1uL3pFL0tmWnRyQjNKalZ1OU54R1hheG5EQzFWeDNVZmg2?=
 =?utf-8?B?YWxvVCsxS3Rqd1czUlZUVmhDQW1KZmJ3WlBRU2Vtc0kvZ1ZKb1ovT21UQkVV?=
 =?utf-8?B?MnhIVFA1OE1TUzlCYnlpRTc2bWNORlAyR1d0V0pzWVovR3p3SGk1dDNRR1lZ?=
 =?utf-8?B?ZmtDV2MzRnR3QytBMkx4MjdUU2FYaWt4VDFiT3M4ZVFlN0c5Q2ZlcWJTQ0Rn?=
 =?utf-8?B?UmkzdlVSeHBvSHVrUkRlVnpZS2IyNUZlMW4rUHhMQmhSVWF6cVJCQnQ1cmwv?=
 =?utf-8?B?RmlLaW0yM2FyWVFkeENYY1NlakhRUGswVmJLbDZOY1VYeXhtV0NKSTBTODJh?=
 =?utf-8?B?Zkc4Q3prSDZvbnNUUVJJZ2pFUk82Y2xDUzVyYzVyQ01jZ2JmN0lxTk9sdUIz?=
 =?utf-8?B?U1dZYXZMaWliaXNSQXpUVW8vcmNwcTdwQkhyaWFhb1dnbFovcWVmRGRSRDNG?=
 =?utf-8?Q?uLfrVu3Z6+1urcQrp0BAYLTLWBGaZi5sfcMy8L/Jnd8Zg?=
x-ms-exchange-antispam-messagedata-1: 5+CtSlVfBv+p9XhJZGu8P9C91QzkPMd8+d7e7HhM6Nr8zwaGN26TFH+V
Content-Type: text/plain; charset="utf-8"
Content-ID: <73E2F3CD55A462418884EAAD2D2EFFD7@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: rvCCLlwq6mOYVVvZOsGdcdNXS9R4+2etoHeqOKoNpLDDU3pipqjaHI0/MCS7O6wFIUvCJmpvoThHZ8UjrLNhrce5e3pyyWhUExMAXholrHA2mItzCvxfmF93QG3OEiFKHsyizHJ9TpWL6Cny+0+SGCh/5bqe2bmn5VZPHaNheumEO8m8QMT0uA4lsYOqlb1NyL9UdZnG2K2efUENMfTHhPslgG97MeUQOiIoi++n6V68wVyuXvVPDrWxS5ebGqEO2bJB7wB8cg7sFlkO8ov0PxQkV0Utbk0S1Sa5LGCFuO+QaeTjcT+SbuHix9BuZJ73E1OYE1FLzrFsva/xznVpZw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7777.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 146688a5-4d62-487d-b4af-08de9564b42c
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Apr 2026 11:48:08.4950 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: pGZZMra85JNkECB/nbzFzVIHVMCEC6A56A5k1McNR5B7MT6gVux5wcdVR+wU8M99U+TgP1UM8bVY8d651lQkj5yEIfdJMP+gwGwWKJ3OMMk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL4PR11MB8847
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
X-Spamd-Result: default: False [-0.21 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_ALL(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[vinod.govindapillai@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 4F2843BB706
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gVHVlLCAyMDI2LTAzLTI0IGF0IDE1OjQ4ICswMjAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOg0K
PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiANCj4gUktMIGlzIHN1cHBvc2VkIHRvIHVzZSB0aGUgb2xkIFNLTC9JQ0wgbWV0aG9kIGZvciBk
ZXRlcm1pbmluZw0KPiB3aGV0aGVyIHRoZSB3YXRlcm1hcmtzIHRvbGVyYXRlIFNBR1Ygb3Igbm90
LCBub3QgdGhlIFRHTCsgbWV0aG9kLg0KPiBNYWtlIGl0IHNvLg0KPiANCj4gQlNwZWM6IDQ5MzI1
DQo+IFNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5p
bnRlbC5jb20+DQo+IC0tLQ0KPiDCoC4uLi9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNw
bGF5X2RldmljZS5owqDCoCB8wqAgMSArDQo+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9za2xfd2F0ZXJtYXJrLmPCoMKgwqDCoMKgIHwgMTUgKysrKysrKystLS0tLQ0KPiAtLQ0KPiDC
oDIgZmlsZXMgY2hhbmdlZCwgOSBpbnNlcnRpb25zKCspLCA3IGRlbGV0aW9ucygtKQ0KPiANCg0K
UmV2aWV3ZWQtYnk6IFZpbm9kIEdvdmluZGFwaWxsYWkgPHZpbm9kLmdvdmluZGFwaWxsYWlAaW50
ZWwuY29tPg0KDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2Rpc3BsYXlfZGV2aWNlLmgNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2Rpc3BsYXlfZGV2aWNlLmgNCj4gaW5kZXggMTE3MGFjMzQ2NjE1Li4wNzRlM2JhOGZiNzcg
MTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxh
eV9kZXZpY2UuaA0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rp
c3BsYXlfZGV2aWNlLmgNCj4gQEAgLTIwMCw2ICsyMDAsNyBAQCBzdHJ1Y3QgaW50ZWxfZGlzcGxh
eV9wbGF0Zm9ybXMgew0KPiDCoCNkZWZpbmUNCj4gSEFTX1BTUl9UUkFOU19QVVNIX0ZSQU1FX0NI
QU5HRShfX2Rpc3BsYXkpCShESVNQTEFZX1ZFUihfX2Rpc3BsYXkpID49MjApDQo+IMKgI2RlZmlu
ZSBIQVNfU0FHVihfX2Rpc3BsYXkpCQkoRElTUExBWV9WRVIoX19kaXNwbGF5KSA+PSA5DQo+ICYm
IFwNCj4gwqAJCQkJCSAhKF9fZGlzcGxheSktDQo+ID5wbGF0Zm9ybS5icm94dG9uICYmICEoX19k
aXNwbGF5KS0+cGxhdGZvcm0uZ2VtaW5pbGFrZSkNCj4gKyNkZWZpbmUgSEFTX1NBR1ZfV00oX19k
aXNwbGF5KQkJKERJU1BMQVlfVkVSKF9fZGlzcGxheSkgPj0NCj4gMTIgJiYgIShfX2Rpc3BsYXkp
LT5wbGF0Zm9ybS5yb2NrZXRsYWtlKQ0KPiDCoCNkZWZpbmUgSEFTX1RSQU5TQ09ERVIoX19kaXNw
bGF5LA0KPiB0cmFucykJKChESVNQTEFZX1JVTlRJTUVfSU5GTyhfX2Rpc3BsYXkpLT5jcHVfdHJh
bnNjb2Rlcl9tYXNrICYgXA0KPiDCoAkJCQkJCcKgIEJJVCh0cmFucykpICE9IDApDQo+IMKgI2Rl
ZmluZQ0KPiBIQVNfVU5DT01QUkVTU0VEX0pPSU5FUihfX2Rpc3BsYXkpCShESVNQTEFZX1ZFUihf
X2Rpc3BsYXkpID49IDEzKQ0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9za2xfd2F0ZXJtYXJrLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L3Nr
bF93YXRlcm1hcmsuYw0KPiBpbmRleCAwOTk4OGY0NmUwODMuLmJjZGNhMWI5OWZlNCAxMDA2NDQN
Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9za2xfd2F0ZXJtYXJrLmMNCj4g
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9za2xfd2F0ZXJtYXJrLmMNCj4gQEAg
LTM4OCw3ICszODgsNyBAQCBib29sIGludGVsX2NydGNfY2FuX2VuYWJsZV9zYWd2KGNvbnN0IHN0
cnVjdA0KPiBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQ0KPiDCoAlpZiAoY3J0Y19zdGF0
ZS0+aW5oZXJpdGVkKQ0KPiDCoAkJcmV0dXJuIGZhbHNlOw0KPiDCoA0KPiAtCWlmIChESVNQTEFZ
X1ZFUihkaXNwbGF5KSA+PSAxMikNCj4gKwlpZiAoSEFTX1NBR1ZfV00oZGlzcGxheSkpDQo+IMKg
CQlyZXR1cm4gdGdsX2NydGNfY2FuX2VuYWJsZV9zYWd2KGNydGNfc3RhdGUpOw0KPiDCoAllbHNl
DQo+IMKgCQlyZXR1cm4gc2tsX2NydGNfY2FuX2VuYWJsZV9zYWd2KGNydGNfc3RhdGUpOw0KPiBA
QCAtMTkzOSw3ICsxOTM5LDcgQEAgc3RhdGljIHZvaWQgc2tsX2NvbXB1dGVfcGxhbmVfd20oY29u
c3Qgc3RydWN0DQo+IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUsDQo+IMKgCXJlc3VsdC0+
ZW5hYmxlID0gdHJ1ZTsNCj4gwqAJcmVzdWx0LT5hdXRvX21pbl9hbGxvY193bV9lbmFibGUgPQ0K
PiB4ZTNfYXV0b19taW5fYWxsb2NfY2FwYWJsZShwbGFuZSwgbGV2ZWwpOw0KPiDCoA0KPiAtCWlm
IChESVNQTEFZX1ZFUihkaXNwbGF5KSA8IDEyICYmIGRpc3BsYXktDQo+ID5zYWd2LmJsb2NrX3Rp
bWVfdXMpDQo+ICsJaWYgKCFIQVNfU0FHVl9XTShkaXNwbGF5KSAmJiBkaXNwbGF5LT5zYWd2LmJs
b2NrX3RpbWVfdXMpDQo+IMKgCQlyZXN1bHQtPmNhbl9zYWd2ID0gbGF0ZW5jeSA+PSBkaXNwbGF5
LQ0KPiA+c2Fndi5ibG9ja190aW1lX3VzOw0KPiDCoH0NCj4gwqANCj4gQEAgLTIwNjUsNyArMjA2
NSw3IEBAIHN0YXRpYyBpbnQgc2tsX2J1aWxkX3BsYW5lX3dtX3NpbmdsZShzdHJ1Y3QNCj4gaW50
ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwNCj4gwqAJc2tsX2NvbXB1dGVfdHJhbnNpdGlvbl93
bShkaXNwbGF5LCAmd20tPnRyYW5zX3dtLA0KPiDCoAkJCQnCoCAmd20tPndtWzBdLCAmd21fcGFy
YW1zKTsNCj4gwqANCj4gLQlpZiAoRElTUExBWV9WRVIoZGlzcGxheSkgPj0gMTIpIHsNCj4gKwlp
ZiAoSEFTX1NBR1ZfV00oZGlzcGxheSkpIHsNCj4gwqAJCXRnbF9jb21wdXRlX3NhZ3Zfd20oY3J0
Y19zdGF0ZSwgcGxhbmUsICZ3bV9wYXJhbXMsDQo+IHdtKTsNCj4gwqANCj4gwqAJCXNrbF9jb21w
dXRlX3RyYW5zaXRpb25fd20oZGlzcGxheSwgJndtLQ0KPiA+c2Fndi50cmFuc193bSwNCj4gQEAg
LTIzMjQsNyArMjMyNCw3IEBAIHN0YXRpYyBpbnQgc2tsX3dtX2NoZWNrX3ZibGFuayhzdHJ1Y3QN
Cj4gaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkNCj4gwqAJCX0NCj4gwqAJfQ0KPiDCoA0K
PiAtCWlmIChESVNQTEFZX1ZFUihkaXNwbGF5KSA+PSAxMiAmJg0KPiArCWlmIChIQVNfU0FHVl9X
TShkaXNwbGF5KSAmJg0KPiDCoAnCoMKgwqAgZGlzcGxheS0+c2Fndi5ibG9ja190aW1lX3VzICYm
DQo+IMKgCcKgwqDCoCBza2xfcHJlZmlsbF92YmxhbmtfdG9vX3Nob3J0KCZjdHgsIGNydGNfc3Rh
dGUsDQo+IMKgCQkJCQkgZGlzcGxheS0NCj4gPnNhZ3YuYmxvY2tfdGltZV91cykpIHsNCj4gQEAg
LTI5OTcsOCArMjk5Nyw5IEBAIHNrbF9jb21wdXRlX3dtKHN0cnVjdCBpbnRlbF9hdG9taWNfc3Rh
dGUNCj4gKnN0YXRlKQ0KPiDCoAkJICogb3RoZXIgY3J0Y3MgY2FuJ3QgYmUgYWxsb3dlZCB0byB1
c2UgdGhlIG1vcmUNCj4gb3B0aW1hbA0KPiDCoAkJICogbm9ybWFsIChpZS4gbm9uLVNBR1YpIHdh
dGVybWFya3MuDQo+IMKgCQkgKi8NCj4gLQkJcGlwZV93bS0+dXNlX3NhZ3Zfd20gPSAhSEFTX0hX
X1NBR1ZfV00oZGlzcGxheSkgJiYNCj4gLQkJCURJU1BMQVlfVkVSKGRpc3BsYXkpID49IDEyICYm
DQo+ICsJCXBpcGVfd20tPnVzZV9zYWd2X3dtID0NCj4gKwkJCUhBU19TQUdWX1dNKGRpc3BsYXkp
ICYmDQo+ICsJCQkhSEFTX0hXX1NBR1ZfV00oZGlzcGxheSkgJiYNCj4gwqAJCQlpbnRlbF9jcnRj
X2Nhbl9lbmFibGVfc2FndihuZXdfY3J0Y19zdGF0ZSk7DQo+IMKgDQo+IMKgCQlyZXQgPSBza2xf
d21fYWRkX2FmZmVjdGVkX3BsYW5lcyhzdGF0ZSwgY3J0Yyk7DQo+IEBAIC0zMDY0LDcgKzMwNjUs
NyBAQCBzdGF0aWMgdm9pZCBza2xfcGlwZV93bV9nZXRfaHdfc3RhdGUoc3RydWN0DQo+IGludGVs
X2NydGMgKmNydGMsDQo+IMKgCQkJCXZhbCA9IGludGVsX2RlX3JlYWQoZGlzcGxheSwNCj4gQ1VS
X1dNX1NBR1ZfVFJBTlMocGlwZSkpOw0KPiDCoA0KPiDCoAkJCXNrbF93bV9sZXZlbF9mcm9tX3Jl
Z192YWwoZGlzcGxheSwgdmFsLCAmd20tDQo+ID5zYWd2LnRyYW5zX3dtKTsNCj4gLQkJfSBlbHNl
IGlmIChESVNQTEFZX1ZFUihkaXNwbGF5KSA+PSAxMikgew0KPiArCQl9IGVsc2UgaWYgKEhBU19T
QUdWX1dNKGRpc3BsYXkpKSB7DQo+IMKgCQkJd20tPnNhZ3Yud20wID0gd20tPndtWzBdOw0KPiDC
oAkJCXdtLT5zYWd2LnRyYW5zX3dtID0gd20tPnRyYW5zX3dtOw0KPiDCoAkJfQ0KDQo=
