Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 60F92A4E04B
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Mar 2025 15:10:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E171910E5E9;
	Tue,  4 Mar 2025 14:10:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="J6CvfHge";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5F9A410E5E3
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Mar 2025 14:10:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741097455; x=1772633455;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=BZjiNr+3CThxTzr6gKngOzNbGMSXV0+u/nS4DDXFWeM=;
 b=J6CvfHge4nkFBrlIdUmXkNWQj3/5J+eiFYj5uvGGsa6jQ91iYbprx/sl
 x3kEOhp9qzPHHfARKkzW5/Xrn4U5wdTt+A0vnsLMPCgsAMn6NAEV6cAb+
 AZLj/TJXJKseZ9Ncdx3SdXbaCC+gb+x78nY3DtdMoidiC0aYf2elWAurG
 byEBNSnxrDpN6xwU64BeKnpK/N3e9JBCsdyXxzN8ygY8tx/b4q5QFmCmP
 onomD6Oqgr6pL1Drqw6P+3THQbFRU3q4+kbHVnG1i3mnFveCQfmJhWsz6
 s7LQifw+C8PprwV/QL2ku4F0py6gFISvYy1Zkoe3aGyx307wqekaLbfZ2 Q==;
X-CSE-ConnectionGUID: emWRsT1zR8uyWfJJB3L9dw==
X-CSE-MsgGUID: ZUv/4nV6TF+3iRY2aQg/tw==
X-IronPort-AV: E=McAfee;i="6700,10204,11363"; a="42141700"
X-IronPort-AV: E=Sophos;i="6.14,220,1736841600"; d="scan'208";a="42141700"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2025 06:10:55 -0800
X-CSE-ConnectionGUID: SJsht4TjR6uTbEBxv2Y2Fg==
X-CSE-MsgGUID: b2h2grxZRmSwVcLr2dH5Eg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="118900760"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Mar 2025 06:10:55 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Tue, 4 Mar 2025 06:10:54 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 4 Mar 2025 06:10:54 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.49) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 4 Mar 2025 06:10:53 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=HJABOvPWCsxgVER3aY9EhKf9jOrfiK0Rue7HwIL69wmT+a4++v4GeD/JMNcRMIcuQ1XcDDlWgO+kMxra8FUV26qjIc86GqQfihnld5qniCzlj5mU/FN4bn2kh+12DzrPFihm75ifYJVge+TaSJcW+gQdSZDlNimljCEIYcCN8unh/UDxPOFnvqkrOBxNZtVjcVbK3kE6U8TVjJ2nE5Q63XhPp5K5qOE6GsLIlREq5Li/HWhlyX+d6HVsh2T5OA4jdHob6AEzCYlt+ivYx9N6sNHsIsDmh/IsaMq4h4KAKv0PwAaEh4D5C8yoZNS5/KDSCBkGt5l6gk2+8aYXwdgiTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BZjiNr+3CThxTzr6gKngOzNbGMSXV0+u/nS4DDXFWeM=;
 b=seTLeLKuxuhE7gz7JG0yNOBcGzWeB/vxXd/BMVkYLTU0NLMdBnUhAamGmDkRrG7+K2/5ptBe7usgtm1Ni272UAUUF9WiDY5Bfqyo+fYseQP4Q+c18f0pR2gsnfVzjfy+pIpkKcWaKNvKNYdYSdxWt7DrH1CcguET/tv+UG/Jcl3qfmhSEt1SQDon+Ur4DaZsxBXpHMOoTzVw62qsNtaNKafWYgbOhLxWWq4DT5DyrTIzlIZN4xkZiS7ux1R2QL71NO4b8odnVMJCecflofxmh7H9AvnDdKbRjMnxe2A58E7rgom8cy5IGEDGeimaI4bh8deIFyMvBsVckd+Ka3mhEA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7777.namprd11.prod.outlook.com (2603:10b6:930:71::14)
 by CO1PR11MB4979.namprd11.prod.outlook.com (2603:10b6:303:99::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8511.17; Tue, 4 Mar
 2025 14:10:23 +0000
Received: from CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8]) by CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8%4]) with mapi id 15.20.8511.015; Tue, 4 Mar 2025
 14:10:22 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 12/19] drm/i915: Update bw_state->active_pipes during
 readout
Thread-Topic: [PATCH 12/19] drm/i915: Update bw_state->active_pipes during
 readout
Thread-Index: AQHbgk2JFURUzHJqa0agLAylKD2sCrNjGbgA
Date: Tue, 4 Mar 2025 14:10:22 +0000
Message-ID: <ca3a94fb8cc04dbc924d52c657797392fe2a54f7.camel@intel.com>
References: <20250218211913.27867-1-ville.syrjala@linux.intel.com>
 <20250218211913.27867-13-ville.syrjala@linux.intel.com>
In-Reply-To: <20250218211913.27867-13-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.52.3-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7777:EE_|CO1PR11MB4979:EE_
x-ms-office365-filtering-correlation-id: 5dc986ff-5b17-46a4-7074-08dd5b264ddc
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?d3pUZDNmc2FSUm9VOGNhVUFwdVd0dURWUXVSWktkY3NJTWJ3Vkt1bmhVSW55?=
 =?utf-8?B?UmJEMU5jdTc4bktmNzdGd3ZDK2MyZnBadEprbGwrM3lDSU55VWhDMXdXOEZQ?=
 =?utf-8?B?MFQybjM5SGJON3ArbjQ3c3hLcFFVa0pBa1lWTUZSVERMTklKbG5wcUFjVXJt?=
 =?utf-8?B?WDJoRS9rRHFrZUdkL1dtR2FoSGhUeVYwZHFUZ255NHg5K1ZRampWWWFZU3cv?=
 =?utf-8?B?U3hkR09JcDRweHRQMndEQ3BkaURjOURyNEtJSFNyTUkwSXFNNFFoT01ibUVW?=
 =?utf-8?B?ay94NU9IVlJxZ1hjemtDaVJUaEtBT05FNkJ1R1JQc2s3aHY3VnhLdm5SQ2NV?=
 =?utf-8?B?WFFtTWVDb3hiV0N6bW1HZkpOTURoZ2FWaDRPR2cvZFpZeUtmVnJLNDRxSFF6?=
 =?utf-8?B?ZHBiRmtOYyt0NG8wOFNSOWNsNzlEbUFYL2NwNFpvWkw1Y2ZnMGt0M1VHZmpT?=
 =?utf-8?B?amo0SlRqK09aVjltd2M2NW9XMlRwREhvd0c4RHREQjJQMGpZaVQ0ZHF3LzRl?=
 =?utf-8?B?R0tBSy9JeTVXcHVLb1lyNnZGdDgvQlBNM0daUlp4YkNUcUE3R2lDY0paTlJE?=
 =?utf-8?B?MjF2TEJ0MTZHNTUvbVhPTDdHTGxDNHljWlJobnh4blhqRy82Qlh6VVBUYk52?=
 =?utf-8?B?OWMxVjhtUGJCK3RrVFNBazlOQkpkbFFJZzZZNFNWQ0ZySjhlS3BneTYzQlJk?=
 =?utf-8?B?K1Z1clB4UXJHcWFkblhubk9HWFpqODRaSHVleGIvN2hyVVJjTTZvSW55cmRs?=
 =?utf-8?B?NXhiV1BCSEJDYUZzaEk4MHgwZnJZVkdkYi9RSVE0cWFzMHgzVDFkOUZFa29Y?=
 =?utf-8?B?UXNDbUdwZWNhYWlCNExKYTNBL1dZY1lLZjd2dE1BT0Q1K2prVG1pbU9WZWZ5?=
 =?utf-8?B?VEIvNExYZEdHeTJDUkRNZDNldlF2a3VOendxQjFPVmZkdTQzdm1EOTlNQ244?=
 =?utf-8?B?cGdkRjNGS3hlOXl5ZTd3UnJWWmJjSWFUZjVJakVJMklic0t4VVQvOWUvQmtC?=
 =?utf-8?B?NnAxcHdidzZvcERJTnk4WnZQVE5kRk44VVYyMGplWnNuS01FZGhyNE9MSjVB?=
 =?utf-8?B?MHcxb21CaWEvaENEUHl6VGZzWE1Sb1Z2OCtLVDQrdTJkV1pmWWZkVjVvVkMy?=
 =?utf-8?B?WG9odThrT2l0TGVBSm9JVlFEdHFBYUdPZVZZN3poOXBhaXQ1L2MrNTg0M0lz?=
 =?utf-8?B?WFlMTkhwdVA2a0FhSmhGdEtOSkE0dmlPMlBiYzFyNnRJbTVYc2QvVm9CRDNH?=
 =?utf-8?B?OG5RMkRaaFJnYkVWWk9MYmR4dHlGUWFaZ2t2OE5lcWM5dDRtWEs1S2tsb0R4?=
 =?utf-8?B?Ymo0LyttRzNVTXhuOU03UTV6WGVySE9nTTlsNWluSzRsTEFTT0VUNDZieVor?=
 =?utf-8?B?ZVgzZUxhRUFhbG5XK3BuVHVRQkJFMlVVV2FELzlmMmZwbTJJa2o0US90UFh3?=
 =?utf-8?B?VDd5K05MelRNWkdZdUVsa0QzQWNlTmUrNGc0dWFjdmNXM1Q2U3F3SHA3bVVz?=
 =?utf-8?B?eG5HL05VRWNYN2NKV0Q3a3lvNmhhSFZvaHFmMXUxTmJBM0pvM3ZLS1ppOFRC?=
 =?utf-8?B?WHVyUmhLVzd3SUMxOU13M2NqUU9taVlvditrKy94eHVFNWs0TjM2NUthNzhy?=
 =?utf-8?B?a2NVbnY3ZlJ0SlFOU1dDWlBHYUptZEhIUG1ORVRCdHY5dWdTZ1h2VTQ5SElQ?=
 =?utf-8?B?OXhubjBEMFRjbmpBV3RLU3NqOUsxUVpZOE1kSW9rdzl4Vit2Vm50TXlmYUh3?=
 =?utf-8?B?R1lub2Z4WVZvUHF6QmNKV0hRUFpDZ0M1YWFtUVdaSFE2TkdMMGt6SVAycVUy?=
 =?utf-8?B?UUxGVnJVRUNyTjl6QTY4MWlXekdiRXpYRGROclcvRXhnVGFQQ3JXSnZrYXZz?=
 =?utf-8?B?TEZKcDRDNC93ZFZDVmVRd1I5dXorZTJvTHUwMmkwam1tWXp4UERwdzVhUmNx?=
 =?utf-8?Q?wR7bQq31SvBO2vMjctAzpNhy28zc+UTH?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7777.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?WjY3V0RJMi95WXRqbXBVNGRWa29qeERaR2JSUE52MmZ0OU1taHlhZmhoUG1C?=
 =?utf-8?B?dTBibUFKa0hpQmdrSUNVQVJBNC9pV3pnT0F6VXdjM1B0dEhVSW5kT3k1cGZY?=
 =?utf-8?B?eFJ6SGViUjIwbVpaaW9oTE1YdUVKQ0pHRGQ4QlRVTytGUERsbnhZUnFzL0JI?=
 =?utf-8?B?bi9LWEdjbGFxSWE3ckZyajdyVGphRmszcjdXR0JIZnJucWZkMVFRcUFaYjZw?=
 =?utf-8?B?TVJOVFl6SzlUdDF1Ni8wZGpyVFZJdS9ISEU4YWpNcUZ4NkpVTnl2eCtoMGlY?=
 =?utf-8?B?WTBVTUR5cm1wMXlOaU90eDZBcXVQZ3pOcVM0bGYzWk0vd24zV0xzU1lxandD?=
 =?utf-8?B?SzBDUDdtUGJBYmMwSkUxRFJuOFZmc0U0WXRWMm8wMG1BQ3V0OWN2TXl4cFNv?=
 =?utf-8?B?UkxCNHZNR2NrNWdCZ2k1R0JkbGlqU3N5aStCU3RpdVFtaURzY28yV0s5eTFC?=
 =?utf-8?B?TFUzRldMTkZiSHdsMDd6TFVKaUJXSHdVbTA2M2djMkExS0F6YTAwVEIrMFh1?=
 =?utf-8?B?YXFneXFTVUEzQlk3cFlLc0dLL0pEYmMvUUNBVjgxWTdxUUNnL01WZldKNzhN?=
 =?utf-8?B?MHY1a081a2RMNnBZN00xVjhoRVk0OVdSNElZUTBQTWJnQnozM3B2bGN6bURQ?=
 =?utf-8?B?VE45UE8rVnlQcEVGK2NCMXIrR25xRGZDUTNSdEFPaXZIcjEvVm5OU1h1YTM5?=
 =?utf-8?B?d2Nkc0h6ajE1ZURTcStmN2o0QUlZMEJDNHVsYVJEUWlKdEM5b3g3WHRuTWo5?=
 =?utf-8?B?UzVnNGF0K1pHZWU4TzZrZTFQYnIzbmpGS0VBYktzMzE1R0poM0lvWitzRHNj?=
 =?utf-8?B?cW9pdDNEZ3dvUVl2V3BORDNXWXBrM0dNdXd0UzAyWlplN2U4azkydkxpeVcw?=
 =?utf-8?B?MGxrTkdQMXl1VHNMeUp2ZjBCR3c2d0dHdW1PdEpWTFF1bHJjc0ROT2hUK1Br?=
 =?utf-8?B?MEFjaHFMYk1pL1BaMno5L05aNFh5bTRzZWdsN1Q4dFZlQlU3UWwyaFNXM1cw?=
 =?utf-8?B?b3M5VlJkbldxWjFXNUZtcjVFN1h4WEJIOEIrNlVNbjdUSFMvMktSV0NVemRz?=
 =?utf-8?B?S0RDNWc5TE0xVzlUVzlkS0M3OG5wVUhTYnBwZVpZOUJWYkhISmZ2TlBnTVht?=
 =?utf-8?B?bi9ORE9ZTTFpNXVFdVBKdG1mWm1IWEUyWlpuSFN0YkVsYnRwalRaYllQMEEy?=
 =?utf-8?B?UzJiWHJ3TFFxTG5vL1pIVnAxOXF1R09RZlRySlJXTjE0WklMcVlQazRNUjcz?=
 =?utf-8?B?Qy9Yc1FWZkZ0ODJIcE5RKzJsRjlFcmVJeGRTWmM5U1Q3VitzNlltU3YwQ1NS?=
 =?utf-8?B?QUkyVkNxM3NNYmtaWFBLL2Q2b3gzazJuNXE5c21kTktFZFQvNzBUMGRhY3RV?=
 =?utf-8?B?QlNNT25zbmR5N2gzT3gzdTQvWjBQSkJiWGM4Skp6a21KUURzUmx1cVdIT0k4?=
 =?utf-8?B?SmlKV3d4SkdUYU15K0ZnREhoeGJUNjIwYUNkc3VicWJJdGsvVTMyUnJnUTdh?=
 =?utf-8?B?bzVrcTY3a1JKZnRNU0d0ejFCNmpjK3ppamRYcTNWdGVKQ2tvVGZGSWlQZmRs?=
 =?utf-8?B?THVvVG1pMm5ialRkYlNOblBrY3ozSTNJdGJsd045STZZbFVPQVBiaGxCZFp1?=
 =?utf-8?B?dlRxQ2xybFpMSDdPM3hTZXZoV3dhWC9iaXZ3Y2xhMXFxMm1yV09iM1ZvNHps?=
 =?utf-8?B?N3ArNk1xODBtbkk0dlNLdzZSVTVOaE1XYVJVMkd0T3hZckJKMTRVRWtmMzFh?=
 =?utf-8?B?amlBSnk2aFJTTXA3bndsVENDMytPZ3JNS2xxZ2lETURsdk52QTlEdW9vWDd3?=
 =?utf-8?B?YkZUMFRZdTJORkxDM3JST2JSRXN6UFdzbWNEaGlPeXI3MjNpTkJoSjRsVTgx?=
 =?utf-8?B?UkF3NDcxRG13bFB0b2E4b0VLMzBoMXR4SHM3QUIzd0Z4alZTMG5QQklwME1o?=
 =?utf-8?B?ZDY3bmNUTCs1cEFMN2FzdmJPUXVJVSs5TWRVeUdvaVdaYVhzKzdQVzdqbEdu?=
 =?utf-8?B?YTRJdjBkMTVsckJHVGwzN0FTUUJqRE5QK3ZOZDdtUnRzaGpWN3d2cnVHaG1Z?=
 =?utf-8?B?MTlSNThZOWZnMjl6MUk2ZThCZHFkeHZnanhvZGNCVmlHL3hpZUpIc1BXZWo1?=
 =?utf-8?B?MmJBSFV2OVlEZXFKUHBzamFKd1IxMGtZYlNqaG50RkVTcGtYbDgrM2pWS1Y0?=
 =?utf-8?Q?mxhzk0hS0yQI2rgeTvZNDSs=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <3345A20D919D9348A8ECF1AC86306A6F@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7777.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5dc986ff-5b17-46a4-7074-08dd5b264ddc
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Mar 2025 14:10:22.9215 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: DlcgIIfG7SloILPG+VMvxSqPo8pUd1uxMzSzJXwWzNI6sRGGHvEX74OIEgSmq0QbOy3lFDXQFo5jBHuwYIi/XkoXiHH4Vo9EFHFu1qPrgY4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4979
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
PiANCj4gVXBkYXRlIGJ3X3N0YXRlLT5hY3RpdmVfcGlwZXMgZHVyaW5nIHJlYWRvdXQuDQo+IA0K
PiBUaGlzIHdhcyBjb21wbGV0ZWx5IG1pc3NpbmcgZnJvbSB0aGUgY3VycmVudCByZWFkb3V0IGNv
ZGUuDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFA
bGludXguaW50ZWwuY29tPg0KPiAtLS0NCj4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2J3LmMgfCA2ICsrKysrKw0KPiDCoDEgZmlsZSBjaGFuZ2VkLCA2IGluc2VydGlvbnMo
KykNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2J3LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2J3LmMNCj4gaW5kZXgg
MDA5MGVlN2U3M2ExLi4zMGU2ZjMzZDZmMzAgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfYncuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2J3LmMNCj4gQEAgLTE0MzEsOSArMTQzMSwxNSBAQCB2b2lkIGludGVsX2J3
X3VwZGF0ZV9od19zdGF0ZShzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSkNCj4gwqAJaWYg
KERJU1BMQVlfVkVSKGRpc3BsYXkpIDwgOSkNCj4gwqAJCXJldHVybjsNCj4gwqANCj4gKwlid19z
dGF0ZS0+YWN0aXZlX3BpcGVzID0gMDsNCg0KQXMgYWN0aXZlX3BpcGVzIGFyZSBhbHJlYWR5IGNh
bGN1bGF0ZWQgaW4gaW50ZWxfbW9kZXNldF9yZWFkb3V0X2h3X3N0YXRlLCB3b25kZXIgd2lsbCBp
dCBiZSB1c2VmdWwNCmlmIHdlIHBhc3MgYWN0aXZlX3BpcGVzIGFzIGEgcGFyYW1ldGVyIHRvIHRo
aXMgZnVuY3Rpb24gYW5kIHVzZSBpdCBhYm92ZT8gDQoNCkFueXdheSwNCg0KUmV2aWV3ZWQtYnk6
IFZpbm9kIEdvdmluZGFwaWxsYWkgPHZpbm9kLmdvdmluZGFwaWxsYWlAaW50ZWwuY29tPg0KPiAr
DQo+IMKgCWZvcl9lYWNoX2ludGVsX2NydGMoZGlzcGxheS0+ZHJtLCBjcnRjKSB7DQo+IMKgCQlj
b25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSA9DQo+IMKgCQkJdG9faW50
ZWxfY3J0Y19zdGF0ZShjcnRjLT5iYXNlLnN0YXRlKTsNCj4gKwkJZW51bSBwaXBlIHBpcGUgPSBj
cnRjLT5waXBlOw0KPiArDQo+ICsJCWlmIChjcnRjX3N0YXRlLT5ody5hY3RpdmUpDQo+ICsJCQli
d19zdGF0ZS0+YWN0aXZlX3BpcGVzIHw9IEJJVChwaXBlKTsNCj4gwqANCj4gwqAJCWludGVsX2J3
X2NydGNfdXBkYXRlKGJ3X3N0YXRlLCBjcnRjX3N0YXRlKTsNCj4gwqAJfQ0KDQo=
