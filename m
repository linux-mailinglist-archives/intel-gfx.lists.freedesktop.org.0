Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 22F30A11B3A
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jan 2025 08:47:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC53A10E4E1;
	Wed, 15 Jan 2025 07:47:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Rw71uoOh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BEAA410E4E1;
 Wed, 15 Jan 2025 07:47:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736927227; x=1768463227;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=jAtI9zlI3EWHmqkT4xC09EWZiMeNtoj5CsX8oN34MTE=;
 b=Rw71uoOhCIF7ubS+9EstT1+fWzOa1YRO4IEc135d83gLTUYePbS+pgpL
 kkJrv7dKAeEQUlit0VlCahAqpnzkiAA2zCozYZfCJVTzPNY2Xo2Qz1TaW
 GjQfAiTHXg2h1aABtAna2T3nZJBSZHuk/G5vAuEK8lrEeYlghIje3iXRu
 b0o/N+gn06KaDyKddJZ3SILre2/mPa9Ejy5Q/T7zioqalx7PulDJ0BBEU
 /aJAr+LIcmuRjG558FinB5HaHKSYv0mEA8ULrDbelTLd0SgQgCqDp/MQ9
 HxssF1jA8OcRGtVY8rkzs7rmPx8xje3aJ7skvua3Zz0f2ZohJJoOOm8vU Q==;
X-CSE-ConnectionGUID: HjngSlqyQf+NybE8mHDhPA==
X-CSE-MsgGUID: u10LOe/LR/mb1cpUtGP19w==
X-IronPort-AV: E=McAfee;i="6700,10204,11315"; a="47913466"
X-IronPort-AV: E=Sophos;i="6.12,316,1728975600"; d="scan'208";a="47913466"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jan 2025 23:47:02 -0800
X-CSE-ConnectionGUID: KoIBdwKrSN6gBxFDhcSVvw==
X-CSE-MsgGUID: 5fQ1pJq3QqmDIJEc9CGzlw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,316,1728975600"; d="scan'208";a="105019014"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 Jan 2025 23:47:02 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Tue, 14 Jan 2025 23:47:01 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Tue, 14 Jan 2025 23:47:01 -0800
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.44) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 14 Jan 2025 23:47:00 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=DMbW73vk+pfy4+JFckiwJ83hhiDNjLPrMK6mkjOTiBp5Sm0PuV/uOX6uWAf+K5u2y3WgzYyc8UbJP5pyf6Y0RIaXpoM43suglfN6DhOKCtjSUnESwv+IXYhT6PZRlxJRBAUZRxFHBBo2JnhQxgW/4z+sOAXPLfZaoONCqt/SoXZha3QIAIthMRczipzMVtsHF6wge3y11cObwEvHd7wXUYalww8eXG6pR5YmFM9Sw5sf33sdENE5E049kC2PmMctVUhXTMn/ueeQqEWHgGcaSRTGbEE3mQg8IqLwFx9vfRahnyG1Sw3jKTaY/MZcmfc25ozlvud3ZsmtXlD1gUrZnA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jAtI9zlI3EWHmqkT4xC09EWZiMeNtoj5CsX8oN34MTE=;
 b=hvJyBJAYCihHuSpg2EenU9H7o051SztLXyMK5PCU5TGyC81BkxvmNZpOUBXoZxDD1myXKJvk2GTi9ZeTJRrCMSjVM6texF/+Y1as7ug09sb6ot0DaePPMbX2bya5tO/z6W9ng2rhagag3pA8z4lQimPcXSxu13PHpwIs2aLzqtgUsHWhIY8n0BqKwRGROkO1N0LsncLM0udR1S4qMz/9dii0GolQzbh0Yijd86Qj+mK6wAg99Zdb/nrOzAzXe26GlnLTGLLFm3yhhi6KjbGf+Lx+GQM9jNLjYLj6SszFg+itQuDDKpCBoCFlF0S/F+rbEK45fyS2GZbIkqa5IqTNGQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL1PR11MB5979.namprd11.prod.outlook.com (2603:10b6:208:386::9)
 by DS0PR11MB7483.namprd11.prod.outlook.com (2603:10b6:8:147::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8335.18; Wed, 15 Jan
 2025 07:46:44 +0000
Received: from BL1PR11MB5979.namprd11.prod.outlook.com
 ([fe80::b0f6:fbc:94be:2372]) by BL1PR11MB5979.namprd11.prod.outlook.com
 ([fe80::b0f6:fbc:94be:2372%7]) with mapi id 15.20.8335.017; Wed, 15 Jan 2025
 07:46:44 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Hogander, Jouni" <jouni.hogander@intel.com>
Subject: RE: [PATCH v3 02/10] drm/i915/psr: Rename psr_force_hw_tracking_exit
 as intel_psr_force_update
Thread-Topic: [PATCH v3 02/10] drm/i915/psr: Rename psr_force_hw_tracking_exit
 as intel_psr_force_update
Thread-Index: AQHbYmidqEbAAdKtcUu5EdhyzPe6q7MXfZQg
Date: Wed, 15 Jan 2025 07:46:44 +0000
Message-ID: <BL1PR11MB59799522723CB31771A26CE3F9192@BL1PR11MB5979.namprd11.prod.outlook.com>
References: <20250109073137.1977494-1-jouni.hogander@intel.com>
 <20250109073137.1977494-3-jouni.hogander@intel.com>
In-Reply-To: <20250109073137.1977494-3-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL1PR11MB5979:EE_|DS0PR11MB7483:EE_
x-ms-office365-filtering-correlation-id: 71695e7b-0d8b-47c6-9423-08dd3538c1c3
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|10070799003|366016|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?cW9RSFRPRkZzczhsMnI4THo3a3kxNlNTc0lVT094WHlpaUJZbjFWTDhmVFRi?=
 =?utf-8?B?ck5CeU80Y0RCaGsvNGREVVBRQXV0VXgzUVpxanVBR0tSRy9SeE12c1FUTENl?=
 =?utf-8?B?QVNRbEVyWWdQcFRBZHFlZzU2N0xqWm9tbllzc3BCYzgvS25QUS9vazJjVm45?=
 =?utf-8?B?c3NpaGZrQ1FhWEhVUVZyYXI2d2ZsTldxUTdETElDTmUzUi92VFQ1STNLcTRZ?=
 =?utf-8?B?eGw0d1haQzBJMndyWmxkY1RxbmhLc2kvZkJ3enE4cVhMWDgrV2Z2OUtQRzJt?=
 =?utf-8?B?SzIrOGR3ZHV1VFFuVldmK1ROdWZRS0tERnpzaUlVd0tHWFRGVkN6ZmVPalQ3?=
 =?utf-8?B?K29jRHJlQk5tRFd2WTJJbnQvb2ZqTFBEL0FOL1V3dmVmZXFnNFhBdEJSU2dH?=
 =?utf-8?B?Y3ptSTd4L2oycExFWWZaOW9sZjN6M1NST3l6NUVzU05wa0VwK2hrQnJwTnpa?=
 =?utf-8?B?MEFncWRPalhnc2RwRWlTNjVFT3ZhRUErUUR6MVY3bUNJdUQvN1RvYk0waWFy?=
 =?utf-8?B?ck85MGdZQmlGNXpkV0RoL1BSMmE0d05mSTFrbXhMUHNGK0xDdVBsZHRXeDJ4?=
 =?utf-8?B?cFNndG1MazZaZTdBc09qQW9GZGtKdExGa3dvaUplcDZPVzhlaUJuZ20xcnBi?=
 =?utf-8?B?VmFRSUo1MnJsRnArNnBHZS8xb0dXc3owL3dZQWdBQXZiVFVFMTlXa25LVjBi?=
 =?utf-8?B?UGh3bHZvem1HNnhwQmZUL0k4Si9kVnhHaGs1ekNoODVLWFRTQ2VjYlZLVURy?=
 =?utf-8?B?aVdySjg0ZkZMUG5Bc2RjTkZXK0VRdTF4Vmt2QlBLSXovVW9kbGlQNGNzeVA5?=
 =?utf-8?B?NzZ4NSt3cnhWWjQzUURXWkhuMWhtcGthNlZobE9MZi92V2p4cmw0R0YzRm1M?=
 =?utf-8?B?Uy9obTJKYjhZOUFIQUd6VHc5NzdTNU1ReWRyaGRwaFJ5clEveFQ2QXFJT1dU?=
 =?utf-8?B?S3FDQ0w1dUVWc1RTa2VycU1KN3Q4b0dhZU55OVFoSkdQQzZwczBrUGRYMzZ0?=
 =?utf-8?B?N3c1ZDdrdSttSzk5OGR1MTRDVTZxeHJzWGxRQ1lxY0RmVnBueHcrazNVczJ0?=
 =?utf-8?B?OG52Y3FUYjF1bHRtMHpEaFJiVW1jckx4K2h4YnhmRmhwMnhMMUFaVUhiWlFB?=
 =?utf-8?B?K2IyZmE0WlplWndNMnVhOUgxbVhGRk9wbjZwcThVTmpnM2xYZmd1cUdKYlBM?=
 =?utf-8?B?dFhVTVc3d3I5aWVvSTlnK3g4KyttL2h2YWY5SjI3bmFjdnNWYWh5aUd5TnFT?=
 =?utf-8?B?VW14YVZkZVFSNGRDYmNsSUZENjM4ZkZiL3FJUk1SWitJdmJsK2JvTk5kQW5r?=
 =?utf-8?B?YUVBMTZrb3NrQ1F6Qk1XYnFEemlGeDNPd2hYN1lRZXlraHdoSi9aTGNOMjBO?=
 =?utf-8?B?bDdjZXdKekVtUDN4Yy9LZ2hTSGhmUHpLQnR1VnVkV3VQS2pycjVMNDFQR2pm?=
 =?utf-8?B?UlUxcTc0SHNWdWs4cmFyU2wvVFVWakR6MUF4dVc5SzI4RkNGQzBOeVJXZWo5?=
 =?utf-8?B?OWxiQ2ZoenhtTVhLeXd2ZE9GQXE5SzhWTDk4K0N1M1ZVV3pNZmVOa1ZLWWY5?=
 =?utf-8?B?MWtyVXRQbnFxVHBtbUhlWFdoL0FZcDNCL0FpWGNaZGV0UHhVblhyR0hReUlw?=
 =?utf-8?B?OHF0VXlBSktocmEvK0VuZnFYM3ZLb3F5RHp5UGVKSjRvNW05ODZOdXZpYm0z?=
 =?utf-8?B?dndBU0daU1JDZkhQcEw2VS9kNnhka2YrWWhIQURsNmNYbVhTUDc3WlZ1MnMr?=
 =?utf-8?B?NmY3WUhsUEZINVVTcWdxZUZMZWNiS25vNzljRjEvSWc1Y0FndVBXOGsvRytV?=
 =?utf-8?B?dUpQQWsxNk5sNnhidXloZHBUSmNMWFVvd1pMUUxxdTljcUpqYlNlS1o0dHZ0?=
 =?utf-8?B?M0lzeitSTElmWGpqZThLYUgvWnpwVGNiVlVGakVMMEdFWmRTUWcwS0dhRTJY?=
 =?utf-8?Q?G0X5+F1J+howIA/pMlKvl1xmPAZnX9Nf?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL1PR11MB5979.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(10070799003)(366016)(7053199007)(38070700018);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dVI4Q2lLYTJ3RzI2Y3N4Mk9kbHNiakNZSFI5V0ZSbUxPRDROR2JQL3Z0d2JM?=
 =?utf-8?B?MWhMT1B5TDJhaU82WndMc2RGaUY3ODNHZHlOUDNEeEFDQjMxazFhZUJyUWtJ?=
 =?utf-8?B?aHZVT0g2TXJpNG82S21sQXpIRVpQeVBuc2l5RmRyWmZST2V0cDN4ZXRub0RQ?=
 =?utf-8?B?OU9qcHhzcUp5WXU0Zmc1amg5aXc1Q3ZBWkMvWm5Da05yY2E0cjQzSVI0L3ho?=
 =?utf-8?B?cTYvVHdpZldVT2Y3blNWOUJOcmNZVXdLWnZwaHRPMCtIak4zM05iRHY3Ly8w?=
 =?utf-8?B?ZHZxcjBTZGQ1NlNxb3c4em1MVmR4LzBUSHl5Q0dSQzRuNndkNmJ2VHVJREpQ?=
 =?utf-8?B?ZGcyYmlSb0o4RzZacHc0V01wMFFiMVpVV0NobThwbEZrRnVKeVk1d0Q3YmVr?=
 =?utf-8?B?TXUva3k2ZFRJbVVSK3ErOU1yZ2pma1EwTitXMEtORFFhNWdBWncvYXQ4U2g5?=
 =?utf-8?B?Z2gxUzNqTVJNcFFWK1NUOVlwd1ByN0JIU1BoaUl3RzF5Vi9iaXkyVnNMb0Jy?=
 =?utf-8?B?ekpOcG5QQmxPdDdMYTRhc0szVEszbUpLV21ZSUVKMVBVYy9lc2RZR0E2K1Ni?=
 =?utf-8?B?MkVqLzc1Skc5ZGlKWTVENThPL1BXZE5qRTlrTVZxRFlvelJweWl6dHVWZzJF?=
 =?utf-8?B?cjA5VnZDWHhQWFNGTWxxM3JOQllYdDJGZ1RZQWc4N256WWJ4QUx6L1VOdjRT?=
 =?utf-8?B?eFg0NkVHMEhoZW5kcmdMc3B4UEhwcEd6djJIY0ZGOGtBa3Zzd2VtdWt4cXh3?=
 =?utf-8?B?RWpSNHJzRE11NjRaWThVZWpnZllLS0dUNEdwMjFTZzZMYWNBSjcwUHI2Vmhh?=
 =?utf-8?B?V2N0Vy8xVFVERTY4aVlxMlZGOW9vM0JtV0p0WGN3UmhoMi9aU0loSEVEVXVz?=
 =?utf-8?B?K0lEME5tVFNHNGVBUGdTdmZLaXgra0VFSERlYnFvSHQ3eXY2bElsbGNrbWZT?=
 =?utf-8?B?OTFBUGJ4aytiM0FnVHpNUnQvTXJOVDJXQXVta01QdEZDeVdDZ2FWbWlQVFJH?=
 =?utf-8?B?cVRlQVRpdlNNb3FsT0tBMFZRMXhpdURkL2VJOVNaVFVybDdKaTFzeTJlN3RM?=
 =?utf-8?B?cTNSNFJzZ3o2L3ZHMEF4cjIveERSM3huMVRvRFBOTW4zMWZSRkQweVpKcEwv?=
 =?utf-8?B?d3l1SjRkRWJvbHhHK0NPUEc2L3Bnc1U5WGgvNHdESXI2aFJ3R0wvOEhnM1VY?=
 =?utf-8?B?OTh2LzJIM0l5eVErUDNocnoyR2MxcXhmL3A5VGxuTW9rb1BITUl3Y3pGek9y?=
 =?utf-8?B?NGhuVm1wUklzWDRyY1UramFIUUQ4ZlNlL04rVmdCeWFOaFhsU0xQUXdwZEJv?=
 =?utf-8?B?YklreWM3MTdQdnZndHNNaU1ybVRYUms3SWNGTjd3VkNST1dwWktlajFrNXMv?=
 =?utf-8?B?anJobXVGTzNBVWlhMlVNRTJid2ZySms3SVNzK2FKbVFTTWVSYUV1OE8rUThL?=
 =?utf-8?B?SHpJWGlDMXVCNWVXcVB1L2ZRdGpNejNxUWc3VFJvU0ZjdDRQVjJMWHFuVWR6?=
 =?utf-8?B?UitoTHhqNTBvZUxMUVBVcnhKb2NtTXVmcVlDc2QwWllkQ0FmTnc4di9HRVM4?=
 =?utf-8?B?WXBtd2RmYUtOTE9jS3JUcno3ZGNHZXpTdDBqd3NJeGNjQi9ZSGQrQlErOGxC?=
 =?utf-8?B?WEQxbXNiRHl5R1ZPMWN0d2J1c3JmcTUwVzQzWWRiMGpuU25tTmFhMnA0a3lC?=
 =?utf-8?B?eUNWamVVa0ZkRVVOMjZKNkF1QW1aZnNyZFhUNUw4TjRuT3BNZ09iSVFHM1c0?=
 =?utf-8?B?Z2IwWFA5alV4eU8vQ3ZpTFRJUUc0ZWZhRmFNQmtOYk1tS3J0eE1IY25MU1JZ?=
 =?utf-8?B?cU43ZitIc29MTlhaVGFJR3dxd0FHYkdUbjVvb2pFNlBBM0o5SjFyOFZOUjl6?=
 =?utf-8?B?S2ZWQU5nRFdYQnFCbXhUQVpzamxTT003ZUQ4MEpvdTZFUFFzdmJTL056NGJU?=
 =?utf-8?B?S2ZWaGg2WmxNUXd1L0xTbXEwTzhqdWtLZ09LTjNuTWUzbm02L0Qwc0VxeDJN?=
 =?utf-8?B?OFl5bEVXVU41YXNkaFJJVWZETGdMejdyc21EOFNIUkVYVHZuTVJjSUc4WEJa?=
 =?utf-8?B?UUowMjhoL0VJVkpBNm9aWEpXY1Fxc1ZNejdkZFczWk1rRC9ROFVzY2grOXNz?=
 =?utf-8?B?eFNMRXV5S3k1UXhudnN0UnpiZko2OWxCdkc5b1FGY0F0VGlQdUkvUkJmTm4w?=
 =?utf-8?B?amc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL1PR11MB5979.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 71695e7b-0d8b-47c6-9423-08dd3538c1c3
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Jan 2025 07:46:44.1374 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jhhT16gX/p68kqqj6SFUIUXmuCObk9qxufkmBFTtW3W0RMF0uGaVVqM+oFCpjq9Ug6oaCUbi6ZPGGHUhblIVyg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7483
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
bC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBKb3VuaQ0K
PiBIw7ZnYW5kZXINCj4gU2VudDogVGh1cnNkYXksIEphbnVhcnkgOSwgMjAyNSAxOjAxIFBNDQo+
IFRvOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnOyBpbnRlbC14ZUBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcNCj4gQ2M6IEhvZ2FuZGVyLCBKb3VuaSA8am91bmkuaG9nYW5kZXJAaW50ZWwu
Y29tPg0KPiBTdWJqZWN0OiBbUEFUQ0ggdjMgMDIvMTBdIGRybS9pOTE1L3BzcjogUmVuYW1lDQo+
IHBzcl9mb3JjZV9od190cmFja2luZ19leGl0IGFzIGludGVsX3Bzcl9mb3JjZV91cGRhdGUNCj4g
DQo+IHBzcl9mb3JjZV9od190cmFja2luZ19leGl0IGlzIG1pc2xlYWRpbmcgbmFtZSBhcyBpdCBp
cyB1c2VkIGZvciBQU1IxLCBQU1IyDQo+IEhXIHRyYWNraW5nIGFuZCBQU1IyIHNlbGVjdGl2ZSBm
ZXRjaC4gRHVlIHRvIHRoaXMgcmVuYW1lIGl0IGFzDQo+IGludGVsX3Bzcl9mb3JjZV91cGRhdGUu
DQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBKb3VuaSBIw7ZnYW5kZXIgPGpvdW5pLmhvZ2FuZGVyQGlu
dGVsLmNvbT4NCg0KTEdUTS4NClJldmlld2VkLWJ5OiBBbmltZXNoIE1hbm5hIDxhbmltZXNoLm1h
bm5hQGludGVsLmNvbT4NCg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfcHNyLmMgfCA4ICsrKystLS0tDQo+ICAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25z
KCspLCA0IGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX3Bzci5jDQo+IGluZGV4IDQ3NjMwNTAxMGUxMS4uNTQxMWQwZDZmMzYyIDEwMDY0NA0K
PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ICsrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gQEAgLTIzMTAsNyAr
MjMxMCw3IEBAIHN0YXRpYyB1MzINCj4gbWFuX3Rya19jdGxfY29udGludW9zX2Z1bGxfZnJhbWUo
c3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXkpDQo+ICAJICAgICAgIFBTUjJfTUFOX1RSS19D
VExfU0ZfQ09OVElOVU9TX0ZVTExfRlJBTUU7DQo+ICB9DQo+IA0KPiAtc3RhdGljIHZvaWQgcHNy
X2ZvcmNlX2h3X3RyYWNraW5nX2V4aXQoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCkNCj4gK3N0
YXRpYyB2b2lkIGludGVsX3Bzcl9mb3JjZV91cGRhdGUoc3RydWN0IGludGVsX2RwICppbnRlbF9k
cCkNCj4gIHsNCj4gIAlzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSA9IHRvX2ludGVsX2Rp
c3BsYXkoaW50ZWxfZHApOw0KPiAgCWVudW0gdHJhbnNjb2RlciBjcHVfdHJhbnNjb2RlciA9IGlu
dGVsX2RwLT5wc3IudHJhbnNjb2RlcjsgQEAgLQ0KPiAyODU3LDcgKzI4NTcsNyBAQCB2b2lkIGlu
dGVsX3Bzcl9wb3N0X3BsYW5lX3VwZGF0ZShzdHJ1Y3QNCj4gaW50ZWxfYXRvbWljX3N0YXRlICpz
dGF0ZSwNCj4gDQo+ICAJCS8qIEZvcmNlIGEgUFNSIGV4aXQgd2hlbiBlbmFibGluZyBDUkMgdG8g
YXZvaWQgQ1JDIHRpbWVvdXRzDQo+ICovDQo+ICAJCWlmIChjcnRjX3N0YXRlLT5jcmNfZW5hYmxl
ZCAmJiBwc3ItPmVuYWJsZWQpDQo+IC0JCQlwc3JfZm9yY2VfaHdfdHJhY2tpbmdfZXhpdChpbnRl
bF9kcCk7DQo+ICsJCQlpbnRlbF9wc3JfZm9yY2VfdXBkYXRlKGludGVsX2RwKTsNCj4gDQo+ICAJ
CS8qDQo+ICAJCSAqIENsZWFyIHBvc3NpYmxlIGJ1c3kgYml0cyBpbiBjYXNlIHdlIGhhdmUgQEAg
LTMyNTQsMTANCj4gKzMyNTQsMTAgQEAgc3RhdGljIHZvaWQgX3Bzcl9mbHVzaF9oYW5kbGUoc3Ry
dWN0IGludGVsX2RwICppbnRlbF9kcCkNCj4gIAkJCSAqIGNvbnRpbnVvdXMgZnVsbCBmcmFtZSBp
cyBkaXNhYmxlZCwgb25seSBhIHNpbmdsZSBmdWxsDQo+ICAJCQkgKiBmcmFtZSBpcyByZXF1aXJl
ZA0KPiAgCQkJICovDQo+IC0JCQlwc3JfZm9yY2VfaHdfdHJhY2tpbmdfZXhpdChpbnRlbF9kcCk7
DQo+ICsJCQlpbnRlbF9wc3JfZm9yY2VfdXBkYXRlKGludGVsX2RwKTsNCj4gIAkJfQ0KPiAgCX0g
ZWxzZSB7DQo+IC0JCXBzcl9mb3JjZV9od190cmFja2luZ19leGl0KGludGVsX2RwKTsNCj4gKwkJ
aW50ZWxfcHNyX2ZvcmNlX3VwZGF0ZShpbnRlbF9kcCk7DQo+IA0KPiAgCQlpZiAoIWludGVsX2Rw
LT5wc3IuYWN0aXZlICYmICFpbnRlbF9kcC0NCj4gPnBzci5idXN5X2Zyb250YnVmZmVyX2JpdHMp
DQo+ICAJCQlxdWV1ZV93b3JrKGRldl9wcml2LT51bm9yZGVyZWRfd3EsICZpbnRlbF9kcC0NCj4g
PnBzci53b3JrKTsNCj4gLS0NCj4gMi40My4wDQoNCg==
