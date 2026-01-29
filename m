Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id X1hSIiS6e2llIAIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Jan 2026 20:51:00 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E649BB417F
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Jan 2026 20:50:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B5E6210E116;
	Thu, 29 Jan 2026 19:50:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iTiZ/oti";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EFD6810E116;
 Thu, 29 Jan 2026 19:50:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769716257; x=1801252257;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=oSXSE+uLrWw5ADQ2AcnEivqoyVFosnqP608fQUJRO78=;
 b=iTiZ/otiPJT9vD6Bm1hRG/2bD45dOtpNnNeoURUujLb2gDP/muQgPg2D
 +VQ53BAUHiU16OeYKEDChmEBC3lp+vLrFEUf5fjVzSlgX2XOgMZWJnwBl
 7jjMYezIJEcQhYTBcS82dxDhkJDgTqMqNa18+V2XVToRancYsIOkKFfmX
 28TBvSoLn5Vsa52C2FzNFUO8rQp+0i1jCreAhiBL/hHh8gAPVs7Ng2ruk
 owqLfBeRnHxPlfH3OCuXXF/98FFeQQYnr2/Ixu56NFvteSrBG0DGejBOS
 Op7XUFIt3gtabQ+bFsjx2DDSeGuUeVxqvFjLPnxsbeI0aNDtSIxZbdI7U g==;
X-CSE-ConnectionGUID: xmrdjDiXRUyzQZHiUvuoYw==
X-CSE-MsgGUID: 5b0X6qQKT2aZS1ElDU+26g==
X-IronPort-AV: E=McAfee;i="6800,10657,11686"; a="81284549"
X-IronPort-AV: E=Sophos;i="6.21,261,1763452800"; d="scan'208";a="81284549"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2026 11:50:56 -0800
X-CSE-ConnectionGUID: 4pcq/kVASAKHp7ooKT7uww==
X-CSE-MsgGUID: xtAo/M0rS8uMeqbmxzs3Rw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,261,1763452800"; d="scan'208";a="213557674"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2026 11:50:56 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 29 Jan 2026 11:50:55 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Thu, 29 Jan 2026 11:50:55 -0800
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.70)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 29 Jan 2026 11:50:55 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=kk72Im6MZzX6raczCCQY2oKrQdI/SKuEGCVAr5sgCRokUU+qXfnMOMJ1CmNVGCQGTRtgNkJR9GdlyKAp7WlpQVbNs8WDloWU/FFq7LXB22N/yHV58b5U3Fv/oGYh2X3KO8YT4ZLuZlpvcRMV4GKf2R2Z5sOIQkKYiOFs9osoi6he2npTtJ1VAEl38lNsD+4t2y9ot8EjmjDEmt2xLiDxgCH4HEFimzO+h3v4YmT9MjXVCBGjueBgCMp+/QwevdVcYNkcIMBddKO1Q2D7hLV2vPA6yExwFYyuP7OYJDGX9VmcjtB37+aYj6X5ndT7UnJ4Yp9xeffIQspGr+uwJvMWTg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sZaqz7j6GVAHSfLx08FAaE36wJq/D10+89Yd39JTRm0=;
 b=M7ujrNOcjWMkbRcEi9xoh0Ds7993mTde0UUB8LY94NPtAl+C+OW/NsZ7o2v7UkfcDP1dHRkuucnLih0SjH+wGHQh5RZqW/+ZCfPRjhAGRwqtJxM3FeEUbj3b8TX70SI7iUlO2kma2p903ecPDPgRkaQGQzw8KAo0XT4iHbiZ40XwzIP803lcaJKArqW88WkqhihuHhftQjn1yAtu4Qcwhy02nSNvkzZ20DQQsTG/xKlbiU8eYXiyDx3UL9kuhLYzz7LdXDGfAt1ht7LRI8GnRqWWBJEUu4i1q3PDWN3+u9g/hSIBf/lSvTqe3AVyQAXW7tqnnjd8UQ4WgGzr34abBw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by CY5PR11MB6187.namprd11.prod.outlook.com (2603:10b6:930:25::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.16; Thu, 29 Jan
 2026 19:50:53 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9520.003; Thu, 29 Jan 2026
 19:50:52 +0000
Date: Thu, 29 Jan 2026 21:50:47 +0200
From: Imre Deak <imre.deak@intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <jani.nikula@linux.intel.com>
Subject: Re: [PATCH 08/16] drm/i915/dp_mst: Rework pipe joiner logic in
 mode_valid
Message-ID: <aXu6F--1uHmgedwR@ideak-desk.lan>
References: <20260129171154.3898077-1-ankit.k.nautiyal@intel.com>
 <20260129171154.3898077-9-ankit.k.nautiyal@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20260129171154.3898077-9-ankit.k.nautiyal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
X-ClientProxiedBy: GVX0EPF0005F6A3.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:400::28a) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|CY5PR11MB6187:EE_
X-MS-Office365-Filtering-Correlation-Id: bfb95d4b-e79c-4f56-e445-08de5f6fb5b3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?YXMGMjMIKOoEtfT5GFEN3VZMaskRHBI1eucqgEMbwXU3NH5TiUoYK/gqerwj?=
 =?us-ascii?Q?4WjiLvU2YA634Lnd4jkn3YbZ91D8tS3bMRiNW5hA2M2CN9liRb6MfDlc22Qh?=
 =?us-ascii?Q?yv238e6lOfebD/hviR/hC0Ps3m0mc4cuL6sr30Bt9lMyztFBIeLP4aSxVdjz?=
 =?us-ascii?Q?kl1CbGiWYgEeP7Xhx3erF6f1nzRhfXYyDyDA4inDzGnyP6JePdQNz50gAsfj?=
 =?us-ascii?Q?VsLf1uS7IC/FzlYicbo+pIy3Vd9aShUQ6EFAdEmqwsCO4eVqZEAn1wfs6aCD?=
 =?us-ascii?Q?0kDI0OHSOuVLbPfEe6n3uBuBnMWX3K98tjnaGtLe+fqVjongm3DmByjIhT7p?=
 =?us-ascii?Q?ufKe40Hos8veSqJHkO88z6wB94b5UFWN0spgMVGX3UJ5F+2CE2TWyQ1s6gNK?=
 =?us-ascii?Q?wKzDdyhtZYG6x1bgYxz43lZGfMFXQVv783em38CBElIuJuYj4CWy3WVzukab?=
 =?us-ascii?Q?ssOnelKe2jhxI66anD0l8d1qs+Ncsl6geshb4/Q7j/fgw7/zscLhQ5pL4xYW?=
 =?us-ascii?Q?let8EHDjDvrGEvLsa1yI+ViXfLfI3NR8mHShli03UZNMcGLX+tPUJcYuE7nr?=
 =?us-ascii?Q?h5+NRma4Qqx5Lo3bV4KU5Gg4YHTNqIg/SPhGm5RhuwQLdIQ3L4ycX84zGRYC?=
 =?us-ascii?Q?CYTPPesLc0/zErkgQoN1uiiKqJL1eBWVjU9u31eGUnWwkvzX/q0+k9SAr6SS?=
 =?us-ascii?Q?9cXkEy9/ApYuj1lR0s9FSKYpYaRN0bO7LUQOp5VKDBiH4SEYGQZZWyhSqgxg?=
 =?us-ascii?Q?C3/EBciiNTvMCJj223/SHV54hBnL5wlUVRUwC40ibPESE70KZwwV/1LLEM0h?=
 =?us-ascii?Q?adevnPcORIYJPsxQc6gpeb0jMypTBfMqpdnT4PVFpz5TsSe+fVA4x/+rXaAZ?=
 =?us-ascii?Q?HAIheewE0cw0QGOY/+iLCq2tbWl7AZU/fw/wN1x3SA1jFcm4jo7drpd3DWNr?=
 =?us-ascii?Q?R+whVdXPifBbakd+kW1itIiqhpRmbKYX0fCIJUPyjmhwDaOfKEN4z2krCCLV?=
 =?us-ascii?Q?Tm04GZlr7qzUsZaSviiywOhDOgyaNzpdPSuVOXz1tMMg1VXi4C394Emlwp0S?=
 =?us-ascii?Q?zwNkmQ30P/i+HbtS6GsRIDLTk4OkywaZhy3QZte2AOtj+zyycsGyBHzhKlv2?=
 =?us-ascii?Q?5FGAUvvF1mMdhFrDF27bL89xRWulF04/LorRKDFduI2E5Fj2u4JD2AgpI1pz?=
 =?us-ascii?Q?fWzdJG7vBs/97fK+/MdkV5YKBnluFGaiaWBm/r0Jfoa24vEQa9qt1HjfvLr1?=
 =?us-ascii?Q?FPM1sXEChUFcUUYd1Hj41b+PF8ahOwS4/T6JKD/162O6JrVIaLLMkBfNDhBP?=
 =?us-ascii?Q?ehCBFWYPrhGqC4muY6/lHvE5gDNIajhtXkN8SmtG1Xf8pApzydCv6ezkJWlI?=
 =?us-ascii?Q?850qS7AxBomyxtzpBSwVPpD27Csp1zeegnGpZoffE/8+p5U9iIqNWvPUGhAO?=
 =?us-ascii?Q?LlHHJi0bM8/D+sUHIj7l/UQ/c5Dk4Hmfz/qAR/Aj28i49KRmN1KLpWjk2JSI?=
 =?us-ascii?Q?pv2QuH9MxcQzmzTo6LPXOim8bkSLU1w0s1qv8DxyG6GreBONrCdUeT5wKTvo?=
 =?us-ascii?Q?/JV0PFLz/QB7K5/ZIhE=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?EC26wRdB+W+utShZBd/ZQhIvXm3zJXOKcFU1jkObeNnwP77r9pXWS58q9kv+?=
 =?us-ascii?Q?TSprCI93QEOAaWBcCKYIEvSGBmyINJZEfkpKKiFxTetfteAfHvCNappiL+eQ?=
 =?us-ascii?Q?uWN989qkkAVS7E19Kj4skRFmb1EjvhkIAkM0LSy8T4IvvN3XwHjPGPS0tReY?=
 =?us-ascii?Q?wlmyvT1GFkj9vGPEHIk6QSFRC+ChXsPP+FRVDmW0YK/UDX9Xl3b0iu8LRHuj?=
 =?us-ascii?Q?uwED09lNqxheM9KEVM93Xn8pa+AwLUW2r4R/1xHzVjfzRTw7rFp3Q3oHUs4g?=
 =?us-ascii?Q?/DjevjAuRUmYKXpfKVvi3i5WMXlYwIM5gd1p6B+efHg8z3haSUpW2bnBec8/?=
 =?us-ascii?Q?9NfUlPTMqviCZhfAiKH/YlMJtZX7KWjkyYGFeA/4HaDxMiVNea5PmCs2mnvb?=
 =?us-ascii?Q?omu2JFBglIuQHBGSHWQ6EOm4hLpZWN5yqz2La0yLjc7tAm483Py4BZB9XhRR?=
 =?us-ascii?Q?t44XfWBd3W8v8PI6NF9smFQrCaILNLSR6b07uEDL8clD3PP6Jab1gnyL4sJV?=
 =?us-ascii?Q?n5DmM2F2qb6pLQm8Sz3zpLlccZjpkISKlt4yy19Jjfa1T9B5TZNW2im2D3yZ?=
 =?us-ascii?Q?qWPZCs9FjaWIW8GDVRtTi6BmdwmkU0BOPFqaIdNeIdJypu+JaS9LOib3oP2a?=
 =?us-ascii?Q?4pXxXTkdPdvWWPmOOV2SaBnnxZOaes8sF56meJBytOQeMKB3qageJxNL4etb?=
 =?us-ascii?Q?M6oaCJIt1NczkeGyG1cb1x266MAysuzRA9UPQFLNpjGKjRZvhmy73rLaWuFt?=
 =?us-ascii?Q?/5C4mKdNWfzAfaMLXivTzANJa1uEbwvEOsv3zIpsZU/p1PpvLUfWduoyVMMB?=
 =?us-ascii?Q?lUpjWgRSgLx/1ZRgTX6rolfMaV+OQLYFrV7NX04MKvuir6mk2CLMLsEMn3rg?=
 =?us-ascii?Q?VO4NxkbQLrEcrlNqJFDeC4XIIjU9d+wbtLoT6tEHgw917pcu6dRRi5JyJnCo?=
 =?us-ascii?Q?3m1yjlyqNSHhd+cY/WahuS6JuMKXeolUZDUPFatKW3oSq76zv5LAGxgQMnsF?=
 =?us-ascii?Q?OGkLzM3NFlCQlpuT844KNg+eEzE4WeBv83/GqjbTu1GFb3mZALwce91xzqfL?=
 =?us-ascii?Q?IARNN3k8hYFCfUL/ay1ERNBv2OzZo3a8phcP9e28Rjh0nF86BYeZ+SQ9t+Ci?=
 =?us-ascii?Q?5FRhc0Rq5b4wXiRR5CF/PSrGUzcG8a2sqLk1BP4xCfvsG8y2bH7m3hZ6xfGk?=
 =?us-ascii?Q?vXMVD3tb/yf3BzzpvLLBWehVMz99A46ggdhVPitPiQc5wBajLZpSoB4lCNz4?=
 =?us-ascii?Q?L6EvDSKE8jTWiPOjYD/wAuzHWsaBt6DovEZOjbtAmEVD44E95rISZjpI/V0r?=
 =?us-ascii?Q?SZdorDutE7hyvkzheXIa7f0dgQZlyh8iAFzJcPSlCtraWPzHmeUcEa9AHSly?=
 =?us-ascii?Q?MmxJ+pYfvO3OkZQAib4zB/rYBypibsHBfxP0LCLf3nmv7tNUyqTx4+gIa4Ey?=
 =?us-ascii?Q?ANujdF36f3bSQ6pU3w5MwEy+3ea2sRoqxkkp9r9zFL5qsgMHZP7ax+RJMXyr?=
 =?us-ascii?Q?hlbp9FjtLrTByETKV3iriILHdPZ9PKD06lEEbloQK+YNBozh7MRQDtnIHL1P?=
 =?us-ascii?Q?MbPd1sQYYal8wB74oOojIOGPpKEfifp6uVar/RwTp8QVS0sRQGNY7nfLd3+V?=
 =?us-ascii?Q?466sPl575gZE0PUPDbeCOhrbGuqzIIxwEYLPZnYb8Tp9yZLKgzv+Jxe+tKml?=
 =?us-ascii?Q?Hi2Mb3rL1t7LWFZ3uRSM8pwu2s3kCwcmQbNKui2qv84vU4WvmEl523GRANVf?=
 =?us-ascii?Q?9FUY9MHrsQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: bfb95d4b-e79c-4f56-e445-08de5f6fb5b3
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Jan 2026 19:50:52.8954 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: bRwiqe4Wc0a5SnFOlcoKCn6KKdr3wZKqfnCLTB7aAPG+MsnRR4zabku+Z1jLm0YsKGQYm8s6tzCK9e+Z7LbIlA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6187
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[ideak-desk.lan:mid,intel.com:replyto,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	DKIM_TRACE(0.00)[intel.com:-];
	HAS_REPLYTO(0.00)[imre.deak@intel.com];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_THREE(0.00)[4];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: E649BB417F
X-Rspamd-Action: no action

On Thu, Jan 29, 2026 at 10:41:46PM +0530, Ankit Nautiyal wrote:
> Refactor the logic to get the number of joined pipes. Start with a single
> pipe and incrementally try additional pipes only if needed. While DSC
> overhead is not yet computed here, this restructuring prepares the code to
> support that in follow-up changes.
> 
> v2:
>  - Remove fallback in case force-joiner configuration fails. (Imre)
>  - Drop redundant MODE_OK assignment (Imre)
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c     |  2 -
>  drivers/gpu/drm/i915/display/intel_dp.h     |  3 +
>  drivers/gpu/drm/i915/display/intel_dp_mst.c | 91 ++++++++++++---------
>  3 files changed, 56 insertions(+), 40 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index a355900a31d9..febfea641e56 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1371,7 +1371,6 @@ intel_dp_mode_valid_downstream(struct intel_connector *connector,
>  	return MODE_OK;
>  }
>  
> -static
>  int intel_dp_max_hdisplay_per_pipe(struct intel_display *display)
>  {
>  	return DISPLAY_VER(display) >= 30 ? 6144 : 5120;
> @@ -1434,7 +1433,6 @@ bool intel_dp_has_dsc(const struct intel_connector *connector)
>  	return true;
>  }
>  
> -static
>  bool intel_dp_can_join(struct intel_display *display,
>  		       int num_joined_pipes)
>  {
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
> index 25bfbfd291b0..6d409c1998c9 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.h
> +++ b/drivers/gpu/drm/i915/display/intel_dp.h
> @@ -225,5 +225,8 @@ int intel_dp_compute_config_late(struct intel_encoder *encoder,
>  				 struct drm_connector_state *conn_state);
>  int intel_dp_sdp_min_guardband(const struct intel_crtc_state *crtc_state,
>  			       bool assume_all_enabled);
> +int intel_dp_max_hdisplay_per_pipe(struct intel_display *display);
> +bool intel_dp_can_join(struct intel_display *display,
> +		       int num_joined_pipes);
>  
>  #endif /* __INTEL_DP_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index fc9367cc42ec..414c7ffc704e 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -1420,7 +1420,6 @@ mst_connector_mode_valid_ctx(struct drm_connector *_connector,
>  	struct drm_dp_mst_topology_mgr *mgr = &intel_dp->mst.mgr;
>  	struct drm_dp_mst_port *port = connector->mst.port;
>  	const int min_bpp = 18;
> -	int max_dotclk = display->cdclk.max_dotclk_freq;
>  	int max_rate, mode_rate, max_lanes, max_link_clock;
>  	unsigned long bw_overhead_flags =
>  		DRM_DP_BW_OVERHEAD_MST | DRM_DP_BW_OVERHEAD_SSC_REF_CLK;
> @@ -1428,6 +1427,7 @@ mst_connector_mode_valid_ctx(struct drm_connector *_connector,
>  	bool dsc = false;
>  	int target_clock = mode->clock;
>  	int num_joined_pipes;
> +	int num_pipes;
>  
>  	if (drm_connector_is_unregistered(&connector->base)) {
>  		*status = MODE_ERROR;
> @@ -1480,47 +1480,62 @@ mst_connector_mode_valid_ctx(struct drm_connector *_connector,
>  		return 0;
>  	}
>  
> -	num_joined_pipes = intel_dp_num_joined_pipes(intel_dp, connector,
> -						     mode->hdisplay, target_clock);
> +	for (num_pipes = 1; num_pipes <= I915_MAX_PIPES; num_pipes++) {
> +		int max_dotclk = display->cdclk.max_dotclk_freq;
>  
> -	if (intel_dp_has_dsc(connector) && drm_dp_sink_supports_fec(connector->dp.fec_capability)) {
> -		/*
> -		 * TBD pass the connector BPC,
> -		 * for now U8_MAX so that max BPC on that platform would be picked
> -		 */
> -		int pipe_bpp = intel_dp_dsc_compute_max_bpp(connector, U8_MAX);
> -
> -		if (!drm_dp_is_uhbr_rate(max_link_clock))
> -			bw_overhead_flags |= DRM_DP_BW_OVERHEAD_FEC;
> -
> -		dsc = intel_dp_mode_valid_with_dsc(connector,
> -						   max_link_clock, max_lanes,
> -						   target_clock, mode->hdisplay,
> -						   num_joined_pipes,
> -						   INTEL_OUTPUT_FORMAT_RGB, pipe_bpp,
> -						   bw_overhead_flags);
> -	}
> -
> -	if (intel_dp_joiner_needs_dsc(display, num_joined_pipes) && !dsc) {
>  		*status = MODE_CLOCK_HIGH;

This needs to be inited before the loop.

> -		return 0;
> +
> +		if (connector->force_joined_pipes &&
> +		    num_pipes != connector->force_joined_pipes)
> +			continue;
> +
> +		num_joined_pipes = num_pipes;

No need for two variables.

> +
> +		if (!intel_dp_can_join(display, num_joined_pipes))
> +			continue;
> +
> +		if (mode->hdisplay > num_joined_pipes * intel_dp_max_hdisplay_per_pipe(display))
> +			continue;
> +
> +		if (intel_dp_has_dsc(connector) &&
> +		    drm_dp_sink_supports_fec(connector->dp.fec_capability)) {
> +			/*
> +			 * TBD pass the connector BPC,
> +			 * for now U8_MAX so that max BPC on that platform would be picked
> +			 */
> +			int pipe_bpp = intel_dp_dsc_compute_max_bpp(connector, U8_MAX);
> +
> +			if (!drm_dp_is_uhbr_rate(max_link_clock))
> +				bw_overhead_flags |= DRM_DP_BW_OVERHEAD_FEC;
> +
> +			dsc = intel_dp_mode_valid_with_dsc(connector,
> +							   max_link_clock, max_lanes,
> +							   target_clock, mode->hdisplay,
> +							   num_joined_pipes,
> +							   INTEL_OUTPUT_FORMAT_RGB, pipe_bpp,
> +							   bw_overhead_flags);
> +		}
> +
> +		if (intel_dp_joiner_needs_dsc(display, num_joined_pipes) && !dsc)
> +			continue;
> +
> +		if (mode_rate > max_rate && !dsc)
> +			continue;
> +
> +		*status = intel_mode_valid_max_plane_size(display, mode, num_joined_pipes);
> +
> +		if (*status != MODE_OK)
> +			continue;
> +
> +		max_dotclk *= num_joined_pipes;
> +
> +		if (mode->clock > max_dotclk)
> +			*status = MODE_CLOCK_HIGH;
> +
> +		if (status == MODE_OK)
> +			break;

Nit: would be better to match what intel_dp_mode_valid() is doing:

		if (mode->clock > max_dotclk) {
			*status = MODE_CLOCK_HIGH;
			continue;
		}

		break;

With the things above addressed:
Reviewed-by: Imre Deak <imre.deak@intel.com>

>  	}
>  
> -	if (mode_rate > max_rate && !dsc) {
> -		*status = MODE_CLOCK_HIGH;
> -		return 0;
> -	}
> -
> -	*status = intel_mode_valid_max_plane_size(display, mode, num_joined_pipes);
> -
> -	if (*status != MODE_OK)
> -		return 0;
> -
> -	max_dotclk *= num_joined_pipes;
> -
> -	if (mode->clock > max_dotclk)
> -		*status = MODE_CLOCK_HIGH;
> -
>  	return 0;
>  }
>  
> -- 
> 2.45.2
> 
