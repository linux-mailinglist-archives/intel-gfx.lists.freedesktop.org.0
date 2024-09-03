Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D0DB969311
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Sep 2024 07:07:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6EE4F10E052;
	Tue,  3 Sep 2024 05:07:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YIL4ny21";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 64F4510E052
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Sep 2024 05:07:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725340055; x=1756876055;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=RcJ81WcuO7LOwqIY5wFgQb3dLalUyMmFC6Iojkz+vH0=;
 b=YIL4ny21ogF4bq1TgkKGzyKBjNEjuYhkqC67dvyjcw/9cH6RAu8sGnDd
 +BNWYdgjfb0v2RFUWsSv4/fgOnN5+H4Kre6Hp5mrFDgcz9bLMeOM08kf1
 LY3tnc/sK8cDnIoFwmC1sOUVYDZ/In33k6LLlGvN7nzlDaXV26z3IknfI
 6D4neiM9W3Ujl6KQWC0cNeQRQBORN1A8WoIl8Ha2LpF15IDV6cyDTdeYs
 tmo24jCm3sgtvyYyAj7nmnwDzMrEQsDO4fdyRvsFfBdtT4xXElRA/rnFs
 i/bIPty+rfFUTvhicQUwkOcYWvYRgk/F1YhZUyfiPveKNbzgcUd502EBb Q==;
X-CSE-ConnectionGUID: Lo2dyCl6SWWGkjKwYOovlw==
X-CSE-MsgGUID: ZUfczG3CSxq4dc/+bXABig==
X-IronPort-AV: E=McAfee;i="6700,10204,11183"; a="23791455"
X-IronPort-AV: E=Sophos;i="6.10,197,1719903600"; d="scan'208";a="23791455"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2024 22:07:34 -0700
X-CSE-ConnectionGUID: 2sVQLyfYQvKna3YLD9OFCQ==
X-CSE-MsgGUID: dB3s7tHbQMiGjWEe7lK4Aw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,197,1719903600"; d="scan'208";a="64414042"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 02 Sep 2024 22:07:33 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 2 Sep 2024 22:07:33 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 2 Sep 2024 22:07:33 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 2 Sep 2024 22:07:33 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.171)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 2 Sep 2024 22:07:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=pv+mJiJuyYaJiamIqnGwIbEbT+XDgYYYkt4/rt/9bVy2IJi5DnCTFewAqV75LO04CnJcd/tYRRc+w2v8MXKrHvZyQSNCnOCV7tVETsyogQrTbuKCA/7GnV4moY0IaAy3TSBudcDIFFz27Pyoc+p6XJiA8JWs0sNaymyllxYMXhCWfPwnonJxe8ejZoVqyb6l+7i9ShIDK5DIw4aaW3km+qbyCpqviceYuVUGhbJKuAkoDWG0Bq7WEoMH1rMSAUEH/Ln/PCuKTDoWpNjbsP9jG3YZU+bYg7iYp6bg/zl7eu6HrJCghgGMgutwFq96oas1/3DeQmayCiclUB2i7IIlXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RcJ81WcuO7LOwqIY5wFgQb3dLalUyMmFC6Iojkz+vH0=;
 b=bzxH7ATq/rFllaAzrXISNM/7rdFEfCKNxyUbrYQ/mnFZTc9EDy0M6IcX37ijQ+FuxqVw+Zup8KOwyGInzlK4+DIpjS/A2u3afZx93bTsAfOthcn5hNXLmKBhfGAjE0DVHAmZXnp0tx4mH2dYo11Cf2umEvtlx31oSVRehoY6NKIdujT3Fufa7yOjZUGAcpLYrkhDvCjPsQ+ZJ7cxNXtNG3SWpLXEIdGd6C8p1NnPnbyEuQYomort6p37sdEypvjGiIhrB0wSCUPpffbrnvuLo+vJ4jUIOyYXMCinSjyMpO1YS8xK6WJHBYNmp1SCnqxQ6AYHM6OM7Qg0sK8Zgjk5pw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 CH3PR11MB7771.namprd11.prod.outlook.com (2603:10b6:610:125::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7918.24; Tue, 3 Sep 2024 05:07:31 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%3]) with mapi id 15.20.7918.020; Tue, 3 Sep 2024
 05:07:31 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH v3 2/2] drm/i915/display: Increase Fast Wake Sync length
 as a quirk
Thread-Topic: [PATCH v3 2/2] drm/i915/display: Increase Fast Wake Sync length
 as a quirk
Thread-Index: AQHa/QNqOO5fw/FTOkSmOCiw48O2xbJEK48AgAFYw4A=
Date: Tue, 3 Sep 2024 05:07:30 +0000
Message-ID: <d12935cc76adb4249b791c4b1f94d90ddc61f6c6.camel@intel.com>
References: <20240902064241.1020965-1-jouni.hogander@intel.com>
 <20240902064241.1020965-3-jouni.hogander@intel.com>
 <87a5gqv4ir.fsf@intel.com>
In-Reply-To: <87a5gqv4ir.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|CH3PR11MB7771:EE_
x-ms-office365-filtering-correlation-id: 8e0caed9-9484-4949-a0f9-08dccbd65043
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?YTgrMjNrR2lZZ3lZQnhqK3pWc1VHMkcxL2ZvaHFYZWEzL0tCY1d4Z1RDTjM3?=
 =?utf-8?B?cWJPZ1MwQmluRVRVc1hhWWR3Qkx1bHloVGFuMEV3YmJsOG9ta09wREYzWFkv?=
 =?utf-8?B?ZnBWM1BmalUvOUR5T3hWRWdrUGEyTDhJYkoxNHZZY2RaaS9nWHdOcER2Q1JI?=
 =?utf-8?B?TmJCSlMreDBqc0FMUzVObXprdDQ5QXRGUVlyZjBjaVRPeWJEVEx0YWJhUHVa?=
 =?utf-8?B?TmNDTFJRVDNvekF3QnBZUjhNaDZSL3A4UFFWVzdlUENLblNaUVBGSUlFRFRi?=
 =?utf-8?B?YStkamdMOW5oZjJIMnl6cTgvalZBbU1zL0dJaVhNdlBOdUZPMHcrL3BOMGlQ?=
 =?utf-8?B?SFJkY1hYSDg1OVVNWHdLdFdTaTVERTZpbWN3UHhocUE3MzhFckRIL3FZUGVF?=
 =?utf-8?B?eDFVbmpNTnh2RW9NNVRiT0pyK1BHNUR4aW5vb1VIYTk5eHgwa0Z3MVNLQkRP?=
 =?utf-8?B?ZGxzRDB2NW9BVXVlU3Z0dVB0Q25EaWVCdWFNS1o4U0VYa1hoc2xLRkR5Zlpn?=
 =?utf-8?B?MzVla0p5QjJ5NWMzRFQxZjF1UkJnSXFwRDIwVGdpSmhOQlFQZ0hVRlZVZHFo?=
 =?utf-8?B?Rm1sMGZOYzRReFZDazNhUmJxSDNEUVlNYXhSbzdENUZqR3dHMTQ5QXQxZStE?=
 =?utf-8?B?RjNUKzE3clNPSit4SWQ5U3IvaFVWTUw0dFA0N1hKdC8xYVRiNzY1V2dIcC9F?=
 =?utf-8?B?bjkrc1JZODhQU0N4YWRpVXl4d3IwYUtnc0NwUEZlck45NDRBOWNQWTlJNXM5?=
 =?utf-8?B?WEFJbXRMMHVkSFcwbWluOE9MWEFyNDB1NG84Ym9mQmFIU2ZFOUxob0NDNk9F?=
 =?utf-8?B?MWNqZmdteVQvdngyMXZTUEsxSEh6YVhpb1ZWblhOZU4zTkppR1JOc3pySXpK?=
 =?utf-8?B?YllhRWJpT243ODBEYjcrVDV3SU0rYnI1UVc0cUhsNWErN3RhaGtRZExZckN2?=
 =?utf-8?B?eEZqeXNXNVhXeHFkTXVxUGRvOXdaR1g2aUlRTVhNVWlxVUdLS2tVSkFKc2g3?=
 =?utf-8?B?NnZTcVhHalcxSWQ0TGJ4SkpOTmdnQkxaZ3I2V1g0TmFpTFVwOWpnRTZYbkly?=
 =?utf-8?B?SUtUeFQzbEJ6aFdPWmUzTHB6Uzh1WXJ2a2RyTlUxaDBlQXlTWndTN3BhRTFs?=
 =?utf-8?B?aXh2N0tJaGMzL0pEWFV2eG1DR0p5U3JYbytYM2V0M2l3QmxzUkt2RDZGNXNw?=
 =?utf-8?B?NHVJYjNYK1lqL1YvQVk2RXVKYVBkbGx1WnVxNnZGYXpjem9JdVc5MWVUNnlV?=
 =?utf-8?B?VVA5L2RGTy9YZVBlUENsQmZteVdtQjlkeWtRdE5RVk84T0MrVlpscTFETDNm?=
 =?utf-8?B?clE5QXFOQ1EzM0xwdWdnRnRjcjlUZFR4SWl5aVU0cDNSblBQZlpORnBXcEp0?=
 =?utf-8?B?b09IRUozMkZhTW5Ec1RRQStJR2RRM0U1QjV4ME5WS2ZNekhIWE5EN0FEd0wx?=
 =?utf-8?B?M3FFR3NBUWJveUhNY0lZM2FQUzRUaHdwYlBoLzRPOG9pbnE0eGNzeWtxeUxG?=
 =?utf-8?B?bW1BZEl2SWtqUVljR1JoMHdzYS9LdzdsY2V4Q1VyZU5yRTNJNHo4bHBram9D?=
 =?utf-8?B?L215aFpLcHMya2xQTzFKc0EwcnBjcGc5NE1FTDhGRW04aUJvcDdvZ0JFN1N4?=
 =?utf-8?B?a2UvbWtFRjJnYUg0a3h1T3R5bjVrQkVVOUkvR2RYbUJ4NnVIRzNqNXRTTWt5?=
 =?utf-8?B?bCtHUFVCUkpsVEk3cmx4L3FoMlJTU3ZYZGhsV3ZPOWZmam5aMGpVUzJKUzly?=
 =?utf-8?B?bE14cjVGK0gxVGNLRVlYSjA2Z2JYZkNOMFZSeFpYV3BLM0xrZE1rT3NXU1BF?=
 =?utf-8?Q?U3FzVae8XZV4NIQfgWciOosguuofJGE9DJ9bc=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?azN5MGEvOHdtVjB5ZmpwV3lsMDFMUDZULzdDd0p6Q0l0ZE9hdXltMDl1MSt1?=
 =?utf-8?B?VmN3WE5Oa0dqdkE2WUhBbzBMZ3lBc1BpdnZZVVcwRmFGZzUrZzRQdXRzUmUw?=
 =?utf-8?B?Q0VqZXZieUw5QitVcVF3aEFLZk9nSkRGQTBnR2Z1L2NDTUduVkFCdUdMOEJY?=
 =?utf-8?B?cmQybHRuNmYxWmlLZmswdDNuTUNobzEvLzlQT3hvRFFxYjNHQ09ZRXhicm0w?=
 =?utf-8?B?eFZZZVBlQlVRUlR2THNLMVU1d2RvOEx5cHp0SExkbzhaclltcDk4MXAyd3NQ?=
 =?utf-8?B?MnJ2R0tpZWdweE9VNkRyV0dUWjlmeTU4eTNsaHo4RW8rdDdYWkk1NEdzR2NU?=
 =?utf-8?B?WDdXZ3IvbzM1aE0vZ2tMNkJSY2NzV01MSnBYSEZWc1hnNFRHVTBuaXFPZXJK?=
 =?utf-8?B?SDd2VFg3eW82MmFhVThwbmFhSk9PQ1Q3bHBId3NXL0s5SEtxd1BPc1ptZktY?=
 =?utf-8?B?QzQzRGJmSU5CTTdXTVRPMW5sMWMweU85dHBreVo3YXNwQVJCeUozMklNMEhr?=
 =?utf-8?B?d056WGpRbG50QU15ejVTZ1dCMEpFNUFpTDRnTDg0Sm43a3lsdjV2UjEzTkg0?=
 =?utf-8?B?L05aQTMzYjVVQXp5dXI2a2E3U0VLd2g1UEs4Rnh6ZXkzaStPemVVZzBZd3RU?=
 =?utf-8?B?RWpTY2dOTkk5ZEcrSC81VVQ3a0pzeUgzRkRCYTRiSndOK01tOFJXRkxEbEpk?=
 =?utf-8?B?L3ZQWjhQT1VqVVRNRFhXMTN3VlRidHRNczZlWmkyYUM2MmFwWHA0bjdGK2FJ?=
 =?utf-8?B?bThESE1pYzNYL1VqSjI0S2VVK3poekRHdzlrTjBlamhWYk1BK2ozUjIrTTRF?=
 =?utf-8?B?THgzV1BZWHhjUFNKRzdKSGc3UWE4TmljN09aVEdGL3FscG9LWUpKREh2NEFK?=
 =?utf-8?B?eThLMm54M3dwUVVoNFowSFVLRWZzUjY2VGQ3ODVrZm9qSmdGNlcyTXlZdjd3?=
 =?utf-8?B?SUg3S0ZRSU5La29maGxOL2F4T0hwR0l3dENrR1YxcXFTOWl6ZTUydVpKYUx4?=
 =?utf-8?B?MWVZcmRUc2hzVEFCUHhGbWxsMnB5TzlML0l6NzZ6T1lmV3Q3d3UzTlpQZy9p?=
 =?utf-8?B?d1lZbm1yNzA1MmVUcVhOOE9NZCtqNlkwV0E5ZVFZM2FIZ29KVlpZbFVtMEJX?=
 =?utf-8?B?OG1yeVdpMTRLYVdEclpKbWtpYUZacmgvanFsbEI0S2FnNEFnQlNWQ1NzUTFo?=
 =?utf-8?B?cXprWFB3V2hoYUt6bytwUG43cjJNc3h2OHErRnRHeU04cGFteHpKVzNEcmZ2?=
 =?utf-8?B?NnpwellrS3NVNXg2K0pFSnJ3L0N1d3VkUEY2ejFxUXEzbFpoYXg4Z2hzalZG?=
 =?utf-8?B?d1hKN0h2TXdLRWRvK3hjSDNDV2pFMnN0d2lWV0JVa1dISHliYXplUGJvWXZK?=
 =?utf-8?B?OTdGUWJoLzJjZndKa3poMnRGUzR1REVzU3BSY25UTGNUbUdHd1lVcjc2K0FI?=
 =?utf-8?B?M0hzN3hyTVVBdXVFaUUxTmkvRE93U1pWMU92UmdtVVVNUkhmaUovWkYyRWFs?=
 =?utf-8?B?c25vbkVpWlY5ckZVQkJOem5SS3FYYW9aa1FwQytQdG9uNGIySnBNclg2Y2Nu?=
 =?utf-8?B?cG1qU0FDVmVha0ZNQ3d3US8xcERwMDhTZlJFalFNSFNCM3BQVUZlVHJsLzBx?=
 =?utf-8?B?ckI1dmZoUkVKVzZrUWZ1MjVqdU5Fd0xKQjFtZldqVFBCUFI0M3daYURVK0ln?=
 =?utf-8?B?V3YxSVJRYlBMN1QyT285TWJJTDFzbkVpSS9laGdtanh3ckx0cGZuZzJHalZj?=
 =?utf-8?B?VC9JT0hZN1FVeXROL1JEQ2hBYXdyV3YwUHY3dFVwOWJXSWlMZWF3b29DMzRu?=
 =?utf-8?B?WjYydy9aK2YyRHpHTTUwblkvbnJhQ0QwQ3IyQTYrRXNpS0xXRkZaWjJoNVMw?=
 =?utf-8?B?Y3BlSkNsMk1tUHhKWlJ4RlVBTXJ5azJ4OW1JWGdBcDBXNllKWlZZbXFMRisv?=
 =?utf-8?B?VnlCWCttK3A3T1BrMjk4ZmsrRnZISkNoK01RckIvbXJmWml0bU96czNSZDcy?=
 =?utf-8?B?NnpDODFiV2t5b0l0bitlMHVJSW1hTXpNNHdmdktBaWs1a2Q2dWVoVXhDYWtS?=
 =?utf-8?B?M3lQL1dDbXBkdTVpb0d0RHkzTWNFa1d4WTF2a21kdlVBMnhqclkzN0Q5TWtG?=
 =?utf-8?B?VktBNlM5ZVdGbytIbkM5aW1pendOWnFjSldaODhIRGh1VVBoOXN1VkYxNzNE?=
 =?utf-8?B?aVE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <C995656D39B0934D814084F6D34250B0@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8e0caed9-9484-4949-a0f9-08dccbd65043
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Sep 2024 05:07:30.9397 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: JfKS4jhtmBDYsC5ajuyVlvWzz4FEdYzmYe+ZcWhKF6c5n9O4tZlkPL4y7pC5J2+BbBuKO3xvuVXGgM2lZHChZVJpQKk9KXUx9Ak7ib/zCB8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7771
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

T24gTW9uLCAyMDI0LTA5LTAyIGF0IDExOjMzICswMzAwLCBKYW5pIE5pa3VsYSB3cm90ZToNCj4g
T24gTW9uLCAwMiBTZXAgMjAyNCwgSm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRl
bC5jb20+IHdyb3RlOg0KPiA+IEluIGNvbW1pdCAiZHJtL2k5MTUvZGlzcGxheTogSW5jcmVhc2Ug
bnVtYmVyIG9mIGZhc3Qgd2FrZSBwcmVjaGFyZ2UNCj4gPiBwdWxzZXMiDQo+ID4gd2Ugd2VyZSBp
bmNyZWFzaW5nIEZhc3QgV2FrZSBzeW5jIHB1bHNlIGxlbmd0aCB0byBmaXggcHJvYmxlbXMNCj4g
PiBvYnNlcnZlZCBvbg0KPiA+IERlbGwgUHJlY2lzaW9uIDU0OTAgbGFwdG9wIHdpdGggQVVPIHBh
bmVsLiBMYXRlciB3ZSBoYXZlIG9ic2VydmVkDQo+ID4gdGhpcyBpcw0KPiA+IGNhdXNpbmcgcHJv
YmxlbXMgb24gb3RoZXIgcGFuZWxzLg0KPiA+IA0KPiA+IEZpeCB0aGVzZSBwcm9ibGVtcyBieSBp
bmNyZWFzaW5nIEZhc3QgV2FrZSBzeW5jIHB1bHNlIGxlbmd0aCBhcyBhDQo+ID4gcXVpcmsNCj4g
PiBhcHBsaWVkIGZvciBEZWxsIFByZWNpc2lvbiA1NDkwIHdpdGggcHJvYmxlbWF0aWMgcGFuZWwu
DQo+ID4gDQo+ID4gRml4ZXM6IGY3Nzc3Mjg2NjM4NSAoImRybS9pOTE1L2Rpc3BsYXk6IEluY3Jl
YXNlIG51bWJlciBvZiBmYXN0DQo+ID4gd2FrZSBwcmVjaGFyZ2UgcHVsc2VzIikNCj4gPiBDYzog
VmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gPiBDbG9z
ZXM6IGh0dHA6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pOTE1L2tlcm5lbC8tL2lzc3Vl
cy85NzM5DQo+ID4gQ2xvc2VzOiBodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvZHJtL3hl
L2tlcm5lbC8tL2lzc3Vlcy8yMjQ2DQo+ID4gQ2xvc2VzOg0KPiA+IGh0dHBzOi8vZ2l0bGFiLmZy
ZWVkZXNrdG9wLm9yZy9kcm0vaTkxNS9rZXJuZWwvLS9pc3N1ZXMvMTE3NjINCj4gPiBTaWduZWQt
b2ZmLWJ5OiBKb3VuaSBIw7ZnYW5kZXIgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCj4gDQo+
IENjOiA8c3RhYmxlQHZnZXIua2VybmVsLm9yZz4gIyB2Ni4xMCsNCj4gUmV2aWV3ZWQtYnk6IEph
bmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+DQoNClRoYW5rIHlvdSBKYW5pIGZvciBy
ZXZpZXdpbmcgbXkgcGF0Y2hlcy4gVGhlc2UgYXJlIG5vdyBwdXNoZWQgdG8gZHJtLQ0KaW50ZWwt
bmV4dC4NCg0KQlIsDQoNCkpvdW5pIEjDtmdhbmRlcg0KDQo+IA0KPiANCj4gPiAtLS0NCj4gPiDC
oGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYWxwbS5jwqDCoCB8wqAgMiArLQ0K
PiA+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9hdXguYyB8IDE2ICsr
KysrKysrKysrLS0tLS0NCj4gPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZHBfYXV4LmggfMKgIDIgKy0NCj4gPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfcXVpcmtzLmMgfCAxNyArKysrKysrKysrKysrKysrKw0KPiA+IMKgZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9xdWlya3MuaCB8wqAgMSArDQo+ID4gwqA1IGZpbGVzIGNoYW5n
ZWQsIDMxIGluc2VydGlvbnMoKyksIDcgZGVsZXRpb25zKC0pDQo+ID4gDQo+ID4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYWxwbS5jDQo+ID4gYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2FscG0uYw0KPiA+IGluZGV4IDgyZWU3Nzhi
MmVmZTkuLjE4NmNmNDgzM2Y3MTYgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9hbHBtLmMNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2FscG0uYw0KPiA+IEBAIC0yMjgsNyArMjI4LDcgQEAgYm9vbCBpbnRlbF9h
bHBtX2NvbXB1dGVfcGFyYW1zKHN0cnVjdCBpbnRlbF9kcA0KPiA+ICppbnRlbF9kcCwNCj4gPiDC
oMKgwqDCoMKgwqDCoMKgaW50IHRmd19leGl0X2xhdGVuY3kgPSAyMDsgLyogZURQIHNwZWMgKi8N
Cj4gPiDCoMKgwqDCoMKgwqDCoMKgaW50IHBoeV93YWtlID0gNDvCoMKgwqDCoMKgwqDCoMKgwqAg
LyogZURQIHNwZWMgKi8NCj4gPiDCoMKgwqDCoMKgwqDCoMKgaW50IHByZWFtYmxlID0gODvCoMKg
wqDCoMKgwqDCoMKgwqAgLyogZURQIHNwZWMgKi8NCj4gPiAtwqDCoMKgwqDCoMKgwqBpbnQgcHJl
Y2hhcmdlID0gaW50ZWxfZHBfYXV4X2Z3X3N5bmNfbGVuKCkgLSBwcmVhbWJsZTsNCj4gPiArwqDC
oMKgwqDCoMKgwqBpbnQgcHJlY2hhcmdlID0gaW50ZWxfZHBfYXV4X2Z3X3N5bmNfbGVuKGludGVs
X2RwKSAtDQo+ID4gcHJlYW1ibGU7DQo+ID4gwqDCoMKgwqDCoMKgwqDCoHU4IG1heF93YWtlX2xp
bmVzOw0KPiA+IMKgDQo+ID4gwqDCoMKgwqDCoMKgwqDCoGlvX3dha2VfdGltZSA9IG1heChwcmVj
aGFyZ2UsDQo+ID4gaW9fYnVmZmVyX3dha2VfdGltZShjcnRjX3N0YXRlKSkgKw0KPiA+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX2F1eC5jDQo+ID4g
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX2F1eC5jDQo+ID4gaW5kZXgg
Y2JjODE3YmIwY2MzZS4uNjQyMGRhNjlmM2JiYyAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX2F1eC5jDQo+ID4gKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9hdXguYw0KPiA+IEBAIC0xMyw2ICsxMyw3IEBADQo+
ID4gwqAjaW5jbHVkZSAiaW50ZWxfZHBfYXV4LmgiDQo+ID4gwqAjaW5jbHVkZSAiaW50ZWxfZHBf
YXV4X3JlZ3MuaCINCj4gPiDCoCNpbmNsdWRlICJpbnRlbF9wcHMuaCINCj4gPiArI2luY2x1ZGUg
ImludGVsX3F1aXJrcy5oIg0KPiA+IMKgI2luY2x1ZGUgImludGVsX3RjLmgiDQo+ID4gwqANCj4g
PiDCoCNkZWZpbmUgQVVYX0NIX05BTUVfQlVGU0laRcKgwqDCoMKgNg0KPiA+IEBAIC0xNDIsMTYg
KzE0MywyMSBAQCBzdGF0aWMgaW50IGludGVsX2RwX2F1eF9zeW5jX2xlbih2b2lkKQ0KPiA+IMKg
wqDCoMKgwqDCoMKgwqByZXR1cm4gcHJlY2hhcmdlICsgcHJlYW1ibGU7DQo+ID4gwqB9DQo+ID4g
wqANCj4gPiAtaW50IGludGVsX2RwX2F1eF9md19zeW5jX2xlbih2b2lkKQ0KPiA+ICtpbnQgaW50
ZWxfZHBfYXV4X2Z3X3N5bmNfbGVuKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApDQo+ID4gwqB7
DQo+ID4gK8KgwqDCoMKgwqDCoMKgaW50IHByZWNoYXJnZSA9IDEwOyAvKiAxMC0xNiAqLw0KPiA+
ICvCoMKgwqDCoMKgwqDCoGludCBwcmVhbWJsZSA9IDg7DQo+ID4gKw0KPiA+IMKgwqDCoMKgwqDC
oMKgwqAvKg0KPiA+IMKgwqDCoMKgwqDCoMKgwqAgKiBXZSBmYWNlZCBzb21lIGdsaXRjaGVzIG9u
IERlbGwgUHJlY2lzaW9uIDU0OTAgTVRMIGxhcHRvcA0KPiA+IHdpdGggcGFuZWw6DQo+ID4gwqDC
oMKgwqDCoMKgwqDCoCAqICJNYW51ZmFjdHVyZXI6IEFVTywgTW9kZWw6IDYzODk4IiB3aGVuIHVz
aW5nIEhXIGRlZmF1bHQNCj4gPiAxOC4gVXNpbmcgMjANCj4gPiDCoMKgwqDCoMKgwqDCoMKgICog
aXMgZml4aW5nIHRoZXNlIHByb2JsZW1zIHdpdGggdGhlIHBhbmVsLiBJdCBpcyBzdGlsbA0KPiA+
IHdpdGhpbiByYW5nZQ0KPiA+IC3CoMKgwqDCoMKgwqDCoCAqIG1lbnRpb25lZCBpbiBlRFAgc3Bl
Y2lmaWNhdGlvbi4NCj4gPiArwqDCoMKgwqDCoMKgwqAgKiBtZW50aW9uZWQgaW4gZURQIHNwZWNp
ZmljYXRpb24uIEluY3JlYXNpbmcgRmFzdCBXYWtlDQo+ID4gc3luYyBsZW5ndGggaXMNCj4gPiAr
wqDCoMKgwqDCoMKgwqAgKiBjYXVzaW5nIHByb2JsZW1zIHdpdGggb3RoZXIgcGFuZWxzOiBpbmNy
ZWFzZSBsZW5ndGggYXMgYQ0KPiA+IHF1aXJrIGZvcg0KPiA+ICvCoMKgwqDCoMKgwqDCoCAqIHRo
aXMgc3BlY2lmaWMgbGFwdG9wLg0KPiA+IMKgwqDCoMKgwqDCoMKgwqAgKi8NCj4gPiAtwqDCoMKg
wqDCoMKgwqBpbnQgcHJlY2hhcmdlID0gMTI7IC8qIDEwLTE2ICovDQo+ID4gLcKgwqDCoMKgwqDC
oMKgaW50IHByZWFtYmxlID0gODsNCj4gPiArwqDCoMKgwqDCoMKgwqBpZiAoaW50ZWxfaGFzX2Rw
Y2RfcXVpcmsoaW50ZWxfZHAsIFFVSVJLX0ZXX1NZTkNfTEVOKSkNCj4gPiArwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgcHJlY2hhcmdlICs9IDI7DQo+ID4gwqANCj4gPiDCoMKgwqDCoMKg
wqDCoMKgcmV0dXJuIHByZWNoYXJnZSArIHByZWFtYmxlOw0KPiA+IMKgfQ0KPiA+IEBAIC0yMTEs
NyArMjE3LDcgQEAgc3RhdGljIHUzMiBza2xfZ2V0X2F1eF9zZW5kX2N0bChzdHJ1Y3QgaW50ZWxf
ZHANCj4gPiAqaW50ZWxfZHAsDQo+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBE
UF9BVVhfQ0hfQ1RMX1RJTUVfT1VUX01BWCB8DQo+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqBEUF9BVVhfQ0hfQ1RMX1JFQ0VJVkVfRVJST1IgfA0KPiA+IMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgRFBfQVVYX0NIX0NUTF9NRVNTQUdFX1NJWkUoc2VuZF9ieXRlcykg
fA0KPiA+IC0NCj4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBEUF9BVVhfQ0hfQ1RM
X0ZXX1NZTkNfUFVMU0VfU0tMKGludGVsX2RwX2F1eF9md19zeW5jXw0KPiA+IGxlbigpKSB8DQo+
ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoERQX0FVWF9DSF9DVExfRldfU1lOQ19Q
VUxTRV9TS0woaW50ZWxfZHBfYXV4X2Z3X3N5bg0KPiA+IGNfbGVuKGludGVsX2RwKSkgfA0KPiA+
IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgRFBfQVVYX0NIX0NUTF9TWU5DX1BVTFNF
X1NLTChpbnRlbF9kcF9hdXhfc3luY19sZW4oDQo+ID4gKSk7DQo+ID4gwqANCj4gPiDCoMKgwqDC
oMKgwqDCoMKgaWYgKGludGVsX3RjX3BvcnRfaW5fdGJ0X2FsdF9tb2RlKGRpZ19wb3J0KSkNCj4g
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9hdXgu
aA0KPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9hdXguaA0KPiA+
IGluZGV4IDc2ZDFmMmVkN2MyZjQuLjU5M2Y1OGZhZmFiNzEgMTAwNjQ0DQo+ID4gLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9hdXguaA0KPiA+ICsrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfYXV4LmgNCj4gPiBAQCAtMjAsNiArMjAs
NiBAQCBlbnVtIGF1eF9jaCBpbnRlbF9kcF9hdXhfY2goc3RydWN0IGludGVsX2VuY29kZXINCj4g
PiAqZW5jb2Rlcik7DQo+ID4gwqANCj4gPiDCoHZvaWQgaW50ZWxfZHBfYXV4X2lycV9oYW5kbGVy
KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KTsNCj4gPiDCoHUzMiBpbnRlbF9kcF9hdXhf
cGFjayhjb25zdCB1OCAqc3JjLCBpbnQgc3JjX2J5dGVzKTsNCj4gPiAtaW50IGludGVsX2RwX2F1
eF9md19zeW5jX2xlbih2b2lkKTsNCj4gPiAraW50IGludGVsX2RwX2F1eF9md19zeW5jX2xlbihz
dHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKTsNCj4gPiDCoA0KPiA+IMKgI2VuZGlmIC8qIF9fSU5U
RUxfRFBfQVVYX0hfXyAqLw0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX3F1aXJrcy5jDQo+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX3F1aXJrcy5jDQo+ID4gaW5kZXggYmNlMWY2N2M5MThiYi4uMjliNTZkNTNhMzQwYSAx
MDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3F1aXJr
cy5jDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9xdWlya3Mu
Yw0KPiA+IEBAIC03MCw2ICs3MCwxNCBAQCBzdGF0aWMgdm9pZA0KPiA+IHF1aXJrX25vX3Bwc19i
YWNrbGlnaHRfcG93ZXJfaG9vayhzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSkNCj4gPiDC
oMKgwqDCoMKgwqDCoMKgZHJtX2luZm8oZGlzcGxheS0+ZHJtLCAiQXBwbHlpbmcgbm8gcHBzIGJh
Y2tsaWdodCBwb3dlcg0KPiA+IHF1aXJrXG4iKTsNCj4gPiDCoH0NCj4gPiDCoA0KPiA+ICtzdGF0
aWMgdm9pZCBxdWlya19md19zeW5jX2xlbihzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKQ0KPiA+
ICt7DQo+ID4gK8KgwqDCoMKgwqDCoMKgc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXkgPSB0
b19pbnRlbF9kaXNwbGF5KGludGVsX2RwKTsNCj4gPiArDQo+ID4gK8KgwqDCoMKgwqDCoMKgaW50
ZWxfc2V0X2RwY2RfcXVpcmsoaW50ZWxfZHAsIFFVSVJLX0ZXX1NZTkNfTEVOKTsNCj4gPiArwqDC
oMKgwqDCoMKgwqBkcm1faW5mbyhkaXNwbGF5LT5kcm0sICJBcHBseWluZyBGYXN0IFdha2Ugc3lu
YyBwdWxzZSBjb3VudA0KPiA+IHF1aXJrXG4iKTsNCj4gPiArfQ0KPiA+ICsNCj4gPiDCoHN0cnVj
dCBpbnRlbF9xdWlyayB7DQo+ID4gwqDCoMKgwqDCoMKgwqDCoGludCBkZXZpY2U7DQo+ID4gwqDC
oMKgwqDCoMKgwqDCoGludCBzdWJzeXN0ZW1fdmVuZG9yOw0KPiA+IEBAIC0yMjQsNiArMjMyLDE1
IEBAIHN0YXRpYyBzdHJ1Y3QgaW50ZWxfcXVpcmsgaW50ZWxfcXVpcmtzW10gPSB7DQo+ID4gwqB9
Ow0KPiA+IMKgDQo+ID4gwqBzdGF0aWMgc3RydWN0IGludGVsX2RwY2RfcXVpcmsgaW50ZWxfZHBj
ZF9xdWlya3NbXSA9IHsNCj4gPiArwqDCoMKgwqDCoMKgwqAvKiBEZWxsIFByZWNpc2lvbiA1NDkw
ICovDQo+ID4gK8KgwqDCoMKgwqDCoMKgew0KPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAuZGV2aWNlID0gMHg3ZDU1LA0KPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAuc3Vic3lzdGVtX3ZlbmRvciA9IDB4MTAyOCwNCj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgLnN1YnN5c3RlbV9kZXZpY2UgPSAweDBjYzcsDQo+ID4gK8KgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoC5zaW5rX291aSA9IFNJTktfT1VJKDB4MzgsIDB4ZWMsIDB4MTEpLA0K
PiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAuaG9vayA9IHF1aXJrX2Z3X3N5bmNf
bGVuLA0KPiA+ICvCoMKgwqDCoMKgwqDCoH0sDQo+ID4gKw0KPiA+IMKgfTsNCj4gPiDCoA0KPiA+
IMKgdm9pZCBpbnRlbF9pbml0X3F1aXJrcyhzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSkN
Cj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9xdWly
a3MuaA0KPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9xdWlya3MuaA0K
PiA+IGluZGV4IGM4ZGI1MGI5YWI3NGQuLmNhZmRlYmRhNzUzNTQgMTAwNjQ0DQo+ID4gLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9xdWlya3MuaA0KPiA+ICsrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcXVpcmtzLmgNCj4gPiBAQCAtMTksNiAr
MTksNyBAQCBlbnVtIGludGVsX3F1aXJrX2lkIHsNCj4gPiDCoMKgwqDCoMKgwqDCoMKgUVVJUktf
SU5WRVJUX0JSSUdIVE5FU1MsDQo+ID4gwqDCoMKgwqDCoMKgwqDCoFFVSVJLX0xWRFNfU1NDX0RJ
U0FCTEUsDQo+ID4gwqDCoMKgwqDCoMKgwqDCoFFVSVJLX05PX1BQU19CQUNLTElHSFRfUE9XRVJf
SE9PSywNCj4gPiArwqDCoMKgwqDCoMKgwqBRVUlSS19GV19TWU5DX0xFTiwNCj4gPiDCoH07DQo+
ID4gwqANCj4gPiDCoHZvaWQgaW50ZWxfaW5pdF9xdWlya3Moc3RydWN0IGludGVsX2Rpc3BsYXkg
KmRpc3BsYXkpOw0KPiANCg0K
