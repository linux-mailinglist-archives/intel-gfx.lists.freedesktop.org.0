Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +LvdJzeEnGm7IwQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Feb 2026 17:45:43 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DE93917A12F
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Feb 2026 17:45:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9B9FA10E3F5;
	Mon, 23 Feb 2026 16:45:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KQ4m1pwL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 903F710E3F2;
 Mon, 23 Feb 2026 16:45:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771865139; x=1803401139;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=pc+4+6l5+u6x+KRriVY/XLyNTun759597VqYifHfTy4=;
 b=KQ4m1pwL/4vL3MFZ4VZPq+yoAnBLfeUrlTunvAp8xUWKQU62d9Mwklhp
 OBRJAEIn2qbno5gAIZVaR9KBz/xTTFAsOcrMsb7XF/h/JlsgCk9tE8Z90
 ASIWLovQH9b6S1IiaCB/0pgCAzKBPTRulXf4HFi5U1/S6rxVc5GkudfMb
 HwzRonKccQRHM+zXvUKkN9mLj8Vkma64JjLocVrSSEJSog+Juj0nmr0sJ
 KKM5QU0anOCjXNiBGNDcUvSRYUANXzdnAFnj0eAQgp3JIFGUG0VtdreMe
 feSqnFgEnxSieX60aRTvZZel9YwVfwPUcxTgQRxuLPkGjPP/6JS/VTmUx w==;
X-CSE-ConnectionGUID: 414GOYY5SJKg86XopO8vbw==
X-CSE-MsgGUID: 0HyP71dTRO+ijorSMGuYDg==
X-IronPort-AV: E=McAfee;i="6800,10657,11710"; a="75474270"
X-IronPort-AV: E=Sophos;i="6.21,307,1763452800"; d="scan'208";a="75474270"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2026 08:45:39 -0800
X-CSE-ConnectionGUID: I131ineeRAiv8uXgBFmtCw==
X-CSE-MsgGUID: XYZGhVrORuWQsY5izNHK5A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,307,1763452800"; d="scan'208";a="213953166"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2026 08:45:38 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 23 Feb 2026 08:45:37 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Mon, 23 Feb 2026 08:45:37 -0800
Received: from PH8PR06CU001.outbound.protection.outlook.com (40.107.209.71) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 23 Feb 2026 08:45:37 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=MhDr64+MsEganRjSM4cpgK8ah8lgpOdqscwXZWEjXo4hZV5HIHzEQ+rLBQjCnWj+9GUTd4yYNGyLRUgr6f66tq4NUNss2XOWpuyxt5lmLhRbqI3t4VdwrCxTJenV/6G228HAuNUZ2TVd0/8QNTmSkLVR3mwRqP8IXTELcTfKhErU3srTm0fXbjwUNLkBntH9oxrXHg5ke79mwc3/vCK6z/c5Zh8IlqWHcLhPZFUM0HeWQpowR1huwjs8IGCM/5HstepRAWJnZalk2wXDembd9vrQoOMXqIvMgDyxmuaE+KW92CvXtFpefZVAxUcSVlxuLjoYbfPG1Bgd0LI/zxrufA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bjGFGZaOzNnU3nQ/iPL95hnxgPNu7GXXQ93WH2UyfrU=;
 b=eS6b5mZa0z9Qk+up9YIEXGbRi7Tc/X3HO/3yYDRksh/y8AoeFBuwDBz8rQ8LnMSm61dqDY30EwSPgjUMLcdUTo2izGnS0odvyQTiZ/Us/LIIfOE9TfPjC1yVeLSUzVNLKez6oqNaKut+m932cm0P5cGyYLcQ9oul2atgl9dxGr5NN/FTMEoIJLFPKL82IYXLyr2/7fG3Gk+SHwHb+2stnq20gvX0DasUobHVlgihzT/7ELSMOREy2uVJY0Ff6yowVvpTUSTmUMGn2dn1VfjcV4AdCRYXkEeADKLAh9IUV6v13XiGOLysJ53vkF7cTX6VRWVCETEvqSkRWa2q9LFrow==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by IA0PR11MB7402.namprd11.prod.outlook.com (2603:10b6:208:432::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.21; Mon, 23 Feb
 2026 16:45:30 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9632.017; Mon, 23 Feb 2026
 16:45:30 +0000
Date: Mon, 23 Feb 2026 18:45:25 +0200
From: Imre Deak <imre.deak@intel.com>
To: "Murthy, Arun R" <arun.r.murthy@intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 4/5] drm/i915/dp_tunnel: Sanitize documentation of
 intel_dp_tunnel_detect()
Message-ID: <aZyEJdyNxEgazSSF@ideak-desk.lan>
References: <20260219182823.926702-1-imre.deak@intel.com>
 <20260219182823.926702-5-imre.deak@intel.com>
 <IA0PR11MB7307ED11D322F4B53B76988FBA77A@IA0PR11MB7307.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <IA0PR11MB7307ED11D322F4B53B76988FBA77A@IA0PR11MB7307.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
X-ClientProxiedBy: GVX0EPF0004F07D.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:401::62b) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|IA0PR11MB7402:EE_
X-MS-Office365-Filtering-Correlation-Id: 232120e9-1a9b-49b0-35f0-08de72faf443
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016|7053199007;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?VQZ9lp67Vu+rxAiNnQVkG3wTST5IUDwKNxbi5hUjn3YquC/6lKA/3TPk81N0?=
 =?us-ascii?Q?TCycQqvvln28hsvOfiky4rKLrTac0aeLYBrOyfx8HwEevSbomoVP1irO3iTN?=
 =?us-ascii?Q?hsGNWdr6RCy5L5+4lqSB/8LcICYlBrdetUkp1cN4StFJRUqHj/qgfQ7hCxqM?=
 =?us-ascii?Q?IeNoMBgXKBb1hS/r37LEiXwBl1oS9DouX3Ah56awiSxj6SvSUoGdK8tQ8MWV?=
 =?us-ascii?Q?bYITZyjUZhQsGPhdHVIJZtMZTF9GKnoPwoqmPt7+UR8ydiIuW7uOIBPALPpP?=
 =?us-ascii?Q?zVARZUJHS0KtS8n1o8VuyftWTnPraLIkre+WidgiMbw2MRK1NqYAuHpflN2C?=
 =?us-ascii?Q?bNenQj22q5SeXc8wlj3n1TTWde+Nr/BLbLje+0Q9IeZfsVVE4l+a7hXcQXt+?=
 =?us-ascii?Q?h+uy4yTiBKiCds3igUnXHaUUomAteOp/PbQJL5Xi+Nxpum1aeHQQO2vjCGaM?=
 =?us-ascii?Q?hUJTun7fxOGQ3zM66LOFhg2agePcn/61JqeoAJwA2UZWdUbiTPe9xGW46xfa?=
 =?us-ascii?Q?mUmc9s+CfrYdUcEhZM+2MtupZpas0t/WotmHkn5hXyGNquyoQ6zCo6GWDF7o?=
 =?us-ascii?Q?yls0C7riLk32gLVSEb8FfcOXhj+Pn/iXSg9yvSH5m1wKxK3sS/ZxkQSTkjkq?=
 =?us-ascii?Q?J3mloim87S36rEOivSKQ/36R9LipAzAL3vhjquiTSzOPNWWyfg4y0m2m7UCy?=
 =?us-ascii?Q?eGMHFiqiXfl4/sP4EUEMKAbUqPzhkb3hn34OZOb08oCJN9LGV8WPgaG+bYne?=
 =?us-ascii?Q?UDb8wlodmEbB6gkWo5quuc/hAYCG+JVSnphxRsFEh5GJZ5NUimTveq3Po0ss?=
 =?us-ascii?Q?4mCD3HS+U1v9S2t5wK0VJ/omidI2+inVit3TGk7ErXq5HT3Ikqt/oz58qaG8?=
 =?us-ascii?Q?jnkxVxZHRMIWLuPdHXz+0xWFY5lJs7LuB0Jmj9z0eu06986CSsCBo+IIyttj?=
 =?us-ascii?Q?GOPCxHykWrDOqEOqUgdTRQwNfLlFIa40sYG1W/kxouITnFdGOZwFOQMTxyid?=
 =?us-ascii?Q?OC3HeqVOleK/Ehdi9Gs3MzpIibH6FYBvxklVltFkc8lBczOlEkyxz/07MkDt?=
 =?us-ascii?Q?mnep2xmBHMysnfX9u4G9jaLr93MNNXwu74k0F2j7a8FwEwJiKHqwYi1OdHW9?=
 =?us-ascii?Q?igF5HZEl4Nq4N0JyswVLsLBSfJ67LeIxBxOLHIGXTx7Q2ekwn6swM0+olZh4?=
 =?us-ascii?Q?fxR9rXirA31xtGDTVcyIfuMORB//j5XsuRJcVWz1nVeBY9Z14ghcHpTSDRTv?=
 =?us-ascii?Q?H6mdfm1gF3IsPkOGj7Qw4mYbQZHL9aKvAVca782Zp9arYbhOJMGRXYSDZuBC?=
 =?us-ascii?Q?lrjsRHFI2pVkhd3H7MjxgNMMbXhvfWO213OLOwR10MFCiKtZ5fQc2g9JsdOg?=
 =?us-ascii?Q?9eBENrMqalfUIOdHYg6WFHZeSvxgwWc5xLrrhytRL+fvRnwsNARgId909r1G?=
 =?us-ascii?Q?XyiC693JNwXzb+WPND2TTmdjdHDQQiGIYCYGfwYIRObdHotyoY2t83k27ijh?=
 =?us-ascii?Q?OhXi6YjavfuZvdSTbRQ81Ys07cTEDk30KXN5HDjYZNzYRM6f90P0m3h+k6w2?=
 =?us-ascii?Q?K8qVZ7fTI0RFFXYFzlw=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?+Z2jOLoPrrX1D/mbuzt9uaHIrr3+8JCQ5H47csMQyeXYwq/nsS8GJTiMOOig?=
 =?us-ascii?Q?g8u9oB9z9WWeSju/7YmSYjHXiDq5BCNNXOonCOxn20tpYqz/7kqJW8tbOYfs?=
 =?us-ascii?Q?J1Czcs3bevccrlHFLIjnWx/2SDegemXV9eJtwhIeDPpoNwwwXT2ZzmTUTul/?=
 =?us-ascii?Q?wWKveJOOS4BNYorkgf70yKuA0yAGF1iYNklNVR9B1mCCoomjuskPGV2cBtK1?=
 =?us-ascii?Q?CnycPwUwLKY67QsxSY9h7+c53kWmvWSPgimi5dKDsSASrmx03qtNBWaHPUY5?=
 =?us-ascii?Q?+3xxRPwYnGdqNQqIEE0WbFnAFjz4+xvZIU/QXRP7/ErAS5hhXPvAoL9hHewy?=
 =?us-ascii?Q?CdYOj/KJPtjz9D0RxtE1KdVM4w4F4Uzuty2c5OS7SeBA6vbFqmhc8NcrPeiB?=
 =?us-ascii?Q?LuZwEZYhNCK648DXQ9kXDEUUnmmOfigM3FfYISnpU3ti30QRtIvkCDoNWIcP?=
 =?us-ascii?Q?myKsriqkFdPU+GM4MOiUbsFKbehW57a+akULU6WSjJ/t4j3CqEd5nZFw45Op?=
 =?us-ascii?Q?Ind/Vo9HyU4Zg37pcs8Ed/abdxNg63OvzQgR/kj8WFi6qIY7bUMxhWT0YdIE?=
 =?us-ascii?Q?J23UNwoO0JRFoEguE92qRah9T25OyUHt3eDXBiFOcXG+wg285FcrQ6g2GAGx?=
 =?us-ascii?Q?c73gohuLFmOc0bDM3vgMhb2Ipg7Ti99wK+M/tgTE0K+cXLELkTKENQn2DKIB?=
 =?us-ascii?Q?Khy3zrj7TN33BdBf9Yx//HqzNGmMi+wL9mH0mW8c8Dbfy+OMoDi1gcytAfJY?=
 =?us-ascii?Q?kjBLirILKqA5GtBwn5cerRzN7prABHkRUDrXqv5WCjgIMbaK38NO/ZaTdrRJ?=
 =?us-ascii?Q?Ztc7hRJaoVWzCgZ2Og5gYNzNef+wqF2TyCHk5ie/pQ2/xb80Q6fzMvCKPmSA?=
 =?us-ascii?Q?AAVA3QG2MDigi/BWiBNBxk7M/zjyBuwl/Glepsiw1b2y5rEUJ4qjhnbHJ1OO?=
 =?us-ascii?Q?18NdRvp6qQb/wJ99RNjj4Y8qVzl+9UWCmjGdbFmk2JCr+VFKCIc705+ELgnw?=
 =?us-ascii?Q?jSIKKW/QLQWu1ei19p4RyxX0dInilWpIP9D7h5MjX018o0OMIT9FO8CMurNj?=
 =?us-ascii?Q?0BtllIBRjLAlAReGW0oNQL9mkTTJfp16XyjZZ5xv/soEhGCoFHEDf3eWNh6X?=
 =?us-ascii?Q?GM5N1Q45iD80vffUK1PTCjxUPe+VSTJFX/L8wc/tYpg/Ptwn/KhEdGhjOKxi?=
 =?us-ascii?Q?/CD//Sz2CBHZrVEZS2qEJeyaiFu/2bO71tJMnVJtIpDj1DGmMwpNBUZYbx0W?=
 =?us-ascii?Q?oQHKWv0AQOvpgTD8gaWqCRUmo7UQHX6lIpmevo9HwJQCXlBoTX0i3Z6SE6lY?=
 =?us-ascii?Q?hLHPscHKoGCjxewyvUrp7q8czGCp0AwqpGq6QbSi8+dFOBxG+OPE/lcp/JEJ?=
 =?us-ascii?Q?z6AU2bfxBBbFiApVUgt89rsktud36vSr7zVzXrqb89pfCQIIpbvQ+w06EhmC?=
 =?us-ascii?Q?CXPSYrKziM6o7dUgvqD8GZ2qh7NlJGW6AYCp/G46dV5gYsKFb9Qs/nekGnst?=
 =?us-ascii?Q?qofVfSkkQoNPPj6W3SaapXqaVtP5FcRNWKYHne/+POxa5WaE59vJuxcpgbwS?=
 =?us-ascii?Q?kwDB5FP6VC2QkUpFJPeMes+D23BT/7XUkLdk72V5zP0jQoJP8uD85UyuNkzC?=
 =?us-ascii?Q?geyX9JKV0VGSkSdY3mjzmgBVsXdJswMUUcAAWaL96xvl1EfDqaAbtr3Ib6AQ?=
 =?us-ascii?Q?HKMC/sUtRNnViHaw7zQFawLqHYioH1hF74yW2UnA2eMiDKoozeola1OH5vc2?=
 =?us-ascii?Q?gJwQ5PXmSg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 232120e9-1a9b-49b0-35f0-08de72faf443
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Feb 2026 16:45:30.0565 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: JRflgEcZXJ7ugncvYywvGrmENPohvNbXCIV+PpUCrpf3dW09k8llP8FHxSOFGEWY3Y8Zq2ALplQTkbqaHO5OOw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7402
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
Reply-To: imre.deak@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.49 / 15.00];
	R_DKIM_REJECT(1.00)[intel.com:s=Intel];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DOM_EQ_TO_DOM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ideak-desk.lan:mid,intel.com:replyto,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	DKIM_TRACE(0.00)[intel.com:-];
	HAS_REPLYTO(0.00)[imre.deak@intel.com];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_THREE(0.00)[3];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: DE93917A12F
X-Rspamd-Action: no action

On Mon, Feb 23, 2026 at 06:12:23PM +0200, Murthy, Arun R wrote:
> 
> > -----Original Message-----
> > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Imre
> > Deak
> > Sent: Thursday, February 19, 2026 11:58 PM
> > To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> > Subject: [PATCH 4/5] drm/i915/dp_tunnel: Sanitize documentation of
> > intel_dp_tunnel_detect()
> > 
> > Clarify the documentation of detect_new_tunnel() return values, including the
> > failure case.
> > 
>
> Can this change be merged with the previous patch as the previous
> patch makes this change.

There is no functional change. This patch merely clarifies the
formatting of the return value documentation and documents the failure
case, which was already possible before this patchset. Therefore, I
think this is a separate change that should be submitted as a separate
patch.

> Thanks and Regards,
> Arun R Murthy
> -------------------
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_dp_tunnel.c | 9 ++++++---
> >  1 file changed, 6 insertions(+), 3 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_tunnel.c
> > b/drivers/gpu/drm/i915/display/intel_dp_tunnel.c
> > index 5840b92dace19..1c552a7091897 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp_tunnel.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp_tunnel.c
> > @@ -241,9 +241,12 @@ static int detect_new_tunnel(struct intel_dp
> > *intel_dp, struct drm_modeset_acqui
> >   * tunnel. If the tunnel's state change requires this - for instance the
> >   * tunnel's group ID has changed - the tunnel will be dropped and recreated.
> >   *
> > - * Return 0 in case of success - after any tunnel detected and added to
> > - * @intel_dp - 1 in case the BW on an already existing tunnel has changed in a
> > - * way that requires notifying user space.
> > + * Returns:
> > + * - 0 in case of success - after any tunnel detected and added to
> > + @intel_dp
> > + * - 1 in case the link BW via the new or an already existing tunnel has
> > changed
> > + *   in a way that requires notifying user space
> > + * - Negative error code, if creating a new tunnel or updating the tunnel
> > + *   state failed
> >   */
> >  int intel_dp_tunnel_detect(struct intel_dp *intel_dp, struct
> > drm_modeset_acquire_ctx *ctx)  {
> > --
> > 2.49.1
> 
