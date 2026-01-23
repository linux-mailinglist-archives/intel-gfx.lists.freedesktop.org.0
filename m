Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aFvBL3XMc2kCywAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Jan 2026 20:31:01 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 265D37A283
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Jan 2026 20:31:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2173710EBC0;
	Fri, 23 Jan 2026 19:30:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nNFTOsO5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E5B0710EB9B;
 Fri, 23 Jan 2026 19:30:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769196657; x=1800732657;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=u1gotjvhAVJpB/WFAbiEEFXXXLI0I4jxnqJsp1JpR/M=;
 b=nNFTOsO54h8eGNvjlVkUaIqMLoi22uGCQ3ap58+/eMDZxGhWoIi8aEvb
 ZuTcq39msKYzRTuBd382E0/Qe9HzihqtGeAs/ZlEANW4Z1XPORB+DMAjv
 cj1/LmSjPUGTVGueDxkYmUZSl/z1gLqbbc4Ah5UpKSIsn9RywJ2HQs5zl
 EZyE5htCGV9xgg2Q4Y03jr6tFrbm8NGNqZExiexqKhTpGJ7AwFmGSuQIl
 3u08iBn/r2n8Zs2qx+aiOVMXTuLgyIRJshIC+r9LmikWkEfF4dxxwNX7S
 M0fsDnyTVfWeOZ2KxlQq1mEAamiMm4b9ORGTRFVWTtJ8OIzBv2C3qQo5w g==;
X-CSE-ConnectionGUID: 2HSAU0laQHedzimvNn+IGg==
X-CSE-MsgGUID: +UQ7rThGThuaS7rNoY4ltg==
X-IronPort-AV: E=McAfee;i="6800,10657,11680"; a="74086597"
X-IronPort-AV: E=Sophos;i="6.21,248,1763452800"; d="scan'208";a="74086597"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2026 11:30:47 -0800
X-CSE-ConnectionGUID: O5KuJ4eySZShenl7o6ij7A==
X-CSE-MsgGUID: 3+TsPjIjQJiZ0ERp4+2pQw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,248,1763452800"; d="scan'208";a="211230800"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2026 11:30:47 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 23 Jan 2026 11:30:46 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Fri, 23 Jan 2026 11:30:46 -0800
Received: from CH5PR02CU005.outbound.protection.outlook.com (40.107.200.25) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 23 Jan 2026 11:30:46 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=wDpfTSvlrkVLMsZAo8WiFuGKueycgredzTz8PuRRZelI6r2zXp7dZ/NukxiGfJ5oFh66r0zEkC5x4TziTMCqM0lwVX1t8zwNsONkrfr14AqmiUL8+xx5xttm9tOz+VjbpwfrZpJMEFhP00620nQjrNd8psz21OW9VQ8yIz3D/qOmao3RB6ZfIrv1RATHfTOdu7g0p16ThlnpaUbSP62UNC/mVXkVjALnh5VZ5N2LnLTYp/NY9mzbhRkEy3n2PqDWriIUZRwT6za4DhxzsXyRr/e5UT42HZKgcxJBRon44WCch7Lv+EDo3bvbXvkvFnkfuTCs7OdtwDHNo6WD2tzRQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Csf7ZTsvlISeKkl0voN8fVYshf149FXTzI31xWkJEW0=;
 b=qITRF3B2KX+J+Esv9lCuGg5qVDgYMc+XEdijxSINlIyaObtJuFhiB5yhSsUCvuJTCmKWIkoT4Wio74PPd+IUAo+Lmc2plwOPIpdraNGccqf+bm3MQmBluXf/SHz4Z83lODYYn+Faw7zn27swmmFJ7pPQfo2HNbo9BeZH6SyL4gEdfpj7KDWr6jVG1ylG6L+KKdwy7bBPzDIoZirg/JAKMHhT1oU9TesFUhYmv58VSvhSt8P9ifm+m67Vh3HF2CvTdLZhhusMMxFphorPSPdFktCTMrDmikJb6z4F79vze6uPiQs2YfIeevU8WH2/Lnw6/vzUxQ71kfUPWPIAMO/w+Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by SA3PR11MB9464.namprd11.prod.outlook.com (2603:10b6:806:464::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9520.12; Fri, 23 Jan
 2026 19:30:44 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9520.003; Fri, 23 Jan 2026
 19:30:44 +0000
Date: Fri, 23 Jan 2026 21:30:40 +0200
From: Imre Deak <imre.deak@intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 11/14] drm/i915/dp: Introduce helper to check pixel rate
 against dotclock limits
Message-ID: <aXPMYDnNdGeNcJJV@ideak-desk>
References: <20260121035330.2793386-1-ankit.k.nautiyal@intel.com>
 <20260121035330.2793386-12-ankit.k.nautiyal@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20260121035330.2793386-12-ankit.k.nautiyal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
X-ClientProxiedBy: LO2P265CA0511.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:13b::18) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|SA3PR11MB9464:EE_
X-MS-Office365-Filtering-Correlation-Id: d583ffc9-b98b-4a4b-7a9f-08de5ab5e700
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?eiwRWHfBZgCPym3N0BLQBYZVPbnhKz4q9FrZccJpTnpA0+y2YhufcTgQQW+S?=
 =?us-ascii?Q?88Gbo4PX16Js+LDzcslmaBOr1t3dXW8kcsVj7w7+YRhz38qgvul6q5Kh+gCn?=
 =?us-ascii?Q?4MKhAZ/fQh4HJW//Ym71iMshSo+3jZtSNb+C2TZPZ0fjGb//BefpuAZgUz7X?=
 =?us-ascii?Q?+w6XtI7S9b0ID+kkZ1ouQJk02H41e/TdLk0GlTYo2UTeqYJRxxR6ToHiu71S?=
 =?us-ascii?Q?M4CcjP22MbPqCj5ZrrW/3WjGt3zUnjZp2dJVjfbXdRhwKMZ30Yy9zuCOJGk9?=
 =?us-ascii?Q?pnOJYxBMX9HWg6qaWkfFwZHvhfqX/qlGJwGMMRRET006lSme25xqZWDIJ0Rq?=
 =?us-ascii?Q?iRw3dZ6UMCl/WSAyYy0WdQZ1KWNiDUPTfudqqZJ8ucs7YhOnQlLUwbREQYgc?=
 =?us-ascii?Q?2+ReammFaZ5IuYTQtX7jmPVslHWy20qNwmryYv8F3lL8Zvet0VGAUmEd9l91?=
 =?us-ascii?Q?kC4O0oRL0v+y/92Usx6QkKkyzngUsWdlEescLOWWpATLYMNnfQ+frJ6Px2ic?=
 =?us-ascii?Q?jYHdZsWXMjouU1uyBssWYCGlLJaeF5JXHL07lpRakqgTLjbcRkDllt11xk6e?=
 =?us-ascii?Q?j9AIpyzLzaLv034daX8+2bZJrrD4DsMe6SaBGZfx49eH+fZZp5QqfpqCR3bQ?=
 =?us-ascii?Q?uFXTxmKQ/xQzfJ9eaS+xB7H/IGDYmwYMlB4FN8lLNqchqnWd1p7JtzumRvXy?=
 =?us-ascii?Q?HVuce3mEYp1ZQNkSt9wqXPVLFpA4ftGVdk8gmlsQe2XZv3sWEONzcr41MGp7?=
 =?us-ascii?Q?zn3qz3ye0Dczvgh7nSP1lGZY4rGOCTTScnBklLRI3QeCur+ciheAKMSSazWU?=
 =?us-ascii?Q?B7Wi6TRuD6iJpddJYVclhmCyE7t4Q5mJ9+5F1duAVDs5Kcu5jVRxSmP9dyZJ?=
 =?us-ascii?Q?BPsY8OH9wuMFehuXx2vEJIVK7DfjqAwj3Pe5wIFvml/BDIKyFWqPbybhO94o?=
 =?us-ascii?Q?J5T17frd3mmYCdkI3ItlAabj0mALgGGBl5AS/8MkgQu1j+h50HXtp8wnvgtS?=
 =?us-ascii?Q?8ufEwn4Yft+6asQ7jB82+uYGD2VNw9+KjP0dXfZctp4oCUzYZCuSdhRPcQuy?=
 =?us-ascii?Q?GNRdDn/605BWtqCwYGu8UpAJVy6fJr3PSJpn56gtcNKHIDcGSrjJdj75k5PY?=
 =?us-ascii?Q?7ELgIgtu4hhToFKX4MVdTq7+9f4hLBI5ZHcvMNilyiwree8PTrdVL/FdIgQH?=
 =?us-ascii?Q?GkjlpHgBROu8OvcJfjTr+71kv5cbIQv6MtTkFSkmtq72kfSfg47R0ac42Ycf?=
 =?us-ascii?Q?4XNoHq3VjzVYU4oXb7bmJt802coQCM6+HQQ61NDeYSu2FDZ2dQRxlOkJZeMX?=
 =?us-ascii?Q?64rwtT5RF1PeB/Y/cOpzLT9o532XSx2iJyMW46+tlXFnGR8kE5ZehYPPepTT?=
 =?us-ascii?Q?BiHO8vSmlXfSDMjIJQE+Nb4G/Q1dxaPJp+M4sL15XONlCCHO9cKqlyRFBHDN?=
 =?us-ascii?Q?zHblP6zUrFngLSxjPc2HJOuTXGpg+EQEiJk737wXRFt6/vvrW1AeKCcQRqX/?=
 =?us-ascii?Q?iClq26lbxRVLHWYIR2PAz8UGVak2Emu16OMqLqcVGUiBLg7Bk2KShCUVg+Et?=
 =?us-ascii?Q?HttpGjwoFSOcr1qhNG4=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?1QSsdlBUwqwEcaqD+/oPwWSON4h3aB0kdNMIoGLt/9+g96yVCW/EvxbbtSRk?=
 =?us-ascii?Q?D8h8ihJrq8Pv6FwNRkBnJEm8TnbQhnltDV+qLIdm5F6yH+Wr5a8yfrgLbFj1?=
 =?us-ascii?Q?J6Q4ynOGvgNMj34hS703cMjz79LPh760Hl7NvFxgkr/AKiZJ2IOyhYN0YaCO?=
 =?us-ascii?Q?tNK75fUWjFFFVScwQduVs4c3uPyT/qtcG6tpaUINQPVLfS3Td2uTSMd5TtaW?=
 =?us-ascii?Q?tWhGu7fM9xf5lZsZKTTGrVXPqCbFbsXvfaDT9BFo8e8RGiEDoM5kBCpRnrOm?=
 =?us-ascii?Q?ncqllDyamDwoZQnb6D6uCKmywkecgiqPpnI5rtrCmQCUg6bwyBuHPoSvUiYO?=
 =?us-ascii?Q?9UQNGVi0f2mxkxGefq3T76Kt+aVvFO15p0aE1U9/YqQ9hFP4+24bZBAHZb1X?=
 =?us-ascii?Q?lRLslzh5LuxOm9LVmeqmnMwrlw67OcA8kiMJ5jmDXL8b0Xe3tf7EzqPcla64?=
 =?us-ascii?Q?tfFYoAnpuuL8ETaVsof1qemQjxugaFNQZcxl6tg077khXa4eFrfPhbSubbkD?=
 =?us-ascii?Q?y+qh9GGMOsbiGvmm92ZRM15uyh8YDPoEbbLDDtVbOOp/I4KhnUEZ8eicgFTc?=
 =?us-ascii?Q?83ix+X3imNf6nhf931eSC8k9wgd/caXBygt/CwhgOIBjh0yDBp4Im7MO7qEZ?=
 =?us-ascii?Q?cjI6bk1ftTGIeSNFQ3347pRrr6fntT9AUeeGDxDIBck/i6XtFrVI6wl0KuME?=
 =?us-ascii?Q?87ZLdu/yAsPhX68nBKbua+PtWvZpPp07t3geBZuehI8up9aDF8L2nBur575G?=
 =?us-ascii?Q?f1WdadlgrX1gGh/R4foqKw42ecMWU/ZllTidwSrpRZr0/j2uIZx5Iq4gzpk9?=
 =?us-ascii?Q?OhUihS+5MPmztVu0Too+AcrYm6QB2hZsHPJrmasZU+OLCb3chfInLOlBXKXX?=
 =?us-ascii?Q?11ZkRlHzMIHpcdrrnHLq5c4SXtb2JlHTYoiZkngvl2J964E9+RKJANT8VZWc?=
 =?us-ascii?Q?FoW0kEJXI42ow9I9Do1LfCvwsnfONE1en/e2hyyesxoALd2mIKxzan2NVatB?=
 =?us-ascii?Q?O4uKeDaBs49Uxj3zBI0JLs3gwOuXRoaprPPGNo1KTHHkhqHCPLvpHlOOkay1?=
 =?us-ascii?Q?alM4aJURR4DyT97JCT6tkALQk0ct/qrnBDo+uu77BRYwvi7rJK3lslB4HAcd?=
 =?us-ascii?Q?/mVZkOpAhyFC2Ew7+WWZ/ge7dfNOlUJgQp+ZiX+XUf+GY3w6odV0HcxhjcPn?=
 =?us-ascii?Q?PD0DKng46fZaQGjQaQK6zd2ljf7BktKq1womaFz8tQGrxCQQbwV3wG3vZomo?=
 =?us-ascii?Q?YPWFhXjgYidOYUrmem6hWQErBvdoN48wMOXDB0h3UhD3VuL3f8Ir7yIDxNmJ?=
 =?us-ascii?Q?6GJ0ZccRToFqQ/brbkYTTLVdsTRldYArZQji4b3eqDnzJHrKmTkXtDdeB4y2?=
 =?us-ascii?Q?1M5Mq3ycSLduWkU+NUT21mOGP3oaCJ25jXB4vFG00TJygBbH0vzn8FbiMonS?=
 =?us-ascii?Q?Ui8ltc4yfMRSrfdAerxc4f6Vc/8Vuc59XUDdk0W6popcUMsp/m/DtSeVZ2gO?=
 =?us-ascii?Q?f++X23pNGRuafIyo50Jhxs7DG/IY+HObZoiE7Si7d1Vc/OjJ0kZ6WCSDjV1w?=
 =?us-ascii?Q?SjF3ZLd4pKEK7xGqFnU0QBXrF8i3H2J+miNGr9+N3BL3VnHDLHRcgVdfRVZp?=
 =?us-ascii?Q?unKK9ifyIN/25v4feupVeLFCQ6mgJNIFLYHcu0z6I0DY4XDTPh8CdJ5XpesU?=
 =?us-ascii?Q?MqAvKtIHjwCOfqycqxlPOtoGHL+2a5nQZ1cTMRM2crAAjp2rWCEwpNqfxWjf?=
 =?us-ascii?Q?JaViUapZUQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d583ffc9-b98b-4a4b-7a9f-08de5ab5e700
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Jan 2026 19:30:44.5761 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 7emKXUCa2qCtRx3ZLMZGeSTGvA+77rJFJs5YrzDbnUut/mvlt+FvhuracVAnlq8T0VYjLvxZZ6KLgPfF7qzscw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB9464
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
X-Spamd-Result: default: False [1.99 / 15.00];
	R_DKIM_REJECT(1.00)[intel.com:s=Intel];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DOM_EQ_TO_DOM(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:replyto,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	DKIM_TRACE(0.00)[intel.com:-];
	HAS_REPLYTO(0.00)[imre.deak@intel.com];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.946];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_THREE(0.00)[3];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 265D37A283
X-Rspamd-Action: no action

On Wed, Jan 21, 2026 at 09:23:27AM +0530, Ankit Nautiyal wrote:
> Add intel_dp_pixel_rate_fits_dotclk() helper, that checks the
> required pixel rate against platform dotclock limit.
> With joined pipes the effective dotclock limit depends upon the number
> of joined pipes.
> 
> Call the helper from the mode_valid phase and from the compute_config
> phase where we need to check the limits for the given target clock for a
> given joiner candidate.
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c     | 26 ++++++++++++++-------
>  drivers/gpu/drm/i915/display/intel_dp.h     |  3 +++
>  drivers/gpu/drm/i915/display/intel_dp_mst.c | 14 +++++------
>  3 files changed, 27 insertions(+), 16 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 2ead783129f4..ed81cf4adb9b 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1440,6 +1440,18 @@ bool intel_dp_has_dsc(const struct intel_connector *connector)
>  	return true;
>  }
>  
> +bool intel_dp_pixel_rate_fits_dotclk(struct intel_display *display,

intel_dp_dotclk_valid()?

> +				     int target_clock,
> +				     int num_joined_pipes)
> +{
> +	int max_dotclk = display->cdclk.max_dotclk_freq;
> +	int effective_dotclk_limit;
> +
> +	effective_dotclk_limit = max_dotclk * num_joined_pipes;
> +
> +	return target_clock <= effective_dotclk_limit;
> +}
> +
>  static enum drm_mode_status
>  intel_dp_mode_valid(struct drm_connector *_connector,
>  		    const struct drm_display_mode *mode)
> @@ -1495,7 +1507,6 @@ intel_dp_mode_valid(struct drm_connector *_connector,
>  					   link_bpp_x16, 0);
>  
>  	for (i = 0; i < ARRAY_SIZE(joiner_candidates); i++) {
> -		int max_dotclk = display->cdclk.max_dotclk_freq;
>  		enum joiner_type joiner = joiner_candidates[i];
>  
>  		status = MODE_CLOCK_HIGH;
> @@ -1569,9 +1580,9 @@ intel_dp_mode_valid(struct drm_connector *_connector,
>  		if (status != MODE_OK)
>  			continue;
>  
> -		max_dotclk *= num_joined_pipes;
> -
> -		if (target_clock <= max_dotclk) {
> +		if (intel_dp_pixel_rate_fits_dotclk(display,
> +						    target_clock,
> +						    num_joined_pipes)) {
>  			status = MODE_OK;
>  			break;
>  		}
> @@ -2888,7 +2899,6 @@ intel_dp_compute_link_config(struct intel_encoder *encoder,
>  
>  	for (i = 0; i < ARRAY_SIZE(joiner_candidates); i++) {
>  		enum joiner_type joiner = joiner_candidates[i];
> -		int max_dotclk = display->cdclk.max_dotclk_freq;
>  
>  		if (joiner == FORCED_JOINER) {
>  			if (!connector->force_joined_pipes)
> @@ -2930,9 +2940,9 @@ intel_dp_compute_link_config(struct intel_encoder *encoder,
>  		if (ret)
>  			continue;
>  
> -		max_dotclk *= num_joined_pipes;
> -
> -		if (adjusted_mode->crtc_clock <= max_dotclk) {
> +		if (intel_dp_pixel_rate_fits_dotclk(display,
> +						    adjusted_mode->crtc_clock,
> +						    num_joined_pipes)) {
>  			ret = 0;
>  			break;
>  		}
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
> index e5913fba0143..0c1cd843bd0a 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.h
> +++ b/drivers/gpu/drm/i915/display/intel_dp.h
> @@ -233,5 +233,8 @@ int intel_dp_compute_config_late(struct intel_encoder *encoder,
>  int intel_dp_sdp_min_guardband(const struct intel_crtc_state *crtc_state,
>  			       bool assume_all_enabled);
>  int intel_dp_hdisplay_limit(struct intel_display *display);
> +bool intel_dp_pixel_rate_fits_dotclk(struct intel_display *display,
> +				     int target_clock,
> +				     int num_joined_pipes);
>  
>  #endif /* __INTEL_DP_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index 46208ee67905..7c957351467e 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -710,7 +710,6 @@ static int mst_stream_compute_config(struct intel_encoder *encoder,
>  
>  	for (i = 0; i < ARRAY_SIZE(joiner_candidates); i++) {
>  		enum joiner_type joiner = joiner_candidates[i];
> -		int max_dotclk = display->cdclk.max_dotclk_freq;
>  
>  		ret = -EINVAL;
>  
> @@ -742,9 +741,9 @@ static int mst_stream_compute_config(struct intel_encoder *encoder,
>  		if (ret)
>  			continue;
>  
> -		max_dotclk *= num_joined_pipes;
> -
> -		if (adjusted_mode->clock <= max_dotclk) {
> +		if (intel_dp_pixel_rate_fits_dotclk(display,
> +						    adjusted_mode->clock,
> +						    num_joined_pipes)) {
>  			ret = 0;
>  			break;
>  		}
> @@ -1542,7 +1541,6 @@ mst_connector_mode_valid_ctx(struct drm_connector *_connector,
>  	}
>  
>  	for (i = 0; i < ARRAY_SIZE(joiner_candidates); i++) {
> -		int max_dotclk = display->cdclk.max_dotclk_freq;
>  		enum joiner_type joiner = joiner_candidates[i];
>  
>  		*status = MODE_CLOCK_HIGH;
> @@ -1593,9 +1591,9 @@ mst_connector_mode_valid_ctx(struct drm_connector *_connector,
>  		if (*status != MODE_OK)
>  			continue;
>  
> -		max_dotclk *= num_joined_pipes;
> -
> -		if (mode->clock <= max_dotclk) {
> +		if (intel_dp_pixel_rate_fits_dotclk(display,
> +						    mode->clock,
> +						    num_joined_pipes)) {
>  			*status = MODE_OK;
>  			break;
>  		}
> -- 
> 2.45.2
> 
