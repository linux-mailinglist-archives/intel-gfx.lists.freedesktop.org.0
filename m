Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0HnBMBIHzmnpkQYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 02 Apr 2026 08:05:06 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C15638445D
	for <lists+intel-gfx@lfdr.de>; Thu, 02 Apr 2026 08:05:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 73FBD10E294;
	Thu,  2 Apr 2026 06:05:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mNa2BqJC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 03FF910E294;
 Thu,  2 Apr 2026 06:05:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775109904; x=1806645904;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=gvMhJPJi+dJQBoJU896bjOxpQqlJePK/QGkxlhAteow=;
 b=mNa2BqJCxzcuHougZRhUlsLR+xaHAfLkBVqykM5mNpzTxfTQdl5cNGqh
 kogl37JPhfg98fPKk8nNdk/PdarFCCfbCKQQHNwE3itVuzHPK7aaCJzhp
 yG8xH5DjiyJtrxRX2jB0NXKTyEF9dVzBRB2cTz4NPmwjZsYzUNpfI+3Ko
 5FfMoX6LDSMTLyi7L/HbLYwX2FlcLmg5xIVIekJeWGq8dYTnqIm//zPjQ
 fgE1kAYzBpkGoTrFlO1TpnK0pLrnXwX0yopt60KGn4lqpifnYWTZV01JI
 PBV1tk4m0atS/GU0gc8VNNR1CJ+kx63ZOsXFa1+NiSiYv2Qd3x0RqlvNo A==;
X-CSE-ConnectionGUID: ZXteDmj5SLCdUGTrZOeu1Q==
X-CSE-MsgGUID: ffi574oTTbmVQbQNaN3hzw==
X-IronPort-AV: E=McAfee;i="6800,10657,11746"; a="75337747"
X-IronPort-AV: E=Sophos;i="6.23,155,1770624000"; d="scan'208";a="75337747"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2026 23:05:04 -0700
X-CSE-ConnectionGUID: GxN46qUbSpm/Wp/SOV5I5Q==
X-CSE-MsgGUID: Oy3TJuBST0OSGbg6sIQLDw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,155,1770624000"; d="scan'208";a="264819960"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2026 23:05:03 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 1 Apr 2026 23:05:02 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 1 Apr 2026 23:05:02 -0700
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.60) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 1 Apr 2026 23:05:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=KEP28mQHv67A2zOuhcbnPVwOipbnRsLWWwHrlhNSNK2d+8UGnq+ko4GXZWsI9Nmufrkv2eBoQkaZjHM+8jPoC3MCSvEtRglf8ArB3RnxH4MLrTt4LvXmelE1BBgVKb9PF56dMMHz1KqQLQoqoz0nhly8s1S1Cj2APb7z7vKt+E82mUlrMQLFnJ1pCbrRKCip2+hVqyF4zOp+eMLfQhsKzHw3dfDsmwqn+kYNftisNAG9lZIBO3/Y4nHNOl3GEXaK1nNsr+zBycI45exAY/45KV+SKj8li1DxbRCfAZPBMny8cSGv4l0BDLDWnkR9viZ8i+v+kvJaNXWwRg1Xmuv9Mw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FNX28QW4hV1HrHA/t21ZYV9MFG/ByxItp58Eu9yiJ/U=;
 b=QCnhClrjuwMWspufbjL8XTiJEl96qHQ5UNZgDT2ei07M6trF9k5DCvRyShDQ6WPFTVV5Mb0zesxlMU7bocz4eBXPJscGtbB3T/kYHISfKzijGJgpJPtX093T8QODYWhFykArL3OeDCeurDkLXntlQeag5vN0GbnCHXqDH6tYcRRtiTnI5qLoL7qSjIBYIOGFhoJ0nqFoez8J0wyA/sI/V5V6O+boBdvjhHpZOQMsfyOoQyjJRZcOv6rbsxp2bePgQq6MljYQH2wBPaa7RT7z734MQ2Gzt6FpcndlRhLS352jlmJF/fTzlBjk53U0+GvCQrwUydqPtjzk8/y5uaHpRw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH0PR11MB5880.namprd11.prod.outlook.com (2603:10b6:510:143::14)
 by CH3PR11MB8703.namprd11.prod.outlook.com (2603:10b6:610:1cd::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.17; Thu, 2 Apr
 2026 06:04:55 +0000
Received: from PH0PR11MB5880.namprd11.prod.outlook.com
 ([fe80::b706:268e:9753:cdfd]) by PH0PR11MB5880.namprd11.prod.outlook.com
 ([fe80::b706:268e:9753:cdfd%5]) with mapi id 15.20.9769.016; Thu, 2 Apr 2026
 06:04:55 +0000
Message-ID: <46b46a4f-a730-4f6a-8991-82f0d3d5eab8@intel.com>
Date: Thu, 2 Apr 2026 11:34:46 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/9] drm/i915/casf: Integrate the sharpness filter
 properly into the scaler code
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 Nemesa Garg <nemesa.garg@intel.com>, <ankit.k.nautiyal@intel.com>
References: <20260326223139.19116-1-ville.syrjala@linux.intel.com>
 <67337fdf-1a98-4449-ac54-04b14805ad8b@intel.com> <acu_T8mBOpfZIJN2@intel.com>
 <3af4af49-5575-4109-8a5a-58c8de5e2c99@intel.com> <ac0HYijc2stYuO_w@intel.com>
Content-Language: en-US
From: "Sharma, Swati2" <swati2.sharma@intel.com>
In-Reply-To: <ac0HYijc2stYuO_w@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5P287CA0132.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:1d2::15) To PH0PR11MB5880.namprd11.prod.outlook.com
 (2603:10b6:510:143::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR11MB5880:EE_|CH3PR11MB8703:EE_
X-MS-Office365-Filtering-Correlation-Id: 90de874f-b003-408f-d0c5-08de907dc2f1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|18002099003|56012099003|22082099003; 
X-Microsoft-Antispam-Message-Info: jnuIuOthEhU0si4DOBAlCeqXN4aF9bzKjbdBntdiS1mQep3i8LiCzIMs1v5CsiJ2eUf8FZQCoC3QyW8Bkd6Oqw0vTWCJwQOYTnyBoOQqTyGEpYif8XaZZGhewLp/QncfPo3SND6Bv6G2g3v3h+ApPUf5y454bCbSmOB5CH62ohCu4zZSvQf0AD8p1FoaeHl+dQQXsSs7B4wWBTp6XFw+bgdplOXdYyyDdsRIMszsRkr+sF2oHCypirKGb5rv1v/mCU91ndSXUIC5P+J8TZwq9k9RLxQUywHwI1aP019f8csi45GY8mINZXk+y2N9/Yej59CcfYceXXN0/uhczQ7Qr/y9U4PUNSkHU8TQpKNzofcVMUaQo0rpD1tZrbMv4KUZTOsGFLoyLvaKrJfgWAoFJ4EHkDrfgRHPzZ6Pu7napRo3OL3i8k4TPpdoYAadwB3blp8MY0EA70VCDoVxn5getfIvA7b65529t7jPSKjWyZh4lPUMAxE+VmEZ/PkcqY5s0/rBwk/0gV2ZGxi6wDgDRyGA2gfHpjyze23d+fpw6mN4W0e27+AcNqp65kmCUk6MOxPoIkjn1eL7MNNGN68HB83EmjKVXaZ3iLWFh7H18I8qKga3UBdBkNJnCn7GGOe3q5LqmdeUhL2mbMjMe8nwwHt+97lXKLVb56ksJjUX23n9f0Tl2TRwoW3px/bhaX+4
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5880.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(18002099003)(56012099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZGhmVGJCbzZPak9WeDBhNmZSa2ptYXpBZHAyc3NsZVBpUElqbUxmQVdqNE1i?=
 =?utf-8?B?UWtwM2VGSWdFQUd2ZjRPM2hvNGhiNTdxUkRpK0VtdXVQWlcrdktDeStpK2dE?=
 =?utf-8?B?cSs1Z1hsMXlRL3ZxVWIwNkRnZXp5RE5helJIRTYrT05HUjZlalpzcGlrOEFt?=
 =?utf-8?B?NDd0b2M5bXlWR1BpSE42UHp1Rk5rSWo3WmM0cE9waWUvZ01zMGNaaHpiVUdi?=
 =?utf-8?B?bjdOQkRuekNrNWx3S29YSDlrRGpVZzZDYU0wd1hQUUtTQUgrZ0FKMGhRUFgy?=
 =?utf-8?B?V09VWEd0Y3NOWUVrY0wwNkhUVlR6bTRHd2tLRy90Si9LQ1cxS3JmSVFNNGFU?=
 =?utf-8?B?c252SjVROXdZY2tHWUh2aks2QXMvR2tMZUNvNUhYK1VtYUdGUGZwTzZjcnhM?=
 =?utf-8?B?K2NaL3drN2hJZHdRbEk4M0lIMlo3TXMydXJZcm9qWlpWOU5PK2F1aEpyMmMr?=
 =?utf-8?B?TXZZamlrWVhrcVlyYzRZVkE3MHlnRS9BcVE5N0RwTUJib1hFOGRyVEgwTVVV?=
 =?utf-8?B?RlE1bENGd2h1YWJJY2dqd0JJWEpoaFFjRnJZaTdCNHBaUEIyNXVRa0xIUFc5?=
 =?utf-8?B?VlE5M24xRTNOVng3ekJMNmlQSjFkRStmMzJSMnRMY29DSHBMSHhTRFRNYzdF?=
 =?utf-8?B?cEREblQ0S0s4ZjBSbnZhVHAybWMrb2h5NW9qR29RUzdkNDJQc21Sc2Z1KzZE?=
 =?utf-8?B?WGF0TmRYL3gzOG9JaHp3T3QwL2YzcWJvS1d1anM4c2pkSHdxcjd0MFVqSnBo?=
 =?utf-8?B?WU1veFZEd1NmTmU2dyt3RGxqUHAzWjcxK2tEclhKQ2drOFg0QmhuUUMxTFJv?=
 =?utf-8?B?aXNwMFR1a040TmwrT0VwUGZTSHJGZGxkd2NHSWV2N2FCamtDZjZuRlNFUk14?=
 =?utf-8?B?VS9BSENkVytpSTVyNnhiRnJwWSt5OE1VVUlVSW1tZmNHclBBYXF4UzNTMnlr?=
 =?utf-8?B?T2R2R09wK2tGeVNNZmhNNWs1OUVVVGQrYm9rTTAzWld4ZWdqODB5K3dnUkVB?=
 =?utf-8?B?aUVxRENxcTNaYnVBTCt0RmlaM3VuWUs1TUh4eWxBZHdKZHBBV3FRTDA2N1RI?=
 =?utf-8?B?ajVaL1BreGgwdGpTK2VzYXNWMGR6VVZDMW9aWjJYNnNPbWV0N0JEZ2JXc3Yv?=
 =?utf-8?B?clJuYjRhdmRLNkJRcUNud2Y4UjhtMm44TFJITkdDSmlHVWlNYm9Dd0NpYzZQ?=
 =?utf-8?B?VEtMbEZGVmxxVkZFTG90K2R6M1BGdzZyUTJ0R24ra09NbmI3U2w2czRQRGN0?=
 =?utf-8?B?U21FdFY5R3k2ektDc1gxb3ZOamtWeEpwRHZvN3NRdW5ITDRLU2pVYUNTQTFV?=
 =?utf-8?B?VGtpVWhPT2h4cnRtajJXOEFqOHB6M1BOQzBOVzlTbWZ6WXN2NnE0UGZPT0th?=
 =?utf-8?B?NUJocjhEZWw1K3Y1ajQwWTM5V0JoY3VJZkhpTmNtM3lwTGdScE10c084N0Q0?=
 =?utf-8?B?KzE5MVQwWFFWY05mcFdhYnpIVnkySVN5VDFxcGh3ajF4SXpVNUw0WXBCRnBx?=
 =?utf-8?B?ZGNKays2OUlOVnE3b1FYV09nWWtuY0c5dVpnYkd0ZXhpWlpXcTVXeVNFR2dG?=
 =?utf-8?B?WURCZEE3UHh3QVUxSHErMWMwUVI2bGlLTGx6SHdxOTlpdkNnZ1ZFb3k2TWg4?=
 =?utf-8?B?dkRtR0U1aUE3eGVQS2JBSm1iLzFyMGFkekZsWVg4V1BMZlQ4TldQL2QvKzVq?=
 =?utf-8?B?SjJyV2FhYTcwTlNSbExPWWF5RFkxVU1JV3llMzJROEZKQVlmSjJINW5yOGl1?=
 =?utf-8?B?NlVtcnJka3FPNllUMFZwSVNhM2srMXhLaHF5Z2hjY3prN1YvZzJxNmdzMUVI?=
 =?utf-8?B?anFQU1R2S0VyeU4rQ25acDFMM3luWHpIY1RBaTRYSjB4RHVQZTNxYTVvVTVM?=
 =?utf-8?B?U21GQ2lIK0gvb0RrQkZvV0YrS2FHWDdDZy91cDFvZU0ybi9mYjd1TWEyWkJQ?=
 =?utf-8?B?REp6bGtGZDFQZ0ZnM083eDJFYVU1U2ZlWVp1QWpyMWZqSHhPUkhBM1FjRTBh?=
 =?utf-8?B?cUdLQlNTYmVFOHBIb2pMWDA3eGprZnpVT21mdUZOejFVUFBZNjRYQlJqZVBC?=
 =?utf-8?B?V2lYdEUyQ1gvNlcwMkE3Tnlza0drakgwcS9zbExpT0tRSkduSWFlYkI1WkdR?=
 =?utf-8?B?U2JrU2pjTWhOK0taN3NkOGNObTRTaDFuMXk4MlRtakM3c3VzY2w3NGFHd1RL?=
 =?utf-8?B?WnhYd0cxd2p2OTR6by9kZnhRMnNmTHVOUC9SMk1jOTRQTXhLUmg2K2NJWXRV?=
 =?utf-8?B?QnhjZTFkVndzcnpBaTRrKzJsNFk3bGZIQkY2K0lpZFdMZ1lHMmR6MkZBMjR4?=
 =?utf-8?B?M0tNeVBLSUFTalRuU2FYKy9FcnNBdG4wdG50RWRGM1NNLzBBL3R1ZitkVlpa?=
 =?utf-8?Q?oafLVJB0IV7TKgCU=3D?=
X-Exchange-RoutingPolicyChecked: eqy1L9w66SUhmeNeIFLqL+KVqVWPT4r6B7vGqCzf9Ck/6A5KQfj+ejW8i8EQIw/W4y9w7mbSE9qlK6pa3e8X0kPVUJrF66kK8idVczB7RJzKa5iT/lkgaEBB44BX7HCreaKF5+IV00enWm4QTN/Ek3StPQbYhT8tXLQgyHO5EvUyaxCE1YOaCkazloQooPpN+brPp8r/qgqNFbVVaPEatWa3opscdfu24NhiRRxVbVP0pIZ/mBpdlowp631Wj078hNEE8iLq6mxf2QRLpoOWsC8dBFJHuYAoiH9pQWVinon8jsbFXL2MnPnhyoJQOhX8GuL3YkpDtZWMZISF7Bco5g==
X-MS-Exchange-CrossTenant-Network-Message-Id: 90de874f-b003-408f-d0c5-08de907dc2f1
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5880.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Apr 2026 06:04:55.3290 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: xykLzUJutRY/68I/79k5RspWuI2Eg+DKiA+MZuWIWMqZ1Vefv1NGv1dzwjXGs+RL3xEurvI+yzI033RaJnn3lQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8703
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[swati2.sharma@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,01.org:url];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 2C15638445D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Ville,

On 01-04-2026 05:24 pm, Ville Syrjälä wrote:
> On Wed, Apr 01, 2026 at 11:32:30AM +0530, Sharma, Swati2 wrote:
>> Hi Ville,
>>
>> On 31-03-2026 06:04 pm, Ville Syrjälä wrote:
>>> On Tue, Mar 31, 2026 at 05:10:42PM +0530, Sharma, Swati2 wrote:
>>>> Hi Ville,
>>>>
>>>> On 27-03-2026 04:01 am, Ville Syrjala wrote:
>>>>> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>>>>>
>>>>> The sharpness filter isn't anything special. It's just another
>>>>> mode of the pipe scaler, so treat is as such.
>>>>>
>>>>> This gets rid of tons of special casing all over the place,
>>>>> and will allow me to finally land the pending pipe prefill
>>>>> series: https://patchwork.freedesktop.org/series/156137/
>>>>>
>>>>> Note that this will fail some kms_sharpness_filter tests,
>>>>> because those tests are basically incorrect. But I couldn't
>>>>> decide yet how much of that entire test should be nuked. It
>>>>> seems to be doing a *lot* of things, most of which have
>>>>> nothing to do with the sharpness filter...
>>>> With your series I could see only 1 negative test failing -
>>>> invalid-filter-with-scaling-mode-center
>>>>
>>>> https://intel-gfx-ci.01.org/tree/intel-xe/xe-pw-163952v1/shards-all.html?testfilter=sharpness
>>>>
>>>> Is it sharpness and scaling-mode-center can work together? Since
>>>> scaler-mode-center doesn't require
>>>>
>>>> scaler.
>>>>
>>>> You rightly said, all tests are not related to sharpness but covering
>>>> valid scenarios for scaler + sharpness.
>>>>
>>>> Apart from invalid-filter-with-scaling-mode-center, which other tests do
>>>> you think are incorrect? We tried covering all valid scenarios as per HAS.
>>> I would probably nuke all these:
>>>
>>> Nothing to do with the sharpness filter since
>>> it's on the pipe scaler, not plane scaler:
>>> - filter-modifiers
>>> - filter-rotations
>>> - filter-formats
>> Ack.
>>> Doesn't seem to test anything at all:
>>> - filter-tap
>> Intention of this test is to validate different taps. As per spec,
>>
>> different TAPS will be selected based on different resolution selected.
>>
>>
>> TAP 3: mode->hdisplay <= 1920 && mode->vdisplay <= 1080
>> TAP 5: (mode->hdisplay > 1920 && mode->hdisplay < 3840) &&
>> (mode->vdisplay > 1080 && mode->vdisplay < 2160)
>> TAP 7: mode->hdisplay >= 3840 && mode->vdisplay >= 2160
> AFAIK all it does is try three different modes on the CRTC,
> and then nothing. How does that verify anything (other
> than the driver didn't explode)?
Right, when we are trying with different resolutions; though from driver 
different taps are

being selected but from IGT we don't know if its correct or not.

> I suppose it could be verified with the chamelium/writeback
> based test. But right now this test doesn't seem to do anything.

You mean, shall i add this test on kms_chamelium_sharpness_filter.c ? 
Currently we have only

basic test enabled there.

>>> Maybe a decent idea, but really wasteful to have these kinds
>>> of things for every little feature, as opposed to just
>>> some generic "did we restore everything after dpms/suspend
>>> correctly" test:
>>> - filter-suspend
>>> - filter-dpms
>> True, but we did caught an issue during local testing with this test
>> where we were not able
>>
>> to retain sharpness after S/R.
> That was likely due to the poor integration with the actual
> pfit code. So the sharpness filter needed all kinds of special
> cases everywhere in the driver. I'm fixing that now.
>
> These kind of tests burn a lot of CI time. We really don't
> want them separately for every little individual feature.
Ack.
>
