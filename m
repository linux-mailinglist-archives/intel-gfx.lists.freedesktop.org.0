Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CB359E9200
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Dec 2024 12:19:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B0E1010E6C5;
	Mon,  9 Dec 2024 11:19:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="X0MXtQVi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 072CE10E6C5
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Dec 2024 11:19:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733743192; x=1765279192;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=IATpBC4WCQJ7qwO8CUnNe2ojgHp3ny2K+nEns5eM4y0=;
 b=X0MXtQVi2Dh91X5gF4Q1qn/Nogb7WEGR2lARnx7SaKvobtIRY4seMk+t
 tIYIAEXM53IGJD+IVasx0Zj9VGQ4LrjeBi9erx2asMsV9v+4cR7oj/tVg
 pOLDuz22/DevDevxwVxkR6816kOOBoIFYxTicMd9/TOhr0G3ywIvrtfsK
 cOyAoVdvwkLxwzohkov+gAi0nDX3xRUOvR4GulfHGvJGW746TzU4HBHJZ
 Q1j4Bewb5SlvzXqscrd6uprNtIELUNonmCDTwRiDhhwTIbj0iNV2v+r06
 GzxzVx0Z7KJB2HqSX/e+8aTwn12SjBbk72RG8zUsG8MFtjqnn76tdCtiG Q==;
X-CSE-ConnectionGUID: 4fNIRJ+fQfaJzArFXC1qHg==
X-CSE-MsgGUID: Gy4X6ezISSiyE/LNiN2EmQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11280"; a="36871098"
X-IronPort-AV: E=Sophos;i="6.12,219,1728975600"; d="scan'208";a="36871098"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2024 03:19:51 -0800
X-CSE-ConnectionGUID: JJBL7nEhRTSoczlE14Tz7Q==
X-CSE-MsgGUID: lOD04nhUQcaDcKKO0RxEfw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="100074558"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 Dec 2024 03:19:50 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 9 Dec 2024 03:19:49 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 9 Dec 2024 03:19:49 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.47) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 9 Dec 2024 03:19:49 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=kTJqYUtNFlsle+VzbAL0mLOcbj1OSgGYae5PXhnX22cO0P6oAtMkXjilFl9+Zva+4BWIXvxal0z3Len04wrDkbRWpqi76/MOd0f4avpxYMFjxOu7iRRWDD/W2724+7Cv/oQn46TSv7+O6J3mrsW6zA9oK1I9qxZ/5JD90SGzMIjubiMoZYCjEjfjojAGTJQ8tCcPSUXH68O7ciEnFPdp8+8vvIwug8zgxGINoO7cBUQsKXnmf3tLfYdUI7W+7Jy4ryPXfucPwx56GAZbUZJI+mQ840blofpvnyXpLe44WRGTkbdh8NP87/i7SDLXAH4445snsu5PydOqcgwvWar0bQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IATpBC4WCQJ7qwO8CUnNe2ojgHp3ny2K+nEns5eM4y0=;
 b=Ig5Valm9mOxJrWX5jbtGPWHuGaIoA8Ug9QKoP8viEuCPU5tmTygc3heGzHX8C91oAUtC6fY+WlcxrV+uG3hiIf3dg6E4WPXG24JiOTQ9m6t6/9wJ8v+r9Mq/1xDfnWM7iPcxyTVevBQcgbnDZqikJ2SnD4SWBnFkHvzt4eg7nTeSqy/wi9XFfKX5CluNoerxWBb4p9nmNtdiTrZCYrcgJfdqD/u1GroG6moCa5+QJlaGYwU5urHR68GPxTa7JTChhoxcMvA+x24zC/p23M1aFPmUL1vpwqRJtvZdl3yt2FOx1okBZi8elYsG4/XGeW3pf0HSkOV9DNewIo1TCAMwPQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL1PR11MB5979.namprd11.prod.outlook.com (2603:10b6:208:386::9)
 by PH7PR11MB7076.namprd11.prod.outlook.com (2603:10b6:510:20f::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8207.19; Mon, 9 Dec
 2024 11:19:47 +0000
Received: from BL1PR11MB5979.namprd11.prod.outlook.com
 ([fe80::b0f6:fbc:94be:2372]) by BL1PR11MB5979.namprd11.prod.outlook.com
 ([fe80::b0f6:fbc:94be:2372%7]) with mapi id 15.20.8207.017; Mon, 9 Dec 2024
 11:19:47 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>, "B, Jeevan" <jeevan.b@intel.com>
Subject: RE: [PATCH v2 1/2] drm/i915/lobf: Add lobf enablement in post plane
 update
Thread-Topic: [PATCH v2 1/2] drm/i915/lobf: Add lobf enablement in post plane
 update
Thread-Index: AQHbRjaRCNplQRjFvU62VhAJExIXCbLdnkyAgAAtWzA=
Date: Mon, 9 Dec 2024 11:19:47 +0000
Message-ID: <BL1PR11MB5979ADA574A73E61AE34E2A2F93C2@BL1PR11MB5979.namprd11.prod.outlook.com>
References: <20241204100328.3738778-1-animesh.manna@intel.com>
 <20241204100328.3738778-2-animesh.manna@intel.com>
 <59438896581fbd20a460c6243c1116bfec31e480.camel@intel.com>
In-Reply-To: <59438896581fbd20a460c6243c1116bfec31e480.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL1PR11MB5979:EE_|PH7PR11MB7076:EE_
x-ms-office365-filtering-correlation-id: 60334ce8-dcac-4e5f-646c-08dd184363c8
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?SVRLMjYreFRrRkhhS0xpaUMzZVVwQjJFL3kra3A0N0NaVXc5VlVFSE02dG1u?=
 =?utf-8?B?YTUweE41dm1FSlRvWkd0NGxvRjJmcWg3RDMxdDUzVXpldWRwY2EwNHpONXlu?=
 =?utf-8?B?QjRLNC9Vd293NDNTdm95TG1VV3ZTVU1DVy9Fdzh4Z1drZmVVbzBBaXpITWVV?=
 =?utf-8?B?VGxNUmp3MTlxM1JnQTV4VkhNU2Q5ZUdWOUlQRDdKSEJvTEpuaHJFYTdQY280?=
 =?utf-8?B?djdtWlRUem1uZ1dJcTNOQTdYbi94VGlYaVNxS2JyN2NQQytLcmZ0NUgvUHJ2?=
 =?utf-8?B?d1pMb25JU2xRc0ZGVHR2ZkkvTVF2UksrSE9aYXUyY1VhUWREWDdiUGprV2NQ?=
 =?utf-8?B?cVBGNG1sczQxOHNLSVJMcElVcFVRcVpKZ3MvekhWbWRKcG9Hay9hYkFyZ1BM?=
 =?utf-8?B?L1lLUVRFL0VXcFd6OEtqSzZnSzhYVDZlQlVBQVcrZGlhYUJhZWxINGZ0ZmN4?=
 =?utf-8?B?dFpHQzJFMlVkTWc1aEY5cERnM293MlJQK1ppMWNMRnlGUGZYU093bEtaVExU?=
 =?utf-8?B?YXRWa0U5ZXlrRTFQVXJqQm5xSVhiZlFNYlNvdjc0NWkxV1pyUDQ3d2laUWFt?=
 =?utf-8?B?S2cweW5PaUxRclFCQkYydFZKTWFvRDVFT2JSZEhUUWQ1aDM2cWhnR1dEVytH?=
 =?utf-8?B?SmNvbFhIY3JNMG5zcVhDUU4vZ2lLY1JmSWJ5djUyMkZRWlJXYkhxdlU3ZGFH?=
 =?utf-8?B?Ymt6MktRN3BrQ1VXZmRxTGt2N3Z6ODJQdnRNaFZqTUQwS2U0Y3RwYk9CL1FY?=
 =?utf-8?B?UXJNWW9aU2JlVi95NEI0a3M3R09LT1N2ZC9ONllMK0VEMWhSWEo5VnB1c0xs?=
 =?utf-8?B?TkY4akN6OHlXeEhYWFdFNytyNW5qSGIwUDVyT1cvVldoa3FGT0xsK1Z4dFp1?=
 =?utf-8?B?OFBYTEdaUWcveTQwMmN0b1lMd0MxLzVxSWE3S3ZPYThOQ2ZVc21qS2hmNUNn?=
 =?utf-8?B?b0x2NlIxUXpCMEI3SktXMkF1Y0dJOFVuWFpqdWp3RWFXSW1Wa0xXYVdIV09t?=
 =?utf-8?B?QkRrMmVuZlBHUWpHcy8xKzZVaXZnMVFld2lJekIzRHc3Qi82QXJJaHI1eTJW?=
 =?utf-8?B?SnM1OWpraTZNTDFmemJVcDUzOUVSVWxLVGhZWWczRjFkMVJvZ1EvVGQ5a2Jl?=
 =?utf-8?B?Z1N2STVLclBqVXpNUXVaOWk1ZE92N2hNZm5sZUhYN1RiTDcwWHQzMmNNN2pR?=
 =?utf-8?B?OXNHTERWbTBQdE9ldWd6bUY0NTE1WkVpcTluZ1IyTDF6Tk9SV0hHN0s2Rm1K?=
 =?utf-8?B?RVZNRFZZZjJDUUYrQkV3cmN4T1VaRUJCRFAvZTdXRThEU1FDN0N0Q3g0eGZN?=
 =?utf-8?B?SVBJQUNvbGJ1aUp4RmZCWFVLK3JSNDNUT1JqVGFET0xnUmhrZER1cTlIUURU?=
 =?utf-8?B?NXRML3pROFBCOVZ0TDZGalpLMzVtd3lYOHF0V0VNYXdZNEt1UWF4cVk4RFJV?=
 =?utf-8?B?SktyV1ZBZ1BPU2M3YlUrbnJnYTZXWnJnYWhqaUZwbkh4UUh2d1E4NjVrY2Fm?=
 =?utf-8?B?cmljTmNadlNDaVJncG4ybkZleGQ3Mi9GQ1Jja2Y5RUtmWXdRYUlFcTBtYi9U?=
 =?utf-8?B?WDh4bXpVRUFZNklNZnR3K01BZXNwdDF0RmpXeWEwbkFYYnJVc2dCa2grd1N2?=
 =?utf-8?B?cEh2RURLeTU4cFd6S2hWUFErMXpKL3pYaHFWTEI2bW9BUlcybWVNZXdlaGVz?=
 =?utf-8?B?dHR6ZXhFMUlJZ3hOdkpQaHpwbFI3RjNqNW8zZ3JWbjRMSHhCYzJodDl0OWRu?=
 =?utf-8?B?NURGQXhZMmlJWVBRN1lLS1ErTkJEVmVWc0VsQzlKeHpYNXJYbFd2WDgrQmt0?=
 =?utf-8?B?NHFYQWE2M0REOVFabWtlU1BYK3ZGUTlWcmtRZkJxeTdTMDBpSzJQb0U3Yi9T?=
 =?utf-8?B?S0lrc21FdmprTUhXYlFmZ2lVOFFRN3ZuczZZUmoxc0l5RXc9PQ==?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL1PR11MB5979.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Z0VDN3RTQllsZk1wS0x5clFZWmU1dnpiV0FHcWFkbjUwakRpNFFyN3ZFUnQ4?=
 =?utf-8?B?SXhVWFVGNTY2ZEMxQ2RVc3FBcEx1VGRuVXlwYkZpbGllVTRwNEd6bFJlS2lZ?=
 =?utf-8?B?MzQ3SEc2VnBuclRDaVgxTklpcERoZnpkUjFrWlNFM3RLdDk2U2dBNndqVEor?=
 =?utf-8?B?eVJmTWs3MVZOM01UVnNaNTNJMFcxRCtFWFNpSEtwWlFXa1premN3WGZySnFq?=
 =?utf-8?B?T3c1eU5PZTErTUlpeWE3cHl3QVYxT2twOXEzOVp0UlJZYUw2QnhoeFkzbjJL?=
 =?utf-8?B?c0c5NzlpaUQ1Y3FsRXZiOVRka0hFcEg2Y3ZMMTV3WURsdWpjYk1ydEgwUVBW?=
 =?utf-8?B?RUthT2ZvUC85MXU5MW4xK092elZaK21EdEQxVUZTNDRVZktMZTNDNC9hVmt3?=
 =?utf-8?B?MkU5ckJVRDBMT3dHNzFsYytxdEwvWDFTTHRERVB0M1ZreHJTM3VabU81VWJN?=
 =?utf-8?B?blRlWElwN1JIaHRmbkEwWE9XQXNWT3l4VGxQejlleWxvZmZpdjFtaVc2V21M?=
 =?utf-8?B?bmFkemZZdnJxaXdNUGFLVS9IdzJaWWJnZ2EvYmpRWTN4ZzVBQm1tTU5COHcy?=
 =?utf-8?B?OTdwQjdkL21HU1I1UVlsdTlXdHl4SFRmc002ekV2MmVIVUFPTTRDTkJ0RjNI?=
 =?utf-8?B?aHE5T1NZclBNL2hkODJSamc2UGxuUUhaNGpVQXBwbkl0M25aVG91TC9uR0hO?=
 =?utf-8?B?bEtBV2k2NWhjeGxWTCtrY3VzWFAzNjQzYndVcFBHTmdiZVR1YitVNUFKMzVl?=
 =?utf-8?B?VE8yaFU0eWRmSVFrcjZ2UTZjcG1DTnE5c3VRdTlndFVJa1Q3YkRvWXBnQkhz?=
 =?utf-8?B?dEdYRjJYVXpDSnVqLzBwUlBEaElqWk1ROUp4aUJ6cHRRcm9laTcvZTgxL2pZ?=
 =?utf-8?B?Tml1OUF2c1VNbHNDNGl6TVl1dngyaitMaStuZitQbDFNQlJiY1lrclo0a285?=
 =?utf-8?B?V2RTTm95Y0NNNW1kTk5jdmNaQjNLT0oydVJjMVJhc1dZdFNHM0pCeGtEWnlG?=
 =?utf-8?B?WHY2eUlFUS9jUGpHdkIzeWZaVnovdWFLNWtDOWNYMWVxR0dPQ3czQmtGaWF6?=
 =?utf-8?B?c0R2U1FsSzRoaUtLVmRXSS9kbEpGODZDREVxQlZvb0N4cHplZVVMMFVYUGxM?=
 =?utf-8?B?bXZEOEN4Y1QyYXRNbWgzRjRDSGNScFpCbjFyNDJqVUUzTi9Lb3RTd3VmS3JI?=
 =?utf-8?B?WUJQZkg1ZERrUDIvTGJvUXFyaFFDcEpManhCbjdOdDlLOUN5S1lXa2ZSTWpZ?=
 =?utf-8?B?cXpqOGFZSlBrQlJicWlxQkd4SzVRRld2RUd2ZXR4Yk1Mb2tzdXpTZEt5QVFO?=
 =?utf-8?B?a3pBY2o5NTQ2Umk5Q1JaYlk4VFRaMnMrTzRPRXBIQ3k3S3l6UDliL0N1WitI?=
 =?utf-8?B?KzYyTmp2c3NNaHVjcCtFQmt4c3VpRTRTQ3pJYVFMY1lUZ2xBdXFzRmpBZTFC?=
 =?utf-8?B?NDZjQkZ3aTY3ZUZ4RUtaTXhsQjJ3S1JOZVlNazVKL2JvRzdoRnpab0NRYWg4?=
 =?utf-8?B?OXNNQTJWSTIwVHVQQzdDRWpLUjRQVlRNSVlpVlZrT0pZbnNIVFFvblBZNGFE?=
 =?utf-8?B?K0dwNFRFT01kaFRKWXAvM0t5SHFjUHhONXFIRHozTnNIV1ZIdHVNRG5UWE91?=
 =?utf-8?B?bFhobUpGSHNJV0NtbGZYQmltZ3I4V3lmNVlFS3J6QnNOWFIyMzFnb2x6eURR?=
 =?utf-8?B?eCtKdDk1L1RuUW1RaldsakRGb2liaTFRbTV6SURTeUlEWFV5bUtpRGtQVVht?=
 =?utf-8?B?VmhaL2RoUXgyMVVWL00yYTMvSjdRODNPakRranJ5NklmMUVNSEYxM2ZaZGdW?=
 =?utf-8?B?bzNETG1ydnVMd3pvVU1UN1N2QTBYa3JNMDdGbXJsbkU1SmdHa0VjdWZzVFYz?=
 =?utf-8?B?cVBTNGFLM2VHUytuNkR5QjBKV2ZLY0VnSWpNZEs1bFEweUNoK0ljM1dZajR2?=
 =?utf-8?B?bDRNN01UOWRGdUY3bUZlU05CZU1iL3ZyZGNHdFRkTzkxSDZLOS9HMEhSV0xr?=
 =?utf-8?B?ZjFkMk9BcTFkU1MrWGYrczEyeHBHV3A0cWRtY3ZVRzhCV3hTWjNtUTN5bW5E?=
 =?utf-8?B?clZaRUx4TnRuS29xYSs1MStwRnF4a3hsR1ZDWEFjQ21RemZ6SHR3VWpUQmlS?=
 =?utf-8?Q?eUmSL9pD9fEx9+tgLo1YHn3U8?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL1PR11MB5979.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 60334ce8-dcac-4e5f-646c-08dd184363c8
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Dec 2024 11:19:47.2259 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kELbmsgA8Vfs0sAIpc+6rlAXbjvbJHIb3kVkb3/FYlWN9eMSYMvBkbaV9Ha5ePdU+whqkG/DmpMQlDed3cV0Pw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7076
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSG9nYW5kZXIsIEpvdW5p
IDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IFNlbnQ6IE1vbmRheSwgRGVjZW1iZXIgOSwg
MjAyNCAyOjA2IFBNDQo+IFRvOiBNYW5uYSwgQW5pbWVzaCA8YW5pbWVzaC5tYW5uYUBpbnRlbC5j
b20+OyBpbnRlbC0NCj4gZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBDYzogTmlrdWxhLCBK
YW5pIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+OyBCLCBKZWV2YW4gPGplZXZhbi5iQGludGVsLmNv
bT4NCj4gU3ViamVjdDogUmU6IFtQQVRDSCB2MiAxLzJdIGRybS9pOTE1L2xvYmY6IEFkZCBsb2Jm
IGVuYWJsZW1lbnQgaW4gcG9zdA0KPiBwbGFuZSB1cGRhdGUNCj4gDQo+IE9uIFdlZCwgMjAyNC0x
Mi0wNCBhdCAxNTozMyArMDUzMCwgQW5pbWVzaCBNYW5uYSB3cm90ZToNCj4gPiBFbmFibGVtZW50
IG9mIExPQkYgaXMgYWRkZWQgaW4gcG9zdCBwbGFuZSB1cGRhdGUgd2hlbmV2ZXIgaGFzX2xvYmYN
Cj4gPiBmbGFnIGlzIHNldC4gQXMgTE9CRiBjYW4gYmUgZW5hYmxlZCBpbiBub24tcHNyIGNhc2Ug
YXMgd2VsbCBzbyBhZGRpbmcNCj4gPiBpbiBwb3N0IHBsYW5lIHVwZGF0ZS4gVGhlcmUgaXMgbm8g
Y2hhbmdlIG9mIGNvbmZpZ3VyaW5nIGFscG0gd2l0aCBwc3INCj4gPiBwYXRoLg0KPiA+DQo+ID4g
djE6IEluaXRpYWwgdmVyc2lvbi4NCj4gPiB2MjogVXNlIGVuY29kZXItbWFzayB0byBmaW5kIHRo
ZSBhc3NvY2lhdGVkIGVuY29kZXIgZnJvbSBjcnRjLXN0YXRlLg0KPiA+IFtKYW5pXQ0KPiA+DQo+
ID4gU2lnbmVkLW9mZi1ieTogQW5pbWVzaCBNYW5uYSA8YW5pbWVzaC5tYW5uYUBpbnRlbC5jb20+
DQo+ID4gLS0tDQo+ID4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2FscG0u
Y8KgwqDCoCB8IDI1DQo+ID4gKysrKysrKysrKysrKysrKysrKysNCj4gPiDCoGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYWxwbS5owqDCoMKgIHzCoCA0ICsrKysNCj4gPiDCoGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIHzCoCAzICsrKw0KPiA+
IMKgMyBmaWxlcyBjaGFuZ2VkLCAzMiBpbnNlcnRpb25zKCspDQo+ID4NCj4gPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hbHBtLmMNCj4gPiBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYWxwbS5jDQo+ID4gaW5kZXggNTVmM2FlMWU2
OGM5Li43NTA2MzM0MmExMDAgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9hbHBtLmMNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2FscG0uYw0KPiA+IEBAIC0zNjcsNiArMzY3LDMxIEBAIHZvaWQgaW50ZWxfYWxw
bV9jb25maWd1cmUoc3RydWN0IGludGVsX2RwDQo+ID4gKmludGVsX2RwLA0KPiA+IMKgwqDCoMKg
wqDCoMKgwqBsbmxfYWxwbV9jb25maWd1cmUoaW50ZWxfZHAsIGNydGNfc3RhdGUpOw0KPiA+IMKg
fQ0KPiA+DQo+ID4gK3ZvaWQgaW50ZWxfYWxwbV9wb3N0X3BsYW5lX3VwZGF0ZShzdHJ1Y3QgaW50
ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwNCj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBzdHJ1Y3QgaW50ZWxfY3J0YyAq
Y3J0Yykgew0KPiA+ICvCoMKgwqDCoMKgwqDCoHN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5
ID0gdG9faW50ZWxfZGlzcGxheShzdGF0ZSk7DQo+ID4gK8KgwqDCoMKgwqDCoMKgY29uc3Qgc3Ry
dWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUgPQ0KPiA+ICvCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqBpbnRlbF9hdG9taWNfZ2V0X25ld19jcnRjX3N0YXRlKHN0YXRlLCBjcnRj
KTsNCj4gPiArwqDCoMKgwqDCoMKgwqBzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlcjsNCj4g
PiArDQo+ID4gK8KgwqDCoMKgwqDCoMKgaWYgKCFjcnRjX3N0YXRlLT5oYXNfbG9iZikNCj4gPiAr
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcmV0dXJuOw0KPiA+ICsNCj4gPiArwqDCoMKg
wqDCoMKgwqBmb3JfZWFjaF9pbnRlbF9lbmNvZGVyX21hc2soZGlzcGxheS0+ZHJtLCBlbmNvZGVy
LA0KPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCBjcnRjX3N0YXRlLT51YXBpLmVuY29kZXJfbWFzaykgew0KPiA+
ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2Rw
Ow0KPiA+ICsNCj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgaWYgKCFpbnRlbF9l
bmNvZGVyX2lzX2RwKGVuY29kZXIpKQ0KPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgY29udGludWU7DQo+ID4gKw0KPiA+ICvCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqBpbnRlbF9kcCA9IGVuY190b19pbnRlbF9kcChlbmNvZGVyKTsNCj4gPiAr
DQo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGlmIChpbnRlbF9kcF9pc19lZHAo
aW50ZWxfZHApKQ0KPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgaW50ZWxfYWxwbV9jb25maWd1cmUoaW50ZWxfZHAsIGNydGNfc3RhdGUpOw0KPiANCj4g
VGhpcyBpcyByZWNvbmZpZ3VyaW5nIGxvYmYgZXZlbiBpZiBpdCdzIGFscmVhZHkgY29uZmlndXJl
ZD8gSXMgdGhhdCB3YW50ZWQ/DQoNCmhhc19wc3IgYW5kIGhhc19sb2JmIGFyZSBtdXR1YWxseSBl
eGNsdXNpdmUsIHNvIGFscG1fY29uZmlndXJlKCkgd2lsbCBiZSBjYWxsZWQgb25jZS4NCg0KUmVn
YXJkcywNCkFuaW1lc2gNCiANCj4gDQo+IEJSLA0KPiANCj4gSm91bmkgSMO2Z2FuZGVyDQo+ID4g
K8KgwqDCoMKgwqDCoMKgfQ0KPiA+ICt9DQo+ID4gKw0KPiA+IMKgc3RhdGljIGludCBpOTE1X2Vk
cF9sb2JmX2luZm9fc2hvdyhzdHJ1Y3Qgc2VxX2ZpbGUgKm0sIHZvaWQgKmRhdGEpDQo+ID4gwqB7
DQo+ID4gwqDCoMKgwqDCoMKgwqDCoHN0cnVjdCBpbnRlbF9jb25uZWN0b3IgKmNvbm5lY3RvciA9
IG0tPnByaXZhdGU7IGRpZmYgLS1naXQNCj4gPiBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfYWxwbS5oDQo+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2FscG0uaA0KPiA+IGluZGV4IDhjNDA5YjEwZGNlNi4uMmY4NjJiMDQ3NmE4IDEwMDY0NA0KPiA+
IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYWxwbS5oDQo+ID4gKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hbHBtLmgNCj4gPiBAQCAtMTIs
NiArMTIsOCBAQCBzdHJ1Y3QgaW50ZWxfZHA7DQo+ID4gwqBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0
ZTsNCj4gPiDCoHN0cnVjdCBkcm1fY29ubmVjdG9yX3N0YXRlOw0KPiA+IMKgc3RydWN0IGludGVs
X2Nvbm5lY3RvcjsNCj4gPiArc3RydWN0IGludGVsX2F0b21pY19zdGF0ZTsNCj4gPiArc3RydWN0
IGludGVsX2NydGM7DQo+ID4NCj4gPiDCoHZvaWQgaW50ZWxfYWxwbV9pbml0X2RwY2Qoc3RydWN0
IGludGVsX2RwICppbnRlbF9kcCk7DQo+ID4gwqBib29sIGludGVsX2FscG1fY29tcHV0ZV9wYXJh
bXMoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwgQEAgLTIxLDYNCj4gPiArMjMsOCBAQCB2b2lk
IGludGVsX2FscG1fbG9iZl9jb21wdXRlX2NvbmZpZyhzdHJ1Y3QgaW50ZWxfZHANCj4gPiAqaW50
ZWxfZHAsDQo+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBzdHJ1Y3QgZHJtX2Nvbm5lY3Rvcl9zdGF0ZQ0KPiA+
ICpjb25uX3N0YXRlKTsNCj4gPiDCoHZvaWQgaW50ZWxfYWxwbV9jb25maWd1cmUoc3RydWN0IGlu
dGVsX2RwICppbnRlbF9kcCwNCj4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCBjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0
ZSk7DQo+ID4gK3ZvaWQgaW50ZWxfYWxwbV9wb3N0X3BsYW5lX3VwZGF0ZShzdHJ1Y3QgaW50ZWxf
YXRvbWljX3N0YXRlICpzdGF0ZSwNCj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0
Yyk7DQo+ID4gwqB2b2lkIGludGVsX2FscG1fbG9iZl9kZWJ1Z2ZzX2FkZChzdHJ1Y3QgaW50ZWxf
Y29ubmVjdG9yICpjb25uZWN0b3IpOw0KPiA+IMKgYm9vbCBpbnRlbF9hbHBtX2F1eF93YWtlX3N1
cHBvcnRlZChzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKTsNCj4gPiDCoGJvb2wgaW50ZWxfYWxw
bV9hdXhfbGVzc193YWtlX3N1cHBvcnRlZChzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKTsNCj4g
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5
LmMNCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+
ID4gaW5kZXggNDgwNWJmNjgyZDQzLi5mZmQ5NmIxODdlNWUgMTAwNjQ0DQo+ID4gLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4gPiArKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0KPiA+IEBAIC01NSw2ICs1
NSw3IEBADQo+ID4gwqAjaW5jbHVkZSAiaTl4eF9wbGFuZS5oIg0KPiA+IMKgI2luY2x1ZGUgImk5
eHhfcGxhbmVfcmVncy5oIg0KPiA+IMKgI2luY2x1ZGUgImk5eHhfd20uaCINCj4gPiArI2luY2x1
ZGUgImludGVsX2FscG0uaCINCj4gPiDCoCNpbmNsdWRlICJpbnRlbF9hdG9taWMuaCINCj4gPiDC
oCNpbmNsdWRlICJpbnRlbF9hdG9taWNfcGxhbmUuaCINCj4gPiDCoCNpbmNsdWRlICJpbnRlbF9h
dWRpby5oIg0KPiA+IEBAIC0xMTkwLDYgKzExOTEsOCBAQCBzdGF0aWMgdm9pZCBpbnRlbF9wb3N0
X3BsYW5lX3VwZGF0ZShzdHJ1Y3QNCj4gPiBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLA0KPiA+
DQo+ID4gwqDCoMKgwqDCoMKgwqDCoGludGVsX3Bzcl9wb3N0X3BsYW5lX3VwZGF0ZShzdGF0ZSwg
Y3J0Yyk7DQo+ID4NCj4gPiArwqDCoMKgwqDCoMKgwqBpbnRlbF9hbHBtX3Bvc3RfcGxhbmVfdXBk
YXRlKHN0YXRlLCBjcnRjKTsNCj4gPiArDQo+ID4gwqDCoMKgwqDCoMKgwqDCoGludGVsX2Zyb250
YnVmZmVyX2ZsaXAoZGV2X3ByaXYsIG5ld19jcnRjX3N0YXRlLT5mYl9iaXRzKTsNCj4gPg0KPiA+
IMKgwqDCoMKgwqDCoMKgwqBpZiAobmV3X2NydGNfc3RhdGUtPnVwZGF0ZV93bV9wb3N0ICYmIG5l
d19jcnRjX3N0YXRlLQ0KPiA+ID5ody5hY3RpdmUpDQoNCg==
