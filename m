Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 27C4EA89379
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Apr 2025 07:41:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 121E010E0C1;
	Tue, 15 Apr 2025 05:41:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="c1B4vnvk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3571210E002;
 Tue, 15 Apr 2025 05:41:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744695665; x=1776231665;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=/mTAyu4nyWx6zy1I7Eh6L8430NkN5zwhU64vYd78glA=;
 b=c1B4vnvkFv0fsxpwDHGQG+PUxFc+aqKQmUSma4U324aP7R68aJLqY+6/
 u9Ei4PkiGRRtlShmjnS+2duWfBt7j32I3gmtFJVk6KSiTF61mHB7se54y
 ACMnk78qvozlP4JC9MZp4QuWN58N9BxJaj5CCrOPcGA2roZ0xvbxtja+I
 4YJI7dkbjtr7Ubqdr2aoayI3K+coecv4GPCe6ebeDkl58UbS0oDe+P9/O
 KL8d9hnKRbGdRUTtErRZoqvwMR1VD4UM1DFhXX1DENPdP8Ud3G5x9LrKM
 smSBBnytkAQ3bJxOT7lbDW1568TKpR0+sA/3XfisqZw81ksCi9rA3uDpo Q==;
X-CSE-ConnectionGUID: fDxigxVASjSznxxs50NyIQ==
X-CSE-MsgGUID: e3B1v3tpQi21OyA+B6Aa8Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11403"; a="56824567"
X-IronPort-AV: E=Sophos;i="6.15,213,1739865600"; d="scan'208";a="56824567"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2025 22:41:04 -0700
X-CSE-ConnectionGUID: CUeqomG/TvaLUPIBMDfKrA==
X-CSE-MsgGUID: h7+wU3HzSfiqK8Wgh6ziKQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,213,1739865600"; d="scan'208";a="134116487"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2025 22:41:03 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Mon, 14 Apr 2025 22:41:03 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Mon, 14 Apr 2025 22:41:03 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.46) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 14 Apr 2025 22:41:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=HEo2pT9OXsuJhEeKvjZfilck6b5Bv6EuBpOi4rSJd6k9k4x9TyMQkc7F+m9YLlFxv9HEnvtWgYse8OBacIyQqdqTzwTFywpG2htbH1/8XyJRFxqf9Vu1TLkkoaHq0puvK6c2YunLoXiaMUfBlI+yMQ0iFJbyAFRODKeX3jnrFBpea9+zL1jzk+oR8yIFkrbmVNnzys6Yz1cA5U1LBXaoq9AvJpqTtIxHdJMaRh+8vI7TvsHHocWue9bI8GTcfEYN9/LFDGzrDRF8UDc6nxO6XfRH7SrqBJDF9smt2MVX92d4f6cZuAmdLiFiQCjCO5f5cv09zFGtkD0X8G4MXpDUwg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/mTAyu4nyWx6zy1I7Eh6L8430NkN5zwhU64vYd78glA=;
 b=MQpXlncNT1a8N220MEQt6Gc6YtWxuUJcH4BIqTXK8kL4gc/UaEKLqUuPqxgBhpk/2mcexHDSm0mE1s5OFwgS4T14/Y/Ve6Si7Ctcs9AX7fk8qDq1pPwjh5FXm8gf9uLWnXuUd0JXuIfZb1zX3EaR8lf0s9hU9AxsEJLq4Om3S33J/Rm/FOUG3IuXKe1ZI8NCpgzS4cSkRNtJqPb2AHBSxvg9iQVTNO4jt6Comht05eSzJsH/xut+oWvJH3JAJEszvMYOWOB594CCb2ffpIal6pL5c5sB6rCdT0lfbJQb8I/DtJjvs4GzZqn7f6+qsJOtcKdhKsvALgQNpAaX3mJ+fg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 SJ0PR11MB4957.namprd11.prod.outlook.com (2603:10b6:a03:2df::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8632.34; Tue, 15 Apr
 2025 05:40:59 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%3]) with mapi id 15.20.8632.030; Tue, 15 Apr 2025
 05:40:59 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Manna, 
 Animesh" <animesh.manna@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>, "B, Jeevan" <jeevan.b@intel.com>
Subject: Re: [PATCH v8 6/9] drm/i915/lobf: Update lobf if any change in
 dependent parameters
Thread-Topic: [PATCH v8 6/9] drm/i915/lobf: Update lobf if any change in
 dependent parameters
Thread-Index: AQHbqVtYcbhCeN/GC0KzYwJmaA5UzrOkPzYA
Date: Tue, 15 Apr 2025 05:40:59 +0000
Message-ID: <7bc4c242e159a642df42b3b7b805191b3c87b9bf.camel@intel.com>
References: <20250409140258.785834-1-animesh.manna@intel.com>
 <20250409140258.785834-7-animesh.manna@intel.com>
In-Reply-To: <20250409140258.785834-7-animesh.manna@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|SJ0PR11MB4957:EE_
x-ms-office365-filtering-correlation-id: d812ac83-2aa6-4940-55dc-08dd7be019ed
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|10070799003|1800799024|376014|366016|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?Mis4UzZCS3NGYWMwQytxS3E5cThDdmI1L1MybzJVMFlpNUJkWlZMb3Z0ZmtY?=
 =?utf-8?B?eHhkZDZybmVHQUpJL2N6UEU3ODdudmFUbklBTFh6UkJWRTdjNzg1VTlCL0tw?=
 =?utf-8?B?c3BTT0tpNkdST3cycFloTnFWdUMzMGZ6T242Z241ZVZhUzArQlk5U0dzcXlw?=
 =?utf-8?B?Ujc5aFBqbVVuZUxlN0pCeWtwT21jSEREMGREd2xFdGF3UmY3QWV5MjVFd3o2?=
 =?utf-8?B?WGNXNGQ5RGNhbUx2OTlGc3FkUkRnYjVLRXdkRVN0MGp1MmpiK000Rm56VzBr?=
 =?utf-8?B?SjM3QkZ4My9UUUQvd3ZWTnRKMEZrRitHVTRSWDFLSUZlWWpiRjE4aXdUSURO?=
 =?utf-8?B?T3pvQ1R3aFhuV0tCVk81cWh2R1Y3QmszTDhpb2JJWWxaZTUrRzJUQ2tybXM1?=
 =?utf-8?B?dUxNSmhCNnVKdlYrT1FEZFk4ZDdqNjUvaUo4YSt4UG1lNDFnUVdKR29ncGxU?=
 =?utf-8?B?N1JXcWNZRmo0WUFvZG43c1EvY20rZW1ZRlhmYWVudURieWFGTHhOM29HN1ZU?=
 =?utf-8?B?aThlZjY2OVlQcE9MWHRLS2dNaXlHcnBPZlFaSXlFaUVRQUFtZytJTHhQSXpl?=
 =?utf-8?B?U2pMWFl0elJXeEo4QXpDTjFGUFFjL3pNR0VrcmswRWZNNVZJWlNRZHJ6TGhS?=
 =?utf-8?B?elhycVNvVE0zb3RHVXBwQjZwZmt2ZGcrQTFTVmFOY2hqbCtxdkE1b0hXZFk5?=
 =?utf-8?B?UGtlK3gzVThoOWxBNDNzRkRhSU1IbC9QVmNOT2VjOGpHSklvVHRrT09Dc0RK?=
 =?utf-8?B?a2hFVnZMK0hJRTR3NGNmMG02cnlrYTIybURmUmhKNXRjUkN1MzdLK1dDeVJM?=
 =?utf-8?B?SmtvRGVYc2RIZ1dORVdrZUFya3QvWjNGak14WndqTnNjY0U1UUM3QXIweXpv?=
 =?utf-8?B?NzEyV3lhd2MzNkxjTUMwdkZwblpNZytsNzdRanM5eWZONkJGNmFMNFZlTWJo?=
 =?utf-8?B?U25rYVNzcjNzUUI2TmdQamY2NU10OTlJRDdtUlV3K0I2VlVmNGRqdngvb1Mw?=
 =?utf-8?B?ekRQTm5NNVAwZXlPS3dGVVl3NDkrNnl2cFRuZHd5dnpxVmE4dm1KTklmdVJ3?=
 =?utf-8?B?czlYeXVaa3ZBR0d6TzNzM3BPK2RBTC9NVUR2SnpEMGlNcGZ2ZFlCc09xWDVa?=
 =?utf-8?B?clJWbmtoRkp2cGxwS3NKcUJBYThpbTFwcG1YeXBvUUdkZDZqOUZ0ampEcFV1?=
 =?utf-8?B?Y2xSckhEQ1hKL3NLbWNzTUZmMjllU1RmRzhvSng4dUJucmRqV1BQQldqNjJv?=
 =?utf-8?B?QTRacnd5VEt3S0ZvU3NUSVhCaDVnbC80bFhtTkZRUkI3eThhbUF2NEsrSUJs?=
 =?utf-8?B?SVZoNVhQSUlVT3BEUTI1T2tUNGJnMjRKY2gxTDhmdHFWUVkwdHVFYSt1WnQz?=
 =?utf-8?B?UGRzamg1cG9FdHVlOVZtcEFmL1Z5cnFnelNJSG5obWRqdElsOWVJUklkTVRy?=
 =?utf-8?B?NXFlOTdjNHdldGpRQiswOCsvQW44b3hFbjVaQkFEeHhjcmVZd294ZEh5MEJv?=
 =?utf-8?B?N2FoOHFsVWw5bjdFbUd3a1JZbWxROU4xRzhJODJMWlNHMUozdVEzRjk4SHox?=
 =?utf-8?B?YXdIR2pqYXFiSitqTlBUNFkzUUpMOXVXNnV0T1IyZTRBdytIRWVucmo3VGZN?=
 =?utf-8?B?MkxodXlsTzNSdng0MXMybDQyeExmRkNFME12TTFkY3hkbG5qQlpHeVFKWFFp?=
 =?utf-8?B?MkRiZXd0RTN4SU1xYVdidWx5ZEFjNGdVOExyakdvR1V2L3BYbm03Y3VGNStF?=
 =?utf-8?B?MzJXbGh4b2xmRURsSXNtM0wxcVBOTkJxWTM2eDFSNmg0Zm5rS3hRWHdFcGNM?=
 =?utf-8?B?Y1Q0OTBId3FMa29STUV1K3poYllJMHcrbS9ZUEl1UjU1M2k2a1gwejB4WVFN?=
 =?utf-8?B?Z1FNVjhvUmg2Z3pkZ0R0NDExd2dGNnB3ZmVaMDlHMkdxZ0x6WnVHa1BIK2Zy?=
 =?utf-8?B?cjVFbm45STJPa0tTZXhod3N5d2xtNThCVWQzZDZXSWdpNHFUSXRia2svclF0?=
 =?utf-8?Q?ix9E/E0CEikXcNs8ahTzgwOhGyYstA=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(1800799024)(376014)(366016)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?VUx2RGZlTkIvaFM0c0xDU0w4THkvYmZlbW0wUU9iYUVId3BHSlZscjdwWVNC?=
 =?utf-8?B?bktwUldhY0QwbkU1WUJiLzJuSVM5L2NIbm5PWjNUSmV2TGVsS2cxVkRLSXE0?=
 =?utf-8?B?MlpBdFBjNUVKZWNSdEp0aDlxV05VUWRiTFJWTHJTNFpNcHdsZnB3UzhGa2M4?=
 =?utf-8?B?UURjVEVFRjF4YWliYU1xVk1JOHc3SUZHNXk0OHVGdVBheWQ2aklWOTN6QVcy?=
 =?utf-8?B?ODlaQ01iZklPaW13ZmdDWUNaSHVLOGdIRVliWnZaOFYyQytZeEtaV0t3bGhk?=
 =?utf-8?B?ZVUzZTZvNks5bWVlcDJydUNOWFRtM2RXVnFEbnFEOXp1dDdZSlAzU0Z2U1Iy?=
 =?utf-8?B?elMvTEc4YzdEV05HWThFTDRRK3NpUkZTeDJKVG1sMFdsdGJCQXdLTVdBZ0VK?=
 =?utf-8?B?L3hvd2NETTBjMUk5VW9GSTRsdm5LanJyTFMzZVAvV1JpVjNMeVJteVc1bGFC?=
 =?utf-8?B?akhkVkRJVlkxQUJ0ZXNvN3gwSzJrV0w3a2c2ZVlJYnBoNVUwVFJpTVkzdjNT?=
 =?utf-8?B?a253WEFpMENITjF0TzBMRWc5a1ZpbTFIWXNrR2FEU0kyUTZ2N2FnTUFLTVhW?=
 =?utf-8?B?LzdFSHJRSDYzcDZINEo0WEJQSTdLOGl3bExOUGJPZ3VYWkdUemVXTm5zQWw2?=
 =?utf-8?B?V1p1ZnoySnNmZTBQb0JRUWFjT2dMRURPK0o4a2xDVjZaMUhUTjk0Zkl2OUN5?=
 =?utf-8?B?UXpzcFJhcnZXRFo3dEdWUFUyUUoyYit5bm5LNkhlWDJDU3FhcTlLWW1RZHpW?=
 =?utf-8?B?dnoyaGpidnNBcU5WeHFqNmp4Um5LNU1LWWN2RVUwSjZ2ekcySmx1Vy9YS1Iv?=
 =?utf-8?B?SkV1NzhrRWVvVDFKYWh6Z3NXUDNFdHFWd2R6T0dWRmNCOVhldDgrQTh3SDVN?=
 =?utf-8?B?N3N3ajRsdkh6UXoxMkR4K21nKzE2UUFlODMrQS95eWkzZ1BTKy9OdnZxUk1t?=
 =?utf-8?B?U3dwb2hWUlFWY1hHVGVacDgyL0d1WWpnS0xBZyt0Ukw4SHhERFFwaWsvdWQw?=
 =?utf-8?B?bkpxSENROWk3TEczWkc1YkNOdzlrS2gzSDN6bEJWS1RXRDRuWk85Q3lmdHpl?=
 =?utf-8?B?UzZRWXJOaHpFZVpaN1ZhbFdiZ21wK1k3YmRQTkJ5WXJvQ2pFWDRBY1JBalRw?=
 =?utf-8?B?ejZIZk5FWWVLRHZwc05aK01CaVlyZVBEaFZsODhaWDh1RHBOaEVBQkNJVEdL?=
 =?utf-8?B?T2tiRWxGU25hdWZmeGhmeFNLL3hic3E0MjFLSis1S1pIczB4cVhCK0JWM1NK?=
 =?utf-8?B?VS9Zd3ZHY2toeGxSdUliODNRZHM4SzVLY2FoTXEveEN4d1VUQUFzS1FjVUlJ?=
 =?utf-8?B?ZWZqenZDUVpNbkdsVmNjVGVIeldsZ2NSR0NRd2EwSThjVEdNcjF4ZEV3S2h0?=
 =?utf-8?B?NTNzdnFpQjlmc3F4MGY3Y0JsUU5Oa2R2bUk3MU80VDEySnYwNE1VY0R0M1RI?=
 =?utf-8?B?MU9Qdi9IbzZHalpGTVoyZXhNR0taMlEvcVU1M0ZtNDV4bGNQaWtXVFhPVEZq?=
 =?utf-8?B?SUc1OEVXOFFwUlhKN3NJOTJDMUlpTTlUd1hGZXp1NmVuOUcyclJYRHdBREcv?=
 =?utf-8?B?ZHZpSlVQdDZXWjZLTndaYVZaaVVsRkV6cVZWMUVId2xhNjNlcThxTUtDbnIy?=
 =?utf-8?B?Y1JmSng4eGRMUjFtY2RQdEsxOStxbkFja1M1dnhCQXdaRzl6dWdVRzhWa2Fl?=
 =?utf-8?B?bzBZb0xrS1lTYSt1YThpMXUyVmtickgvTzBqM3E2VkxhekwraER3THl4b2hR?=
 =?utf-8?B?am1DaUw4aWVYRy95V0ZJU3ZoZ2JRMmZ1OVlqUWswMnFBTExpaE52aGdSTFk1?=
 =?utf-8?B?NzRUMm9mTkpqcllkMkdzMG5xeitjODFlNWpNL2lUVTdZa1o5OHNiREovQVAv?=
 =?utf-8?B?WmxQV1ZMWVRBcnRJUzhQdk1TYk9BTVBnZFRoVlJ0Q0xxbXhMaGxrMjRLUno0?=
 =?utf-8?B?aUdMUGdoWlJIcFlXZVZRTzlwUE41OU5MWDlnbUEvbE1sSDRkSVNIbVVnWndB?=
 =?utf-8?B?WERMajdGN2wySVY2a2xJeUJwZ2sxejBORnFKOEFwcU9CdFJReGFuY1RWOXoz?=
 =?utf-8?B?YjgyTWtHYUpoNUxBcEd6czJqNTk5VFFhbDZNUWYwUlc3a3RKcU5XUHFIMFQ5?=
 =?utf-8?B?MzMxTzIrOTZ5OUVYcXJJSkxHOFVzM01BbjZELzg2a3BEVEdRc21acjdpZnFm?=
 =?utf-8?B?RHVSL1FRVTVYWlJaSFpYNVFmWXNpN01DMjNDc2wyK0M3Vnk5THl5L05oN2dF?=
 =?utf-8?B?UDZ1bDFqT0hnV2NLSVZibXg0OW5BPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <8EF57719A381B94CB4DC173EB9CE12C2@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d812ac83-2aa6-4940-55dc-08dd7be019ed
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Apr 2025 05:40:59.4158 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0b5xNlsHdkK1blRGismytA2ATi+NgtxNHORBDoLMHUkkQjRfCojA1um1Z8ffaeGNVPU+teFa9W51FqGgjGDoEoCMMGLx8SFTJVVI5+jeCqk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4957
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

T24gV2VkLCAyMDI1LTA0LTA5IGF0IDE5OjMyICswNTMwLCBBbmltZXNoIE1hbm5hIHdyb3RlOg0K
PiBGb3IgZXZlcnkgY29tbWl0IHRoZSBkZXBlbmRlbnQgY29uZGl0aW9uIGZvciBMT0JGIGlzIGNo
ZWNrZWQNCj4gYW5kIGFjY29yZGluZ2x5IHVwZGF0ZSBoYXNfbG9iZiBmbGFnIHdoaWNoIHdpbGwg
YmUgdXNlZA0KPiB0byB1cGRhdGUgdGhlIEFMUE1fQ1RMIHJlZ2lzdGVyIGR1cmluZyBjb21taXQu
DQo+IA0KPiB2MTogSW5pdGlhbCB2ZXJzaW9uLg0KPiB2MjogQXZvaWQgcmVhZGluZyBoL3cgcmVn
aXN0ZXIgd2l0aG91dCBoYXNfbG9iZiBjaGVjay4gW0phbmldDQo+IHYzOiBVcGRhdGUgTE9CRiBp
biBwb3N0IHBsYW5lIHVwZGF0ZSBpbnN0ZWFkIG9mIHNlcGFyYXRlIGZ1bmN0aW9uLg0KPiBbSm91
bmldDQo+IHY0Og0KPiAtIEFkZCBsb2JmIGRpc2FibGUgcHJpbnQuIFtKb3VuaV0NCj4gLSBTaW1w
bGlmeSBjb25kaXRpb24gY2hlY2sgZm9yIGVuYWJsaW5nL2Rpc2FibGluZyBsb2JmLiBbSm91bmld
DQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBBbmltZXNoIE1hbm5hIDxhbmltZXNoLm1hbm5hQGludGVs
LmNvbT4NCj4gLS0tDQo+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hbHBt
LmMgfCA3ICsrKysrKy0NCj4gwqAxIGZpbGUgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspLCAxIGRl
bGV0aW9uKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9hbHBtLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Fs
cG0uYw0KPiBpbmRleCAwMTk0OWI5MGMwYzMuLjRmZTE5MTRmZjc1OSAxMDA2NDQNCj4gLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hbHBtLmMNCj4gKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hbHBtLmMNCj4gQEAgLTM2Miw2ICszNjIsOCBA
QCBzdGF0aWMgdm9pZCBsbmxfYWxwbV9jb25maWd1cmUoc3RydWN0IGludGVsX2RwDQo+ICppbnRl
bF9kcCwNCj4gwqAJaWYgKGNydGNfc3RhdGUtPmhhc19sb2JmKSB7DQo+IMKgCQlhbHBtX2N0bCB8
PSBBTFBNX0NUTF9MT0JGX0VOQUJMRTsNCj4gwqAJCWRybV9kYmdfa21zKGRpc3BsYXktPmRybSwg
Ikxpbmsgb2ZmIGJldHdlZW4gZnJhbWVzDQo+IChMT0JGKSBlbmFibGVkXG4iKTsNCj4gKwl9IGVs
c2Ugew0KPiArCQlkcm1fZGJnX2ttcyhkaXNwbGF5LT5kcm0sICJMaW5rIG9mZiBiZXR3ZWVuIGZy
YW1lcw0KPiAoTE9CRikgZGlzYWJsZWRcbiIpOw0KPiDCoAl9DQo+IMKgDQo+IMKgCWFscG1fY3Rs
IHw9IEFMUE1fQ1RMX0FMUE1fRU5UUllfQ0hFQ0soaW50ZWxfZHAtDQo+ID5hbHBtX3BhcmFtZXRl
cnMuY2hlY2tfZW50cnlfbGluZXMpOw0KPiBAQCAtMzgyLDkgKzM4NCwxMiBAQCB2b2lkIGludGVs
X2FscG1fcG9zdF9wbGFuZV91cGRhdGUoc3RydWN0DQo+IGludGVsX2F0b21pY19zdGF0ZSAqc3Rh
dGUsDQo+IMKgCXN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5ID0gdG9faW50ZWxfZGlzcGxh
eShzdGF0ZSk7DQo+IMKgCWNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRl
ID0NCj4gwqAJCWludGVsX2F0b21pY19nZXRfbmV3X2NydGNfc3RhdGUoc3RhdGUsIGNydGMpOw0K
PiArCWNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpvbGRfY3J0Y19zdGF0ZSA9DQo+ICsJ
CWludGVsX2F0b21pY19nZXRfb2xkX2NydGNfc3RhdGUoc3RhdGUsIGNydGMpOw0KPiDCoAlzdHJ1
Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlcjsNCj4gwqANCj4gLQlpZiAoIWNydGNfc3RhdGUtPmhh
c19sb2JmICYmICFjcnRjX3N0YXRlLT5oYXNfcHNyKQ0KPiArCWlmIChjcnRjX3N0YXRlLT5oYXNf
bG9iZiA9PSBvbGRfY3J0Y19zdGF0ZS0+aGFzX2xvYmYgJiYNCj4gKwnCoMKgwqAgIWNydGNfc3Rh
dGUtPmhhc19wc3IpDQoNCkknbSBzdGlsbCBjb25jZXJuZWQgb24gTE9CRiBkaXNhYmxlLiBJZiBM
T0JGIGlzIGFib3V0IHRvIGJlIGRpc2FibGVkDQpoZXJlLiBJdCBtZWFucyBuZXcgbW9kZSB3aXRo
IHBhcmFtZXRlcnMgaW5jb21wYXRpYmxlIHdpdGggTE9CRiBhcmUNCmFscmVhZHkgYXBwbGllZCBh
dCB0aGlzIHBvaW50LiBMT0JGIGlzIHN0aWxsIGVuYWJsZWQgYW5kIGFib3V0IHRvIGJlDQpkaXNh
YmxlZCBoZXJlLiBBZGRpbmcgaW50ZWxfYWxwbV9wcmVfcGxhbmVfdXBkYXRlIHdpdGggTE9CRiBk
aXNhYmxlDQp3b3VsZCBzb2x2ZSB0aGlzLg0KDQpCUiwNCg0KSm91bmkgSMO2Z2FuZGVyDQoNCj4g
wqAJCXJldHVybjsNCj4gwqANCj4gwqAJZm9yX2VhY2hfaW50ZWxfZW5jb2Rlcl9tYXNrKGRpc3Bs
YXktPmRybSwgZW5jb2RlciwNCg0K
