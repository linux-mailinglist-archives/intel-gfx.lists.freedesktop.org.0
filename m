Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 21BE69AA2CC
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Oct 2024 15:12:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D856A10E1D2;
	Tue, 22 Oct 2024 13:12:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JVvMgp5Q";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4C44A10E1D2
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Oct 2024 13:12:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729602729; x=1761138729;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=J077pZ/PxbNwqrClu8UE8KLmyBTHXFst+lDoQlqpPu4=;
 b=JVvMgp5QzzKx8VPictjXOoDm+OuMFOWvUHaJTa6T+nJmK21Fhbn3801S
 MmIsSIlYOlDpRvsnyNZv7MxNo+ysmMVieZUDIdhv8f/4K1XB0XES4wB96
 ws8fHlw0LAPBQhB39i9A5RpqlohsQOSgM0tzxNMiHZP9536Z5vLc3cK0G
 BlOj52VP472yAbwEl9ZGByOub9/TVrdo9k3RZkMRatHEo9TIs2EPN8btP
 IIr0D8pYxBEbHlwdDEeNfITSo9D5ZELytDEq54a5J4lvKjgkxGoxy98FP
 tiOWgF3Qu+sv16SIHEdGp83Tqz7xZIqzsHnl94ETb+a5HxtWNc1TeOP6X Q==;
X-CSE-ConnectionGUID: PhIvgGqmRH2gOOZv0SHgIg==
X-CSE-MsgGUID: OdWEKnyZSPS/WBItvUy7Kg==
X-IronPort-AV: E=McAfee;i="6700,10204,11233"; a="16763116"
X-IronPort-AV: E=Sophos;i="6.11,223,1725346800"; d="scan'208";a="16763116"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2024 06:12:09 -0700
X-CSE-ConnectionGUID: sqaxJAf1QrOqXlbeoGc0oA==
X-CSE-MsgGUID: os6U8dXKQVOgffTO37imaQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,223,1725346800"; d="scan'208";a="79874041"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Oct 2024 06:12:08 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 22 Oct 2024 06:12:08 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 22 Oct 2024 06:12:08 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 22 Oct 2024 06:12:08 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.177)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 22 Oct 2024 06:12:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=IiRshcnJWOYUTh6IbagtI20nZ5JQH55vzoacbd1iGrU/EuIHmdpLND4AjIsjDMQnwI981zyNhJJzTkqt5FRti8x1fClZguSmJHXRTlnqTzXiz1teggSxr7q1/PLM41sozCPD5p0qt9vD5pkjBXPSD06D7wGgdCDzsdj9WOtqxCcW/GOIloCV5cljD73OKqlR7nrDYsCyYHZuGXaiKZ8nWV3JezEHNfg9XOBOphwwDZePghoV64n6p5xeYGOGkjbtlNGDGUOqgKgIvq1Eg2J87eTz397JX+cvhrx8asyPe50iboWYsoxWOuYzZHXCcP8LkGFFmoyMYGJHNRHjF0BMkA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gkUH+jPxh856QbIXhH7jDW0ejjJDJcx9uQzqEAdu/no=;
 b=y7sikqAn0/ktc+gpQ66ivto2JhdUHeBKvHeJ5wz1+iuF1uXPnjPIPef5RJyXzg2gR7YWB448toeFw1jn1/iNIwSLb/IZPNnLaolzncMwJ0KZDxwUAiccfRTrn+y/IyWi1trNV8hSfa1kDR49lHwG9p1Js00CGz4rfnybjFWyoPvrpBVUbtbgZlkqjgbYbs12FUKu1FijK3BkQLw9RkcaZ1AuoVJpwCcipVMphL/qFjp9R0wn0Mf1jOIb5JHR4AZPKSJ+BmkC72UndHDoT+KoA3/2CDH5Po9DqwNtNeAOOgVgiEko63fit3KXcQwpPwCoixFbYdN4+NRBrLrC6J87ug==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN9PR11MB5530.namprd11.prod.outlook.com (2603:10b6:408:103::8)
 by SA3PR11MB7977.namprd11.prod.outlook.com (2603:10b6:806:2f3::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8069.28; Tue, 22 Oct
 2024 13:12:05 +0000
Received: from BN9PR11MB5530.namprd11.prod.outlook.com
 ([fe80::13bd:eb49:2046:32a9]) by BN9PR11MB5530.namprd11.prod.outlook.com
 ([fe80::13bd:eb49:2046:32a9%7]) with mapi id 15.20.8069.027; Tue, 22 Oct 2024
 13:12:05 +0000
Message-ID: <ef992052-ad90-42d2-ac79-930308df6dbc@intel.com>
Date: Tue, 22 Oct 2024 18:41:57 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 4/4] drm/i915/dg2: Implement Wa_14022698537
To: Raag Jadav <raag.jadav@intel.com>, <jani.nikula@linux.intel.com>,
 <joonas.lahtinen@linux.intel.com>, <rodrigo.vivi@intel.com>,
 <matthew.d.roper@intel.com>, <andi.shyti@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <anshuman.gupta@intel.com>,
 <riana.tauro@intel.com>
References: <20241011103250.1035316-1-raag.jadav@intel.com>
 <20241011103250.1035316-5-raag.jadav@intel.com>
Content-Language: en-US
From: "Nilawar, Badal" <badal.nilawar@intel.com>
In-Reply-To: <20241011103250.1035316-5-raag.jadav@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA0PR01CA0098.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:af::8) To BN9PR11MB5530.namprd11.prod.outlook.com
 (2603:10b6:408:103::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN9PR11MB5530:EE_|SA3PR11MB7977:EE_
X-MS-Office365-Filtering-Correlation-Id: 9b3b726c-fe1e-4bdb-22d3-08dcf29b1fd4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?cWtVdVVsM0F2SzRqRmxjSDV3akpFRUJjMHlDbDVEWVRrbk41N2gvRXN1QXVW?=
 =?utf-8?B?b3Fzb2xKM0lVaGZFM21IeEFSeTVGUjUxeHJ0bVNybmdkeFR6VDdDNEpGY0tM?=
 =?utf-8?B?WE9nMkQ0T1BKWnptZnAzTXZvZmoxc1BJMHFXYURKNFB5OWdyRE5NT0RCOFRV?=
 =?utf-8?B?elBuQlRJQjJVUkMyRkVEdUpLYzAzbFk3MEMwcWM3U0VJUnVMeXU3RS9xR0Zz?=
 =?utf-8?B?TGZDRTcwZ2dGMDVkOGF3S2haUmdpdllKR0Q3SGd4bTFpRk5icFZtMFZqVVJx?=
 =?utf-8?B?a1U4c0JOb0FPY0JFSnhuTjZRT1Q5eG1ZbTBrQWNhRkZHaGdxdFN3SHRBWHNO?=
 =?utf-8?B?Tko0VHdXRTFBc3BSaXBRTWpVdnBmTk9BK1MrTk84eW9UdSswa3g1ZTFZZHEr?=
 =?utf-8?B?cVRTQlJwWGJPNlNyTE1xTENza0RESlhRUUlPcWMxd3c3K0VrSk5oSDJ4bU56?=
 =?utf-8?B?eDFlZ3cxZngwTFdLZTZDbHpLNjJLc0hKRjNyRzdmTUlmdUI0RllNSHcwemxn?=
 =?utf-8?B?NnQxd3IvSUZLZXJCSmo3WXEwejNjMXJGcUpVc0VUZ1lJUzMzT3lYclVuRkZy?=
 =?utf-8?B?cit1RDlSdUYyUGhHVVQzZk1VWWdUWndhK0xxemRmcmxrYk12RWZBNDZnSzky?=
 =?utf-8?B?RVJEbjRja2JEM0NwbEYrNzRqZHloRkVyS3B4OUtDK3FNbVM4S0lQR2FjY1Vy?=
 =?utf-8?B?QW10b2p2RWs5S1N4eDNPZFpDZGVuYzBUU0lBWG1NenYzcXRRV200YTlzbFp4?=
 =?utf-8?B?N2NEaXl6ZjBsSHFYMFFacWRxL3AwYThlN1FiWkZZcUZ0TEJ5cHIySW9jZ0Mv?=
 =?utf-8?B?cHNsMFFaTjhvTFhLVmoveGF1eU5ERUVmQTdIK2E4dUsxY05GT1ViTHlHZ2c2?=
 =?utf-8?B?ZUpWU1BvdWVPcTlIeWxjVHlRdEZrcHlXdllxK2xySVpiMTlhaWQzVnU1Uy9W?=
 =?utf-8?B?RmVxZTdNRXBwdnZyLzFhdmluZFlIeWM5OEU2V3dzMVQ2YVZOL0lZQ054Uklq?=
 =?utf-8?B?amUwTGdBSEF6RFUyazdxdldOeCs0K0JtZ2NQT2VpN0dvaHVqekNlTEt5R0FJ?=
 =?utf-8?B?Nm15Y0pQTVFCZ0c0OEx6NHBKbldwaWhCc3o1MHlLWHBEV2ZVQzNGQUoyS2dJ?=
 =?utf-8?B?WWY0dDlYVGdCSFArSEZueHVFVktIMG9jcEl6K2xWOFpRR215cnlqOVhQcDFN?=
 =?utf-8?B?Tm4yR2JYYlpVZnpxejh2VTNlQXhObldWdTRIeUViTE9NNEZFY1pROTJEWnJk?=
 =?utf-8?B?Qnd1Z1gzMDc4UThyWm5zSDBSVUd0T2g3ckxOOGcwWm9JWDl0aWNpaFJEMDlZ?=
 =?utf-8?B?cVd4N3dkc0YwQ29qVHp6R0hxaGZqNzAxbHNXSm04bEV1M3gwUzNxWEVqaXBh?=
 =?utf-8?B?aGRvZ2xyWndYLzgwTGFNOVRpdVl4S2R3RGNTa2hFS1IydWZnaEtOOFB3cWlh?=
 =?utf-8?B?SHg0bkFvclRWQTJWT0xVUitSY29DMWJBRjR5LzF4b2xGWUZTTjY3bXd6LzJa?=
 =?utf-8?B?ZUxiS05LeU5SSXE4MU13YnRtZ2F1eng2dG52SENaSWxYaEFjU3ZDZWJDSFVt?=
 =?utf-8?B?WHI4bTNxaVgrQWVrakVxQVBTYkovbDNJT2ViUzNFa0Z5SkVwT0JVMHNwVkhG?=
 =?utf-8?B?S08zckxzeUk1cnM5RGFwME83dVA1Uno5UzR2L1Y3ckkrQWdBNS8rZ1doY28v?=
 =?utf-8?B?Q2FlaUtTUXR5RGFrVTV1MHlhajNJbGhvMEY2VmF6MTIxTXN0R2Z0ejFUY2l1?=
 =?utf-8?Q?7SebNDgpMlCROyucqMhOXzFFIsVNsvVBDtVe7lR?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN9PR11MB5530.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WE9PK21ibUFad01lWE9ockRkTUdNQURab29BdGlKL0NJdzc3Y0F2RFZwT3hU?=
 =?utf-8?B?ejg3cWMreGJ3cmhoUlJLM1JCdTN3bHVRcFlkRFl2dHhhbjNEeEJHd0twS2l6?=
 =?utf-8?B?eDNsN0s1djNIM2xmRHMzNFlxTHBxdUdGRWlKRWw1aEh1SHpITTZFcWVNeFU4?=
 =?utf-8?B?TzgzY3BRWk02K3ZFQ0JhWkJzQjR0RjBsVmsxSFZPMzgzd2FWTlFWUnMyM0NT?=
 =?utf-8?B?UGlXa3NWcElzakd6aUxzd3JjRjVqa0w1ZlFvaVE5Y1JlTXJ4Rk8vbSsvWmg1?=
 =?utf-8?B?NUVDRmJBUUVta3RYVEpSWmt5eGsxdUNKZEtHUVN6bHY0UmdqWDMxN29Kb205?=
 =?utf-8?B?QW9tcCt3ZGQ3amtoWEJibmlpZWhETHdGOXhyVWt3ZG1iNnhVZmFLczVoWFIv?=
 =?utf-8?B?RHBZZlFuZjB5SC94Ri85cFFwelVaazFvQjFobmMzSFBwTldkTm5PN2JEVzQy?=
 =?utf-8?B?RkxmWnN6clhPd3NDQ0l2ZFJlWG1SbnFuRkhEVDVzUWFpeGVQODdOaXV4TXVB?=
 =?utf-8?B?cFVmcFo3Yk5qaVNITUtkZ08way9tVmF2eW5WanV5Y1J6OENwUHFLM0o1QjBP?=
 =?utf-8?B?NktJYm5Zak5Gc3pmbVIrK3VMQjcyUVBNb0Q2WG9BQkdGYTJoQ1dMV2ZXcVNO?=
 =?utf-8?B?QnJvYXF6Rk55cThuTVF5c2JlQWVJRmQ4MTJSZDVWMGpNK1VhbGlLSWJZQm5h?=
 =?utf-8?B?QmhWSXRHcXBadWlraTVRLzFCQ0E5QXZvNU5CS2FMQXZBYUNURFdaeEdhSENh?=
 =?utf-8?B?djZnMS83ak45REwzb21OcGY3N1IrZFVzM0crZk41dzJWaGUyM05PREN1OHZk?=
 =?utf-8?B?elJ1TElvbmgvc0p4MFhmNUlLMW1uS0xxdE5paEE2cnlsaUhrdHJQTXR5Tzcr?=
 =?utf-8?B?WFc3YUVLMlNzbTlEOVBaWFREYnhhNkZlTi91cXpqMnU3b0RUcjRLNEcxR2pZ?=
 =?utf-8?B?V2R3bGJRalh2aUNEV2VmV2REektBaUEyWXZna0hydHYrRW9oSkFBV01HQm5s?=
 =?utf-8?B?QS9pbDhZd005WFRiMXc2NTdqL0twbXp6NDNOZFJBWW4yakJZcEVHSjRleWpP?=
 =?utf-8?B?RFFwejFIL21JcEtqRzl4N0g2YzR5TG9jNkwyN3pxSlNXSnFnaWpBQWpLdkRF?=
 =?utf-8?B?SFBPN2k2SDFqSWFDY3R3ekRNZUtmTUlDeTBoWmdXcWJrdEJYd3lOSDJUeDZD?=
 =?utf-8?B?T21sZTc2VFZWVWZ4bE9qTEhxWmVPcnc1bm8xeTZ5VzVLelUrSjAvVVJrVm1q?=
 =?utf-8?B?UmR1SW5HQS9KbUFCLzNqV3hOSTlxcXMwTmJFK2hIK1l4VjBmMnVKbmtyK0Jt?=
 =?utf-8?B?WDFhSHBETFFhNm8zNjNYODFlWjlsQURaemVWUHRsN2VJVnRxc2w2ZGgzdk1P?=
 =?utf-8?B?NkpXckM5Ni9Ua1o5UXNLV1BlcitTcGFjREVoaXRVV2xFaUZMbldEaUJyNjVw?=
 =?utf-8?B?dmxMRUFCRFNmcmRseE0wZUdKcmF3cjRHZk1PbjZOWWt4YklMcnovb293b3FE?=
 =?utf-8?B?VmxxcnVNOFUrbTc5QnQwQnBja1c2T2R4Vm41dU8xaEVEa2JrT0xHa2MxZ3Aw?=
 =?utf-8?B?UGpLOElKaUFFNlAxUTBYVXhFNDRya1NJNnhqb05pWXpQNTIxNUdZZXlDZEg5?=
 =?utf-8?B?LzVvbTJRaG02OUsyUlhrbTlOcE9MY2Fyd09VdDQ4c0xscXhlbHlSV3hGcjlH?=
 =?utf-8?B?V1QrMlcyblJkbHBITWkzZ05rTnNtZEF6b0NjM1ROMWdiNWN4TkVKOVBvSk5N?=
 =?utf-8?B?cGc2UWhrdG1zenVLT2ltL1NkMGk2QjlWdmY0c2EvczRuQXVOV0M4c1Q4ODRj?=
 =?utf-8?B?anM5bUZKUTIvQ25IekdFSTZJUVZWQVFZdDRiS0dVcUxxanNJYWpGK2lhTS90?=
 =?utf-8?B?TjQzZ21DRDEwaTRKMkJKKzVyd3hpNXQwNVNjSmk1RlRIUGVjcWRqTitpSHRr?=
 =?utf-8?B?TnFhTFNlaU1oSUdONklrSzBvSDVQQVNLYWhFeFp4RkZnOTRkN3JrWjB3Z3Nt?=
 =?utf-8?B?ZU56OFk2bm0wWCt2Z3J1ZUsxZ3lLazFQUDU2OThPYUV2U1BwdTg3YzVhVHFM?=
 =?utf-8?B?ZDIzYWNzWmRjZEpGSmN5S0dkTDJrYUZ6UitScXZZRFhDSXRCNDR2VVFvaU52?=
 =?utf-8?B?WnJ3M0dsdnBNaWJkUndNbmY4RXhNd2RMZ0tuRGJocjNJOS9JTzFpWjdWRGY2?=
 =?utf-8?B?V0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9b3b726c-fe1e-4bdb-22d3-08dcf29b1fd4
X-MS-Exchange-CrossTenant-AuthSource: BN9PR11MB5530.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Oct 2024 13:12:05.1198 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Vihsf/Rtpva14pLnTIy2Lq/8i8sDXWQqF/kR81pakD/NshYUKAZ1xbJo06sMHRd6RouKMMT22U2OhN9Jsbg1ZA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB7977
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



On 11-10-2024 16:02, Raag Jadav wrote:
> G8 power state entry is disabled due to a limitation on DG2, so we
> enable it from driver with Wa_14022698537. Fow now we enable it for
> all DG2 devices with the exception of a few, for which, we enable
> only when paired with whitelisted CPU models.
> 
> v2: Fix Wa_ID and include it in subject (Badal)
>      Rephrase commit message (Jani)
> 
> Signed-off-by: Raag Jadav <raag.jadav@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/intel_workarounds.c | 18 ++++++++++++++++++
>   drivers/gpu/drm/i915/i915_reg.h             |  1 +
>   2 files changed, 19 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index e539a656cfc3..bcd7630c1631 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -14,6 +14,7 @@
>   #include "intel_gt_mcr.h"
>   #include "intel_gt_print.h"
>   #include "intel_gt_regs.h"
> +#include "intel_pcode.h"
>   #include "intel_ring.h"
>   #include "intel_workarounds.h"
>   
> @@ -1770,9 +1771,26 @@ static void wa_list_apply(const struct i915_wa_list *wal)
>   	intel_gt_mcr_unlock(gt, flags);
>   }
>   
> +/* Wa_14022698537:dg2 */
> +static void intel_enable_g8(struct intel_uncore *uncore)
> +{
> +	struct drm_i915_private *i915 = uncore->i915;
> +
> +	if (IS_DG2(i915)) {
> +		if (IS_DG2_WA(i915) && !intel_match_wa_cpu())
> +			return;
> +
> +		snb_pcode_write_p(uncore, PCODE_POWER_SETUP,
> +				  POWER_SETUP_SUBCOMMAND_G8_ENABLE, 0, 0);
> +	}
> +}
> +
>   void intel_gt_apply_workarounds(struct intel_gt *gt)
>   {
>   	wa_list_apply(&gt->wa_list);
> +
> +	/* Special case for pcode mailbox which can't be on wa_list */
> +	intel_enable_g8(gt->uncore);

This workaround is not specific to GT; G8 is a state specific to the 
SoC. Therefore, move this workaround above the GT layer and pass 
argument i915->uncore instead of gt->uncore

Regards,
Badal

>   }
>   
>   static bool wa_list_verify(struct intel_gt *gt,
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 41f4350a7c6c..e948b194550c 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -3568,6 +3568,7 @@
>   #define   PCODE_POWER_SETUP			0x7C
>   #define     POWER_SETUP_SUBCOMMAND_READ_I1	0x4
>   #define     POWER_SETUP_SUBCOMMAND_WRITE_I1	0x5
> +#define     POWER_SETUP_SUBCOMMAND_G8_ENABLE	0x6
>   #define	    POWER_SETUP_I1_WATTS		REG_BIT(31)
>   #define	    POWER_SETUP_I1_SHIFT		6	/* 10.6 fixed point format */
>   #define	    POWER_SETUP_I1_DATA_MASK		REG_GENMASK(15, 0)

