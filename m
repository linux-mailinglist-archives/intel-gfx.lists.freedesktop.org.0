Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KKkjLgf0t2mfXQEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Mar 2026 13:13:59 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AE9E299445
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Mar 2026 13:13:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C821A10E4F7;
	Mon, 16 Mar 2026 12:13:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BL9tpWyi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E6A8510E4F7;
 Mon, 16 Mar 2026 12:13:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773663236; x=1805199236;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=vgBhO6EUCVQMtUuu979wfoXF0eDdMVmHt7AKKWrZfl0=;
 b=BL9tpWyi0u2kxeV12Ydz4bKO6w1h3kR4h+8oJp7dUSYw0hCfxXWMzM+t
 iPILv0rIhqoHrgSyUNiDDMIrbL4falh5HkdU9QhY7T/PUeGYGNWm7+Hif
 yMYXOc4a4K82w35WtL3B+k0JugCEQIwaWNyrV6S6ghCSbe+l1ACVuhc2K
 rBH6gqIjbKE6082oIAC637J4SEKBOKy4+Xjxtm7jXY6lm8JtnZGuWrOIc
 UOkeukAMAHBZNXeHXJt8Dx133SabC9Pt3cwZxpKil0qHBQus4LX221bKl
 ft1J95k1uIUNDglgEQKImrsmSAEi/VsBHcjqp8a1X4Dqq6KyS5NcZF77+ w==;
X-CSE-ConnectionGUID: /BG2R/u2QraYiGdoXdKjnQ==
X-CSE-MsgGUID: hCbvXpSRR7em01NqhjxA+A==
X-IronPort-AV: E=McAfee;i="6800,10657,11730"; a="74863316"
X-IronPort-AV: E=Sophos;i="6.23,124,1770624000"; d="scan'208";a="74863316"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2026 05:13:55 -0700
X-CSE-ConnectionGUID: KIzYiJ5jTZaq+yllqvJtjw==
X-CSE-MsgGUID: 6Db/3IDkTNiiLKVlwsgjpw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,124,1770624000"; d="scan'208";a="224114806"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2026 05:13:54 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 16 Mar 2026 05:13:53 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 16 Mar 2026 05:13:53 -0700
Received: from BYAPR05CU005.outbound.protection.outlook.com (52.101.85.15) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 16 Mar 2026 05:13:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=kw6IQS1SjEcorM054GDpJGiWs35Jx5wAWT3aGfpJ3YLH55jgdj0MqYHjVs4chwK6PPtg66Lv+Iyn5osmyhyWsqd4eJbj71RwxnkEOj1ldnlx/Bxdiw3TCdAjrMzVtwkI+KJBapLyv1mFk2SMPYU2WtUNo0bp5yZS0wShbFugYlgNzMWs38CQOQh7My0eZu8hwfCSS+yrW0uzgB0T2BPvLf12IhcWgJfPnvMHodrimEg6J2/5Tur/0S72H18ZPhnKQOvBT6sWz5D25mUjYhZMEG+5+Z95hxcPyAoLjKfWlAd/zCxVBEkJ1OTqGaBbgTWgM6BlBJMOg75zbPl0bhXC7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MIRFfcG3HAinL/2DvoybK28baix0K7CXqyHo1AvYCLY=;
 b=Zo5P7RpWuOu7IcoCV4gGhoDWhA9h/Ah+3H7N1spAXkggyP6V9jGqIC5Vu3arVFQ33wPaKEOhFc+VYIJ36gMDymhR3JhjwZCaz441+EN80MXGK4ad23CqXgYfGGHlwSph1CHW4RNfK3qYtagcgTvJ2D8xwlPIrh87HnsVelvKrBThbrOobI/xQ591kubw6VhRj515wlZkrf84v5MzLp3Vf823lCHr9tJapVAXP+pxpdgpksd366F8yVwAX09rsfjJh1w0Za5ERIZ8yDkMiLRue4CvirPTBp0bGrV4F832LhXHFbfQNvBV+R1WIfQV/EYpGCgWNdQQf0YgITWAePrRNQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB7183.namprd11.prod.outlook.com (2603:10b6:8:111::10)
 by DM4PR11MB6525.namprd11.prod.outlook.com (2603:10b6:8:8c::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9723.12; Mon, 16 Mar
 2026 12:13:50 +0000
Received: from DM4PR11MB7183.namprd11.prod.outlook.com
 ([fe80::d9c7:d2fb:680d:1ee1]) by DM4PR11MB7183.namprd11.prod.outlook.com
 ([fe80::d9c7:d2fb:680d:1ee1%6]) with mapi id 15.20.9723.013; Mon, 16 Mar 2026
 12:13:50 +0000
Message-ID: <2bd7dda2-cf4f-4636-8b89-3f71886c1f68@intel.com>
Date: Mon, 16 Mar 2026 17:43:40 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] drm/i915/dmc: Enable PIPEDMC_ERROR interrupt
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Shankar,
 Uma" <uma.shankar@intel.com>, "Sharma, Swati2" <swati2.sharma@intel.com>,
 "Nikula, Jani" <jani.nikula@intel.com>
References: <20260311063259.2608206-1-dibin.moolakadan.subrahmanian@intel.com>
 <20260311063259.2608206-3-dibin.moolakadan.subrahmanian@intel.com>
 <DM3PPF208195D8D8D1894ECDE4A41681332E344A@DM3PPF208195D8D.namprd11.prod.outlook.com>
 <dcba6eaf-1f57-4094-be69-0c8d116f92a7@intel.com>
 <DM3PPF208195D8D96EA050D075A0AF09F07E345A@DM3PPF208195D8D.namprd11.prod.outlook.com>
 <7b072000-0b8d-4910-ae05-0eaac6d9e94a@intel.com>
 <DM3PPF208195D8D6302B536CF802D111F55E345A@DM3PPF208195D8D.namprd11.prod.outlook.com>
 <abPg2j1wS_QLPIdJ@intel.com>
 <DM3PPF208195D8D00F123DBDB50B578B8F0E345A@DM3PPF208195D8D.namprd11.prod.outlook.com>
 <abP0OsNCqxhoaBCV@intel.com>
 <DM3PPF208195D8D26279862C7A66740E855E340A@DM3PPF208195D8D.namprd11.prod.outlook.com>
Content-Language: en-US
From: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
In-Reply-To: <DM3PPF208195D8D26279862C7A66740E855E340A@DM3PPF208195D8D.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5P287CA0085.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:1d8::19) To DM4PR11MB7183.namprd11.prod.outlook.com
 (2603:10b6:8:111::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB7183:EE_|DM4PR11MB6525:EE_
X-MS-Office365-Filtering-Correlation-Id: 51eaa346-7fbf-47d4-bccf-08de83557b9b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|18002099003|22082099003|56012099003; 
X-Microsoft-Antispam-Message-Info: wYYV1MsM57Dd5kuKF4NxFTfPi0KZ/xPFRDtP0kW1e4mD9POVsJATG/kK9Gql6/5imKi6N2iN9p/Oi5w+2NaB6EOnR2uOi/eWeQ7OlUHZjQl78OS2Unh4mOQKpLlhbGw/tvQvtSpd4OS2f8eJSZI9oMH6KzJN+jPtBV9glfLFwJQV2XZw5/R0JjKTA3+ZIN8vMwNyaTYrk71m1eo6Usx5Brh8DFv0XNmR5UnfqLxaZ1QXa3jRnJPJ9EdGR2Es5rwXBwLv5aK1LKT08IHtYMlQ6+6VHZhnI09t1/Lo8osqHlRPdxegNwpzZ3jLKZHCec2XKvmqTVWkLbP/pUJ3/oDrEojYR5W/CvJIwAa5LosuzTmDyb6iGQ+r685iQ2kZfaTcJqQiE24NULYJxR5FZByl4IQqxXlXCsu6lEdRJh0wkERxuODZ3oxXmKx9pYIbe/4JjJTWwmtI+weIEnXw0aJ8kiT6u1yLABoDUuvCjbbtbyA9l18ZeBgOf9MREXLUdRaOwEd7tbw675BFS+342nnx8pmaseBG+WKd44omNyY2gVgSiNG+lrzR4TTQjX9HBUZmUYiQpLk8kO5HgvPoL1H6kbYsR99piNsnBTrtTPh0nrjJdNWlVLely9vu/A8cGzvlG55nMV/HLFtUAw5B0DsKbyiNw5R3w9bzXBBiBHn63q6DiNJd/7i0n5hB7bBSfWbqBQ+P26DiZqKC4pGjx78ZiK4egU5oI6nLQj8weD5aM5k=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB7183.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(18002099003)(22082099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VDVlS1VtRkg5L1dCZDBnM3FTQU1Rc1BveHFjRUN3VXc1UWYzSStvamVoNnV0?=
 =?utf-8?B?Sk9UWjlpUmNnZ2NrZW55SXJnZUtRSnR5Sk9GQUFYcTlJUEhpQXd4OFlpOVZl?=
 =?utf-8?B?UjZZTktpSkoxWE9mZE4yR0xLUHptdzlPZk1TUVpSSVlGanc1Ni8xYlFRcDBE?=
 =?utf-8?B?dVE0dkxPSG44OU02eGl3KzJUTWhBWHl4N1hyMERMTUp6WDRBZ2xHdU44a2ZI?=
 =?utf-8?B?VEVydGo2eFIwRVdhaSttTzNXNGE1ejc1cUVLMGIvSllJSU0vaHd5YzU2V2h4?=
 =?utf-8?B?aDlGQnhzQU1Famc2ZWZkdEhGOWNQTTQ5WUdxam1ZVTJCYXBJbEVpNmM2Zjcz?=
 =?utf-8?B?UURzaEFoNk9Cazc4V1hzRG1FT21GMEZ2a0oyZEFzWUQ5ZHJENHlGV2tBMzFC?=
 =?utf-8?B?Rmx0ZnZLZ20weENMUGs2YVhDNjg2NWRTQ0JQb2NZbHQ2U3F6NnpsWVF2Yjhk?=
 =?utf-8?B?Y0ZDRUlMcktpWUNlYWlLTGtSNXpxQjdFS1hFdDBmUTlsTno1OUJOU1VEMi9Z?=
 =?utf-8?B?TStoQUFocVJMWmttNkgrdnlpTzFXYlFvV1duWmdmR2xEVUZIZFdvU1lCRzYz?=
 =?utf-8?B?SkRNU3l5bTFEekZuVzVRNXVGa1NtWkt4UlRHZWVKQm13U0R0N050Z2lTY3BT?=
 =?utf-8?B?MldVWUd1cncwZ09LV3dmQThxVzdFZjhvN0hvSGxzd1JWalpvd1Brd0psRTRF?=
 =?utf-8?B?dCtlcVcxSmw3dTcxUEdDL0VmVU02ZDZCNDcxUm1sL2lzUzFrYnRzWFkwYnRX?=
 =?utf-8?B?YXo2bXhZTURKVU5KSDVXalhQUmFZWS81OGJERVZmNThFUEFydVRMRVI1ekla?=
 =?utf-8?B?ay91cE9GNDhjWHQ5V21mNHNHMThsK2JuNVNVQy85R0JCK1h1eDh6WmJ1SndG?=
 =?utf-8?B?ck15ekliOGdhSFpyQ2tXYzlUazI2VDVkdjk0Y09VNS9jRFFOT2hZVk54S3pR?=
 =?utf-8?B?WlE3K2tDelUwelpKaWtmOHBsUjFoQ2ZxQktheENtdFc3OWV5aFVzZlBYY2Nk?=
 =?utf-8?B?ckFpWUpGNytSMisrTHVPZ1BsYmhUS2lQZkRVQ1MrNWtKaWFkdDBWUVBsV2l5?=
 =?utf-8?B?TGkzUVVITlFDbXdFRlBOL1FGNTB3RkxnZ1BReFNDbDZxMVdiU0l5U1NJM0h5?=
 =?utf-8?B?cjZVYStLeldLZHlOdkJ6dXpvWFhEcHRQNThVK1hmM2R5aE91YVBQUGlrZzFQ?=
 =?utf-8?B?em93aWU4bHpQSjE1MmQ1QUJsN3BDL3BENWpNNDUzT2JVQjZYd2pKQ29mNkFB?=
 =?utf-8?B?ZTk1TmZuYUQzcUFuampBTlhDL3JuVlV2SmI0WERGRlYxbHV4NGhoOGh1dDVY?=
 =?utf-8?B?b3ZaYStqejF5Ym1WaUE0dENkMmh6WTRYVjBZUnViOEEwU1ZxN2ZMWTZyV2sy?=
 =?utf-8?B?YzZJbG5nanEweTRaZnQ4YmUyYzFkSUM2OWdwY1U4N0lobXBFckx2RGhzWTE2?=
 =?utf-8?B?d3ExdjZOaGRreG83RDBwK1NENFFLcmgyV3dXY0UxNEwxRTFUSEpjN0U4clJQ?=
 =?utf-8?B?d0dSVUpGMDV4a1BPZ2ltZktuejVLNmhFUlFqTDFzZHJrL3Z6LzlLZkJGSkp4?=
 =?utf-8?B?eFRrN0NNaXJ6MFhMMGV1dlNKL3VReDRoajE4VHBKM1ZhRHRIN2xxVWVvQjNi?=
 =?utf-8?B?S1E4YkdUSFl4Z1RjV3gvbFQzSU8zR1R3aUdMQmNkSXJvZXNzUnJDMnB6Uktr?=
 =?utf-8?B?ck41UHVnR2tUYjNwSHY3YUg1SVV2R1ZwRHFpMFAwd0ZqbW82R09XTEZCb0Jn?=
 =?utf-8?B?TTIyYUNzSUFKQVRkMUVlNDJXWjNRTm5VcEZLbVI1TnVMRm9rdkwxYi9NZUxJ?=
 =?utf-8?B?eFJ2ZXNhVGFDOXR3b0RVOVpwcytVWm9lM0xTdDA1RjZyeTRQYW9nWVIxUU9L?=
 =?utf-8?B?ZnFqZXNjMXJwYmtoSW1USVZMdG5RUG16YXBMQnZaQlQxVFpwWis0bVFXQXpN?=
 =?utf-8?B?bllRVVBUT08rZkFDODluaTlsSlI4TU1xQmNGOVhRUTQyTXNXTjc2ZmREODNU?=
 =?utf-8?B?bnJGaDRrZ21IckxKK0lCNjBYcmEyVVFhaDAxM2d5STlwTVZuOUpNQXJERC9C?=
 =?utf-8?B?Z2hGdk56UXJVTzlPWk1NSTJJVWcyc1hxSitVcWpxMDNzQ01HdFBtTWV2b3JN?=
 =?utf-8?B?U283MXhGWmNReEdwcTRIRnFWdVVGOVNEMFE2MWd4TXZhUjFGb0lMMkNaYVRs?=
 =?utf-8?B?cXJDekZwS1drOUhwbjlPcUtkZ1gzb245MTBLN2c0bWRqZDJBSFh6eWhkY0V3?=
 =?utf-8?B?YUd2cDNwNSs1RkZDZVdYTy91S2NrK2VkN1Vxc0ExcERHQzZmOFBQdnYrYUx5?=
 =?utf-8?B?c1FGQSswMUg1aGc3MXlPYVU3V2JTcENRS1R1bzRKenZjUERvZVNlRnlaYWZR?=
 =?utf-8?Q?TCQY6G+na3a0knvM8/TJDASXrBamlcgrZDF2f?=
X-Exchange-RoutingPolicyChecked: bVSWfm9Nrhweng+asljYGYtNdPienKb8gUkFaBAxnxc6MxmBtilqJCI4XAdwOjZnEi9Ff1DyZ8Lq41Jh5cbBw0dJis3M3hyRbF/CnCVNi72VxM2u35DcDgMjykYfLaAEqj8KDOSe1NJfNnoQp4pNPetgeQKysWf7xXy4s3HVQkbOGqxhyCstSPT0YEXTodas/QbLRB1y7193INo4uuj7EOdEBHet/0SSbRyQ3z3OUix4fzRK6lyM/GX1w88BQqV5ZkuyYRawBgoqQPETSL+oC+j4OAXFonrnJETzQene7GmP3w91aPBRIpjO1XIN6SiYiBLLoVKUmyb4lEJneE22og==
X-MS-Exchange-CrossTenant-Network-Message-Id: 51eaa346-7fbf-47d4-bccf-08de83557b9b
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB7183.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Mar 2026 12:13:50.5272 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Liu/717GnGRZ4/IsEDMhyIufriPmlSXliLPOXRrzihQzzOe9cgqgslPuUobavQX9R4p/VCmeEMMxIrInamf98vv/y2A9x47nxkVehL6nAGhQjWjzpp6HWphf3daTu3SQ
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6525
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
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dibin.moolakadan.subrahmanian@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[7];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 2AE9E299445
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On 16-03-2026 08:19, Kandpal, Suraj wrote:
>>>>>>>>> if display ver < 35
>>>>>>>>> mask |= PIPEDMC_GTT_FAULT |
>>>>>>>>>                    PIPEDMC_ATS_FAULT;
>>>>>>>>>
>>>>>>>>> Return mask;
>>>>>>>>>
>>>>>>>>> Obviously that is if PIPEDMC_ERROR works on PTL properly.
>>>>>>>> Thank you for spotting this, I think its better to add above
>>>>>>>> logic in new series rather than combing with 35+ bit mask update.
>>>>>>>>
>>>>>>>> Regards,
>>>>>>>> Dibin
>>>>>>> If that is the case then I think its better to drop this patch altogether.
>>>>>>> We have a justification of why we remove bits in first patch,
>>>>>>> that was a change
>>>>>> in NVL H/w.
>>>>>>> But this change was introduced in LNL.
>>>>>>> Without a strong reasoning of why you are enabling this is in
>>>>>>> NVL and not in PTL (which I don’t see in this patch series) I
>>>>>>> suggest you add this patch with as a part of the series where
>>>>>>> you have a use case for it. And if
>>>>>> there too you only add it for NVL You will need to add a
>>>>>> comments as to why this is not enabled for PTL.
>>>>>>
>>>>>> This patch intent to fix the interrupt mask for 35+.
>>>>>> I dont see any reason to disable this bit as
>>>>>> 1) error bit warning is already present in interrupt handler.
>>>>>> 2) bit is defined in bsepc.
>>>>>> 3) LNL it was mentioned disabled because pipeB triggering it
>>>>>> during first DC state transition which did not see in this case.
>>>>> In that case the interrupt handler is made to report errors if
>>>>> this bit is
>>>> unmasked for  >= LNL.
>>>>> Now this bit is introduced in LNL timeframe for which the reason
>>>>> to not add it
>>>> is mentioned in comment and documented.
>>>>> Similarly if you want to skip PTL you will need this to be
>>>>> documented with the reason. Which means the FIXME comment needs to
>>>>> be modified In
>>>> the least. If this patch is to go through.
>>>>> Also Ville can you shed some light, on what the H/w folks had to
>>>>> say regarding this and if they had mentioned any WA for LNL, and
>>>>> if this is fixed In
>>>> LNL+.
>>>>
>>>> I suspect it might be some kind of issue in the DMC firmware where
>>>> it's accessing unpowered registers. But it was never investigated properly.
>>>>
>>>> It would be good if someone could take that up and actually figure
>>>> out what's going on. The problem is figuring out what exactly is the
>>>> register that causes this. I don't think LNL has any kind of
>>>> RM_CAPTURE register/etc available for the DMC that would directly
>>>> tell us that :(
>>>>
>>>> IIRC the Windows driver did seem to enable the error interrupt on
>>>> LNL, but either they just ignore all the reported errors, or somehow
>>>> the way they use the hardware/firmware doesn't trigger them.
>>> Hmm would it be okay if we can move with enabling the bit for NVL+
>>> since Dibin says we don’t see this issue Anymore, while we add or TODO
>>> or FIXME in the comment to investigate this further for PTL and LNL
>> Yeah, I think the sooner we enable this on NVL the better. We want to catch the
>> issues early. For PTL someone should just send a patch to enable it (separately
>> from the NVL changes) and hopefully CI will tell us whether it's still a problem
>> there or not.
>>
> Dibin you can add a comment "TODO: Check for PTL if setting error bit still throws an issue and enable this bit for that gen too if it does not."
> Where you add the error bit.
> Ill take the AR and send separate patch series first for PTL then LNL. There have been some DMC firmware updates since then high chance this issue is not seen anymore.

I will add TODO for PTL in v3.
The actual PTL enablement for ERROR_BIT will be submitted as separate patch.

> Regards,
> Suraj Kandpal
>> --
>> Ville Syrjälä
>> Intel
