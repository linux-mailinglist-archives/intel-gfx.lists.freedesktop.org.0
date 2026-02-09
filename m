Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EGtHFWvjiWnGCwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 09 Feb 2026 14:38:51 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EED810FCC2
	for <lists+intel-gfx@lfdr.de>; Mon, 09 Feb 2026 14:38:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5048110E3F6;
	Mon,  9 Feb 2026 13:38:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QkbIuNYv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A85910E025;
 Mon,  9 Feb 2026 13:38:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770644326; x=1802180326;
 h=from:to:cc:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=bKCySyIdFFo8hWfmcKo8IaEm4yDl+zGC/pDNjQqnUIA=;
 b=QkbIuNYvi9Y/gIyqaRSuU4zxGBHo0kMrqo6bV5gMV1LdYaUeOY1x+jhc
 EZSg6xgJY7cL4mpyKJaJ0ZsfdCyD9UtEq4uYDiY6tFrv3PwM5rlBiWwKr
 DucdgbM6JvTZRYiJYw9Qrckn98czSnbpRbWN3LgMLktBx7+N0dS2Gwaqw
 Squ98vwib6pzspFWZ9WxQZr/w/CKtQroCLnMtLxp8j20S8Z8X2BV45ShZ
 C8zaLaVdPdxPwrs0SXviaPzWEZEL5wKyPQZHU5h5p2JCO6vw43w2SbZiB
 YfmyN4VUdRVgA58Boq2UhhJPEE/JozOyTektbzrSxH99S/sqMPJnVx6Rn Q==;
X-CSE-ConnectionGUID: FUZa2NEASWipIJfzhwG4Dg==
X-CSE-MsgGUID: 184bP9ZzR52vk8zy+1b+Rw==
X-IronPort-AV: E=McAfee;i="6800,10657,11696"; a="74352493"
X-IronPort-AV: E=Sophos;i="6.21,282,1763452800"; d="scan'208";a="74352493"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2026 05:38:46 -0800
X-CSE-ConnectionGUID: +xidyTNbRXiJHkhsSZy6/w==
X-CSE-MsgGUID: tmFhR6CqRYGUGPfbrHvxLw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,282,1763452800"; d="scan'208";a="210735027"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2026 05:38:46 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 9 Feb 2026 05:38:45 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Mon, 9 Feb 2026 05:38:45 -0800
Received: from CO1PR03CU002.outbound.protection.outlook.com (52.101.46.69) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 9 Feb 2026 05:38:45 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=TdDvp5Pb7qPVUtjRb21YgR1d66poVsCxHbmEu17MdrL/bjbbsW00liR8F7ZS7zR8KoR5eNhWTlKImcOlJVxaaoEQGVUEeojHa5sAlLJ2NEopsV3vGLUTSqLxO3xYQxjLxjtURB0J5/5s4NXdmAtMxZjdcyc68Gkwpx66kV62398NZtaOrs0EgXfTI7k9u85S9mt5hqcKJtVECxLllaFFOUYzBdv6Gx7raAnhu+Kh06lUAjypxQ+e5dzdZNPN5vrOyN3Mk3cs4hVDJTyJnSrcH9xuC7jRpZbvu8Gv6oiHOzfdWiOVAQx+mWx32CgMtpS6Jtj6SVWgnshY33E8kTgWaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SfROHD29xqPtBbIr9DatCuiuuCW/do5J9ZNIF7aIFC0=;
 b=CFISupAnDB0jpVmIKqD2safmKulDjhNApUGeOe5h5QtH7yOrQlPUcPd3VSc8up163OOu8iq/17vvVkhDSL+xDXH4rtCvWrVxR2ichsBN/9dxNCcjMncc2TI6YlN+rn3le43iL95G8MZJJHU0omzRBI6dl2dDNkpGmdhZddAkzWN4CidJPuwratsjlkpm4MIcJMDcwKNFzRSc+1frVnDJLyV93RcOdlkAqjz41rFF8q9+EDRiLUyqu9ANP3mmALdLRzZWb8re6LqSW8cHYG/JKYahUzNN+Lcaueh79Hrs2hXlibMy4lasXX/ZR0MoG+v8qN9Ko2MJZciDIweENTFflg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by SJ5PPF8622363CD.namprd11.prod.outlook.com
 (2603:10b6:a0f:fc02::83c) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9587.18; Mon, 9 Feb
 2026 13:38:43 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%4]) with mapi id 15.20.9587.017; Mon, 9 Feb 2026
 13:38:43 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>,
 <stable@vger.kernel.org>, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH v2 1/2] drm/i915/dp: Fix pipe BPP clamping due to HDR
Date: Mon, 9 Feb 2026 15:38:16 +0200
Message-ID: <20260209133817.395823-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: GV2PEPF00007562.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:401::3fa) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|SJ5PPF8622363CD:EE_
X-MS-Office365-Filtering-Correlation-Id: f4b5d661-92d0-43e2-ef4c-08de67e08af3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?cvoHbGXMgn/VhFX1kIx3DyqKXsu9gTfD94AepZ1f5Y05udVD8ElW70v+4BMr?=
 =?us-ascii?Q?aGSryKlVoeXvrDobPofNt49P6cNGrEUgOf1r0+X+3cVTgtJ8nFE3JM5rxTpl?=
 =?us-ascii?Q?nDN2L/42LbQgP+S/FsqDza5dYB1OwhkX57/fnjTtGn8+5l2kl6KPKDf5Lqt5?=
 =?us-ascii?Q?P8tKw/Jhg3SBNQjxHCC5p2c9ST/XaGRMoSIaqzCYGiw5Zb2MDEydTHuyZrTm?=
 =?us-ascii?Q?sf+r+5Pu+a9oyUu4MPMGs2FdCCPyyXIey+ANVgJpXFvaV2OliKa7hRX+ZalH?=
 =?us-ascii?Q?ahXeJLEe64/biSGG9AC3oQN5oODAvEdxpfD+43ay5Fyc6dz0EGf1YuqR0DBo?=
 =?us-ascii?Q?qaz1Q2DsCqusjnD/Q19zLhTAJYlYbWuD+ddIL0Y5eKSChAdsSB7mtp40Gzl1?=
 =?us-ascii?Q?W9SR5Pxhws3DKbxcorcw3/sJsciGFn3wIYfLBw1KqzqasGLiRcbsWnRauGH6?=
 =?us-ascii?Q?dIe5D2u0FVy2VYHLoogJX4L/EsGMJ7GaGssjcULdAR/noBE9F7RxLBGlx+YQ?=
 =?us-ascii?Q?QPjYPIVk4ZURhvgcMmyzkuAYbtZzhwCWDEjNivUuSXk7f4YMmnhw6ELvQW4G?=
 =?us-ascii?Q?315x5G2TrS2E4zNzVjOxCB/3QfWwtQHPZh4dhs/coerSJreljRCMw2DUHQgJ?=
 =?us-ascii?Q?GStr2eJVO3TRB5kNwlk0EhNSQfTv5AlbHiD1Gr15VCph/uAPXPjoI748rM0a?=
 =?us-ascii?Q?OZzrMZluMZJaUtMg/TStoz9eTBYlJRWcifjFSPVxy+i/BvStc6PF1PUlB2bY?=
 =?us-ascii?Q?aBHyXNJKc2WpR8ZsrV9EkpMt9WVdSXi2n1+oqpQ73s2YGjiZ/IoNKfndVQ/L?=
 =?us-ascii?Q?0k3jEOSuNR5WEqoZLQZoPbhxmwOBmkKWhhMb4Q50/1S5PMLBW4PwB9HA2NBr?=
 =?us-ascii?Q?oKYZMZ4ji58o99/K2y6z2OnsBszpWRqQIcz0iaExxPurCUfQhM7CuisU06Dg?=
 =?us-ascii?Q?UrbgXkA8ApQa8BmfKnTu6IJqVgdGttuLez9oRg0hZCI3LlVEeamQWII7XKUz?=
 =?us-ascii?Q?XiMV9iqW/hQEfIG50dLm8Zfe6ZUxDfrgIPVS7qhWgRysiVg1yKzJdKjbC0Ju?=
 =?us-ascii?Q?R6xkhEzyguEBWuBgP/6vz82ZXj4QENWo9hrdC78eNq34c4tzQBSHEwhGPY3A?=
 =?us-ascii?Q?tZsL2jsp6jWPZAAUaHEGtber2dPhZKaNBEsypjvYs6x/vkohL/u7RyCwNhID?=
 =?us-ascii?Q?20/LbLmR7QwePFPBcRI29k6+IaS3Oj39wyenDR3mJ33+ld96T2hkoNASI1rH?=
 =?us-ascii?Q?vGE44hhSZCSc+PeXuLrAFVxK9YVsCZydjn7k3AIu3AsYKh2bnNfo0ngLvc3z?=
 =?us-ascii?Q?dgdKdsZFlJMOrsgDCTqJSI5TvNBDKIvHf2BlpLwUkHU3Dy7zhu7hgiDbePa5?=
 =?us-ascii?Q?NEaCqXyVM101/kfrTowCq97DiM3/hJhspbRnjj8Nh72rS1AnxrYo51q7/nG5?=
 =?us-ascii?Q?byH2Ufuy6mauA7TOmEdpeiBFRmAm+gECA02jMotK20C476y4FBgYUmWNh4aJ?=
 =?us-ascii?Q?z80VdB5tMoqz3Bvh/6l3OF092W52cWYjploU?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?tWtDh9EVpk53qLRD39s7BetPSNgIPcbnHlawgXvbw/vG5Apu3u5mfyRziDZA?=
 =?us-ascii?Q?QOf8BhcgkTA1C4XmtEC7MLMkVqZwyMC9w5U7mqWni/x7uESFHjvRTdYg0/GL?=
 =?us-ascii?Q?89LFnLJmposnvAt4NBDO8DTb54ZirLRcqTVeitKj6vpdPG9KhjGKCJaBlGer?=
 =?us-ascii?Q?Tdg2kUx2AkMhLzwV0E6puGDS2n1GXqVRFqkMwlMSH/+476hCn7vFL00OnzMu?=
 =?us-ascii?Q?DG8jJPWxBUc2QKVBLA5/ACSkDMXOfzKiKleh7bjGMdKDDqwXYaSWU2n943w/?=
 =?us-ascii?Q?8InJ7YG/+HnBtuha4RdHqn38wwnmpQOUvjdFPz5H2BjrChfsOyFXIt6Z9uJT?=
 =?us-ascii?Q?aNzP6h/HHQF0fQkb+MglrRsGyZ472bPcAEtPBqx6XZaK25g50f2+ynuzNwAg?=
 =?us-ascii?Q?YTJRYB5X6ebbGT5FP/90Zi2b3+xfpYXxuvi+NaLt+tv0vFhmmcFM/lKxtzc4?=
 =?us-ascii?Q?BFF7gHdE+ueYZhDIP/TqEkVUL75Jt7S97dQNoMDpvg0gzdzmWnwVOxCJdvMt?=
 =?us-ascii?Q?uL8EFpLm5XFbvJHr2lmzUdttfyLwhdySt5m4ZD9BjE/OM8OINw+W0Hnau/r+?=
 =?us-ascii?Q?zvMPcinfdGex2O+9Saplo6v9Li9ulSVkk+EwXaKJI3kOSqr8MP+uPd1uTQSB?=
 =?us-ascii?Q?JKNUCmDgvXcLClyTcgl4E6aFWimFba8F5ptSt9ryFkQUsAV7EUfe4RJgPOKn?=
 =?us-ascii?Q?anJHEdojQaITHlRGuPIYfJaJV37DmsLjQVW6GakgSgZVXH4qJiFKonKTip0v?=
 =?us-ascii?Q?iBXk9XEVNAaGcUJQJlgS2gHR3DDuXaiQo9Wz9ivQcxWfIwsUlDDXva19SXLZ?=
 =?us-ascii?Q?9Q1A0IKuBfNLHQsSZreXf7parizY2cMfQwAzxkvnxPKFNxEk0sPu83FaRTfT?=
 =?us-ascii?Q?ZLenO9FXDzfwrOBj16v5UQ6g6vALHHAjfMJppUt57KiyJUixeaecRZh/NzZ7?=
 =?us-ascii?Q?UHnAZhIMHHwHiK9y7zqG5j/+DliM5jcmp/fdYndL9s2Um/iz67Y5A+yf5Zr0?=
 =?us-ascii?Q?LCTVuz+uHZrSTWpqQayGLcxT7RZV5FN/Zx5PPZvtCCGrrrmpUsWzt3SBoe0q?=
 =?us-ascii?Q?lQ7mYCPMwG3Bvtpr5K/l+P92bBENiOFzGIBjLOzfdyVZWofwnHIAu6gj3wMz?=
 =?us-ascii?Q?zdXnmWNf8T7ZzOfUnR8lQ3urMSYBWMxXEjXOQqzM5Isy6wvi0S6eb00OhWeZ?=
 =?us-ascii?Q?XIFBSmrsGN3d0WylTsznNqoC+ZkD536BlUsmCfcDZuLwoWqiEwfzItFlw3QU?=
 =?us-ascii?Q?jxqRGshB9gUwmF+IUoPCni8dY2yW0AObyi+PPy+Qq394pI3o/JXVa1kE6RNj?=
 =?us-ascii?Q?7htZHI+gbEK0wROf/DSzvWH68usUEJPOij1eDKS26uFFe0I0WkgDhoJiX4qv?=
 =?us-ascii?Q?elRC9GojHKEpPrkylju0YYTU5gCPxZceBOXvwQ6vDywS2fqFsq5Rv2j+d1vg?=
 =?us-ascii?Q?vqBgkcrMg5KRs1kd6Q11d/yigb1yxhkKkz99i6qm32Mw4mcAO92kUKaAdVr4?=
 =?us-ascii?Q?GqJzKfDo4t2xznFDKz7H8qaCgfdSH63AlmgJrLbV62Aox6miLkpMXw2o+fy8?=
 =?us-ascii?Q?SQGv5mZLyUPPeHh1U/fwHUI0+5PTSUT8LOBFiRIY9hB7LNjtjsLhKOekg3j8?=
 =?us-ascii?Q?ftRH7vnozn+7gQaoyxiK2fLe7bdugH5TVBu2QtraC5PparZ3I6WuzJ9cLMeJ?=
 =?us-ascii?Q?C9Kq7uoIden257s0aKNjFtewMA5+XzH9AOUN3OjIjoO6oAU5FGgG9prm5gcX?=
 =?us-ascii?Q?1QtFhT5iAg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f4b5d661-92d0-43e2-ef4c-08de67e08af3
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Feb 2026 13:38:43.5975 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: b5YZyT/XKXbTl/WGyKW3ti5gVnC6mU/Nf1/kAcdWKPtJ2vMWTtjW+xSZzihNHVNl9AkE1HGyNPlOn1d1hw+UDw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ5PPF8622363CD
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
X-Spamd-Result: default: False [-0.81 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gitlab.freedesktop.org:url,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:mid,intel.com:dkim,intel.com:email];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 8EED810FCC2
X-Rspamd-Action: no action

The pipe BPP value shouldn't be set outside of the source's / sink's
valid pipe BPP range, ensure this when increasing the minimum pipe BPP
value to 30 due to HDR.

While at it debug print if the HDR mode was requested for a connector by
setting the corresponding HDR connector property. This indicates
if the requested HDR mode could not be enabled, since the selected
pipe BPP is below 30, due to a sink capability or link BW limit.

v2:
- Also handle the case where the sink could support the target 30 BPP
  only in DSC mode due to a BW limit, but the sink doesn't support DSC
  or 30 BPP as a DSC input BPP. (Chaitanya)
- Debug print the connector's HDR mode in the link config dump, to
  indicate if a BPP >= 30 required by HDR couldn't be reached. (Ankit)
- Add Closes: trailer. (Ankit)
- Don't print the 30 BPP-outside of valid BPP range debug message if
  the min BPP is already > 30 (and so a target BPP >= 30 required
  for HDR is ensured).

Closes: https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/7052
Fixes: ba49a4643cf53 ("drm/i915/dp: Set min_bpp limit to 30 in HDR mode")
Cc: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
Cc: <stable@vger.kernel.org> # v6.18+
Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com> # v1
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 20 +++++++++++++++++---
 1 file changed, 17 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 4b786706ea2de..7fd20df10f26f 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2703,6 +2703,7 @@ intel_dp_compute_config_limits(struct intel_dp *intel_dp,
 			       bool dsc,
 			       struct link_config_limits *limits)
 {
+	struct intel_display *display = to_intel_display(intel_dp);
 	bool is_mst = intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP_MST);
 	struct intel_connector *connector =
 		to_intel_connector(conn_state->connector);
@@ -2715,8 +2716,7 @@ intel_dp_compute_config_limits(struct intel_dp *intel_dp,
 	limits->min_lane_count = intel_dp_min_lane_count(intel_dp);
 	limits->max_lane_count = intel_dp_max_lane_count(intel_dp);
 
-	limits->pipe.min_bpp = intel_dp_in_hdr_mode(conn_state) ? 30 :
-				intel_dp_min_bpp(crtc_state->output_format);
+	limits->pipe.min_bpp = intel_dp_min_bpp(crtc_state->output_format);
 	if (is_mst) {
 		/*
 		 * FIXME: If all the streams can't fit into the link with their
@@ -2732,6 +2732,19 @@ intel_dp_compute_config_limits(struct intel_dp *intel_dp,
 							respect_downstream_limits);
 	}
 
+	if (!dsc && intel_dp_in_hdr_mode(conn_state)) {
+		if (intel_dp_supports_dsc(intel_dp, connector, crtc_state) &&
+		    limits->pipe.max_bpp >= 30)
+			limits->pipe.min_bpp = max(limits->pipe.min_bpp, 30);
+		else
+			drm_dbg_kms(display->drm,
+				    "[CONNECTOR:%d:%s] Can't force 30 bpp for HDR (pipe bpp: %d-%d DSC-support: %s)\n",
+				    connector->base.base.id, connector->base.name,
+				    limits->pipe.min_bpp, limits->pipe.max_bpp,
+				    str_yes_no(intel_dp_supports_dsc(intel_dp, connector,
+								     crtc_state)));
+	}
+
 	if (dsc && !intel_dp_dsc_compute_pipe_bpp_limits(connector, limits))
 		return false;
 
@@ -2869,10 +2882,11 @@ intel_dp_compute_link_for_joined_pipes(struct intel_encoder *encoder,
 	}
 
 	drm_dbg_kms(display->drm,
-		    "DP lane count %d clock %d bpp input %d compressed " FXP_Q4_FMT " link rate required %d available %d\n",
+		    "DP lane count %d clock %d bpp input %d compressed " FXP_Q4_FMT " HDR %s link rate required %d available %d\n",
 		    pipe_config->lane_count, pipe_config->port_clock,
 		    pipe_config->pipe_bpp,
 		    FXP_Q4_ARGS(pipe_config->dsc.compressed_bpp_x16),
+		    str_yes_no(intel_dp_in_hdr_mode(conn_state)),
 		    intel_dp_config_required_rate(pipe_config),
 		    intel_dp_max_link_data_rate(intel_dp,
 						pipe_config->port_clock,
-- 
2.49.1

