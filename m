Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 87BFFC4B7B0
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Nov 2025 05:47:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 224A310E4C0;
	Tue, 11 Nov 2025 04:47:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="I+ViXEuo";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D6E4C10E4C0;
 Tue, 11 Nov 2025 04:47:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762836438; x=1794372438;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=xNMp82S8tQ4jwtAc6smsIyWaq2MYJqJEwvxla2RESrc=;
 b=I+ViXEuo5dAphuDo7A9WAu25IX2EyY/XvdCaWkNfbw6kG80BcetmlF0I
 Llpg43uwBoXQjpEGahSTqfCqn2p4uoPy4pzBII/Kou2fpg6oQc8Xfolzl
 EAmEKLi9z5Fih66clVEVBKAdPO/4RZzIbLJV+qOudfmTrltbWZYkjvAPr
 rcg8oef3N4jRNUdSjgYt4UmPvNz7GdKfHPRhSDofTZRxVANJ8xza+H9cx
 q4j40gXE0alKwyEHXOyOJlMuy6PB9uOztCWDLUtYXUPooNJx8djzrAwAV
 NJvcANyfsjDrhKAbE/EovUAQGzmNHiA9UAsmU+QX6BgSjE6xC3SKFebi+ Q==;
X-CSE-ConnectionGUID: vONR0QM2Te2BBli9aOn2+g==
X-CSE-MsgGUID: 5R1NaAGwRjO828s8JAYXFw==
X-IronPort-AV: E=McAfee;i="6800,10657,11609"; a="68538300"
X-IronPort-AV: E=Sophos;i="6.19,295,1754982000"; d="scan'208";a="68538300"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2025 20:47:04 -0800
X-CSE-ConnectionGUID: kWtehI3BSne2NstBwmhTZA==
X-CSE-MsgGUID: hkz3SR5BS5WHItkitg9SZw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,295,1754982000"; d="scan'208";a="189113413"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2025 20:47:03 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 10 Nov 2025 20:47:03 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Mon, 10 Nov 2025 20:47:03 -0800
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.25) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 10 Nov 2025 20:47:02 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=uSaI+mSozufpdYCugeI/bN5BR7Nuev/k/ySGTaAYIMJa+55R0gdiOXF1I/l02nlhoCmo4KHA36ZoRdNfndH2dkttSf4zcBZ0p6bKoy1QmTfLzQ2mSTlij0Cej/dMLxHMzLpr4UGnqySkCw+3VVjfenKGXyWHDTWE0pkzwSqoRv2YQLIuiwow4To7h+Jt54UfAoiOKrTjT6OsZjF2OH7fIHM+EobzIMus0OtygHTZxYhKi5/1wjrg2nJnhARVDYnZ8eBC3zyB4X+QO+buC30nkgN6f75zljcIfaIJMKsufc62Pi7BLSME+fbvhkRCpuFJnvpFwuLIR5zaRN3VOp0vTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xNMp82S8tQ4jwtAc6smsIyWaq2MYJqJEwvxla2RESrc=;
 b=UKRiUbM4sPbNkNF+zk6PqN8kL4z/IKKFGu34SieifH8kmFMMC+qOC1o+wXEHWIYaBYvPVfA16w9H9JXfVNEiv+mfC8FUjDYXY4o7CvTFffH4xilv7ipmHj97nR0X67PA9Lq3ATjZHAHgZ0vyOaMhT/3qPzRs9H/qeyfm02/7okOmD5pNa7rQChAwjBCMC74VPgXqhrkATK88/hjr17ExVE/qiIIaYz+aWW5tVHAp/JLthO5Dg8JZhphuE34zsRc+iKoywyg+QDviLVnNgjiS6fRea9WFEI1dOj2t0dz7MFqkkB+g/4IUWPaeZiwotCTnjppoXMvv3ibW4udd0f0qTw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8937.namprd11.prod.outlook.com (2603:10b6:208:57c::14)
 by CO1PR11MB5059.namprd11.prod.outlook.com (2603:10b6:303:9a::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9298.16; Tue, 11 Nov
 2025 04:46:55 +0000
Received: from IA3PR11MB8937.namprd11.prod.outlook.com
 ([fe80::7fcb:5ca0:942b:bfb3]) by IA3PR11MB8937.namprd11.prod.outlook.com
 ([fe80::7fcb:5ca0:942b:bfb3%4]) with mapi id 15.20.9298.015; Tue, 11 Nov 2025
 04:46:55 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH 14/16] drm/i915/de: Replace
 __intel_de_wait_for_register_nowl() with intel_de_wait_fw_us_atomic()
Thread-Topic: [PATCH 14/16] drm/i915/de: Replace
 __intel_de_wait_for_register_nowl() with intel_de_wait_fw_us_atomic()
Thread-Index: AQHcUmoXMrmJgVwIfUKcb97cW/BBALTs52rw
Date: Tue, 11 Nov 2025 04:46:55 +0000
Message-ID: <IA3PR11MB89376BA6858B4BAFB9B1D7B8E3CFA@IA3PR11MB8937.namprd11.prod.outlook.com>
References: <20251110172756.2132-1-ville.syrjala@linux.intel.com>
 <20251110172756.2132-15-ville.syrjala@linux.intel.com>
In-Reply-To: <20251110172756.2132-15-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8937:EE_|CO1PR11MB5059:EE_
x-ms-office365-filtering-correlation-id: cdec696f-090d-4853-6cba-08de20dd5754
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700021;
x-microsoft-antispam-message-info: =?utf-8?B?Ri9GcnluU0I1VXhpeFFRc09zSnRjZGZ4cldmZ0RSMVZZMkFKVk5JWG52OFp1?=
 =?utf-8?B?VHpPTUlVSmc3cTJ4dUI0QWVsL3lXSTZFdk9RY0JHUDhCQU1USWlZckhtSmxl?=
 =?utf-8?B?dktIS0FHdXFUZTJ6ZGkvbWdBWllBOGFuRHZJVkpFSkVmNmx6ZEJTMnI0c1Vh?=
 =?utf-8?B?TE5jOHY0RTg0dnowbXFmYk53S2RXQUkzUXU4NDlOYlRIdDMyZXh6aFF4bjZQ?=
 =?utf-8?B?QTZQWm5BUW9hTUtWYThFbEtlWDJWQk5WMDBmNzZuWXhDdmNsWlFxbXdrOGhh?=
 =?utf-8?B?V1YrZFptdE9PNE9ZeFlKdHRoUmFCeDZDaHYrUlQvcEs5MXEvandyMlFjbzJQ?=
 =?utf-8?B?amlISkdkQ3EvL3ZBY3IwUmFEZzJjZWlnMW80MTYxTllXUlpxdm5jcElOUGx5?=
 =?utf-8?B?a1FUaXpyb0krTEFsNW5ublFFOEZnb01KV3kwdFM3S1hIZDAzUG5RYTZhM2lh?=
 =?utf-8?B?TG96OVVYbWFzVW8xNG9xdk9oMlEzVmpsWnE1djNyVlpyTGJqSGpoVTB5TW45?=
 =?utf-8?B?WFV6NUYvZktUWXJuempHOVBnUHpmajllekZCZitoaURYZmwrNENad0xxeTJF?=
 =?utf-8?B?UVU4WFpOK3JRNUJDdk1NMG5BT2FkTjhhRTBYU0lDR0dEY2RqZ2h0bHNFVk14?=
 =?utf-8?B?ZmFtOUlDRklpcFZwMDRkaDdXWHlmZ05ZZkR6OFNxU1FlUzBjZDc0S2FWZytT?=
 =?utf-8?B?d2pBWUtJbmZIVDErclFkZWUrVklQS056dnF5WmNNWGw4QW94NmRGbFhNOVpy?=
 =?utf-8?B?OVQxdWJsdGJRNkRDODQxRDhLNmhsQWM2S2FlTk40cWE4Z2labUV0eWttb05J?=
 =?utf-8?B?S1JhblBUMm8yWWJFMDkwYWM2OW5pWVhOZFNaMmE2RndYbmVxTExjdkgwbDJM?=
 =?utf-8?B?UVJYN3ZPSmRUaE1QaWZaMGp3K24wem1aQVQyeThlalJwYXl0VUdRMGxyZnhu?=
 =?utf-8?B?UTRzTDhjQlM4NVNEeGdycWdsaE10Wkc4RGhCRkZ1WTlMQ2ErSlJ0d3VUVDJq?=
 =?utf-8?B?UUVVemJudlJLT0hIS1VzZStHek9WbWF4N1pUL2FzWFhOZkM0azBLN1Q2Qmdr?=
 =?utf-8?B?TWdZNjhnWWcvRytwVCsvd2NxdHVNRlErSGxwOTdvVDVBbmhpV0FDTnpDUFln?=
 =?utf-8?B?TkZvTHNSdldrQTdZWjJWM1hESFNHMlBDT243ckpJZlY1Z2x5RjBIK2hJWVZB?=
 =?utf-8?B?dGNWRTVlVytFUU1mVjdwOS9QWXdiOERSaldKK0wxVWpuNTNKSGtUTVJNMUYy?=
 =?utf-8?B?amhXSGg4VEUvN3NNMmY0N2FjZVZ4UEhadVd1a242UjFNVEhBYW5MOVpsczJ5?=
 =?utf-8?B?SG1tQTZ0cHZoUHJWc1F0WG5EMFJHTWdWbjVSbEpidVhkb2NHMUJmK1RpSGZq?=
 =?utf-8?B?OU4zSEFISGQzV0czLzZBU3l3R0xWMTY0cmJMUTJ5WXdpVDhDQTFYTmxVU0Vj?=
 =?utf-8?B?M2UyRXRVNjVocXNFVno4Y0kxemYvUVZVb1RnWC9XT2xsWlU5bHJIbUpLaE1W?=
 =?utf-8?B?TjVOQ3UrNVdwYnQ4Tk5YRStld3htakFGTVRTek84SnVXVzhzcXd3L0ZYdXor?=
 =?utf-8?B?WHl5VUNDUXVWOFJMcUtDTUR2cmZtZHdyZFZ3WGJZL3FBWFNQdE9BUENWd0ZB?=
 =?utf-8?B?K2xVTTlUWkRPVzhNZThMQ0xXcTBFdVVkMlJEQW5TNFkrM001a1pVRzU0MVpv?=
 =?utf-8?B?b0RFeENqK2F1cGI3S3Y1L1Fjb240b1QwRXF3NS9MajhOYWJiYXlacUVadHZF?=
 =?utf-8?B?VXppVmMxdlBWTHV6WkxZZVJ1eFMxeTd0TGkyVDJJSy9KYlp6a0Z3UlJlVDIx?=
 =?utf-8?B?ZDNSZXVJVVRzUFFEdkpjWGp1RjVJejdkV1J6TXRSd1BSTnM4MFdKNjUxMlBh?=
 =?utf-8?B?ZlkxR1VZQnhSMnVkVXp6dVZWYng0UEFUTEtKRmVvT2lCTERxbkVGSWFibE42?=
 =?utf-8?B?ak1JWTB4eFFIT0UxVEliR29ndWFJTlR2djVqd2x3dFlHbGx1bXdMWUhlc3Ra?=
 =?utf-8?B?NUVPdXpkSFRxc1JRR0J4aXJWOE5NL1Rmbk9PUlBTVUZDa3YwT1N6VXdtcnl4?=
 =?utf-8?Q?JvYwzh?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8937.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?RUh6Q2JSS0ZwOHEwdlpodFRIM1hNQmZ5UVdlOUNSbXlVa0dBYlBKRlZFdjZ1?=
 =?utf-8?B?THo2NFErTFFPekJNVzNhamt4QjZMY0pMcUVnUkova0xWTmZDYXduRTBwcHV0?=
 =?utf-8?B?ZXd5eGI0aWxFenNtSW94UkZidUdqdmxNTXFmVGxadS9FNU1TdldPYi91amt1?=
 =?utf-8?B?d2t5YWxUTWlTZzZPK20wcy8xMVgwOEdTdGRoUkY4eHNROFFsM0RrdnRPWDR0?=
 =?utf-8?B?K0RSVVRtZW5wRllibHJrL3FqV0VBMjB1c0ZpOUV4VGJMMC9ZZ0JOU3Fjb3Rr?=
 =?utf-8?B?bXJTUmhPQ1lMOTBnVXQrYnpOTm85dEw4VXlJY0JmeDVRVVNQem9Pc3VyUmR5?=
 =?utf-8?B?eVpKaGVsN3FrMEdyZ2hpZzVqN1pLZyswN0VhaHNlcjBVUDhOYUNWL3RNYU54?=
 =?utf-8?B?dnFqY1RMRGIwalhpZVBiRXU4N1Nzc1dKSm9vM2o4N2lZREo5eXptMkU4MjM3?=
 =?utf-8?B?ZS9LWVRXZlNYQW1PY1lYdDNHczNwdGF6K1VodDVCSHUvYXBMVE9kbElVR0N4?=
 =?utf-8?B?WGtHaG94RGZUZldTWjhvRnVYSXVUakFqTGZGZUl1MU8zcUtVUU1oOHJ1NHN2?=
 =?utf-8?B?Y0ZQb0RsN0tLTldUWTB0OWJGcG92VitFY01NdmdmWFhtdk5aQ1FmVzRBWURO?=
 =?utf-8?B?TnhwaE10NFdQc3EvbVdwcmRPOGxQU0RNVFA5RFYwZmZYa29IMWQ3MTdSUUpl?=
 =?utf-8?B?VG9uMGVxSlB1RHliZnp2OGhwa2lhTzh2N3pWS2RGbzAvNTErcVFCRlBHaUVQ?=
 =?utf-8?B?cHNIQjlwc1FFWUNWbWtMS2xDNjZ5OWFvcHlSU0tDY3NIMi9HYno5b2hIRlhj?=
 =?utf-8?B?azNzNWhSWjJSajRTNzNTUkVZbGE0QldSUHQvbjQ4SlpEY2pTQjI2UnhBUmhs?=
 =?utf-8?B?dm5HaWg4V3dIbDZZMXFia1p6Y1hVWkpyMVh4bzN3ampibEZTNGprL2NVRzly?=
 =?utf-8?B?Ym1Hc2lqaHJtdi84aS81SXYvdDJzbEVBdklJa0FPOUJZaFVSOWV4Z3R1dFJC?=
 =?utf-8?B?YjFsbVFsWTFndkhBSk82c0xjbFJYY3cxMVlSc2s3WG4vMHc1WFV3NFR1UDVF?=
 =?utf-8?B?UDVxWHpYd2RKRFRBNGhTR2s0dzZTUndPVVJ1QURzcHYxQ1pYV3lOT2pzMXY1?=
 =?utf-8?B?ZndIVlFTWGpPRHNOUENqaWhBTFhKUlZQNnZoSkdXN3NBTGMrcStQOVMva1U0?=
 =?utf-8?B?QUx2Vmp5a01JbUllR2RjaytLS0RUSk51R0lheXQ2MlN0ZE9hODlLclRWeTNQ?=
 =?utf-8?B?RkpJN3BsVnhOL25kc0EvaTcxWGs0MzFiUDltbVNPbzROVklHZWh6NllFWnoy?=
 =?utf-8?B?UWRoMTYyYU43TUpvVVVYTUVJUnNUSjhheGgrVXAvOXRMRFlaczFYS1VsZGxy?=
 =?utf-8?B?NDVqei83UGU0VjRUWndFS2ZUT1VWcGtrNnV4RjdIR1VUSEZNbUZVcUVBYnVI?=
 =?utf-8?B?ci85ZUdHVmtobitSSkhvSjRYU0doVnFzL3gycnBncTFJRnhIM05DTHhYT1hN?=
 =?utf-8?B?UWxTM3Z5SVhveXY3dUMyN091UlcxY2dlZ25YM3JJMUEzL1VqL3g0SzVpVk5Q?=
 =?utf-8?B?ZUIxS2kvRUlESXB2eEowa290VlZleGFNY3VhWkVxVWVIYlVvRjhuMDRnc2Fa?=
 =?utf-8?B?RDNzbzVmb0xXZ1hKM0kzVGRIcEp4WnlSRm5MeTJPSVhtYWR3Wmh6LzFzNHhL?=
 =?utf-8?B?cjZZbTRpRTd4YW1hMHRjSGFVL0lkSm9xQ0gycUVCUmVReDNXeHBlbkJ3b3A3?=
 =?utf-8?B?U1NJNWxNZVYyaHNuU3hYODZhUWRXR2w5SEd2Vk9PNHZtZ2RZUGU1dW9Tdm4x?=
 =?utf-8?B?V29HNDNKREo5ejRMZkpPdzdVWFFxVW10blpWQWs1SlN6ZEZId1pBOU9OY3pk?=
 =?utf-8?B?b2NjR29LbXFHOFRQWFpRVG0xRWpRWGxWUEp2SFRuTVI4MVErdm9WdUpTT2Rw?=
 =?utf-8?B?L2JUOUt6Uk9GSzUzbEpONHYzYlRTeFhYWmw1cnBmYkx1aDJOVUIxc2g1NHVJ?=
 =?utf-8?B?SWFURFhnQzVIL2R0c01VVWpBd0R6TkllZkJlTmNzRW0xdWJ6ZzRid1ZwYUJa?=
 =?utf-8?B?Q2xIYUFxcWNETlNWa1JOVHpHM2V3MU1vNm5VcENDUmc4RldGNU81eHFNcFlj?=
 =?utf-8?Q?rGs5WIt/g/rmefcSsH7UDA1gA?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8937.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cdec696f-090d-4853-6cba-08de20dd5754
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Nov 2025 04:46:55.8075 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: haPECclzWHrd3bnAr8U+SgCN4fNiSNotzbAShR8k+y1Wn1ZTWF8zxg7SoVpGGTu4in1HpJJOawHlIWqY7nMGEw==
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

PiBTdWJqZWN0OiBbUEFUQ0ggMTQvMTZdIGRybS9pOTE1L2RlOiBSZXBsYWNlDQo+IF9faW50ZWxf
ZGVfd2FpdF9mb3JfcmVnaXN0ZXJfbm93bCgpIHdpdGggaW50ZWxfZGVfd2FpdF9md191c19hdG9t
aWMoKQ0KPiANCj4gRnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4Lmlu
dGVsLmNvbT4NCj4gDQo+IE51a2UgdGhlIHJlbWFpbmluZyBfbm93bCgpIHN0dWZmIGZyb20gdGhl
IHdha2Vsb2NrIGNvZGUgaW4gdGhlIGZvcm0gb2YNCj4gX19pbnRlbF9kZV93YWl0X2Zvcl9yZWdp
c3Rlcl9ub3dsKCksIGFuZCByZXBsYWNlIGl0IHdpdGgNCj4gaW50ZWxfZGVfd2FpdF9md191c19h
dG9taWMoKSB0aGF0IHVzZXMgdGhlIGxvdyBsZXZlbCBfZncoKSByZWdpc3RlciBhY2Nlc3NvcnMN
Cj4gb24gbGluZSB3aXRoIHRoZSByZXN0IG9mIHRoZSBjb2RlLg0KPiANCj4gTm8gY2hhbmdlIGlu
IGJlaGF2aW91ciBzaW5jZSB3YWtlbG9ja3MgYXJlIG9ubHkgc3VwcG9ydGVkIG9uIHhlLCBhbmQg
eGUNCj4gZG9lc24ndCBoYXZlIHVuY29yZS5sb2NrIG5vciB1bmNsYWltZWQgcmVnaXN0ZXIgZGV0
ZWN0aW9uIHN0dWZmLg0KPiANCj4gU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxs
ZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCg0KTEdUTSwNClJldmlld2VkLWJ5OiBTdXJhaiBL
YW5kcGFsIDxzdXJhai5rYW5kcGFsQGludGVsLmNvbT4NCg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGUuaCAgICAgfCAxOSArKysrKysrKystLS0tLS0tLS0t
DQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RtY193bC5jIHwgMTQgKysr
KysrKy0tLS0tLS0NCj4gIDIgZmlsZXMgY2hhbmdlZCwgMTYgaW5zZXJ0aW9ucygrKSwgMTcgZGVs
ZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kZS5oDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZS5o
DQo+IGluZGV4IDY1NTg2N2VhNzZiOC4uYTdjZTNiODc1ZTA2IDEwMDY0NA0KPiAtLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RlLmgNCj4gKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZS5oDQo+IEBAIC05NywxNiArOTcsNiBAQCBpbnRlbF9k
ZV9ybXcoc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXksIGk5MTVfcmVnX3QNCj4gcmVnLCB1
MzIgY2xlYXIsIHUzMiBzZXQpDQo+ICAJcmV0dXJuIHZhbDsNCj4gIH0NCj4gDQo+IC1zdGF0aWMg
aW5saW5lIGludA0KPiAtX19pbnRlbF9kZV93YWl0X2Zvcl9yZWdpc3Rlcl9hdG9taWNfbm93bChz
dHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSwNCj4gLQkJCQkJIGk5MTVfcmVnX3QgcmVnLA0K
PiAtCQkJCQkgdTMyIG1hc2ssIHUzMiB2YWx1ZSwNCj4gLQkJCQkJIHVuc2lnbmVkIGludCBmYXN0
X3RpbWVvdXRfdXMpDQo+IC17DQo+IC0JcmV0dXJuIF9faW50ZWxfd2FpdF9mb3JfcmVnaXN0ZXIo
X190b191bmNvcmUoZGlzcGxheSksIHJlZywgbWFzaywNCj4gLQkJCQkJIHZhbHVlLCBmYXN0X3Rp
bWVvdXRfdXMsIDAsIE5VTEwpOw0KPiAtfQ0KPiAtDQo+ICBzdGF0aWMgaW5saW5lIGludA0KPiAg
aW50ZWxfZGVfd2FpdF91cyhzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSwgaTkxNV9yZWdf
dCByZWcsDQo+ICAJCSB1MzIgbWFzaywgdTMyIHZhbHVlLCB1bnNpZ25lZCBpbnQgdGltZW91dF91
cywgQEAgLTE1MCw2DQo+ICsxNDAsMTUgQEAgaW50ZWxfZGVfd2FpdF9md19tcyhzdHJ1Y3QgaW50
ZWxfZGlzcGxheSAqZGlzcGxheSwgaTkxNV9yZWdfdA0KPiByZWcsDQo+ICAJCQkJCSAgICB2YWx1
ZSwgMiwgdGltZW91dF9tcywgb3V0X3ZhbHVlKTsgIH0NCj4gDQo+ICtzdGF0aWMgaW5saW5lIGlu
dA0KPiAraW50ZWxfZGVfd2FpdF9md191c19hdG9taWMoc3RydWN0IGludGVsX2Rpc3BsYXkgKmRp
c3BsYXksIGk5MTVfcmVnX3QgcmVnLA0KPiArCQkJICAgdTMyIG1hc2ssIHUzMiB2YWx1ZSwgdW5z
aWduZWQgaW50IHRpbWVvdXRfdXMsDQo+ICsJCQkgICB1MzIgKm91dF92YWx1ZSkNCj4gK3sNCj4g
KwlyZXR1cm4gX19pbnRlbF93YWl0X2Zvcl9yZWdpc3Rlcl9mdyhfX3RvX3VuY29yZShkaXNwbGF5
KSwgcmVnLCBtYXNrLA0KPiArCQkJCQkgICAgdmFsdWUsIHRpbWVvdXRfdXMsIDAsIG91dF92YWx1
ZSk7IH0NCj4gKw0KPiAgc3RhdGljIGlubGluZSBpbnQNCj4gIGludGVsX2RlX3dhaXRfZm9yX3Nl
dF91cyhzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSwgaTkxNV9yZWdfdCByZWcsDQo+ICAJ
CQkgdTMyIG1hc2ssIHVuc2lnbmVkIGludCB0aW1lb3V0X3VzKQ0KPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kbWNfd2wuYw0KPiBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZG1jX3dsLmMNCj4gaW5kZXggODY5YmViNmYyODBkLi43
M2EzMTAxNTE0ZjMgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZG1jX3dsLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kbWNfd2wuYw0KPiBAQCAtMTgxLDkgKzE4MSw5IEBAIHN0YXRpYyB2b2lkIGludGVsX2RtY193
bF93b3JrKHN0cnVjdCB3b3JrX3N0cnVjdA0KPiAqd29yaykNCj4gDQo+ICAJaW50ZWxfZGVfcm13
X2Z3KGRpc3BsYXksIERNQ19XQUtFTE9DSzFfQ1RMLA0KPiBETUNfV0FLRUxPQ0tfQ1RMX1JFUSwg
MCk7DQo+IA0KPiAtCWlmIChfX2ludGVsX2RlX3dhaXRfZm9yX3JlZ2lzdGVyX2F0b21pY19ub3ds
KGRpc3BsYXksDQo+IERNQ19XQUtFTE9DSzFfQ1RMLA0KPiAtDQo+IERNQ19XQUtFTE9DS19DVExf
QUNLLCAwLA0KPiAtDQo+IERNQ19XQUtFTE9DS19DVExfVElNRU9VVF9VUykpIHsNCj4gKwlpZiAo
aW50ZWxfZGVfd2FpdF9md191c19hdG9taWMoZGlzcGxheSwgRE1DX1dBS0VMT0NLMV9DVEwsDQo+
ICsJCQkJICAgICAgIERNQ19XQUtFTE9DS19DVExfQUNLLCAwLA0KPiArCQkJCSAgICAgICBETUNf
V0FLRUxPQ0tfQ1RMX1RJTUVPVVRfVVMsDQo+IE5VTEwpKSB7DQo+ICAJCVdBUk5fUkFURUxJTUlU
KDEsICJETUMgd2FrZWxvY2sgcmVsZWFzZSB0aW1lZCBvdXQiKTsNCj4gIAkJZ290byBvdXRfdW5s
b2NrOw0KPiAgCX0NCj4gQEAgLTIxMywxMCArMjEzLDEwIEBAIHN0YXRpYyB2b2lkIF9faW50ZWxf
ZG1jX3dsX3Rha2Uoc3RydWN0DQo+IGludGVsX2Rpc3BsYXkgKmRpc3BsYXkpDQo+ICAJICogV2Ug
bmVlZCB0byB1c2UgdGhlIGF0b21pYyB2YXJpYW50IG9mIHRoZSB3YWl0aW5nIHJvdXRpbmUNCj4g
IAkgKiBiZWNhdXNlIHRoZSBETUMgd2FrZWxvY2sgaXMgYWxzbyB0YWtlbiBpbiBhdG9taWMgY29u
dGV4dC4NCj4gIAkgKi8NCj4gLQlpZiAoX19pbnRlbF9kZV93YWl0X2Zvcl9yZWdpc3Rlcl9hdG9t
aWNfbm93bChkaXNwbGF5LA0KPiBETUNfV0FLRUxPQ0sxX0NUTCwNCj4gLQ0KPiBETUNfV0FLRUxP
Q0tfQ1RMX0FDSywNCj4gLQ0KPiBETUNfV0FLRUxPQ0tfQ1RMX0FDSywNCj4gLQ0KPiBETUNfV0FL
RUxPQ0tfQ1RMX1RJTUVPVVRfVVMpKSB7DQo+ICsJaWYgKGludGVsX2RlX3dhaXRfZndfdXNfYXRv
bWljKGRpc3BsYXksIERNQ19XQUtFTE9DSzFfQ1RMLA0KPiArCQkJCSAgICAgICBETUNfV0FLRUxP
Q0tfQ1RMX0FDSywNCj4gKwkJCQkgICAgICAgRE1DX1dBS0VMT0NLX0NUTF9BQ0ssDQo+ICsJCQkJ
ICAgICAgIERNQ19XQUtFTE9DS19DVExfVElNRU9VVF9VUywNCj4gTlVMTCkpIHsNCj4gIAkJV0FS
Tl9SQVRFTElNSVQoMSwgIkRNQyB3YWtlbG9jayBhY2sgdGltZWQgb3V0Iik7DQo+ICAJCXJldHVy
bjsNCj4gIAl9DQo+IC0tDQo+IDIuNDkuMQ0KDQo=
