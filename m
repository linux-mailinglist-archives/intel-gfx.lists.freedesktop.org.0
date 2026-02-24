Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mL+HDG1TnWk2OgQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Feb 2026 08:29:49 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 73C60183090
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Feb 2026 08:29:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF39810E4C8;
	Tue, 24 Feb 2026 07:29:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dWCASxm+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BDCC310E4C8
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Feb 2026 07:29:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771918185; x=1803454185;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=dCpOpCz+sbJnlgF50koVK/QA9MYrzvAwUC5k+I52zBc=;
 b=dWCASxm+FMFhS6d/+Ioij372kxMjMi81coX4wCldPhgreJ0NCsAGNDDs
 SlEmUpvVHHbL7nNuG7rojXQiRgxoBetmVHoNwGLmmMvoH0aBL+9JTcifR
 UgFiyuL2Ec2gsOE7DO1oa+vIXAn7H7aHPUS5Bprl8flX6RGjKH4X/rz/p
 IkC10TbaiQ5v712mIYOmsriY5Bo3RwNtbUEkSdeZ0SQD5ILn4HbsiLELV
 XYk1FSfp+Tj4pa1hqyL5Bas22ElS0Eqq0qQEawkKcis+YPyqvLraMAg6v
 My+9ESfaVoy2WzpUInbXEm5bSOrlVlV6XvB3OpfM516j/8XLWYrLjEboA A==;
X-CSE-ConnectionGUID: YdO5uHBTRkSG7XDPUEvn3g==
X-CSE-MsgGUID: 4r6DVxd2SkSJEv22iSZUyw==
X-IronPort-AV: E=McAfee;i="6800,10657,11710"; a="83249083"
X-IronPort-AV: E=Sophos;i="6.21,308,1763452800"; d="scan'208";a="83249083"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2026 23:29:45 -0800
X-CSE-ConnectionGUID: mbU/r2piQrSRvGQE8LP0/g==
X-CSE-MsgGUID: YLRnORwDQsGSDTPCYciT2w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,308,1763452800"; d="scan'208";a="214079952"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2026 23:29:44 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 23 Feb 2026 23:29:44 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Mon, 23 Feb 2026 23:29:44 -0800
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.9) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 23 Feb 2026 23:29:43 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=cVQGHo7tRQhTR46Hl/KQrQ/dScLVfup3uR2+KE4QcCAFgMtx/Cf4BUZAC7MzUSvxohB7HtSiN09GjOw+lRPvUEO4jtee0B/4VSJpQ4Ao8QpROtKWJmwXuoMwt+S6GqthnAZvT2Iui8mxY78Zc2JN5lRdIL4ANnNDHVjfFIFOBwSg86eG3H/cTqikhmxMeMr6OS4AxGas6DZlyC6XSN52eNWkJxrt1sQwe2PnWXXkCYfyQlFcoDP9wmuIexL6YaXQPL7oxnTt5y0SHVkZgzzblg+tN8cTkBLA0XQjFY6qqoEvFoI97hjWvWb0U4tS1dr3bt4t6fn+MLv0NjzVwax9Gg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZIiXhp9wErXo2R6qx58r4hIKVjedOtFJeTejZ3PlpTY=;
 b=XqBYy8M4Ud53ztJqZKG/UQBKRNhWAIfKt3Qb0EammGhjR5DB/tCkYVjaMV0lJRFQY4A3ObM0k/DNpks7nYmFYmnpE7r2w8wo7oZ76h0M2vIJBad1vL7kouRerogE9g9EkHumz7GIIBika/mACPlmIG7eW8LVHKNPaPCBJ/Ac9LNeDn11T37hmgJJygpSNCGQ0rZuPAWZ8L5sZLx7w/pd7Kj6HWmTWWv7/Czv0jhOh/+qILXnEZEs5+X0x/lGrdihaxgxoC7vCVpc66iapqbLYB6IDUyHArBY180XOVySyvSsMGoPUS9yTPxJUzD3EUwwNbaHuNesV2gH2mLHKBDp2w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH0PR11MB5064.namprd11.prod.outlook.com (2603:10b6:510:3b::15)
 by IA3PR11MB9208.namprd11.prod.outlook.com (2603:10b6:208:57c::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.16; Tue, 24 Feb
 2026 07:29:42 +0000
Received: from PH0PR11MB5064.namprd11.prod.outlook.com
 ([fe80::84fe:e701:add1:4de5]) by PH0PR11MB5064.namprd11.prod.outlook.com
 ([fe80::84fe:e701:add1:4de5%6]) with mapi id 15.20.9632.017; Tue, 24 Feb 2026
 07:29:41 +0000
Date: Tue, 24 Feb 2026 07:29:32 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
CC: Zhenyu Wang <zhenyuw.linux@gmail.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "Gupta, Saurabhg"
 <saurabhg.gupta@intel.com>, "Zuo, Alex" <alex.zuo@intel.com>
Subject: Re: [PATCH] drm/i915/gvt: Cast u64 array to u32 array
Message-ID: <pojuf2jviggfuscyqq2opithluqiveadipmlgfvt2ybwxmgp6u@5pmz6nqbmwhh>
"Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316"
References: <20260212194131.64708-2-jonathan.cavitt@intel.com>
 <87o6lsylfd.fsf@dell-wzy>
 <CH0PR11MB54443A11FDC0B6F6F780456BE561A@CH0PR11MB5444.namprd11.prod.outlook.com>
 <CH0PR11MB5444B87752A4775159D76F29E56BA@CH0PR11MB5444.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <CH0PR11MB5444B87752A4775159D76F29E56BA@CH0PR11MB5444.namprd11.prod.outlook.com>
X-ClientProxiedBy: WA1P291CA0018.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:19::25) To PH0PR11MB5064.namprd11.prod.outlook.com
 (2603:10b6:510:3b::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR11MB5064:EE_|IA3PR11MB9208:EE_
X-MS-Office365-Filtering-Correlation-Id: 8d32850d-1419-498b-a3a6-08de73767975
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?RzQ3TUtnRkk3Vm9IYzczcjBOd1lmZmtqY2RMT2dWMDV5M0tYUGlBQVRPY1lq?=
 =?utf-8?B?SkRydXRiSXZxR2lta1FsLzNJMXlHcmI5ZkIyTEhQYTNlWFJqaEpHZEF1aXhq?=
 =?utf-8?B?QTJOMTFqc2hnaWF5TmdOWlBOU2t2akNVNkFsK29lUHdCOWFWa05DaWJKRFNt?=
 =?utf-8?B?Q2dLRVZtNlZBUjhyemg5VW5QUjlRWlV6U1gyQ2xLSHcvMFNaQUp1U3NQYlFZ?=
 =?utf-8?B?R1hXaHFmZHh1THc0T1crZjArMU9CNjJuMUxBVnNZM2RKZWZqajk2cFFHRi8x?=
 =?utf-8?B?M3QycWVSemhRQzY2SUV0MEpvNkZxQ0dYWmRqL2d6cGFYUndLVk1kS3BWMXdC?=
 =?utf-8?B?cTR3MkcyUkM1b2xuRWhicmVDK09rMkwxemc3ZHdGclYvZndOZmJCTkdlcVoy?=
 =?utf-8?B?K3JpWmpzQ1VMYUpMRmw3cGprUWMxRmxFTlVrK0dKNHd3MFZpazB0NnVaNkda?=
 =?utf-8?B?aXBNNnhybnFtRUpFMWtqNlJKL2VIMGlTNzByeGxQSGdjQnEzZ3hubFF2Z0Ix?=
 =?utf-8?B?eXg5WHEva20xeGJHaXdwZlFIUUJQUmVVcDZveXdYV1BJd3VzcWk2bnh5ejBD?=
 =?utf-8?B?STk5ejhWbnMrUUN2MmhZQ1ZsOGdsRitKdmpiUDR6VWVaMCtac2RNeEF0SG1R?=
 =?utf-8?B?OXdZRUNmNWs3RFpKVUVaL2VsZnRjNGdqdEVxVVpFWG5KTlcxVmsxV2FlamZ5?=
 =?utf-8?B?U2YwdlB6M0R5a2U5WnVzRjUyekMvbm9rdk44OGpHYzdzRjhyUTZXOGltUmNM?=
 =?utf-8?B?YlNOOGRZa29nNWFEb2M1U2w1V3NZVFcxeFgrK0Q4YWpPRjlibEthc0piTFh4?=
 =?utf-8?B?WmRRTy80NmlET0lzS2VwdDh5T3p1a3ZyQnJTdFA5TVgxazgwUENQcmltOXA2?=
 =?utf-8?B?cWl5bEUyeVhUOFRDdmdPcTJRNGtmMTFGMG5CMWxpYWtOMUY3RWUwUFpxTzdT?=
 =?utf-8?B?VENYZll1cXpSOXY2R1M0b21qWi9TWE5IN0w1cy9XQ0MyWC9idGQ3YUFtTFVw?=
 =?utf-8?B?Z2FJSmhMNXVoOXJnV2JTVVphOFhlMmljQTMrcGVtQUpPdXR2OG1IaEpxNXV2?=
 =?utf-8?B?Yzh1d3g1YStZQTNjMUw3R2FwN0VvNm5mY2FuaXFieXM2WWZhRWVCeU5tYjBU?=
 =?utf-8?B?M3N3ajNkQ1dUZzl4ckFuN3BvY29yT1k0YTJodzRzV1NJSFRXcnl1L0VpWUVl?=
 =?utf-8?B?OHFNSndMUTFNQ09JSG9taGRsYms3NUxjajZrbjJ3MnZlY2djYXE4MWJWdTBp?=
 =?utf-8?B?OU1wTTBLbWFuL2dqZW5sVnd1ZWJTT09yRnFqZ3Ruam1kU1p0dFA2bXQwRERN?=
 =?utf-8?B?WStXVVFDYVBMbjNKSzhSR3JzNGpzaUF5U2ZHWE85UWFFbUpFTlgydlRqOEI0?=
 =?utf-8?B?MDlKSTEwVUFoZ0Q2OTBNVXQrYjVOL3E4ZnZMcVFqWFhPTmZBMXpzZ2xkSkJM?=
 =?utf-8?B?WFZMaGVCQUl2WHZSb3NWZnF6ZjhvRXN0ZzhvdFc0K0o2OTZJSi9oV1czclhk?=
 =?utf-8?B?dGNBYzFGU2s0STVqSktab1MwQWpDb2Z4SDU1UE9ZOTJ0MU1yeWhtd0hrd3lp?=
 =?utf-8?B?NE9Pd0tyNHcwL3ZxSUtiNE1kUW1xekVISDNuMVVTTjVibDd3WE05dlVoSy9h?=
 =?utf-8?B?aE1saUlHWlQ1TnlMb1NFRmJkK0ZVU3ZBRU1EcUVkK0ZmcFF0ejhwaDBSeVNC?=
 =?utf-8?B?bStvYXEwMTFPQzQ1blZ2ZTlSaHJDaVp1QVppT2Z4bGsyQVl2dllTWklUeHR4?=
 =?utf-8?B?U3U2aGJ4OVZ1OFhYb3hDaGEraUFYczVUV2taRFhwcDZJNGRaeUdQcGo0ZDlx?=
 =?utf-8?B?MU85bWZkb0ZQZ2Z4R0RLd2FOVGJEcDYrWjlsd1lQM21nRXlJcndQV1pGRS8x?=
 =?utf-8?B?YW4zc2VkQ0UxUHlwT054YjNPTVM0bHVYc0w5N2p6ejZrTE93OTk0OFhIcWlw?=
 =?utf-8?B?bFhiS1BWZTlsMElQUnNDdEtnVFlkVVZSN2NGK1N3dHV1TVdQd2VtK1M3U0ZL?=
 =?utf-8?B?MlRWeUExbS8wUFI1UXpXNGdLdEpHR1NXVTUyYm1kZjNiTjh6bFR2TldwOFN3?=
 =?utf-8?B?eEFuTHFDZk95V2laYjZvSFJBZWQvMWxjR2pQN2R5U3NHWGY0cENNWjRUenll?=
 =?utf-8?Q?pbNQ=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5064.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ek1DMTc0TkpOMS9UZWM0WVJCSGVDNnNOdjd4bFY5cXh0c1JYT0RENWRCSE9P?=
 =?utf-8?B?d3I3djYxcEF6NmZ5UUxhS0VVb3FnMzl1OXpkeXd5dG8yZW5ySnhQY0hLMlRv?=
 =?utf-8?B?MHdVanJ2NGE4czJHN1ZJYk5CczBIY2VKZXBIa0RocjJRZEwwNm4weWxIZmNF?=
 =?utf-8?B?YkhLV3Y4YzJER2pIMVhMWGJzWkROdFVYNzdHM25XdHZoOFFGQTRvYlVYSkpF?=
 =?utf-8?B?Mi8wTm9UeTVlTnhPcWd2U0tHVkpVektkbFllN0d3UmFOTkxxTUorSk1KdFVm?=
 =?utf-8?B?VWVWdkxjNUd0ajlVdmJoYjZhU0ZMbHg5RG9FMHNFSU9xMFNDTnBiWFpWU2dn?=
 =?utf-8?B?ZzhXbXEvcTZwZmNvTkdXTk9tcG1EVXZ0bDBoTVByV2M2L3JRTWRZQldWZzFK?=
 =?utf-8?B?THh1ZmRoOGw4N2F3YjFBUjZPMGs5ZWp6OTZITVJXaWpuN0IyT3lvNjc0MFVK?=
 =?utf-8?B?c1RvQ2Q0aVVucEQ3a3Fpald4UnpGRlZJNHJlVHR1REp6cUN1aERVVHRVckNt?=
 =?utf-8?B?SDl3NFIzY2xsTUc0SGl5OUxidk9CeG5QUVFMMzJNVjlzbzc3Wm4yV2txVTJH?=
 =?utf-8?B?WGtkQjEvR0JQRm1uWjBnQ3MzTUNiQjcwWVQwbE1od0xVc0VKQmIwaUJDK0Uw?=
 =?utf-8?B?WDZQcnVNeG15dWF0dVpZSUFBS3NycFdYTEcrN2RiOEZCbnhxSGRBU3hNcHdj?=
 =?utf-8?B?UVRKQTBNWUt1UFg3a0hMb0lPd3NaU2RBaWgvN3FmT3NPQ1k2NFNPaWFOZjRC?=
 =?utf-8?B?amVsYVRGRm1hZnFPanJHN0VQdk5OWXhsRnVRbHRhT3lZbVZRMzRqYlZxWlFO?=
 =?utf-8?B?Y1NsUGlRQXJvMWNSRjdNMk9hL2dpZER0THlraW50WXlHRURka0R0TE1OUDBo?=
 =?utf-8?B?V2FsTHlOeGlQcUhOaFJVVmVVL0tKdFdxZkxNSWJ0TURqUDBaQk9Uc2R2T0d4?=
 =?utf-8?B?dGQwY1J3NkwwUmFTSUdJTllBbXJldEI4bDBHQU5uYndCZ0RCWENja0N0cFBT?=
 =?utf-8?B?d2dZOXNrbSszSHI3dW1qV2s1NGc3a3BvMXp0QmNPcmg3N2tmNGVBMDROcnhW?=
 =?utf-8?B?cnRKUFhGelZCMys4ZW9sUm5HWTJnK05ZcTlkTUZuOTZOV1ZHVW1xbXZnQ2RP?=
 =?utf-8?B?TWlMLzRqVk5TR3VqUDZIRFFTU3d2dDd4SWFOVnpOTlgyNk02d3Y0N3I1YTNn?=
 =?utf-8?B?ekY0NXoxZDJyRUc2TWYyZEx5UFMxcWtVMmtDa2tQbmE4SVRQc2tNUmdIUFB1?=
 =?utf-8?B?N1lmbHlrMmV1bEpLRC9wVmdIN3dEOCt5RnAycnhwUHhxN2ZWVE5rbnVFajRx?=
 =?utf-8?B?bzUxemROWFZWendwaXl1aVRKOVduT1hORHJZZC9lK0FBV3Z2Wjh2Zjd2M3dj?=
 =?utf-8?B?RE10ZGcwNVc0TVJPU2pXM2dMbWhKa0FSc1l1OGx4bFM4cU1adU1kZjZoeG1F?=
 =?utf-8?B?b1ljOEdIOWk5SVo3RXo2WXc5U2tyS05oWEF3dmdDUVFNU1FIUlZxOEg4VW9K?=
 =?utf-8?B?aTlXSFBOb21aNzlHWTBVS2JFQ2pEdGpTVVcwY2kxZ2haQlZ6QTlSQVFKOHZx?=
 =?utf-8?B?U0JDaCs5VFN1eW1wcnQzc1k1VU1reXBmbHdoVWF5N3dMakRjVlFEUm9DUWpZ?=
 =?utf-8?B?TUc4QWpFSVYyQXZQRUhhVm9oU3dFV0N4bCtWTTh5VTlaTExhNWpQYUs2UjNi?=
 =?utf-8?B?WWY2Tm5nRm1iNXM5NDBsNnRscXdzdGpnakhCZzEzRXcvVjU0ZE5MZk1odVJW?=
 =?utf-8?B?MTB5c2krc1hDWDBtaHNJOEYrNmFYOGdvdVgyRUFzNVdxMW9XMW5mYkFMeFNS?=
 =?utf-8?B?RXVaamV0UEl2MkxQNUkvL3JPWmw0d0VNU0ZxY1ZQeWI4U0lSUzl4Q0hOQ0Jl?=
 =?utf-8?B?YjhRMHRUMFhuRlVVM3o5U2o1Q1FocFIwZ0hnZWRKVmpJcW5RTmhMcllVc2Vq?=
 =?utf-8?B?Z0FXQ3dpOXZrNG1RWWhSdFY2VjEzaGZwcnZwWElvM3hLaVJpS21DdEdGR2pp?=
 =?utf-8?B?WU1IaUQ5dFN4Nzl5cTdreGRKWkxKd3BaLzJtNmJRc3JsK1Y1a1hVclVRei83?=
 =?utf-8?B?aGdQeWVuVE9KZjA5M3phTHVCcFVJU01pTy9QQUkzVDBaL2NxMy9CRmpiY3Vq?=
 =?utf-8?B?a1A3bDBSWUtWbXRXTVladlFXSEkyMnBGSWNtNXkzTDBwNTU5ZTFTOXl3S2xx?=
 =?utf-8?B?STRqOGlrVGhoYkZxbVlnU3R0UVorTlc2NWZIb2htTGc1SExMOU1yWXJsTE0y?=
 =?utf-8?B?NkhUalViVVozMTREa1RSVTkyVmoxS2U1KzVadk9ycHF2VkV5M2xna3RjeTlV?=
 =?utf-8?B?UGEwS1kySGxkcmNTTkJoeWlBSjVrNWVYdXd0T1djcUdURzkrSTYyaXpwaHM0?=
 =?utf-8?Q?cjIMkMeIxfZ20GPQ=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8d32850d-1419-498b-a3a6-08de73767975
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5064.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Feb 2026 07:29:41.6557 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 35wjvTH5vH6x777ZLW7ndLwZch0RgE5YqQSgmcgyyJouv+Zs+qRZQ4zEnLtpIdJ4PPAKrrj2UwVQJNQ/5A4K6YBmzijgHaf4Sc6j8PBNqTc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA3PR11MB9208
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jonathan.cavitt@intel.com,m:zhenyuw.linux@gmail.com,m:saurabhg.gupta@intel.com,m:alex.zuo@intel.com,m:zhenyuwlinux@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[krzysztof.karas@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim,lists.freedesktop.org:email];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_FIVE(0.00)[5];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[krzysztof.karas@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,lists.freedesktop.org,intel.com];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 73C60183090
X-Rspamd-Action: no action

Hi Jonathan,

sorry it took me so long to get to this topic.

On 2026-02-19 at 20:43:03 +0000, Cavitt, Jonathan wrote:
> Pinging Krzystof Karas for a second opinion.
> -Jonathan Cavitt
> 
> -----Original Message-----
> From: Cavitt, Jonathan 
> Sent: Friday, February 13, 2026 8:28 AM
> To: 'Zhenyu Wang' <zhenyuw.linux@gmail.com>; intel-gfx@lists.freedesktop.org
> Cc: Gupta, Saurabhg <saurabhg.gupta@intel.com>; Zuo, Alex <alex.zuo@intel.com>; Cavitt, Jonathan <jonathan.cavitt@intel.com>
> Subject: RE: [PATCH] drm/i915/gvt: Cast u64 array to u32 array
> > 
> > -----Original Message-----
> > From: Zhenyu Wang <zhenyuw.linux@gmail.com> 
> > Sent: Friday, February 13, 2026 2:42 AM
> > To: Cavitt, Jonathan <jonathan.cavitt@intel.com>; intel-gfx@lists.freedesktop.org
> > Cc: Gupta, Saurabhg <saurabhg.gupta@intel.com>; Zuo, Alex <alex.zuo@intel.com>; Cavitt, Jonathan <jonathan.cavitt@intel.com>
> > Subject: Re: [PATCH] drm/i915/gvt: Cast u64 array to u32 array
> > > 
> > > Jonathan Cavitt <jonathan.cavitt@intel.com> writes:
> > > 
> > > > Static analysis issue:
> > > >
> > > > The u64 array workload->shadow_mm->ppgtt_mm.shadow_pdps is cast to a
> > > > void pointer and passed as a u32 array to set_context_pdp_root_pointer
> > > > as a part of update_shadow_pdps.  This isn't wrong, per se, but we
> > > > should properly cast it to an appropriately-sized u32 array before
> > > > submission.
> > > >
> > > > Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
> > > > ---
> > > >  drivers/gpu/drm/i915/gvt/scheduler.c | 6 ++++--
> > > >  1 file changed, 4 insertions(+), 2 deletions(-)
> > > >
> > > > diff --git a/drivers/gpu/drm/i915/gvt/scheduler.c b/drivers/gpu/drm/i915/gvt/scheduler.c
> > > > index 15fdd514ca83..1a95c9f76faa 100644
> > > > --- a/drivers/gpu/drm/i915/gvt/scheduler.c
> > > > +++ b/drivers/gpu/drm/i915/gvt/scheduler.c
> > > > @@ -72,6 +72,7 @@ static void update_shadow_pdps(struct intel_vgpu_workload *workload)
> > > >  {
> > > >  	struct execlist_ring_context *shadow_ring_context;
> > > >  	struct intel_context *ctx = workload->req->context;
> > > > +	u32 pdp[8];
> > > >  
> > > >  	if (WARN_ON(!workload->shadow_mm))
> > > >  		return;
> > > > @@ -79,9 +80,10 @@ static void update_shadow_pdps(struct intel_vgpu_workload *workload)
> > > >  	if (WARN_ON(!atomic_read(&workload->shadow_mm->pincount)))
> > > >  		return;
> > > >  
> > > > +	memcpy(pdp, workload->shadow_mm->ppgtt_mm.shadow_pdps,
> > > > +	       sizeof(u64) * ARRAY_SIZE(workload->shadow_mm->ppgtt_mm.shadow_pdps));
> > > >  	shadow_ring_context = (struct execlist_ring_context *)ctx->lrc_reg_state;
> > > > -	set_context_pdp_root_pointer(shadow_ring_context,
> > > > -			(void *)workload->shadow_mm->ppgtt_mm.shadow_pdps);
> > > > +	set_context_pdp_root_pointer(shadow_ring_context, pdp);
> > > >  }
> > > >  
> > > 
> > > I think we'd better just cast the type instead of extra copy.
> > 
> > I'm not certain that would resolve the static analysis issue.
> > 
> > To specify, the static analyzer is complaining that we're taking a pointer to an object
> > of type 'unsigned long long' and dereferencing it as an object of type 'unsigned int'.
> > The analyzer is getting uppity about this causing unexpected results depending on
> > machine endianness (which... it won't, but the static analyzer doesn't know that),
> > so I suspect the only way to get it to calm down is to do a direct memory copy, as
> > seen here.  Casting the type would just result in the same static analysis issue.
Do you have any more details from the static analysis? The first
thing I'd be worried about is possible truncation of the values
in passed array, so casting it explicitly to u32 would not
resolve that issue, if it were the focus of this report from
static analyser.
Also, seeing that set_context_pdp_root_pointer() function is
only called from update_shadow_pdps(), you could change its
definition to:

static void set_context_pdp_root_pointer(
                struct execlist_ring_context *ring_context,
                u64 pdp[8])

so the cast would be done implicitly on value assignment:

        ring_context->pdps[i].val = pdp[7 - i];

or you could even do that explicitly:

        ring_context->pdps[i].val = (u32)pdp[7 - i];

Unfortunately, there is a discrepancy between "val" (defined
i915/gvt/execlist.h as u32) and "shadow_pdps" (defined as an
array of u64 values in i915/gvt/gtt.h). We could try to match
these types, but it would be more invasive change than a simple
cast you are trying to achieve here.

-- 
Best Regards,
Krzysztof
