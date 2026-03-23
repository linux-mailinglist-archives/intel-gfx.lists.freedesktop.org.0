Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mIPAGbLYwGl0NQQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2026 07:07:46 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C57AD2ECCFF
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2026 07:07:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3F73310E304;
	Mon, 23 Mar 2026 06:07:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fu0zvKyi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6BFAA10E0A7;
 Mon, 23 Mar 2026 06:07:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774246063; x=1805782063;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=9s8OcEzYim8yYTgtfbyoJ9uqHv3Ow0yoVqXWyfOPYUg=;
 b=fu0zvKyiPjnTYZbyLP7XDdGVM2+LUgHaXIJAFK7uRvBXKApIfkAgOyjS
 R25fQAoHzpAhzxY8kNhDC4LapJx0Lsqs1QiEHcC+ghd1oxPPuvyfF58vQ
 n8fjxGQLpWS+bzFAMmUiDC0jeo+/01CLKGPwybpuG73zsHUi5Xedi6drL
 Ys0WSNIImgP0XSinKH0pAPxth94k7qEKZY3yv24TYBkgLdsuXPhargEWk
 wD6Y7Z4PFtIEeLJWdGHbl6g5awaY2UeHcnzPQcAJaTW7na0XlU9pFpBJX
 TrAPVpC7Nl07Ucu0DWwgJT7Y30uKrK+34PI9efu45/PaRdZ48goxhI6YG A==;
X-CSE-ConnectionGUID: KjaNFsnMQ2GtN8T7GqD0Ng==
X-CSE-MsgGUID: x89VKEl9TwuIZGT/M/4SYw==
X-IronPort-AV: E=McAfee;i="6800,10657,11737"; a="75433456"
X-IronPort-AV: E=Sophos;i="6.23,136,1770624000"; d="scan'208";a="75433456"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2026 23:07:42 -0700
X-CSE-ConnectionGUID: uKcxobT9Sfi6nwiw+EGE1g==
X-CSE-MsgGUID: SvlhQ7YqSv2yxtGtGoCNKg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,136,1770624000"; d="scan'208";a="223126251"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2026 23:07:42 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 22 Mar 2026 23:07:41 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Sun, 22 Mar 2026 23:07:41 -0700
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.43) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 22 Mar 2026 23:07:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=jy9cw1MpDJjtFZzeud2VMsyCqJsKfTe+efMRjsT1nh9tPpED4nbiABqUtfcaKcEj6vGxefFyMEGOYPiK1VgLsGTH3oHasYalxD8rH1hjCWOENu2OVVNR0WHcvjpnTPA8K3afEoqop5OpFE7gMXp+uSj1W1IL0sqFe1Cq9KGzitl7Ih/xnv7ritdf8Gh3f8VBdXcJ0K/ME8FO6OD2MFN7rv5CNBIS3VZUu7Mc/wFFTjYwgGdEezcspGA6F1cKHzx4DOHTcoJ02O2W915i2Q4ePONeg3PV/Oj0Dfp3tCE9GK7P7OgiUpWicorpusIiZc2QLo8LQ/siXD2v6sHNBwOn8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=s6ZUGhmPwEScMlyt6l37AMR/jPPT2cf4pL/xEfI1VcE=;
 b=jAhBKLAB2IWdSE12Qdfi8znmecZE/sFT8/b7cqpry1VS5NWIG3xvrKvUgHU5cnm5ddcj/1jDmW6QvsA7v6/wdmqZJVzSBVQz2z5WiOAEVF4BFh+gdXIxLMIoQUjN7dHu4rlezW9lUG5eJUu6hBfNZvA6A3QfE7vmJRzX8NbniteBLpyBq/vUbIOvGmKiJj3K1x44qwDA/EOjLEvUEGMc2etvkzQN65As9Ycu2wOTOjyCCv25jNrAGKA3YYObzW5oeeYnO0l6d2jhF7mA8PjnsiBKHz+cIGImdRngtBDqQa4UZViMLlv4o+GZtw6zN+4VABfAe/hzjqz4cA1s8itNFA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by CYXPR11MB8709.namprd11.prod.outlook.com (2603:10b6:930:dd::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9745.20; Mon, 23 Mar
 2026 06:07:29 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::9d4a:f89:f548:dbc7]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::9d4a:f89:f548:dbc7%6]) with mapi id 15.20.9745.019; Mon, 23 Mar 2026
 06:07:29 +0000
Message-ID: <ec9b1e8d-daab-48a7-959a-bfc5309b3ea9@intel.com>
Date: Mon, 23 Mar 2026 11:37:19 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v10 0/7] User readable error codes on atomic_ioctl failure
To: Xaver Hugl <xaver.hugl@kde.org>
CC: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard
 <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie
 <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Jani Nikula
 <jani.nikula@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, "Joonas
 Lahtinen" <joonas.lahtinen@linux.intel.com>, Tvrtko Ursulin
 <tursulin@ursulin.net>, <harry.wentland@amd.com>, <uma.shankar@intel.com>,
 <louis.chauvet@bootlin.com>, <naveen1.kumar@intel.com>,
 <ramya.krishna.yella@intel.com>, <dri-devel@lists.freedesktop.org>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>, "Suraj
 Kandpal" <suraj.kandpal@intel.com>
References: <20260223-atomic-v10-0-f59c8def2e70@intel.com>
 <CAFZQkGw=VJnzFWnh7GT_59NhuSTiy3-VPOcKdWTZX14rkgW_uw@mail.gmail.com>
Content-Language: en-US
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
In-Reply-To: <CAFZQkGw=VJnzFWnh7GT_59NhuSTiy3-VPOcKdWTZX14rkgW_uw@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5PR01CA0161.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:1cf::16) To IA0PR11MB7307.namprd11.prod.outlook.com
 (2603:10b6:208:437::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA0PR11MB7307:EE_|CYXPR11MB8709:EE_
X-MS-Office365-Filtering-Correlation-Id: 0f0cf816-3789-4916-b0b8-08de88a27693
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|7416014|18002099003|22082099003|56012099003;
X-Microsoft-Antispam-Message-Info: wj5L4YdfC5uGYsLa2iS2q8Ahs/zawSW8kdcuHwhfF7dQ1VKNrHJw9WY1XpD0MwH12aaXQSjARJs7cYqVLOIemUg2FtvU8ThtQVR3XJm5vXWxggak/VNslBefx2SN8N1kBfWO1VQ22J1e9f4G3gAPbA0mxF5cFOvw41k2RTMs9+d7BqDE9KcZPO6owAwFxcdUpZVJf82BBjvyGFI1F67MVSVOEjunDSLMBuiGhSb5OGn0eSDA34lGXnRBmLVX3HqFaeq0Lzbksi1NSpBUq8bm1a4QXyqv8tMlumj6Ub1Ln9T6KkOeDdkhiO73T8ZQ5+MoN8P4/X4d1aBRkA2PQL6MPbhqDlXbQft9F3w69cp+XyIut8Ef4Vfssgxz+gpWriFAH+CFNmhDDjU/GVGCnZkW0vA2JeBOAw0Dj8Ggy0OdP3EuyjZuRJbGzl9P3cymJ8MoPasKZ10hFRbucQEqC/cdpDU7kkMF10aqPfHUZixDvYqAnXRDyn2kyYo2woTEvDbRXBTyZvRzWqJYnGPfb6PbKjKU1xha6tmGLx92cn0KffNdKz4cdGSHZcevvdJpFs81EIWZDeq6iQ2cjdnJOMlm+y4xig/d8sY/HTUUNOzL8RAzRkOVRU0XD6Pig+AMln5Rsvz6beK9AFWLh0PavSCb6h+wGnYHvOlrGDRpMTts7uAIUDbsf2dcUaKdE1rLf15Q0kbvY62Ng+XSu2OOzo4U70StFegk19XQkijoyj9YfAc=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7416014)(18002099003)(22082099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VG16aTA2TWZpdE8zK2cwZ3VGQlM1SkZhM1Z6TVFzcngwYlk4bTg3UXpETTA5?=
 =?utf-8?B?Z256T2dtd3hKb0JYT1FXc0docWxRYzZtT3dRNnZid0dScVZPMEtDL3BzZ05F?=
 =?utf-8?B?eE5YYWVncUVZbEoxcWtraFlRV2pRemRnYXIva3JVZGlmTU5DRFVvV0hQUUM4?=
 =?utf-8?B?dXZOQWkraUtDWmZoTm5YNDcrOUY5MVdPOTRjL1IzYXFyTGtvOXk5bEZqZTha?=
 =?utf-8?B?aUM3OWI0Yk9oemRXb04vbUNQeXBYSFkwNDZSaWNVYW9SaVFJT1ZmVU9qUXBL?=
 =?utf-8?B?MFZpWVE1QWJpNmREQlJMMVkzWkczOTIrSUhLdm5Mdmo0SkJMU0xzdGdJekV3?=
 =?utf-8?B?RG1yYkNlbHhhNHhUQnNxTmtuYUpLU3d6dHVybCtoMVhrZ3VtNERZNXFQak9K?=
 =?utf-8?B?MS9DMVBpWThNdHZWS2FwTm1pekFvbmdtbzdPV1hxR1FSVWE1a0xFQzFJbDJq?=
 =?utf-8?B?UGdJcGNoWnFqTUxKTlgrZ3k1VVd4d3M0WVR1VzAvbWlCbmIzb0hjZnRYVVh2?=
 =?utf-8?B?cC9Kc00yKzJqS3ZOZmtpa0pUNWRSZ1lteFpuRXFaZEZpRFdzSURFNXpmWEtH?=
 =?utf-8?B?Tys0MGo3Q1dZY0RKQ0VaQ2NVdjVtR25XWmRNeS9KcG1wVEN1NzUwUmhMbFU2?=
 =?utf-8?B?TERCejVYSlZ3SkRxdHh2RFA3QXpPa0dBQStiZ0dQOHRBd2lWR3ZYZy80YUp1?=
 =?utf-8?B?SGxRVmF5NS9rMkdJM2h4MVRoZGZ1NjBHYjA3NTZQT3J1VkZvNzNDVVBLR1NT?=
 =?utf-8?B?YVp5L016TE5PUW5BVmZGeE9GVlkxamtMb3ZoTzNJeWJZek81Zy83SnQ4ZlFM?=
 =?utf-8?B?QVZGc0RXaDFuUjRJeFh4Q0xWTGduRXdKZkFzWUpJMThOTS95bjNWaUpObFkz?=
 =?utf-8?B?QWtUQWZYS2Q5d0FXakdrSlZZYzkwSkMwMzlWRnlCS2NkSHg1NEVCblZTcWdR?=
 =?utf-8?B?a3NEcW55L1ZIYTFEUndHems4VmhTZGNwVWhQYjZtS0hHS3dGMDBIdFZ0V2My?=
 =?utf-8?B?Zk9lTS9zN1RFdWdTbjFKaldYZ1Y1MVNENG9RR3UvVlprYjI3aVFLN1FtYTJE?=
 =?utf-8?B?aVdUbWxBVk1uRGZSZjB2ZTJ6cU1SZmZyK0hVYkZqSkRyTHZsd2t6RnMwQkpP?=
 =?utf-8?B?ek1hZ1NPTVh3bExLeGFhNUpCY3NjZ3dIZWphbzhrT0pUMldJZG00czN1N0Rr?=
 =?utf-8?B?UVNTYnphamF4WWxYUHJISXAyNGJjcGZYWWlXdS9GTmtxRVdBcVVsYTNYQWo1?=
 =?utf-8?B?eXZrcU9MTlo2MFJFdXNFTHZjbG4rd1pXVTRvSzFTNWw5dm03TjJaNlVWb1VQ?=
 =?utf-8?B?MHNERHJBVyt6ZlhTb1IwblpmQ0FGT2lUOGI4TG03N2NqREN5ZzdVNXFiclpm?=
 =?utf-8?B?NFJmeWhVWHphQ3NXdHByUDdhRTVuOUJEZ3NBSjhJWnIya3VhWXhrWHBDd0JV?=
 =?utf-8?B?aG9RTkxMYVpkNnMxYzJ5OTRFOW5kWHVJanlFZDhxNmpwUVh6cUVFbmIzQ3Fj?=
 =?utf-8?B?UVBXQ2J6SnpLZ3VZd2xNYTdJZElrZFZvY013UlYxYVVscnYrZnVCWlRTWHNW?=
 =?utf-8?B?akNJMVN6WFZJYjNxOEU3em9mSEwwelNWeVR6c1dSQ1UyUEd5WjBiL2FtU0pJ?=
 =?utf-8?B?ZXFmZ1RvRDVlWGVXSTUrenBYTktjaVVuUnVuOGVScVRqd0txZzBCN3dIVzQz?=
 =?utf-8?B?TTc1Q3B3cnFoMzdMQXNJTzMvY3owNVNLaWRiK09weTJmbzJkNmdPalpwV2FE?=
 =?utf-8?B?NkEzeWMyWElsUnFoU3pjczVvaEJvbXpuSkR2dEUyL1h6QU9zaEJUOWtKNUNl?=
 =?utf-8?B?akYwZmtnUmZpZkUvaVhoNXhEZW54eEowZlBPWCsraStIcGJsWUJ4SkpJbXBS?=
 =?utf-8?B?V0I1eHFUNUcwN281SERySm53dVF4U0NWL3V3dGxpNmRYYVpIZXIzR1hrMHIx?=
 =?utf-8?B?N1ArQWUrRFpRdzdpZms3VWNGTThsMjZ3Ym52RENXQXBoWkFST2dpdzNuR2sv?=
 =?utf-8?B?NitJN05WNjBYb0g4c3BPaklKSlB5dC95T3FxbUE1eEdBUnBSUDF1Z210Ylky?=
 =?utf-8?B?UGdzSzBkSWhqRFA0c3BHb29tdWt4NVFQdHhNcjU3NStGZHovWlpIOC94VVNV?=
 =?utf-8?B?QTZZbnRuWG1WMkxkc1J6OXVzN293Um11eFA5WmI4SFVHamVkMWRCajV0NXIy?=
 =?utf-8?B?bWFFbWtVZXFidDlJaXFydHVvWmdMREF1VkdWeGtDQ1B0QS9OeU1WUVFpeHpU?=
 =?utf-8?B?cUhIemhMWnR3RVVIR3VkaEhMaTJKa1g1SHJyMUhqZ2NiQlRRV2Vmck9SV3F1?=
 =?utf-8?B?eHFjK09hOGF4dDZIbitVSEVnOXdOSGFpeTE0azhnNklQbUI2dC9jUT09?=
X-Exchange-RoutingPolicyChecked: eidG1jcyHjNo/P9jRyjyqpzZCpaw6wtRuJ/5nMhC8KlXNBddFOriRE42MtjVIwfLZbq8Bm1Lh823hyMZXCkoDBNGOnQW2W4Rv69E16pOQEi3aemvm3FSyhopR1NwlBtvUc7JeP+IP3eqIthXgtYsI84FT7r9grPcIycdxNpld7WSYWB4Shtsp7T4lvJjT51u9hiV5Xbt1Frn+AvsoA7KUPLFj9BeSoVmvCHKp3T/y021trvbrHKuqNaBfXQR00oUCG/h079zailBgrficQLuLvUmnHVSNfUZCpqMz2ROoWrRlwJT5oIUPy8ipRkgmZpVNdDPKre1uorEqwClbsstMA==
X-MS-Exchange-CrossTenant-Network-Message-Id: 0f0cf816-3789-4916-b0b8-08de88a27693
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Mar 2026 06:07:29.2309 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: k0jzp+fmJA3azkJPFgfPJXAM2+fkvpLV5Pn696ajyQFO9Hv6hDO335rb/cQ5CclSz1pJE3usx6nRE2rISPR3kg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CYXPR11MB8709
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,intel.com,ursulin.net,amd.com,bootlin.com,lists.freedesktop.org];
	RCPT_COUNT_TWELVE(0.00)[19];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:mid,kde.org:url];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[arun.r.murthy@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: C57AD2ECCFF
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 18-03-2026 20:35, Xaver Hugl wrote:
> Hi,
>
> I now have an implementation in KWin:
> https://invent.kde.org/plasma/kwin/-/merge_requests/8991
>
> One thing I noticed is still missing is the catch-all case / unspecified
> error; the "invalid API usage" enum value would be quite misleading for
> that.

Have added the remaining error codes to the enum 
drm_mode_atomic_err_code, will push as part of patchset 11.
/**
  * enum drm_mode_atomic_failure_codes -  error codes for failures in 
atomic_ioctl
  * @DRM_MODE_ATOMIC_INVALID_API_USAGE: invallid API usage(DRM_ATOMIC not
  *                                     enabled, invalid falg, page_flip 
event
  *                                     with test-only, etc)
  * @DRM_MODE_ATOMIC_NEED_FULL_MODESET: Need full modeset on all 
connected crtc's
  * @DRM_MODE_ATOMIC_ASYNC_PROP_CHANGED: Property changed in async flip
  * @DRM_MODE_ATOMIC_SCANOUT_BW: For a given resolution, refresh rate 
and the
  *                              color depth cannot be accomodated. 
Resolution is
  *                              to lower the refresh rate or color depth.
  * @DRM_MODE_ATOMIC_CONNECTOR_BW: Refers to the limitation on the link 
rate on
  *                                a given connector.
  * @DRM_MODE_ATOMIC_PIPE_BW: Limitation on the pipe, either pipe not 
available
  *                           or the pipe scaling factor limitation.
  * @DRM_MODE_ATOMIC_MEMORY_DOMAIN: Any other memory/bandwidth related 
limitation
  *                                 other then the ones specified above.
  * @DRM_MODE_ATOMIC_SPEC_VIOLOATION: Limitation of a particular feature 
on that
  *                                   hardware. To get to know the 
feature, the
  *                                   property/object causing this is 
being sent
  *                                   back to user @failure_objs_ptr in the
  *                                   struct drm_mode_atomic_err_code
  */
enum drm_mode_atomic_failure_codes {
         DRM_MODE_ATOMIC_INVALID_API_USAGE,
         DRM_MODE_ATOMIC_NEED_FULL_MODESET,
         DRM_MODE_ATOMIC_ASYNC_PROP_CHANGED,
         DRM_MODE_ATOMIC_SCANOUT_BW,
         DRM_MODE_ATTOMIC_CONNECTOR_BW,
         DRM_MODE_ATTOMIC_PIPE_BW,
         DRM_MODE_ATOMIC_MEMORY_DOMAIN,
         DRM_MODE_ATOMIC_SPEC_VIOLOATION,
};


As far as the enum INVALID_API_USAGE is concerned, there is a certain 
understanding on the
usage of the atomic_ioctl,  any miss in that would fall in this 
category. Some of them include
     - Driver doesnt support atomic, but still atomic_ioctl being used
     - Invalid/Junk flags
     - Async flip not supported
     - Flag page flip event along with test only is not supported
If changing this INVALID_API_USAGE to UNSPECIFIED_ERROR makes more 
sense, I can change that.

Thanks and Regards,
Arun R Murthy
-------------------

> - Xaver
>
