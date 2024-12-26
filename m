Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B4F19FC89C
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Dec 2024 06:28:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 136C910E719;
	Thu, 26 Dec 2024 05:28:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nosqb4pg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0B62910E719;
 Thu, 26 Dec 2024 05:28:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1735190899; x=1766726899;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=MSWcXJ1WR+0Z9F+QQx/UjrQ17iaG/vyXPx3B2YfqCKI=;
 b=nosqb4pgcyDKJ2rdgP4gtAdH36bcAFQMXKYFKXrr/omyYZ/HGEStgc9x
 W5LK+/rQrC7wfYZh6ZrEvIpApqknHP3MkVZjkLNrCJt4TNNMoFIyWMdzQ
 B2QMQBENhjaXDWk6MtMT/jVTX4WSXijWQTTyZiQM7oFhLefKRiXWVBETm
 tL2qS2+ziXkedwDdwsd3IUxQ1QymgIj3/p5ShovTVz9U7vnHvPGXJMVxX
 BsEY5zw7pkAmnSFfkUurbbtu7yTKhvc8aug13vRie9Nn3wNJL3fTfqmaq
 6KiLBkT40x7hXAvTUb5NP0PMdmiaugxcSvtk2iiOUzbUhxu/iIaiqZzlq A==;
X-CSE-ConnectionGUID: fgNGRQNbQ9SbZrYsKb9U8w==
X-CSE-MsgGUID: F1vnn9L1QMSOthbp+8Tgeg==
X-IronPort-AV: E=McAfee;i="6700,10204,11296"; a="34883546"
X-IronPort-AV: E=Sophos;i="6.12,265,1728975600"; d="scan'208";a="34883546"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Dec 2024 21:28:19 -0800
X-CSE-ConnectionGUID: WdiKEBdDTTeCi01/LFH/BQ==
X-CSE-MsgGUID: E4HG6fhHSVuitkc5wgPwOg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="99714275"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 25 Dec 2024 21:28:19 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Wed, 25 Dec 2024 21:28:18 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Wed, 25 Dec 2024 21:28:18 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.172)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 25 Dec 2024 21:28:17 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=DB8x4WluZPyctHvdetD8u7yONo2SYSacU3HgNY/ypeFohN4kI1o1uXAV04/L8uZUZjISlJEXn/vm1fHyD5a7RoFpA/OeeXA9yEdWYvJ/JvaRNX6ojmp6YXwcocrgXXxGzAYt+N+2/wL7ACZjj5Hx+CCMB2JqfnCy901DqwBvlb3RMcFGB+aBT77PSlA9TEXU7Fd6OsEi6Vp87LjvnTIe05u1oaSM/PPNqNh7plXWumHKeK/jxqBySkO9AaTVBlpVlmOGhM2548j8dzIVMJuN5LNQbnGMUQuaEAHI0rCVxJOKYrImKt9wUbkW9mwjJU01J6A2FFP388OQYp6DkfqvDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MSWcXJ1WR+0Z9F+QQx/UjrQ17iaG/vyXPx3B2YfqCKI=;
 b=gOtIll1oDfVXEbxbYf30j5Uy/oL5OR14M1dKmfAeN4vNXsX4fzSdv/f1jB1cOqNsJCF3AqF4sNIyu4tUH16HQrnHmTQPyCG/whiDunPEOMFHvi7zE0RJ1NlUOsWhJuSj19lrMnlO0KXiklrq999/+8bHg1ywWdN/ll7+E/kuG8PN0VKEPOmvruBPG5FB9OldrSLK0ojjrPy1n1mTK53ErTjkNdDaWf+2gqhkvZEKecJAoFZ7nMaqrkt3ha33iee/roC05IRjkwnCY4A932PVxqsGYo+tLFsRHnP77n21mTSX00AjAEdvYeY8hL5TKatJnuiGpfqLBoRZDgYxwZgxxQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH0PR11MB5491.namprd11.prod.outlook.com (2603:10b6:610:d6::19)
 by MN2PR11MB4600.namprd11.prod.outlook.com (2603:10b6:208:26e::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8293.15; Thu, 26 Dec
 2024 05:27:43 +0000
Received: from CH0PR11MB5491.namprd11.prod.outlook.com
 ([fe80::fc35:d6ce:8908:ef2a]) by CH0PR11MB5491.namprd11.prod.outlook.com
 ([fe80::fc35:d6ce:8908:ef2a%5]) with mapi id 15.20.8293.000; Thu, 26 Dec 2024
 05:27:43 +0000
From: "Ravali, JupallyX" <jupallyx.ravali@intel.com>
To: "i915-ci-infra@lists.freedesktop.org"
 <i915-ci-infra@lists.freedesktop.org>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "Saarinen, Jani" <jani.saarinen@intel.com>
Subject: =?utf-8?B?UkU6IOKclyBpOTE1LkNJLkJBVDogZmFpbHVyZSBmb3IgZHJtL2k5MTUvY210?=
 =?utf-8?Q?g:_Disable_the_CMTG_(rev3)?=
Thread-Topic: =?utf-8?B?4pyXIGk5MTUuQ0kuQkFUOiBmYWlsdXJlIGZvciBkcm0vaTkxNS9jbXRnOiBE?=
 =?utf-8?Q?isable_the_CMTG_(rev3)?=
Thread-Index: AQHbVjU6iKTn+KMu2UK/meCwSvW+/LL4AIBA
Date: Thu, 26 Dec 2024 05:27:43 +0000
Message-ID: <CH0PR11MB5491C8C74EE9E100249B7ADDEF0D2@CH0PR11MB5491.namprd11.prod.outlook.com>
References: <20241224165408.43778-1-gustavo.sousa@intel.com>
 <173506238037.2555413.13055112564182436764@b555e5b46a47>
 <173506641126.1822.9650511823538038999@intel.com>
In-Reply-To: <173506641126.1822.9650511823538038999@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH0PR11MB5491:EE_|MN2PR11MB4600:EE_
x-ms-office365-filtering-correlation-id: 7399ef37-2f0e-4172-e3c4-08dd256e0610
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|10070799003|1800799024|376014|366016|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?V3l2RlRQRGhjN2h4bDdKMnB2aEVDTFNuamJvc2dsbUU5ZGZKcXRZV011cTRH?=
 =?utf-8?B?NGhXMy9yd05pam9HVmZ0eGVlbUpobGZtQnMvNlZFTy83cFJKWWJaZDBmSkhB?=
 =?utf-8?B?cmYwb0pqd3pnUUNTcklySFk4eWV5RnRnNk5seDBmM0RtQVJyTU84ZmFOVFBv?=
 =?utf-8?B?VFBSb0E0MTBOWlJwQlQ3WVAzbmZBd0ppMllWMEkwR0p0aDcvVVJVdjQrQVlk?=
 =?utf-8?B?cnAwQ3pwRzYzbE5uUHZPaXZJVWlGaXNZM2ZRaUlqWUk2Z2IyNDA3SXRaSkJC?=
 =?utf-8?B?YzlpVVMvRHM1RFN2ZVlHMzRUdE5vZE1sb0VnTDkwdjJlT3BmU3JmSXU3S3Rt?=
 =?utf-8?B?VlJaejM4SVR6eWpSZTVkUFNjSXBGWWY2emdTeG4zZlcvZmRrazNBV0xSOVp5?=
 =?utf-8?B?RWZYeVZjM081UHkzRktqTU5TdnRpQ294THpiT3NGc2VwY2RObEFWQnNYWDFI?=
 =?utf-8?B?V1FZNFhyZUZRWjA5eTBQcHc2WnRYakpYT1pOMzZmSURjR29pTmdwRzlwV0Rk?=
 =?utf-8?B?bjV3MnljSS9ObE5OY2YrMTFuY3NzL05PUXhJSGllR3pydU9jTTI1Y1lOZ3Qr?=
 =?utf-8?B?NU5YSFNuNlIxeGIrTnREc1VMRk9LUUw4NjFDcWFRMy9hZGNNbmFKcE5YVGh6?=
 =?utf-8?B?ZUZTN3VYbHl3UDZnTjZVSXp2bHg3TmVsbXRqNjVENnRVbzdWN0hqMGNIdjRq?=
 =?utf-8?B?RGFHSnUxK0VxaDNTamtML2FqZjQ1dXI1bFRDU2sreUVIa2FvWkR3b0JkSGhv?=
 =?utf-8?B?ek9jS2dwWDlncXp4b01vUlV2QUxxd3FaYjlSS3htSnJMNnExM2xva1NDK0Fk?=
 =?utf-8?B?dW85NHpabS9QcmgybXFwRmh0aDdJYWRQME1QMkxTN0oyck9lSG9sM0JPelI1?=
 =?utf-8?B?TU9ubWdFUndaSklib21WVENkYUE1VkhCUGl1UEpTbnVRNjRkRDdwU3YvcWFo?=
 =?utf-8?B?Y2dFTmt1Zzhwc1ZCT3hMdkRjbjFmK2xKWkFEVUZOUEovSVIvcTVpUThDcVN3?=
 =?utf-8?B?RGMxUGNNVEhMOFYyc2JyNTQrY3ZZQVlObjhkWSs4ODJlMkwrakZnUFNFNWJJ?=
 =?utf-8?B?S3pUOHNTQjNiSDVpVlpDMC82WE0xa29OVUlidFgyOUw0biswZmU3bGdnZndP?=
 =?utf-8?B?Q3lVbHEvRnpseXN5THV4cVVzcGZ2VHlBWWg0WmNNclQ2MmhESnJrZEwwOVpG?=
 =?utf-8?B?OWM4WlVseHNjU004VmdNR1FtNVNTK0dJdUQrbDNVbDdVK3BIdnc1dWY3ZmFT?=
 =?utf-8?B?NUsvZTlUZDNjVXliYjNTb0xoZnRXNmdORllGNjdlWlRLNGhQR1I5dWlGUzlM?=
 =?utf-8?B?N0IzaFI4UXBsSi8yc3JrblU1c0hrR24yS0p4UkpQKzcyVTQ3ZlJaWEVicm4z?=
 =?utf-8?B?SHJCUStuaDBDUlNLK0JqSnhiVXUrSkp3S1daeVdKc1hCMFRwL1NGd05KSlhO?=
 =?utf-8?B?cEIzcThvK0hYdnZ3Q2tYV2g3TlNiS3VtSWZIUWxwYzVXc004cXhjZENhSWUx?=
 =?utf-8?B?TzZXclJtTXZ4UHQ5VG94aUFLL254T3V3Sm9rZHMzSVQ2L2NGTWlxRlFOY2hl?=
 =?utf-8?B?U1ZJTTE2UzkrTGlrLy8xaVA4d2F0ZEdwaituNHJ4QTF5L01yUW95NlZESG9w?=
 =?utf-8?B?djJBaXBjMTN6ZS83U1lUejgzUGdYd0ZURmtCTklsdjVEWFdVN2FzVlVTbUNJ?=
 =?utf-8?B?c3p5S0RrSFlsZk8zaDc0YStPYy9lUlliYjBhb2pSbTBVd2gwVzIxM011Mjk4?=
 =?utf-8?B?VjQ0ZFZuTGU2YW12ZTNWQlFjdTFEb2tYRWduUDFQUEhpeDNzY1FoeHRpSGlU?=
 =?utf-8?B?N20zYUlSNmd5V3UyUE1aZUVoejRScGxDdjN5dU5mTy8vOGdRYVFrK1k0V0lT?=
 =?utf-8?B?VlVrN3I5aUNXZkJGRHlWRTE0d1lrSFZMamtNbG1VVDRGTnc9PQ==?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5491.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(1800799024)(376014)(366016)(7053199007)(38070700018);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?L1A3U3JsV2NXQmZ2MW1QMlRsaTdqUHM3SHZxU1JRVmVxWHg2SGZkbmhWaWhQ?=
 =?utf-8?B?ZjRxQjBUMFl4SWNnSE9EbjY0SEM5RHJNeFhtNER0eGx4S2o3VnZXNmozWnJy?=
 =?utf-8?B?cERKTEpZNmEzOVJkd1NzQTdMRkVRQVVPQkRUbmE2T1VCUHU4UzRHcVdtenMv?=
 =?utf-8?B?R1hJN2JxZGh3UUREdzBJZ0VKdGdxUXp5UHQ2N2lPTFlhSzgweTdoaDJJc2Ir?=
 =?utf-8?B?SnBUUlQrNS90Sm45c3EvZVR4cE9OMVkyUDdNRDVtaXdZTXpwWVpXc2d0UDFK?=
 =?utf-8?B?eFl3WWlxUFpDQStROG5QdFhhMVZTSGlMaUJVTVNtYXNuZVZudlhWdGtmeWpJ?=
 =?utf-8?B?a0VNUDBHWXRONzluWUhOdVYwcEs0RVN6cnhnY2tIUHZ5U003eWd0SGR1d294?=
 =?utf-8?B?UFFGZTZKZ09Ibnp0NzcxdVFPMjc3MVdJTDUzb1VzNWYvTWF5c054OFFJd3RF?=
 =?utf-8?B?dUFaZ2k2S0lSdm1jZUJaSlNrU3ZFc3VTT2NGNTh0Wm1GYWZ4LzBIWmk4d1Rw?=
 =?utf-8?B?bzB1QjQxaU1tTHYvNHVlbG1vMG1aVEt2bUxmMzN6Tkx2VlliejBudzVOR0V0?=
 =?utf-8?B?am43NG94M2hldm9YY2YxdlM4S281NWRhYWNucDZUOE1PNlpZMlVLaGtQMWhk?=
 =?utf-8?B?dmF0dHdLU2JTQlFQUWtLcjdzS002TjdlYXJoVjQyWk1mY1Q0TXA1ZCtXVjh5?=
 =?utf-8?B?Vmh0NXBhTDBWU3pRYTFvWnpPV3Qyd241b09RalQ3elRTcXlSNnJ6dkFNNUhK?=
 =?utf-8?B?ZVVhSHRvazZQT0k5UENIdFZERTZUQVBnbTFKdzdhN0tuamk5cjlmUjFkdFFE?=
 =?utf-8?B?YUxucGZyT1ZwcXVsZnB1M1ZINCtmMDBUYkdBdnJEb1RDOTBXVHZnY2kwRHlo?=
 =?utf-8?B?bHA4VHV2dHkxSStVSzJvUytqRmdpQzcvMi9YZDlrRnJFS0pPdWJ4QjFkSUpN?=
 =?utf-8?B?dXNOR1B3T0VXMmxsZjcxUmxyWFdsZkJxdnBEdVhTbDBPc09leG1acDgzRUIr?=
 =?utf-8?B?RTNiNC93ZmNUcTR0MDJCQTllNnRQNGFKcWJvQUk5S1J1emYrR2pJM20rYVYr?=
 =?utf-8?B?RklMR3ZoTS9STGhFdStWaFVGMTFkbWt1clVtd0hjMnBNeDNhUUNWSlBKdmVY?=
 =?utf-8?B?dEg2cnN4dDZaSVR5THBTMzhkdGN5L3BBb0NlUjB5UGg4RStiRU5ScEE3aFhu?=
 =?utf-8?B?NERwM0VUTDdMZEVxZ3ZldHZBNStOR1lselQ5RXZkc256Q3FSbllKVEtoSWtj?=
 =?utf-8?B?MDhUbTkrb2FLeHlsN2oya1F3QVFIb0pBUE1jUW1EYnJJODJ5Tks4TngyNkUz?=
 =?utf-8?B?anVSMzQzc0ZqdEJ4L0NSS08vUVdpMlhVcTBxL2VlTVNTeHVoMjZ6WTRobytR?=
 =?utf-8?B?c1BhbzBmVFlmdjRaOWFIQVNESEFBaHdQdVdiQXRtWnZ5b3c0N0xIOEZ1RnZj?=
 =?utf-8?B?d0Y3YnlWZEUxSzlxU2ZFNHpySUU2VisySzNnb0xqTVN2S1BsWENvMjdhSkt3?=
 =?utf-8?B?RU92d0p6QUMxZUF5UEJoTnJxTzVNSWw0cnRVSzRmRm1UYjVScmJsR2hjL0My?=
 =?utf-8?B?ZldJUjE2NS9KVTd4RzlLV2dGSHJGdjZQQ1grMFNreWhrWnhqT0Vxa0JxVTgv?=
 =?utf-8?B?ODI4akliN2w1VW9hQVUzZXppZ0JnWkdiNFl3cmtHamc1QTNubkdWa0FvK2h6?=
 =?utf-8?B?MkFpbTEwZGpVSk9nOUduRVgvMitpOXFuZHlGWTFNV3RLZ0lrVjJCMHR2dUwx?=
 =?utf-8?B?ajJjb2VETTgwQm56THdLcXBDTGIvQlZ6MWRrL2Y3WjZpajNhcUNiclQxVVR3?=
 =?utf-8?B?VUc5OFJOWXlZVnpvbUZmM0l1bk96VzBFdFFneGo0a2d3MXFrK0xlbnZERmRE?=
 =?utf-8?B?aUszeXg4OURCOHF5dEZxNXZETVl3VTlsU3RKbUc3WC9pMzVoYTN1UWh5R1R4?=
 =?utf-8?B?Ujc5NDk3ajkvL01rWk4wUTdzQlVJYzJYNjRPWVVxMXVFOEdqYTJmSTNEYmhx?=
 =?utf-8?B?NVI4djlKeWgzcmYyUkRObzBqc2lHZzB1K29lTkMybUMzVVFzZXRIQWdpaFY1?=
 =?utf-8?B?QldBTTAvQnVmUk9EbDNwMFFwVmN3ck5ZaUZnNk9KQ1JINWtnOVRoUk9qZm5v?=
 =?utf-8?B?eDBpMTBTdEVJd0tKN2ZVRXcxOEtPWXBNaW1ZOFJEMytiYTFHcDNvV3VDZDdn?=
 =?utf-8?Q?XVlYcRfi0w3FXPnxVCAR9pjcUV4FFnHz8BT8lfWeIDTj?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5491.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7399ef37-2f0e-4172-e3c4-08dd256e0610
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Dec 2024 05:27:43.4489 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: bJTOF+SVggllxp/XQS0jLR6bgDXm/cJl2xSG2T1uJBEh4BqjSafMRRWyd275/PcyOg76upwBNIHXT0W1izVJE6WZgvr0HAi2vK/jrohD1gc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4600
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

SGksDQoNCmh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvMTQyOTQ3Ly0g
UmUtcmVwb3J0ZWQuDQogDQppOTE1LkNJLkJBVCAtIFJlLXJlcG9ydGVkLg0KIA0KVGhhbmtzLA0K
UmF2YWxpLg0KDQotLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KRnJvbTogSTkxNS1jaS1pbmZy
YSA8aTkxNS1jaS1pbmZyYS1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxm
IE9mIEd1c3Rhdm8gU291c2ENClNlbnQ6IDI1IERlY2VtYmVyIDIwMjQgMDA6MjQNClRvOiBJOTE1
LWNpLWluZnJhQGxpc3RzLmZyZWVkZXNrdG9wLm9yZzsgaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZw0KQ2M6IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmc7IFNhYXJpbmVuLCBK
YW5pIDxqYW5pLnNhYXJpbmVuQGludGVsLmNvbT4NClN1YmplY3Q6IFJlOiDinJcgaTkxNS5DSS5C
QVQ6IGZhaWx1cmUgZm9yIGRybS9pOTE1L2NtdGc6IERpc2FibGUgdGhlIENNVEcgKHJldjMpDQoN
ClF1b3RpbmcgUGF0Y2h3b3JrICgyMDI0LTEyLTI0IDE0OjQ2OjIwLTAzOjAwKQ0KPj09IFNlcmll
cyBEZXRhaWxzID09DQo+DQo+U2VyaWVzOiBkcm0vaTkxNS9jbXRnOiBEaXNhYmxlIHRoZSBDTVRH
IChyZXYzKQ0KPlVSTCAgIDogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmll
cy8xNDI5NDcvDQo+U3RhdGUgOiBmYWlsdXJlDQo+DQo+PT0gU3VtbWFyeSA9PQ0KPg0KPkNJIEJ1
ZyBMb2cgLSBjaGFuZ2VzIGZyb20gQ0lfRFJNXzE1ODkyIC0+IFBhdGNod29ya18xNDI5NDd2MyAN
Cj49PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09DQo+
DQo+U3VtbWFyeQ0KPi0tLS0tLS0NCj4NCj4gICoqRkFJTFVSRSoqDQo+DQo+ICBTZXJpb3VzIHVu
a25vd24gY2hhbmdlcyBjb21pbmcgd2l0aCBQYXRjaHdvcmtfMTQyOTQ3djMgYWJzb2x1dGVseSAN
Cj4gbmVlZCB0byBiZSAgdmVyaWZpZWQgbWFudWFsbHkuDQo+ICANCj4gIElmIHlvdSB0aGluayB0
aGUgcmVwb3J0ZWQgY2hhbmdlcyBoYXZlIG5vdGhpbmcgdG8gZG8gd2l0aCB0aGUgY2hhbmdlcyAg
DQo+IGludHJvZHVjZWQgaW4gUGF0Y2h3b3JrXzE0Mjk0N3YzLCBwbGVhc2Ugbm90aWZ5IHlvdXIg
YnVnIHRlYW0gDQo+IChJOTE1LWNpLWluZnJhQGxpc3RzLmZyZWVkZXNrdG9wLm9yZykgdG8gYWxs
b3cgdGhlbSAgdG8gZG9jdW1lbnQgdGhpcyBuZXcgZmFpbHVyZSBtb2RlLCB3aGljaCB3aWxsIHJl
ZHVjZSBmYWxzZSBwb3NpdGl2ZXMgaW4gQ0kuDQo+DQo+ICBFeHRlcm5hbCBVUkw6IA0KPiBodHRw
czovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDI5NDd2My9p
bmRleC5odG1sDQo+DQo+UGFydGljaXBhdGluZyBob3N0cyAoNDEgLT4gNDApDQo+LS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tDQo+DQo+ICBNaXNzaW5nICAgICgxKTogZmktc25iLTI1MjBt
IA0KPg0KPlBvc3NpYmxlIG5ldyBpc3N1ZXMNCj4tLS0tLS0tLS0tLS0tLS0tLS0tDQo+DQo+ICBI
ZXJlIGFyZSB0aGUgdW5rbm93biBjaGFuZ2VzIHRoYXQgbWF5IGhhdmUgYmVlbiBpbnRyb2R1Y2Vk
IGluIFBhdGNod29ya18xNDI5NDd2MzoNCj4NCj4jIyMgSUdUIGNoYW5nZXMgIyMjDQo+DQo+IyMj
IyBQb3NzaWJsZSByZWdyZXNzaW9ucyAjIyMjDQo+DQo+ICAqIGlndEBpOTE1X3BtX3JwbUBtb2R1
bGUtcmVsb2FkOg0KPiAgICAtIGJhdC1kZzEtNzogICAgICAgICAgW1BBU1NdWzFdIC0+IFtGQUlM
XVsyXQ0KPiAgIFsxXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9D
SV9EUk1fMTU4OTIvYmF0LWRnMS03L2lndEBpOTE1X3BtX3JwbUBtb2R1bGUtcmVsb2FkLmh0bWwN
Cj4gICBbMl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3
b3JrXzE0Mjk0N3YzL2JhdC1kZzEtNy9pZ3RAaTkxNV9wbV9ycG1AbW9kdWxlLXJlbG9hZC5odG1s
DQo+ICAgIC0gYmF0LXJwbHMtNDogICAgICAgICBbUEFTU11bM10gLT4gW0ZBSUxdWzRdDQo+ICAg
WzNdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV8xNTg5
Mi9iYXQtcnBscy00L2lndEBpOTE1X3BtX3JwbUBtb2R1bGUtcmVsb2FkLmh0bWwNCj4gICBbNF06
IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0Mjk0
N3YzL2JhdC1ycGxzLTQvaWd0QGk5MTVfcG1fcnBtQG1vZHVsZS1yZWxvYWQuaHRtbA0KPiAgICAt
IGZpLXRnbC0xMTE1ZzQ6ICAgICAgW1BBU1NdWzVdIC0+IFtGQUlMXVs2XQ0KPiAgIFs1XTogaHR0
cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fMTU4OTIvZmktdGds
LTExMTVnNC9pZ3RAaTkxNV9wbV9ycG1AbW9kdWxlLXJlbG9hZC5odG1sDQo+ICAgWzZdOiANCj4g
aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQyOTQ3
djMvZmktdGdsLTExMQ0KPiA1ZzQvaWd0QGk5MTVfcG1fcnBtQG1vZHVsZS1yZWxvYWQuaHRtbA0K
DQpJIGRvbid0IGJlbGlldmUgdGhpcyBpcyByZWxhdGVkIHRvIHRoZSBzZXJpZXMuIFBsZWFzZSwg
cmUtcmVwb3J0Lg0KDQorSmFuaSwNCg0KVGhlIHNpZ25hdHVyZSBpcyB2ZXJ5IHNpbWlsYXIgdG8g
d2hhdCB3YXMgb25jZSBjYXB0dXJlZCBieSBpOTE1IzEyOTAzLCB3aGljaCB3YXMgcmVjZW50bHkg
Y2xvc2VkLg0KDQpbaTkxNSMxMjkwM106IGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9k
cm0vaTkxNS9rZXJuZWwvLS9pc3N1ZXMvMTI5MDMNCg0KLS0NCkd1c3Rhdm8gU291c2ENCg0KPg0K
PiAgDQo+S25vd24gaXNzdWVzDQo+LS0tLS0tLS0tLS0tDQo+DQo+ICBIZXJlIGFyZSB0aGUgY2hh
bmdlcyBmb3VuZCBpbiBQYXRjaHdvcmtfMTQyOTQ3djMgdGhhdCBjb21lIGZyb20ga25vd24gaXNz
dWVzOg0KPg0KPiMjIyBJR1QgY2hhbmdlcyAjIyMNCj4NCj4jIyMjIElzc3VlcyBoaXQgIyMjIw0K
Pg0KPiAgKiBpZ3RAZG1hYnVmQGFsbC10ZXN0czoNCj4gICAgLSBmaS1wbnYtZDUxMDogICAgICAg
IE5PVFJVTiAtPiBbSU5DT01QTEVURV1bN10gKFtpOTE1IzEyOTA0XSkgKzEgb3RoZXIgdGVzdCBp
bmNvbXBsZXRlDQo+ICAgWzddOiANCj4gaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUv
ZHJtLXRpcC9QYXRjaHdvcmtfMTQyOTQ3djMvZmktcG52LWQ1MQ0KPiAwL2lndEBkbWFidWZAYWxs
LXRlc3RzLmh0bWwNCj4NCj4gICogaWd0QGZiZGV2QGluZm86DQo+ICAgIC0gZmktYnN3LW5pY2s6
ICAgICAgICBOT1RSVU4gLT4gW1NLSVBdWzhdIChbaTkxNSMxODQ5XSkNCj4gICBbOF06IA0KPiBo
dHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDI5NDd2
My9maS1ic3ctbmljDQo+IGsvaWd0QGZiZGV2QGluZm8uaHRtbA0KPg0KPiAgKiBpZ3RAZ2VtX2xt
ZW1fc3dhcHBpbmdAcGFyYWxsZWwtcmFuZG9tLWVuZ2luZXM6DQo+ICAgIC0gZmktYnN3LW5pY2s6
ICAgICAgICBOT1RSVU4gLT4gW1NLSVBdWzldICs0MiBvdGhlciB0ZXN0cyBza2lwDQo+ICAgWzld
OiANCj4gaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtf
MTQyOTQ3djMvZmktYnN3LW5pYw0KPiBrL2lndEBnZW1fbG1lbV9zd2FwcGluZ0BwYXJhbGxlbC1y
YW5kb20tZW5naW5lcy5odG1sDQo+DQo+ICAqIGlndEBpOTE1X3NlbGZ0ZXN0QGxpdmU6DQo+ICAg
IC0gYmF0LW10bHAtODogICAgICAgICBbUEFTU11bMTBdIC0+IFtETUVTRy1GQUlMXVsxMV0gKFtp
OTE1IzEzMzkzXSkgKzEgb3RoZXIgdGVzdCBkbWVzZy1mYWlsDQo+ICAgWzEwXTogaHR0cHM6Ly9p
bnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fMTU4OTIvYmF0LW10bHAtOC9p
Z3RAaTkxNV9zZWxmdGVzdEBsaXZlLmh0bWwNCj4gICBbMTFdOiBodHRwczovL2ludGVsLWdmeC1j
aS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDI5NDd2My9iYXQtbXRscC04L2lndEBp
OTE1X3NlbGZ0ZXN0QGxpdmUuaHRtbA0KPiAgICAtIGJhdC10d2wtMjogICAgICAgICAgTk9UUlVO
IC0+IFtBQk9SVF1bMTJdIChbaTkxNSMxMjkxOV0gLyBbaTkxNSMxMzM5N10pDQo+ICAgWzEyXTog
DQo+IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0
Mjk0N3YzL2JhdC10d2wtMi8NCj4gaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZS5odG1sDQo+DQo+ICAq
IGlndEBpOTE1X3NlbGZ0ZXN0QGxpdmVAZ3RfbW9jczoNCj4gICAgLSBiYXQtdHdsLTI6ICAgICAg
ICAgIE5PVFJVTiAtPiBbQUJPUlRdWzEzXSAoW2k5MTUjMTI5MTldKQ0KPiAgIFsxM106IA0KPiBo
dHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDI5NDd2
My9iYXQtdHdsLTIvDQo+IGlndEBpOTE1X3NlbGZ0ZXN0QGxpdmVAZ3RfbW9jcy5odG1sDQo+DQo+
ICAqIGlndEBrbXNfcGlwZV9jcmNfYmFzaWNAbm9uYmxvY2tpbmctY3JjLWZyYW1lLXNlcXVlbmNl
Og0KPiAgICAtIGJhdC1kZzItMTE6ICAgICAgICAgW1BBU1NdWzE0XSAtPiBbU0tJUF1bMTVdIChb
aTkxNSM5MTk3XSkgKzMgb3RoZXIgdGVzdHMgc2tpcA0KPiAgIFsxNF06IGh0dHBzOi8vaW50ZWwt
Z2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzE1ODkyL2JhdC1kZzItMTEvaWd0QGtt
c19waXBlX2NyY19iYXNpY0Bub25ibG9ja2luZy1jcmMtZnJhbWUtc2VxdWVuY2UuaHRtbA0KPiAg
IFsxNV06IA0KPiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNo
d29ya18xNDI5NDd2My9iYXQtZGcyLTExDQo+IC9pZ3RAa21zX3BpcGVfY3JjX2Jhc2ljQG5vbmJs
b2NraW5nLWNyYy1mcmFtZS1zZXF1ZW5jZS5odG1sDQo+DQo+ICAqIGlndEBrbXNfcHNyQHBzci1w
cmltYXJ5LW1tYXAtZ3R0Og0KPiAgICAtIGZpLXBudi1kNTEwOiAgICAgICAgTk9UUlVOIC0+IFtT
S0lQXVsxNl0gKzMxIG90aGVyIHRlc3RzIHNraXANCj4gICBbMTZdOiANCj4gaHR0cHM6Ly9pbnRl
bC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQyOTQ3djMvZmktcG52LWQ1
MQ0KPiAwL2lndEBrbXNfcHNyQHBzci1wcmltYXJ5LW1tYXAtZ3R0Lmh0bWwNCj4NCj4gIA0KPiMj
IyMgUG9zc2libGUgZml4ZXMgIyMjIw0KPg0KPiAgKiBpZ3RAY29yZV9ob3R1bnBsdWdAdW5iaW5k
LXJlYmluZDoNCj4gICAgLSBiYXQtcnBscy00OiAgICAgICAgIFtETUVTRy1XQVJOXVsxN10gLT4g
W1BBU1NdWzE4XQ0KPiAgIFsxN106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2Ry
bS10aXAvQ0lfRFJNXzE1ODkyL2JhdC1ycGxzLTQvaWd0QGNvcmVfaG90dW5wbHVnQHVuYmluZC1y
ZWJpbmQuaHRtbA0KPiAgIFsxOF06IA0KPiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJl
ZS9kcm0tdGlwL1BhdGNod29ya18xNDI5NDd2My9iYXQtcnBscy00DQo+IC9pZ3RAY29yZV9ob3R1
bnBsdWdAdW5iaW5kLXJlYmluZC5odG1sDQo+DQo+ICAqIGlndEBpOTE1X3NlbGZ0ZXN0QGxpdmU6
DQo+ICAgIC0gYmF0LWFkbHAtOTogICAgICAgICBbQUJPUlRdWzE5XSAtPiBbUEFTU11bMjBdICsx
IG90aGVyIHRlc3QgcGFzcw0KPiAgIFsxOV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90
cmVlL2RybS10aXAvQ0lfRFJNXzE1ODkyL2JhdC1hZGxwLTkvaWd0QGk5MTVfc2VsZnRlc3RAbGl2
ZS5odG1sDQo+ICAgWzIwXTogDQo+IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2Ry
bS10aXAvUGF0Y2h3b3JrXzE0Mjk0N3YzL2JhdC1hZGxwLTkNCj4gL2lndEBpOTE1X3NlbGZ0ZXN0
QGxpdmUuaHRtbA0KPg0KPiAgKiBpZ3RAaTkxNV9zZWxmdGVzdEBsaXZlQHdvcmthcm91bmRzOg0K
PiAgICAtIGJhdC1tdGxwLTY6ICAgICAgICAgW0RNRVNHLUZBSUxdWzIxXSAoW2k5MTUjMTMzOTNd
KSAtPiBbUEFTU11bMjJdICsxIG90aGVyIHRlc3QgcGFzcw0KPiAgIFsyMV06IGh0dHBzOi8vaW50
ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzE1ODkyL2JhdC1tdGxwLTYvaWd0
QGk5MTVfc2VsZnRlc3RAbGl2ZUB3b3JrYXJvdW5kcy5odG1sDQo+ICAgWzIyXTogDQo+IGh0dHBz
Oi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0Mjk0N3YzL2Jh
dC1tdGxwLTYNCj4gL2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVAd29ya2Fyb3VuZHMuaHRtbA0KPg0K
PiAgDQo+IyMjIyBXYXJuaW5ncyAjIyMjDQo+DQo+ICAqIGlndEBnZW1fZXhlY19ndHRmaWxsQGJh
c2ljOg0KPiAgICAtIGZpLXBudi1kNTEwOiAgICAgICAgW0FCT1JUXVsyM10gKFtpOTE1IzEzMTY5
XSkgLT4gW1NLSVBdWzI0XQ0KPiAgIFsyM106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90
cmVlL2RybS10aXAvQ0lfRFJNXzE1ODkyL2ZpLXBudi1kNTEwL2lndEBnZW1fZXhlY19ndHRmaWxs
QGJhc2ljLmh0bWwNCj4gICBbMjRdOiANCj4gaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3Ry
ZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQyOTQ3djMvZmktcG52LWQ1MQ0KPiAwL2lndEBnZW1fZXhl
Y19ndHRmaWxsQGJhc2ljLmh0bWwNCj4NCj4gIA0KPiAgW2k5MTUjMTI5MDRdOiANCj4gaHR0cHM6
Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pOTE1L2tlcm5lbC8tL2lzc3Vlcy8xMjkwNA0K
PiAgW2k5MTUjMTI5MTldOiANCj4gaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9p
OTE1L2tlcm5lbC8tL2lzc3Vlcy8xMjkxOQ0KPiAgW2k5MTUjMTMxNjldOiANCj4gaHR0cHM6Ly9n
aXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pOTE1L2tlcm5lbC8tL2lzc3Vlcy8xMzE2OQ0KPiAg
W2k5MTUjMTMzOTNdOiANCj4gaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pOTE1
L2tlcm5lbC8tL2lzc3Vlcy8xMzM5Mw0KPiAgW2k5MTUjMTMzOTddOiANCj4gaHR0cHM6Ly9naXRs
YWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pOTE1L2tlcm5lbC8tL2lzc3Vlcy8xMzM5Nw0KPiAgW2k5
MTUjMTg0OV06IA0KPiBodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvZHJtL2k5MTUva2Vy
bmVsLy0vaXNzdWVzLzE4NDkNCj4gIFtpOTE1IzkxOTddOiANCj4gaHR0cHM6Ly9naXRsYWIuZnJl
ZWRlc2t0b3Aub3JnL2RybS9pOTE1L2tlcm5lbC8tL2lzc3Vlcy85MTk3DQo+DQo+DQo+QnVpbGQg
Y2hhbmdlcw0KPi0tLS0tLS0tLS0tLS0NCj4NCj4gICogTGludXg6IENJX0RSTV8xNTg5MiAtPiBQ
YXRjaHdvcmtfMTQyOTQ3djMNCj4NCj4gIENJLTIwMTkwNTI5OiAyMDE5MDUyOQ0KPiAgQ0lfRFJN
XzE1ODkyOiAwOGJkNTkwOTM1YTUyNThmZmQ3OTM1NWM1OWFkZmZkNzJmYjJjNjQyIEAgDQo+IGdp
dDovL2Fub25naXQuZnJlZWRlc2t0b3Aub3JnL2dmeC1jaS9saW51eA0KPiAgSUdUXzgxNzI6IDkx
MTI1ODE2MTlhYTE5OGZhMDMwNDFkNWM3ZTE4ZTAyZjQyYWMwMGYgQCANCj4gaHR0cHM6Ly9naXRs
YWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pZ3QtZ3B1LXRvb2xzLmdpdA0KPiAgUGF0Y2h3b3JrXzE0
Mjk0N3YzOiAwOGJkNTkwOTM1YTUyNThmZmQ3OTM1NWM1OWFkZmZkNzJmYjJjNjQyIEAgDQo+IGdp
dDovL2Fub25naXQuZnJlZWRlc2t0b3Aub3JnL2dmeC1jaS9saW51eA0KPg0KPj09IExvZ3MgPT0N
Cj4NCj5Gb3IgbW9yZSBkZXRhaWxzIHNlZTogDQo+aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3Jn
L3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQyOTQ3djMvaW5kZXguaHRtbA0K
