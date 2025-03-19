Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 76BACA68D13
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Mar 2025 13:40:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 44F7510E34D;
	Wed, 19 Mar 2025 12:40:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QiSDVviE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 96BF910E34D
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Mar 2025 12:40:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742388039; x=1773924039;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=XthQ9go/6js1X9tKKqL9V1T6w9D3SHZl22kIuGS/gc8=;
 b=QiSDVviEJIT7Ojl4oXXqptIEbiIHrz7UYVISAeeMt+OTwmdxRJZgLxWg
 pvx0t1cdalVadzbASlVFtci5hueqcSnNatTFNEIrtUvW4sbB0vG8f8ByM
 ebGA/yL0hQqX5nuhCBMtHxB3W/SEIRT3Q6m7UBH6MXKR9sMTcKbim6QiC
 3gqu1LfBTZ55NzMMUahtqm5Mapz0DUjOnV8zzB4qHF06zThoJxud2bXWg
 3/jQe90sBVtn+peMwLwOkn6mRghV+TXLZFUDYZwXiPpUsK28Zzx8YnN4f
 hwjQJu75o3uVHENDbKwHa/fjzhuOE/ZD5UI94E1//kTromiRNaypXjqVR A==;
X-CSE-ConnectionGUID: jX7XITVzR766opQ/0sHQRg==
X-CSE-MsgGUID: iFxjyJLNQv6HLvkTJDXkiw==
X-IronPort-AV: E=McAfee;i="6700,10204,11378"; a="47223807"
X-IronPort-AV: E=Sophos;i="6.14,259,1736841600"; d="scan'208";a="47223807"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2025 05:40:29 -0700
X-CSE-ConnectionGUID: CglunKkYTyOb/nSpsC4SIQ==
X-CSE-MsgGUID: tcDlXL3BQuGoNzbOZ8J42Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,259,1736841600"; d="scan'208";a="159775384"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2025 05:40:29 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Wed, 19 Mar 2025 05:40:28 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Wed, 19 Mar 2025 05:40:28 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.170)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 19 Mar 2025 05:40:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Q2ZS7fbR7HxuABn+6xo+QYBwMGna64cXxzyn1itMNZCNv03AJav1oLQUKvKtsJDWvunC/R8ZqGETtYKOyYUb/+GrSKeKeLA4d5ZnZUTGqxMe1qeFTPvGUXSJiv9a5iYt5HOn+s/ve8Evl/rhJxF2CsjAL8JgpLLZDranhvzEbAXT40rcMIv0/sQ+Ity8YQPpkJ9DAus33GV5XhrVXo9wptQnMpQknvunEmF54D+qGNm5np+pyi6me+02WU5BDHi4DkIOWUgU/fK8Wdy+PPVxG7Rl/A7BqQ8iut4hPZth8uo3nDxuuqJEYhsfstDKM8c+pNI3PLCZQAIzppH4fKKfdQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wfIsqRFQv6zcS4RgNT8xA9KVflYrVk1YmsYDC7VjHoA=;
 b=jhV9rkannVUt+cnLI6b6SfQzaqQvmPfPzkwrFLcw1UQgkuXpOeU35XIvxJqFIM1/zPOjzTV27SbS2WFm9DJAiJkmsDr6Y0z3G9HkgnOtoE7nw17+HTBH4PaBOTxuTMSnQD44qZzyVHCZGt8N1lnfWnMci3SlKU3guntYqgWd6tKDqw0QbvBWsey3AwQY2GgPS61Vspkh/DHoqpY6wUlEVEBqRMSPpwlYDoVqWm3MR5drX3pvHRSQGB4kFeciHgTmAGhhtHPbJN/4sze0RlVrK0YxPWlXWBz0hmWAPWJDMTeIFQnzd6H58TRkBqOjWIi46w0eO3Hx9FFzGvZjLsU1eg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by SJ2PR11MB8500.namprd11.prod.outlook.com (2603:10b6:a03:574::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8534.34; Wed, 19 Mar
 2025 12:40:25 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::4610:6d6c:9af6:2548]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::4610:6d6c:9af6:2548%3]) with mapi id 15.20.8534.034; Wed, 19 Mar 2025
 12:40:24 +0000
Date: Wed, 19 Mar 2025 12:40:15 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: Krzysztof Niemiec <krzysztof.niemiec@intel.com>, Mikolaj Wasiak
 <mikolaj.wasiak@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, Andi Shyti <andi.shyti@intel.com>
Subject: Re: [PATCH] drm/i915/selftest: allow larger memory allocation
Message-ID: <fregvebusvbqsw2sa43ahahldxxzbbkuv3ywkxb2xjqesrakkw@m7vikvfmcto6>
"Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316"
References: <wv4aw6syqjox52lpgkddxykr5namvan4eb7b4obj3rligwyp7m@33c3ko2mj7sp>
 <wf7iikxwpvqx77267aaxqhdtg5qjisdowuh5bnnv2o47jowzvb@avicp6k6yjtj>
 <qphk2egnvvuaavj3g34vdfkf64sahttxdwqpi7m2mbyneoyo4u@a23mww3t4o3d>
 <eljluyax3xeoxh475lmu6xqtyfd3b35l4ocpob5xy45vzqkfy3@r4io3gqfxd3c>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <eljluyax3xeoxh475lmu6xqtyfd3b35l4ocpob5xy45vzqkfy3@r4io3gqfxd3c>
X-ClientProxiedBy: VI1PR09CA0143.eurprd09.prod.outlook.com
 (2603:10a6:803:12c::27) To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|SJ2PR11MB8500:EE_
X-MS-Office365-Filtering-Correlation-Id: f36c157a-3440-4fab-3a77-08dd66e33858
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?NDlaRW5aRXQ0WnVFS3VIWDNLRnFMaHRlQU53Z0U0aWFTbUtRMERoWjgvR0xY?=
 =?utf-8?B?aWkrelV4SWIrTWdocTJRb1RyazAyaVFkMUVHNWlOY3RyeVVycWpRUHNaKzRr?=
 =?utf-8?B?UXVaSGZOVktDUkRGc1dTdXdSSnVLOUNyVm5GM3NrYW5zaEpBZlBQQ0VFclNo?=
 =?utf-8?B?V0VxdTRJa2J3RFJBdFdmMW1IN0RQZk9OVmhFMGFWdTlIWDMwWFU0TmozNlhN?=
 =?utf-8?B?dE9jTEY4cGxKSTQ0VzFQSExLeDNXaUh3VWtCYmRVV200M3I1eDBMbzJ6dXVi?=
 =?utf-8?B?ZnEweFJVckpHMHRKcEgzQWZCY2ZvK05GNjlnUnphM3NQUmRwVmRCNEhXckh5?=
 =?utf-8?B?ZjVpWWNFelh3Q2RSYjFvVENtYXRPcEZpVTQwSi9qVlRxSGdESTFNNlV0K3cy?=
 =?utf-8?B?dzkwQnpoRkpURkl1TEdXUUJRWm9EbktLdjBGdXJkaEE0dTZVeG1hZnhQeHd6?=
 =?utf-8?B?LzZGUUU2NVVQdlBhN2RwS3l0aVR2V0pDekpqOEV5NW1qNmpLeC8ybHhJUDFO?=
 =?utf-8?B?YnFhYldpWjdtVkJZelFobFQxMUF5V2pZYVIvWnY3LzNoNFpmN0R5NENlbnpy?=
 =?utf-8?B?WFEwRGEwc0dScVJxQWVQTE5VaG1lYjk3SlZtVDltK3VzemUzdlpXVGR4M1FJ?=
 =?utf-8?B?RVlGUVBQSGRGNk0ydjE3ZWthMjRWVzhuNWJWaW40TGhlZWp5VHdnb0Z5OGxp?=
 =?utf-8?B?cW1IWnlEd3VHbkdZd2ZiMW5Kd29MNzdsTEhBMDhVZkc4TXJlWWYza1M1Z29X?=
 =?utf-8?B?OFl2REc2bHc3djVSSEN5ODNZQlRmTm5rd21LWUFOYmFiZWk0VHo3cWhPb2tI?=
 =?utf-8?B?NERFS0RGYkRrcWdIVWRncXE4RTFmNmhWaHBUMmc0TUlVck51UHJIMTI1eWIr?=
 =?utf-8?B?dGlaUUw5VkRiMDRqbmRHUk4zWUdrdGdiMll3REMxOXRWSWM3a2loa3dOejJS?=
 =?utf-8?B?bzl6Tnk1R09VeWtQWmllTHRpN2pMSCt1WS9qbnZqSENmUHpGY3pGL2ZvY3FR?=
 =?utf-8?B?RXAwME1XcGR5Z1Y0ZldkTnZTVVVvSlUzUGR4R1RtVDcrc01nQk4wU3YyNVdI?=
 =?utf-8?B?UFdvaCsvbHNlOVF1anBMN21qOGM5L3Z4NmtsQmRqenc2Y2EvaStSUGJ5UmhE?=
 =?utf-8?B?T041TGpiYWZ3eFJXTlFrN2ttYm96NThwN2UwOVNkb3hXT25Jd1o5MGcxaFZM?=
 =?utf-8?B?VjkwQ0tqd0NMekVPZVdLN0ZmaG0wTThnUkhxRmszUkJjMGhnOGpzd0k3TDNj?=
 =?utf-8?B?MFRKRDFpaUNuMlVCS1NVM1ZtMjk2VjdETThWTlBWR2NPTnUrbkJSb3grQUk3?=
 =?utf-8?B?VW5qWVIwM25qYWxNZWRmOVJ3aVFtNHZNRGtsREtGWVhyalIycU5Kcll3L3Jr?=
 =?utf-8?B?YkxEak5zSURzaHVCTlhNdGNhb2JYZVpvUGZOVDlHRS9WaGlUSHZ6aG9XRnQz?=
 =?utf-8?B?S3BEcFI2WkgzMzhqYmlUVlJsUjdQTStYa3NpMjhuWkYyaW9KTmFnelhIWk94?=
 =?utf-8?B?cmJtc3ZFeVozc29ESFNhNTd1U3h2WFhIWDBSRXFibFAya01lTTZvWnkzWTNH?=
 =?utf-8?B?WXEvZ0ZoR0pndnR1bSswaDFUZHpIY1o5R0p4ZERHNSt5UjVBWSsxdm1NcDVn?=
 =?utf-8?B?YW12U3dERkhNOFlOMERIeUNreDJLSUhmZW5QQnRodVEzUXFHYVVQWnRXNnBI?=
 =?utf-8?B?OGRGbGh2Nm5FN0JqSHkrWkc1dW9EVFFwa1RhNFF3M1JKLzZzNGl6OG8xMTM0?=
 =?utf-8?B?bVpTczVpQW96L01KNUtVckVqM1JQQ0tMWmtQNk03UGh4bFA4NkhodUJkWXh6?=
 =?utf-8?B?QVJmMzZRRUdyVmhzb1hBYlE5b2M5ZXU5UmFRYVl1R0NLTXFpemxvUmFCUmsr?=
 =?utf-8?Q?qMHvG8VSbT3Tx?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZDRCVWlndlNzTStvdDdvWGI1eVB5aDViSVdlSDlMYzJuU1htYVQwazNlMXh3?=
 =?utf-8?B?ajZuN3prK2FtOUpBbEZVeG5rOTJNaWJBaE1Ha2FuTTBpblRMd004RmRqMlVu?=
 =?utf-8?B?MFArNllBRnpnRE5NMHdCUHpMWktERXZERlNlQVpCanR1SWgwdUFxejhVK1dl?=
 =?utf-8?B?WUJHdVJwdlJMTjduWnZneXVsWUhBQzl5L3BFSmF2ZURaL09icXJoUDZjc2tN?=
 =?utf-8?B?SlR2NTB5dlNIcFIrQW5admh5WDM5aS9iY0VhZjREd015N1BkM0o0dVlsWEha?=
 =?utf-8?B?NTdNa08vM0hkb1ZOSXB1WG1pMVVmOHQxOHhIVHVWbWkzd2gxMWFqWW9YTFI3?=
 =?utf-8?B?T3VPb2ZpS1J0MXM4bzhaMnZIT1ZuMVRYNHhDcmE5VWIyYW5OaXJoMjhIem01?=
 =?utf-8?B?Tm9PR3lHOFJqUzF6Q203VFJ2NUpSSVQyeWtUQTY3ZUZpeVQ3WE5sNks1VCth?=
 =?utf-8?B?cVVxTlRHeFJ4clJYdlord2pESGg4NmxOcDhtYTBWaUoxa0hPWkdCdHovRWVt?=
 =?utf-8?B?eUpveU1CUzNyU0JTZzZ0QXdZeVV6SzJxWmRYbEhTNm43RFVZRHZoQmdSV0Vv?=
 =?utf-8?B?YmFxdWtGMFVFMmp6SzMwTVlrV3dhNS9TQzI2OC9lZDhRdVoydUcwZ0FJL0kw?=
 =?utf-8?B?WG1zK0cwYmVCcW5Obi9Sell4dHNLWERhQUFEK1JzUGNqSjdCK0o3TXBWSDR0?=
 =?utf-8?B?OWR6dnd2MUE1NFdlNGZvS3dVRGcyN0JsTHlFTG02ZzBnNWtpcTRjSlVvbkFI?=
 =?utf-8?B?TkFaZ215dXBBbStNd3puTGpkOVlKQllqd3lNWkIvNmI4K0tFYVpseG9BTXBZ?=
 =?utf-8?B?WHUyZ3VRZEpSMHJETjY2dnJVWVhGQXFidGswcHR6REc5YUNzdUdIR3JJdXN1?=
 =?utf-8?B?WHBtTWszSFRHUTBCd3VhSE1rNGZLVVppbUdubFRwTjZNenF0T21SSFJuR0Ur?=
 =?utf-8?B?N3RHUFgyd09aL2RMTkhSS21JQ0pZRUttZngrQ0RFMG96VE9XT01hOWllYkRk?=
 =?utf-8?B?eC9mNGJnUXdrbHQzd1E5eVM5ZlArWWM4OTNsV3pKamJhY3FQb3pmVU90eFI4?=
 =?utf-8?B?YWtPaXBKSVFBU3VVYTZjeStubFlQQkxIQmFJaDNRTy9oK2VHNm8wd3lkUHRk?=
 =?utf-8?B?OU50WnhWVjU1RDg5SkVsbUJ1OUxEZVdwRDkxWG1HUEVHWk5PMG1aMFEyalUx?=
 =?utf-8?B?WGZRWUtTd01QcHZrSERpVGMvYzlQWVU2UDgreVV4M3Ura3UxZlBwR0o3SkNR?=
 =?utf-8?B?cWN3OGgzT0dXOXVMWlU5cDQ4anpTK3YvQmgwd0EvWVNhMXQ1ZVJaMVZJSHRV?=
 =?utf-8?B?NThCdXR6Y1d4dHY0Q1E4Y3FoVkp6NWNZMEJJUS9pS21XUmR5U1pjaEl6RU9n?=
 =?utf-8?B?Q1Q3U2VGS0syYmY4MTJvd0dnakV2ZHVWYVJxcTVUc284UnVxUGdsa21kU2hV?=
 =?utf-8?B?bjJUemRBOWRqMGxUTGhLZERIV3k3K1pMMGZ4R3MyN0dCODg1TlVQMVdZbTdW?=
 =?utf-8?B?aGxIcm05dy9hK3Z0RlpXUnloZEJZUzF5Q3JXMlNFc3RWdE5VUDV4bTd0Tit6?=
 =?utf-8?B?N2pzWkY3aEJqdDlHSWY3UG5sS3NYaHZmUHZReDJ0Y3JURUNhVUFqaHBTY3Mr?=
 =?utf-8?B?R3c2Q1p1SDJkT3RPNmR4a3ljaEVUOHRJK0tSc3NTVkY2VVVtaXlTdkY5YlUw?=
 =?utf-8?B?SjIyUUhvYVVEemsybElhMmR4N0QwQWVpWko5R243SjZsNzJoYW1zZmtaNStr?=
 =?utf-8?B?OXIyM1lZWFFhK3Q0dDZCNWFmbndobnFGYWtMSUhhcjc0cndheWZ6RDNUTFRY?=
 =?utf-8?B?bE9hZDFVdnMrSFpHb2FyU1dlazVVb2ZjaldOMEJTMjFzM0RxWGxoU0MvVWNZ?=
 =?utf-8?B?Y0FmaXFFbEwzak1uTHdLK2tiZXFBc1o0RlhKakNPYUxSY3VQd3BKSys4NzA0?=
 =?utf-8?B?Zy9SUXMxOXY4YzZSWmEvYXFsdEZlM2l3UGM1ZzdaY2tsb3dwNU9HYXFsaGJU?=
 =?utf-8?B?czhXM3ZONThKODFUSEQ2TWV6MmxHUmUrUUVGTmpGUmViTVllQktDNVpoSFNM?=
 =?utf-8?B?MUFIRDVWQVVuYnExc1RuSUQwV0ZFWkpqclkwVDQ4MHg4WjF3L0h5Nlh5SmdN?=
 =?utf-8?B?cVFDKzJacWdNdGswZDhVU1RXTC8ySWx1RzhVRDFTUTlaSFpTUjM2c1hGUkN4?=
 =?utf-8?B?QkE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f36c157a-3440-4fab-3a77-08dd66e33858
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Mar 2025 12:40:24.8995 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 69gOq/ChFzxPWMO3Ebvav+hrz6CUGkn4bt4BvQg9e1bsoM+X/aj6WRuRi9fyzTqotWlcG1R6Kozw+55TbVoSHwz63l29wNaowCuB/GXe4Ig=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8500
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

Hi Krzysztof,

[...]

> > > I guess a check for contiguousness does not hurt, but the test behavior
> > > is fundamentally different here. Maybe manually rounding size up to the
> > > nearest larger power of two would be a better idea here?
> > 
> > Before changes were made to the allocator we knew that there
> > was a corner case with rounding size to the power of two. Now,
> > we know that the allocator will take in any appropriate size and
> > give us a valid object (correct me if I'm wrong here) - if that
> > is the case, then this should just be a check if we fail on a
> > size that is too large (unless this is covered by some other
> > test).
> > 
> 
> That's what I meant with rounding up to the power of two - make an
> object intentionally larger than we can accomodate so we can check if
> that gets rejected. I suggested using that rounding up so we replicate
> the previous behavior, but I guess it could as well be size + 1 or size
> * 2 or any larger value; the point is to verify that the driver doesn't
> allow allocs larger than expected.

I think what I wanted to convey, but failed with my wording, is
that I do not think we need to add more complexity to this test
by introducing rounding size down to the closest power of two,
but rather explicitly make the size too big (as you mentioned,
something like <max_available_size> + 1 would work).

[...]

> > >         obj = igt_object_create(mem, &objects, rounddown_pow_of_two(size),
> > >                                 I915_BO_ALLOC_CONTIGUOUS);
> > >         if (IS_ERR(obj)) {
> > >                 pr_err("%s largest possible contiguous allocation failed\n",
> > >                        __func__);
> > >                 err = PTR_ERR(obj);
> > >                 goto out_close;
> > >         }
> > > 
> > > This is the next check - we see if the largest possible allocation
> > > (according to the old logic, it would be 'size' rounded down to the
> > > largest smaller or equal power of two) _does_ go through. The success of
> > > this particular check isn't affected by the allocator changes, but since
> > > rounddown_pow_of_two(size) is not the largest possible allocation
> > > anymore, maybe it's better to change this too (e.g. drop the rounddown
> > > function). This way we keep the intended test behavior here as well.
> > > I suppose this is still in scope of the patch.
> > 
> > Yes, this would be a bit different than the original behavior,
> > but we'd be sure to fail object allocation. If no other test
> > checks this condition then this test could do that here.
> > 
> 
> I mean, if this test was doing that, I don't think we should patch that
> out for no reason.

Oh, I got confused and thought that you wanted to add some more
checks there.
I think that we could have this part of the test ensure that the
max possible allocation is still, well, "possible", so this
would turn out to be more of a sanity check.

> IMO we need to tweak those two checks to check for the same thing
> functionally but keep the new allocator behavior in mind. Then
> contiguousness is a good thing to check, but I think it should be added
> as a third check so we don't lose either of the other two.

I agree. We need the following:
 1) Fail check on "too large",
 2) Pass check on "max possible size",
 3) Pass check on contiguous object.

@Mikolaj, could you add these tweaks to this patch?

Best Regards,
Krzysztof
