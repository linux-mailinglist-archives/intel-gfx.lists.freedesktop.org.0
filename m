Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A8F88ADED4
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Apr 2024 09:57:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 606441131B4;
	Tue, 23 Apr 2024 07:40:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="T4Zv9Ita";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9A7941131B2
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Apr 2024 07:40:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713858013; x=1745394013;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=6LY6H8jWCOq5iFWl4WJvlsLyfyZqRj5QQfi7U9N0UCw=;
 b=T4Zv9ItalMYi8B3i+GwMqkKvAMCVumxtqmayRwWP0hB3ZisStJWrQ8pu
 DfjTPRp3E2NDxUV6Upko00qSFUbFelzyqoNbcc1e4SaSLyxDUskBlXeq9
 Rf2UdggydEIZ66bp0CybtCCGfloryVOHjZvuhTZ2FqxN2QoAY6Bs/m9E/
 g5GxxfGOZfVlHSTlyIk5qlcd2T2+AIYyk0xAiJiM41zDGPewO2WOG3NyS
 gjRFNOSF634p9W6TU50j19SmiB2L3RY8KysZBuhnxL3NQqby8yNwSXQwy
 /nKsV/xmclAfx8NhIA7JHKfcyqgBDFibKOOY1UPypcenfd7HJdQbttJyL A==;
X-CSE-ConnectionGUID: nDHY3CetSbaAHXAQvGx+vg==
X-CSE-MsgGUID: qvuq+ZnQTcSESu/LoDrdDA==
X-IronPort-AV: E=McAfee;i="6600,9927,11052"; a="34825523"
X-IronPort-AV: E=Sophos;i="6.07,222,1708416000"; d="scan'208";a="34825523"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2024 00:40:12 -0700
X-CSE-ConnectionGUID: TUJ1QX90TUa7ws2uVmgA2w==
X-CSE-MsgGUID: 4VxEqk4UQQqh9MsRKGLC3w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,222,1708416000"; d="scan'208";a="28952588"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 23 Apr 2024 00:40:11 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 23 Apr 2024 00:40:11 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 23 Apr 2024 00:40:11 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 23 Apr 2024 00:40:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=c+Q3TNvjawMZMmaukt7hf+oGpkxRwuSg/m+2ryujk7LIN0W31HEWmYziEsy2nAyhzMwzj6UGtwgOciPctBGmZteHgc0402mRb6dnfYIJHLZ2HqogcbhJ8Stc1gE7JXITbnye4o0LSas3ZTsQZqD2r/FWptMppfDCuRDCypu2Gav/EeNaLAMUwoAmagCT4b8W9Nkd+sn3exWv4a95o+FSgnyIDnRClAmY8pIiIPKbl6D+tKd5ljkg42r+94cFkZJQVFBk9V77eb8GKxHfd4RUvsa8UyT7v7GFOIPrznU4XxVm8KzeacGvYFP71tDr1yvlv80uJkQgbO8Doyi1JSmqFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6LY6H8jWCOq5iFWl4WJvlsLyfyZqRj5QQfi7U9N0UCw=;
 b=mBQBsGNJOH/yfM/RvMK1QvaGXx+eUzZZg47qb5yaLCBQFvNfhOFhhZv8NYEbASBCnEWkcSgsqPumOIDSjFF1flC3jq2W04Gy3K3k/ZSIzkrIMBB9RajhxoMopIqcxd3kIPF80x/xP3i72hx+MJVrvtipfsU0waldSEFFS5bsoQfq/LIIyVn/3H5dO/pYf3CqW51haL5K60TpwmkVkRzaXEwUya7WeLw9gZA67iMkpCspi1bXghaEEl/WERP/XnrCy6eCpejJOIMl54jQUNKz4+fg9rn1pzC4l12SyWokd+94iOqTToqqVcC1syjcV/q9cqMKChEZwjRTrzRQtROy1w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7777.namprd11.prod.outlook.com (2603:10b6:930:71::14)
 by DM4PR11MB8201.namprd11.prod.outlook.com (2603:10b6:8:18a::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7452.50; Tue, 23 Apr
 2024 07:40:04 +0000
Received: from CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8]) by CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8%3]) with mapi id 15.20.7519.018; Tue, 23 Apr 2024
 07:40:04 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
CC: "Saarinen, Jani" <jani.saarinen@intel.com>, "Lisovskiy, Stanislav"
 <stanislav.lisovskiy@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "Syrjala, Ville" <ville.syrjala@intel.com>
Subject: Re: [PATCH v10 6/6] drm/i915/display: force qgv check after the hw
 state readout
Thread-Topic: [PATCH v10 6/6] drm/i915/display: force qgv check after the hw
 state readout
Thread-Index: AQHah013UNnuT4yhxkKwgc8+mrv7HbFv7P4AgAWnToA=
Date: Tue, 23 Apr 2024 07:40:04 +0000
Message-ID: <58490248f4c6d443aea6dbe335c1233542703d58.camel@intel.com>
References: <20240405113533.338553-1-vinod.govindapillai@intel.com>
 <20240405113533.338553-7-vinod.govindapillai@intel.com>
 <ZiKnvOp3_Cq85NMt@intel.com>
In-Reply-To: <ZiKnvOp3_Cq85NMt@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.44.4-0ubuntu2 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7777:EE_|DM4PR11MB8201:EE_
x-ms-office365-filtering-correlation-id: c45e5bdc-95ba-4e20-e546-08dc63689741
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: =?utf-8?B?UUhaRlBqOVlzL01rVlBYWGRKRHJZdWp5QVdBSTRwa2dnMkR5ZFNBQ0cyaGxN?=
 =?utf-8?B?L2s4TDZoUTIrL3hNY1NvWWt4dkJ0UmlEM2dpNmN5LzRBdWk0TlNsdUNFNUkz?=
 =?utf-8?B?R1VVVEpYTE52NU00blJxMnFqTm5oUnhoc0ZVYWZhNGhBNjY3M0VDNlZXellh?=
 =?utf-8?B?RWVmRVRBUHJXSGxyc09nT3FqQS9BYUdHTEkyMWZvL3hQOXM4L0VaS1BURVZo?=
 =?utf-8?B?ZmJwbHZHMHBrbHFGalQ4Q200T1J2WFJYMjI2dUhwQXRZMSs2K3BaQnlYcUUv?=
 =?utf-8?B?cHM1cG14T2FRUWJNZHRmOVhaNnA4SVV4QWp0aVo2ZGVDZXZhSm10aVdPOHJE?=
 =?utf-8?B?OFoyZE5KVlBNQ25OeExsRHk5QXUyZFFxYUpVU01DQTJzeUhlTG1NMHdYZHpU?=
 =?utf-8?B?aWl3V2o3T0Irb3VHa1BvRWdydUIydHVFMXUzeUJOaGxkelc3bzhYS2hLam1q?=
 =?utf-8?B?ZjBaU1FmSlNqOU8rdkNPbFhGaDI5QnArMndndlM1NGowVC8vZ2l2YnE4elRu?=
 =?utf-8?B?U2RHcE1SWWxTRlQ1d3VFeFNpVkYxYytiTEtHWHQyeEI2Qml5c1BBcmdTTFpC?=
 =?utf-8?B?N25GaGZJbG1LNWVZSXZISGZDYVVVZW95SzViN25td2ZNeUJqNWRRZmFwaHJo?=
 =?utf-8?B?YWwrUWJpYUhJU2RIU2N3Tm40WTdESWFBTUFRWmptOXhGTDE5NGhjd0dESHBq?=
 =?utf-8?B?M3NTUjl5QmRiaVlRUW01SFdFdGlIZEdNNWFoN05CdE9ZVkNNYTNZUHNadlJa?=
 =?utf-8?B?L3dnMmNBWnhBY1dVTUI5aFl1R3hIOG9ZQ1pSeHVQa0RuTW5KeGQ2OWh0Y3B5?=
 =?utf-8?B?bHBvK3RIMUNvSUxoeGhyQVc1VVB5ME81aTZPNXJpWmVHVEUxVzFtbHQ0eU1k?=
 =?utf-8?B?bHBYeVFPajJFaEtoTWFET2Y0NDdjL3VvWms5MDFqZTMxeFBuY0RabzBlMDJm?=
 =?utf-8?B?c2lKeTZCUUc4Wk5acEZGeHkyNzUxTlhkN3NweWxHNGM2ZVNVUjRvMytKdGxM?=
 =?utf-8?B?VXZVZE1hczdUWXEra0RINHUybU4xVFhqajZWejJOM2tISjNBcllERktxSzBv?=
 =?utf-8?B?S2lyTUlhdStvbHc1cWE5akVkZUQ0RVVwTGNEVFFlREhYVzJINjZUaWp6bk1N?=
 =?utf-8?B?aHNnNDN0RkZiR3UvYkNGSDl4NlVHSUNOOWJIZ3VpSFhaN29NUG9DcGZXZVpp?=
 =?utf-8?B?SXdTanBlQVltVjE4a25OTllhQnRMT3AyQ09wSVVrWjZ3QVMyd1MvcGNYNzRq?=
 =?utf-8?B?b0doejBjU25lQndFQnBkL09COGw3cUNxT0dGTGtWditoRTl0eWtXSjFhYUhZ?=
 =?utf-8?B?UWV1Nlk2c0pnNWVDSklVY3JTRmxqVmc3aFI4d0lIc2MrejkwaG9mdUliN2tZ?=
 =?utf-8?B?aklITXRsU250LzBIS012bWovazIwbkNDbnhwVE9zbWM1NDRoaVl0MXN2TDEy?=
 =?utf-8?B?RUJWUmtsSm0xUjZyOE85K29XNWZzTWdOS29kN3FhbDUyU1IrcWJBVzIwN2V5?=
 =?utf-8?B?SmZOM3doOVdadGdkeFM4ZllkYzlTV2VxdDBLOFNkQmhLbDdFd3ZXdHNtWHRH?=
 =?utf-8?B?d0VlZkRPU2syR2Z2cGRLSktRLzBlU0VRa2pRYkUxVGxCbzdQdy9QZFkrOHh4?=
 =?utf-8?B?SVAydmR2Ty8weWsyOTduL2NSYkZRYUgyTzUvUkpPbXlTb0ZkaTY2K09KT1dB?=
 =?utf-8?B?MHp5M3hKWEszNFZpaGsvWkxnUWI3UnVPKzV1Z0RJODR2ZmwyS0pPKzMvSThQ?=
 =?utf-8?B?MW5rdXdRK0dseUZpemxKYzNUbkF1NmJDQjF0Slc1UEtBYzRyVjlHeDRmWWNU?=
 =?utf-8?B?Z2QrWUpncEx1UFdwdVZUQT09?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7777.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(366007)(1800799015)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Nk1JNmF4Y1B0WWc0VTlEaFRDNFBVMHd1My9wbVZoaWdNTTRTUFF6STlaUHVP?=
 =?utf-8?B?NHVlMGV2NjRxejJpSTNteW0vZVEyMEZCN0hpdUkxMzg3ZVMwME9KNmtZWkU3?=
 =?utf-8?B?NWJ2Qit5dTI5R0oydW4rNE5HWW5SNU5vckJUaFVYZTZPVjdERk5XeTk2V3dY?=
 =?utf-8?B?UFBBSDlWTC9GK0VTQUlLQitRbDBJeDBLZ09maU9FUmNVYVFJWll0SVE2eEJl?=
 =?utf-8?B?ODBrQmRUUDZIdGlITGtnM09yd3FSSlhZSW13RFF4eEdNNk54UXMwOEY0TG5D?=
 =?utf-8?B?VFM4alFIZW82Q1R2Qk52N2RNVld6RHgwZlNRMzhJcTQzVWdPUVdNTElzZElv?=
 =?utf-8?B?RUZlUHAwTkpFa3k3SVJmdnc0OEl5Z3laSTJrUkFlVTJMMXZ1WEZrWUdXT3Y4?=
 =?utf-8?B?VXR3Z0RCL1ZOeS93U3RKemVSc2p6VHZSWFFsQUljMHZWczVUbDVLcStHMkUr?=
 =?utf-8?B?OVd3YWVXWlB6cnlmOFBGMDVOeUZuZFltRW5qRUZySnVVSXdWUVUxd1VEWjA1?=
 =?utf-8?B?cDVoRVhlRlBoa0tOOXkrcVRxc0QvbDZIbnJMTHJXNkZNU3ZCRTBVYVkzZ21y?=
 =?utf-8?B?SWxwekhmUENRSzdIL1g5SHhkOS9JQjg1ZVRjcW1CUWVUWHdPNGdCcWdrWHcx?=
 =?utf-8?B?aTRTMHpRVnVlYjhFU2JZVXNwZDdhNlk5UTNVU0Zzak03WkZwbWowTjdDUmxk?=
 =?utf-8?B?MGxGelArSDluQi9ML0FRSkNQRm9qRU9nQUhjc2VQbkt2YnVJTlE1cUhGQ2V4?=
 =?utf-8?B?OVNFUlFIRFNDQnBQdXlWcFlKemltdjZsbytpRW1mVW1qenJGREs2WGRGZk5p?=
 =?utf-8?B?VzFvZmFiR2VOVldkcWg2N3MyUTc5TDRNZk9rbVRySTB0Y2Y5bEhVSGhRVERy?=
 =?utf-8?B?NUs0WEc2VzVIRTFiQ0R6M3FVYlNkU2ZBTnhKcUtiSkoxY0Ezd0xBbzRRYi9r?=
 =?utf-8?B?QmkrL0hGUEI1R1QrM3Z6ZHlzalRhOXJPQ2tBUGhmaUtaK3NNUVNJYWtHRG1I?=
 =?utf-8?B?Z3lneWNFZVBSL3JKTnpaMTJFN0xLYjJVTmV1MkgrWmhxaWZ3RVJ1YVNMK0xF?=
 =?utf-8?B?aXRPSjVzcFNxbVRzK0o4Q0NqTVJpVjRwNzJKSEZuNTkwdnpYallGMVVQVXNm?=
 =?utf-8?B?NFU2VFBsdmFmNytVa0VIMkZQZnlZUXJXV2gvZXBLaHB6SjB4Um9KZWxiVHJM?=
 =?utf-8?B?ZVZkZ25mUmFROEphekJTOW5WZHlzb2N0NjBzdXh6NjBOV3NmRVpjUitCUFJX?=
 =?utf-8?B?ZEF0anFPc29aT3ZFUFVLNnozWERCMEpFVHFRWnY4cEE2SmVaaWtFa2JVNXRD?=
 =?utf-8?B?amk0OE5rN1FhbnNSOGN4R04ybEo1M1YzYzduaGdKVVlUaE1CSEdkZ0dSd1ZX?=
 =?utf-8?B?bVlscGFqUVZUdDlZK2ZOa0p6cTdUdHU2bllPSXRUajRWaUNvdG16TTBKS3h0?=
 =?utf-8?B?WUVhMHVGYVN3MG5hZ0QvOVB5Umo4UTY5V3htbkRjQStkTk8yK0IwZHdoWTZ2?=
 =?utf-8?B?YVlmWUJLR0o2c2RkK3gwUjRLblJmQW83eUwvM2ZuN2tZY2FIRkhFYmtlUFFa?=
 =?utf-8?B?OVllUFd5WEpFZG9NRWtudW1pNXNHam1IMkZFUjA5amdYTTk5SllZaXE5Wkg2?=
 =?utf-8?B?S08zRncrVGtaWnQzaTF5eTF1eE1sK050RFhnbnJFWm5SSGdLVVdMNGZVdzRi?=
 =?utf-8?B?SmVxckdVYXIzaVhFd0Y0c0ZzeFFISjVieTR0dXNwckVTVDdocE9FRG5vQllO?=
 =?utf-8?B?K1M5UmJGWFFrRHdKWDRtbW40QWZncjA2R0dUK2VTMm5lRXJXdWZOYnprNUxQ?=
 =?utf-8?B?emp6SUJCWnFuSjgvY0NPdVBFVVUrQzVSUWFDbjRZRUdKMzRPOVJNWFFIT1pv?=
 =?utf-8?B?bWJuYTF5SzJrUjBWWitwdmhTcW40aXFEQVcwNUR0NkFZSDI2TWhWNUExZFo1?=
 =?utf-8?B?d2F6S2pYMVprMlVpWE9PaWZndlNUZGJKbzdVbnhYZEgyMVJlRjVzenVnOG1j?=
 =?utf-8?B?NmVac1ZFV3E3VGxNZlBhS2ZYNHRXWk5LT2dtUW1qbG1lYm1hRTlnUVpHRjZO?=
 =?utf-8?B?WmViY3hvR0ltcVlGbWNSdmVZRm9ldENBcFgybERXajl0amJ5WVRJNTJWNE1K?=
 =?utf-8?B?aFB3RGdhYmQyTFlkdk5aUTdwWWM4akRka0JpVkU5cmdyL09jWWQxM1BsRXdh?=
 =?utf-8?Q?QnSKFzwcFJdDNdBe2t/6sF0=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <04AC1263666714499D88613C1462389A@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7777.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c45e5bdc-95ba-4e20-e546-08dc63689741
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Apr 2024 07:40:04.4971 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: YNDx+1J4oKhZCQ6+VYWdhuJah90IQyb1pmj4eceddpBg+zx+IFs+UpshmEfRrnZDt5Ev1Vmr+7GoMS1dCtRfulDOnr6VnLjAQ9NG3VZpo/w=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB8201
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

T24gRnJpLCAyMDI0LTA0LTE5IGF0IDIwOjE5ICswMzAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
DQo+IE9uIEZyaSwgQXByIDA1LCAyMDI0IGF0IDAyOjM1OjMzUE0gKzAzMDAsIFZpbm9kIEdvdmlu
ZGFwaWxsYWkgd3JvdGU6DQo+ID4gVGhlIGN1cnJlbnQgaW50ZWxfYndfYXRvbWljX2NoZWNrIGRv
IG5vdCBjaGVjayB0aGUgcG9zc2JpbGl0eQ0KPiA+IG9mIGEgc2FndiBjb25maWd1cmF0aW9uIGNo
YW5nZSBhZnRlciB0aGUgaHcgc3RhdGUgcmVhZG91dC4NCj4gPiBIZW5jZSBjYW5ub3QgdXBkYXRl
IHRoZSBzYWd2IGNvbmZpZ3VyYXRpb24gdW50aWwgc29tZSBvdGhlcg0KPiA+IHJlbGV2YW50IGNo
YW5nZXMgbGlrZSBkYXRhIHJhdGVzLCBudW1iZXIgb2YgcGxhbmVzIGV0Yy4gaGFwcGVuLg0KPiA+
IEludHJvZHVjZSBhIGZsYWcgdG8gZm9yY2UgcWd2IGNoZWNrIGluIHN1Y2ggY2FzZXMuDQo+IA0K
PiBUaGUgY29ycmVjdCBmaXggd291bGQgYmUgdG8gbWFrZSBzdXJlIHRoZSByZWFkb3V0IGFjdHVh
bGx5DQo+IHdvcmtzLCBhbmQgdGh1cyB0aGUgc29mdHdhcmUgc3RhdGUgcmVmbGVjdHMgdGhlIHN0
YXRlIG9mDQo+IHRoZSBoYXJkYXJlIGFjY3VyYXRlbHkuDQoNCk9rYXkhIERvZXMgdGhhdCBtZWFu
LCB3ZSBuZWVkIHRvIHVwZGF0ZSB0aGUgcWd2IHBvaW50cyBhbmQgdXBkYXRlIHRvIHBjb2RlIHJp
Z2h0IGFmdGVyIHRoZSBIVw0KcmVhZG91dD8NCg0KUmlnaHQgbm93LCBvbiBid19pbml0IHdlIGZv
cmNlIGRpc2FibGUgc2Fndiwgc28gdGhhdCB3ZSBoYXZlIGEga25vd24gc2FndiBzdGF0ZS4gVGhl
biBvbg0KCWludGVsX21vZGVzZXRfcmVhZG91dF9od19zdGF0ZSgpIHdlIHVwZGF0ZSB0aGUgYndf
c3RhdGUgcGFyYW1ldGVycy4gU0FHViBpcyBzdGlsbCBkaXNhYmxlZC4gU28gb24gbmV4dG1vZGVz
ZXRpZnRoZWJ3X3N0YXRlcGFyYW1ldGVyc2FyZXNhbWVhc3RoZW9sZG0sdGhlbndld2lsbG5vdGJl
Y2FsY3VsYXRpbmd0aGVRR1Zwb2ludHMuSXRoaW5rc3VjaGFzY2VuYXJpb2hhcHBlbnNvbmx5b25j
ZWFmdGVydGhlYm9vdC5Tb3RoYXRzdGhlcmVhc29uSWFkZGVkdGhpc2ZsYWd0b2ZvcmNlY2FsY3Vs
YXRlUUdWLg0KDQoNCkJSDQpWaW5vZA0KDQo+IA0KPiA+IA0KPiA+IFNpZ25lZC1vZmYtYnk6IFZp
bm9kIEdvdmluZGFwaWxsYWkgPHZpbm9kLmdvdmluZGFwaWxsYWlAaW50ZWwuY29tPg0KPiA+IC0t
LQ0KPiA+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9idy5jIHwgOCArKysr
KystLQ0KPiA+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9idy5oIHwgNiAr
KysrKysNCj4gPiDCoDIgZmlsZXMgY2hhbmdlZCwgMTIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlv
bnMoLSkNCj4gPiANCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9idy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9idy5jDQo+
ID4gaW5kZXggNmZiMjI4YTFhMjhmLi4xYjE5MGJlNzQ1YTAgMTAwNjQ0DQo+ID4gLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9idy5jDQo+ID4gKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9idy5jDQo+ID4gQEAgLTc1NSw2ICs3NTUsNyBAQCB2
b2lkIGludGVsX2J3X2NydGNfdXBkYXRlKHN0cnVjdCBpbnRlbF9id19zdGF0ZSAqYndfc3RhdGUs
DQo+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBpbnRlbF9id19jcnRjX2RhdGFf
cmF0ZShjcnRjX3N0YXRlKTsNCj4gPiDCoMKgwqDCoMKgwqDCoMKgYndfc3RhdGUtPm51bV9hY3Rp
dmVfcGxhbmVzW2NydGMtPnBpcGVdID0NCj4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoGludGVsX2J3X2NydGNfbnVtX2FjdGl2ZV9wbGFuZXMoY3J0Y19zdGF0ZSk7DQo+ID4gK8Kg
wqDCoMKgwqDCoMKgYndfc3RhdGUtPmZvcmNlX2NoZWNrX3FndiA9IHRydWU7DQo+ID4gwqANCj4g
PiDCoMKgwqDCoMKgwqDCoMKgZHJtX2RiZ19rbXMoJmk5MTUtPmRybSwgInBpcGUgJWMgZGF0YSBy
YXRlICV1IG51bSBhY3RpdmUgcGxhbmVzICV1XG4iLA0KPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIHBpcGVfbmFtZShjcnRjLT5waXBlKSwNCj4gPiBAQCAtMTMzOSw4
ICsxMzQwLDkgQEAgaW50IGludGVsX2J3X2F0b21pY19jaGVjayhzdHJ1Y3QgaW50ZWxfYXRvbWlj
X3N0YXRlICpzdGF0ZSkNCj4gPiDCoMKgwqDCoMKgwqDCoMKgbmV3X2J3X3N0YXRlID0gaW50ZWxf
YXRvbWljX2dldF9uZXdfYndfc3RhdGUoc3RhdGUpOw0KPiA+IMKgDQo+ID4gwqDCoMKgwqDCoMKg
wqDCoGlmIChuZXdfYndfc3RhdGUgJiYNCj4gPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqAgaW50ZWxf
Y2FuX2VuYWJsZV9zYWd2KGk5MTUsIG9sZF9id19zdGF0ZSkgIT0NCj4gPiAtwqDCoMKgwqDCoMKg
wqDCoMKgwqAgaW50ZWxfY2FuX2VuYWJsZV9zYWd2KGk5MTUsIG5ld19id19zdGF0ZSkpDQo+ID4g
K8KgwqDCoMKgwqDCoMKgwqDCoMKgIChpbnRlbF9jYW5fZW5hYmxlX3NhZ3YoaTkxNSwgb2xkX2J3
X3N0YXRlKSAhPQ0KPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGludGVsX2Nhbl9lbmFibGVf
c2FndihpOTE1LCBuZXdfYndfc3RhdGUpIHx8DQo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
bmV3X2J3X3N0YXRlLT5mb3JjZV9jaGVja19xZ3YpKQ0KPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgY2hhbmdlZCA9IHRydWU7DQo+ID4gwqANCj4gPiDCoMKgwqDCoMKgwqDCoMKg
LyoNCj4gPiBAQCAtMTM1NCw2ICsxMzU2LDggQEAgaW50IGludGVsX2J3X2F0b21pY19jaGVjayhz
dHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSkNCj4gPiDCoMKgwqDCoMKgwqDCoMKgaWYg
KHJldCkNCj4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHJldHVybiByZXQ7DQo+
ID4gwqANCj4gPiArwqDCoMKgwqDCoMKgwqBuZXdfYndfc3RhdGUtPmZvcmNlX2NoZWNrX3FndiA9
IGZhbHNlOw0KPiA+ICsNCj4gPiDCoMKgwqDCoMKgwqDCoMKgcmV0dXJuIDA7DQo+ID4gwqB9DQo+
ID4gwqANCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9idy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9idy5oDQo+ID4gaW5k
ZXggZmExZTkyNGVjOTYxLi4xNjE4MTNjY2E0NzMgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9idy5oDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9idy5oDQo+ID4gQEAgLTQ3LDYgKzQ3LDEyIEBAIHN0cnVjdCBp
bnRlbF9id19zdGF0ZSB7DQo+ID4gwqDCoMKgwqDCoMKgwqDCoCAqLw0KPiA+IMKgwqDCoMKgwqDC
oMKgwqB1MTYgcWd2X3BvaW50c19tYXNrOw0KPiA+IMKgDQo+ID4gK8KgwqDCoMKgwqDCoMKgLyoN
Cj4gPiArwqDCoMKgwqDCoMKgwqAgKiBGbGFnIHRvIGZvcmNlIHRoZSBRR1YgY29tcGFyaXNvbiBp
biBhdG9taWMgY2hlY2sgcmlnaHQgYWZ0ZXIgdGhlDQo+ID4gK8KgwqDCoMKgwqDCoMKgICogaHcg
c3RhdGUgcmVhZG91dA0KPiA+ICvCoMKgwqDCoMKgwqDCoCAqLw0KPiA+ICvCoMKgwqDCoMKgwqDC
oGJvb2wgZm9yY2VfY2hlY2tfcWd2Ow0KPiA+ICsNCj4gPiDCoMKgwqDCoMKgwqDCoMKgaW50IG1p
bl9jZGNsa1tJOTE1X01BWF9QSVBFU107DQo+ID4gwqDCoMKgwqDCoMKgwqDCoHVuc2lnbmVkIGlu
dCBkYXRhX3JhdGVbSTkxNV9NQVhfUElQRVNdOw0KPiA+IMKgwqDCoMKgwqDCoMKgwqB1OCBudW1f
YWN0aXZlX3BsYW5lc1tJOTE1X01BWF9QSVBFU107DQo+ID4gLS0gDQo+ID4gMi4zNC4xDQo+IA0K
DQo=
