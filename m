Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F44F932021
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jul 2024 07:40:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CFC8510E4E7;
	Tue, 16 Jul 2024 05:40:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NREwEMBI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2649210E4E7
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Jul 2024 05:40:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721108424; x=1752644424;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=9oEWYcBxSPYMYnWni7GnJtmlp06xitOvtpgeajxDj5s=;
 b=NREwEMBIKjPnaySU24fgtvfBqbGJ2GWzFQJu5xJX9bTaWbvPhZ9dF2Ss
 pA5uBeHkja+8cXcBh4VtLjk2/bxnpwFjBsBF0lTt5obMv7f16T21gL9Gl
 iiONSmTJF7kkyMGpp/cmXEGLtljogWMkhccZpdq239IPi6CECoVHOohAl
 ruDYnrterME9hrI7i3fy7b5CysD/peRWFyq5qY99S8IyFJIRytezSiWnD
 Tgsv+wFTRcbQOhmCeHn1hKTCCds8/oE8lkDf0u+vUe+lxQk+pB6NmTb4O
 8F7WIBV2b/otc2RGjNivZdW304C3hoXV+u2v8gZgMSN1AtSZ4Nqo117G8 Q==;
X-CSE-ConnectionGUID: Nd/LBrPwR4iTY6BsmjpS5g==
X-CSE-MsgGUID: QJW+6Zp/T0ex4Q4T2ueZXA==
X-IronPort-AV: E=McAfee;i="6700,10204,11134"; a="18654350"
X-IronPort-AV: E=Sophos;i="6.09,211,1716274800"; d="scan'208";a="18654350"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2024 22:40:24 -0700
X-CSE-ConnectionGUID: zOOeeXpWTX6LiYYfUM7vOw==
X-CSE-MsgGUID: gMxa/7FbSVeJ98GEVP3rZw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,211,1716274800"; d="scan'208";a="50506248"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 15 Jul 2024 22:40:24 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 15 Jul 2024 22:40:23 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 15 Jul 2024 22:40:22 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 15 Jul 2024 22:40:22 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.40) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 15 Jul 2024 22:40:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=bkonpqmCbQK19OtSUE/zRIk/5khEu+xrkVTUMXazsevGClGB/1BHQrqcm9g9//4lERAvmBHffxOyX4zccVyUZPToxvVjcL5+kZ6mZ9g/g9nwl1yx19DtdHdbL+9W26BxaHfFGG+ehpfyQP0Y7P0B8tOmmjFR1AbfglU6XTNjNcJalNVSQItNTFJnQBaa4qq9voo9hueb5OgYrOj8UlVX3otrlAxg2kud4tgiu/KHAA5x3yJXJJK8q9URViv6HTfKMV6EEt9QWmH5vexvFvlpVjMIn4+8mHI+6Z7awWFMKxUHHcePJJbf3kOBqb2NjQnA9iidGH+UcDFRrsF/YNt0Zg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9oEWYcBxSPYMYnWni7GnJtmlp06xitOvtpgeajxDj5s=;
 b=rMXFp5hAWkVAOQAKo/jmIEiTLQ6W5VcT0/lDDVLHCeE9GSD/klsvsOslVWiROTfAfGXpWX7Z7iZdXXO0PPPWKTeRBl441ioj8KKK3qyfZvsuk+ax2j8lo6it9jpUBdexM1aZGTQUmJaXEjM4GaSkHWA6/ZomAWa7i5k2mU41QMHKUNlPZzea0iM2ZR694u2LvkjNX6NzryKko2nx9m6/NtHPPkWwubkcZvRy2/QmeuRp+j0Xu3dR697ebH7+iwWEv50YkC0LpHqGs+FVb4TD+HMBGY4bMiMYoOP+Zyrb+NjN8bCtDUDN70y99HceFeOC1WJhr2prtUkSJbTOQ163aw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by DS7PR11MB7740.namprd11.prod.outlook.com (2603:10b6:8:e0::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7762.28; Tue, 16 Jul
 2024 05:40:20 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525%7]) with mapi id 15.20.7762.027; Tue, 16 Jul 2024
 05:40:20 +0000
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
To: Lai Jiangshan <jiangshanlai@gmail.com>
CC: "jiangshan.ljs@antgroup.com" <jiangshan.ljs@antgroup.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "Nikula, Jani"
 <jani.nikula@intel.com>, "Saarinen, Jani" <jani.saarinen@intel.com>, "Kurmi,
 Suresh Kumar" <suresh.kumar.kurmi@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: Regression on linux-next (next-20240709)
Thread-Topic: Regression on linux-next (next-20240709)
Thread-Index: AdrUGlgPzCjArjqLR6Ou8zsvlQzOkQAHokAAAMJl3MA=
Date: Tue, 16 Jul 2024 05:40:20 +0000
Message-ID: <SJ1PR11MB612916646EC106E6AEA22149B9A22@SJ1PR11MB6129.namprd11.prod.outlook.com>
References: <SJ1PR11MB612946A115B182F4C81692EDB9A62@SJ1PR11MB6129.namprd11.prod.outlook.com>
 <CAJhGHyAFn96n8vW4z_cmXLCd4p1HfxQBLR-u81m8HipWRVsJZg@mail.gmail.com>
In-Reply-To: <CAJhGHyAFn96n8vW4z_cmXLCd4p1HfxQBLR-u81m8HipWRVsJZg@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6129:EE_|DS7PR11MB7740:EE_
x-ms-office365-filtering-correlation-id: b148b890-7b41-4c38-64e0-08dca559c7ed
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?STR1N2lsYWtLdk9YK21wcGY5OHE1ZFpMSkJZbTQwRC9BTlJWUHZycXpCbWFq?=
 =?utf-8?B?dUlVMklQTFFEZENsVytDU0ZtZldXbFRMemNMYUNwT0VFcWRoczdndUxUTVRq?=
 =?utf-8?B?bkJRUituZHRLZCt2aGRHeGlKdHJEd3VPNktNNmJValdQNWJZQm1kNmxJRW5H?=
 =?utf-8?B?UDZkSFdGWi9LaG45cTJzNlNvKzJkU0wxRjMyYjMxMDJXK2xocXEyakdMNlJ4?=
 =?utf-8?B?bkMwR3RUc0hTYTR4ZlZTeVVqTkYzdEZKYWlrWjRUSVZNc3FhbkZacWZlYlFX?=
 =?utf-8?B?TThYclRtKy9JbWszem41b3c0N3NhR2gwZENUNWZLWElvT010aHczWDIxTm1G?=
 =?utf-8?B?WE1jRHZkclR6VjFaSUtiR293ZEs5QUFJL0ljRk5HeXhiWXY3UnY3SzhUWFVN?=
 =?utf-8?B?SzBrWkVrVlVjTEdaU3BXYzBNWVkrUkc3T3NtdlVobGlWTVpDU1lVdDYzZmFs?=
 =?utf-8?B?UlBGb3pxVTY3Qms0S3lObXp6SDZLK1JDTXh3MkcvUVZYenZkSzNGcVVkTm1z?=
 =?utf-8?B?QzdhMVBvZ05zeGFsRGRnZm5oRVZqRUFyVzBnYktYaEJydy9MYjNHZkx1bU9K?=
 =?utf-8?B?ZDQzVzNIY3daRXUyK2Z6dktvY3hTeWlhTTVKakZDa0VNdEtEV21KZHh1TTE4?=
 =?utf-8?B?ZHc3L0VVckdHL1dpdzc1NFkxODJSY3dNZVVRVTY2a0JyWHZTTnd5NllzQ0lz?=
 =?utf-8?B?YjU2bXp6RjcyakN0aXozRTI0Z21ITW12R3M5WlBPM1Fac3ZkdG9LRzdMaHlq?=
 =?utf-8?B?NGozZWpFWURFYVp0dVh2YUdwK21hZ3MxV1EvSXZLd2NrRC9yS3B3ZTVXQ1hV?=
 =?utf-8?B?UTBZa2JjZDRHOFphMWNjUHU5dVNQUG1kdGJFY1JMZUlZaVJBL2lTRFJsSjV5?=
 =?utf-8?B?cEttb1c0Z2hLcVFCdFU2bXJCdlI4aXZSbVFrb2x4SkQ5NTJDK1FDSWNheTlu?=
 =?utf-8?B?cy9tOU5jbWdwSE1kVDBCNFp5Tk14WUUwVUVGYkJ3V0tkalJXUVFZRkdZZWJa?=
 =?utf-8?B?Q25rTVJBaEVRWDZYcSs1Z1RXQ1BTYjVXK1ZCdisrL2hRdFJzNWpXTlBvcEVo?=
 =?utf-8?B?ajZDdDNzaHBobm9Va1N5ZVFPaWUyc1ZUZTRjMXZtK00rYW8rajA5SnBtSHY2?=
 =?utf-8?B?YnIvR3FTaUQvckkyZDJMOEkydzFaNVBhZlBQWE1wUEc3OXFRanFnKzZYZ0x4?=
 =?utf-8?B?Mm9Ibk51QXA0M0xaaFFnRGtxdi90VzQxTGJuV01wWkdUbUJ3OHg0czJUY0R4?=
 =?utf-8?B?QXpUZFRMamNmZ2cvWmRHT2EyY1FqWitnTUkrQmlUcmtOSjFka1BWWHJIaVZi?=
 =?utf-8?B?VC9WU1VZcDJFdDJyU28xSk4xMllRQ0RrZDNlVWR0TVF5UmhOd21tcXE0czYw?=
 =?utf-8?B?MzN3Zk92MENkcEhrZTFYVk9XbHR1cTVWc0Vqakd4NFBPUWpUWU1zM1ZZZlFB?=
 =?utf-8?B?Z0N3SEJrZnc5QUFGTVNZM1cyeUhveVBydTJkKzVQd1I1akEraUlxdWlQRCtX?=
 =?utf-8?B?K1dKSXRZM0o2dXRhVHdVa01uay9zejFucTV4OG9DZWJxS0cwWlM4R3h3U0Zo?=
 =?utf-8?B?Yk9pQUlpR0YxVGIvQllqc3hLMGJZampLRjJnVElQblV5UiswTVpQMjgvOFR4?=
 =?utf-8?B?M3ROMzFEakRnYmxVNFduUmNPdi9OdW9BaWhEQlJkbWErL2dPRnhwaGhHK0FG?=
 =?utf-8?B?cnlrNTNEZnEzMmsvS1hTY3RrSGwvR0E4Q1ZMNEp3N2xhb3NLeTZKb3pGaHBy?=
 =?utf-8?B?RUdjZ3JTUTYrdHF3cFhCWHcwUWkwR0hnL0l4alR5Q2p1M3NDQXBjb2RoUk9R?=
 =?utf-8?Q?eAEFkPUPuhYJg14Sv+9zExgvBGJi/xsJbm0BQ=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?T2kzanlvN3VSQ0hBOFJXN1ExSCtoY2JYOGJDcUVGQW85NkFUak82YWtnYnBF?=
 =?utf-8?B?ZTc2MWVadFNGSytKWlFzZm5QRHpBNTJ2SFd6bG9ZczROUUFtWUpIQmJZZlI3?=
 =?utf-8?B?ODdlQ3BRelNza092MmJLT00vci9CeENPaWdRVk40RHI0RlQ3eERzOU92ZWVR?=
 =?utf-8?B?d05aR1ppV1NOMitXUUFUZ0xpclRIYlQ2VmN2M2dUZWs1YkNQdmJvOG41dXZa?=
 =?utf-8?B?aGptMThzMjVodnJHYlVZakRzQStnaWNtM2NVM3J1VEEwS3BqOFI4VzlhcE11?=
 =?utf-8?B?V2xIb2lUcmQ3WlRNSytEZnFTN3RoVlZHVi8wcU1HM3Yvb1d5V1l3Q0hGTzBx?=
 =?utf-8?B?bGRJcHJhNnNkYUtzY3NKQUdiMTFjTWFjdE0xZkx2UTZnUmlyeFlDZWpjSG9R?=
 =?utf-8?B?alRwV1VHRzZoNE9xYzlGUFlXVDl2ZGJkcEVGdnU4WC93bXFZVDF6UDBFTGNs?=
 =?utf-8?B?WWQ0S0FEdEF4dnoydEUwYmc0TkFzYnZqb1hqUjYyZ1RGM2lrcmcxSmJSOUJX?=
 =?utf-8?B?VUZlL2trLzVqcUpoNG4ycjN3YnJZdU1BWllqbnNJTFA2bmhwMUFSRi9PZk8v?=
 =?utf-8?B?TGsxNXVHZjlDVkdkY2JtYjRsaTFkYlFVMFlVYU9MOTh4MlNlTFFrYzl2OXJD?=
 =?utf-8?B?Qm8rQXJveWF6VzJhdEpVWGxYTi9kNjRmYlhjRE1EeXdramhlT0hJdFpzNXJh?=
 =?utf-8?B?VTJaeDlwZHRoRURLRGVZOUszMEVBV2JMdmJ1TktZdERXWXczRWoxdDZFUURZ?=
 =?utf-8?B?bVZZUldWNDdST1lBaEFDalRSRmY5UEVYYVRhUEJPNVEzenVEZUdORlZmNGt1?=
 =?utf-8?B?dzI5OU5uWDFiTEo2a0FaY1d4OXg1U211Tytyd0RQU0xsWWRxVVRCV2I3bjFk?=
 =?utf-8?B?aHRxd1lnOEJDd3V6UC9ETk5HL3pDUytJZnVKYlh5OHZyU3pLN05kK2xoSTAw?=
 =?utf-8?B?TFRMQ1Uzcjk3Vno2UnFPZGRpeDYrdjRVa3pQa2gweHlOaWFjbEZsZE9KdVZV?=
 =?utf-8?B?UGRmYkJlcEdZbllYdE0xeHhXUlNsTWsrdU1oWHRZVjJCVnhvdkhEenBlUjY0?=
 =?utf-8?B?NERCcFRaQUNpK2ZIU1J2Q2o4d011TTlrMWpxSjJtUlRScmxicDY0ZjJITDhp?=
 =?utf-8?B?VHZzK0ZJZ1FXakRZNGZ6Ty96Yll5Zm1sS1lUNkd4Z2xVaEVCNndMZXBPaWcv?=
 =?utf-8?B?MURIZGZXdThqREV2UWNPeXFvNFdhUzJHNnEvbldWcS9sUzhLTVhqdml3N0Rl?=
 =?utf-8?B?Z2pNUUl0TUJmMEdJQnpGc3pld2YzVWJjM0QweFpuYUd0Q0hpYmJFY3B4K2JE?=
 =?utf-8?B?bEM5R29lTXhkSXRlYndXcVVuVXZHRWlGTmlsVzFBV2lsd2RvMDQwWk83aGZB?=
 =?utf-8?B?ZHY1TjRST0FNTFpJejhsc2VWZmVlSG1mOGE2Vllxd1BZa3RUZ25WRTdHNUNF?=
 =?utf-8?B?eDZpdE9qaWhOU3U4MjJOSGVLUXVyVUwyVXIvWjE2UjZTZ1I0MUlWdWlNRnRV?=
 =?utf-8?B?Zk1mV0h2UDNlZ1RwN25uV0FBdE93V3BwY2s4RS93WjRwWGtERjFEcDhsZjgw?=
 =?utf-8?B?K0hOL3Q1aGNCS3dCMlJyMmFlTVI3R1VoeUFNcUI1ZVREMHFQWXpHQTFGTWQ1?=
 =?utf-8?B?SzNRQldVaG4xbUtERE9BTDc2K2s3R1BEd3NCSWtZMXN3VTlIdmV0RnN4TVRR?=
 =?utf-8?B?MXFJb1kvY2F5eXdWUFllcFIyVlI0RG03L2IxamJSNkZaNVBXMWhqMW9ZMzlJ?=
 =?utf-8?B?ZkR3d2g2L3ZNQjlKVmFRSm1xZ1FoSGpUc3NZVm54TVhleTNaQVpYU0FmRFQ1?=
 =?utf-8?B?aUdpUkRHYmdqMk9pZkhkR3Zxdm1FVzRkaE5JUjlhbjZKRktaNG53U3BrMlF4?=
 =?utf-8?B?Tk0yU3hHdnJ0TFMxd3BmU3FsTHpWK1o4ZE9BY1BvOG15RjdrWkt0bkFVTEpJ?=
 =?utf-8?B?RG9XaWcrUlpublE1V2xLWkkyclR1SmJlQ1JWQWVxZWU2OTVNSnJPY3pDZHBq?=
 =?utf-8?B?NzdQYWJpNjIrcFF3aXZxYnVPRDVBV1E3VHRQeTBSajFqNE1JbkkrajUzeDlt?=
 =?utf-8?B?S1k4bDZBcEdzZWdVOFl2YTNrZkMrRGJGQ2lnUjFtZnFaay9IbStDdGVuR2ky?=
 =?utf-8?B?ZmxsaTNoVWtlMnd5R3g2THJrRlhPeTJSRmh1WXhlM0V2dzNPTkpaQkZSVU1D?=
 =?utf-8?B?cFE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b148b890-7b41-4c38-64e0-08dca559c7ed
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Jul 2024 05:40:20.4413 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tgN5Kwsw8t7iknAFNGb3QXDBHucWtWRTIidkjKxSucadJg527KEt9VhBMUpFx8zR/ttKMwtmNlza/EimeHPj6q+eVkmIEX8t5qVAt1JE1+U=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB7740
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogTGFpIEppYW5nc2hhbiA8
amlhbmdzaGFubGFpQGdtYWlsLmNvbT4NCj4gU2VudDogRnJpZGF5LCBKdWx5IDEyLCAyMDI0IDI6
MjMgUE0NCj4gVG86IEJvcmFoLCBDaGFpdGFueWEgS3VtYXIgPGNoYWl0YW55YS5rdW1hci5ib3Jh
aEBpbnRlbC5jb20+DQo+IENjOiBqaWFuZ3NoYW4ubGpzQGFudGdyb3VwLmNvbTsgbGludXgta2Vy
bmVsQHZnZXIua2VybmVsLm9yZzsgTmlrdWxhLCBKYW5pDQo+IDxqYW5pLm5pa3VsYUBpbnRlbC5j
b20+OyBTYWFyaW5lbiwgSmFuaSA8amFuaS5zYWFyaW5lbkBpbnRlbC5jb20+OyBLdXJtaSwNCj4g
U3VyZXNoIEt1bWFyIDxzdXJlc2gua3VtYXIua3VybWlAaW50ZWwuY29tPg0KPiBTdWJqZWN0OiBS
ZTogUmVncmVzc2lvbiBvbiBsaW51eC1uZXh0IChuZXh0LTIwMjQwNzA5KQ0KPiANCj4gSGVsbG8N
Cj4gDQo+IE9uIEZyaSwgSnVsIDEyLCAyMDI0IGF0IDE6NDLigK9QTSBCb3JhaCwgQ2hhaXRhbnlh
IEt1bWFyDQo+ID4gY29tbWl0IDE3MjZhMTcxMzU5MDVlMmQyNzczZjE4ZDQ3YmQ0ZTE3ZGQyNmUx
ZWQNCj4gPiBBdXRob3I6IExhaSBKaWFuZ3NoYW4gbWFpbHRvOmppYW5nc2hhbi5sanNAYW50Z3Jv
dXAuY29tDQo+ID4gRGF0ZTogICBUaHUgSnVsIDQgMTE6NDk6MTMgMjAyNCArMDgwMA0KPiA+DQo+
ID4gICAgIHdvcmtxdWV1ZTogUHV0IFBXUSBhbGxvY2F0aW9uIGFuZCBXUSBlbmxpc3RtZW50IGlu
IHRoZSBzYW1lIGxvY2sgQy5TLg0KPiA+IGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBg
YGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBg
YGBgYGBgYGBgYGBgYGBgYA0KPiA+DQo+ID4gV2UgY291bGQgbm90IHJldmVydCB0aGUgcGF0Y2gg
YmVjYXVzZSBvZiBtZXJnZSBjb25mbGljdCBidXQgcmVzZXR0aW5nIHRvIHRoZQ0KPiBwYXJlbnQg
b2YgdGhlIGNvbW1pdCBzZWVtcyB0byBmaXggdGhlIGlzc3VlDQo+ID4NCj4gPiBDb3VsZCB5b3Ug
cGxlYXNlIGNoZWNrIHdoeSB0aGUgcGF0Y2ggY2F1c2VzIHRoaXMgcmVncmVzc2lvbiBhbmQgcHJv
dmlkZSBhDQo+IGZpeCBpZiBuZWNlc3Nhcnk/DQo+IA0KPiANCj4gSXQgaGFzIGJlZW4gZml4ZWQg
YW5kIGl0IGlzIGluIHdxL2Zvci02LjExLg0KPiANCj4gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcv
bGttbC9acEFTTkJOMGhwVFZjakUtQHNsbS5kdWNrZG5zLm9yZy8NCj4gDQoNClRoYW5rIHlvdSBM
YWkgZm9yIHlvdXIgcmVzcG9uc2UuDQoNClJlZ2FyZHMNCg0KQ2hhaXRhbnlhDQoNCj4gVGhhbmtz
DQo+IExhaQ0K
