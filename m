Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mBsqJ2rPlmkZoQIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Feb 2026 09:52:58 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D60BE15D1EF
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Feb 2026 09:52:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E14F710E0D1;
	Thu, 19 Feb 2026 08:52:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BIChvCGh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1B17310E07F;
 Thu, 19 Feb 2026 08:52:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771491174; x=1803027174;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=BcCUG4Y0A1NdMi8lpt7bUdRuMToY/eDzeercCBod7LI=;
 b=BIChvCGhjdqSB2ahZhzONMvt9CyMB+FfvA5smOe4b7C8AOsWHOUuXzEh
 zDEEIR0+0XA14n8S7uHpMRTRJxPKiexU/5Z4xkMGPuc1CoZj54bk47d5y
 dEM0lguqPHCMNHgKDE8tH4Fhpjj9iyiorYOMwKMyAmFXtc0pf2yxmrVh1
 g/mquhGxaaOBcZaDzHmG0gg+ttolI2w7Ru2/OiAS/4X1VxeuJVzUqODqD
 MCEzyccSmzRkUtwAMCNtlNl797aG9PVXdNOStuCR4goWfANxUKfhHIlWS
 9Ygy7+nJf7AD0SQy+DqPxNH0Bo+Z54nTUXINkRCKt3fNmfULoPJAcV1Ly w==;
X-CSE-ConnectionGUID: 9QZPDVy/Q+mB42q0a0b60w==
X-CSE-MsgGUID: M1Lo/S+JSPOWZ3mWII+k9Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11705"; a="83197961"
X-IronPort-AV: E=Sophos;i="6.21,299,1763452800"; d="scan'208";a="83197961"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Feb 2026 00:52:50 -0800
X-CSE-ConnectionGUID: BXO4N+P6SEuZQhLjs894yw==
X-CSE-MsgGUID: UaN7ydgHTFyEBOQQeVVquw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,299,1763452800"; d="scan'208";a="245054371"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Feb 2026 00:52:50 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 19 Feb 2026 00:52:49 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Thu, 19 Feb 2026 00:52:49 -0800
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.18) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 19 Feb 2026 00:52:42 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=YnlO3PQQ3tiIJHBBAf9Dj+kw4cRMdbkTHZopMPP4EW1HrxBqM+UZ1IB6wdDfWvA6DRGqG/CgxFKInL7YW4z1wW18+Ib4M3mL4RKWHNzYeuHzqLigh6FmT9csXO8qvN7tg1b43UH3NVPXoe3VQZnUTNRHa5EMvfV9ruIBJRRouEGyoFHPh/SGejU2bic5gf7+phzAolq/WQv+1V8UXXk6gE/NtxDKRLpdUEtbXqDgD66PzT7uQWBcstRfaby19BAgqX110ULBZzKQeBiah5EvJ1m4+PTxwEIG0XbAfjVcrfaAUV+hzhjKXpOzRgqkJmtEk3Kb1Riplkhn6r8qc1FUqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MVjf3WXaj2baxgk4Kkeo5DJjvfaA3WMAGk4hLmR3pdU=;
 b=vte9cHUNYvXaC1RZG6aLkAMhM2LG+HnpQOO5n7AMoAonpYyK3fhJjNeNnzWURnPeRZyzZmG1BfF5g8yMDV4ffxMj7wV5wxZdrV4s7Mf238XDKtpZWQpmVhCx7q0R7Zh6YPNgH2WT2S+WF4Pnjatpeu9ADWkV8bxqffLqMA1IDrV12rv6EILNSyNwN+VucVoDQkLY4bu31QFNR/nHuYEgu/ozOetNNN/69BMxvDJCHxg6TWC41U58/sOEo58F96JPgzuV/MvD6mjCOFHmGH4jH1b0Ww07R3ldXqhWODVsbz7mazfuD42bxSad/hm5WqOG+azzQScypvVilMvleNcAQA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by IA1PR11MB7199.namprd11.prod.outlook.com (2603:10b6:208:418::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.15; Thu, 19 Feb
 2026 08:52:35 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9632.010; Thu, 19 Feb 2026
 08:52:35 +0000
Date: Thu, 19 Feb 2026 10:52:31 +0200
From: Imre Deak <imre.deak@intel.com>
To: Arun R Murthy <arun.r.murthy@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <suraj.kandpal@intel.com>
Subject: Re: [PATCH] drm/i915/display/dp: On dpcd init/caps wake the dprx
Message-ID: <aZbPT-bcZlvl2Jc-@ideak-desk.lan>
References: <20260219083219.32256-1-arun.r.murthy@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20260219083219.32256-1-arun.r.murthy@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
X-ClientProxiedBy: GV3PEPF00003674.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:401::38b) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|IA1PR11MB7199:EE_
X-MS-Office365-Filtering-Correlation-Id: 460f7235-9350-477a-e2ca-08de6f943a0d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?o+gA8K62ZhjKhQ3o/mw/QcnST+/Nq5kTFtPXWYHkNa7Awv5yt7YVMxUXeH3M?=
 =?us-ascii?Q?ByY0w1+/fH/uJMWoss7AnJboUkVaDKO2fO/CyUtUpk4n+MIKyoWecKgyhLNF?=
 =?us-ascii?Q?xNqZvqv/cujT6kypYEXBBG4T2U52CLDoIzbb6y2VhwLk/Xizj47nCr0gA/kY?=
 =?us-ascii?Q?bXAxCLOlQMcGhkGWnTZNYUqfIx2qqWeEDWCLcYNfs463FYs9UTM9dhZvaNN/?=
 =?us-ascii?Q?feTygLwTdhFyG/yTra2awuK2CCyXxUk+wGVOjFb5kfCctogz3e2BAHITCDVr?=
 =?us-ascii?Q?Pn9AUCoIZ5I4Xli8wZ+8IcQYb5a2iPvkmNUhQknYFbZBR19L3rzY+qJcU/dh?=
 =?us-ascii?Q?vK1jN912LtFfzi1rMx+foUKrk3RFegcoz6KtxqZYnklFAqddrfdpfcJqMhKJ?=
 =?us-ascii?Q?2KGRqTc2CV8nmwpIoZnULE6wh4q3ciVNUE6jsQnGfSFqQ3w/27uyT8OTc0g2?=
 =?us-ascii?Q?MQqk0+zltMt7/M8Ju3FXGCkMAVT68YRscev/mJbz5QAh/gT3QaHFwsy31u/N?=
 =?us-ascii?Q?mbXKxVhfpCtLQCr8SwBWuFZPZQ4Gy9NdkeYrrFpk8oiVrRtU27/rMC7ePD/C?=
 =?us-ascii?Q?Ve8gi3e7cmtpupyUQvibZNoalE6pOFp6KWTjKrmCH0O1lncTW+EIb/X7mD0Z?=
 =?us-ascii?Q?A5wcscPQJ6ugcxj0tbE3aYlJi/bVtO9NyL+1Ks9fbP73JrYhVADcDLS33GSZ?=
 =?us-ascii?Q?3+XWNhAQuM/fKPnGIUJB51M2VPqbZDXL1gN+VHCsdouAzQaLsNViQ9R/4LGO?=
 =?us-ascii?Q?ZHoTl00uZq+dwsLD0vv5eawtel6KQEH6FjVpknwXGdqhcWu6lSPd750/Zq7c?=
 =?us-ascii?Q?lp56XOmawWzszh9N0piXwwpAasOOQZhzxOlNWAoQF4DaYsEnixR8n9RmjM+M?=
 =?us-ascii?Q?mAyGoj26kRwPFAQ/VFuWlF+YdyXc+wmLZCv89VmL5kBzMFhqEb97C02ipd7l?=
 =?us-ascii?Q?RXjMUkqOX2NwS6lhfP59TNxeNc0Q5QdGNGqGj2tUvUuC4Oxcqz+AsFUQxrZ6?=
 =?us-ascii?Q?Gbf9yIwjSTYMHHKCmjYrbHlLhTCIgy99n8HyKbr7SdfSPlLFZVAkfb8xx4nK?=
 =?us-ascii?Q?1CD1gyAQPQPO0TZUdgUeNb/q/Dkiz719RvW9F3zEiHDlSjwnd/1xQ0wjC0KB?=
 =?us-ascii?Q?oifoZVt/+uw1czoNgcKx2+T9LF9sWjC+MfrECLdJDvk9zSZrEWJFn4Ayckse?=
 =?us-ascii?Q?6usWrzA5mKUE7fnnvMU5JuTR0e0CTotIva44l+FCT1z0XcblU0u4Q1bBHB7K?=
 =?us-ascii?Q?60Z4H2ygixFnmnIJ7f5CjdzLF2sThhqBgpTslpQbQFrdb6l1Y6OtvRo7MEqK?=
 =?us-ascii?Q?VQ9GZ8TW6xHGR91rCmYSj1eX93lUDzAbRficyQl1/qnRa0F6zcJ2ute7J5ut?=
 =?us-ascii?Q?0x5/Z3u0H22/Wl2/pBdMYQRF9el8qL6W/EIR0z+VZN9SnXTHKSb58GEcGGCC?=
 =?us-ascii?Q?cxMIqih/+3Or8uho8gxGTCbt5w6g9EKv6dQ/ORuVP5sK87+iARSMX9tws+Xo?=
 =?us-ascii?Q?dGIIJr/xWG8zJ5qA2lhjOZHo2b57JaYsoB1v34IDow3W26LhmYdgOtIOexpJ?=
 =?us-ascii?Q?9ZYFBvhOWp5dqsWjX8I=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?f2XJ8VjInUQwWn8USCShi5wnVBFZYzLyz5SBuHQx5wnH6DxRbOubZkdj6hJL?=
 =?us-ascii?Q?ZVbno3wqFDyWDpxQJhJOP7oygnlRaL3bYZPiPgoRRzrJa4PjPGo32OGp0Znq?=
 =?us-ascii?Q?+yGjNGVT03uUMYPyhuMVMYVgUJhm5iHuGEA6JjstE2BCHIba+EoEzTmN474W?=
 =?us-ascii?Q?oKl9QyDi5iJXuKMKIAGDG6QdJPtlmQRPFMZeuGmzT8S2SegAl0AMQGw/RO1m?=
 =?us-ascii?Q?jbS4Hxxy94sYVtLMuRfNd8DnMc7/xRjsgaJjn4HCAJf6/AQ/yphA3PRHPHUQ?=
 =?us-ascii?Q?NIt7FBUuQibAx34fME5z9HAsS42vkAnCY7DYJY1XbXieNZYLU4Z38jEyQnk7?=
 =?us-ascii?Q?LF7BzqS60ozuofq8SlmtO+pYiOTblOw6yG+9rsScS+m0r+R4VsWCVU0GE4pq?=
 =?us-ascii?Q?zQ/0Baf8bwc1UvUISUgVHFsQagCtEb3wlcRWUnwJwM0neSjpCLZhldL7z+3/?=
 =?us-ascii?Q?+ZQH+T5f5sU8tnevMzqYGoUpn4C3M8fmZPlBYaphd8y2hHGBCpAylbVAHFqP?=
 =?us-ascii?Q?vj0XtOtk+m9Hd8FFmTzxQK7RK4MnjdLx+XlJ4z9yCv0zdSgIrapo3lJQc1qC?=
 =?us-ascii?Q?gfIWPPagPCivsDuHxgCkesdlZHtu61VBUCI0H1BGSTNbZkOF86OjfpQB39iO?=
 =?us-ascii?Q?WDO0z/F8awmCU+45mJnxrRimlYtOsGOlRSAZ1V0vpexxy61cxAlW7lY+dGSl?=
 =?us-ascii?Q?GPbODMuqafnlvLAMy/BNwYpXNNtplMJl33aZhq3j9g+eBG05rkWoLT8wquKn?=
 =?us-ascii?Q?nT2eAYra5WeDmHjRRoOgtI6dD+yIBABWfFJEclIN1pZNqcbf82+7FR4UT2j9?=
 =?us-ascii?Q?1re63outMC3HGlRiZpq4xw6enBFtoidKnfMAekElm8MSjhaAy7VtiK5g9cy5?=
 =?us-ascii?Q?EDlOlxVJVqvrCizAMnkdsIy/3XicoDswUkvkTunViV8eGqBtOObnkvQU2vRA?=
 =?us-ascii?Q?Crp552uHh+tyvMTHy9ZYVof30Dy9W4XW75px6XN405LsA69mhnnx9JAZTWq5?=
 =?us-ascii?Q?iqtQpkQuREvxwWz+iJWC5LqgvL74fnMFW+/jbb9waS7KcgJ29iltW58MQ2r6?=
 =?us-ascii?Q?dEkDJFvWWH0EjtQeZM/PZ6fcCuSIWSsnESC+EWTSQEn89yh7r5K2hkAQggyp?=
 =?us-ascii?Q?IXI30JKZosFA0mT/LhJd0WNKGPbC1TaKKugiv3O3ckLgO6Qri99nUBy+HgQW?=
 =?us-ascii?Q?/RmOfhnAClfjCMAi+GQJW3vl1MUu0BjqoLi1KeD7hl0c+hQGVIUi1b5Y8nlE?=
 =?us-ascii?Q?E91A9v+phDggHS1Pg7ZgNGIFCutZY4m23RepN+x+ZPIceeUXvXmkvw8TrHC+?=
 =?us-ascii?Q?cqRAsHhZjxzRqLp9pMLR6UFi+xwAUhSNQAqAdcNE6K4XPtvkUZboqMWmdQFi?=
 =?us-ascii?Q?JNzftlw3nrEzCAlxd9B+Rio1YuQbOxJaE+YIQSj6bh6hHH7Lt1JNtlaLuzzj?=
 =?us-ascii?Q?NLkVgyt0pKMJsIsWg51/oFBvsXbsDUJ4V/jWJ7BDWuSgc3cDEPuaNRfaimvE?=
 =?us-ascii?Q?w4ULThC3DNhWX+QOwqeYrJcEEiP1TWGJoW5e+3eKeWD9K/iziR9hIypU/ecX?=
 =?us-ascii?Q?2D2NYQtTl1mRApJun5P24+HImfJm/xF8GWrPzQlnikDHMqfm0jK+DSShvlNu?=
 =?us-ascii?Q?CSpsi0HjhuHVm98K3T/F7kijGYgx8T/i4kiLaBddDTKmxcxK53wjqkcwzYDX?=
 =?us-ascii?Q?koieg/VnhRRPu9MV2HWGGOvh1PK9UhxX7bGimDC8Jylrse5PYjPwzLB69W4u?=
 =?us-ascii?Q?lqADBrALRw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 460f7235-9350-477a-e2ca-08de6f943a0d
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Feb 2026 08:52:35.5453 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: xwsfT06kMCJz4I7BY0pqcCV34gt7RSQX5gFLdUun3rJJQakG9pYhXnQvqCzq5D1ApkkbSw94kG8F+hbDDf7enw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7199
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
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:replyto,intel.com:email];
	DKIM_TRACE(0.00)[intel.com:-];
	HAS_REPLYTO(0.00)[imre.deak@intel.com];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_THREE(0.00)[4];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: D60BE15D1EF
X-Rspamd-Action: no action

On Thu, Feb 19, 2026 at 02:02:19PM +0530, Arun R Murthy wrote:
> Before reading the dpcd caps for eDP wake the sink device and for DP
> after reading the lttpr caps and before reading the dpcd caps wake up
> the sink device.
> 
> Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c       | 28 +++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_dp.h       |  1 +
>  .../drm/i915/display/intel_dp_link_training.c |  3 ++
>  3 files changed, 32 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 454e6144ee4e..4d86826dba1b 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -4705,6 +4705,32 @@ intel_edp_set_sink_rates(struct intel_dp *intel_dp)
>  	intel_edp_set_data_override_rates(intel_dp);
>  }
>  
> +void intel_dp_wake_sink(struct intel_dp *intel_dp)
> +{
> +	u8 value = 0;
> +	int ret = 0, try = 0;
> +
> +	intel_dp_dpcd_set_probe(intel_dp, false);
> +
> +	/*
> +	 * Wake the sink device
> +	 * Spec section 2.3.1.2 if AUX CH is powered down by writing 0x02 to
> +	 * DP_SET_POWER dpcd reg, 1ms time would be required to wake it up
> +	 */
> +	while (try < 10 && ret < 0) {
> +		ret = drm_dp_dpcd_readb(&intel_dp->aux, DP_SET_POWER, &value);
> +		if (value)
> +			break;
> +		fsleep(1000);
> +		try++;
> +	}
> +	/* After setting to D0 need a min of 1ms to wake(Spec sec 2.3.1.2) */
> +	drm_dp_dpcd_writeb(&intel_dp->aux, DP_SET_POWER, DP_SET_POWER_D0);
> +	fsleep(1000);
> +
> +	intel_dp_dpcd_set_probe(intel_dp, true);
> +}
> +
>  static bool
>  intel_edp_init_dpcd(struct intel_dp *intel_dp, struct intel_connector *connector)
>  {
> @@ -4713,6 +4739,8 @@ intel_edp_init_dpcd(struct intel_dp *intel_dp, struct intel_connector *connector
>  	/* this function is meant to be called only once */
>  	drm_WARN_ON(display->drm, intel_dp->dpcd[DP_DPCD_REV] != 0);
>  
> +	intel_dp_wake_sink(intel_dp);
> +
>  	if (drm_dp_read_dpcd_caps(&intel_dp->aux, intel_dp->dpcd) != 0)
>  		return false;
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
> index b0bbd5981f57..3f16077c0cc7 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.h
> +++ b/drivers/gpu/drm/i915/display/intel_dp.h
> @@ -232,6 +232,7 @@ bool intel_dp_dotclk_valid(struct intel_display *display,
>  bool intel_dp_joiner_candidate_valid(struct intel_connector *connector,
>  				     int hdisplay,
>  				     int num_joined_pipes);
> +void intel_dp_wake_sink(struct intel_dp *intel_dp);
>  
>  #define for_each_joiner_candidate(__connector, __mode, __num_joined_pipes) \
>  	for ((__num_joined_pipes) = 1; (__num_joined_pipes) <= (I915_MAX_PIPES); (__num_joined_pipes)++) \
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> index 54c585c59b90..cbb712ea9f60 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> @@ -270,6 +270,9 @@ int intel_dp_init_lttpr_and_dprx_caps(struct intel_dp *intel_dp)
>  		lttpr_count = intel_dp_init_lttpr(intel_dp, dpcd);
>  	}
>  
> +	/* After reading LTTPR wake up the sink before reading DPRX caps */
> +	intel_dp_wake_sink(intel_dp);

Not sure if this is correct or needed. The D0 state you're waking up the
device into is a requirement for the main lanes, not for the AUX / DPCD
register accesses as this change implies. Setting D0 here will also
leave the sink in D0 even if the output - i.e. what would require the
the main lane to be functional - is left disabled, thus wasting power.

> +
>  	/*
>  	 * The DPTX shall read the DPRX caps after LTTPR detection, so re-read
>  	 * it here.
> -- 
> 2.25.1
> 
