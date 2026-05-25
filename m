Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iAtSOFCvFGqWPQcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 25 May 2026 22:21:36 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 519215CE434
	for <lists+intel-gfx@lfdr.de>; Mon, 25 May 2026 22:21:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8DAD510E3D1;
	Mon, 25 May 2026 20:21:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CcoMYkBQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F11F110E3CF;
 Mon, 25 May 2026 20:21:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779740492; x=1811276492;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=KyRiG2zhHtVAHm87nzGeIhXrQYuQKBcNJY/wQn9WCzQ=;
 b=CcoMYkBQlfrBqa1soaKAtINb/5DUDMGv2pnmwWDV0IA4dmEE9xFrLXGA
 KukSHTVM0yrEXhsjTJDkuu4Yswbx/LtjmPnaYAltc6qEE8pZckSn0neSh
 TqJyjYlnoaDUyed7Aasvf88V4ZSTIL2HKLKRj5PmEb966Oq8l5zvB5kRs
 ZTGcQG9tPc4v8ix/RNETs6RYTRDnm7txnnw9JzbZm7tVToCzBscpDRv+M
 GyK3+pfqGx7fk18rc2bph2ofFTlKeWvs1Rbes53C7mE4UQLec/Xc735s1
 2x8F5telpNrQLPGknYUAhL1g8VctE6Ztgxt9rOY9mr0GNLR8ylXiEKr3W w==;
X-CSE-ConnectionGUID: bo+lryNNTtyR4OUfV776EQ==
X-CSE-MsgGUID: wGLoE+a0TN2s8IGVD+5rEg==
X-IronPort-AV: E=McAfee;i="6800,10657,11797"; a="80464803"
X-IronPort-AV: E=Sophos;i="6.24,168,1774335600"; d="scan'208";a="80464803"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 May 2026 13:21:31 -0700
X-CSE-ConnectionGUID: eMvkaUOIRi+NtUxFQma63w==
X-CSE-MsgGUID: mTZBKZjNSbOZ+WBzTvDAQA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,168,1774335600"; d="scan'208";a="240657484"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 May 2026 13:21:31 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 25 May 2026 13:21:31 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 25 May 2026 13:21:31 -0700
Received: from PH8PR06CU001.outbound.protection.outlook.com (40.107.209.39) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 25 May 2026 13:21:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=F8jn1MV81BFax9E2hn36p/o+RKbfR7C1DfeDUSmAfBLUeH1/G3GYFAu49MC1sXtKnJ7h1fBWvEG2MIyC4mK/eqrv6AVbxeU8ewDwZf1BOSiw+byGlRjWtTPgLEcEuPGcpTJKWFtD1vkh1dqUno0qGL0hiCJ+LLkHUClBEwuPKbQn7h10UcCkmt23h64ovGPaLxEhAjOvk1CZaQB/fOhGBWofKAxmNxLHHJu/noO6umB4neSzNFD7cuWnCMH2vXa6FUe4KUb8nYU0NctRkdVMzzRwgFRhTDvEFqUXHHoJFzLHJfGX1TWw9io61UhGPWQsLRCQOjBTw4ETd1f2CiSgCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KyRiG2zhHtVAHm87nzGeIhXrQYuQKBcNJY/wQn9WCzQ=;
 b=hHrQg+46RHYvg+FeGOM3MXy8iHK7zcENbwQYaeR+P/IPW8mJt0u/I20Qw6YDd7pvygcitIQdotCtftO9G4guWoqRbKNUquvCyeUdgwTSFU6dD5430wM6HH3UVuIFG19arXjSpvOlqrgbVz3aDovFrRwYD83/0nbt21dHW20XD+fGtGKUF+3kGCqAQuugE1D5eBRyotTlJJbcamFrcaPli9OoeglhlEi2BDKrkTRa/XQcQFnk7iugUX3l1SFpOlI7RRTrhE5XWUVqlxBBIobUDcOn0qVHgYu/8c/D1puz0hsSUj9R5400eO/6pCInkLymVfkg8mNEDEy6DeIHPSILxA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7777.namprd11.prod.outlook.com (2603:10b6:930:71::14)
 by DS4PPF2A0C3F85C.namprd11.prod.outlook.com (2603:10b6:f:fc02::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.48.20; Mon, 25 May
 2026 20:21:29 +0000
Received: from CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::5a6:cd7:969c:fa41]) by CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::5a6:cd7:969c:fa41%4]) with mapi id 15.21.0048.019; Mon, 25 May 2026
 20:21:29 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 03/10] drm/i915/bw: Fix bw rounding direction
Thread-Topic: [PATCH 03/10] drm/i915/bw: Fix bw rounding direction
Thread-Index: AQHc6iZjZlcyig2zEUiczRX8vSJ8NLYfM9SA
Date: Mon, 25 May 2026 20:21:29 +0000
Message-ID: <84f5885db3d4dfa502e64106e5210fee5e19d9cf.camel@intel.com>
References: <20260522200346.17377-1-ville.syrjala@linux.intel.com>
 <20260522200346.17377-4-ville.syrjala@linux.intel.com>
In-Reply-To: <20260522200346.17377-4-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.52.3-0ubuntu1.1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7777:EE_|DS4PPF2A0C3F85C:EE_
x-ms-office365-filtering-correlation-id: f6e5d329-f48f-4d80-885d-08deba9b344d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|10070799003|366016|56012099003|11063799006|4143699003|18002099003|22082099003|38070700021;
x-microsoft-antispam-message-info: mFFkbJEZ54dQGf6Lx0l9XO73m8TC46fWcSNRIMwm2jZlThRq9pbY8xpCeH+JMbqljR8bXWFJ3RM3PMovUDMv54RlqDggRZU49nUBrCUwzbqbNBnPpWRhfpHbP1cCgNKgsYPR6jti78GvcK2jjJy990WEVgoPYjMizIsVQy7dhKlL8Eu4lT5Hu6nwPYZ6nWZ/gUWyns3U8AH/RLJpGgiij1zO9/QMwpTNhS7kbyK58Du4B8oVsgE/iRT4mfazORd3669P45IwP0dmKaKpqBRZNn0FCKfezqzfGWbBd6Opo0MF61ec1rqAHKuhZQPRcWcsKBgsjgNpA0t60kj4OUYTS6fwFXaq75vVmC7qvFiQl0dqysBJRCNOu2rhppupcZ9nDFahyEgAy2I8s81lkRZFMQT5vJ1Q3yHafSe/E6ktVBOr7zKhoYIkOmFrg/FJbxzEty51cmEznaLGzZ4MXTo4/+4etA6yMLSCwFvZBp1MRNpet6aYFgfrFJAMQf6lbNUJwJcoy/To6w7S6pTgpA9+kz0LXp6ckP7NNyfEVwO16s9yrNqLQebEFDqHbHxzkhl0bQZfNFIdjNvd+nc6NzxW4fz/FS9BSUL+NoT7ZRdipTFj7bP83jnrBIfFjGRIvLVG02P1BMjo2poJ0ib841HUvMCbwYG9MwkslG2skTdPtRYnz4hSMv4+P6/onFv0WiBMG3MCJqCsARHMxdC2gDrAtUNFSKV8z+8u2bYpeQLIXVfcb6ZCkAjYEbapornZjG8b
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7777.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(10070799003)(366016)(56012099003)(11063799006)(4143699003)(18002099003)(22082099003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MVBWOVR2U3BTZ3djU2d5S3laOUoreUV4QlR5Znk2bG1SWUFKaldYTmRHTyt3?=
 =?utf-8?B?c2tJY0hoRjgwZWo4aVFrZm9rTVJ2RzZXdWJLTkV3SmtmVnhzc0dtUDlOOVZ0?=
 =?utf-8?B?bFZ1dTFZQ014d29QSnZ5eElHdExhaWlWWFhldUNyQVFMZHdrYzZZQ0c3ajJQ?=
 =?utf-8?B?blZhU0JJVGJNQnlqTmhVTjlWUTZwSkhORnBuZHBZTHUwcW5KckVtbDFXOHhj?=
 =?utf-8?B?MjJ3UjdNbFFubEFZNERUTTRTaExBanNWbjZnL2hJam9YdkgwMUlWMFM2Tk5u?=
 =?utf-8?B?TWJPbk9IczBnNUMvUkt5Sk5JbzJXOGtFVEVEak9BQ0tvcFJFbXNCNzdZSlht?=
 =?utf-8?B?K1lJQ09uTWpiUEZFdE8rQ3JjMXA0V3JTYU80YXVmem5BOE1vZEN4aHNzZ0Y2?=
 =?utf-8?B?ZzVSSG5xdVUyM0FoWlEwRzAwWHQ2UjdsT3d2alkrTzk1UjVYS1RHTXNEZUFW?=
 =?utf-8?B?SytYOE8rZXFaOTFJbkNMV3VIUU81ZUx0TEUwQ25QbmJscVhWTkUyY2s2Ykg2?=
 =?utf-8?B?QXhkQ2NzS0pOVUUvWmtmc3Y2TGZoaVZqLzZQNHVDUFhmTVhTa3RoYmxVSDNC?=
 =?utf-8?B?cmRPT09rZk0renZsbkFBcW1RQUNnRDdkQWQwTGUzMWE3dVByUzZCd3ZWaGR3?=
 =?utf-8?B?NzFTeUtGa0ZHYzZZcW5LN1VwcXRVcSt1aklEdDhrSTBtdEhRTUdDNGhtOWwz?=
 =?utf-8?B?RWMwaHlSekpJZE5yVHlweGZXRHdPbStZMGNyZVFjRGNoS3JZMkNPS0NIUGhh?=
 =?utf-8?B?SGZIMlk1UU5RUXppNmxtN2xxZ3IzK0NOZW52aGVWcDF1TUNOM1lsbHRSMVB4?=
 =?utf-8?B?MlRnYXA0Nko3K1dhLzV0MnhKU3F1M1FqOTRENHhpQjBUUklGTnBCRFYwT0pW?=
 =?utf-8?B?Q0c0YXJGNEF1OWJpUGMwOVpWWTA4bEdtWWZrMUw4dU1Yd3B0NGIrdWtBdXZk?=
 =?utf-8?B?Q3ZveERIVG1YbWthbEx5WGF1T2hxaHdWZXE2aGcyQXNReDVqZFErQXhOSU1t?=
 =?utf-8?B?QzdFSGdZVDA5Zk1kMDJaM0FJR0RWZWQ5eGM5WVA3eGlGSU5ldlJ0V0NtQUMv?=
 =?utf-8?B?MCtyOE1WeFNRdTEyN2lwcmpWcFlyQk9ZSm9XOGc3Zkx2YklVSDNFRTJpTDc5?=
 =?utf-8?B?VUJFS0MyLzBUWDdJNVBhcWg2VmthUnpiRGc0SW9mV3g0VmJ2cTZ0UjdsYnJl?=
 =?utf-8?B?WFBIYUVjMEV5ZzZocUZwSC9oR01WQ2dXa3ZuZHhUaW14MlZkZXFnMHEzR2ov?=
 =?utf-8?B?cnlaanNRV21CQ0YrQ0ZYcmhyVUhCY0wxRGRrZ1JjbDZFM0dXSHlaWTVTMTNu?=
 =?utf-8?B?ckhVN1ErVXdPRW0rMzdpeU5SSmJIOVFsQXVZTHpzMGQ0Y0JQanVLWDB4NGdX?=
 =?utf-8?B?SmVRSWRkMjV3TC9GVm5TdHVyNVVCQWZmYlliMnFxdDB6bS9FTklUWjQxb1Er?=
 =?utf-8?B?cDhyalhYbkVadUtURnNWNmEybzZOWEQyMmdpRnI1UFBoN2pKaHk3YU9BL0dt?=
 =?utf-8?B?MlZEL3FTUXVGRzRCZ3Ezcmw2NjIxRXl4RU1iNWZ1NVp5bVNiS2lvUXl6ZnBi?=
 =?utf-8?B?TGdKaVI2U0JrNXBBdnBKRHVhQnlOY3ZzWC9OeWplVDNxVU56cjRSNXNXT3ky?=
 =?utf-8?B?aEJ5cWR5cXdQaGdGUjV4MG0yejJleE90NTJVS3V0TkgzYnZIU25YRndZbVVa?=
 =?utf-8?B?ZjJmRmlIVTJYMFFHTTNrN1FLUXRpNEpGcSs2aGx5NXBSN2pUdGwyQ1R5alJC?=
 =?utf-8?B?a3VWdGdDcTN1UEh1cmEvNnZnc2gzMlNIbzNKalBYMXZGMFlNaWEzUk1NaGhF?=
 =?utf-8?B?L2lWNnU0Rk5SblNzSGZRUWRHOTA4dU1OMTZtQVpsSjJ1RE1ZTWNza1lsdmlK?=
 =?utf-8?B?NDFKRDBJY21iUitEZjgxZi9OYjlObXJsRUFPcVYrM3lyZlNLWTJBalJqdHla?=
 =?utf-8?B?NDRUblhROXp0bldpWFN6UUpMbnk0R3E5M05iL2ozMjc4a0tOU01YUDRDb3FF?=
 =?utf-8?B?M0R0dFRtVW9uZVdMaTdwYmZIYm5pbWFPVDZFejN3Y2lQRjJ6N1FVOXBnaUg3?=
 =?utf-8?B?aG9nUjIxakVsOFFRWlJjZFd5cnJ0elJIYUsrQjF4blZtVnI5TldwYS9mTE9k?=
 =?utf-8?B?MHlJQkxsMFZiRWVXME1rWXdwME1DUEF4cVBOcHd2dC8wN3p3Vm03NVZlVm5I?=
 =?utf-8?B?QnNrTnBBRUFwMURjWlRwaUg2aENwTU1zNGFGY1VHVXFNRklNZmF5aU00OGV3?=
 =?utf-8?B?MzRPdUprQUVTR096aXZmMXFSdjRWcUUycFlPL2RRWng3LzM2YllvK2hsT01L?=
 =?utf-8?B?K2xkQU1OYVhIRTRFeW1JZjB4QXRLRXJvVEluRWQ5OU5UNGNPakdYM0hWdWFB?=
 =?utf-8?Q?CB7mgKdkH7XvxFJ0c6utR/3X/mVyxxzj9Cg2YVvb8FILl?=
x-ms-exchange-antispam-messagedata-1: G/7JkFXXwyFgNQgXWjq712rV9xno+mcMaJY=
Content-Type: text/plain; charset="utf-8"
Content-ID: <F33F5F1F8A92944683E3CB7EE8303265@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: gPfvLMxLYG8hrY7l9gMejgL0ekudjtXZlgDqCS4szUNIUETGYrXkrOH5G52pXpZX1ADysLp8Fs89nf49Un6TrkyhEu4fc4ob5ARmScr6prsUOC4dXsDILx9bKv3Yk+6mAd7/fgX6HxtUej4wZ2v++b1RHbpit8ECjnT3Vvv6/1Q16kEECDsm1yju43Yu5sEPTFyseG2K7dNncN4ulPq4jpMlB93D6yos4HnHghTnUyVEcZr/91/zDYVeapqcWx+dETqWu3jeo0RQbUXLrAwDcyM6NiB/pVa2noi6SvqFrMx+syRc/ps04g+cr5kilSsGBpOzRz5i5FuHWOZPR/y40A==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7777.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f6e5d329-f48f-4d80-885d-08deba9b344d
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 May 2026 20:21:29.3314 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: iGO7cdmL3ZnKWjXWwghAuqIXWltZIig9RM34iuW3eksdSFQnDwrZwkpQI5rSXNHbqayTL8x6eVLd+TKH0FpXQEyKQMA1YjQV5kGXNCODPfU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS4PPF2A0C3F85C
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
X-Spamd-Result: default: False [-0.21 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_ALL(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,intel.com:dkim,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[vinod.govindapillai@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 519215CE434
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gRnJpLCAyMDI2LTA1LTIyIGF0IDIzOjAzICswMzAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOg0K
PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiANCj4gVGhlIERSQU0gYmFuZHdpZHRoIHZhbHVlIHNob3VsZCBiZSByb3VuZGVkIGRvd24sIG5v
dCB1cC4NCj4gDQo+IFNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFs
YUBsaW51eC5pbnRlbC5jb20+DQo+IC0tLQ0KPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfYncuYyB8IDQgKystLQ0KPiDCoDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMo
KyksIDIgZGVsZXRpb25zKC0pDQoNCkJzcGVjOiA2NDYzMQ0KDQpSZXZpZXdlZC1ieTogVmlub2Qg
R292aW5kYXBpbGxhaSA8dmlub2QuZ292aW5kYXBpbGxhaUBpbnRlbC5jb20+DQoNCj4gDQo+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2J3LmMNCj4gYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2J3LmMNCj4gaW5kZXggNDQyZTZiNjU3
Y2E1Li5iYmFhZmNjMWI2YmUgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfYncuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2J3LmMNCj4gQEAgLTU1NSw3ICs1NTUsNyBAQCBzdGF0aWMgaW50IGljbF9nZXRfYndfaW5m
byhzdHJ1Y3QgaW50ZWxfZGlzcGxheQ0KPiAqZGlzcGxheSwNCj4gwqAJCQkgKi8NCj4gwqAJCQlj
dCA9IG1heF90KGludCwgc3AtPnRfcmMsIHNwLT50X3JwICsgc3AtDQo+ID50X3JjZCArDQo+IMKg
CQkJCcKgwqAgKGNscGNoZ3JvdXAgLSAxKSAqIHFpLnRfYmwgKyBzcC0NCj4gPnRfcmRwcmUpOw0K
PiAtCQkJYncgPSBESVZfUk9VTkRfVVAoc3AtPmRjbGsgKiBjbHBjaGdyb3VwICogMzINCj4gKiBu
dW1fY2hhbm5lbHMsIGN0KTsNCj4gKwkJCWJ3ID0gc3AtPmRjbGsgKiBjbHBjaGdyb3VwICogMzIg
Kg0KPiBudW1fY2hhbm5lbHMgLyBjdDsNCj4gwqANCj4gwqAJCQliaS0+ZGVyYXRlZGJ3W2pdID0g
bWluKG1heGRlYncsDQo+IMKgCQkJCQnCoMKgwqDCoMKgwqAgYncgKiAoMTAwIC0NCj4gc29jX2J3
X3BhcmFtcy0+ZGVyYXRpbmcpIC8gMTAwKTsNCj4gQEAgLTY1OCw3ICs2NTgsNyBAQCBzdGF0aWMg
aW50IHRnbF9nZXRfYndfaW5mbyhzdHJ1Y3QgaW50ZWxfZGlzcGxheQ0KPiAqZGlzcGxheSwNCj4g
wqAJCQkgKi8NCj4gwqAJCQljdCA9IG1heF90KGludCwgc3AtPnRfcmMsIHNwLT50X3JwICsgc3At
DQo+ID50X3JjZCArDQo+IMKgCQkJCcKgwqAgKGNscGNoZ3JvdXAgLSAxKSAqIHFpLnRfYmwgKyBz
cC0NCj4gPnRfcmRwcmUpOw0KPiAtCQkJYncgPSBESVZfUk9VTkRfVVAoc3AtPmRjbGsgKiBjbHBj
aGdyb3VwICogMzINCj4gKiBudW1fY2hhbm5lbHMsIGN0KTsNCj4gKwkJCWJ3ID0gc3AtPmRjbGsg
KiBjbHBjaGdyb3VwICogMzIgKg0KPiBudW1fY2hhbm5lbHMgLyBjdDsNCj4gwqANCj4gwqAJCQli
aS0+ZGVyYXRlZGJ3W2pdID0gbWluKG1heGRlYncsDQo+IMKgCQkJCQnCoMKgwqDCoMKgwqAgYncg
KiAoMTAwIC0NCj4gc29jX2J3X3BhcmFtcy0+ZGVyYXRpbmcpIC8gMTAwKTsNCg0K
