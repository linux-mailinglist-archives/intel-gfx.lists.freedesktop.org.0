Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iPdzJZHNpWm1GwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 02 Mar 2026 18:49:05 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CFDFB1DE0A7
	for <lists+intel-gfx@lfdr.de>; Mon, 02 Mar 2026 18:49:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3F58010E542;
	Mon,  2 Mar 2026 17:49:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cpGiiABM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2AE4010E539;
 Mon,  2 Mar 2026 17:49:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772473741; x=1804009741;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=yLQ9eP6jvInV5TfCp6JqmxnrW976z5mXf0PB/tMUjes=;
 b=cpGiiABMp0Ni3R7FrRm9RWCHYo5mPVCqgH5s0UXmJyDMZkfpLsmzXuqR
 NwJQ6LRnJrDAtDm4WbbAngg4aZT+zgrDSoTqdzKI9SNZu574QsLZF6G1r
 8K1ZY6M106FHOhigdd4s8ECby/ArKnsf5qJ65j2aX52pzm8nf87I8C+WP
 IiNgYZZdo6lM0gl/x17Ro3aR7fLqHBU0vMmM4il/VR9dF7ASwxS9vm/YO
 i8e5AQBmHsq8SI+o0F8gVy29CesnLWTHNSlmHOGjpsNFmfMk9mZBGUQhq
 gD/jsu2ZiQssf6BOqnWfNyjH1WMQN7VdDYtFFLTULxDbEswRiwRSdLc+g w==;
X-CSE-ConnectionGUID: 4319lvgzSLCAvODXmqJ9DA==
X-CSE-MsgGUID: AyCk+W67R9GA4nqSQOm8tQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11717"; a="84130006"
X-IronPort-AV: E=Sophos;i="6.21,320,1763452800"; d="scan'208";a="84130006"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2026 09:49:01 -0800
X-CSE-ConnectionGUID: qDYH+ex8STWchCuWUXhJ2A==
X-CSE-MsgGUID: X3KK/G6yRWCaEbIdCb4dMw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,320,1763452800"; d="scan'208";a="214911833"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2026 09:49:01 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 2 Mar 2026 09:49:00 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 2 Mar 2026 09:49:00 -0800
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.46) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 2 Mar 2026 09:49:00 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=cpo6x9OYDKTbykhBp/0TZBdRgR5OU15kQz9DN0MFXl5jOHJJRyxvwLIHMU+zHnH9uPXVbIGombO4CeulgmlqrNE/gxGGzZPeeHSnYoCrvxAH7jMSYu4csyHzk0q1M/M/M/yOB3zaN1Wq4W5rV7bWhAn+1NRR61rlSUp2xJzH0jtk6KvuUcnja+m875PVxz1DIozANk1KArw+JcZwe59aat+swFnfMa96YZnhr1dxoqhfnweWtWCtogx/8O/zeMf56XpgBY7JRUXCBpV5BcbYPtYB+dy+TqQYP6j1dDnCrSRPUKydcTUkNVWSijcYwTcEsmJIYU6KKMSym2ZeaPmpdw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IzZOIqlZPE/uEaa7G/HwRXf61GsIQPHR6OzD9n2eDtM=;
 b=eE+2GGOMv77sJxDbwE40GsNEvs8HI7jUxiYrNt3QtMw9s/PEXxlzJZ93nyUOIeKyVmKT/Yc6xsjNJXWSJr8BXwvaHrv496x6VRCq7wgqy403GCti0qkJl7sQ+7Hor5/fQ6Pc0ki2j8ayzLgLE9OcB8de2K6UErUNHEIcwMe08NAjQeE+mS6f4HE40GanLK7DtDEC37jQKobwu18I8Drr1+cdW4a2O/M4jcW+iGVRY6ilZ1qH9CrhTmXZ0mM1tQQMVY4bR8r7isfFj8t6S/HE7HB7B3n3Le5gNiia98pA3cSPqlvG8qi+JTpCI5fwr9fJ0UTzwGa8NMBq5cZywyZb4w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by IA4PR11MB9369.namprd11.prod.outlook.com (2603:10b6:208:565::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9654.20; Mon, 2 Mar
 2026 17:48:57 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9654.015; Mon, 2 Mar 2026
 17:48:57 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Mohammed Thasleem <mohammed.thasleem@intel.com>, Jani Nikula
 <jani.nikula@linux.intel.com>, Tao Liu <ltao@redhat.com>,
 <stable@vger.kernel.org>
Subject: [PATCH v2] drm/i915/dmc: fix an unlikely NULL pointer deference at
 probe
Date: Mon, 2 Mar 2026 19:48:49 +0200
Message-ID: <20260302174849.1541350-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20251202183950.2450315-1-jani.nikula@intel.com>
References: <20251202183950.2450315-1-jani.nikula@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: GVZP280CA0050.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:150:271::15) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|IA4PR11MB9369:EE_
X-MS-Office365-Filtering-Correlation-Id: 02b85d6a-0cf8-4bae-4fc5-08de7883fa6e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: xchMkRabSewMu18ha8zFxbGRkaGZp51XPVsTX1q4CGaMgmNLJBKuyVWktcgH8Xw2JiwmSNcm7eSxMLuYpfBLdUct0cbREtgQyEivrtB9ngyELHRxXkFowMJpLF5hxZjvkUKdG4MZCHe6PH8FNGGyQfugn4UOm1COm9DRvvFQIW7obleWrVB6hUHMI5k5oLrnKf985L+O0sYNMvGlEO5FCAi46Pip9KHQ2XvY85YKsQBuwUe+BMCCBtjdRvqLK3TtoO1oenoSTiClaqL0HltcvGKEJ4MGYYTaOhIIJrUy5fy5xAWNvXhOCNHu4CFliR+p8hWU5Sdlyc43i+PBHiDT9SzoiNyrEPX0D122OeVRjkIskuU+k5eg9CQmL3QlnHJt84MHnQtzaSTKG7A6DQKupfu051ZfGEvznftvaNkbzuRSgFQl38AMW5BBqpygMoS6Mk+svjFrJ6w7d3NysDKOe10BneLjG+PDFGd/nJBO/4OY7XrtKLcp4dTbLW6zKx55nJHhzju8jiYp9/33IUTyDTGLL7Qe1HK1qppHcOKHlnHFZSh1n15I4YMFhtUzgBCtcljTB6tEXu6hi/SXwt0OmpHb7xFPND/2xDCV7PgsqEhhD7UZY3KPg3KL7CpGyPevEfMWVtvrhMLKDN6UY07nc+13wjurpB5yGl0UU64r4C9UYGLbtP7u9DM+pMrJGVNEUCm8ptU6/5eYj/E0cPSxfsjtTx2SBsXK69rVEp+MkOXvpGAf2AK0x+P6lbaN6u+7
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?p+e470mM0hjYmnwKdL1Uc7v5DAvOs04rAQfz0tXqBwsYuA3cLVMA9fUh5mTJ?=
 =?us-ascii?Q?aBT8+HSptVONojVYFSXPSCOPve1op/96gywnep06kUSCo8v1twUsaMA3fhpo?=
 =?us-ascii?Q?LNlpHruu7WvXk0tTK7nSxZoUPlNhgMRA4ZsQM7D2sP2gPQXfyw5xHAZWiOVv?=
 =?us-ascii?Q?IRnQ6vkProPdInC1Loi2B4ahr4aKnR9a5MGeG+MyordIpXVdJ+aQxr3CIwhK?=
 =?us-ascii?Q?Rz3QiJJDCwxpsI5drG2ZPvtNxXVGY31hXFTEalOq1j79SRODUdP5CFWERlzn?=
 =?us-ascii?Q?q5k57mXrc7Uxm/skGgcQBldCLEzZMWO5TluutRl9j3hqut8WpX0qPCahLNJ0?=
 =?us-ascii?Q?mkJ3pnZwkz0k74McTUnTchupyA270vqa10e2nFx07pIxonl8ESCIOOmjAohx?=
 =?us-ascii?Q?1c5iuxFy0Su2Ybv+dSphK7SOyH3THh7xuR2Ru17s3wNqz/83fx7rcV1QLe7z?=
 =?us-ascii?Q?+H7N2Js34TK8jvD46NVPmND2Lk7IZgmNu9bTk557SL91rYKlNkJfmOjvS1la?=
 =?us-ascii?Q?ZSQ4NyC72a4ZbY0uErQzNAY+4Ul7KrlLuNISt9V+Cky3rLu2wUNZApNtsfQK?=
 =?us-ascii?Q?kTS/Fd0EVOWaLWxy1lvDWk0fhmOzEb0ztyHwhBQZ2NDZyDKcBqM2F5XuNH3q?=
 =?us-ascii?Q?XMXBaZgQZG8jzcKC8daGJN4gvo1RvWLib/8xEIeYi4efcCisIY/0cBov4PUa?=
 =?us-ascii?Q?caQpnnK86qXeLLbvtZV5sKO1UYYLXVIlzH/fJCvdnEwIappQc1z2vRN5X2pS?=
 =?us-ascii?Q?Xc4iSq5jQ32zhMIFP/KJ2QMrANiZSGsraeaMnM7Y2VYbBtqUi2NbTrmloI6J?=
 =?us-ascii?Q?ZvujetBXwJc9MTO4YHx+SU8vF/nD6eQclDG8bW/ZlxgKj/0RSWnEqK2Tissu?=
 =?us-ascii?Q?rKyNuqdAA0QQTzO+3OV8Y5e/Kj3F1/t5iThOzAWBw7Y3MZYa1Wg6Q4JmC03E?=
 =?us-ascii?Q?QjAwQ6NVb8PfO8RY/7Xx4Jx/3LQbbfJjAEd0NFedV7AN1tNVo/6TTt6dRY+g?=
 =?us-ascii?Q?nh0OvpKpzLLg1UDet8AZOCl4sIm3U70R1Qu5RyDWRq+9lZ7MJvng9bN0PNyk?=
 =?us-ascii?Q?LH0SzV82cj1lkqlBfNyuuiUWK7qHCV5b/Qar0pMRY5eUaI37krJ1JhTnW7ib?=
 =?us-ascii?Q?BBC6JuxeDBI+Bm/i1gmB+x/Jyp/NrX6wc7QYDdxIO+eHpzbGD7L2dLbdrdF6?=
 =?us-ascii?Q?Udjsg8WoEzsPSZ+8+jMu7x74mkP6OQ8wdAU2A1jZX9srbmSdKbssCGrYYDkj?=
 =?us-ascii?Q?SBP4tXyymZv4JNzic58tDmA3Xj6eUMha/pzzlFJzPa9R+TLUxrWGGxTxc0re?=
 =?us-ascii?Q?2jakJv3w7dY1PciJZ8uHPWzkK1GAVIzOSiX3DY+7eKzpCndvxBMLmVto62MN?=
 =?us-ascii?Q?Y4xfxrmG7FtX0/O9Jz3s7hCFi0H6IhPn0CLcKhcef6ZtsZS1sHD+riYvnvU0?=
 =?us-ascii?Q?o1LVzkMfw20C/fHWYCy9RToGuyovyXsCjc4nhpxuufLiROEmn0VkaZzpRu2D?=
 =?us-ascii?Q?m/ZizAnw6L2zRUoyJGh/SSir8hxYGOLm/jUyBZbi+pBaVZ9/sGRW7bjEiY+O?=
 =?us-ascii?Q?+C8rts36P9lUYy2KODt4SimECK2DJSZuPnLz2qrpPZ1Cc9vTbTLUSw+btib5?=
 =?us-ascii?Q?ljIAKjxfjzSAGEAN1wiRopMoD3TTcy5eOyhM7nOcyhQ42kgXkBfThk/XcSpC?=
 =?us-ascii?Q?oq5hxB3dx0VALNeybSj6/1bgpxAxIs3sezE+IHrOgfUAGPf7Q7+ijqhY7+cy?=
 =?us-ascii?Q?rO6TnRriIQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 02b85d6a-0cf8-4bae-4fc5-08de7883fa6e
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Mar 2026 17:48:57.2765 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: o6pRLY9El+fYNKCUv/XbFrT80KLTMRPdmFoP/fPDbd0dCQXfD23JmTNINMHnP3GtE4CdmvBnFmMviTdm9iKx/Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA4PR11MB9369
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
X-Rspamd-Queue-Id: CFDFB1DE0A7
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.81 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:dkim,intel.com:email,intel.com:mid];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

intel_dmc_update_dc6_allowed_count() oopses when DMC hasn't been
initialized, and dmc is thus NULL.

That would be the case when the call path is
intel_power_domains_init_hw() -> {skl,bxt,icl}_display_core_init() ->
gen9_set_dc_state() -> intel_dmc_update_dc6_allowed_count(), as
intel_power_domains_init_hw() is called *before* intel_dmc_init().

However, gen9_set_dc_state() calls intel_dmc_update_dc6_allowed_count()
conditionally, depending on the current and target DC states. At probe,
the target is disabled, but if DC6 is enabled, the function is called,
and an oops follows. Apparently it's quite unlikely that DC6 is enabled
at probe, as we haven't seen this failure mode before.

It is also strange to have DC6 enabled at boot, since that would require
the DMC firmware (loaded by BIOS); the BIOS loading the DMC firmware and
the driver stopping / reprogramming the firmware is a poorly specified
sequence and as such unlikely an intentional BIOS behaviour. It's more
likely that BIOS is leaving an unintentionally enabled DC6 HW state
behind (without actually loading the required DMC firmware for this).

The tracking of the DC6 allowed counter only works if starting /
stopping the counter depends on the _SW_ DC6 state vs. the current _HW_
DC6 state (since stopping the counter requires the DC5 counter captured
when the counter was started). Thus, using the HW DC6 state is incorrect
and it also leads to the above oops. Fix both issues by using the SW DC6
state for the tracking.

This is v2 of the fix originally sent by Jani, updated based on the
first References: discussion below.

Link: https://lore.kernel.org/all/3626411dc9e556452c432d0919821b76d9991217@intel.com
Link: https://lore.kernel.org/all/20260228130946.50919-2-ltao@redhat.com
Fixes: 88c1f9a4d36d ("drm/i915/dmc: Create debugfs entry for dc6 counter")
Cc: Mohammed Thasleem <mohammed.thasleem@intel.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Tao Liu <ltao@redhat.com>
Cc: <stable@vger.kernel.org> # v6.16+
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_power_well.c | 2 +-
 drivers/gpu/drm/i915/display/intel_dmc.c                | 3 +--
 2 files changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
index 9c8d29839cafc..969b2c421d308 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
@@ -852,7 +852,7 @@ void gen9_set_dc_state(struct intel_display *display, u32 state)
 			power_domains->dc_state, val & mask);
 
 	enable_dc6 = state & DC_STATE_EN_UPTO_DC6;
-	dc6_was_enabled = val & DC_STATE_EN_UPTO_DC6;
+	dc6_was_enabled = power_domains->dc_state & DC_STATE_EN_UPTO_DC6;
 	if (!dc6_was_enabled && enable_dc6)
 		intel_dmc_update_dc6_allowed_count(display, true);
 
diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index c3b411259a0c5..90ba932d940ac 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
@@ -1598,8 +1598,7 @@ static bool intel_dmc_get_dc6_allowed_count(struct intel_display *display, u32 *
 		return false;
 
 	mutex_lock(&power_domains->lock);
-	dc6_enabled = intel_de_read(display, DC_STATE_EN) &
-		      DC_STATE_EN_UPTO_DC6;
+	dc6_enabled = power_domains->dc_state & DC_STATE_EN_UPTO_DC6;
 	if (dc6_enabled)
 		intel_dmc_update_dc6_allowed_count(display, false);
 
-- 
2.49.1

