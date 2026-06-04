Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id pRuXKWeSIWqjJAEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 04 Jun 2026 16:57:43 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 107E3641276
	for <lists+intel-gfx@lfdr.de>; Thu, 04 Jun 2026 16:57:43 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=QuSBy497;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 95EAE11285F;
	Thu,  4 Jun 2026 14:57:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 83A94112859;
 Thu,  4 Jun 2026 14:57:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780585060; x=1812121060;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=BwKAy0P4CjjrJzXFUu8p8hk/4Whe2D+frjQPzzD5/Uk=;
 b=QuSBy497yQ+wGyqSJJo9PilsLjXydV/6TjRNiJhgIjR64IvlxoOMiwpx
 A+NVMgYwjMqxkBn+gtSFKI0M2pCl9ZhZiwjUisYLWVQ9SzDo6RDOx+thB
 w2PPiUBOGNHV7ekDj3DoouiciW3GBHl014y7pm9BPrcfGssIH+Yr/JIgZ
 R8uSFg19buUgbG3FEi7QMk0oZayMbh4XqqonAtD+X2tH1Ik8IVauwjQiI
 m70T8N8n4dLEu0Kv+7nC+8khiTszd05SGeX9YuQdRMt4LAWja5WaPi3fv
 jRt/v3sBtnLAeH2Y6T9U8V5jjj7+aVwCFhEHT/7uuNa+7TaTJBkDk4K5a Q==;
X-CSE-ConnectionGUID: 2512wpP4TjK0/knYs8jD9Q==
X-CSE-MsgGUID: QLwQyvWjQdqSgjcJI+Elug==
X-IronPort-AV: E=McAfee;i="6800,10657,11807"; a="81388778"
X-IronPort-AV: E=Sophos;i="6.24,187,1774335600"; d="scan'208";a="81388778"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2026 07:57:39 -0700
X-CSE-ConnectionGUID: eL+HFUHVSOe3yO1KRWCYZQ==
X-CSE-MsgGUID: QLFspBt0T8OhpQdMHc/dRw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,187,1774335600"; d="scan'208";a="268488899"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2026 07:57:39 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 4 Jun 2026 07:57:38 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 4 Jun 2026 07:57:38 -0700
Received: from CH5PR02CU005.outbound.protection.outlook.com (40.107.200.3) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 4 Jun 2026 07:57:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=zHQghUdO6q4uGPUU2YCH7JRdbEuiZ6VCMaZHiB2JDT+aZyDXsTehSayTvJU0BdUXBwzQEsA105Ta1Wol0tzsnxOM+SQ/QWcLWKhDNnuPZnoC6WCKuLUdubTbG1Q1Q/VpKYOEKKa3jE3NIUC0573Wz+8gRaU3RLI7w5rXwV7r8XxzCf0BcfALB2p4L70zGfQr0QhOrz/B7QltgJy2T8Hb+NeOZQjyRqqaRtBWWpfHaicvyXspluUq1uLv8o6YXQoPLgaUG5X7r4/9Qf1kK3qUj6rp12/ogfEIzDpetbESDwIGGjX0kCZGbpBcIA7Ae4lT+EdBSb6gJbryRjakMONySQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BwKAy0P4CjjrJzXFUu8p8hk/4Whe2D+frjQPzzD5/Uk=;
 b=GkFSdrLEoEQ4s293lzLjXr+Q4azNIEJUgEPgUvOhF10qiYKAXl5hMAy/myx+oaCdK6ZrQpnWxmbDpTyUKrvEVqnLD8l23vHLFNTE4JdBEsSOypraTBoL8CyzODGgzhbOVaum0d30pBHGOL+ncZ5mct2WzX38dILb9WZHXKF9kXT58hn0ySjpAbkKbE31T0LgzRKA3QNLmJovinvVidqDC4qcw/EY6D4WoG6S6aEa0s+KT2apjWlAvCCfbcHyhZ3v/0Lkm+OO8YK2Y0GofYlU7QXt1tk+HuwEcHnj7B3FuP7b6Vn5Ry1KKjz8M08WJ5mugPFClv1BBKO2Vs6xeXHA9w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB7785.namprd11.prod.outlook.com (2603:10b6:8:f1::8) by
 DM3PPF74831EF4B.namprd11.prod.outlook.com (2603:10b6:f:fc00::f2e)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.92.8; Thu, 4 Jun 2026
 14:57:35 +0000
Received: from DS0PR11MB7785.namprd11.prod.outlook.com
 ([fe80::4f63:3b06:4e10:3a9a]) by DS0PR11MB7785.namprd11.prod.outlook.com
 ([fe80::4f63:3b06:4e10:3a9a%4]) with mapi id 15.21.0092.006; Thu, 4 Jun 2026
 14:57:35 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 08/11] drm/i915/bw: Move peakbw[] out from the plane group
Thread-Topic: [PATCH 08/11] drm/i915/bw: Move peakbw[] out from the plane group
Thread-Index: AQHc7o793ev0gVA/jkmp7GNDxC/pYLYuh9UA
Date: Thu, 4 Jun 2026 14:57:35 +0000
Message-ID: <4d0f2b76b60c9cce34ae9512c1914a3cd07b15a6.camel@intel.com>
References: <20260528103458.18069-1-ville.syrjala@linux.intel.com>
 <20260528103458.18069-9-ville.syrjala@linux.intel.com>
In-Reply-To: <20260528103458.18069-9-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.52.3-0ubuntu1.1 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB7785:EE_|DM3PPF74831EF4B:EE_
x-ms-office365-filtering-correlation-id: 532a5245-e894-4ce9-56ae-08dec2499cff
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|10070799003|38070700021|22082099003|18002099003|11063799006|56012099006|4143699003;
x-microsoft-antispam-message-info: 1HQGQenrsFrXgBKIM/pJW8HCf+C9OUjiSk9b5DKCjmCx9GV4PXcAXdkJXr5lhYqgGgIw5YdH0iWVjPvv1/sZsQbgJaVkt2YMwhKdKXZLdCibvu+AegSjyrwe2vg6zhgl3vDzXFIhaGhzWPJqw/eVkvFltS5TTfYseU0vq/u6uAOv3tL8UNAskuMaV5aiD5VCUG7UI4LjfRrOI1KgvIASP2Pv4Rc+jsbSi7kBXLVAGxJVRhoSYOUI3WTB4Wqw2UmbpeNZY5I8MaRX4t+fHze/CIrZCfDM2ppmqYQzT4CbDcXJ4cxBl+5b+cYVXHXOqbRD2NoZRIvHG6JB3ED8opNkAvFkHgAzPPibR7Gz0lXn1MRe79qljq44YdFyp7hAE4Bgl8DzWT1s0cD5DpgmKMoowDZf7v/oHMVVXVBg5sZtFRABe57CSInnZXUNqugg3Oc8lmpdZxfgjb4grvrbYO396HWOz5DG9V4ClPkPvNVAECjtyTmanWvGCpGuwKj8NvDlID62nb5R9xx0jzI2l+olMTlWsAyD/snEXp2feEplvp4HRF67eXJ5OAL2CIwJ9cSnAjCRFqDRfj2kVISUwrlTtxm4BKH74bEe6GUYGsZoUhWXcQ4W4ltJbsMBy14CCLAriGRdCTtK/LcBAH9Y0Qv0pLysaT12eNxOwkbKQHMR09AeR+4jfFvGqt6Dthiff1G4xPmqEClcTP6Vy/V9Gj3KPu7g7ZsztjpSWRgxygrfGAW7SWrhy71xLQIvqMTs0jBh
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB7785.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(10070799003)(38070700021)(22082099003)(18002099003)(11063799006)(56012099006)(4143699003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?S0pqK1pzejFGMzd6VEd1UzUvVWdpZzFoNlpySWRKdDFnY3JYNXA0a0ZhbnFW?=
 =?utf-8?B?NWI4blZIaHlBUHBZNGVPYWVmRW1wL2FHU0NXVFVpcmlqVCtxalQzdjRoaEQr?=
 =?utf-8?B?L0dWbmNBcVd6SkQ0cnkyZkZPODhjZ1BXUWdTT3pKTFJQd05aSkZrZlNRZEFZ?=
 =?utf-8?B?a0tXeDUxN3dnQmFBa0Z1RnFBaG5nd1ZmZTJHQm1HbXQ2N3B3cXphN3ZQRVNE?=
 =?utf-8?B?R3Njak8vc1pTSDJZWGYyYUp0anA2YXkxMUo4Z3NHS2M2S1UrSW80UjNrdXVG?=
 =?utf-8?B?K3VCSHlhMlJiRzZ0UTU4YThoVGNvY2puVmFkY2M1NmM2ZWZOeXdETS8wZ1hx?=
 =?utf-8?B?Q0F6Yis1Ri9acm0zSXh0d2VjSG5TYmtiM1paa1hXMnRTNm1Tc1lVK1RKZzJC?=
 =?utf-8?B?ZDFkZmVlVW91RTEvS0twRm10Zmp0N1dEM1lYQXE1amgvVUU0Y0lDM2wzcllw?=
 =?utf-8?B?UGVSS3hJVjI4UDlsNTBKbkRNVVBodnFkSEtRazZLSm5CS0xvRzExcGpaVC9M?=
 =?utf-8?B?TDVxRkpPVFJ3M2l1TXFDZVFxZ0QxLzBqZFFRVXg0ZDhNblkxSUN2UU9GMmp1?=
 =?utf-8?B?QXJacStMMEFXa2d4d0hJZStRZnlDNkxqVzJnTUVqTFd0MGJjZElpZEtCd2JZ?=
 =?utf-8?B?bmZ1UUpHbHV6dW5XNnc1aWRSNlBVU1p3dmFwMmY5bWlRUGdIazg5dFphb3hv?=
 =?utf-8?B?ZGMzdDdhRlI4UGxSVElnTlU2aTRUb3hrMHN1ZGxSK0pERUJyakxmSzVkSzZj?=
 =?utf-8?B?d1k3VStvQW1LOFR5cGlhYmp4R1RaaG5yNUdBa1lYK29TRmY0NmdDeGRCZXRN?=
 =?utf-8?B?NjVpcXdUTzRNZ3FwNmhpWTNaYVNEVmhmVlJCcFo2am1tZnNJbi9tRGZ5U2hi?=
 =?utf-8?B?RnByd1FsOWJBMWN5RENCUWkzYlM4enFrYjhlcGVHMGNvTjVFaUtaZGd1TDg1?=
 =?utf-8?B?aEFpYkRieHcweHhBRnJmekhPbjE4L3hSWitLTklDajVxVWJqcEkxNmg3dDVw?=
 =?utf-8?B?NWVLaVkyNVo4R2pYNkNpQllLMExIUTVFa1Y0YTRaVnJMUWd5eTArWnREc3JH?=
 =?utf-8?B?QXVaOE1Jbk05ZWF4OHRDb1BRNnk0cmd0emlpVGkwR3pwZisxUlF0VU0zb1gz?=
 =?utf-8?B?MEQ4YXNSZUEyYlJ6Y09WZUdDUWVKWmpzM285ZkE2dEZORDIrQXhwSkpjMDVo?=
 =?utf-8?B?eWRFRk1maHRsb1NOdXJhMGNKSy9JVzlMWXdpTVMySTh2ZGk4ekZPSVR1R1JP?=
 =?utf-8?B?RzhVMjd4SkNCYjA5ZVhWU3g3VnUvRHJoRGFmNzFuZGlYL0hBR1pabngzQU9n?=
 =?utf-8?B?anlIU2cvNllRRXJHRFV2ZDdKQkxISFRqdWppZ3dld01zUUFqTE1HelJMM2pp?=
 =?utf-8?B?Q0E0L1daU1RaVXVjaStiMVN1aFdFbTh5bXRtOEM1SGJMcTdwZXNrL2xlTTd0?=
 =?utf-8?B?cjZmb1UyVGFQMnlYMG1SRFVNR2FzcU9xb2JhSWJXKzcwc3FBU1hrd2xtUXVT?=
 =?utf-8?B?TzhhZkJzNzlUb2hnT0FtcUdzeDlqdjN2a3dQWEZ3UUxpWS9pUmRoc3NHc2kx?=
 =?utf-8?B?eTRxS0NFQ0o3TTVyZWc0K0VVTXVXMGVKTkQwY2R2RXAyNjY5MmwreVY4TFlx?=
 =?utf-8?B?TFA1QzdhWTFCOGdGQkNUWXVMZzdqM3dRZDdzSmVWcWFDSEJreFNjR2dMdHZL?=
 =?utf-8?B?ZjlYNVYvaHlHaFFMZmI1NmxvSFFrVWplcFEyU3R2TExLbEppOHBGSnl3ZjF1?=
 =?utf-8?B?S3hlWmRlOHBhQlI5NERyMFlBUVg4M21WZkdaa3pMbVBzT1hDUmgrb29tenhi?=
 =?utf-8?B?b1FPZlNxQXZqcCtLRWtqbVQ4N0RIRVovMFV5TEE4ekxkRlJrS1IvTkFBWmZk?=
 =?utf-8?B?eVJHM01ZSGdUZHlObFdYWGhtemxyMVg5ZEZNbjdVQ1JZQUtpWENnZzdKbnJq?=
 =?utf-8?B?U05jNTBwR0trZENoNFNwdk5UK1dSTUxiYnowODh5Nk5kUW4xemMwQ1JRVVl4?=
 =?utf-8?B?VCtoR1BxbkxnRUdlQjlNRzhYcXoxS1E2VnZ5d3djUVg4RksxcWN0cDBwV2JL?=
 =?utf-8?B?OWR0a2R6c2ZQNGlYM2x3dytPU2E0bTdQNjJZWWt4bmVsSzZvQ3hIQStlSkV6?=
 =?utf-8?B?NGlVUVNmaGhhSmwxUGEydXJuUEJpVExabGNsTFNSTjVZZVhnbkhVZllDTElz?=
 =?utf-8?B?VE84d0RQVlM4Z3BVYmZ2Y2QwRXNHUkFETUpHelp5NWE1dG9odFFnZFdEYjMy?=
 =?utf-8?B?TFpNaC9qT1p6TFpsWW5MazcvcVF0QzBFL1AzbjJNK1E0eTFzL24rOXU0YWtp?=
 =?utf-8?B?NTJ6c3dsdTJPVG93WWtXelg1SGNVZzlzcVp4YmtJa0M4QmtReGFiZjgvWjZ4?=
 =?utf-8?Q?3YEjo9/lRfeuS77znwaWNG69cSXHPbIHqETmxVF1Jma3A?=
x-ms-exchange-antispam-messagedata-1: 6T/w6DnKw8yUKLkV6LlTvtlnfFd6UoF+wmc=
Content-Type: text/plain; charset="utf-8"
Content-ID: <A6CDB5A1205F7341842BF85E4CA5C328@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: XWBhTwhhUzlY+utkJZoEYkdLuCWyK0es1EOVqpfuvAALSeWthszx+nvEt+2ILwTX0MrrQtgc3wsO73euxh+BOoreymDsFP2DCF8fIhPqYm7jUZqhVyn1iAE29JrSCppEkzNUx8KCEJEF/6Vx/SJI/woS6/2BMSHnAedKfKdUxpvODw7qgwq1lKWdS1ae225Uz+jQpjisk3xQfvPnIciGjgxFnOk9yQEbPhhoRnSYvFt0weDza+oWPqxWVNlJH4l0nkY8Kk/EwWMQ8g8gwqsBOztNYVg5YaSLKAWojFRvOBwq9pNZpaS8cFuqW9wOwQEHh/zflNZcY6xFdfUniKeb7w==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7785.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 532a5245-e894-4ce9-56ae-08dec2499cff
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Jun 2026 14:57:35.5408 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: VK4h9QPfYTA5xm8cbvRbX496gPcLELGt1PIaPnbTf+KsmKrMjQ8anqPY1yc7qdz1l6/ob30GVgVkexrCgqgx8XadaGj985uUVpMCiDT5LKI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PPF74831EF4B
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.21 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_ALL(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lists.freedesktop.org:from_smtp];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vinod.govindapillai@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 107E3641276

T24gVGh1LCAyMDI2LTA1LTI4IGF0IDEzOjM0ICswMzAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOg0K
PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiANCj4gVGhlIHBlYWsgYmFuZHdpZHRoIGRvZXNuJ3QgZGVwZW5kIG9uIHRoZSBudW1iZXIgb2Yg
cGxhbmVzLA0KPiBzbyB0aGVyZSBpcyBubyBuZWVkIHRvIHJlcGVhdCB0aGUgc2FtZSBpbmZvcm1h
dGlvbiBmb3IgZWFjaA0KPiBwbGFuZSBncm91cC4NCj4gDQo+IFNpZ25lZC1vZmYtYnk6IFZpbGxl
IFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+IC0tLQ0KPiDCoGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYncuY8KgwqDCoMKgwqDCoCB8IDI0ICsr
KysrKysrKysrKy0tLS0tDQo+IC0tDQo+IMKgLi4uL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Rpc3BsYXlfY29yZS5oIHzCoCA0ICsrLS0NCj4gwqAyIGZpbGVzIGNoYW5nZWQsIDE3IGluc2Vy
dGlvbnMoKyksIDExIGRlbGV0aW9ucygtKQ0KPiANCg0KUmV2aWV3ZWQtYnk6IFZpbm9kIEdvdmlu
ZGFwaWxsYWkgPHZpbm9kLmdvdmluZGFwaWxsYWlAaW50ZWwuY29tPg0KDQoNCg==
