Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D517A4E28B
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Mar 2025 16:12:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C48B710E614;
	Tue,  4 Mar 2025 15:12:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Eydrs/Db";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 611FF10E614
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Mar 2025 15:12:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741101144; x=1772637144;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=CXdWGxBTf18iXKcon0oxtREATgKZCSrilV+INP7hFok=;
 b=Eydrs/DbM/oPB4JFMn9+Xm33vdRnppjm0lVOMgmUml4jEWRI3R4Brlmu
 6o34OTqNmu7ZY5srZQpkoSRWP46RaZCWyZuFQU/1toAoxJM40GzNtDYJQ
 08ZQGkzxIkcT7t7SZXL2VabNLL/bzZCD4EqCcUrmDVFc1wxQAOv8pntET
 IpKmf2WiuCzwetvOAjy8uExeH+1pKPn8+DpbdwYlOqhurDlhc2Fb931YG
 V5gWe+IpxC4z5cRBpwBO6ahscGFVNXjWjv3rVAgxENFaR/rCXzwx6J6Si
 /HYitJgNxhHqsY0305Y8XHKSuy7SErfdXrrChtG3O3b2G+aYNQRQ36IP7 Q==;
X-CSE-ConnectionGUID: FqZknImBR6KDtXRiTNAnsQ==
X-CSE-MsgGUID: 4YWfHdc8T4uez3RUDBgIuA==
X-IronPort-AV: E=McAfee;i="6700,10204,11363"; a="41932478"
X-IronPort-AV: E=Sophos;i="6.14,220,1736841600"; d="scan'208";a="41932478"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2025 07:12:23 -0800
X-CSE-ConnectionGUID: f6RjNHFDSfeHVpEMOUuS2w==
X-CSE-MsgGUID: h6z3J4F6QoOjXcqZc3Hb3A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="149343483"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2025 07:12:22 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Tue, 4 Mar 2025 07:12:19 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 4 Mar 2025 07:12:19 -0800
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.43) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 4 Mar 2025 07:12:18 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Oee3DSVWibUJXB1b7PHKaKYHuMPrpc8yLd99fuHH79j8+m1a1BDyt+YMWXDu7YLbRB3o5tG0Qy1c0vFD91+fetzHk5ccGKwRiNfVGoJOJrvtegGbcTdxhhkZ7Yl0Du2WKaLetJKVpXwtkS8D88ROzIbXULTHWuwqf2WUm1YZ5HrFUzBhSwX1nK8jy/7i43+sz2nDJJGl1uJMoYK6IEIelSYH+/balqvNNTPfVQL55MH1fT+5WwDT2EBpPBeJErgfu7itTT/UHlHiE0hLUqPo4dOqKCBgJ/yxjc615sYy5iT20q3qAtu7UbQU56a0isc3O4kFuGWNmsEMD09XmkW72A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CXdWGxBTf18iXKcon0oxtREATgKZCSrilV+INP7hFok=;
 b=BwkMFEv1flP18iRAesF0Y4rJnhMqtd5SMjK8JDs7AmPYpO0jrnC6juYdT2LDGV+Jb6Y2a6IqkTn3PkOOJ8Bt+icPQia0jTJq9Prbv7KaXwydthFDcZJZvLjo3VIvA+T/HfRkgZyFCw11JEQFRdcs1NBL8dFiMXkqMmlU6iXAfGPLFvrIUdtHTvIA5frznBFGIgp2tVS+hZSQ9kUqk1+4Hm3XIONlzH/brGRMxGAmBuarm/IWgYEvV3y+L/so2ipdDwhM28UDFW2X8wavx3wa2oqlojt81vH+dk6gr3PKd+6/R5g1ruptCiLlXsiXXSoDDxCeeWcrgKUZqeRTWJ3FAw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7777.namprd11.prod.outlook.com (2603:10b6:930:71::14)
 by SA1PR11MB7039.namprd11.prod.outlook.com (2603:10b6:806:2b5::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8489.28; Tue, 4 Mar
 2025 15:12:16 +0000
Received: from CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8]) by CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8%4]) with mapi id 15.20.8511.015; Tue, 4 Mar 2025
 15:12:16 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 18/19] drm/i915: Move dbuf_state->active_piepes into
 skl_wm_get_hw_state()
Thread-Topic: [PATCH 18/19] drm/i915: Move dbuf_state->active_piepes into
 skl_wm_get_hw_state()
Thread-Index: AQHbgkwmlS3VI/+Ct0CnJiVkEqmOerNjKwWA
Date: Tue, 4 Mar 2025 15:12:16 +0000
Message-ID: <586bb3d00dfa7aa0333606bcc5d0eaa9e69c5eb6.camel@intel.com>
References: <20250218211913.27867-1-ville.syrjala@linux.intel.com>
 <20250218211913.27867-19-ville.syrjala@linux.intel.com>
In-Reply-To: <20250218211913.27867-19-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.52.3-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7777:EE_|SA1PR11MB7039:EE_
x-ms-office365-filtering-correlation-id: 44c616f4-5dbc-4cca-3120-08dd5b2ef316
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?a2lacTFrSmFnQm9YUXA0UkRJeWtCa2dmM1FSbXpJT1B1UGt5aUZaaC8zSWVV?=
 =?utf-8?B?QkFZNnIwaktlNzNKM1E5TFFGTHVva1QyZ2FsMTc0eDVYaUliZ1pjQ2hvdXdL?=
 =?utf-8?B?WlNta0htMWZ4ckJvSGlpNitRNVZjNld0YzNFMW51c1k0bnpydC9VNUxOQ1kx?=
 =?utf-8?B?RjRuNTMwNmh0eHd6UVM1bGswTUJCaCswUHUxNGVpWS9HK2ExQ1ZaTmJ5aWRa?=
 =?utf-8?B?UjRMMUpPRkJQOFpvUTVaeGZjRFNxRFZKcXBCMHR6QUkrWEpWTVlsUFo0Nm5u?=
 =?utf-8?B?Wm9jZCtxN2YwZlROSWwwdVdGUFF3UXNyQ3hISEhYV2RzQ2pEN2w0ZFB4Um9H?=
 =?utf-8?B?OTlZd2FoMVk3WnM3bjczeEMwenNUWjJvTXRleDJlL3ozNmlCeTJBemRvTmN3?=
 =?utf-8?B?VGJraG95ZVpOSFB5cVZJREhadWhsMjBUUGxYYTRRcDJpUUNUcnJWUmpPdU9L?=
 =?utf-8?B?azFvS01ib05PakdPdDRtREVYMGR1SmVWelpZM2Z5dXVkcUhFSGh6c05pcnc2?=
 =?utf-8?B?TGh5MVJ1REZOdTN0YVFseWZpWjQvMjdXUkFVRTA2WTlMOEh3Y3pNTVF4QW5z?=
 =?utf-8?B?Zk15bHpwaXViQm1taHZKbnVJWXJQR1BIYldSZitmMzdxNXNuSjFjZ0tNaUZw?=
 =?utf-8?B?NCtjUUhHT2ZKSDQ1UFIwUldXWkRUdzFFcmRzbldUVWMwZURGOVBneE11UDhY?=
 =?utf-8?B?N2NtOFNoMkZGVUhsTkVwUzBUQWFjY1RpUjhvWE45RHNYV3VvdHppQkhOZGo3?=
 =?utf-8?B?blpWdXg5cXlrNFMxZUhzMTlaZC9UWmoxR2JjcUVnNTBhcUJCWVRPUnZtYmxi?=
 =?utf-8?B?d0ZleDREU0hqVzVhdERrL0tydmM2aDBzbFdKVSszOXFWREZUanZsZTdXKzFa?=
 =?utf-8?B?N3JFVXk5VlRVQkZQNTcyNU9mb1VHOHhaREJ5NUtWWEZ4cWVkRExVSGlpTmhn?=
 =?utf-8?B?a3pVRG1MNko0TkRXY3hmNGFIdyt5WCt2YzdDTE9tYXBodmNKNnl2am5kL0k3?=
 =?utf-8?B?WE5uNm94bjh4M0NWZzhabFFjdjYyeFEvNDlvVEsweVA5Z1FWNkZQZ3kxcncw?=
 =?utf-8?B?VmZpdTVuRFVweHpnV3RId1ZXaXNqSUx2Z2tjaGpiWHZ6T09RamVGV2tWSkRJ?=
 =?utf-8?B?WW9pU2V5SHUxQXNwaStkUENVSmdrdUFqeEs1RittVTMwcWtPV1NHcjlJZkJs?=
 =?utf-8?B?SjhCcWNpWnRsWUNrQXZLazkydWdsamRsTEw5ZXhJclEzUTZiZEViMHNiQVEz?=
 =?utf-8?B?TUViYU4yQ3Flb0l6ZTN5Y3ZvdjEwSnFyOFU3bjNaSSs0WFoyZm9FZE53NHl3?=
 =?utf-8?B?cFlhZUZaN0hVYjRQUkU5c0NVV2RoNDhYM2ZCTGlJVkUrSkp5Qm1rSS9GclZH?=
 =?utf-8?B?dTFIMUlWMGJaZTVYNlNDcFJmUVRoamxLT3dGd2FiT0ZpMUNmWU5YYlg3dkNW?=
 =?utf-8?B?ZWhnZzdHd053SDNwZDRxaHJ4ald1UzFJVlpIZUZ1TmZKbERTOEh2c2s0V1k2?=
 =?utf-8?B?Wm4zWWRwMXZmWDZRclRDeFFXUDdHL2ZFUC80aEQ0c0pMTGgwL3hZWVFseE9y?=
 =?utf-8?B?MmEvNGZEcSt3Q09zN1VWd1ZqbG9PNDRqZ2RiRklkNDlHeFhpMHlzc1d2VW9F?=
 =?utf-8?B?TEVSRWE3cGVicml2K29wY09IN2xFTWxjYXViUlZsN1BNV2xuT2U4dzV0bzZF?=
 =?utf-8?B?RStFVVRjVVlvcDVFbXozQStTT0ZsbjB3TC84UGNEUGFSN3Zmd0JQamsyK0F3?=
 =?utf-8?B?eUtuTUh2dHNlbS9wNmlQeEN5U1pxdTUrMENKZ3BGR1JHWm5QYnF4VWF5QjBJ?=
 =?utf-8?B?WjVkRmVFOE5POGd5UmZEeUhwQlBRYytkUURLM0prUHN5dk9jdFR0Rk1sNEo4?=
 =?utf-8?B?SHJ4eE1ta3JtaXRkQkcxbDZHRG10VU95dTBueWptOXY5VFVLSGpkU0dURlQ1?=
 =?utf-8?Q?1J9aHwWb+y+S49e2yCTqHdsXFeqZlc4J?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7777.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?TXFpWWRueThOK1NWMHl1RWZ4OVhWM0poejlvbTk5L2lKZ0x2OWFpYnQ0dysy?=
 =?utf-8?B?Kyt2TlJQYXM4YWdPbExIanU1VWVXTHJYUGJTSm5JNjZ4U2VxUUVkdEZRdHBI?=
 =?utf-8?B?VDFTVUlIL3Q1MFpuSDdHbU02SHhYRWhYakduRTBXczJYZGVTS3FQRnV6Mk5l?=
 =?utf-8?B?cWFkNjYwclBPbXhycEUrS0dOcVk3WTRaVi9ndk5vakdYeXJSUnZqQ3JTZXBu?=
 =?utf-8?B?THE2YU5GMjh6dXZuSlExK05HVjl5ZHZXSjZMT3ZTdUdvNEw3MDVVT3drMmdl?=
 =?utf-8?B?OFlKd2VMTGhESFFOd2R4Ui9RdklHanhsakhacSt6SmI3U3NNa21iQ296UlEr?=
 =?utf-8?B?d0J3d0NiQzA5WUM2SU9xVUNuUUVIMzlZQzJYc0c3b3I4RzRXdXdkdUYxa091?=
 =?utf-8?B?citFQmlCSUl0M3JYTjUzc1ludHQzYTQyQlB2dmxBdkhlUE1OTGFFcEwrMU4w?=
 =?utf-8?B?THFSWGdURWF4ek0xMVhrVHhoYW5reUtJM3VHRTBCOXJhT3EyUExQUU1qOHY2?=
 =?utf-8?B?UllpUDAvNVlJZFpMS3M0N3NIdzUyelJtVGdTemVMb2llQ1hNVXFNdTZTTm83?=
 =?utf-8?B?dDdmZVZkZ3FJOHdrZHRVYW1JU1JiNXl2cXNiZWZHU2FnNE5ZeUlocmpBVWZS?=
 =?utf-8?B?OG9sTE9SbWhiV1phaHJKRXBXaGpjQkUyMHB1N3RIL0I2UFdGRU10cndNVFZO?=
 =?utf-8?B?WEtRNVBVbWJzdmFvZDdUejBTS1BHQ3Q0MVBvcEdjSkYrcWVOK21iU3o1ZVBl?=
 =?utf-8?B?RTVUTy9BQlVCbHp2SHdWOFVTTVdydjU3YTNNak5BWU5aTi9sZ3FpVWZHcGZr?=
 =?utf-8?B?eVRlTHh5ZlR2Wktqbk9saE5FRFZVL3ExbWNNdEkwbUVadEVNbUNvUkhuS1hm?=
 =?utf-8?B?Q1FJS3h0dHIxckJJWTViR1dqL0srNnBrZUZHQ3FLdGxsZ0ZDZmxsbldPVHZs?=
 =?utf-8?B?cHA3VU84ZEsrZ0RRQ3dkVE94Vis2TFlrQjAzc1p5YWdkOFpwc0JhQ3ByQWxo?=
 =?utf-8?B?N0FRTUp0VXRsZHpFL1gxeDR0OGwxZ2pOaENhZkNqbURIODBQRDZnQ3NFZUtZ?=
 =?utf-8?B?Zm8zV3lwb29GanFKcCtvdUl6QTl1TU42MXpoamowS0hWZlY3dXNVZzJmMDZS?=
 =?utf-8?B?enY5ektyT2JsQlZQVVk4MnV0bDduVnQwZjBqZ1M1Zmt2UTE0UVMwTkIvaUd3?=
 =?utf-8?B?SGcyOW4rVEdaZGoxeVQyendYaWdnUGQ2WTBaVTg5Y0RZVXNjUnRyTm9nQytk?=
 =?utf-8?B?M0JPUHFXdmtVN09hYnd6VDVPbm45eXFhRjVScWo2NGZoekY1aFJNUGlsU3o5?=
 =?utf-8?B?VndlYkRrdmVxZ3RBRHhsbWdYYnp0OER2czhZRFJnNkVoTG5pYkNGbS9BVkRz?=
 =?utf-8?B?dFFJMm0wNEw4ZEJDb3IrWFlPTWR3UzJ5c3VJeDhNWEErMmlDYkVOMU9BQU9H?=
 =?utf-8?B?MHZLbk1vdXozVEJJK3Q5ZGh4UFFCV3BIQVVVZW1ZaThTYVFpMmdXMFZKMTRL?=
 =?utf-8?B?dERIYW55Z05UcUxEVC9NM0o2TnRDYzZyZWRxdDBZL2FONCtIWCt2SEJqd1Fx?=
 =?utf-8?B?MUt6SENWY1ZVS3d4NTlwUUNyQ0J4bUVpT0dpUXhDeTEvRlk0V3BLQzdoWFE2?=
 =?utf-8?B?UzVpUlpiVDF4WjNzckJnV3hFNWIwcWRJZnJXWnRlbVBHK0JjMGFrVk12dWU2?=
 =?utf-8?B?SmxjemZZYXNzcVNNbFV4aVRZVDhENHZFQW5GLytvK2dia3BWb05qVlN1Si9P?=
 =?utf-8?B?VHlCUjI3SGg1Z2JIekhzc1dpUHpGNjlpUHdmM2IzQUl1bVgwUjlKR08rekdk?=
 =?utf-8?B?MXVXZFRVYXRvaFVvNlJQT01hNkJxYWtCRDIyMHFYWmFaMnNkTmtCb1YydTJB?=
 =?utf-8?B?ZldEVnBUcU4ramlVT1pSakhHWGVFZTU4ZXIvbXBIQkpkdWxXOGR6YmxPcTdY?=
 =?utf-8?B?ODlVdHRCZkRjd0NCOGh1bzYyWE5ZQmNSWXRuSGhJL2UrRDZnYjBCOVhIaFZN?=
 =?utf-8?B?Q1JaMVUzRUMwR3FSRjl1YzlWS3EvZ3RWY29zTmIyajhkZVFoK3BHTklDSXZJ?=
 =?utf-8?B?RzgydGtHTWlUbmlaOHBJNHl2eGxFT1pYK0kyRkpDNzF5WFAwMnZJeHZwZjdX?=
 =?utf-8?B?cXZrRVpiVC91enhIbll5RGk3T1ZrdjhSSy9wSzRrbDgyL0FGRDE1U1p0UGc0?=
 =?utf-8?Q?GPCDK++7ivpauGegXnYCN1g=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <80841DA580954E47B2D7D169EC5A66C9@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7777.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 44c616f4-5dbc-4cca-3120-08dd5b2ef316
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Mar 2025 15:12:16.1277 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: cDo0UNMVtxuC2FrjZUhmtXHU5EE+kS5eFMO8M7YpB7gcov9v/dMa4veEXddwCuRu9qauvlvqQ1uyptFhzYwsLgUTTgFajExDDypqesbJ2Rs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB7039
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
PiANCj4gTW92ZSB0aGUgZGJ1Zl9zdGF0ZSByZWFkb3V0IHBhcnRzIGludG8gc2tsX3dtX2dldF9o
d19zdGF0ZSgpDQo+IHNvIHRoYXQgdGhlIGRldGFpbHMgYXJlIGJldHRlciBoaWRkZW4gZnJvbSBz
aWdodC4NCj4gDQo+IFRoaXMgd2lsbCBzdG9wIHVwZGF0aW5nIHRoaXMgb24gcHJlLXNrbCwgYnV0
IHRoYXQncyB3aGF0IHdlIHdhbnQNCj4gc2luY2UgdGhlIGRidWYgc3RhdGUgaXMgb25seSB1c2Vk
IG9uIHNrbCsuDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5
cmphbGFAbGludXguaW50ZWwuY29tPg0KPiAtLS0NCj4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX21vZGVzZXRfc2V0dXAuYyB8IDggLS0tLS0tLS0NCj4gwqBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L3NrbF93YXRlcm1hcmsuY8KgwqDCoMKgwqDCoCB8IDUgKysrKy0N
Cj4gwqAyIGZpbGVzIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgOSBkZWxldGlvbnMoLSkNCj4g
DQpBZ2FpbiBteSBwcmV2aW91cyBzdWdnZXN0aW9uIG9mIGFjdGl2ZV9waXBlcyBpbiBhbiBlYXJs
aWVyIHBhdGNoIHdvbnQgYmUgcmVsZXZhbnQgYW55bW9yZSBhZnRlciB0aGlzDQpwYXRjaA0KDQpS
ZXZpZXdlZC1ieTogVmlub2QgR292aW5kYXBpbGxhaSA8dmlub2QuZ292aW5kYXBpbGxhaUBpbnRl
bC5jb20+DQoNCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfbW9kZXNldF9zZXR1cC5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9tb2Rlc2V0X3NldHVwLmMNCj4gaW5kZXggNmE0MTQyZDdkMDI1Li4zMTJiMjFiMWFiNTkgMTAw
NjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfbW9kZXNldF9z
ZXR1cC5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfbW9kZXNl
dF9zZXR1cC5jDQo+IEBAIC02OTMsOCArNjkzLDYgQEAgc3RhdGljIHZvaWQgcmVhZG91dF9wbGFu
ZV9zdGF0ZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkNCj4gwqBzdGF0aWMgdm9pZCBp
bnRlbF9tb2Rlc2V0X3JlYWRvdXRfaHdfc3RhdGUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5
MTUpDQo+IMKgew0KPiDCoAlzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSA9ICZpOTE1LT5k
aXNwbGF5Ow0KPiAtCXN0cnVjdCBpbnRlbF9kYnVmX3N0YXRlICpkYnVmX3N0YXRlID0NCj4gLQkJ
dG9faW50ZWxfZGJ1Zl9zdGF0ZShpOTE1LT5kaXNwbGF5LmRidWYub2JqLnN0YXRlKTsNCj4gwqAJ
c3RydWN0IGludGVsX3BtZGVtYW5kX3N0YXRlICpwbWRlbWFuZF9zdGF0ZSA9DQo+IMKgCQl0b19p
bnRlbF9wbWRlbWFuZF9zdGF0ZShpOTE1LT5kaXNwbGF5LnBtZGVtYW5kLm9iai5zdGF0ZSk7DQo+
IMKgCWVudW0gcGlwZSBwaXBlOw0KPiBAQCAtNzAyLDcgKzcwMCw2IEBAIHN0YXRpYyB2b2lkIGlu
dGVsX21vZGVzZXRfcmVhZG91dF9od19zdGF0ZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkx
NSkNCj4gwqAJc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXI7DQo+IMKgCXN0cnVjdCBpbnRl
bF9jb25uZWN0b3IgKmNvbm5lY3RvcjsNCj4gwqAJc3RydWN0IGRybV9jb25uZWN0b3JfbGlzdF9p
dGVyIGNvbm5faXRlcjsNCj4gLQl1OCBhY3RpdmVfcGlwZXMgPSAwOw0KPiDCoA0KPiDCoAlmb3Jf
ZWFjaF9pbnRlbF9jcnRjKCZpOTE1LT5kcm0sIGNydGMpIHsNCj4gwqAJCXN0cnVjdCBpbnRlbF9j
cnRjX3N0YXRlICpjcnRjX3N0YXRlID0NCj4gQEAgLTcxOSwxNyArNzE2LDEyIEBAIHN0YXRpYyB2
b2lkIGludGVsX21vZGVzZXRfcmVhZG91dF9od19zdGF0ZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0
ZSAqaTkxNSkNCj4gwqAJCWNydGMtPmJhc2UuZW5hYmxlZCA9IGNydGNfc3RhdGUtPmh3LmVuYWJs
ZTsNCj4gwqAJCWNydGMtPmFjdGl2ZSA9IGNydGNfc3RhdGUtPmh3LmFjdGl2ZTsNCj4gwqANCj4g
LQkJaWYgKGNydGNfc3RhdGUtPmh3LmFjdGl2ZSkNCj4gLQkJCWFjdGl2ZV9waXBlcyB8PSBCSVQo
Y3J0Yy0+cGlwZSk7DQo+IC0NCj4gwqAJCWRybV9kYmdfa21zKCZpOTE1LT5kcm0sDQo+IMKgCQkJ
wqDCoMKgICJbQ1JUQzolZDolc10gaHcgc3RhdGUgcmVhZG91dDogJXNcbiIsDQo+IMKgCQkJwqDC
oMKgIGNydGMtPmJhc2UuYmFzZS5pZCwgY3J0Yy0+YmFzZS5uYW1lLA0KPiDCoAkJCcKgwqDCoCBz
dHJfZW5hYmxlZF9kaXNhYmxlZChjcnRjX3N0YXRlLT5ody5hY3RpdmUpKTsNCj4gwqAJfQ0KPiDC
oA0KPiAtCWRidWZfc3RhdGUtPmFjdGl2ZV9waXBlcyA9IGFjdGl2ZV9waXBlczsNCj4gLQ0KPiDC
oAlyZWFkb3V0X3BsYW5lX3N0YXRlKGk5MTUpOw0KPiDCoA0KPiDCoAlmb3JfZWFjaF9pbnRlbF9l
bmNvZGVyKCZpOTE1LT5kcm0sIGVuY29kZXIpIHsNCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvc2tsX3dhdGVybWFyay5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9za2xfd2F0ZXJtYXJrLmMNCj4gaW5kZXggMGJkN2FhM2IyODc3Li4yZDBkZTFj
NjMzMDggMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvc2tsX3dh
dGVybWFyay5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvc2tsX3dhdGVy
bWFyay5jDQo+IEBAIC0zMTU3LDYgKzMxNTcsNyBAQCBzdGF0aWMgdm9pZCBza2xfd21fZ2V0X2h3
X3N0YXRlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQ0KPiDCoAkJZGJ1Zl9zdGF0ZS0+
am9pbmVkX21idXMgPSBpbnRlbF9kZV9yZWFkKGRpc3BsYXksIE1CVVNfQ1RMKSAmIE1CVVNfSk9J
TjsNCj4gwqANCj4gwqAJZGJ1Zl9zdGF0ZS0+bWRjbGtfY2RjbGtfcmF0aW8gPSBpbnRlbF9tZGNs
a19jZGNsa19yYXRpbyhkaXNwbGF5LCAmZGlzcGxheS0+Y2RjbGsuaHcpOw0KPiArCWRidWZfc3Rh
dGUtPmFjdGl2ZV9waXBlcyA9IDA7DQo+IMKgDQo+IMKgCWZvcl9lYWNoX2ludGVsX2NydGMoZGlz
cGxheS0+ZHJtLCBjcnRjKSB7DQo+IMKgCQlzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19z
dGF0ZSA9DQo+IEBAIC0zMTY4LDggKzMxNjksMTAgQEAgc3RhdGljIHZvaWQgc2tsX3dtX2dldF9o
d19zdGF0ZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkNCj4gwqANCj4gwqAJCW1lbXNl
dCgmY3J0Y19zdGF0ZS0+d20uc2tsLm9wdGltYWwsIDAsDQo+IMKgCQnCoMKgwqDCoMKgwqAgc2l6
ZW9mKGNydGNfc3RhdGUtPndtLnNrbC5vcHRpbWFsKSk7DQo+IC0JCWlmIChjcnRjX3N0YXRlLT5o
dy5hY3RpdmUpDQo+ICsJCWlmIChjcnRjX3N0YXRlLT5ody5hY3RpdmUpIHsNCj4gwqAJCQlza2xf
cGlwZV93bV9nZXRfaHdfc3RhdGUoY3J0YywgJmNydGNfc3RhdGUtPndtLnNrbC5vcHRpbWFsKTsN
Cj4gKwkJCWRidWZfc3RhdGUtPmFjdGl2ZV9waXBlcyB8PSBCSVQocGlwZSk7DQo+ICsJCX0NCj4g
wqAJCWNydGNfc3RhdGUtPndtLnNrbC5yYXcgPSBjcnRjX3N0YXRlLT53bS5za2wub3B0aW1hbDsN
Cj4gwqANCj4gwqAJCW1lbXNldCgmZGJ1Zl9zdGF0ZS0+ZGRiW3BpcGVdLCAwLCBzaXplb2YoZGJ1
Zl9zdGF0ZS0+ZGRiW3BpcGVdKSk7DQoNCg==
