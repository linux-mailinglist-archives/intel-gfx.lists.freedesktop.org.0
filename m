Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 532C5A87757
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Apr 2025 07:37:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 24D7610E46F;
	Mon, 14 Apr 2025 05:37:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Gb4yUUPp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8FBD310E0AB;
 Mon, 14 Apr 2025 05:37:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744609057; x=1776145057;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=gr/a56ymkq9pVl4MohsoZjg8xlMvMkVm3Rhtnnmbj8s=;
 b=Gb4yUUPp/GaTt5E8dS8i4heb41iAp8CfGCgvQnTBbrON3Hd6haoaESMj
 x5FsvJEC7+DFbu6k85Qzwf8yCTmNidDLh4wwE8M2Q5QQQXXZ1aGwqQdkP
 IQ1ePtPMD+ftKa7UwK1Oq4kliD8qhFAuRTtLZTJ6GzYR7KtzztD+8r8FH
 bCNnGHbYxRgxKNEqEuBImghpbWbx4Tefht0pdZPVcEa81GPvvbym62M9A
 hepROsjoc07TGr1pjUsqW3Xh5ltxdw0ntE9sTrd6oeSEy1ZxLXpmmFi4S
 PsU7K8a8C+pDcAE/YFRszPKEr85w6vOeTg4wl1OabZEeqrS0WHBMsAh6e g==;
X-CSE-ConnectionGUID: MfE848OMQB2dSfRE9TIVfA==
X-CSE-MsgGUID: nzasTdaVQ4+vj7KNHnhL7g==
X-IronPort-AV: E=McAfee;i="6700,10204,11402"; a="45202573"
X-IronPort-AV: E=Sophos;i="6.15,211,1739865600"; d="scan'208";a="45202573"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2025 22:37:37 -0700
X-CSE-ConnectionGUID: KMcilBoDSHupbMH7cIojTA==
X-CSE-MsgGUID: NBH/cH3mQSyQiNKaQRFUhQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,211,1739865600"; d="scan'208";a="134690589"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2025 22:37:37 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Sun, 13 Apr 2025 22:37:36 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Sun, 13 Apr 2025 22:37:36 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.176)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Sun, 13 Apr 2025 22:37:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=VLvW7UYQMTqq1C4YFMbbIBTxUrW6stZLlkWlMQL8IcDsYVk81YzDExVIMcBz7HfEKhVYUbNQ1SPIorfCwut8yCpapwaL5hxuebDHH7SCTBGEGK7Hn2b/Zhxq7+hThfJu4ETRwHxTSt0xaWP4bHhTNTEgBvU6K9G6hGM6Px/nezTCX4UCrRDEVd14nYiJ557b0VwKCZ1fRkTdBCDHPWjVPg7rqZ6lmAXd91RwZdZo275FrCUYs4/aCsyqLZe99NwayRYMpRUBejFeGy2SK9FytV4gksuDE2lvooXPGwc5YlWfPn42c6Qh0qh1uR70sujrmamzkz+v7o6DB7Vu9nkOWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gr/a56ymkq9pVl4MohsoZjg8xlMvMkVm3Rhtnnmbj8s=;
 b=HRnJYG8XDGH0EyUL9tcrmqudfV22qVBFivn/ArHbBYWqmWdW+uu1UatGYdRvPISMxnfZIyiyyH0hnJ5A15mQeKWFlSGITObQZBycRdu+rUlitT/NqYoi/ghoEbZX30PSnfKFfP/ttiDpEb69n3ZrGnF7F82NXxysFrFzqLQ76V9tLYrY5v8Q8EgJUFLnNTb5d6JhxnWPfvHIcWU57EbZegWAh4L/24MsQB7CMQd4ZJzQcb49BmotGAZ4ioics/B19wvMROnPvcU8R7clU0ImogvFfJhsoidpEn2Y/mz3jMnVji9hR9ndPvgWzMW0EJZ8fNgCe1tHti1fCsfp2ne05Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by PH7PR11MB5984.namprd11.prod.outlook.com (2603:10b6:510:1e3::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8632.32; Mon, 14 Apr
 2025 05:37:34 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::dafa:d38d:8ac1:e843]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::dafa:d38d:8ac1:e843%2]) with mapi id 15.20.8632.025; Mon, 14 Apr 2025
 05:37:34 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: Jani Nikula <jani.nikula@linux.intel.com>, "Deak, Imre"
 <imre.deak@intel.com>
Subject: RE: [PATCH v5 1/2] drm/i915/display/dp: Remove support for UHBR13.5
Thread-Topic: [PATCH v5 1/2] drm/i915/display/dp: Remove support for UHBR13.5
Thread-Index: AQHbpR/n7hvn6xBfkE6JY9rQFhbD5rOitD+w
Date: Mon, 14 Apr 2025 05:37:34 +0000
Message-ID: <IA0PR11MB7307CE76BA7C7B1E79003E11BAB32@IA0PR11MB7307.namprd11.prod.outlook.com>
References: <20250404-dprates-v5-0-c93f561a095e@intel.com>
 <20250404-dprates-v5-1-c93f561a095e@intel.com>
In-Reply-To: <20250404-dprates-v5-1-c93f561a095e@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB7307:EE_|PH7PR11MB5984:EE_
x-ms-office365-filtering-correlation-id: 83b93936-7984-4c88-4424-08dd7b167534
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?SCt5WXFXdFdta0J3cThpdSs5WSt1NE5PSVVodGo4eis2WHlKMTlZOTV2M3BE?=
 =?utf-8?B?MUsxMld2dVd0ajdoYXdZNmJ1cERkYm5paWFhTWJYa1FjVjFuVDJ2cTN2S2Qx?=
 =?utf-8?B?a2F0YndjWkZXQjRWZERjR3llT3kwQXBTMkJHUXIwOWpTTVVtUFJWWEV6V01L?=
 =?utf-8?B?WXNoNUlENWFESTR2RnpDODV6UlhXYXlWZTN6VUszR1hVRjBYejNiRktCT0tV?=
 =?utf-8?B?SFJ6MGdweCtDTUZVKzQ5bTJpWERjZDJuVXZVVnFOMjhVcytXRVVvdE05eDcz?=
 =?utf-8?B?YmFkcmZsdTMxZUM3cXQvakg4d2VaSEJJaUZtOVB0V1B4S25ZM09Tb1FOZllq?=
 =?utf-8?B?U25CQjZJUGlBQklwL0QxL3hwa3pVcFJESXRjdklSMmVoalJyNVF0SWlyUmRw?=
 =?utf-8?B?SnhBVzNwN1p6a2pqSUNNRUdHSEpKS0QyaWtXVmlqUEY0NWFpQWgrSGYrWnFq?=
 =?utf-8?B?RlJOYzliaWZacWl6Tk53NVN5a290Um1FZGk4Q01FLzRNNEFEZXkwUjArRVZs?=
 =?utf-8?B?akpLOE5wUWxWcWxtWjRDd3ZEZkwzUm5EZE9FQVFMd0dPbjVCUzUzekRNMVBi?=
 =?utf-8?B?NmVoUzZDVUJhY01zRWttTlpsdE5LdklOYVVIRzMzeFJtZVZKNElSODFUaCtS?=
 =?utf-8?B?NkhBL2FzVmRTd2Rya1VTVUNtTzlJZmN5U3NzcndxTzNVSHNjVloyL2Y1eDFo?=
 =?utf-8?B?OVJub01jYWJPSE1VZGRwUUhTUVU2REpWK2FvcU51WlJza2hpRGVoOGR3T09t?=
 =?utf-8?B?SHlnaFdoTGFsRmQrVUxiSHBlUUhTNVlaK213UUd6TVh3cjZUbWpLNHlxSEsz?=
 =?utf-8?B?WUVPeEszOXJPYlJHaXR2NVdHcnBrbWNQWTA5ZE1YU0JKdzV1WTR0Q3BHOENv?=
 =?utf-8?B?WGhLWnJSa0J0YzNnc3dnN1ZiYzRlVDljZisvb2lQeThkK2pjb20xSXBHVlFs?=
 =?utf-8?B?aGpzcUhXVWZydG10WGp0ZlU1aUF3ZFNMLzBKQ0crdC9HOFVvY2hCU0dHdUVH?=
 =?utf-8?B?aVN2RndBRC80SEw0aE5rWDJWaERYYlpIMDFjc2VhOWU4R3NpaXNKa1B4OVhw?=
 =?utf-8?B?MDdqeFZzWnZmdDAvZ1FBUGxZMmJYUksrV3pWNkJVb0xHYnlDWWRLY1AvRHQ5?=
 =?utf-8?B?ekRkaVY3V2FHTWFSYTVqbFM0V2RYR3pEQWVFZnBPRWszU1FYV3hDMW9wSFhY?=
 =?utf-8?B?aVREckExS2pVSjZUeEZtUUNBdUQyOXJIeUpCTXZERTdjR2NRV3pHMlVxMENH?=
 =?utf-8?B?Qkk3djV2M09zcUFHNkNHaWZuUGMrL3E5L1NXSW96bExJS1N3cEkwcWdWU0d4?=
 =?utf-8?B?UWdvbmxzYWg5ZmVETlBiZE9RM09xem0yUzVYTDQ0ZHBGOG5ZRUE1U1k2LzF2?=
 =?utf-8?B?dWxFYnZtQ0tPU3p3bWhNNlFEcFltQjdkWDYvRXB0KytYL0JucTFPNWJ3Rk45?=
 =?utf-8?B?T0RLMGtaa1l3UmdNczBHQStDZjVjWlhDeGRzbjBPNkNNNDRjZDBCd0tVWWxD?=
 =?utf-8?B?MGgrdDl6RDVRRzc2MTRaL2ZNVTkwblNvcWtmSEVlQk5WTldIMkkvSlBQS09P?=
 =?utf-8?B?anAvNmpmajA5akt2RDVKaHhUQjExMEhHR0dJblM1SmdROFNGN3NSVmR5WlNU?=
 =?utf-8?B?cGhyZHM3MGp3aUIvU0N5SDlLLzc2bTB6K0h0Q2dDREFzdjZTSGtsVG1HVzVN?=
 =?utf-8?B?RVJZTUp3aWcxaDB5K1FrVHZjUzlCd0hOOHNiSjN3TzlHWCsrK2ljTmQxT3lB?=
 =?utf-8?B?TzhrUm9pcGtjdE1JQWV5dzFNYWRzNXoyNWVpeGdZNmJ6ejJVcjRHNzkwTkV0?=
 =?utf-8?B?NjE4RUxIV2VjZ3JlcmUvWlJWSUxPbmcwaUJFRC9QRkFMeGw5UkNnWStQc0sv?=
 =?utf-8?B?THFwbCtEeUJuYk96S0NWMW5YRU1tSVJjOVYwSzFtVDFDZGhOZ3JIcEo0QkhO?=
 =?utf-8?B?NWtvZVpFOEpkaU9IejZjLzZKOXh1bzhKdThJYjY0R2pRbmxIb3JsTy9nTUtj?=
 =?utf-8?B?MWZDVVVlN3BRPT0=?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?OThNZk5NTytEYS9QanRFMU9MMzREM20xZGRiak1CK0JwVGQ3YWNvemY3TDhB?=
 =?utf-8?B?bmFWb0huSWJDcHlyMnpyck1sSSt0RUNSSEMvRTFVR3ZSWVl1elhMczIzVi9y?=
 =?utf-8?B?OHZpb0dhUGlZVmtwOGo1Z1NmT3BZc25IaC9XeldDbHFsNFZyenZuVlF0SSsv?=
 =?utf-8?B?NXE2RzF2dlRrTHQyc213cGgwdlVWb3BnS2k0TW1QR2U1SXFNT3h3NFVLczJV?=
 =?utf-8?B?ck82WUNBMVRLRFJKWXRFblErRUZvTksxRHJ2ajVvMnFzV0w5WUozTTQrUEZW?=
 =?utf-8?B?d1FjM3FPdFA3dzBmNC8xMjR6QTRTMGZPYzN2ZjBzRW1PUHRHenBiQVB2Zk43?=
 =?utf-8?B?dFlLWnE1UDgrcHF3ZGF6ei90WjVNUmlkYWdTd3VtR2hPcVBPbEdDMklzb3M1?=
 =?utf-8?B?Z21vRnk5ZkZYOTh4QWVvSEEzR0kwNzVJU0xCSFlsUTl0VzRmSFJwWnpvaWRG?=
 =?utf-8?B?RGUzU04yajlmY2NWRUlOM0hkb3NYUUk3cElJQlZQZ1VDd1MzdmpFOE9jTitZ?=
 =?utf-8?B?Rk9EMzBUaG94emROUlY1N1pIV2xvMmlNQTJSN1pvckVPc0hxYUp4d2Qva25o?=
 =?utf-8?B?ZjhDeUorZFZHTld5YlZMWXM2d3ZYVGtVd2EvaTVISU5oaXA2QmhMZ3pwemEz?=
 =?utf-8?B?Wk1xOTFLM3ZRb25tUml0Q05UQ0ltMGRHcHl1SEo5TWRBQVVOSjFGcTV4bi9s?=
 =?utf-8?B?YlphVmNGdHVVdlYrZDBrV2h1ZE8vcUplK0JhT0laN2d2UFVveTQxaVVSR3Iw?=
 =?utf-8?B?clIvMUVFTkJYdk1aUkxVamQ2bitZU2U1Mm44VTVrbTJFd3JGY004N3UrWVhN?=
 =?utf-8?B?bUZwbUtYL2NsQXFqdGVJMUlwZXM1bENBclN3VCtuczh5a1JTUXE0UGhKbXZP?=
 =?utf-8?B?UFhJVUFHVHZHcldOUGVnUEQzSE1iaVlXYS9WLzZjWThtY1dBK0JxWThIQlBX?=
 =?utf-8?B?VVpPVjN4RDJNQmNGaDdDVmhsaVlDdERUOXlWK2w1dTI0OHFYTmJUSTdNRUZH?=
 =?utf-8?B?YXV0MW8zdEhUbmpsUGlOcGdVaHY1dTZ2YU9jQkxRS0h1M2NKRlRLaCtYbjY4?=
 =?utf-8?B?ai82RTNvNXdwNEpQWit0clhLNzFIMXFqdkgwdDhFY29VdlA3SUdYZUxNZUFq?=
 =?utf-8?B?cFppSEJpNkpyZ2FaZURhRXZVYkQzYlJGS25IV3EvZXBHM0ZUR2o4YURpcHht?=
 =?utf-8?B?djh5L3psUjkrRHV4b1VSKzJKZlltL081VTZvcXJPUDV2L3lzaUg3bk5BUksv?=
 =?utf-8?B?QmlFMUpvd20xd1NiaU5EbkY0WDl1NFUxUHlBZmtTY3pJWWtYajBhc1djazlY?=
 =?utf-8?B?QWI2MmdEemJyVDN2cGJwOUxRS3djT1JjcGlnNjRyRklRb0hJTkZHdmZwTm16?=
 =?utf-8?B?bDhtZkoyaGR5UUxxZTdWUUROMmZhYWNPUUNiRSthRkl3c2lIM3lDYUFCV1g5?=
 =?utf-8?B?Z29lcmFPeVBNYzFJd3MvZ1c0a1BXNko5OGRyek15Z1RGMjlFRndOSjkzV1pr?=
 =?utf-8?B?Yk80VXRhK0FPMUkrZzdpNnE3MktiaUx0U3poZ20vQTB2VzMrUG9wTjNuZlFy?=
 =?utf-8?B?N0ZFa2dUSU9kbmVHek5HY2thRVc1bjlSVVM3cWRoaFdYWFVlYTRnUlFKNTFn?=
 =?utf-8?B?dm94SGJuQ2ZMY0NJZjN2b1hhYU9IeDNQYzZ0WWZCUHdsVzFiSzJPQ2FaM3R2?=
 =?utf-8?B?N2hyK2pnRFhqUFdhOHlmWlVKd09sdXZlUEd5YXhFd1oyWEVWNzFkRU9rMjFD?=
 =?utf-8?B?ajlXRU9pOFhmejM2YXVMK2lrSHRHYVQ4NDhGVDVtd0FpbTlIVzZMc2xCVkVr?=
 =?utf-8?B?U1Rab1QyM1FNQmNobkk2VU5QNC9RS3dFS2wrNENaVE5jVzE1ckp4dlZWcnNN?=
 =?utf-8?B?K3ViNmpHWng1OFcwWlMxOE1HcWN3YUN1Vm5zQ04xN3ZlSzZaNy9vUGJmMERC?=
 =?utf-8?B?eFU4YUE4U1NWeU9XZXM3bXJKa29QUXROaG9GZVF0SnlLZHpwNmlGa2swR1FN?=
 =?utf-8?B?TU1iZWdGdk14NHdMZjRJR05sWUYwUHo5SXBqNFVSalBNdzBvcWlkQUNmeXd2?=
 =?utf-8?B?b0MzVlVKYWRkdjNNdlV6Mk5UNmxwNXBtMWpvZFB1aVBWU1ViUXE5aEdOMHBj?=
 =?utf-8?Q?FR8uNeKbJSHyGFE0wkaZdVNQ7?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 83b93936-7984-4c88-4424-08dd7b167534
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Apr 2025 05:37:34.2263 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Z9WWisaaIIYbegG+Cyq+aWmcYyzitctzwFb29IlTCcZzfnxdPQALa7HUcU7px3F3Ok1xwmR37WCwkGby1Y6keg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB5984
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

QW55IGNvbW1lbnRzPw0KR2VudGxlIFJlbWluZGVyIQ0KDQpUaGFua3MgYW5kIFJlZ2FyZHMsDQpB
cnVuIFIgTXVydGh5DQotLS0tLS0tLS0tLS0tLS0tLS0tLQ0KDQo+IC0tLS0tT3JpZ2luYWwgTWVz
c2FnZS0tLS0tDQo+IEZyb206IE11cnRoeSwgQXJ1biBSIDxhcnVuLnIubXVydGh5QGludGVsLmNv
bT4NCj4gU2VudDogRnJpZGF5LCBBcHJpbCA0LCAyMDI1IDEwOjI1IEFNDQo+IFRvOiBpbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnOyBpbnRlbC14ZUBsaXN0cy5mcmVlZGVza3RvcC5vcmcN
Cj4gQ2M6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBsaW51eC5pbnRlbC5jb20+OyBEZWFrLCBJ
bXJlDQo+IDxpbXJlLmRlYWtAaW50ZWwuY29tPjsgTXVydGh5LCBBcnVuIFIgPGFydW4uci5tdXJ0
aHlAaW50ZWwuY29tPg0KPiBTdWJqZWN0OiBbUEFUQ0ggdjUgMS8yXSBkcm0vaTkxNS9kaXNwbGF5
L2RwOiBSZW1vdmUgc3VwcG9ydCBmb3IgVUhCUjEzLjUNCj4gDQo+IFRoZSByZXRpbWVyIGlzc3Vl
IGZvciBVSEJSMTMuNSBpcyBmaXhlZCBpbiBCTUcuDQo+IFNvIGZvciBhbGwgcGxhdGZvcm1zIGxl
c3NlciB0aGFuIEJNRyhYRTJfSFBEL0RJU1BMQVlfVkVSeDEwMCAxNDAxKSBkaXNhYmxlDQo+IFVI
QlIxMy41Lg0KPiBjb21taXQgY2FmM2Q3NDhmNjQ2ICgiZHJtL2k5MTUvZHA6IFJlbW92ZSBzdXBw
b3J0IGZvciBVSEJSMTMuNSIpDQo+IHJlbW92ZXMgVUhCUjEzLjUgZm9yIE1UTC4NCj4gDQo+IHYy
OiBSZWZyYW1lZCB0aGUgY29tbWl0IG1zZyAoSmFuaSkNCj4gdjQ6IFJlZnJhbWVkIHRoZSBjb21t
aXQgbXNnICYgdXBkYXRlIHRoZSBtYXggcmF0ZSBzdXBwb3J0ZWQgKEphbmkpDQo+IHY1OiBSZWZy
YW1lZCB0aGUgY29tbWl0IG1zZyAoSmFuaSkNCj4gDQo+IFNpZ25lZC1vZmYtYnk6IEFydW4gUiBN
dXJ0aHkgPGFydW4uci5tdXJ0aHlAaW50ZWwuY29tPg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYyB8IDQgKystLQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDIg
aW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2RwLmMNCj4gaW5kZXgNCj4gZjIxZjliNDQxZmMyYTRlNjQ0YzY5NDEw
ZTZlYzZiM2QzNzkwNzQ3OC4uOTJiY2E3MDFhOTg5YjAzZTJhZDRiM2Q5DQo+IGU3ZDBhOWVmMTI1
NjdlNWEgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZHAuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMNCj4g
QEAgLTQ4MSw3ICs0ODEsNyBAQCBib29sIGludGVsX2RwX2hhc19qb2luZXIoc3RydWN0IGludGVs
X2RwICppbnRlbF9kcCkNCj4gDQo+ICBzdGF0aWMgaW50IGRnMl9tYXhfc291cmNlX3JhdGUoc3Ry
dWN0IGludGVsX2RwICppbnRlbF9kcCkgIHsNCj4gLQlyZXR1cm4gaW50ZWxfZHBfaXNfZWRwKGlu
dGVsX2RwKSA/IDgxMDAwMCA6IDEzNTAwMDA7DQo+ICsJcmV0dXJuIGludGVsX2RwX2lzX2VkcChp
bnRlbF9kcCkgPyA4MTAwMDAgOiAxMDAwMDAwOw0KPiAgfQ0KPiANCj4gIHN0YXRpYyBpbnQgaWNs
X21heF9zb3VyY2VfcmF0ZShzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKSBAQCAtNTUwLDcgKzU1
MCw3DQo+IEBAIGludGVsX2RwX3NldF9zb3VyY2VfcmF0ZXMoc3RydWN0IGludGVsX2RwICppbnRl
bF9kcCkNCj4gIAl9Ow0KPiAgCXN0YXRpYyBjb25zdCBpbnQgaWNsX3JhdGVzW10gPSB7DQo+ICAJ
CTE2MjAwMCwgMjE2MDAwLCAyNzAwMDAsIDMyNDAwMCwgNDMyMDAwLCA1NDAwMDAsIDY0ODAwMCwN
Cj4gODEwMDAwLA0KPiAtCQkxMDAwMDAwLCAxMzUwMDAwLA0KPiArCQkxMDAwMDAwLA0KPiAgCX07
DQo+ICAJc3RhdGljIGNvbnN0IGludCBieHRfcmF0ZXNbXSA9IHsNCj4gIAkJMTYyMDAwLCAyMTYw
MDAsIDI0MzAwMCwgMjcwMDAwLCAzMjQwMDAsIDQzMjAwMCwgNTQwMDAwDQo+IA0KPiAtLQ0KPiAy
LjI1LjENCg0K
