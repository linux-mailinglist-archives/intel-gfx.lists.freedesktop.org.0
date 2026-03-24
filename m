Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cFezETgXwmkHZgQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Mar 2026 05:46:48 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A56ED3020F1
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Mar 2026 05:46:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1CE0110E2BF;
	Tue, 24 Mar 2026 04:46:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nVkGXYcV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BD8A810E0CB;
 Tue, 24 Mar 2026 04:46:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774327605; x=1805863605;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=a721iKYO837N9a9R47Tw4hBCWUPTNl8ur0dGAiuVIaw=;
 b=nVkGXYcVJ0O1LWbmv2PXLL9u7PqI+Ex+PLc+p4wsQZIxiDc8nHb4EVLn
 mEALzpZdiwpvG3qoHgmj+7XNbuOdOPVQ4J5duTcHJ9qrfeA5ZL8/He5rk
 pGx0/j099dEAoZQa0Ek/QuLwAvBkDpgxCQB7I5zoidXAf0BOYbN6SNOTE
 5o2agxJw7cSUVAolfNYY/PGOjI3ZgUKoH09mBqz2OgcKJLmNAOsopHx3L
 BLUJ411pWDGGmDpQtAxPEk+vGZ5xGJj0hur9ToyOD5PBN0LzOBWAn8kE1
 0Vpb2Sr8aZPGwJpgEsl+snkyZGMEMmrJW5Innr2IsFc9KdoOHMpIfR7Rr g==;
X-CSE-ConnectionGUID: Eh/5vh27TY6SuG/pnmyGhw==
X-CSE-MsgGUID: 95p9gCTQRM2y+Qv6rioW5A==
X-IronPort-AV: E=McAfee;i="6800,10657,11738"; a="75308666"
X-IronPort-AV: E=Sophos;i="6.23,138,1770624000"; d="scan'208";a="75308666"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2026 21:46:44 -0700
X-CSE-ConnectionGUID: R0MkEhYgS/et5HhuQfvdog==
X-CSE-MsgGUID: VImCRoeUQBiGZnkliOLWwg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,138,1770624000"; d="scan'208";a="228726792"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2026 21:46:44 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 23 Mar 2026 21:46:43 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 23 Mar 2026 21:46:43 -0700
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.58) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 23 Mar 2026 21:46:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=c62y3guDNY7c28aMltdVhBBO8Ezc9BijD0ccNsv2KKritGVu1IqNA9lwe8FafDpdC0yx62G7xnNYimVr7P0urnUlnV7GAz/C0FPujzTSZrIW5/HbQBzmFg44XJhFhclpFnSufWNrEPxatQA9LkD3Pn1lQFZKhSSsph5QzbveJcpnj6nVLMbhWVqASuiFRfUDyP5jUNBLctz3Tno2lwa5Az442WllCif70X/r4KEYaK3o+sQnCB6qd8RxXXShkKbEqOyt/Cr0Zws6SolbFVC6wYvTbHj29+DjntTWO3kwvzQFSbRlsiyPX9mo9t92GCAcJl3Ibd3kdgEVwcNesSEDNQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=S/t1SMnQJLEIPrOXxahti1uYr81r8A2cfIZRQf/RkOo=;
 b=J/lRQWCS8laNRtWt7SYKLwAMLvi13C16WqoSZ0FzPbbgrsvejEnKb/XegtOgZH6JrhqJjCJP8V5IQhcnvM3uxxkAuashmUCkoIyqfRzPgmkVoq7gu4WrU36kl2g+U3u4FmFdVKZ99Ca5+Spf1NIL4yvLhgXR0vY5YdJlnMdJdW7N1D60dQLAc3/M+ZlXM0DENmr+Kiv1NLMzdioQfpom+eXbcEO/JxTjXs7eCr0eFAOnXqYeXzGwovDMTZieXUCQ6bbdUhMowgtluvF3QMNnoaatY7WZSEDcwGcgkplDjiYC+NrpT1A87lR/M31/Z9s/AiCZFwZXY46JYzCc36+TyA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by MW3PR11MB4620.namprd11.prod.outlook.com (2603:10b6:303:54::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9745.20; Tue, 24 Mar
 2026 04:46:41 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::9d4a:f89:f548:dbc7]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::9d4a:f89:f548:dbc7%6]) with mapi id 15.20.9745.019; Tue, 24 Mar 2026
 04:46:40 +0000
Message-ID: <8e23a56a-cd6d-412b-b78a-caf8e99ad247@intel.com>
Date: Tue, 24 Mar 2026 10:16:30 +0530
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
 <ec9b1e8d-daab-48a7-959a-bfc5309b3ea9@intel.com>
 <CAFZQkGxLWnrt1be4S6pJj0qVRfVPXkzvZODNNNKWjpD2NNTAeA@mail.gmail.com>
Content-Language: en-US
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
In-Reply-To: <CAFZQkGxLWnrt1be4S6pJj0qVRfVPXkzvZODNNNKWjpD2NNTAeA@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5PR01CA0134.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:1d5::11) To IA0PR11MB7307.namprd11.prod.outlook.com
 (2603:10b6:208:437::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA0PR11MB7307:EE_|MW3PR11MB4620:EE_
X-MS-Office365-Filtering-Correlation-Id: 003545e5-c44d-4583-a8ff-08de89605715
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|7416014|376014|18002099003|56012099003|22082099003;
X-Microsoft-Antispam-Message-Info: 9WtX+lAHiZsVcRih/ANhwWHYKkp4Ziu8mjfkkWHRbDctxHOiO8bGAX/8i4uwnIQYumZFrICP+Arr0nKMWiRbl/lfKgw+OWbdQZz8HicNiUM6DCE7y+OCgkO1iiJQt15ajZNwdGvQswmrwdLZb9Zu3ZfNzv1EnuHsggCwtxNT9Qc9wi5kRfP3H5BlocU6NoIOWQG0T9VPo+n9uXXRE/GC1YfjdN3Bv7K7gQGHtOkRnljkaKBr5LTWswqwp5TdOHWIx+SuJLr5EbyxsgZ8vqGfdXgHWQvF4npqr9MB4oN/ugS7IqSHzC24/6R/gywsWaeQxYEOVbt6p7hg/XM9SSGFwz1Uc3O4a+zLL6q1Sy2wxacWiBc+L/qSKfc2XvrSFmeJ2LjcAo7GQk21yHX3g1lh1TWLJxXrwWaQQ4P1x5TQa4dCX0H8t9C/2cu1muw3LfJlpNOrngUoaDiIp/r34p2AlHS78sd/4g2s1fJ0G8KmWHeUyfex09JBba3MCf886jO3xLVy/XzDRVH5tOy3mUmWH6kzCQcBesy9r6sLycSPS+L8GL50KV60Fg185cNRUD2YFlq2xIuqqqpPAdXTN9821ZwvJmHbkz5k9Rsfbpp0Gzc5stSPchChOyiowtBTr8Lq3jMeHNO4CeRZxDqTIHhmxEewsVEfoqRfmJNmYLGOVIe6ehxdKGDXdZjBjhbqpb8h
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(7416014)(376014)(18002099003)(56012099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TGRHMldPKzZCOXRqcmF2Ukgrajk3REppaTRVQUt4TmFQbW1XY1hmbFNNNVNr?=
 =?utf-8?B?cFhaRzQ4K3hGRDYvZFM2dUtvMklwYkVtUXJGOGhlVDA3ZEVBcklacEZhTyt0?=
 =?utf-8?B?WVU5K3ludFJtbURCcmVac1VEOXMzOGNnVFJCODBkLy9VakFYeTRpaUk1NmdH?=
 =?utf-8?B?VVRNMVZLTXpZOThsa0t1UWF5Mmt2a3gxc29YT2ZBaTd5emdUZzFDcVZqQ1dH?=
 =?utf-8?B?RVJ2dzIwUWo3OU8xcm1mQ1NYUkhnZVBPeWVEcG9zYmlUb0NEQUQvRXl4UHB4?=
 =?utf-8?B?K0hzVlI1aG5NNENIZkNXdWVpL1VDUXBGbjJvQkpzMEJEU1FuK3BXYStWSmtZ?=
 =?utf-8?B?VTA0RGUyd05JVmVYSXFwcEhZV1VKKzhzbFk4ZzdPVXpXOGJGekU0ZTlCVWtp?=
 =?utf-8?B?WEp2Q2NaazcvVDczMkxoTFgzZ0ZjQ2kyeEJaTnBGeVlhV1R0L3dCeE05Znpl?=
 =?utf-8?B?amFyUjB1TlpabnJTNkg4S2FqUnJWTGRNMWJXRUFCcmZvcGkza215QWw5SEcz?=
 =?utf-8?B?T3VlSXJxczdLcTBtUkJnNkUzeVFRWldhekJCQU5rbXkxclQwL0U1d1BINlJk?=
 =?utf-8?B?WVk2RlJkbC9Fak8zYVVzc215YlQyYkhkN1F3a3JXN2g4eTR3T2RnSmpjNzZk?=
 =?utf-8?B?Wkx3MnlZWm9nYWpHcDI5M1hzeXpuT0J5ak1zbmpIQjRLTXlJeXlZYWtneEh6?=
 =?utf-8?B?QjU0UUhEMHcyQzA1WGFpeTJQRzdKamZmZmR5cTlTTjN6VlllMU12R1N3NGlw?=
 =?utf-8?B?SkxJNWtKMnFqTkRob1VKOEMyV3lRTys5YnBpRkkwSTFzd1h4VmV5MFExWllY?=
 =?utf-8?B?SnlQcmtvNjJEazFJUW54L1pjQ3FnZTdNTXNyREtSbUVaWFdIeFk1bzVmeVdh?=
 =?utf-8?B?WU5ZTDFHQUNmZlJTWWphRlFyRS9nRXRrcmJscnVKUXMzaHR4aTdDYW90TDgy?=
 =?utf-8?B?bkFiK3grK1ZkSzF4ZFZEUXRrcnMvRGcyVWFueks0RGlVbmNtZ2tuZkpOTTlV?=
 =?utf-8?B?Wi9PajFNdEZUNEdLUVZZUklRcFJEK0c2M0x2TlNYTmFGMmRGNkl2N0ZsdUJq?=
 =?utf-8?B?V0M4aUlPaHZWa01HS1pBV1hkdkg1Z01iMGtULzN1VEJhTWRPS3dITjdzUVB3?=
 =?utf-8?B?SVJnVTlLOGVHcmxzeE54WGFkSUhiT0VSODh1ZW1TVEZJZTJJMCsrc3AySTNC?=
 =?utf-8?B?YzgyUmxCSVRQNGI2THpIR2NmRklEL3drcmR6MSs1MWM0QW1JTjE3YTF6WUcr?=
 =?utf-8?B?MnlwRWhFK2ppZHdITFR3ZExrWjhDaXRINDFoVXRFUGlEbG1OeGdVOEhoV1dZ?=
 =?utf-8?B?eUk0WGN0cDFNVDNvR2lEWitNMngzQzVHL0EvMUxGQUtRR0V0VzJ3Q05vM3pF?=
 =?utf-8?B?bkZqblNHdEx1ZnpRK092ZDFmU3l2NjRzeVBweFpKdDlaSHM2d1FiWmpwZW4r?=
 =?utf-8?B?TEVsd01qNXBTYnM1Q0FwY0RkTnhCaXVXQzRNVTZCVU5PNTk4ZEVzays4cWhs?=
 =?utf-8?B?MHhHSUkzQzZsUnZyZEZ3S3VJRlk5a0NITDM5bjc5aEUvTzYycDdyMUlUOW1P?=
 =?utf-8?B?cmlTMmliNWNtZ1RxK3YzR0lzSGwrTU9lL1p1RHNQNWxCR0U3b1NDcTIzVW4w?=
 =?utf-8?B?UVgwVkI4RjRaRjg0RzhaNG15UEdZNGE0UU9hVjlTMmNGY0lNQmM5b2J6Tkl3?=
 =?utf-8?B?VnVGOG12U2k1dVp4L0NVZ3k0Z21zdjhWRnlUdlp4UlBDOWJaWE80d2xyT2hM?=
 =?utf-8?B?NDRKYzNyM0lkamVrRFhHYmpNVE51NXQyMVZDZW0vY1R0RUZEN2ZLZlFTZE9j?=
 =?utf-8?B?ZTRiQUJ6YVRBNnl1MlRuYnRKWjdkazN6SVE1M2tmTS9WYlgvaUZkWVA1cTVa?=
 =?utf-8?B?SUloMlpUOWx3ZWdGZ1BmNVFzc1duYkNvQ1J2ZWdESVdVUjNpMGRHQ3gyL051?=
 =?utf-8?B?TzZURWJrT3JicUFENGtDYW9HTUlFT0pCK1B1RUVmVHpob3ppSlZMcHpmVTBH?=
 =?utf-8?B?aDJyOWtZV3EyV1FqUU0rdXdpdnVsWHZPSjU3YzNkQ1RLa1ZvM1g0T0FrZHU4?=
 =?utf-8?B?NDRhUVdUZm9kQ3J2T29GZDhHUVE2bXJnYmoxckN5bGhhNmNiRkpHTUhFMGJP?=
 =?utf-8?B?V2t6cnlzcnZvR0x0WkdBeTBRNlhLNFhtM0dKUS9odTJ4bVVzaHZSYjBrRlNP?=
 =?utf-8?B?eGwyb3hpaWs2M2ljOGxFY1ZpVnFWVzZpYVV3cUYwd2pYcUlrM3lENWZCclA4?=
 =?utf-8?B?YmV2ZSs0UEI2Q1NnVk1GMUdhK00yaHBnMXVZT0xRUDNuVkNLaEttQ3Vma1lS?=
 =?utf-8?B?blFoVXJlKzAxWmdKWVhLKzF5dmxTNTRuSHpZL1hhd2NlVzRJTUp6Zz09?=
X-Exchange-RoutingPolicyChecked: fzOv0Znp+pCVFZpYP3jyn16qIDNwvATizbgt181wOULh5rj78XreoG6jW+RWVg7BOCCCxSGlg2pkuWqM32DD1YLTWBrqFzdxjgFW+9cF1dBhnTv0IMJ3VJAxrZMLm0JAp9t284x0IGIgUupWFNvY0ORsIwU2RI2HxQEDeZ4y99tK7O2AqGXu6SBomg70VUEOpYFMOun5NYyzwdHomY9vuIo4AFVVu0kQjYjZhrZ0yNOuJ1p4G4xm50iTUmN7X20cIrWVaTh/Qye/IGqLzIvL0lO5rMc1aHJM3JSsRdYPbNFMUrtlr6J2l71m1nPGh/jnNQsiJVTYxpiz0oQPXGD5IA==
X-MS-Exchange-CrossTenant-Network-Message-Id: 003545e5-c44d-4583-a8ff-08de89605715
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Mar 2026 04:46:40.7722 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Do4MTye68kRe3LRyCA0ffEQtSIOv4GZh4rOTwug9YVqnVPvEj0cshp08E6fFeoaPn7mLPiA6ibkoNQMvjUCY5w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4620
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
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
X-Rspamd-Queue-Id: A56ED3020F1
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 24-03-2026 02:49, Xaver Hugl wrote:
>> Have added the remaining error codes to the enum
>> drm_mode_atomic_err_code, will push as part of patchset 11.
> I think it would be best to limit the enum values to actionable
> things. Connector and scanout bandwidth sound useful and pretty
> straight-forward to me, but the three other new values don't seem
> useful for compositors at the moment.
>
>> DRM_MODE_ATTOMIC_PIPE_BW
> Compositors aren't aware of pipes. What would they do with that information?

There are scenarios where two pipes driving a single connector, in that 
case compositor will be informed on the unavailability of pipe, on the 
other hand, if a given pipe scaler factor couldnt be supported due to 
b/w limitation, that would fall into this category. The object pointer 
would precisely convey the property causing this error.


>
>> DRM_MODE_ATOMIC_MEMORY_DOMAIN
>> DRM_MODE_ATOMIC_SPEC_VIOLOATION
> I can't think of anything a compositor would do differently with these
> vs. "unspecified_error".

Added this based on the feedback from 
https://hackmd.io/f3bDn3kyRUalLn4LbMfCVQ#Commit-Failure-Feedback

>> As far as the enum INVALID_API_USAGE is concerned, there is a certain
>> understanding on the
>> usage of the atomic_ioctl,  any miss in that would fall in this
>> category.
> Invalid API usage would mean the compositor did something it can know
> in advance is wrong based on the KMS API. It can't be used as the
> default value.

Understand that it cant be a default error, will add another entry 
DRM_MODE_ATOMIC_UNDEFINED_ERROR which would be the default one.


>> Some of them include
>>       - Driver doesnt support atomic, but still atomic_ioctl being used
>>       - Invalid/Junk flags
>>       - Async flip not supported
>>       - Flag page flip event along with test only is not supported
>> If changing this INVALID_API_USAGE to UNSPECIFIED_ERROR makes more
>> sense, I can change that.
> No, they're two different things. We need both, and unspecified_error
> needs to be the default for when the driver doesn't set anything more
> specific.

Got it as commented above, will add DRM_MODE_ATOMIC_UNDEFINED_ERROR 
which would be for default error.

Thanks and Regards,
Arun R Murthy
-------------------

> - Xaver
