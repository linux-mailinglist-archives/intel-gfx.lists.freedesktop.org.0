Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B79DCC96C87
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Dec 2025 12:00:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF8F710E33E;
	Mon,  1 Dec 2025 10:59:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="I14rWITL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9612810E11B;
 Mon,  1 Dec 2025 10:59:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764586799; x=1796122799;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=EdhlZyHMvmk8z4rGJNgR2HTPHcc5mtxlPjARGPkxqBo=;
 b=I14rWITLQgIo/zfo7GeKkEQ02GpiwB8QbCV1V1Y3B4EsI2LC3+FKE85g
 Gh2KJ4O1mIpXjFBoOt9PHd1ddo6aBLI9s+avzWteYLinJ35T5fZtedOjX
 RF961nscKSBEEtnNkU/+jf4bnFgjSVb4dVXAYmLeB5F8yRgjGkov/+h/4
 s/XSrzcKg/38giovB35qxNcKkZfhTh+gn2Gb9HXyIHa4BpuQcLHkVIVM0
 sdtBgRGBBgVOqeHhnP4sGnHaRIDhnLoeurkT5yqpJxxzCDtynXANos2MQ
 hm9koTxInsNURHgG7KaZvnArdaaQezCPe6oia1nim6W+q1LCqgWfnXJ/M Q==;
X-CSE-ConnectionGUID: AvLNQ19lTX6IdeeT2f2B6A==
X-CSE-MsgGUID: a68KYDxfR3GqNcAGde27fA==
X-IronPort-AV: E=McAfee;i="6800,10657,11629"; a="66234606"
X-IronPort-AV: E=Sophos;i="6.20,240,1758610800"; d="scan'208";a="66234606"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2025 02:59:58 -0800
X-CSE-ConnectionGUID: o+zvmwwZRoala9GNPkfeHQ==
X-CSE-MsgGUID: L5KUYooRQ3WujiXDw/kx1w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,240,1758610800"; d="scan'208";a="193703581"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2025 02:59:57 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 1 Dec 2025 02:59:57 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Mon, 1 Dec 2025 02:59:57 -0800
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.4) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 1 Dec 2025 02:59:56 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=wj5TJtEKu7oa4YDMhQemFRPSiNyVYPI+yp6PBd9Ni5FQYIY3Pz9akGeKqVRwtEaSWUVPUA5HakMU0qAHOB1zn1jqQmIw/EvwfQ8JCasbR+eXE6ufJda53rNizWahha18BRwxaEZYlbWegxYgeL2GH3aIM2HpUDRhhX+N3Jh1h9jnzruAzvFyUw8TpP56oWiqnMDXkcWJBPFYGKx99iTROxBeuBNihk6OwsTVc3k4/G4NlLku7OvBfn9dES5Xh4xHplHj8EpQ19jk7up4Wg8hbin7iJFd4BJ7663+0LXdLXsaxmO94qX9GgFbp7P80nduBB98jZUS+rQczumTNofaEA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yWq+2gbmcD7utSIbPTBEeVRhAXrwp9W4riu0c6RMVTQ=;
 b=Gq5vKgRvo8VlTkGHoL/X7K5Q+yKmLNHNpwlwe2Nat4PLSOUEAilV9uDw/QtPppdlMNAm0WlRcnTPYJMiy6y7+zS6MP25KKcpMQyEfPfFaLZqgF0YWHjSJEXBoV8ZBhvAkG+pO5pFsopRroDfVB+5IS8YiLDi7wG1lFOmp2467Ilw01aLLlPqd+Fc343GxuQVotyViwDHWlflYz5VpcOe2wTWXcX4WyJ4biRJx8VmiY6Bbiv6Pwd4ZZKIBI82itFZGRllEe48BclIeH/80etscv8/xE8z2eBi4w5/ySC/SwNuNn7viPLfiO81SpMDksuRDSkti1MKb0qqOifv5UhgpQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by CO1PR11MB4900.namprd11.prod.outlook.com (2603:10b6:303:9e::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.17; Mon, 1 Dec
 2025 10:59:54 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9366.012; Mon, 1 Dec 2025
 10:59:54 +0000
Date: Mon, 1 Dec 2025 12:59:48 +0200
From: Imre Deak <imre.deak@intel.com>
To: Jouni =?iso-8859-1?Q?H=F6gander?= <jouni.hogander@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 7/8] drm/i915/psr: Move sink PSR and Panel Replay
 booleans to intel_connector
Message-ID: <aS11JICsUtB_xW9s@ideak-desk>
References: <20251121111655.164830-1-jouni.hogander@intel.com>
 <20251121111655.164830-8-jouni.hogander@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20251121111655.164830-8-jouni.hogander@intel.com>
X-ClientProxiedBy: LO2P123CA0052.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:1::16) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|CO1PR11MB4900:EE_
X-MS-Office365-Filtering-Correlation-Id: 1a4fedac-0bbd-42de-fa0f-08de30c8c21a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|10070799003|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?gUuw5OgihIr5e44+UC7kumaP/FRDCfdn6sAJdPZerdgmibaeVoPd3HGilm?=
 =?iso-8859-1?Q?tEouzDzo/h6nIMVl45Ce8/F/AHbnKGzIClWyrj5RKzriAOAnOWrh8oJrM1?=
 =?iso-8859-1?Q?T/PUO+v+TCWQokRhzayxamkKg4cCu4Y3ez968/031AOfkl7WNMkRcBRWx3?=
 =?iso-8859-1?Q?NnK7M+UYfIvv/AcZvooOsHa2apj+V04e+LQ2opYUZO8j9UvYmkyVZnG2uB?=
 =?iso-8859-1?Q?t7zN1PGPF+FSQED0StWXC1dtMCH1UQ1JUwEmXikfi/Q658fuXH7jRPvgSn?=
 =?iso-8859-1?Q?jJ7tMjpqLm3I5XMsH0tLT21/RWCHVbuu1mSAQMBr+Pj7Jgl4R1WHTpHifW?=
 =?iso-8859-1?Q?KhnFp3FDRLh+duUAXjVWJXp0XuzYAg6Iru75L8Q7LioThi8hSy75ld3juq?=
 =?iso-8859-1?Q?YPmBGfOyMngtSFBFMjjasFiYr1bzdDoYgYqtXTug4EjDq+ylhyGtbj62e2?=
 =?iso-8859-1?Q?l+5DWtwzXh90us1kmaHdPEB766UlT0HBzCq8F5TbU+jQmxH5blwhuOh+cQ?=
 =?iso-8859-1?Q?N9g2l3s4/s7TyOiGDvWqkkbovCJVK4HDtOxfqtxANif0KqtFUp9SPOiNtd?=
 =?iso-8859-1?Q?gMeoAEGWbp4IOx+NmWpjbFtVycONa7pKAa1ldZ+pOxLBgYzou0K/RXitHJ?=
 =?iso-8859-1?Q?rzFI4JcTXNv9gkKaIeq5RjDlIdevXCv4fwRW3uhu3aNFRl7lXDRiOLHlBs?=
 =?iso-8859-1?Q?Q6MQCGwhp79YeaMqsNjY0kWheHRCWBOtFO6UJo492jONhWSno7RSHcWU0M?=
 =?iso-8859-1?Q?iNeo3Y40XPpdvIeVG87N/xFuEPhC27FPp4tUwOjGaZ4Sql052TGF5OUrfv?=
 =?iso-8859-1?Q?rc7ad5/fYFAf434pbrfZ6yLgql19/B1/eJt1ms0ELbVdv+oJi1RS4EtKrR?=
 =?iso-8859-1?Q?rD8hzhiQ5j17TTrR6y0mnVvyCrbx/VYVFRo9Zja1WzXHL3XUBY7IjOTJPF?=
 =?iso-8859-1?Q?w/H6MHyLezIbvH9jU1Dcmbg56e0hx/bOmy4CDz4lOD3iRAR0Mnb2msutwU?=
 =?iso-8859-1?Q?b0NPLZGkJxGyAjbELK/SfrMt5d7c1DP+d2+iKtHM8DejJOiKBwNOjRtuYV?=
 =?iso-8859-1?Q?oGlVJiYHcfgjr1WiLS7vRD2uLXWvdvBbQwc9pAjt9Zz0vEaFfYJ7BIHmTo?=
 =?iso-8859-1?Q?B7Wmwj1EEXca3RSfaQmum5OWZ6PnAClNShKZ52O6lWbYQU6HQOt7kIVrn9?=
 =?iso-8859-1?Q?X56+cPyzaiLGxaobR/8P2Wua1hrQ5z5zmdz6dq0jaQQduOgVPdiDQ3zct2?=
 =?iso-8859-1?Q?6z12Cor5oV9Qp6fzhMzQ5FyLZ50sXiNBEgixPyG1BSMkqfvwxDpKQwRwYP?=
 =?iso-8859-1?Q?6l9zHe3DcDvEBELts4QQ2WLGs9ve7Z0/3qsrOjzEabX4tD/DooC7idGu7g?=
 =?iso-8859-1?Q?acWgiFsBqSB0JOLJXRoPkQeEbpdJpzATHscwWd4p7S7cCsGg98IIftpXfo?=
 =?iso-8859-1?Q?8IVnbehWXijLlIOnj24sG17vGC5f8LYEpGDxDFjuFO9b+KjoEdjQaz8Z+G?=
 =?iso-8859-1?Q?GkZ3sVIERvCAsujGZcRkC/?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?dFvi+jRrscqZBqMc/7WYmeCXxNLfyhDMnvZRO29cODqyBVMIKjlfMPwPRl?=
 =?iso-8859-1?Q?NHVDDMOQ9ukXA0SyARknuEuzS1+fxh6K0HfjSd1Ku9L1T5hBZHHQttkPqc?=
 =?iso-8859-1?Q?PkJSgvbayOCm6qMi8k/VDzah4DyztMuXqgaM3Y4TNaMIBjv6abf/lh9Vyl?=
 =?iso-8859-1?Q?vfRQzNS0LzxR8x+JBs4NoYopirn6QNC6BY6mJzsG57MoPesrwBBiOYrJPp?=
 =?iso-8859-1?Q?tMxABwFO3o6g4U3EGZIRf2oBZ7+OD519ZwDJlt/vnR7BMA4QyPIixj0Oxc?=
 =?iso-8859-1?Q?ghAELP8ZCVihErnMoOgSKLoNxZ05zgnuEN69SjnHTzoqPXO6N1CxSZzGPY?=
 =?iso-8859-1?Q?o1gbpiRMnFJ6cj3qWzhq1jC0RuXo6hgxLkvS0sK2HDGGSL7yoHVP4f57il?=
 =?iso-8859-1?Q?zDdGtPmxaTwGMnMmEzRNzpnOiJ9YWD5eI5y25AElzYugGrIBb1DxaMYzuR?=
 =?iso-8859-1?Q?s/BDc/pGWxaViNwjAIPY6SDQ2LI0KVcEnlIk93lb45963kKNFMt+hZSzwY?=
 =?iso-8859-1?Q?/XFeObmCbHuTzMozP+Mhzo2MaJMv4tLtyVVihrYQ8YLVZra9+gWmZuGbq6?=
 =?iso-8859-1?Q?Aoyi7ybQR7Th9NUPH1uc5jtk2maM5W0pUcjJ2ExTE9JbHBrmH590inJknV?=
 =?iso-8859-1?Q?1qxbkv3Z6acZmwXDohVnFFugFQ1uQORCijeG8VAXUMKUvUMkNoCPai2MP4?=
 =?iso-8859-1?Q?26kRK5XVzu9mxyvMIp5khecBVMAcRDKOUj6EVK5a6ggSDjOx5pZ4Q0l/yF?=
 =?iso-8859-1?Q?50njftTHo5YnR7BZi9dQ+QMjhAUPgY2Pg5JSZHnX11u3tfW37l+/ttWggM?=
 =?iso-8859-1?Q?frPeuHtcAl1KbvI78ogxQPMSx7wnOG+wBpM+KRkMx265Tje3A4mAnqu80t?=
 =?iso-8859-1?Q?tyoHNarXWry1e9xb8FffW5Sll40wTgyUlhYghV83hFAc0okGKEkeK4wz36?=
 =?iso-8859-1?Q?vEVczJzhDttvvM84Zqn1pLusegsbo3CgS4fDOoVPPbNJJ7QiNyQTCdTBJA?=
 =?iso-8859-1?Q?zmcp32Tm32CGYgUb5TIK7SBz/Oz390NOUi/z+F71DEkfZY156cO7AaMwPl?=
 =?iso-8859-1?Q?SI93MssETkyamhQMbaEKh9nW3/mFsSGFqRPF9y9So+C5IZVr8NH7yuunFr?=
 =?iso-8859-1?Q?SVeQTAX9ata9NMmuLdpAlKVJI7zPevpxN6b18xqE38G8R1wARtQsFu2uDo?=
 =?iso-8859-1?Q?VBx6pYc93NRJxucBFStlqds0+FDlgAADXvScPXs+dtkUsMLJTlsZQPsvCr?=
 =?iso-8859-1?Q?GBvZRBS9AOdXaltFYA8jv68WSOFYoHWqzLyMgfpreBOXYNn9KZ0iaEgjwp?=
 =?iso-8859-1?Q?2GLH1STXpmdSPuJnmo/F8ZLFdEB5CPZlszWHS02hfJ8kXZ797sADdHyWSA?=
 =?iso-8859-1?Q?h9sCD+w37c6dlw55UkqFHcoX1hAgpXipBKYiwwnuOd1ekjvgwzJ6NBPxys?=
 =?iso-8859-1?Q?Wc9uJvjKGJoYzFnBGZWdyIXIuKpacKDUdFrMziUitqBrc2ko0Kpw4grvBB?=
 =?iso-8859-1?Q?Cc78pXUgr5E+mrxZQD4RjyylT6Rp1Wl9EQvzW37xQChTR3NCVhU7yvRXOt?=
 =?iso-8859-1?Q?707WzUuh6ck8NWZgnXqmcMKF1LjVc2SCkylb5Y62F0B201rPn1p9yop071?=
 =?iso-8859-1?Q?YQL+HX+h+QUYibFliq2T7chUMVsMtLnXqsaIm2PzQutD3uWLQnJfy3h4Bv?=
 =?iso-8859-1?Q?u2HRYESSmYa8fUL4Z48ZkUVkhePbKIbQtx4PG0YF?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1a4fedac-0bbd-42de-fa0f-08de30c8c21a
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Dec 2025 10:59:54.2905 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: pu+6b4eG540RRi9PO3agnnsbfipc73r1UAW2lSg12cnDjAGNsI4iyDbvQtMhKHCdicR+VZveXVze7KDhShf8bQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4900
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

On Fri, Nov 21, 2025 at 01:16:54PM +0200, Jouni Högander wrote:
> As a preparation for MST Panel Replay we need to move Panel Replay sink
> related data into intel_connector. Move sink support booleans as well
> into intel_connector. Generally this is more correct place for this data so
> move PSR versions as well.
> 
> Still sink_support and sink_panel_replay_support are kept to keep CAN_PSR
> and CAN_PANEL_REPLAY macros.

Would be good to mention what's the plan with these macros (they'll take
a connector instead of an intel_dp pointer?)

> 
> Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
> ---
>  .../drm/i915/display/intel_display_types.h    |  7 ++-
>  drivers/gpu/drm/i915/display/intel_dp.c       |  4 +-
>  drivers/gpu/drm/i915/display/intel_psr.c      | 44 +++++++++++--------
>  3 files changed, 33 insertions(+), 22 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index e1d47496ea4de..04d21333130f9 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -572,6 +572,8 @@ struct intel_connector {
>  		} dsc_branch_caps;
>  
>  		struct {
> +			bool support;
> +			bool su_support;
>  			enum intel_panel_replay_dsc_support dsc_support;
>  
>  			u16 su_w_granularity;
> @@ -579,6 +581,9 @@ struct intel_connector {
>  		} panel_replay_caps;
>  
>  		struct {
> +			bool support;
> +			bool su_support;
> +
>  			u16 su_w_granularity;
>  			u16 su_y_granularity;
>  		} psr_caps;
> @@ -1729,7 +1734,6 @@ struct intel_psr {
>  	bool active;
>  	struct work_struct work;
>  	unsigned int busy_frontbuffer_bits;
> -	bool sink_psr2_support;
>  	bool link_standby;
>  	bool sel_update_enabled;
>  	bool psr2_sel_fetch_enabled;
> @@ -1745,7 +1749,6 @@ struct intel_psr {
>  	u16 su_y_granularity;
>  	bool source_panel_replay_support;
>  	bool sink_panel_replay_support;
> -	bool sink_panel_replay_su_support;
>  	bool panel_replay_enabled;
>  	u32 dc3co_exitline;
>  	u32 dc3co_exit_delay;
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index d32f476c288c1..2452302937c73 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -6052,10 +6052,12 @@ intel_dp_detect(struct drm_connector *_connector,
>  		memset(connector->dp.dsc_dpcd, 0, sizeof(connector->dp.dsc_dpcd));
>  		memset(connector->dp.pr_dpcd, 0, sizeof(connector->dp.pr_dpcd));
>  		intel_dp->psr.sink_panel_replay_support = false;
> -		intel_dp->psr.sink_panel_replay_su_support = false;
> +		connector->dp.panel_replay_caps.support = false;
> +		connector->dp.panel_replay_caps.su_support = false;

What about resetting PSR counterparts?

>  		connector->dp.panel_replay_caps.dsc_support =
>  			INTEL_DP_PANEL_REPLAY_DSC_NOT_SUPPORTED;
>  
> +

Extra w/s.

>  		intel_dp_mst_disconnect(intel_dp);
>  
>  		intel_dp_tunnel_disconnect(intel_dp);
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> index 4bae39f745ea0..e6268d692f89d 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -635,11 +635,12 @@ static void _panel_replay_init_dpcd(struct intel_dp *intel_dp, struct intel_conn
>  		}
>  	}
>  
> +	connector->dp.panel_replay_caps.support = true;
>  	intel_dp->psr.sink_panel_replay_support = true;
>  
>  	if (connector->dp.pr_dpcd[INTEL_PR_DPCD_INDEX(DP_PANEL_REPLAY_CAP_SUPPORT)] &
>  	    DP_PANEL_REPLAY_SU_SUPPORT) {
> -		intel_dp->psr.sink_panel_replay_su_support = true;
> +		connector->dp.panel_replay_caps.su_support = true;
>  
>  		_panel_replay_compute_su_granularity(intel_dp, connector);
>  	}
> @@ -648,7 +649,7 @@ static void _panel_replay_init_dpcd(struct intel_dp *intel_dp, struct intel_conn
>  
>  	drm_dbg_kms(display->drm,
>  		    "Panel replay %sis supported by panel (in DSC mode: %s)\n",
> -		    intel_dp->psr.sink_panel_replay_su_support ?
> +		    connector->dp.panel_replay_caps.su_support ?
>  		    "selective_update " : "",
>  		    panel_replay_dsc_support_str(connector->dp.panel_replay_caps.dsc_support));
>  }
> @@ -681,7 +682,9 @@ static void _psr_init_dpcd(struct intel_dp *intel_dp, struct intel_connector *co
>  		return;
>  	}
>  
> +	connector->dp.psr_caps.support = true;
>  	intel_dp->psr.sink_support = true;
> +
>  	intel_dp->psr.sink_sync_latency =
>  		intel_dp_get_sink_sync_latency(intel_dp);
>  
> @@ -701,13 +704,13 @@ static void _psr_init_dpcd(struct intel_dp *intel_dp, struct intel_connector *co
>  		 * Y-coordinate requirement panels we would need to enable
>  		 * GTC first.
>  		 */
> -		intel_dp->psr.sink_psr2_support = y_req &&
> +		connector->dp.psr_caps.su_support = y_req &&
>  			intel_alpm_aux_wake_supported(intel_dp);
>  		drm_dbg_kms(display->drm, "PSR2 %ssupported\n",
> -			    intel_dp->psr.sink_psr2_support ? "" : "not ");
> +			    connector->dp.psr_caps.su_support ? "" : "not ");
>  	}
>  
> -	if (intel_dp->psr.sink_psr2_support)
> +	if (connector->dp.psr_caps.su_support)
>  		_psr_compute_su_granularity(intel_dp, connector);
>  }
>  
> @@ -1522,14 +1525,16 @@ static bool alpm_config_valid(struct intel_dp *intel_dp,
>  }
>  
>  static bool intel_psr2_config_valid(struct intel_dp *intel_dp,
> -				    struct intel_crtc_state *crtc_state)
> +				    struct intel_crtc_state *crtc_state,
> +				    struct drm_connector_state *conn_state)
>  {
>  	struct intel_display *display = to_intel_display(intel_dp);
> +	struct intel_connector *connector = to_intel_connector(conn_state->connector);
>  	int crtc_hdisplay = crtc_state->hw.adjusted_mode.crtc_hdisplay;
>  	int crtc_vdisplay = crtc_state->hw.adjusted_mode.crtc_vdisplay;
>  	int psr_max_h = 0, psr_max_v = 0, max_bpp = 0;
>  
> -	if (!intel_dp->psr.sink_psr2_support || display->params.enable_psr == 1)
> +	if (!connector->dp.psr_caps.su_support || display->params.enable_psr == 1)
>  		return false;
>  
>  	/* JSL and EHL only supports eDP 1.3 */
> @@ -1642,7 +1647,8 @@ static bool intel_sel_update_config_valid(struct intel_dp *intel_dp,
>  		goto unsupported;
>  	}
>  
> -	if (!crtc_state->has_panel_replay && !intel_psr2_config_valid(intel_dp, crtc_state))
> +	if (!crtc_state->has_panel_replay && !intel_psr2_config_valid(intel_dp, crtc_state,
> +								      conn_state))
>  		goto unsupported;
>  
>  	if (!_compute_psr2_sdp_prior_scanline_indication(intel_dp, crtc_state)) {
> @@ -1655,7 +1661,7 @@ static bool intel_sel_update_config_valid(struct intel_dp *intel_dp,
>  		if (DISPLAY_VER(display) < 14)
>  			goto unsupported;
>  
> -		if (!intel_dp->psr.sink_panel_replay_su_support)
> +		if (!connector->dp.panel_replay_caps.su_support)
>  			goto unsupported;
>  
>  		if (intel_dsc_enabled_on_link(crtc_state) &&
> @@ -1744,6 +1750,9 @@ static bool _panel_replay_compute_config(struct intel_dp *intel_dp,
>  	if (!CAN_PANEL_REPLAY(intel_dp))
>  		return false;
>  
> +	if (!connector->dp.panel_replay_caps.support)
> +		return false;
> +
>  	if (!panel_replay_global_enabled(intel_dp)) {
>  		drm_dbg_kms(display->drm, "Panel Replay disabled by flag\n");
>  		return false;
> @@ -4128,22 +4137,19 @@ psr_source_status(struct intel_dp *intel_dp, struct seq_file *m)
>  	seq_printf(m, "Source PSR/PanelReplay status: %s [0x%08x]\n", status, val);
>  }
>  
> -static void intel_psr_sink_capability(struct intel_dp *intel_dp,
> -				      struct intel_connector *connector,
> +static void intel_psr_sink_capability(struct intel_connector *connector,
>  				      struct seq_file *m)
>  {
> -	struct intel_psr *psr = &intel_dp->psr;
> -
>  	seq_printf(m, "Sink support: PSR = %s",
> -		   str_yes_no(psr->sink_support));
> +		   str_yes_no(connector->dp.psr_caps.support));
>  
> -	if (psr->sink_support)
> +	if (connector->dp.psr_caps.support)
>  		seq_printf(m, " [0x%02x]", connector->dp.psr_dpcd[0]);
>  	if (connector->dp.psr_dpcd[0] == DP_PSR2_WITH_Y_COORD_ET_SUPPORTED)
>  		seq_printf(m, " (Early Transport)");
> -	seq_printf(m, ", Panel Replay = %s", str_yes_no(psr->sink_panel_replay_support));
> +	seq_printf(m, ", Panel Replay = %s", str_yes_no(connector->dp.panel_replay_caps.support));
>  	seq_printf(m, ", Panel Replay Selective Update = %s",
> -		   str_yes_no(psr->sink_panel_replay_su_support));
> +		   str_yes_no(connector->dp.panel_replay_caps.su_support));
>  	seq_printf(m, ", Panel Replay DSC support = %s",
>  		   panel_replay_dsc_support_str(connector->dp.panel_replay_caps.dsc_support));
>  	if (connector->dp.pr_dpcd[INTEL_PR_DPCD_INDEX(DP_PANEL_REPLAY_CAP_SUPPORT)] &
> @@ -4194,9 +4200,9 @@ static int intel_psr_status(struct seq_file *m, struct intel_dp *intel_dp,
>  	bool enabled;
>  	u32 val, psr2_ctl;
>  
> -	intel_psr_sink_capability(intel_dp, connector, m);
> +	intel_psr_sink_capability(connector, m);
>  
> -	if (!(psr->sink_support || psr->sink_panel_replay_support))
> +	if (!(connector->dp.psr_caps.support || connector->dp.panel_replay_caps.support))
>  		return 0;
>  
>  	wakeref = intel_display_rpm_get(display);
> -- 
> 2.43.0
> 
