Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B5EFBA6EAB9
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Mar 2025 08:40:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3F1A010E38B;
	Tue, 25 Mar 2025 07:40:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.b="jSmXmJ9H";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from NAM10-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam10on2066.outbound.protection.outlook.com [40.107.93.66])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F2C0B10E389;
 Tue, 25 Mar 2025 07:40:41 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=LZymn5nTKN+LoZALs854DUX24JkZM3ZYHFj/jHwWKNESRttqxJxx882ZD2quxdpol3sC3Wvw9yRb2chKxlaXJ99dpWAKfi8G4Uxq2Lt9nSuDFXEtpGSvTwSzQzuLU/JrJx+kF4aR693UeGNJAC7LXHia8Kw9GU18LMQKvPdVaXtxT6cRNso6aJHwCkA6e1CHfGC6HJBJDthJJ/XWAT6fdtAHitB31qbG5F6WaUB93AmZlm/tGvppBGGF9nQu8xx9jyVQyS2c0/l8K0EU27J+5OO4XE6sK4gNCP1A+xAJQUjO5ox72orLE/0OBcHPN8XuH9atVhmpWK2x/ffYPub3hg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6kIGar7guIpgQcXF0bUYEdEqfTt2eJc0vJBZkUyc02I=;
 b=rMg2Mi1QuZLWVvtcr0aZDLB/jdu7iSbTdbxu9Y671+r+aGFaF4V49Glip6se/hwk654pIvfb7R/I5w8y8eZChFK1v0WM5MzFtVbghT0VjClxxOmgimCLYkVGFzronXod/yYKXnkLsAJAioagB+2EFpZ9C41jRar4aVqadnstIMHsoo6ZWL4rGF9mtnRMemg54FHXygnlJGPI7bAqAhaU+IWMlCQ5YbjChQwVIwLwHcd/JYaJux84dT6BkAA4xDxPL80ou0g3+t9xuXzMMDNuUojiy/FJiwx3zuHCkkxlT5qCqh4tI+hIkhWGcUxq9QvJK1cdsq63NVonFPOy+w0tow==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 216.228.117.161) smtp.rcpttodomain=intel.com smtp.mailfrom=nvidia.com;
 dmarc=pass (p=reject sp=reject pct=100) action=none header.from=nvidia.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6kIGar7guIpgQcXF0bUYEdEqfTt2eJc0vJBZkUyc02I=;
 b=jSmXmJ9HtX5DQbUIOctJz0OK8m5/aLimBftfZXBUVhXpl30xPPerwihjsUIkOQZmDTRUSjJCONLwpjLIE/YerMrxAhFdhFg/WWZvvsuBulhdX6dbQN5JtEJFoJ619vKHmX6AcK9G3kMC+SQQrvuhi8meU0ZYZM7Uia5nsyFkmrBSNvAKi3J9e+YkMc8R79qxULh/87J4bKQre+pPy7Pzq+a5uBdlLiMnD4zY/vE5D39QGSZLP71jI+5Yd8GbbxorJ1WMaF8SiT5NwcJ6eu4tvKPArNCCW07jtkKXnjO4VdM6X4LlaymNJ1GjE9x+fMNdG4Lnq4xMAsm+sW3blqR2cg==
Received: from BYAPR01CA0012.prod.exchangelabs.com (2603:10b6:a02:80::25) by
 DM4PR12MB6253.namprd12.prod.outlook.com (2603:10b6:8:a6::12) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8534.42; Tue, 25 Mar 2025 07:40:35 +0000
Received: from SJ5PEPF000001CE.namprd05.prod.outlook.com
 (2603:10b6:a02:80:cafe::ec) by BYAPR01CA0012.outlook.office365.com
 (2603:10b6:a02:80::25) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.8534.37 via Frontend Transport; Tue,
 25 Mar 2025 07:40:34 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 216.228.117.161)
 smtp.mailfrom=nvidia.com;
 dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=nvidia.com;
Received-SPF: Pass (protection.outlook.com: domain of nvidia.com designates
 216.228.117.161 as permitted sender) receiver=protection.outlook.com;
 client-ip=216.228.117.161; helo=mail.nvidia.com; pr=C
Received: from mail.nvidia.com (216.228.117.161) by
 SJ5PEPF000001CE.mail.protection.outlook.com (10.167.242.38) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8534.20 via Frontend Transport; Tue, 25 Mar 2025 07:40:34 +0000
Received: from rnnvmail203.nvidia.com (10.129.68.9) by mail.nvidia.com
 (10.129.200.67) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.4; Tue, 25 Mar
 2025 00:40:20 -0700
Received: from rnnvmail202.nvidia.com (10.129.68.7) by rnnvmail203.nvidia.com
 (10.129.68.9) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.14; Tue, 25 Mar
 2025 00:40:20 -0700
Received: from nvidia.com (10.127.8.9) by mail.nvidia.com (10.129.68.7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.14 via Frontend
 Transport; Tue, 25 Mar 2025 00:40:18 -0700
Date: Tue, 25 Mar 2025 00:40:16 -0700
From: Nicolin Chen <nicolinc@nvidia.com>
To: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
CC: "iommu@lists.linux.dev" <iommu@lists.linux.dev>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Kurmi,
 Suresh Kumar" <suresh.kumar.kurmi@intel.com>, "Saarinen, Jani"
 <jani.saarinen@intel.com>, <jgg@nvidia.com>
Subject: Re: Regression on linux-next (next-20250321)
Message-ID: <Z+Jd4GDIzCP5cBQE@nvidia.com>
References: <SJ1PR11MB61295789E25C2F5197EFF2F6B9A72@SJ1PR11MB6129.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <SJ1PR11MB61295789E25C2F5197EFF2F6B9A72@SJ1PR11MB6129.namprd11.prod.outlook.com>
X-NV-OnPremToCloud: AnonymousSubmission
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ5PEPF000001CE:EE_|DM4PR12MB6253:EE_
X-MS-Office365-Filtering-Correlation-Id: 106f11f4-e4f8-4ec4-9d02-08dd6b705402
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|82310400026|36860700013|1800799024|376014|13003099007; 
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?Mt/ecRIm2AKk6NwjL4Z4XjGAR0LpPVMeFb7xW+XbbCfpxjK/rHshaprIfIZ9?=
 =?us-ascii?Q?5dTdvVARVujjrrJwRK6B14BptWxOavz/GJBuOWyxlhYBz98N6FbUIQpEmkyB?=
 =?us-ascii?Q?Hmt4i4e7V06XsH4OXY6j+feM8MrJkh7S0JjkBPL489q1KpjOfAbLKJSVHls8?=
 =?us-ascii?Q?/lhREQrMTxE9n5G+qrcGbgPqiZ5h8F3R2RC0ABV5F5C0ydhpOprTRgzsIKba?=
 =?us-ascii?Q?LrWSMJCygzah9M5E06sNfkTh0B/imFCGNyWKsAuyWt4lqAAKtrpaxS7jTLWv?=
 =?us-ascii?Q?DcayoTtZgJFY2cl+zjcfViDT8D4n7y4O+pj1DJLBz2jIFVoU7Fwv9afSS96L?=
 =?us-ascii?Q?a5gv/uWyeIwkq7I2joxQrbso1L/pWWvNz7yrqMpEM1c01dBP1X3VfemJjc0y?=
 =?us-ascii?Q?8kOKBTb19IMPAhWjLlCgNU6Fkfm+WCq4sdkZ3i7NLZfC+EvIi2FK0ue87Wic?=
 =?us-ascii?Q?ZTPZYO/u3s9etlwNDq6IRnRj1RiJ95xJMAgrfpJiE2LsbjNdfGkIZe67h6du?=
 =?us-ascii?Q?7QLnzXIbg71PgQan6rpd/VvIACFBwCLPsPkqztZTzN98BF7IairYEEirxALP?=
 =?us-ascii?Q?eVQC1JOkjMqUI9ugbzUveeedEidz4IoZyaJiVvtmhNF+rWvLG2+OM7zqsS45?=
 =?us-ascii?Q?4mdN33TL7Dt2B4GoLTY5rjBhNHoxAR58vsJDCmFZnUCE+yEi/e5r9st9Nttr?=
 =?us-ascii?Q?eFqrteTYTephVAzpFgd7T+lv+GTBPgvABWNum5pg+PgSxIN9m5Gn6br2fZ94?=
 =?us-ascii?Q?SL/QTeNkOiSUAhp/RNGl/gHoKJOILH3ybLHNfCPPLuVx/TwRCFwupvsdDyXh?=
 =?us-ascii?Q?RCBmtMVdAvm4YaIKduidr7PVDVKjp6xXyzi3PV4Oei0SJelRGsPaEDG++FjZ?=
 =?us-ascii?Q?yJCbfAIDBPduC1R9r2DvI+8ZzDkfj6fIqlfYuppEWxePwqcOM0h81RAsmo6d?=
 =?us-ascii?Q?M4s2isq5X8InFU7+pIE7V/RFCBZaDGLhsyBGUTCV0T4nPv4P4J365mJqJwNc?=
 =?us-ascii?Q?MTSSRqlCjUP9UCN3pjZvT5/CGllsUszNWNf04MAajo3goS0OFiHCrnO9M38f?=
 =?us-ascii?Q?BkjZEFNYyHgBtBScUEKwjPXrhJdeNferP0dlUs+2TWTtjyxwYw+xTu3RJt+m?=
 =?us-ascii?Q?CFGnDHdaixGxlqJn3ZA0KvJEm/IhVhFWF+ELWUj+gNt/oUZro5h5zLlZFpAb?=
 =?us-ascii?Q?N3wJCh1RNWHOFPqW/qJ3dE7XuN+rEJVMOwNdfY2p35nTQw3IDYDBJ4J6r9PX?=
 =?us-ascii?Q?ng4XHp0HU+222BJAfwfOCwxkWxAKSsvmy4tVcsah3/Y4w392ZOlEr+NaCkwJ?=
 =?us-ascii?Q?ETFyWFQjNpv63w3eQnR6niatW0XoyDCjBUSYqwpCGlHbb4FhiWG+6tpOVK79?=
 =?us-ascii?Q?+Am3yCvSMfnF6je5EGDMGN0VJZJkM079qGjl0ONA4pSQOBfJZW2gDYTTs5HT?=
 =?us-ascii?Q?vjnJ+sV6ILhH+C8vpHFuYB+pP/aBbyxJm24BpIbQk+THP8Fk4qoBBmrQXOu6?=
 =?us-ascii?Q?pANwWv81j0utwmo=3D?=
X-Forefront-Antispam-Report: CIP:216.228.117.161; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:mail.nvidia.com; PTR:dc6edge2.nvidia.com; CAT:NONE;
 SFS:(13230040)(82310400026)(36860700013)(1800799024)(376014)(13003099007);
 DIR:OUT; SFP:1101; 
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Mar 2025 07:40:34.5038 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 106f11f4-e4f8-4ec4-9d02-08dd6b705402
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a; Ip=[216.228.117.161];
 Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: SJ5PEPF000001CE.namprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR12MB6253
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

(CC += Jason)

Hi Chaitanya,

On Tue, Mar 25, 2025 at 05:39:39AM +0000, Borah, Chaitanya Kumar wrote:
> Hello Nicolin,
> 
> Hope you are doing well. I am Chaitanya from the linux graphics team in Intel.
> 
> This mail is regarding a regression we are seeing in our CI runs[1] on linux-next repository.
> 
> Since the version next-20250321 [2], we are seeing the following regression
> 
> `````````````````````````````````````````````````````````````````````````````````
> <4>[    0.226495] Unpatched return thunk in use. This should not happen!
> <4>[    0.226502] WARNING: CPU: 0 PID: 1 at arch/x86/kernel/cpu/bugs.c:3107 __warn_thunk+0x62/0x70

Hmm....I wonder why x86 can be affected...

The only four callers of iommu_dma_prepare_msi() are ARM platforms.

> <4>[    0.226513] Modules linked in:
> <4>[    0.226521] CPU: 0 UID: 0 PID: 1 Comm: swapper/0 Not tainted 6.14.0-rc7-next-20250321-next-20250321-g9388ec571cb1+ #1 PREEMPT(voluntary) 
> <4>[    0.226532] Hardware name: ASUS System Product Name/PRIME Z790-P WIFI, BIOS 0812 02/24/2023
> <4>[    0.226539] RIP: 0010:__warn_thunk+0x62/0x70
> <4>[    0.226544] Code: 34 4c 5d 02 01 e8 fe f6 a7 00 84 c0 75 d9 48 c7 c7 f8 bf 0d 83 e8 7e c6 08 00 48 c7 c7 a0 a2 a0 82 e8 e2 f6 a7 00 84 c0 75 bd <0f> 0b eb b9 cc cc cc cc cc cc cc cc cc cc 90 90 90 90 90 90 90 90
> <4>[    0.226559] RSP: 0000:ffffc90000067d78 EFLAGS: 00010246
> <4>[    0.226565] RAX: 0000000000000000 RBX: 0000000000000000 RCX: 0000000000000000
> <4>[    0.226571] RDX: 0000000000000000 RSI: 0000000000000000 RDI: 0000000000000000
> <4>[    0.226577] RBP: ffffc90000067d80 R08: 0000000000000000 R09: 0000000000000000
> <4>[    0.226583] R10: 0000000000000000 R11: 0000000000000000 R12: 0000000000000000
> <4>[    0.226589] R13: ffffffff83c9417c R14: ffff88887f344bc0 R15: ffff888102370100
> <4>[    0.226595] FS:  0000000000000000(0000) GS:ffff8888dacfd000(0000) knlGS:0000000000000000
> <4>[    0.226602] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> <4>[    0.226608] CR2: ffff88887f7ff000 CR3: 000000000344a000 CR4: 0000000000f50ef0
> <4>[    0.226614] PKRU: 55555554
> <4>[    0.226617] Call Trace:
> <4>[    0.226620]  <TASK>
> <4>[    0.226624]  ? show_regs+0x6c/0x80
> <4>[    0.226630]  ? __warn+0x94/0x210
> <4>[    0.226635]  ? __warn_thunk+0x62/0x70
> <4>[    0.226640]  ? __report_bug+0x110/0x280
> <4>[    0.227000]  ? __lock_acquire+0x447/0x2c70
> <4>[    0.227011]  ? _prb_read_valid+0x25a/0x310
> <4>[    0.227018]  ? __lock_acquire+0x447/0x2c70
> <4>[    0.227024]  ? prb_read_valid+0x1c/0x30
> <4>[    0.227037]  ? lock_acquire+0xc4/0x330
> <4>[    0.227055]  ? _prb_read_valid+0x25a/0x310
> <4>[    0.227073]  ? __warn_thunk+0x62/0x70
> <4>[    0.227081]  ? report_bug+0x24/0x80
> <4>[    0.227089]  ? handle_bug+0x16a/0x2a0
> <4>[    0.227098]  ? exc_invalid_op+0x18/0x80
> <4>[    0.227106]  ? asm_exc_invalid_op+0x1b/0x20
> <4>[    0.227122]  ? __warn_thunk+0x62/0x70
> <4>[    0.227130]  ? __warn_thunk+0x5e/0x70
> <4>[    0.227135]  ? iommu_dma_ranges_sort+0x40/0x40
> <4>[    0.227144]  warn_thunk_thunk+0x16/0x30
> <4>[    0.227157]  do_one_initcall+0x5d/0x460
> <4>[    0.227171]  kernel_init_freeable+0x3ac/0x530
> <4>[    0.227187]  ? __pfx_kernel_init+0x10/0x10
> <4>[    0.227196]  kernel_init+0x1b/0x200
> <4>[    0.227203]  ret_from_fork+0x44/0x70
> <4>[    0.227210]  ? __pfx_kernel_init+0x10/0x10
> <4>[    0.227217]  ret_from_fork_asm+0x1a/0x30
> <4>[    0.227236]  </TASK>
> `````````````````````````````````````````````````````````````````````````````````
> Details log can be found in [3].

And I can't see something obvious from the log..

Would you please give the git-diff a try (drivers/iommu/iommu.c)?
https://lore.kernel.org/linux-iommu/Z+Itnw4ys6dmDsc+@nvidia.com/

If this doesn't help, would you please give this a try?
https://lore.kernel.org/linux-iommu/20250324170743.GA1339275@ax162/

Thanks!
Nicolin
