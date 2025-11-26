Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 11E3DC88053
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Nov 2025 05:14:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E7EF10E502;
	Wed, 26 Nov 2025 04:14:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XhpWyyI4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 85DC210E502;
 Wed, 26 Nov 2025 04:14:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764130491; x=1795666491;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=RIdNUtZljoZH+FVGXSxHZvwOGBIjTNpWIukpKICnIG0=;
 b=XhpWyyI4KN7zISke5bPXYxti4+LHyVAP5nHYwbnzaniQxDUy8xJbBLyV
 fEYu+5aklj4Xmix92QJU/LnIk7MFdS6xfrEhldqn5LdmzPvRKQx/buqEG
 sf1Nqd/D7pG/f0y3H2DCOzesDVpLq7hPZN0iDKO7BSaQuRE1dmI9FjB91
 N8kRzFkA+09dQ+H3IstqhWJkGoxqpM61pkSnDQb2rb6gsVj9xhvvKY7vG
 ocLbqs6RweRxRzpS4LeRHQphD4ciZA9YVU89/pVWpQelBWKPFhaRavNA2
 1n/Nf86Xu+ld7SePRgmyIrzfhxrKH1nqxMg5SPP6QB8Ib4gYjTd+9BEt6 g==;
X-CSE-ConnectionGUID: ZfREd/AiQxqXR7c9UGdTGQ==
X-CSE-MsgGUID: T5OCoYaMRjSZ0zkTbPvf+Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11624"; a="65162431"
X-IronPort-AV: E=Sophos;i="6.20,227,1758610800"; d="scan'208";a="65162431"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2025 20:14:51 -0800
X-CSE-ConnectionGUID: zyskHuA2THGGHT427+ZX6w==
X-CSE-MsgGUID: iUUopD24Qb6EiL+5Fk8RFw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,227,1758610800"; d="scan'208";a="197307872"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2025 20:14:51 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 25 Nov 2025 20:14:50 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Tue, 25 Nov 2025 20:14:50 -0800
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.61) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 25 Nov 2025 20:14:50 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=tmX5yQG7sOmFFjHSBAz9yC7oUG07h6F0OcFm7gQjGQAKuJRJqZn0Y1Pil5R9SrZguQ6j3xo6J0Au6R9KYRaIwuohqCfa04aWDoGk5QYM/u4Ki6RxsJngM/QfPwchE47+cRLbcrFwmfTuo9MaMVwygI5CdmsVN8LVVnG5ixuIncdWyUGFX/AyzLzDRFkRx2so+xX7PkwP5nZgHTB4D9Jtvbl1/24IiLDTBhD8z2nxd++/NzDWYyhuedU9VR2+wptF+E6w9Z/9PIuXTO3pc6qj2M82U9xbgUODSiUYccCCRYe25PSrigzg3eqPcd6RfHMotbYURPCMLdOrk/0HpftZ7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lXHcVYmwrlIQNbep1/96tmiKRgum4tAzjXniqZaA3pM=;
 b=fb8QOps4PneaPhHWaoP5KH40xVjXx+OcOzDd+50lHNxn6xEu1erdO4G1N30N4N0MPkgyB8vyzldj11KQ89+uUdi2Amlnjd+1uyDZihS8qpagxkuayXPGZTXoDgR4lP+DFHqZqs3wVb2FYk+egQ/ZFe0DR1Sh95xK2T+W+DMH+cP3xLi7ZqvqQ60qZqviuQWc8GHHE1guNO+V8uSzFT0ts+OOokrsI/Wo60Yylg/PeXOui8vXKA2XEr+UMKqtyy88o58QYUKlqEiR4ubT469WpYnqd+cI0kD7Mr81hb+fqc+rcXdFzD5qV8Tz9EZHkSDIVaOKdaKs7AeVoa4hu4w0Wg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by CY8PR11MB7898.namprd11.prod.outlook.com (2603:10b6:930:7b::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.11; Wed, 26 Nov
 2025 04:14:48 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.9366.009; Wed, 26 Nov 2025
 04:14:48 +0000
Message-ID: <d643b714-d4f8-4bc2-ba47-c1ff3f3380a6@intel.com>
Date: Wed, 26 Nov 2025 09:44:41 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 09/18] drm/i915/display: Add DC Balance flip count
 operations
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: <intel-xe@lists.freedesktop.org>, <ville.syrjala@linux.intel.com>
References: <20251117054442.4047665-1-mitulkumar.ajitkumar.golani@intel.com>
 <20251117054442.4047665-10-mitulkumar.ajitkumar.golani@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20251117054442.4047665-10-mitulkumar.ajitkumar.golani@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5PR01CA0152.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:1ac::16) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|CY8PR11MB7898:EE_
X-MS-Office365-Filtering-Correlation-Id: df333d92-18c7-401a-d636-08de2ca2562a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?UEhYeXpCbnVTNjZyWHJZYlZhZWxJS2IyRGxsdFBJMDlnUWQ5UCt5Zm43NjJy?=
 =?utf-8?B?S3lKQjlDTnE0ckVCVlZxOTF3OHZpL3VLN0FOaEdyTDhWbHZxVzJWaGpnQnp4?=
 =?utf-8?B?dWlOR1JzZktsbVJJMTVpSHF6Q2FPRm1STnlKc3RGTVVWS1BiT3pmajN1SFd0?=
 =?utf-8?B?Q3NLblNLRHMzbndCREV6QUpLRWtVMVI5dlZ4THA3YkJPK3o3ZnpTaHBBWHM4?=
 =?utf-8?B?dGQ5WG4zS05LRWdpS0l4MXh0ZjFJT1VoTUxueUNlR1kwaWxIRWVFUzF5b2Ur?=
 =?utf-8?B?STEydWZpdnhWUVZOTE5MU3FBc3Z6c1VFbk5sQk1mYXdJcit3dE5XWFhtMmox?=
 =?utf-8?B?ZEtCQkZ3WFlWcWZSWEtyL1R1RWN0QmV3TjUwYTlibWRZVFNFNFF1SVVnOHl6?=
 =?utf-8?B?d3c3V3orUXZvYWZQbzVRbmlqR0JaYXB2V0o0U2NxYkNtYmZCOStaeDYwQXBw?=
 =?utf-8?B?RFAvQm5YSHB0V2dvZWQwVkFySFFQeHZXT1Q0SDFlRzViOE1Ibk5FWUlPK24x?=
 =?utf-8?B?R1RveWJzWEovNjZnSEZxVW1uQVFOUGRoRytXM0lLemF4S2FsbGM1RVI0NlJ6?=
 =?utf-8?B?SVJ5dVptZDlLdWtUN1BpWXhNaDJQaUJPK0hZWWFwVFUvVzFIcnpCcC9nZDBU?=
 =?utf-8?B?bWhKMlB0ZmxDUUpsaGkrWTg2cXBZL0N2WnE5bXEwb3BHNzR3WVZaQmR3Umlh?=
 =?utf-8?B?bk9QUkxKYUVrOG5KM21oN1ZWODNhVFlBM0RpeFBrMVBWWCtGOEc3NUZGR0RK?=
 =?utf-8?B?QWRiM2JIM055aUErd1RodlQ5cUNzVGlrVTk3MzhGWGZQQWIyV0pQVkR6NVc5?=
 =?utf-8?B?NXpJR3U2OVpVdjVTemdqZzJ3QzFlUVozckltNUh4SUFDaDg0RFc3WklrNWpm?=
 =?utf-8?B?QndRTTJiRndlWU9adTQ1MjhXVmVXUUZOSEhIVUNaVy9mSmNxWHoxUkxJdUNP?=
 =?utf-8?B?UUFMSUpFL2xTczdZa1diK0czeWg1WVdYeWYydU84OHFNeFl2THJoMjBwczZL?=
 =?utf-8?B?eWNjUjkyVzVBbHhCUFlacFhXcWthcVFVYTFyTWJiR3ZsN1VjS2U2cm5GRURY?=
 =?utf-8?B?czhNbnlUNnVwVW1QR3hCUmRGYUx1cktHZEZhQzYvcWMyREo1Nm1WNjFJd2sy?=
 =?utf-8?B?QS9Ma0x2c2dQbk5qSURmYUF5Z3ZSUTk5ZDdNTWcvWmlUMGUvcEppRVJIZEhQ?=
 =?utf-8?B?UytScDNjc3c0RkRnSDNRWVRkL3ZhZysySVVrMk9USFkvOW14SGhaay9YVmoz?=
 =?utf-8?B?a2g5MFZnOGVyWWFmUGJISlVwQWRGTmUrNVd4SmZwelBjRGY2ZzlYaERWaThW?=
 =?utf-8?B?T0QzbVRDSnFuaEFBSmdsclViTlNrekkxaWIyejRpRVRJd21oSTJIQkhaczVh?=
 =?utf-8?B?c1NoNEFIV0g3SGtiNzNrbGs2Tm1oMTNOYXFYQnRNOFIxK1hjbUwyTGJwbVJR?=
 =?utf-8?B?Y1Z4MlgvblIyd3dPc1VvSjRCT0pQcm1iU2oyRFhGWWJHM2JTWkZIYS9OOHli?=
 =?utf-8?B?c0pjbmdTeHNqbGtQYzBnaE1sTGVRZFkrRnJhZDRsMGN3SC9HZDF1cm9oWjdB?=
 =?utf-8?B?cC81VHdLNDF1NHZwTWdzZXRYWWZWSnRJS2ttTHV2YzA2YUsxMFFacXRXRys4?=
 =?utf-8?B?eE5VNkZnMldkT3E3Y21CWVE1ZEhZRndJWHp3bU5Ib1FoUW54emx2a1ZDTytN?=
 =?utf-8?B?S09sa1RhTDhncGhldnpBd0ZqVzZEQU1ZczJ5aW5YQzJqU2lEZk9NWTg1RGtm?=
 =?utf-8?B?Wkt5Vnkvd20xR0lpMDc2anhLQXkzM0IxT0JzS1RWeVpEWVZDNEVXZURkWTF2?=
 =?utf-8?B?VDJ4NkJPSS9WTW85ZzlDblhHL3RjZUg3TVFuMWVaQ0k2d2owRWxTS2hTNytU?=
 =?utf-8?B?VHZPNWRFZStJTkRnMFN0aGN3Y1ZWeFFlaWdXdWRDdE45M05SaEszTDc5SkVw?=
 =?utf-8?Q?AsNP4X4tJ/mR4iMIm8Mz69POJ19KwdoU?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QjRlMFp6ayt0dHE1amNGYnF2dUdLeU8rUmdEOERFMG1vNHh5Vkh4RGd1K2Vy?=
 =?utf-8?B?U0xXMmtxM2w0ZGtzTU95K3NFeEM5WmdpUHhobEtwdHFYcGpTdGJPNnNyZTlw?=
 =?utf-8?B?WGdHdlRhL2FhbGNhSjJGVG1VVVFSQklPYlo0S3lFb0RlNm1zL1RiYnp1RFA5?=
 =?utf-8?B?a2pNc21FRWFpdjd3WVJVV2VuS01lUkFCNHRxWElHdC9zNit2a2wyOEJWNmJE?=
 =?utf-8?B?cVdFOE5oVGpyZEMzbStZcVRsUHdoSGQ1SEVQNlBCWi9wb3NyVEhlbjJWS1hs?=
 =?utf-8?B?cGI1WlFaWWZjZEVEVWNFcG1JZXNXNDUvK2pPY0VaMVUrNWJXL1grWHZCV1gr?=
 =?utf-8?B?QjJqeStmOVZZZHBZb05sQk1uTlNnd09oWlRtUHpkSGY2QWRDTEEzRXJXRzFq?=
 =?utf-8?B?NVExL240TVp4ZTF0T1hpU0FOQi9tb0pwM1NUbnBKT2hqVmZZczJDRG5DRk1s?=
 =?utf-8?B?d3BIejdOc1MyYU4xREpTdm1jRTF6UkxqZWJBa1dnS1o0akU1NUcrZ0laY0NL?=
 =?utf-8?B?em9ObmZCd3BWUWVJZXlzVWRxZ3lDeVZTWmdrWHorZ281YnNTSzVHd0Ezcll0?=
 =?utf-8?B?c21zR3NKNlJuSG9oL2gyS0dLRUF0bVRBRlQwZkFwa0hoYllhVzlMcDdEU3I4?=
 =?utf-8?B?UytkM2JGbXNhdVI2VVcxNTFlQ09Id0VLY2Z0WEIvRzk5OXd4eWR3RW03VUpj?=
 =?utf-8?B?TjhaaWRQVlYrd0w3eVQ1N21UbWhPVThuNzkvUkU0d3VUYTRqek11OS9mOUgw?=
 =?utf-8?B?Z1RUNUdBa0I4a2U4bXN5VlE4Zmt6NFpJYlpVYWVsL2tOUmJBdjJjVjV2b1dC?=
 =?utf-8?B?L1EwUVZ5c0dRcUFuVmh2bkozejJzcXBRZ2ozOE9VL0lRbmtWSk51NkVSZm1G?=
 =?utf-8?B?MVk4TC83Wm8zRkZzYU1OSDlkS2RyaGFUWW16L3hzMjgxWXRJWXZWK05iWTNI?=
 =?utf-8?B?cTR3RnpsZkQyRTJoVU80Y1BrNjFHV3lwOWh6WVo5bEowVGVnT1Y1VFA1L2FF?=
 =?utf-8?B?QWNrUWVwNWlVOThEdWI0cEl2NXhnb2dHSnZtT3lLVUpzeWtXcXRwcEpZd3Iz?=
 =?utf-8?B?Zm1HdjlzeUJRd1lMYkxhVU9TV1l6OGIrbjQzeGl5QWk0OFhPOTh3YWN5U2dl?=
 =?utf-8?B?UG9oL29ObDE0TjNwd3NoY1pTam9HUXFGY1E4UnFHbGhsODg2SUREVDd4cDBi?=
 =?utf-8?B?VUR0TkFTYXFGQ0szY2x2MUxKa3FBcXc0U0xHUGtFWVNBZGo0cDFNT3RlWXBW?=
 =?utf-8?B?NC9OOURMOXIybldIQ2s0SGRRR2NDKzNtQ3RpVmFySU9wQ2liODZ2M3oraGxM?=
 =?utf-8?B?U2kyL1RNNzRGQ2xxZk1lZFhlVE1meVpWaVpnd2Y4ZjlrbDJhVW5TeUk4d0dq?=
 =?utf-8?B?MVRIdzJiSXVRTFVWZVg1ZFczNzBxbEZlSWlDYjFYRjFzUytlOW53QXJMZFAy?=
 =?utf-8?B?SkRsOUdQSkZITjBTd0N6Mk05YmU1YjVNWlBNL1dtZ29oOGVXN2hoZ0RxOE00?=
 =?utf-8?B?Wnl4amJXQXp3TjNvNTN6d2FXWWMzd0FuSlU4cDJrMEdpVmxGaDU2bWtITHA4?=
 =?utf-8?B?dk9Ba3hkaFo4MmpySzdwa2tUV05ETkZUZ0FPRW9POVFNZ3UxZ3R2QkZBRnBY?=
 =?utf-8?B?eUJGQkxmMkVFSWkydjJaZnlVOEt2WGcrSFM5K3NKUXprd2lheEFFeWxlNWJQ?=
 =?utf-8?B?OG81akhTekxBZm5ERjc4VVF1NVZGN0dUdFRFMmZaZk51ck9ENDRNZy8wS056?=
 =?utf-8?B?UVY4MTlMSlFTTDMzVHhCa0hmYjNkeU9pdVc1MEtSWkRGQ29KY3ZEb01laUpt?=
 =?utf-8?B?NTZFRHlVRGNTYVFKTWw5NVk4V0Zjb0pSbGhaamlHbWRvRGtubXltdDhvMFVy?=
 =?utf-8?B?N1Y5QU1XTDdpK1ZUYytzOU9qanppWDdNZzlvTGJtVXZmbFJOUStUZWpqbXRh?=
 =?utf-8?B?V0JzMXk2L3RteG9GOUo2QTZnRHRDbDdNWDRmSkNoUW1acmdvOFFISSsrSUY1?=
 =?utf-8?B?R0NrbEZlYkN6M3lWUks5OGFsdmxzaEg2V2IwN1UwWk9UcWZuMnNVTzhpVTkx?=
 =?utf-8?B?dHdEVFBJcmVJT3U4K3FrQmR4bFJYRlZKZkRURzZxNVprRG9OYkFzNnJ4MXQ0?=
 =?utf-8?B?Rk0xVjQrTk5qQkNTcDFrakNJdDVyQkFFZXd6ZEpwV2NNeW5aZVpkSUhoNnN0?=
 =?utf-8?B?RXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: df333d92-18c7-401a-d636-08de2ca2562a
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Nov 2025 04:14:48.0638 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: nH30a4/BDkt5+Ht7nQbNMAbYlgpGV49okF10ebAmkRWCxzRa737A35h/CfQ+Q1zYOxkEh8x3/qvtMCGrMi2uZH2L9O7Vb9y9Z8ATslf64AE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7898
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


On 11/17/2025 11:14 AM, Mitul Golani wrote:
> Track dc balance flip count with params per crtc. Increment
> DC Balance Flip count before every send push to indicate DMC
> firmware about new flip occurrence. This is tracked separately
> from legacy FLIP_COUNT register also Reset DC balance flip
> count value while disabling VRR adaptive mode, this is to
> start with fresh counts when VRR adaptive refresh mode is
> triggered again.
>
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_color.c    |  2 ++
>   drivers/gpu/drm/i915/display/intel_display.c  |  3 ++-
>   .../drm/i915/display/intel_display_types.h    |  4 ++++
>   drivers/gpu/drm/i915/display/intel_vrr.c      | 23 +++++++++++++++++++
>   drivers/gpu/drm/i915/display/intel_vrr.h      |  3 +++
>   5 files changed, 34 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
> index a217a67ceb43..115f6d7eb874 100644
> --- a/drivers/gpu/drm/i915/display/intel_color.c
> +++ b/drivers/gpu/drm/i915/display/intel_color.c
> @@ -2013,6 +2013,8 @@ void intel_color_prepare_commit(struct intel_atomic_state *state,
>   	display->funcs.color->load_luts(crtc_state);
>   
>   	if (crtc_state->use_dsb && intel_color_uses_chained_dsb(crtc_state)) {
> +		intel_vrr_dcb_increment_flip_count(crtc_state->dsb_color,
> +						   crtc_state, crtc);


I still think we need to do this for MMIO path along with the DSB path.

Perhaps add the flip count increment at last in intel_update_crtc() then 
we do not need to use DSB.

I am not very sure about this.


Regards,

Ankit


>   		intel_vrr_send_push(crtc_state->dsb_color, crtc_state);
>   		intel_dsb_wait_for_delayed_vblank(state, crtc_state->dsb_color);
>   		intel_vrr_check_push_sent(crtc_state->dsb_color, crtc_state);
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index df5d1554538d..e7fda3b2944c 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -7378,7 +7378,8 @@ static void intel_atomic_dsb_finish(struct intel_atomic_state *state,
>   
>   	if (new_crtc_state->use_dsb && !intel_color_uses_chained_dsb(new_crtc_state)) {
>   		intel_dsb_wait_vblanks(new_crtc_state->dsb_commit, 1);
> -
> +		intel_vrr_dcb_increment_flip_count(new_crtc_state->dsb_commit,
> +						   new_crtc_state, crtc);
>   		intel_vrr_send_push(new_crtc_state->dsb_commit, new_crtc_state);
>   		intel_dsb_wait_for_delayed_vblank(state, new_crtc_state->dsb_commit);
>   		intel_vrr_check_push_sent(new_crtc_state->dsb_commit,
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 8eb0ace7d918..740c5fc9fe1e 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1501,6 +1501,10 @@ struct intel_crtc {
>   		struct intel_link_m_n m_n, m2_n2;
>   	} drrs;
>   
> +	struct {
> +		u64 flip_count;
> +	} dc_balance;
> +
>   	int scanline_offset;
>   
>   	struct {
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index 5e24ac3e6c75..788e93cea29d 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -624,6 +624,28 @@ void intel_vrr_set_transcoder_timings(const struct intel_crtc_state *crtc_state)
>   			       EMP_AS_SDP_DB_TL(crtc_state->vrr.vsync_start));
>   }
>   
> +void
> +intel_vrr_dcb_increment_flip_count(struct intel_dsb *dsb,
> +				   struct intel_crtc_state *crtc_state,
> +				   struct intel_crtc *crtc)
> +{
> +	struct intel_display *display = to_intel_display(crtc_state);
> +	enum pipe pipe = crtc->pipe;
> +
> +	if (!crtc_state->vrr.dc_balance.enable)
> +		return;
> +
> +	if (dsb)
> +		intel_dsb_nonpost_start(dsb);
> +
> +	intel_de_write_dsb(display, dsb,
> +			   PIPEDMC_DCB_FLIP_COUNT(pipe),
> +			   ++crtc->dc_balance.flip_count);
> +
> +	if (dsb)
> +		intel_dsb_nonpost_end(dsb);
> +}
> +
>   void
>   intel_vrr_dcb_reset(const struct intel_crtc_state *crtc_state,
>   		    struct intel_crtc *crtc)
> @@ -634,6 +656,7 @@ intel_vrr_dcb_reset(const struct intel_crtc_state *crtc_state,
>   	if (!crtc_state->vrr.dc_balance.enable)
>   		return;
>   
> +	intel_de_write(display, PIPEDMC_DCB_FLIP_COUNT(pipe), 0);
>   	intel_de_write(display, PIPEDMC_DCB_BALANCE_RESET(pipe), 0);
>   }
>   
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.h b/drivers/gpu/drm/i915/display/intel_vrr.h
> index 1a11d288dfb4..7aa1f31ee287 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.h
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.h
> @@ -29,6 +29,9 @@ void intel_vrr_send_push(struct intel_dsb *dsb,
>   			 const struct intel_crtc_state *crtc_state);
>   void intel_vrr_check_push_sent(struct intel_dsb *dsb,
>   			       const struct intel_crtc_state *crtc_state);
> +void intel_vrr_dcb_increment_flip_count(struct intel_dsb *dsb,
> +					struct intel_crtc_state *crtc_state,
> +					struct intel_crtc *crtc);
>   bool intel_vrr_is_push_sent(const struct intel_crtc_state *crtc_state);
>   void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state);
>   void intel_vrr_get_config(struct intel_crtc_state *crtc_state);
