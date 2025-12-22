Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CCD82CD694B
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Dec 2025 16:36:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5EF3E10E6F6;
	Mon, 22 Dec 2025 15:36:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="E6JWeGRm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 69C1910E6F9;
 Mon, 22 Dec 2025 15:36:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1766417795; x=1797953795;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=tMpJENoz1ikHs4IURzWSm9P+Y05Cb/VM4xyVCg64MME=;
 b=E6JWeGRmGyd+qs0Ov7h7z8HSHfPiVNJPU2Wr8KEigLexsZGie5Xvs1dh
 296/ZTY+YGfnnJqQXI21x7B8qf/mnQNOm53Kvq57ej4mbBtor7RjamDmN
 K7G6p0rnpVCh//sMzvkZx6gFpIbr5QnYHFMD4cgzUmdaWG145eLCfLyh4
 RpJKbrIUEUgehs87cNoiFHvHnAK3P2fU4go3iiVSmNSlxoUpNcIgPsXLl
 KVIXvjFi7U8yS3nsipLjhoHM5CLhkbrn2AIrM/vZHgpom+h9ggd4d1tpd
 IPHdWjWN8Tm5k8vG9BwP+aBLr3ZxnsMqC13sXd5m83CtCfyogWoMR9Xjs g==;
X-CSE-ConnectionGUID: LoZi/E3SSKu1aO/NWZcGPw==
X-CSE-MsgGUID: 3/nbP0fmT6qlaG6wb35MRQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11650"; a="79390208"
X-IronPort-AV: E=Sophos;i="6.21,168,1763452800"; d="scan'208";a="79390208"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2025 07:36:34 -0800
X-CSE-ConnectionGUID: 7ITu5DG0StWIrWi8ASfMnA==
X-CSE-MsgGUID: L/c7wSggR8aKSrlvATVQrA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,168,1763452800"; d="scan'208";a="198783634"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2025 07:36:34 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 22 Dec 2025 07:36:33 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Mon, 22 Dec 2025 07:36:33 -0800
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.68) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 22 Dec 2025 07:36:33 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=MP4n7gVvc5ogoUBzNAzbzQlhqNdUyJsu6zN4NimvcfqNX9UPNmjr3gpj4I1/aXenW18EMHNRdUvQKrvk9PGIb6tpP5aj9nYLDn0HXe/KXBUgWO2cPo1kAiQltvG8xcBjhlwPmmXtfYfC+tO3VWHVwd8hEEFJ54lcCZRnbFM2g1B2TmVxic6j/4FCzyi0vlvK+peV26HzcyS0E7adq/c4PCkY5LuZY0HFUdTqmElG8K6TyXx/1pqyxW9lkc+g6DCJ2E/yylezWRWeBHdQ1RQwuM9pxA8oNJA7HIKyL187lntb+dKYcRaVL03l30uSoEs+bNhjRpB2zlCBOKPRi3BtAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zyv/Br1a2S7KXmNoeQcRUi3CEy5pSE1LZfrvTNMvNl8=;
 b=Qfb9Xex9NlxdkzmCln4k2JVX4FV6Wfk/2XFuEQ7BioctKKm+SOFRG2JQR9qyJv57Y3d3a4J7AQikUzvQED3IeRmkdKnZoctithK/jhLkZ5OuSNCqAp4bbnX6Y7cswXusao+0/80s3138wVK+0GxhHR8MYN4TuGNchPd7IfjPKhO3GTbnYx/s1ewL6654VsAkPMWNMVuWE1EzCeiu488I5rW0mGRTFrAGrFyxvcQbggXnIsiFdabMPbc7QdXLw205iQhvD0aelfggS47Nbi17dl+2cWpUMIiHKN74wez6vbrFaWfEXHTVV/ydloAtGAK5kfZIttrhj5d1LWlDvTLCjA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by SN7PR11MB7489.namprd11.prod.outlook.com (2603:10b6:806:342::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9434.11; Mon, 22 Dec
 2025 15:36:32 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9434.009; Mon, 22 Dec 2025
 15:36:32 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Vinod Govindapillai <vinod.govindapillai@intel.com>
Subject: [PATCH 18/19] drm/i915/dp: Simplify eDP vs. DP compressed BPP
 computation
Date: Mon, 22 Dec 2025 17:35:46 +0200
Message-ID: <20251222153547.713360-20-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20251222153547.713360-1-imre.deak@intel.com>
References: <20251222153547.713360-1-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: LO4P123CA0569.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:276::9) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|SN7PR11MB7489:EE_
X-MS-Office365-Filtering-Correlation-Id: 6b9fb730-8b10-4314-a8cb-08de416fe1d4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|376014|10070799003|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?eyX0vp+qrm7oj1XuWQ2E8iwYjPKFnmI7u+E3PLg7GaBEc0YD2T1fwn8KEYFK?=
 =?us-ascii?Q?AeOGc9HM+QiFbE7cT999sXq0kc2G0vuWMsuv8/X1EI+fmNYRPJwTaEvwQVxQ?=
 =?us-ascii?Q?bSKIdTSy9e7/DpUfFTJc7r0eorcovnreY7IizoebNfpP9LPmSF9m/qa6XNpP?=
 =?us-ascii?Q?GvuiQ+e0SvMoGpvqlxniWzGdSj4q8hGiK7bqTvk64edq/9c8VSBPclfCjqvl?=
 =?us-ascii?Q?ZHuIzT87rT7QeloWvFAG9PakucJbWyI5ke1qsJ2Er1O73eQVkAMUlUPSt4pO?=
 =?us-ascii?Q?MTxA94aad+uSlMXySrwD4S6obnwpBYrpVcNbyxAq/1K3uF+hOCWMPgKi/sMN?=
 =?us-ascii?Q?KfDmAcuh8pxXcTkBSl5CHqarRzXo+ZZvkOdHEq1xO2M5t9ZL6skWosDzQyYx?=
 =?us-ascii?Q?ch6VzmOs2xfdluuuiYdCPwpdNNIdW2ZUq8fKZYs6SSxmpi6oM349UKhbRzSC?=
 =?us-ascii?Q?jEYBoE79k1l2SvXJmcr0P6JMJsFbulqjY/xaAA2640ktEX7KjZgdmycX5oIb?=
 =?us-ascii?Q?Rz4t++MxjAAzvY+vl9pyUmnTppLZ3Q3oFglUA9YS5OKtFWJoUqMsNsri0m5T?=
 =?us-ascii?Q?0XItvMHY3kJc8S/bEzjJgnHC5w56a53eeisgftIyhGhSe1O1AHuzDiH49HL5?=
 =?us-ascii?Q?z+Ui0RYzO2ji/+EsRvwca6MF0H1tZfxDl7LteoJ5Jd1nBB/SyMRx9kTuIx31?=
 =?us-ascii?Q?X64RE/WRVbhBa+uEJPDHSMn6vsMVm0yyMKhqfQrTL1gZqrTMqNfyW5uPmirA?=
 =?us-ascii?Q?/IOeUIxtPzF1fPzlmp/kknmmk0TkdaRV4lt5ilKkMoprWeTz1o1iJla1mhM4?=
 =?us-ascii?Q?RF1yg0zala2khH6Fg5KzDarEZvKmCdSB77t3Q5DWkGrVGKAyJj1CbTTHH5VT?=
 =?us-ascii?Q?jA1c0Z2NOX+VHVxa+WeZ2i2oe8wzLXvfL3Li3H25uwa3mbk6zsQg+op30/Gl?=
 =?us-ascii?Q?VYpIoyAEDG2q2NPrrA9W1n+rpDnFYKMN+Wy9owJtrOwEv0iaKwwgynX+41bl?=
 =?us-ascii?Q?bfo9qHe5cRNr0QQazGKCkFWaxAMjhvxL4A6YmW0hHxMIAEWSHDzd2/cS7J3S?=
 =?us-ascii?Q?RimvgrFBTgTu4SZHtk3dF3AsLTgjU9DFx+0RKUFzpcOSbquA6uQ8O8Kug8q8?=
 =?us-ascii?Q?BmCkIMvWE75Cs3ZPaXN/oLOqcyw4s3AS/yv33eMO3HeJm9NppjFvhW8iWMq1?=
 =?us-ascii?Q?TIfZKCoKjrsDt/0gEzgIfiNgvyuWBmlussOMfqxnfMw9aJbnQ8Plf8aGvqx3?=
 =?us-ascii?Q?uMX2uEgmNYHHDByLIJDnNZOLKhcmVmYZ/CGfaVRAEtvzg3K/vVwXP3VqA6eW?=
 =?us-ascii?Q?1uXrBgYG/ZLkPkm8lLdMgQs30nworXaIBacL+MM18syS4RQa7tkcFQiUgDB8?=
 =?us-ascii?Q?pp8dHyKkuNiZE5SDL01u08++586ElQ/ZIhg+DhsuLBMVDmrAIF86JufHj+vf?=
 =?us-ascii?Q?p2+VTIlB75eWp8SLt6vYbeaxKqN1gZOo?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(10070799003)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?CXJXUtS0P58AfxuoVJdzk29RbkqUz5VtSQYMugGpjEhpPOGjwTsznCzRX1z+?=
 =?us-ascii?Q?ExLI1tboJ1FkxMn3n/IWHIuD6CeJ1EWcN8mKxa5QYZhyOcQFGmNW+5FeuVpQ?=
 =?us-ascii?Q?AU4Q2R/GxW1xaV38G3K8dYzKAzn1RmGlWQ18T32Lm3rCnwCv1NuE28F8ibqB?=
 =?us-ascii?Q?PIKOiqtNr5qSwI9MaATK9bVFpRyFIZvnDHPA5Ary8Ax+QpQiBSdC6J2/niVN?=
 =?us-ascii?Q?7lUjy14rKH6QfLOwNVdLX99JV2CnYRMh9UPxnTFgRYYrGZkEeDY0Xi12qpLs?=
 =?us-ascii?Q?RctiPeMpX1icNyZmuLzIgGPh31QOjEbizwxXHVvmtto5h0kQV/51+eSWkjWK?=
 =?us-ascii?Q?pOTm4KlTAfY9Uh5yIGR2Mz+WkNZj98v1Zi+n8CJWl9piyVr/mz4TXagzdjhD?=
 =?us-ascii?Q?Yz2PYQLz8z/ksZ5icCfr4nTi1nK+DG/kLZa+Btdwp/VVL79oLa7gX/T+FNbM?=
 =?us-ascii?Q?qDgQa11uqdik2n13vsetgcfJKPk9duM7Dm4mpSVLzjT9EYISjDKiS+rPyVys?=
 =?us-ascii?Q?GAKFdVIx2Cb26ACVC2pHERnJ12eUWGMKjmnmV+mouywD35Mn2kwI0M3dmITd?=
 =?us-ascii?Q?gtQ0YGCX95vYmBRVisZ/wTBDGgaAAK8zEgyUlylUgnXt76bwef3WKUAGO1R9?=
 =?us-ascii?Q?Qrx8tCK45GBhf2wG+N8zpOc+PVaUVOTcizZrYxVxkrPs+ah3mYV/N3SJQAZJ?=
 =?us-ascii?Q?47bcwJqcLmil8SjidKeQFgMeHvmDfkKLKO1cMQhUQa6Cu03NacannMw7MVy9?=
 =?us-ascii?Q?6mI6YfrJiTLsl5a2xdmZOBLwPap7U6KXPkV35arA0icWRlawvKAfayMotS+7?=
 =?us-ascii?Q?51l+w+rT9rRCW3Jmae5uBYX3Y0VdWkj8heMbDSlM0p9rUy3cfuGkS/Wz4UPi?=
 =?us-ascii?Q?yLLej8S8jaG3L6aAFcB4pytlc8vqNVqJWIGphIn2L2rwWj4EoWteh7a5O6JA?=
 =?us-ascii?Q?o0QzehOxMxTMCyOEaE014TOEFyMQCrME7bH9in1WVlYQf+SkhUC5riCx1wDJ?=
 =?us-ascii?Q?K4A+gSuDS7wAHHxgxMg3NAw0UCPmSsUhxf3TSuvexFNRd0TmrwVT+ftItUY+?=
 =?us-ascii?Q?5HmLmlvN0og3hblXNG91qI/jup+3FYB1ImZHFnFyG+aPgO+NGbYL6CqgZPxi?=
 =?us-ascii?Q?vKDQ8Yr2jx7mtypzsi6L4DZ1kbQ2UoTFZVOjPVxIDYqmzf1aVk4S1tl6Cst9?=
 =?us-ascii?Q?5GypRY+6LIovNKgMEoFb1u4TcjviHADOh0T+Qvvg8c0hHU/9yydtv55raPS3?=
 =?us-ascii?Q?hC3JMR1wtld4pnBGHup9P6g8n79Ac7sbrC9NH+OQK4xRTCpPMQA2izGejIAO?=
 =?us-ascii?Q?pDORJ1lH6cDUPjpfkPL7fDTK2J9kLX37jhHHZhCUVwK71qkgCrOny7krjPD/?=
 =?us-ascii?Q?cbweZ9Dtpjg69Yc2XMDOinxiEX57X0fvVHpzKOhZ63n+JcLn2peAWEsCHoeN?=
 =?us-ascii?Q?jUlNnuOaekdh2GBGPZ7Z+cXG2992uJDSkXqc9wq5FCaU4eB3Qg/DS4LJtR8N?=
 =?us-ascii?Q?mgLkSabBNKJ4yoS7NZlyUdLv6dICHFNGpdY/9h/Svtg443fVyTMPM2aftoLR?=
 =?us-ascii?Q?8Kwfdq0bHiOATQCqSz+RqXui2KIP3Oqczen7mR8P26pMgNlc0SBkJpHqcdIz?=
 =?us-ascii?Q?yo8xB1nt3dI+IbtTmtINKx6Am38f1YhEtTNEIUN0FGOIKDwudxPAE1i3cT05?=
 =?us-ascii?Q?P2UlatKoHVlmJjj9Lq0DE3VjsQNcwCJIyZ9YgCoK5Zh+QdOhbHz4R4KQSlPl?=
 =?us-ascii?Q?b21mW7NhafdY/ot53PBJq0KpvxnBsYLAH4wRVVvPsb6czcNPz1mFZp32kq4T?=
X-MS-Exchange-AntiSpam-MessageData-1: IZbNnB2Ol182eA==
X-MS-Exchange-CrossTenant-Network-Message-Id: 6b9fb730-8b10-4314-a8cb-08de416fe1d4
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Dec 2025 15:36:32.0641 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: PR+PnOcoXwWpqglYDkRIA6G92En0LOJ2stLS7AHN12YzmF2wR5dvKDJkdw6DU0ok3H26g3icXJAKS7LVFIeXkA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7489
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

intel_edp_dsc_compute_pipe_bpp() matches now
intel_dp_dsc_compute_pipe_bpp(), remove the former function.

Reviewed-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 32 ++-----------------------
 1 file changed, 2 insertions(+), 30 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 96fddb8c54c3b..7e022c47e8ac2 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2322,30 +2322,6 @@ static int intel_dp_dsc_compute_pipe_bpp(struct intel_dp *intel_dp,
 	return 0;
 }
 
-static int intel_edp_dsc_compute_pipe_bpp(struct intel_dp *intel_dp,
-					  struct intel_crtc_state *pipe_config,
-					  struct drm_connector_state *conn_state,
-					  const struct link_config_limits *limits)
-{
-	int pipe_bpp, forced_bpp;
-	int ret;
-
-	forced_bpp = intel_dp_force_dsc_pipe_bpp(intel_dp, limits);
-	if (forced_bpp)
-		pipe_bpp = forced_bpp;
-	else
-		pipe_bpp = limits->pipe.max_bpp;
-
-	ret = dsc_compute_compressed_bpp(intel_dp, pipe_config, conn_state,
-					 limits, pipe_bpp);
-	if (ret)
-		return -EINVAL;
-
-	pipe_config->pipe_bpp = pipe_bpp;
-
-	return 0;
-}
-
 /*
  * Return whether FEC must be enabled for 8b10b SST or MST links. On 128b132b
  * links FEC is always enabled implicitly by the HW, so this function returns
@@ -2397,12 +2373,8 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 	 * figured out for DP MST DSC.
 	 */
 	if (!is_mst) {
-		if (intel_dp_is_edp(intel_dp))
-			ret = intel_edp_dsc_compute_pipe_bpp(intel_dp, pipe_config,
-							     conn_state, limits);
-		else
-			ret = intel_dp_dsc_compute_pipe_bpp(intel_dp, pipe_config,
-							    conn_state, limits);
+		ret = intel_dp_dsc_compute_pipe_bpp(intel_dp, pipe_config,
+						    conn_state, limits);
 		if (ret) {
 			drm_dbg_kms(display->drm,
 				    "No Valid pipe bpp for given mode ret = %d\n", ret);
-- 
2.49.1

