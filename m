Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F1AD9ABE15A
	for <lists+intel-gfx@lfdr.de>; Tue, 20 May 2025 18:56:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7EBFE10E5B7;
	Tue, 20 May 2025 16:56:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Nmh8dcy0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0DEB110E5A4;
 Tue, 20 May 2025 16:56:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747760211; x=1779296211;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=n/UYtdQPDfUS0dhA1MjYhYEwRJA66Q9IAr9kTBD7o5A=;
 b=Nmh8dcy0y8Mql4bGDGwSBJsskpUBTq2YQUjdTvKTEF1HoLiLrB43rAi+
 xdcKuoTr5e8kB6+kc1521y512uRcVJ8TiBvrT9Oh/o57Zs4WSc7px5zXq
 mlL7zC0AveCFDaSVN43vAF/YYpvcKGGrwF3+bYiiR0dTed7AUzsFxu2Bo
 KhR6Afyaa8DHo65LdoFAQjzrCvxujwjWKIeB+1zZlE99GgqS0yuJOSYBB
 xqHMAu74VdFHXFhUTHSvgYLAG2qNlnnF/+qR/b9LV4c5QPZlf+71o+E3k
 aoIZM0bMoZUQnvzv0jht/t98TffLZL+9Fe55LABtW3/qR8E6IIh1TNLu7 Q==;
X-CSE-ConnectionGUID: dD4O0FdpTa6tbbSlXyu41Q==
X-CSE-MsgGUID: W6KbGMXgTUOoO4x/sT9CZw==
X-IronPort-AV: E=McAfee;i="6700,10204,11439"; a="37322891"
X-IronPort-AV: E=Sophos;i="6.15,302,1739865600"; d="scan'208";a="37322891"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2025 09:56:49 -0700
X-CSE-ConnectionGUID: Ta5zPyQSRPWjZ05/TSwX3g==
X-CSE-MsgGUID: 5OZh02dNT6+o/TGf9gekYA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,302,1739865600"; d="scan'208";a="170764159"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2025 09:56:49 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Tue, 20 May 2025 09:56:48 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Tue, 20 May 2025 09:56:48 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.42) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.55; Tue, 20 May 2025 09:56:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=fQAuRYPPfUfiC12dl7jYNeX1ZZJ2U0W1Z/xLrTOZvuSw/cTQAMo+mM7xfujEYzMeZybhW37IMPfs48kzMl1DgZa5INwyqX3nz9IBvMz7nsZnbgbeEIWymkiVAJbuiswrdyKu/Vxsts9UIlqYgWzOozVlCZ7frLeSKL3fJ5th1szbDJuD25WmA0lDcRQi8vNR2SUebmRLlWI7Ep22G8wHKBp3HZxMkvYBTj0lYlfi6+cfZRmYCQ8cKEkzevcP+Hy3aehAPjGGk4ppHJ3flmVZok9Q9S+vx1qnLfAYII8KgCJNHI7YsBIbPwq5AhJqAeD1/C2jJwExYn4jA+cSB4xCLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=n/UYtdQPDfUS0dhA1MjYhYEwRJA66Q9IAr9kTBD7o5A=;
 b=rNjuHb8d1IUrNhCOZ+MV8b9JcoceZB/5vr3aNoFwdSdqdsdWoOt6dp5WndfWms1ssXU5cOq8txW2mslRhiJuUa0qKfxtjDzgaekKjzvp5+YayCjgeSSRT0uVDv1CybfBYg6Hd673lG3Ai/WtZgF8NaF2AGXhj7Z7xl+aUlXOfQ1F2JTpi2DJ46sEoGK2v2mJWNoF/6T4236QM6vAZ58Sv4VMups3YFUrtZAWqmRZ73VttYxCsiG5brqS0KZ7NU8NSf5dssW6ecUawgx/L8mXczfS+YQO6cnVFL4gJwmaddPM7KrfhZOao5ITs354xX/BElGT40CJ21j9+O6r5YGOvQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 CY8PR11MB7828.namprd11.prod.outlook.com (2603:10b6:930:78::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8746.30; Tue, 20 May 2025 16:56:46 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%4]) with mapi id 15.20.8722.027; Tue, 20 May 2025
 16:56:46 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 05/11] drm/i915/psr: Add interface to check if AUXLess
 ALPM is needed by PSR
Thread-Topic: [PATCH 05/11] drm/i915/psr: Add interface to check if AUXLess
 ALPM is needed by PSR
Thread-Index: AQHbu0CIXoddfqzVDUW9nvkBGE5dj7PbUnAAgACHZIA=
Date: Tue, 20 May 2025 16:56:46 +0000
Message-ID: <b753641b4eb36f23d011b02a15d86e1430a7b556.camel@intel.com>
References: <20250502085902.154740-1-jouni.hogander@intel.com>
 <20250502085902.154740-6-jouni.hogander@intel.com>
 <9b6b80a9-37c3-4c12-a857-84bd9107ee9a@intel.com>
In-Reply-To: <9b6b80a9-37c3-4c12-a857-84bd9107ee9a@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|CY8PR11MB7828:EE_
x-ms-office365-filtering-correlation-id: a9e2b6b2-3a20-403f-d710-08dd97bf4e5f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|10070799003|366016|1800799024|376014|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?Q01IeGQyUDVPUFJ1bzZLUG5JeExJa2x2cDRtMFp3YlY3Q1JBdUlBWk04YW9t?=
 =?utf-8?B?SlNHZzArUW5BZnpxTXNtYU9NZHlMTlM4aU4zWStwT2lNMUE2Z090VTBNVm9y?=
 =?utf-8?B?MHJHZitzMGJNa1kyMmxGN01iR1FKYTNlb2F2TXFGaytuTU9mTE8vcjVUZmpZ?=
 =?utf-8?B?RzdFNzE3N3Nmc29oWGZaaFc1SjA0TDdsV2xLdUhmQ1prdEJPUkR0Y1FVRHN2?=
 =?utf-8?B?SS9ycGtMMlFMSkRiY1FkV2FoQXd0Z3FhdGlOK0ZBdDc0WlRNbStsOS9LTGxt?=
 =?utf-8?B?dW5xUlNZbUcvQmlRWFRMeDVQK251N2R4UWN1elBkZFdsLzkvdEhuWWdjOXVD?=
 =?utf-8?B?MldnLzhMVzlnaEtsYUpMaHQyczNndXlleTJPSXJ5OU5GdTJIYUdnV1ZxcXJq?=
 =?utf-8?B?T0UxRWlXczNCMzJWZmFoakFqdGM2S1J1WXpTSHE5d2ljZitHRzMzVjJ4cHhx?=
 =?utf-8?B?eFlCcTVrS0E4RHZkK1dCaFdEam5DZGhuTEhTbmhGdGlJVzZEczZERmFCQmVG?=
 =?utf-8?B?R0h4SngwNGlVSU91YmRvWHQ4T1dJSlFvWHp5UHVBV1NHUXJaZTg4cm4wMS8y?=
 =?utf-8?B?QzIwa2JIdFdXcHJDNGRraXRRcWtEVDdCL29KTkVCUVBYU3FWaFk2TWJLcjZH?=
 =?utf-8?B?bThkdWVnY3dQOXRsUXBUOEpzQm80TC80VHA3MHY1ODByOS9hRGFqeSt2YmZQ?=
 =?utf-8?B?ZCsvcmRTamVJUUlFQ1RHR0t5MXVueWR3MjNvR3VTZFVMVVJBakRPYlFYZkp3?=
 =?utf-8?B?Z1FyTlQwbnR2VEVVYjBLbHZwY0d1YVhnMDRjYzJMMmdIQU8ybTdqQmJSZGR2?=
 =?utf-8?B?cTRKTEEwR3F4dzJ3R0VuNTR1QklCZUdkRTNZU3BwR3ZmWmd3Z2NDTG5CejdS?=
 =?utf-8?B?bElhM1hEMmRkaFc4UjJXd1RhU3dzSlR4UGZZbVFnN2FTVnk4alA0WDNnd3lF?=
 =?utf-8?B?NXVnNVk4TkUrTjNlbHJ1b2hhRW0xWGVaVVc3VTNwSEswcWpQSWM0aEtOOUhn?=
 =?utf-8?B?M0tIT1JqcmNmeXVPOVNxaVRVOW9jSWVMOXpQZ0hES3duUVBvQVEwWVlVd0Vy?=
 =?utf-8?B?OUdSUExyNWN6SXlpcDFIWHNRdk5wZnFWMlRnb3dkTXNjZWJoazdzWWp0Y2pL?=
 =?utf-8?B?a2tObk02ZVA3dVNEY3N4NkhrdVFwa2lJdWR5NUR5dDVOZXNoWkZOTE5UVFNG?=
 =?utf-8?B?aitaRExPbWhUTjQ4c3AweUtIa2M1ZzNHaE41aWVwYmRSdE9oUjl5MzNxTCtm?=
 =?utf-8?B?c3V2NDZuaGpHS1NSZUxsTlo0d3k2emh5MThiMExraHQrOFpqUmp6T1hLdlow?=
 =?utf-8?B?Q0tEWERFSEVHNDRVR0VnKytPdk5SV2dEUTNrU01ZU25TeHB2NG5xMUFxNDAx?=
 =?utf-8?B?bmhZSnJ5a2VPNy91dnpWUERyTGdqK1Z4YXltMlJpREx4aXEzWVBlN1FnQmlp?=
 =?utf-8?B?bUZ3eHVKZ3JJZEdDd29sZUUvWEd6WFhYWFJyL0hGT1p4L1BYUndrcVd1cHBZ?=
 =?utf-8?B?R3o5WitFbHc4amhVWXYvT0RVUmVhUEVSWUVETXo2VGNJRS8vcVNHYWliM2RR?=
 =?utf-8?B?bllHOHRuaTFOaW96Z2Y4U2ZuK3RPSGRJV29zOVFUT1RPdUErN1ZoRW0yQlBE?=
 =?utf-8?B?aklHeTFvSFliMDdXWlNMWVF3TVdTMVRNV2lTaEVwM2NmMFhldDhFK3UzRGY1?=
 =?utf-8?B?alAra0Rrd1VnSVVEUW5nMzNSNHNPNnhVZUtkbmpXMjEycHp3M2FETHJicUFI?=
 =?utf-8?B?emtETFU0T245ZWRqbUlpRG1vd0lHNXh0RWY3alZRenFHR3NhZEo3NnFMcUJq?=
 =?utf-8?B?Y1UrSkxzZjM0T3lnV0RPTFRKYlpleXdxQVc0ZzFnS2xWMU5vK3V1UjMwQTd1?=
 =?utf-8?B?MUVoZmpxeURRdmFPeURHc0tDOUE1TENLR3FDNThGZ0VHMUZyKzNoZ0doMTlK?=
 =?utf-8?B?STgybGFDc3JKZG5MU0dGSzA1M205VXh2YjlNdTdtdHd2eDA0bTlGUWZXL3l2?=
 =?utf-8?Q?LAJ+CxIuRwcdVkhL2BACaJJRWJp6EE=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(366016)(1800799024)(376014)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?RnVneEcrb2krdW5KUG0xSGt5ZHdJMnc1RHp5ajBLUDdWRmxObEFvK3MwTlNK?=
 =?utf-8?B?OHI3d05KVHFoUHA3dWxhZTJzckRGcTFtVFlOYlpuY1plbXovYUMzUTVXRCt1?=
 =?utf-8?B?ZUwvTFNGQW1sWi9RMWlGYlY2aEZjZWpnR3FuSmxhc2Ewcnk4c2p3cGJhT0dk?=
 =?utf-8?B?aDlXUEhEYWNlZ2ZWaU5NcDFTaC94R0NNV3FNRWw2eU1rUnJTck84LzZ6Q214?=
 =?utf-8?B?d0FHeFkrRG9uM1ljUWU0Y3c2WWZEKzM5dnhRazhHeHRhd3R6dURzWVFRQnFl?=
 =?utf-8?B?MnBFV2gvSGlkYkIwMGtHVkh4QTN2a0h0OUpXTHFtR3dLNDZmMVlCNnVjZ1dx?=
 =?utf-8?B?NFpRUERPNTBjUFo1cHV3cEVvbHNMN0RETTluaWgwQ2NpMVUrN2ZWRFFlMHBy?=
 =?utf-8?B?ci9UV2pYUk0xQktNQ2tIMzFoNFJWZmdwaFRaZGZUSi9NdnVjY3NxZG5paHM5?=
 =?utf-8?B?UlhiYk5hZkNxM251bit4ZHM2V21OcEU4SEFTTXY2Y09NQUExU0l4SC80emtj?=
 =?utf-8?B?RkpaempDVEErOC9la29HZ1I5dmlIUERRQmFMYXpRYVU4WDkvS3pIMHI4cklr?=
 =?utf-8?B?c1Exdnh3eStuN1l0Zzk4NWNHN0pJdno4QzNOeGVpN2V3MzMrTU8vNUhpVjQz?=
 =?utf-8?B?OVZUa3VQU0g5dVhvSGJLd2F1ZXdjSUxOSVc4c2prTCsydVFKRDUyeFgwcGNo?=
 =?utf-8?B?aFhLRjRLRVRVT1o1T2QxeTVXNDNiSXZTTTVtWENQcG5NaVhENkFCTEJYUlhP?=
 =?utf-8?B?ZUlZSThOWUd5VXBFOXRaYVRnSXlMeHdWSWRLY1JLL2pPUG0yN1VIYmlpVng5?=
 =?utf-8?B?K0hSOHVhTjRKanRqRDcwSExzQmszdkhHL3FNYVhLcXZXWDNiU29jRlR2VGY2?=
 =?utf-8?B?UC9YbGMrOG1RMmNTNndPeURhL3AxMkxEWEo0cFAvS3Y3engwSGxnRERCVXFL?=
 =?utf-8?B?eGNUWEdBMnp6eHd0aDF6MFFFTFk3VWNCM0NhaEkwczZvMldZK3FFbjBzTGlh?=
 =?utf-8?B?am55U1dBcEpIYnpsUW1zRGtIanlSU3J4WE9XNmhqS3AvWnJVeVY3Z004M3hL?=
 =?utf-8?B?L0dNdEdjMzdjNm9aQSs3L3ZBbDFxaXI4OGVnRjc1VFFSVVpDUURCdFU4U0RB?=
 =?utf-8?B?L1E3NmViYzJ3Mk1uSm9NMEo2OFc0WFcvSlJhekloSkt3S2hmQkRSamtYbFN0?=
 =?utf-8?B?WUpRbHB5djdtYVBVKzV3SUZSTkx6cGhUNDNPRjNFMnhONHcyREgxTGh0czVp?=
 =?utf-8?B?RVQ1dm5jRm9TTjQ2U1FoWE9UQXBZN2FDRXJJMGZDYWRiOXRPWHlYM3ZCbGty?=
 =?utf-8?B?ektTM1JsOTUyOGowdENqMk4yNVFhMmpHcjNIdUUvNlRSODlrUmYvc3dua0ht?=
 =?utf-8?B?d1g5elZFOXZXNjVyZ1ZhZXZLeUM4TDJET1RCbWwzZ2ZIb0srOWpaS0o1ZWlB?=
 =?utf-8?B?bm92cHJJYmM4M0drTWRJRmpuVWNXN1RwdUtHRHpHRHlQQjhhSVNmQkFjY2hs?=
 =?utf-8?B?QnY2cldzQ2dYQ3FXRnhmbUxjZGZWU3cra055M2dOSWhtT0pVUHZ6REdxTTg5?=
 =?utf-8?B?alc0a0Z1V0FaQVlYT2RuUnBOc0xEcTI5TlZsWXJmODFCb3JkbjZXWDgzS293?=
 =?utf-8?B?S0ZMMTRaWUR1RFRPajlDU3BPOFFRaWg5b2RQd2RYckdZaDlvc05LUENza0U4?=
 =?utf-8?B?SGdzUnJRV0dqbjBsdmV1OVNkS29oS0FScytiYmtqTURPZ3U1RGFBRlpiMHhJ?=
 =?utf-8?B?Y1dzM0pETkxUUHpJemhCYWlMZGtmUVZsVjlzUTR1eVordWltZHhYZ1FJZmxr?=
 =?utf-8?B?aG80RmhsMUd5QVRMNndXa3cvaGNobGpIckwyYXRva2JmTENlajhiVnpvZWE4?=
 =?utf-8?B?MWM0TEdzRVNORDQ4aTVIY2JvK0t4akNuQ0ZFdDdpZUMvZk1YZG9LWnJCQzA5?=
 =?utf-8?B?OTNjemo5R3FmeDkxbE5FQ3dTUXhCdGdJZ0NDWDMvRFJ3YnU1UHl6YXVBTkhm?=
 =?utf-8?B?ZnQ1YlF4VFEwcWE3aEIwUWM3UlovTjgzWWZ6WGExZ0RseENYUFdUYlpzUHAr?=
 =?utf-8?B?NGFTY2RDSmp1dVVSRzMxdlp5ZVlteW1oM2lLZmpadTNpdm5aZlh1NC9abWV1?=
 =?utf-8?B?RW8zUUg5MThYV053bkFwUnE5NjNIdWZvMWFnazBScnJtQTBnSUFjTzBDVHBX?=
 =?utf-8?B?b29hV2QzNkk2cldpdG4zMG9hKzNIb1cybDhONU9XaHltbzV0Z0paRC92UkQ4?=
 =?utf-8?B?N2xFdGVDL0xRSTN1TXVSTjlCSm5BPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <3803D55821F891418A1C3E6D355EBF2F@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a9e2b6b2-3a20-403f-d710-08dd97bf4e5f
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 May 2025 16:56:46.5791 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: mSA6bX7+RH/TssWKMqyBk0FxIXCCYHqarwy32rjdHSJWiilXuB+Qo9GO0Hn0vFmub9E2m7VKjYafwBMndrFz/p6rAHNL4xTgJ9XiDXm/6aw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7828
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

T24gVHVlLCAyMDI1LTA1LTIwIGF0IDE0OjIyICswNTMwLCBOYXV0aXlhbCwgQW5raXQgSyB3cm90
ZToNCj4gDQo+IE9uIDUvMi8yMDI1IDI6MjggUE0sIEpvdW5pIEjDtmdhbmRlciB3cm90ZToNCj4g
PiBDdXJyZW50bHkgd2Ugc3ByZWFkIHVnbHkgUFNSIGRldGFpbHMgaW50byBBTFBNIGNvZGUgdG8g
Y2hlY2sgaWYNCj4gPiBBVVhMZXNzDQo+ID4gQUxQTSBpcyBuZWVkZWQuIFByZXBhcmUgdG8gaGlk
ZSB0aGVzZSBkZXRhaWxzIHRvIFBTUiBjb2RlIGJ5IGFkZGluZw0KPiA+IG5ldw0KPiA+IGludGVy
ZmFjZSBmb3IgY2hlY2tpbmcgaWYgQVVYTGVzcyBBTFBNIGlzIG5lZWRlZC4NCj4gPiANCj4gPiBT
aWduZWQtb2ZmLWJ5OiBKb3VuaSBIw7ZnYW5kZXIgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4N
Cj4gPiAtLS0NCj4gPiDCoCBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5j
IHwgMTQgKysrKysrKysrKysrKysNCj4gPiDCoCBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX3Bzci5oIHzCoCAyICsrDQo+ID4gwqAgMiBmaWxlcyBjaGFuZ2VkLCAxNiBpbnNlcnRp
b25zKCspDQo+ID4gDQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfcHNyLmMNCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
cHNyLmMNCj4gPiBpbmRleCAyZDc4ZDY0YjhkYjhkLi44ZDhmZTFjMzQ0NzlkIDEwMDY0NA0KPiA+
IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gPiArKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ID4gQEAgLTQyMjcs
MyArNDIyNywxNyBAQCBib29sIGludGVsX3Bzcl9uZWVkc19hbHBtKHN0cnVjdCBpbnRlbF9kcA0K
PiA+ICppbnRlbF9kcCwgY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhDQo+ID4gwqDCoAlyZXR1
cm4gaW50ZWxfZHBfaXNfZWRwKGludGVsX2RwKSAmJiAoY3J0Y19zdGF0ZS0NCj4gPiA+aGFzX3Nl
bF91cGRhdGUgfHwNCj4gPiDCoMKgCQkJCQnCoMKgwqDCoCBjcnRjX3N0YXRlLQ0KPiA+ID5oYXNf
cGFuZWxfcmVwbGF5KTsNCj4gPiDCoCB9DQo+ID4gKw0KPiA+ICsvKioNCj4gPiArICogaW50ZWxf
cHNyX25lZWRzX2FscG1fYXV4X2xlc3MgLSBDaGVjayBpZiBQU1IgbmVlZHMgQUxQTSBBVVhMZXNz
DQo+ID4gKyAqIEBpbnRlbF9kcDogSW50ZWwgRFANCj4gPiArICogQGNydGNfc3RhdGU6IENSVEMg
c3RhdHVzDQo+IA0KPiBJIHRoaW5rIHlvdSBtZWFuIGNydGMgc3RhdGUuDQo+IA0KPiANCj4gPiAr
ICoNCj4gPiArICogVGhpcyByZXR1cm5zIHRydWUgaWYgUFNSIG5lZWRzIEFVWExlc3MgQUxQTS4g
SS5lLiBpZiBpdCdzIFBhbmVsDQo+ID4gUmVwbGF5IGluDQo+ID4gKyAqIGVEUC4NCj4gDQo+IExl
dHMgdXNlIGBSZXR1cm46YCBhcyBwZXIga2VybmVsIGRvY3MuDQoNCkRyb3BwZWQga2VybmVsZG9j
IGNvbW1lbnRzLg0KDQpCUiwNCg0KSm91bmkgSMO2Z2FuZGVyDQoNCj4gDQo+IFBhdGNoIExHVE0u
DQo+IA0KPiBSZXZpZXdlZC1ieTogQW5raXQgTmF1dGl5YWwgPGFua2l0LmsubmF1dGl5YWxAaW50
ZWwuY29tPg0KPiANCj4gPiArICovDQo+ID4gK2Jvb2wgaW50ZWxfcHNyX25lZWRzX2FscG1fYXV4
X2xlc3Moc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwNCj4gPiArCQkJCcKgwqAgY29uc3Qgc3Ry
dWN0IGludGVsX2NydGNfc3RhdGUNCj4gPiAqY3J0Y19zdGF0ZSkNCj4gPiArew0KPiA+ICsJcmV0
dXJuIGludGVsX2RwX2lzX2VkcChpbnRlbF9kcCkgJiYgY3J0Y19zdGF0ZS0NCj4gPiA+aGFzX3Bh
bmVsX3JlcGxheTsNCj4gPiArfQ0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX3Bzci5oDQo+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX3Bzci5oDQo+ID4gaW5kZXggNzNjM2ZhNDA4NDRiYy4uMGNmNTMxODRmMTNmOSAxMDA2
NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5oDQo+
ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuaA0KPiA+IEBA
IC03Nyw1ICs3Nyw3IEBAIGludCBpbnRlbF9wc3JfbWluX3ZibGFua19kZWxheShjb25zdCBzdHJ1
Y3QNCj4gPiBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKTsNCj4gPiDCoCB2b2lkIGludGVs
X3Bzcl9jb25uZWN0b3JfZGVidWdmc19hZGQoc3RydWN0IGludGVsX2Nvbm5lY3Rvcg0KPiA+ICpj
b25uZWN0b3IpOw0KPiA+IMKgIHZvaWQgaW50ZWxfcHNyX2RlYnVnZnNfcmVnaXN0ZXIoc3RydWN0
IGludGVsX2Rpc3BsYXkgKmRpc3BsYXkpOw0KPiA+IMKgIGJvb2wgaW50ZWxfcHNyX25lZWRzX2Fs
cG0oc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwgY29uc3Qgc3RydWN0DQo+ID4gaW50ZWxfY3J0
Y19zdGF0ZSAqY3J0Y19zdGF0ZSk7DQo+ID4gK2Jvb2wgaW50ZWxfcHNyX25lZWRzX2FscG1fYXV4
X2xlc3Moc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwNCj4gPiArCQkJCcKgwqAgY29uc3Qgc3Ry
dWN0IGludGVsX2NydGNfc3RhdGUNCj4gPiAqY3J0Y19zdGF0ZSk7DQo+ID4gwqAgDQo+ID4gwqAg
I2VuZGlmIC8qIF9fSU5URUxfUFNSX0hfXyAqLw0KDQo=
