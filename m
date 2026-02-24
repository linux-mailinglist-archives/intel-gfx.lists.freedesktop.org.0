Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UEYiJOEPnWnoMgQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Feb 2026 03:41:37 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D319B18112B
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Feb 2026 03:41:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E105110E485;
	Tue, 24 Feb 2026 02:41:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YucRI12O";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 40AFC10E485;
 Tue, 24 Feb 2026 02:41:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771900893; x=1803436893;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=aaBPZ4kKlvv4/0PQ0QMo/zhqsT4YjXlT1cXdIS6M0YE=;
 b=YucRI12OUjxrUen10f7ayB0ZPaUwxpCFajuUN4aFeIzbSWKJ8FdTJniZ
 ggN7+YPQCT9P1DdRTJaXc7JIQXwsrMyVABILOxs2gbT5Xb/dZ9Omkma33
 qfTV1EEid8dLrfqN2qdQs0UuoM3Iy5Srv2iTnT+wKrs8YagiaCesBqsgo
 sOEAdZnwFtzuMcyZY02ZQJnPpbiIJlEccBWfmtQRUlF/H93FWFXgWh5WU
 aMAy5pBcziNhUBR7DCBmnEoMpZBI01uXSMLwKlyN0yzr0FRidXb/cfBdd
 UuqsxNn2nVN+xIkf6L+pwsHZUQ8XKgB68HbKKSPZDFycUQVMOfGZA6Dr7 w==;
X-CSE-ConnectionGUID: /vuGq7uUT+qnKdrmy+pbGA==
X-CSE-MsgGUID: SOTGqqVJQpaWWjIwuQPH2g==
X-IronPort-AV: E=McAfee;i="6800,10657,11710"; a="83619799"
X-IronPort-AV: E=Sophos;i="6.21,307,1763452800"; d="scan'208";a="83619799"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2026 18:41:33 -0800
X-CSE-ConnectionGUID: IS8/exovSE+kFWsTzZ3DUA==
X-CSE-MsgGUID: XjhC9HxLSge1HMkpCsdRAA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,307,1763452800"; d="scan'208";a="253482766"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2026 18:41:33 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 23 Feb 2026 18:41:31 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Mon, 23 Feb 2026 18:41:31 -0800
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.37) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 23 Feb 2026 18:41:31 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=MD7y6drEgqb+RwBxfpaFDoFtlPqYKTOAlgsmGNH5CclOdB/F+2KZfpgHP3+oJ7Y0wk7rUFPiYjGOOuCr1Lkb/KFv/xkJCS/EwXlhPoSeShGqCZawiVMgFI/vgTDuH0xopLSEgQcTVnjmk4DcspYsPWBrd/xZuYFd6zFupiozzhK/iA/YC/GaSCFiSIM6Dnig+TgPLvOo/tU8omUUrw1z239Y83CMb7OQc/YcMCjlh1mf/St+UHOmG7rvwiCgsIUmUpSh0uLUcepMn1vC8yny3ap3z7Cu99ZkWHTJXHDYp9/4NFpzKzNte6vMIDclkYSZffJ70V2B51+ojnDZpUgQ0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Yul78QK7xycjpFADbjn0CBZeKCHT17s33kRXjxGassE=;
 b=eiyYdbmR2LLQaRobBq2Rd6tSfDd2RWomz6wZSNMHMPFjbqXdCkCrFHOenn4n3ECz98iEmkl+3kZuRKp+66AFtIYppYgKSyp0F+Mirx68M//NWfp96/nBiVsewo3go+RM2P/8Zw9Zjtgrv3IA+4B31AfMONx4KreXd+XEpmbkTlQTZ32d5fl7C8YHFHZf4DlV1NUPtEzRjWWqlxs9DER6K4q6hbY4X8ni99QS8mAoCsH1Ht85xKY+EllOqIkgwhzfeOFNECZ3j6KKY0SZH+VbE1A1EjcWoRW1jnVavz5cvNUImDk4Hx8587ssU4AT6dn1N8dTgr9ii6CYI5sUbKrzmA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by IA3PR11MB9256.namprd11.prod.outlook.com
 (2603:10b6:208:57f::21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.19; Tue, 24 Feb
 2026 02:41:25 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::b65a:1e88:89fa:c16]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::b65a:1e88:89fa:c16%3]) with mapi id 15.20.9632.017; Tue, 24 Feb 2026
 02:41:24 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>, "Murthy, Arun R"
 <arun.r.murthy@intel.com>, "Shankar, Uma" <uma.shankar@intel.com>, "Nautiyal, 
 Ankit K" <ankit.k.nautiyal@intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Murthy,
 Arun R" <arun.r.murthy@intel.com>, Cole Leavitt <cole@unwrap.rs>
Subject: RE: [PATCH v3 1/2] drm/i915/cx0_phy_regs: Include SoC and OS
 turnaround time
Thread-Topic: [PATCH v3 1/2] drm/i915/cx0_phy_regs: Include SoC and OS
 turnaround time
Thread-Index: AQHcnwFBFvwNRTPkX0iK9VNRzYJxGLWQIuaAgAEMgUA=
Date: Tue, 24 Feb 2026 02:41:24 +0000
Message-ID: <DM3PPF208195D8D26C81E420D4007DE0F88E374A@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260216-timeout-v3-0-055522c22560@intel.com>
 <20260216-timeout-v3-1-055522c22560@intel.com>
 <10cbabb7704cb26523dba025be95083d13042418@intel.com>
In-Reply-To: <10cbabb7704cb26523dba025be95083d13042418@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|IA3PR11MB9256:EE_
x-ms-office365-filtering-correlation-id: aafd645e-e1d0-42d6-2cb5-08de734e33ee
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?HVeSNpgEVkMGUN0tEnSJM1u2VQXi8GL4ZyOZsYZsEszVzJEdjrb5wxbqqkrL?=
 =?us-ascii?Q?+tQJGtOcVHj7xYFAfWWnpskDAdwIYzRYLl5/jwHkBpxEGgqegDIOVhr3GMo/?=
 =?us-ascii?Q?rOxYyaZ6iGlYifzzbbuAQr/3xmB+QlHE7ptl1ygkERWk3iiF/MsMEy5GMJUE?=
 =?us-ascii?Q?fbdIjSU6jTZkyWYMT1CA6eVPLolTBT4Euk9keghVjdB2gaFOQaw/A6S8jVtC?=
 =?us-ascii?Q?Xqn0NFoCoLXj5R1e8GYafV/hzAapl/VmZSxYDGbGMtmcjC2VZl1T/q0mN4QG?=
 =?us-ascii?Q?R8dUgd8wCJKwDXqI6k1Tkc9UloaKJAfy3QA/NlbUWb/1t9ayd4ICXZA/OTmq?=
 =?us-ascii?Q?vqJVgVeZxOY5fVZxsqbwO+0a/NBO3tcL5OhJ3ziLNb7WjtRktc3WLCMIE5IW?=
 =?us-ascii?Q?sYYVlag2eOP3pndhDWW54GvkTPlf37O1bSttJAESPZt7qRwjcNgMagp0XAGx?=
 =?us-ascii?Q?akP/Vr+6sd5Z1JKj6fdZB91YTp/VY9W6f+poqv9PZmuPz7w3S4SQ0xwomNEk?=
 =?us-ascii?Q?U6JekjG3axbYz5yMfAYl3mNZ3PDcS8XLc5T+mexfqJ4xKhvn/NDXq0R3DUwp?=
 =?us-ascii?Q?CeJooPe3cZWEqqbMkGVTVi16Ps6JgYzMR4ZgYwz1UAg4PevEIxZdcXd+xrBU?=
 =?us-ascii?Q?DGGRNhjwnRcxY+odlcER6Wyiu6zWFrucme3g+Rd6xGpC1q0rQuZccxw7Rruk?=
 =?us-ascii?Q?SHlR/37ZRwKLaUM2IlMnebY0hyLvqYXxfRWf1w2TD3xfLTpJhx6BIfYyEz/+?=
 =?us-ascii?Q?n4SIdcGK71kugnWq4sfZe9bdLe9A+a46OheiLtSU0IDsusfoPxEx2n0VQk3D?=
 =?us-ascii?Q?5uiiayRElbib/1HVkPRrwKFj0Jcr12Qe1zg7XseyeyUGhZy7K6FjpQZ+2b/p?=
 =?us-ascii?Q?4vn72Qq/RQBETxhn6CYrzC+2vQ76Myo6GMKJQG4RuoOOiPEpDWahoew49DyF?=
 =?us-ascii?Q?ZbT59YWPRxnlUuQ+s451PHu6DNcps1ly7Snrq3po+AlukhIOotnkbkQQMI0g?=
 =?us-ascii?Q?t296umtGb6TQBoldtoLnEA3/NeGPcV7MjgkWz9sewgB1czRetpb8yWlLL3mA?=
 =?us-ascii?Q?Ah7JgJBwt1Q+9CdqPLZEr1BjYyAqPHgQfsDJcrlNxpIFTtkCfubzMTKSjVDz?=
 =?us-ascii?Q?JL701L73x0/U2dLOU9TCfMw4q3rAaq8q8C4hrK7j1F+3+v5QBkK0DL0aTdp6?=
 =?us-ascii?Q?kh8eiIW9g3wp/Llc2mGc/81fiPDL+kggVui+pYdm3IUZ7q1azhQOr3NIiwXv?=
 =?us-ascii?Q?sLgcIbegrtVkL8nCtwceeCCUNtDpS6an1tSyXtxw8+fKFIEBPJu0bgQQLHNt?=
 =?us-ascii?Q?MaZzawm+rRpiiZVxNHQP6uUxVYlVzPUXYW3UYWWKV9tlJbDlxBXSZhw56XkQ?=
 =?us-ascii?Q?UliEkGd78HhLtoKRTWepXDbE4haLYjL9uhjYyFBKnjY6TRohm4nAf5FNvJaa?=
 =?us-ascii?Q?Y1rqnF89CLVcO3SNIQlNKhOVdbfPmmYnc7a/vmvk9W6qolFKakuAd44S3q5d?=
 =?us-ascii?Q?4Hk7ias6jwDfNIBIaQisGVulQhGCADjQe7mz8qnRQ61YK+ZRcE2cL6qgfb5F?=
 =?us-ascii?Q?M3GG9Unci0/2PqX9IFk=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?JWzxdTOplpjoC+PW+epjJ+O2YHpXST4e+uYeSf6CotIk638ySpKrRJd/C5Vt?=
 =?us-ascii?Q?79C9GGQbFB11bhjWSd9/fguEsb1D7Sb/LD2eGOgI/+aNZetMOyTE3Q5i/wxb?=
 =?us-ascii?Q?SAyt1Cqy7Mm8vWSeriX5zJge3EWg89vCneoUgtBORBJ3PlBInFL9VHqk+k8g?=
 =?us-ascii?Q?E4GKGSE0VujxbQYtnmsGXpnGhQN6Kj6hIhIrmHSUXhteN2qbJa4E8uSfTBd0?=
 =?us-ascii?Q?5qMYNWSTci05N/532vmHGIvdpkWF6T1+pPtPK13RbV4iP7oAtggLNOVHj7AX?=
 =?us-ascii?Q?X/NWDGm1b7oVMmJYVvJF1zRXOE9KRFT2/XWEOhpnLUAhNxCS9XLAze+kGbPl?=
 =?us-ascii?Q?/jwYvIvJGtXdhQd+UGFWoRAFyfCY2WmF0CrHYlbR883XJ8oLFjtAY8XeYsa4?=
 =?us-ascii?Q?FLN1QnwHkL5BlsvMlz15NFhwjqfX1fGGqBSwkTlFV1N7zJPJxmyEIzjuiWh/?=
 =?us-ascii?Q?80wPEwSfks+McsSXI9j15dBg/WKS8UwMdWAfKZlcNyLOttI/G8rvDcDT8RVN?=
 =?us-ascii?Q?gp0svBzAMZWM0ijUQOOoqrAh065eQn0DQi3T7Shj8S3AODT5vphcnXbW5QEt?=
 =?us-ascii?Q?LxutarXKUob0bcs4Y5aILrygjK2/bINTzEFgkBSI0hL1pN7ZP7UZ02fQoq9h?=
 =?us-ascii?Q?AxlUvl35Xs80BIdVjdK9R0+bSVeCKCWqtCFLMuH18oOTwVUsmfWxZKF/DKe0?=
 =?us-ascii?Q?N5JCLGTSj7pU9vfXgcyDREBQm/LEn7aIgw8ATdi71M+/lZFP68jqpsCA949n?=
 =?us-ascii?Q?5A4dix1zNpuAc6NHOcHQhUhFWGQloAsymYqaM1SoMYjZs0a1y7Gz0z8jI4ET?=
 =?us-ascii?Q?ULJSxAioGVLq/JfDLiof72o2c7yxB6z008kED4RY88jSAf13SgFxH3H1r/Jb?=
 =?us-ascii?Q?BqIrVoMV/J7/dJ2Gi8qZvSWNoVlHnE4rrbCqs9zapf7E9jacAv619w3qJZPS?=
 =?us-ascii?Q?h6MTJ9CSB47vRDIgpPmCneMHQcaD/Q04L/u75ZlfSQTBmHaQInIugefjHQXw?=
 =?us-ascii?Q?dXi15YObnGKlNXXCyutQ1ZEXe7C+FRW91+IKVyyvqGXIl3uHkMDSX8A0PbEn?=
 =?us-ascii?Q?4jB0nJ+ZMV65gVNE0QfeQ0KBhKl4gJ/BG8M0Y89njXmw+zNEY9T0KmEhqLT4?=
 =?us-ascii?Q?JsztFCHzML8yclid+VL2LnJSPAPUmTaeRsbxio4C3lbjGDoCafXqcOjNlRAk?=
 =?us-ascii?Q?ZT3i3q2Lo/dsrKD8iFIa7fbyIK9gBgErsgICFLeDJA6CZzSqBOgFmGWkFop5?=
 =?us-ascii?Q?HkFbM7lqGMkrTGLXxOVgmpaQWDGnd7H/0Ixv3A305VqX/4MZ4T2IWUOsfGYR?=
 =?us-ascii?Q?vRm3IJi/B2KkTmMhg1cnqK+iZPr2kxGkL33Opo/05MUAWCf8OkMYLbE9oxEf?=
 =?us-ascii?Q?83dlFZrDdaPhmjgGFCWgmJCuQWrTKdMdGROvCJ0AjNhg0A7JypNOhmNZxVjv?=
 =?us-ascii?Q?avktkJcua+3W+RHJ7QYhKgWZrhICgwOHrvmBIGZGHwsWU/M+HGTpgimPHl7+?=
 =?us-ascii?Q?tTNALoFyv+wpIXxRzhLc+nIyjX2WONQkbr8gQ9/MdRQnWMcOpWYEROUygDpB?=
 =?us-ascii?Q?jOVp/N603NwpQVA3dA63y0XFXs6It4o/iWDax9rjk3m2razKid1ArXTsBMra?=
 =?us-ascii?Q?5cSdVJVlaKfSMUqPhO3eDtYKdrI9YPpAq/dgZ73m5MMTCAwea2d1G2U+G/ZY?=
 =?us-ascii?Q?AWWAjaxqLf05yHvEf2Ln16HpIqg8VQg66bVsPraBmg1Mfn0zT7uKbwOnHPVi?=
 =?us-ascii?Q?Io+fidiHXQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: aafd645e-e1d0-42d6-2cb5-08de734e33ee
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Feb 2026 02:41:24.8722 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: z6mOX8MkotovUwLRxefbXueseG9bl5Ls5A8xBDw1gOclNdicd7ND5sSI1SqMCU+Aoq0fcOARo+HKwX9X2y/RFQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA3PR11MB9256
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
X-Spamd-Result: default: False [-2.31 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim,gitlab.freedesktop.org:url,unwrap.rs:email];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	MISSING_XM_UA(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[8];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: D319B18112B
X-Rspamd-Action: no action

> Subject: Re: [PATCH v3 1/2] drm/i915/cx0_phy_regs: Include SoC and OS
> turnaround time
>=20
> On Mon, 16 Feb 2026, Arun R Murthy <arun.r.murthy@intel.com> wrote:
> > The port refclk enable timeout and the soc ready timeout value
> > mentioned in the spec is the PHY timings and doesn't include the
> > turnaround time from the SoC or OS. So add an overhead timeout value
> > on top of the recommended timeouts from the PHY spec.
> > The overhead value is based on the stress test results with multiple
> > available panels.
> >
> > Reported-by: Cole Leavitt <cole@unwrap.rs>
> > Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14713
> > Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> > Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
> > b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
> > index
> >
> 658890f7351530e5686c23e067deb359b3283d59..152a4e751bdcf216a95714
> a2bd2d
> > 6612cbbd4698 100644
> > --- a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
> > +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
> > @@ -78,10 +78,10 @@
> >  #define XELPDP_PCLK_PLL_ENABLE_TIMEOUT_US		3200
> >  #define XELPDP_PCLK_PLL_DISABLE_TIMEOUT_US		20
> >  #define XELPDP_PORT_BUF_SOC_READY_TIMEOUT_US		100
> > -#define XELPDP_PORT_RESET_START_TIMEOUT_US		5
> > +#define XELPDP_PORT_RESET_START_TIMEOUT_US		10
> >  #define XELPDP_PORT_POWERDOWN_UPDATE_TIMEOUT_MS
> 	2
> >  #define XELPDP_PORT_RESET_END_TIMEOUT_MS		15
> > -#define XELPDP_REFCLK_ENABLE_TIMEOUT_US			1
> > +#define XELPDP_REFCLK_ENABLE_TIMEOUT_US			10
>=20
> Side note, *none* of these belong in intel_cx0_phy_regs.h. They should be
> moved to intel_cx0_phy.c instead.
>=20
> The timeouts do not describe the register contents.

Hi ,
Jani you are right these need to be moved into intel_cx0_phy.c and the same=
 for the next patch thanks for pointing that out.
Ill work on a new series and send that out along with some other things tha=
t may need to be moved.

Currently merging this to close the gitlab issue and have this fix land in =
din

Regards,
Suraj Kandpal

>=20
> BR,
> Jani.
>=20
> >
> >  #define _XELPDP_PORT_BUF_CTL1_LN0_A			0x64004
> >  #define _XELPDP_PORT_BUF_CTL1_LN0_B			0x64104
>=20
> --
> Jani Nikula, Intel
