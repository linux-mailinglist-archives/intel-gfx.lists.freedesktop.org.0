Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 330A6A59C2A
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Mar 2025 18:10:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B1F6310E493;
	Mon, 10 Mar 2025 17:10:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mDZWDKdF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2706210E493
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Mar 2025 17:10:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741626620; x=1773162620;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=2z+uguLgXG8jCiPmHK6/KsA9Rs7L8+vI6Ad9llzDWMU=;
 b=mDZWDKdFMh/nyrJ0/8OO3BWt45LE+J6VdN+kaW1oLh3NkD5znconJNM4
 kPdhZ334fi+k+wwNt5qzqnReo5VVaj1KeHKRCVZS4cBQCNRwtIdB8gAC1
 nNZdbFPK1hlga7WJLYs5Fi3++Uwy1/3RKBlqDUXyc2qCcEQi/4Sdshzif
 DVIG02QDFi1aN710RbwOws5IbNx2gKaWtiGohKvMNiKZM3YMasvpBgYWH
 RCSrlWoQy8dyu26Z2f6rKu5ZS/K+/50D++vlJpAHcKgvQWXyvJXzqLV18
 5VYGdfTVOECfuhUuKRBDnD+B3MqynY6MfX34jf+xrgaqDcYnagIsKeE/0 w==;
X-CSE-ConnectionGUID: +s0Pqu6+SBKINmWu+f7qwg==
X-CSE-MsgGUID: 6bjLxYaOSlCgOgrQXarZvA==
X-IronPort-AV: E=McAfee;i="6700,10204,11369"; a="42348444"
X-IronPort-AV: E=Sophos;i="6.14,236,1736841600"; d="scan'208";a="42348444"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2025 10:09:47 -0700
X-CSE-ConnectionGUID: bqfS+HG/QgeSJr/O9EDq9A==
X-CSE-MsgGUID: nqsWVaHIQragwSIrMW65kg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,236,1736841600"; d="scan'208";a="143251316"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2025 10:09:47 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Mon, 10 Mar 2025 10:09:46 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Mon, 10 Mar 2025 10:09:46 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.44) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 10 Mar 2025 10:09:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=GUod6Vj6S8CFptsilOaOuJhobwWYacccCcpte/dVa/MZPrAe6GT8QqdjFMUYu8mTEtOwET065sgLdBzzTqNjsQJ0v03c81cj1/PslMKk31lh9G1QBiwIHPfjGyL/ESkgdpEbDIxDIdRDQy7lzU1Jy4uhF+l8HwemIhpJPsH3T9m3wJqXecLF2dn7bmNTWHwZRaiMpTAvVAd1ftC/pWdy/t+b3HnRO8WZ0jPCRfxayqTPpjE2Ni4vpPY5QF/ETn/+VZK4CPRB7hetGNT2FomhH+K4J56MexZpKz0WJ1TW8mp3qMeYPeLNoBM2WB7nmCGlXhvZ75dNSxKjhtRp/yjHzA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gwO6lZ5EoVEx4rzlvCjI1fHiAHLhSlIcylh4pRM3WqI=;
 b=fNvf0hhlgdygPUbizxEJ7D7xnEd7Gj1fnIiTz4qwJx35xK5EdvVVXvwl1w0NDwmErOUAd6BIiDMXQidHdnh1etPUpRRpUdZRbdVNii7Rww8Xb22H4Gn6zFPJTlwm299K3xBqlTyI8n55BY4uJ2m0OWNrFiidqDvOUr3rKGxPvGXBjJiEtQ0fxPai42rOYMnLzz5h8Hg+Mx7kovzCquDU7jPnm2lHZDDQkPrcrJzGaMPmqac5SchD6lfcloOLplkctVlKNAXcDv7uT8qvOvDFxRD95tz+P2DfvrabNc6uR0xJBQ6HH6xt+ktTnY/1Ge45hAP/pkCmzWhqqm+698optQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SA1PR11MB8427.namprd11.prod.outlook.com (2603:10b6:806:373::19)
 by MW3PR11MB4651.namprd11.prod.outlook.com (2603:10b6:303:2c::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8511.26; Mon, 10 Mar
 2025 17:09:39 +0000
Received: from SA1PR11MB8427.namprd11.prod.outlook.com
 ([fe80::b156:b61b:d462:b781]) by SA1PR11MB8427.namprd11.prod.outlook.com
 ([fe80::b156:b61b:d462:b781%4]) with mapi id 15.20.8511.025; Mon, 10 Mar 2025
 17:09:38 +0000
Date: Mon, 10 Mar 2025 13:09:35 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Simon Richter <Simon.Richter@hogyros.de>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: B580 on POWER9: Unable to handle kernel data access on read at
 0xc00a0000000003cc
Message-ID: <Z88cz-6mNHjH8RHH@intel.com>
References: <aa90481c-8cb4-4d5b-a440-7e1930543c9d@hogyros.de>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <aa90481c-8cb4-4d5b-a440-7e1930543c9d@hogyros.de>
X-ClientProxiedBy: MW4PR02CA0015.namprd02.prod.outlook.com
 (2603:10b6:303:16d::6) To SA1PR11MB8427.namprd11.prod.outlook.com
 (2603:10b6:806:373::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SA1PR11MB8427:EE_|MW3PR11MB4651:EE_
X-MS-Office365-Filtering-Correlation-Id: 3095a92e-2fe0-4409-aad3-08dd5ff6570b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?0MCZ2DgeW4PnQci27PqVrE/mNgdfplJPNvz2JR0hdf+dvYto5tdH3SvVXy7a?=
 =?us-ascii?Q?3WNbwBZTZDhgB8N3E69IOsfVAuGyrBV1TUBATTdKRLq9ERQGfjf28tOBccqX?=
 =?us-ascii?Q?Nau+z+NNdvVWo0MSZvCcTSOgKSdOxWFXIo9Wy5KPqIora2qVjxgDTNP4OvI2?=
 =?us-ascii?Q?Pj3JDMji07Yo9nd84UD2iZxDCZcdK+fFeOhXJIu5IXtRR9vrCOhThqOehfPO?=
 =?us-ascii?Q?WDa90RPUZZVP2nZP3r+DP28KVXGc41Yb9USYH/JDkEiH1OnSuSOLzEa18OtC?=
 =?us-ascii?Q?gv8IBazHzNCg645M0n2tcGvOibyxdU2EdBdfceUvOjzEyVtQjGEbyYKT85wy?=
 =?us-ascii?Q?vnT2EjeWM2tsT1ANskY00D/oSOovnRfAsY9TdcqkwdtHGkd0xQPiET0BqKif?=
 =?us-ascii?Q?ZF2zOHwMh/x7H0zY9xVnE85hn5srb61dkWotjPXbCv/li7n0F6zHsjhWdoRy?=
 =?us-ascii?Q?THQy9aUfIlKTIbkEvA/a12JM7qDF1o4ajE8WWh7klpYCv5RBiXWSSxhJU+Mt?=
 =?us-ascii?Q?h8UuJlYhfjfOO4IgpJjpc8YV5e1kQkL36+Fxlz0RMlDI0/DUHjEHEQknCtxD?=
 =?us-ascii?Q?EMD8cmEQsTxZTL7oc03UOlHped6hIG4aPNIyfy1wglygiKGkt2GlBroBKfxr?=
 =?us-ascii?Q?I1Leqr59j/tQS7Q8kzcprYzCq5RrU3FxZePgW8202cxKVSa193z/Ttc2fZr4?=
 =?us-ascii?Q?AE+eh0FVEiTpt4NUfm0MJSjG30RO+84gEbKFST414DSnnFmpxrjL3n7fAUbp?=
 =?us-ascii?Q?GFk6fIdPHQx0HZF1UdQbiviLlJt5iaADvCUQcV+rg9qZE94FnrEZ0FH7iET2?=
 =?us-ascii?Q?T+Bz55oFPKouyZpVjA4yVvM8+u8SXLyu9gYE/enFYDg2WdSyLkU1uYbeJyay?=
 =?us-ascii?Q?jpR/NreNqA0JTyEeAPZ7si2plLjoiE2ARG7q6zZtIIHCw91a0hsaXehrJFN4?=
 =?us-ascii?Q?tQ1Uy01bJdaz2qDwcN32UydhQ5wJt4tr3yrXxqQHxnvYx6fXYYNrOybEGYdx?=
 =?us-ascii?Q?9Muv48WxH3MzCIQK/r4SttWGQuK2XC6leUgWz7tetSmi2GjG78o8PJ4/yqiz?=
 =?us-ascii?Q?qc5esQYaXT0PS07gSkBbaykf3lrK0/O/cBwP5AYY6igCkhwmiaquUsy2X1vr?=
 =?us-ascii?Q?hxd8vV0Qy7kAJSTYYXSJJfRIbb+vdrwzcQNMTefboO9DA2itayORop1iHOCA?=
 =?us-ascii?Q?2TWKfDoo729YtzgbiZIpJJEdiMdKSwCqyWDZxnDPV7PzrVO30UfJKyFt71Hw?=
 =?us-ascii?Q?dxZu0huWVk6GxcRYXz1OaPqLQxITme4AynPvcqmHxWeYqCk+GXW5ExgZqqJE?=
 =?us-ascii?Q?Sfka0TQGh1cYuHwBz/ZDTXwTpxPCTsGeE8+JtWe6CmfkbA=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SA1PR11MB8427.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?O6iAwd7AYaP8PT0jvZ8p8Ae56RG3xpFga7oRTR1bPdSGo/NJ6gBdChigtGFq?=
 =?us-ascii?Q?ZwiS9roHSDx2/BrqCw8P2gb1gtn6q+06iip5kbSglG1jfeF2l7zGlm93+Z/U?=
 =?us-ascii?Q?9i9hiVZ/6rXv9bLkn1epfQXxP5ctH1fPWzo23dgxo+sJPplF6qY6Jv9KOFBx?=
 =?us-ascii?Q?Bp1hcTdFuRJP29bIMWmfPLZmvgu16pqCDShHHiH+wV7le/cPhic6RlvgrnhU?=
 =?us-ascii?Q?abCYGsQsbQo3X8I9GjmnpbBQRlOxe+BiU4ZkzW0uC3Q/BTAcUauV4Go9gYmH?=
 =?us-ascii?Q?KoaG44cnWbL1O6AUIjSNr36KFjOB6d9F61UY4JWra6rCfYGTILD31MN/NULy?=
 =?us-ascii?Q?C+IZ3WbWOON3YWg5oaF/HCQnjJ5DjgkqG3sLexiaciUkEFpLAUl58VBD6mbu?=
 =?us-ascii?Q?t4s/EbATKaZFC1i6I2mxqSjPBwo6Un7XjDvKNRZjXgoDU7OuxrhwQroVcP1J?=
 =?us-ascii?Q?7IOMQanxK/pyJzGJ3x1aB0u17DSFTC6I9RdxS3g3I69Y8iai7nb9mNjMDOSf?=
 =?us-ascii?Q?d+t26ON2k6oAieeaaYz6aa9KQN3W0J2q1fYmHOGqP+uZQdamhwVpyB4vqbrJ?=
 =?us-ascii?Q?1K4C4iNA5DiSNonKiJXK/S2qH5Q0aRdo6IEHe/GZeDkfyawy2panWKJJMzGL?=
 =?us-ascii?Q?ZJ4PC8oi6sHO1dRUbVbKr5NHoznOSbNyNoO3wmPTsTzQKUcKNa/UPuqbbxPk?=
 =?us-ascii?Q?epJZ2w1em73SoIZ7sLlcUlH51XLEynDofQQxxWjLAolw5zsaLmeLWQNPYVE4?=
 =?us-ascii?Q?2ty6c26SqZahJHYOWR7dTkHD6XXKchH5A635PTx1aZFY+DTcKGucjd/Kilpf?=
 =?us-ascii?Q?1/IH709E8/bYsCIBQjeRHiwmwG+gbqPYNIwO5KO/IXd4/+pcxYJxdVTsfOGh?=
 =?us-ascii?Q?oLc9CXFOb/AGBb04FvtMlLi0FElVnIlDqfpg+aiWF7jNwqnoNsAAEse0gqN/?=
 =?us-ascii?Q?vC58u/nkRzs1JbIEtmhqByp6dMzVs7gjJwBVSJs+ckH++zCsl8wkU8dMCa1y?=
 =?us-ascii?Q?dYA622C/ZPT3RRZjoy7vE0/N5jmOviswKNMP1LccIPumgwrjHPHQ3wMl9shd?=
 =?us-ascii?Q?zT7VA+irHVtMfbt844ts4Sgf71Cq/kOO5zceFTYlDVKpls6S8RH1OuVeMb8o?=
 =?us-ascii?Q?ldjJ9vwrZXAYunsQ/eVZ1H0sc1rXoWk7duNxVIzliaWtNebtLiLsh5a2Soy4?=
 =?us-ascii?Q?odSRA4/v0zhkG5auzDbQdNXwfJTwAYR78WTX9tM/qjA5fNl3F21e3rMst9Ro?=
 =?us-ascii?Q?TF6lq2vLZ+2TCQbtY9DLZc2qGEs/Tcg+1IBJ0GMd6HqaVc5knKYKyyWFElff?=
 =?us-ascii?Q?l6xvKa7nDlz5wkf3aOMhYHQnASfr0cGzM/VMvyEomH/Dk0KCjYOdF+5EaHaK?=
 =?us-ascii?Q?TCaSlrsVoDDE/12WzDwIUmXUbUOO6I/atem2QNSMFqAVnAZdDsOPL8Ny0zFH?=
 =?us-ascii?Q?LaYE3AEQicUX4JgBHds5cPVBGFWNgA0zEeHjN2+PGBuyycj8N+OtCP5Aycj/?=
 =?us-ascii?Q?IRjlIPtMFE4cUHUVI548DkmHwd7ppUsETOeGwrKlgYlRmVW2jsnwyyNAsekL?=
 =?us-ascii?Q?pxEEC+5hlF3LMTqiO7QS4HZRLVlntJS7Zd9hMMtrZgHw1WDwUmk1Nefih2pS?=
 =?us-ascii?Q?vQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3095a92e-2fe0-4409-aad3-08dd5ff6570b
X-MS-Exchange-CrossTenant-AuthSource: SA1PR11MB8427.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Mar 2025 17:09:38.5894 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Vmk4S5kiljLeIjwGXdniiwxpfuS2l2/Y5v+cWAO3XQ9uGs76RyzIOsT097X7IssDETK3wwZ+DA2lUJPLoex7XQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4651
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

On Mon, Mar 10, 2025 at 01:04:36AM +0900, Simon Richter wrote:
> Hi,
> 
> I've built a horrible contraption and received the following output:
> 
> BUG: Unable to handle kernel data access on read at 0xc00a0000000003cc
> Faulting instruction address: 0xc00800000dd46484
> Oops: Kernel access of bad area, sig: 11 [#1]
> LE PAGE_SIZE=4K MMU=Radix SMP NR_CPUS=2048 NUMA PowerNV
> Modules linked in: xe(+) xt_conntrack nft_chain_nat xt_MASQUERADE nf_nat
> nf_conntrack_netlink nf_conntrack nf_defrag_ipv6 nf_defrag_ipv4 xfrm_user
> xfrm_algo xt_addrtype nft_compat x_tables nf_tables libcrc32c nfnetlink
> br_netfilter bridge stp llc overlay binfmt_misc evdev joydev hid_generic
> usbhid hid cec rc_core drm_gpuvm drm_exec drm_buddy gpu_sched
> drm_suballoc_helper drm_display_helper ast drm_ttm_helper ttm snd_hda_intel
> drm_shmem_helper snd_intel_dspcfg drm_kms_helper snd_hda_codec snd_hda_core
> drm ofpart snd_hwdep snd_pcm xts ipmi_powernv snd_timer ipmi_devintf
> powernv_flash snd vmx_crypto gf128mul mtd ipmi_msghandler opal_prd soundcore
> at24 drm_panel_orientation_quirks i2c_algo_bit regmap_i2c ext4 crc16 mbcache
> jbd2 crc32c_generic dm_mod xhci_pci xhci_hcd tg3 nvme crc32c_vpmsum usbcore
> nvme_core libphy usb_common nvme_auth [last unloaded: xe]
> CPU: 32 UID: 0 PID: 453 Comm: kworker/32:1 Not tainted
> 6.12.12+bpo-powerpc64le #1  Debian 6.12.12-1~bpo12+1
> Hardware name: T2P9D01 REV 1.01 POWER9 0x4e1202 opal:skiboot-9858186 PowerNV
> Workqueue: events work_for_cpu_fn
> NIP:  c00800000dd46484 LR: c00800000dd46384 CTR: 000000003006c394
> REGS: c00020000a637660 TRAP: 0300   Not tainted (6.12.12+bpo-powerpc64le
> Debian 6.12.12-1~bpo12+1)
> MSR:  9000000000009033 <SF,HV,EE,ME,IR,DR,RI,LE>  CR: 24008488  XER:
> 20040000
> CFAR: c00800000dd46398 DAR: c00a0000000003cc DSISR: 40000000 IRQMASK: 0
> GPR00: c00800000dd46384 c00020000a637900 c00800000db30600 c00a0000000003cc
> GPR04: 0000000000000000 0000000000000004 0000000035c20060 0000000035c20060
> GPR08: 0000000000000000 c00a000000000000 0000000000000000 0000000000008000
> GPR12: 0000000000000000 c0002007ff7ffb00 c00000000017d1cc c000200005d5c200
> GPR16: 0000000000000000 0000000000000000 0000000000000000 0000000000000000
> GPR20: 0000000000000000 c0002007fbeeb280 c00800000df35350 c00800000df35700
> GPR24: c00800000df35730 c000200006f60000 0000000000000001 c000200006f61628
> GPR28: 0000000000000001 c0000000027703e0 0000000000000000 c00000000c167000
> NIP [c00800000dd46484] intel_vga_reset_io_mem+0x140/0x188 [xe]
> LR [c00800000dd46384] intel_vga_reset_io_mem+0x40/0x188 [xe]
> Call Trace:
> [c00020000a637900] [c00800000dd46384] intel_vga_reset_io_mem+0x40/0x188 [xe]
> (unreliable)
> [c00020000a637940] [c00800000dcbbd88] hsw_power_well_enable+0x1f0/0x238 [xe]
> [c00020000a637990] [c00800000dcbe470] intel_power_well_enable+0x8c/0xb8 [xe]
> [c00020000a637a00] [c00800000dcb6d08]
> __intel_display_power_get_domain.part.0+0x98/0xf4 [xe]
> [c00020000a637a50] [c00800000dcb9260] intel_power_domains_init_hw+0x94/0x3a8
> [xe]
> [c00020000a637af0] [c00800000dcafca4]
> intel_display_driver_probe_noirq+0xf4/0x300 [xe]
> [c00020000a637b70] [c00800000dc4f124] xe_display_init_noirq+0x80/0x124 [xe]
> [c00020000a637ba0] [c00800000dbcee98] xe_device_probe+0x414/0x768 [xe]
> [c00020000a637c30] [c00800000dc13370] xe_pci_probe+0x77c/0xc60 [xe]
> [c00020000a637d90] [c0000000009f4540] local_pci_probe+0x68/0xf4
> [c00020000a637e10] [c000000000169cdc] work_for_cpu_fn+0x38/0x54
> [c00020000a637e40] [c00000000016ff24] process_one_work+0x1fc/0x4d4
> [c00020000a637ef0] [c000000000170e3c] worker_thread+0x33c/0x504
> [c00020000a637f90] [c00000000017d2fc] kthread+0x138/0x140
> [c00020000a637fe0] [c00000000000de58] start_kernel_thread+0x14/0x18
> Code: ebc1fff0 ebe1fff8 7c0803a6 4e800020 60000000 60000000 60420000
> 3d220000 e9291800 e9290000 386903cc 7c0004ac <8bc903cc> 0c1e0000 4c00012c
> 57c9063e
> ---[ end trace 0000000000000000 ]---
> 
> note: kworker/32:1[453] exited with irqs disabled
> 
> The faulting line is
> 
>     outb(inb(VGA_MIS_R), VGA_MIS_W);
> 
> in drivers/gpu/drm/i915/display/intel_vga.c
> 
> The 0x3cc offset is VGA_MIS_R, and R9 points to c00a000000000000, where the
> I/O ports are mapped -- however the legacy ports don't seem to be active if
> the card was never initialized at boot, which it isn't, because the BMC's
> VGA emulation is preferred.
> 
> Commenting out the call to intel_vga_reset_io_mem solves the problem, and I
> get wonderful 1080p60 output -- but obviously that is not a generic
> solution.

Hi Simon, thanks for reporting this. Could you please report this to our gitlab
issues so we ensure this doesn't get lost on this busy mailing list?

https://drm.pages.freedesktop.org/intel-docs/how-to-file-i915-bugs.html

Since you are building your own kernel. Would you mind trying to reproduce
with latest drm-tip branch from https://gitlab.freedesktop.org/drm/tip

I believe Maarten had done some changes on this area lately.
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>

in case he has some quick thoughts...

Thanks,
Rodrigo.

> 
>    Simon



