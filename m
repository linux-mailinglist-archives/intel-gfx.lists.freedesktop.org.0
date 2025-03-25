Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A716CA6E956
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Mar 2025 06:39:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE24310E0CB;
	Tue, 25 Mar 2025 05:39:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Nonhj/+R";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3D75710E047;
 Tue, 25 Mar 2025 05:39:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742881183; x=1774417183;
 h=from:to:cc:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=tUaH3VDnLh6ny8Kf766opkxNyQwDUzosoXGTPYoqU0U=;
 b=Nonhj/+Ri9cqXKuyr5lQgyF4NP+AVQ33zzkVJG1qE9+mv0DUFx03+X6E
 25aDekh57keTWNzQAxfcdB8ts+iJ5t0HcF+tP//ZdTsz8qpKeBPwICONL
 EQwcYE3xB1OgGgI0SkuSdIxQ6X5Cm+kK40RtZLDMwsPxrNqKCj7WuOEBP
 kITdiCD3M09rHrhPdHR6BIkz2jpe3vlcBYCMBM+ipVuwV1AJ2qV04wCxw
 9fR83dYSTFWfZjw0Oy0rgZWiy6TWH9Dle2nmLfhbyOM7SNHyP8n+97G+m
 0Le8aIGvQY4PnejNWO4RTGcnUgBMtFFX7b9IcOi/SSqyNsNeNTOJKBppd A==;
X-CSE-ConnectionGUID: LjgIEJ4vSWuKi6pli/uUQw==
X-CSE-MsgGUID: Ne2Ie816RESxbGed+ttNLg==
X-IronPort-AV: E=McAfee;i="6700,10204,11383"; a="47985931"
X-IronPort-AV: E=Sophos;i="6.14,274,1736841600"; d="scan'208";a="47985931"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2025 22:39:43 -0700
X-CSE-ConnectionGUID: YdrweBh6QOagzu7x2uihkw==
X-CSE-MsgGUID: sOiVA5CuRkG5In6pVmK/ow==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,274,1736841600"; d="scan'208";a="124224295"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2025 22:39:42 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Mon, 24 Mar 2025 22:39:42 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Mon, 24 Mar 2025 22:39:42 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.49) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 24 Mar 2025 22:39:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=FI9A2HlQqxl+1SfjblnkMnCnLBGKbJz1kFqAMwFVutX1A5vMwYQKXGOpdFHo0MHqS3E5w4JBMh1zXfv/er+VfgO1yK1q6qQYk1rS5OEh3hW28JtOsaaGoURhw+Cg+ONXabFsqcO4To+5fDIbOPxHKfkVkfEOMO+/VDRu7GgcOz5mc1P6SIF68pVCVWv1E/KLDuGbq79g84ScX8G+rd65u1Jn91XMniMYiQzblfjP2oE7pH2sNPQnEwZZ4QDbmfOoC/SoWngOFJ34EJ8M/T1gBFT5VmeUzab2dZsYXaIhZZc7QjcjSG8RrVIwnXeYqUB1SIejkn3kpuNsVFG8XBHl8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FiFhCs4qAHLo05L+z7Kvuwf9/jGdBbcJ21YIYypkHcw=;
 b=bm7iJcbOidu2PbSxEjruMVqD17uZaaP3iIBwsiVLCghT5iyO+uCQMKUV+YQD3D5GRr6Y4QJKskWZ+KNQts9U6ss3QA5L+E1wIKNE17Q+W9P/c7u4nsc75ebB8DkCjAmECY6X+4a7Q6sgwSv2OAMYVgeotZA2hJKJpc+nL0ZRugemGG8Ko9vc1xBzxTabNBygeQUncs6OxcmDYFvf+Ra3cTZYszycCMDCQHh57q2rnfz/VlWlur+et06OQr2oTNcFjCsd90EgMER+yvfDqk4T0kfKpWl429jYwBvTvq2Y0KcsPBvYNxOcN6gjaXZbw6YTxUtBoqqjxSHsKBw+Ivby5w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by SA1PR11MB7697.namprd11.prod.outlook.com (2603:10b6:806:33a::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8534.42; Tue, 25 Mar
 2025 05:39:39 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525%5]) with mapi id 15.20.8534.040; Tue, 25 Mar 2025
 05:39:39 +0000
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
To: "nicolinc@nvidia.com" <nicolinc@nvidia.com>
CC: "iommu@lists.linux.dev" <iommu@lists.linux.dev>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Kurmi,
 Suresh Kumar" <suresh.kumar.kurmi@intel.com>, "Saarinen, Jani"
 <jani.saarinen@intel.com>
Subject: Regression on linux-next (next-20250321)
Thread-Topic: Regression on linux-next (next-20250321)
Thread-Index: AdudRupO/hqyu5dwR3qhp+EvWE8LDw==
Date: Tue, 25 Mar 2025 05:39:39 +0000
Message-ID: <SJ1PR11MB61295789E25C2F5197EFF2F6B9A72@SJ1PR11MB6129.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6129:EE_|SA1PR11MB7697:EE_
x-ms-office365-filtering-correlation-id: f462327c-706a-4985-e036-08dd6b5f6f7f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info: =?iso-8859-1?Q?Ur22JATXc3iFmqs+jOMI0AWUA9GjVnTeK1k/UtXYeOp66D9TWRxXdUpYfD?=
 =?iso-8859-1?Q?94g8qfIQUQhpzk95kKGcIgSx0QvIdqhU2JC186fmrJ9yRp0J001NVchHur?=
 =?iso-8859-1?Q?GFBegJ40ZjkMkOrQfFF4SBjZO3t/i2BwQ1PTEttFF7EdITAa4pxVe8rZKt?=
 =?iso-8859-1?Q?NXWYF6k5USJV4VV6kNszwqVx49ukAb4hBFsF1h/6QvUCVe+qI7rtfXFccK?=
 =?iso-8859-1?Q?GRvkgohp6u7dpwoGwCQktPKnVAH9tG9FN9JoVz8o0hKoGUL/ibrK2HV//3?=
 =?iso-8859-1?Q?ZnHhHDgCmC7Mr3c4LGfNKfKvFOqcW64KBvUdDSoUtocYrqkNq5xwLVT+Vg?=
 =?iso-8859-1?Q?4QjNAwHE86aiMNO26IwhOE0+D4gA8xWNIXEcpgff9kEODoumiPu6FyeYPg?=
 =?iso-8859-1?Q?lg0/IRLu4mZPY+jgfs8QSOfXC1Eh89RDj4It6+Dwo2XLJlG8qQ5yDlDPMP?=
 =?iso-8859-1?Q?o6RRlRv2EAINEGw4xEW1L4c525G9DozDejNjUJW7DVuGfN5zfG66Ax01AE?=
 =?iso-8859-1?Q?QgqlKkD8lyBw0EgDUxvuVCGWVGOgmD0HG2RGkzarilS3gy8xmtlB7kYYsj?=
 =?iso-8859-1?Q?qsJnR92b9assVaMdIejjfVKozeSpQf4dhVjaky4qxGCEDNGiK6e7LyYdkR?=
 =?iso-8859-1?Q?HS/rUAyH9/xo0fyo2T4yfdT/TwsZrC6YE1pKmyEP1HrPGgRqYEwfF09ifI?=
 =?iso-8859-1?Q?vYy+wXcRHpBiYxyiPZCz6AbzgMiLBcSK4Y+u4C/RUl7N+e+cgzWe/UjaOz?=
 =?iso-8859-1?Q?8D6x+aTiTeJ6o0/eKeexwLsxU2xiZ+L3g9iIZErrskZzCU0sBqhYIqvhNl?=
 =?iso-8859-1?Q?DqQgiIJMlXo1mo4ToAq5NHrwDoJdsSX5nkOSq7SJbVLhHKAGlE3I3518lF?=
 =?iso-8859-1?Q?kpg4fuVRL8EfiM5musas0TdbivQj4gaBHVd7h9w5TCfJ0iEtIZ9XlaaJiD?=
 =?iso-8859-1?Q?14LHsFAdRvnkTHNvGIOgFNuwLOdeXzXpGKjTJLcWTWZyY1dV+7LcC6L7Dy?=
 =?iso-8859-1?Q?BzQjwLxnmMSB9QHWf1w1BwymXCBSYWAk7kIi0Q0RlcJBUvBu8jMrbt7pmz?=
 =?iso-8859-1?Q?v+hw2BbjQ29n6RWeaCr8aN6KPl9dbthKwo6s4hdIHabuZfxJ6eOyfpp+oU?=
 =?iso-8859-1?Q?6/fYGANgDLWnzrQASczYkpdXuZZ2cCuj+Ybw1XP1falpIbUASHVQ3Dfm2V?=
 =?iso-8859-1?Q?2/6Z1xSCcmhREzFnVFi3G5TEk3V3mxnO1YzTrGsfP2T0tYJcpomfVCnbkX?=
 =?iso-8859-1?Q?dxqr0IX09zugVYzQAjYoRZe0YG+Ogv4GPKJ19Pj8sKikQemfEL0W4qpIrp?=
 =?iso-8859-1?Q?9OpI7jEWoqyoq/zHfr+hSRWY+gloyu5iuCFNmIBJnF54T25t0puzl6Bcv9?=
 =?iso-8859-1?Q?8mw1jLo3tyb9W+a0M6pkqMH/8XowdPRwz1LXvqX2O3CyMx7Ak28a7YLnZV?=
 =?iso-8859-1?Q?Ok+EFHhf624dBo/Lb/v8J8pMrhV+QxS6PonmyMql+f1WW3knnuLMAlgjUC?=
 =?iso-8859-1?Q?rv6wuzl7X9fOiz9MUGQDWh?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?5yT57hWlZ/Ab15rUTSXjcku1X60YfLLaF93e/eGfXWhtC277AJObn78Cd8?=
 =?iso-8859-1?Q?Qt2u7/nUeNom6hJ1nFZcOOzSvIo4nHVOtLMxg+QcNTc0VoDe/dlI+UJoQY?=
 =?iso-8859-1?Q?+Io/4puZsQrsH5OXi3lBFGhgb6uo025Tf8mmnxQcAON1PJjqiMHikipVMJ?=
 =?iso-8859-1?Q?d0lCOlg3wVuUJ9wzJB6Dr+On7OE6ReWpcek+w6hiGzEQfk/BjVi/2fyWNR?=
 =?iso-8859-1?Q?Y0onzRyKnaldiO3+A0KhfFNc80y8d7g4QVFuSZcOb+Da4vnpTwOTS2EmLN?=
 =?iso-8859-1?Q?sMYQoyPY7V8qPsQZ7zFdvsSwRMXbQdwZWGQyFc0p5Oufxjcy72XK0lR2C5?=
 =?iso-8859-1?Q?HBjloCMqq6R9GzGhNPnxdX9b41TypSe65AX0Jr0CKYMyUExEMF0saHICQF?=
 =?iso-8859-1?Q?EfxxBNYWuqE3c4iHd+QIPJxwJcSVIMDFzHEhABb/xqG4XZ9q/vf5L+zsh3?=
 =?iso-8859-1?Q?/gUX0ddzrSNo7nuIdmcMBi+UgGD0zT5iDPjZfRMUpTKP3GoPi7ie6a5Vpm?=
 =?iso-8859-1?Q?YYEVtSWxkgfOndPxfKB+2q7jlxdIsOE/e+P8boUUk01cGSYXpcVxU0CHRm?=
 =?iso-8859-1?Q?3CvEzOgCkb2S3yS1lRZ04xVidXYns1+sTVmnbmdDLk33Kkz1Bpcj+F2SMd?=
 =?iso-8859-1?Q?7Mrm2VIQjGmu1knU8VT0szfq1ggZakhsw5JSq6pCkIsBKfy2uRcyXg6wzw?=
 =?iso-8859-1?Q?xZN0YCLkSAhHNefnGVErFfVG6iNDIDYbwLZhCYlFa6yPgb0dm3T8e9F3So?=
 =?iso-8859-1?Q?h9p/GFI8xBTzuq9bjqHSjuiqWfwJOVbNuxOr7oyTXY+3+yH4bmSh29cZil?=
 =?iso-8859-1?Q?i1wrzeLUg0zL212eE8plv870uQawhdHCBoXslAnR6/+s84Vvehi2qAgB7E?=
 =?iso-8859-1?Q?ApkDJAOPuwwQKnvLAUDA/+4lRtjbpDjkbm3/vABy/qiOTbXxHxs4BTi3Op?=
 =?iso-8859-1?Q?YThcV88ZBTPYqEVPEvSeYcVJB39/+NOFAXW/yw3HmFQ5E2YECS26Rf1oIv?=
 =?iso-8859-1?Q?/vwR/XuRr7CZQgyLmPlfI4Eq5l2+PdcIB15tBOiW6cvzEJaZQIJewIKEOq?=
 =?iso-8859-1?Q?Hq6P3+ewZOa3RY8Khp/6CqbV+AkF/UdDIa64bi03y+PkS7qdTtmhSVOpxF?=
 =?iso-8859-1?Q?04dW/2OSnwANBlrPqvkmsUh9GQTLR7hEbvQEOEXt0lbqSfLpWpOSNFJkYr?=
 =?iso-8859-1?Q?i61u557FC4Tp89voJ8bgaipQZl8N81OnHby4eV5AYaxsjrsRKbtLohbscK?=
 =?iso-8859-1?Q?P9FioBqSJsLxojGAn8JMFtxhTX/UMMHyUeGLjVlG5wtosrMeDxLpxx7hS1?=
 =?iso-8859-1?Q?5bX1oyU9rEFMSM39iZ0x+mBhMLzcV+ZkrRRRpp59J7ujKGwckRfHrW31pn?=
 =?iso-8859-1?Q?1qNRfE5tbcGdbUaHH+kb8k/fQBb22oz8nhhZtiJK83uz8LaVIB+OgcUjJa?=
 =?iso-8859-1?Q?u8QfJ00++XDCYGwbfos6pWos8ZiVFoXAspDJGZx8LPcH6EQCMYxvmN3BRB?=
 =?iso-8859-1?Q?WlgHAPkvZOjWRpz1NxeZumn7i3woXhc8nFEmlgF4lVyoNgIPBHYbx74x2/?=
 =?iso-8859-1?Q?o2tlXNWeWGeWWEq4CAMniXrEslVRUDpofh0pNsIc2OZS3Lcn7VDE5vK5Fp?=
 =?iso-8859-1?Q?icfxFsnhxlon2HmSU26LdvHBCL8q9UrwHIMW7zCe6EdHGnBVzgE4T3YA?=
 =?iso-8859-1?Q?=3D=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f462327c-706a-4985-e036-08dd6b5f6f7f
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Mar 2025 05:39:39.2988 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: HCS3GKNPQQzYcPQfe5Q1FgUMGaiFEYAg7t0xtPfUSwSlLCsdBmMr/1GU6wtnWkbqUAaQuJL5tOJQqQBgtNzEWXEtAjJ//iF8pEZMi4eBJkQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB7697
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

Hello Nicolin,

Hope you are doing well. I am Chaitanya from the linux graphics team in Int=
el.

This mail is regarding a regression we are seeing in our CI runs[1] on linu=
x-next repository.

Since the version next-20250321 [2], we are seeing the following regression

```````````````````````````````````````````````````````````````````````````=
``````
<4>[    0.226495] Unpatched return thunk in use. This should not happen!
<4>[    0.226502] WARNING: CPU: 0 PID: 1 at arch/x86/kernel/cpu/bugs.c:3107=
 __warn_thunk+0x62/0x70
<4>[    0.226513] Modules linked in:
<4>[    0.226521] CPU: 0 UID: 0 PID: 1 Comm: swapper/0 Not tainted 6.14.0-r=
c7-next-20250321-next-20250321-g9388ec571cb1+ #1 PREEMPT(voluntary)=20
<4>[    0.226532] Hardware name: ASUS System Product Name/PRIME Z790-P WIFI=
, BIOS 0812 02/24/2023
<4>[    0.226539] RIP: 0010:__warn_thunk+0x62/0x70
<4>[    0.226544] Code: 34 4c 5d 02 01 e8 fe f6 a7 00 84 c0 75 d9 48 c7 c7 =
f8 bf 0d 83 e8 7e c6 08 00 48 c7 c7 a0 a2 a0 82 e8 e2 f6 a7 00 84 c0 75 bd =
<0f> 0b eb b9 cc cc cc cc cc cc cc cc cc cc 90 90 90 90 90 90 90 90
<4>[    0.226559] RSP: 0000:ffffc90000067d78 EFLAGS: 00010246
<4>[    0.226565] RAX: 0000000000000000 RBX: 0000000000000000 RCX: 00000000=
00000000
<4>[    0.226571] RDX: 0000000000000000 RSI: 0000000000000000 RDI: 00000000=
00000000
<4>[    0.226577] RBP: ffffc90000067d80 R08: 0000000000000000 R09: 00000000=
00000000
<4>[    0.226583] R10: 0000000000000000 R11: 0000000000000000 R12: 00000000=
00000000
<4>[    0.226589] R13: ffffffff83c9417c R14: ffff88887f344bc0 R15: ffff8881=
02370100
<4>[    0.226595] FS:  0000000000000000(0000) GS:ffff8888dacfd000(0000) knl=
GS:0000000000000000
<4>[    0.226602] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
<4>[    0.226608] CR2: ffff88887f7ff000 CR3: 000000000344a000 CR4: 00000000=
00f50ef0
<4>[    0.226614] PKRU: 55555554
<4>[    0.226617] Call Trace:
<4>[    0.226620]  <TASK>
<4>[    0.226624]  ? show_regs+0x6c/0x80
<4>[    0.226630]  ? __warn+0x94/0x210
<4>[    0.226635]  ? __warn_thunk+0x62/0x70
<4>[    0.226640]  ? __report_bug+0x110/0x280
<4>[    0.227000]  ? __lock_acquire+0x447/0x2c70
<4>[    0.227011]  ? _prb_read_valid+0x25a/0x310
<4>[    0.227018]  ? __lock_acquire+0x447/0x2c70
<4>[    0.227024]  ? prb_read_valid+0x1c/0x30
<4>[    0.227037]  ? lock_acquire+0xc4/0x330
<4>[    0.227055]  ? _prb_read_valid+0x25a/0x310
<4>[    0.227073]  ? __warn_thunk+0x62/0x70
<4>[    0.227081]  ? report_bug+0x24/0x80
<4>[    0.227089]  ? handle_bug+0x16a/0x2a0
<4>[    0.227098]  ? exc_invalid_op+0x18/0x80
<4>[    0.227106]  ? asm_exc_invalid_op+0x1b/0x20
<4>[    0.227122]  ? __warn_thunk+0x62/0x70
<4>[    0.227130]  ? __warn_thunk+0x5e/0x70
<4>[    0.227135]  ? iommu_dma_ranges_sort+0x40/0x40
<4>[    0.227144]  warn_thunk_thunk+0x16/0x30
<4>[    0.227157]  do_one_initcall+0x5d/0x460
<4>[    0.227171]  kernel_init_freeable+0x3ac/0x530
<4>[    0.227187]  ? __pfx_kernel_init+0x10/0x10
<4>[    0.227196]  kernel_init+0x1b/0x200
<4>[    0.227203]  ret_from_fork+0x44/0x70
<4>[    0.227210]  ? __pfx_kernel_init+0x10/0x10
<4>[    0.227217]  ret_from_fork_asm+0x1a/0x30
<4>[    0.227236]  </TASK>
```````````````````````````````````````````````````````````````````````````=
``````
Details log can be found in [3].

After bisecting the tree, the following patch [4] seems to be the first "ba=
d"
commit

```````````````````````````````````````````````````````````````````````````=
``````````````````````````````
commit e009e088d88e8402539f9595b10c0014125a70c1
Author: Nicolin Chen mailto:nicolinc@nvidia.com
Date:=A0=A0 Thu Mar 6 13:00:49 2025 -0800

=A0=A0=A0 iommu: Drop sw_msi from iommu_domain

=A0=A0=A0 There are only two sw_msi implementations in the entire system, t=
hus it's
=A0=A0=A0 not very necessary to have an sw_msi pointer.

=A0=A0=A0 Instead, check domain->cookie_type to call the two sw_msi impleme=
ntations
=A0=A0=A0 directly from the core code.
```````````````````````````````````````````````````````````````````````````=
``````````````````````````````

We also verified that if we revert the patch the issue is not seen.

Could you please check why the patch causes this regression and provide a f=
ix if necessary?

Thank you.

Regards

Chaitanya

[1] https://intel-gfx-ci.01.org/tree/linux-next/combined-alt.html?
[2] https://web.git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git=
/commit/?h=3Dnext-20250321=20
[3] https://intel-gfx-ci.01.org/tree/linux-next/next-20250321/bat-rpls-4/bo=
ot0.txt=20
[4] https://web.git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git=
/commit/?h=3Dnext-20250321&id=3De009e088d88e8402539f9595b10c0014125a70c1

