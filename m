Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kEQANXy05mm/zwEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Apr 2026 01:19:24 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B1EF434D21
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Apr 2026 01:19:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C70A88BE3;
	Mon, 20 Apr 2026 23:19:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dgmjZ9Pj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8228C10E762;
 Mon, 20 Apr 2026 23:19:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776727159; x=1808263159;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=dhfIi4vRUDDZRIr69PgtSflsCWAEkmOSQFULmKUkAvs=;
 b=dgmjZ9Pjx0yRG7DTd4g47GyFfk8DfPp8Y2PlJlbwgZV1Q/ngvKqXznpS
 oeZwY5GM7WB2xFZQSa5ro4hXE1UFtMKVKeAnAHuX/PGWa6CxeigNyMxf8
 ARaRoh1EoqXbz5YrqSEzRonAGXD1/QOd04nIRDQl249VWxm0nM7MvoyNg
 vR76TcDQSCx2UlfR6ZrrzlSz3JYG4MWmCDPeY8ArIwRAsQAMlcITouCLf
 rmp5E6zSGcI6/Fk0PbtmPyeTccAni5bRJYWIE4403MBQQ5TUV5vYOfl6L
 oJ0AIPFv/GA3R/Wxxe5SmMQCIHcpvuf1utupMOzlMjYw4JGhk/htDZFYA Q==;
X-CSE-ConnectionGUID: YLom8+LFR0ayTGku1RzgmA==
X-CSE-MsgGUID: GnEOLxQ7SKSA8pzWhGs0Eg==
X-IronPort-AV: E=McAfee;i="6800,10657,11762"; a="88270313"
X-IronPort-AV: E=Sophos;i="6.23,190,1770624000"; d="scan'208";a="88270313"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2026 16:19:19 -0700
X-CSE-ConnectionGUID: AsQzSYEFTk+Ogsv3RlGsPw==
X-CSE-MsgGUID: oFCmrtwbRdai+8Jjt5WjIg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,190,1770624000"; d="scan'208";a="269926846"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2026 16:19:19 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 20 Apr 2026 16:19:18 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 20 Apr 2026 16:19:18 -0700
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.37) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 20 Apr 2026 16:19:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=AlyKY+yLp/HIs6nypAtGCgVwD3uaVgqVc/K0sgMK+jbFH9jMHNhAkT9cjdGuUsP4jhJd5GojoLcPv+WMHLQoSxY1Z65i34zLPyiyL8V1Rcm7IA8HR1RFpuKCC7t2PZcYcEaTxujsJw8G/1kJK6EoMDrmTsBDuOJ4QSFWKMWFPe/HgzDvdUiT3FFj3zNRO27e4ZaM14+bk17IIPwHkJFx8gLy5F0D+BIhlTl1uaizGFdPwE/wadzu1oZR2Nx1F1hIcE7uIrXVKTaTSmCNsRCaTR5evULXkNV9p+mgZSJHF5Qh8HpG/+mMBcM7R0Y28XRTNP0Ihla84UcPGEhJ8tVf6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZnQS6GVTq5lBPgWHqnZvxph+hi1OyuJckJGvVK3K80I=;
 b=aY+sCIQAJCB9p6KvZ12a8YOxjLjy14sBgq8Bzr7jvIe8TN/NZGzr5nv0m9fUO1Tx1Z1NtSnkYRcWyMYFPCTAfybZL9bIVWHToBkOUojL1QU+LR8oMzmPDK39k6wJISyIF/Q8ltc+HMO3ANPalW96ecECxiQt/RGB4dug0NPlU/iH/zk6wSJ8AJ6XJBIxlhu1y5U5yE5JYybHd/o8SjIh121bjKRKcfwyevMYZAbmuw/TK/lBpG4ELkGmo5/xbMYOGOkCsJpieLNQ6v9Thq2vgyuIC4FzdP5X9VpaYvaNBeeePQ2+C6Tl0O4QYABa9iHshE+EYCdHAfYUJv1HEnQBqA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by DM4PR11MB5327.namprd11.prod.outlook.com (2603:10b6:5:392::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9846.15; Mon, 20 Apr
 2026 23:19:12 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::a0e5:e99c:ee7b:620a]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::a0e5:e99c:ee7b:620a%5]) with mapi id 15.20.9846.007; Mon, 20 Apr 2026
 23:19:12 +0000
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Mika Kahola <mika.kahola@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
CC: Mika Kahola <mika.kahola@intel.com>, Suraj Kandpal
 <suraj.kandpal@intel.com>
Subject: Re: [PATCH v2 25/32] drm/i915/cx0: Add MTL+ .get_hw_state hook
In-Reply-To: <20251117104602.2363671-26-mika.kahola@intel.com>
References: <20251117104602.2363671-1-mika.kahola@intel.com>
 <20251117104602.2363671-26-mika.kahola@intel.com>
Date: Mon, 20 Apr 2026 20:19:07 -0300
Message-ID: <874il5te38.fsf@intel.com>
Content-Type: text/plain
X-ClientProxiedBy: SJ0PR03CA0132.namprd03.prod.outlook.com
 (2603:10b6:a03:33c::17) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|DM4PR11MB5327:EE_
X-MS-Office365-Filtering-Correlation-Id: ac07373a-7a4f-46c7-5350-08de9f333b0b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|56012099003|18002099003|22082099003; 
X-Microsoft-Antispam-Message-Info: BYJc9Bc0SvE5brW8SDyx7j0Z8XotWw6HANqRCx3gfGCYAh4DhgWCZI9p9aoxTWD0pwXyXSRx/vl8GcYzKdYHJ0iviURoi2hdWfVIinnHn4+WT7igIHXmum73I8K/CP/i8eLr4PlrpDIVluCWSx+Oo4zgZhSi1unt90AVfudDYOsH7cB6kaY+FcNAsNzzOUFPYuUjfGTvJq3JMFGO8ra5ANNPqVqdquHePP1wgIfE9QP6ldbFTdl0VpeKcMUE4eEIVzkqZjZEQpUDnILGE35ygtQQWKk3ziQosRk70+Mpx1DwULa8xlFWEGe6lWsJ8ETRncqGxo0gFQQrQ1naK9m52+F0DWLpSciLrPAapJKsSSjUyzR6TnQ7MrA6hQ/x/derxvtJ5Zp29JfUj5MEX3+esMY8V/lU1vTDfmchSaf5hTYzX9zhHPyAZMy56pRHYx7L2koRFBA17//NcJq6l0NEXPo/JZ52B2gutFVJLo0hJXBb0GUR1OuG30NV/drHdEj/ajp3qJAikL+SUjbC19Z4XEUgnbZTpPiHYCEXYNP5YktOpUclGVwB8Dh+UIBxcNCx8KWaIc5+D+4HOIx1ojCWMpWFbPXyLiBWVw/lOH7ADHrFnnVHEaKb9IRw7Owljp/yxsa6GGEPI2KkWaGoX7G7BRqIJPyBlIzSoH+HLKXGduY1OEHzsZ2U6G6tk6A4aKTjMDe6jvUi5PZ6GNtj0dVN2936THxpNRHV90SnPjGKr1o=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(56012099003)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?lqJuDBBeCLzXTbq6l3b2qNbaTMPyNBmBzdHm+/Au4oIsvZUrc9KQhFvmIAt6?=
 =?us-ascii?Q?vmS/aN5t4PpcHtbe0zZ4VKBGYQTYGyILq1hLqm265WHJgtRM77DXKgFascom?=
 =?us-ascii?Q?Y2/L6iSTSWVFL6mgB5CPF+W/s4pbqzjAtHssF/ErucWRnaavo7lZM8YvCIrv?=
 =?us-ascii?Q?38nxndUDthFQ15S5PeqszyO3oMzVfpkJ6NE7VExku5Ty6nX8wTKs5ASAJL6B?=
 =?us-ascii?Q?kq5Nuj1MGXpL4qczyEVqFyFVEjuUqutjU8warhGnlIebKT9qwoGsK8wKK7mP?=
 =?us-ascii?Q?Urk7qVJpoVi9jjRtZIF/dshN8goUNVTQl6IeyO2KKLNUBMVaXRmIhrCzCHaB?=
 =?us-ascii?Q?Rme53sWTTKffFgRXCyue2xZrXIUJ718Kv6IaG80vtLsnIWa/Kg+vn0eEkWsF?=
 =?us-ascii?Q?1Abk1S/atSE8QGeVKu2lRnMG75RyB1+mjnTLmRH9zwcZFELB9qPE7wylmoXx?=
 =?us-ascii?Q?7CkUzzHLuxvu4D976gVjWp7npmZ3KLifg9FyWyZ1oPBhsIOS/X0cTWnB+bII?=
 =?us-ascii?Q?jSsjSovL7cCXi8RDKFvNkmFErvqzw8iKIl3MvyFeaK9iIw+QlDFy7duFuQCn?=
 =?us-ascii?Q?tUOE6RT5HAq3K6d2oz7SYmH9sHhopLfCJr4OPeFY+2i758LkDa32fx9IhjQ2?=
 =?us-ascii?Q?z0o45E04n53R2f+cxQgeNu6lRNMHgaUZPEXntXAWsokvt491nDSLV8vL1HdG?=
 =?us-ascii?Q?7ftCmIuM4qdHc6cZ7TdMdfiF7RELTLmB6fMMcpT3KglyTj2jlmIoenv+kjha?=
 =?us-ascii?Q?PNeC36X+utFtnC2WEfs6784yw9QSXX4Py+TuGPJ+/ryqEnyIUmZ5uk6JxMyX?=
 =?us-ascii?Q?uRTYQfrjH9DLUvJLfT4CRq2jFXrHP4kyPAEx5TqHYptKwB2TZF/K7S0TOwbS?=
 =?us-ascii?Q?guxJT0TzgNWd34f9+Ao2pd7P6F3qiPJGeFQYmu1Qhbuw6MiWVp0ZciFxXl+6?=
 =?us-ascii?Q?C0KFqqJ9IAT4Mf7uvb5KcVjS4ALw1O3tSsEugpMaitwVTNFMLKMSmhPE3dRu?=
 =?us-ascii?Q?RiFE1g6J74aNpjq/O64/9lUNIeeSBEc4Y+6YFfEhvokkF5tdjhHjUfWd6rrj?=
 =?us-ascii?Q?e1MuUxtNykU1ypqUq2LGCdg+S2R2H60wD91bdPcg4U47C8gQeGRRUEHm/bcg?=
 =?us-ascii?Q?X/VWYUXfqKnL8oovQh5OxPn+bZ9QNbipDyIuftjcnjyXvj/JOZvI7lmULLL/?=
 =?us-ascii?Q?s6NFz2GulfdHSpQPUTxtLgCBiAUlTjUn3wAbs6SWAWWnU5B+HJwR1t/wWuyp?=
 =?us-ascii?Q?Fj8s9A9J3bvnM/JGnf3iNIb+BQFVgoJtvgZctA7u5alCdc10Xu0lph10vyEB?=
 =?us-ascii?Q?1ZwBLQqnStAxOsrDIt2nUevB1A6nsjwDAyZGnavKL0hva1AuT21iXA2BmydF?=
 =?us-ascii?Q?wDRjp9ch5jQYKWJSowqMbXohOLVg1Uq2JlBDXxAwa5GLMA/WwmBXX1R3CAe1?=
 =?us-ascii?Q?uEjJRJXRGyl3fIx0eijqGORJU8i5mwh1CqvdJ4/XUPNETTvStLZnv9voUu4e?=
 =?us-ascii?Q?ACjK35g66LPSDP3k6+MFGlVZEYQwzNQF3/T6muAlyzbOBpwuwXHSIk8uVOEX?=
 =?us-ascii?Q?ZKoxMMNU6s/WKR8qkkHnfelaI6tWls3UBwZ7jZuwWJieWLklBL4UonZSpqaD?=
 =?us-ascii?Q?VhpT+cY3VKqwOEKj9rTLAxRr63yyVVH7WwN6oN1oLNjBThVIORn04LdALEzN?=
 =?us-ascii?Q?h6waTAAPos7jm/aBINcOTqCJbE2Dn9Bq8MLdgDKCv6UFjcVCOAFLaeMdLy0I?=
 =?us-ascii?Q?fmIP6+O4Vg=3D=3D?=
X-Exchange-RoutingPolicyChecked: s52QBSFNFFUCdpsC6ZnFp3c1xWtzwzJJWBvn3UibMIliJw/4DP4bcIdI+WWzUj82xBUFTtUhGn0cmjoxwWxxKib0c7S72n9yjT6fbLaiTmE1ZAZbjvOW6lqxENfc8pipu+Y4K/CrnVEgMZNLhAsDjp/zPb8wrUC/75Fh+E+iRcr+S1Y5gZodG0hpaFWUWHF6LOi9QHqmQNQdXk8GdQqZuNjwpPUupSVrw1v/LClqLYmNvPQ1n2yWOlMvsr9advVSVtWolkL4jaz0iUSkqgoSe3bPWiSWB+cCDzkWGPbOGIW+03YIXCiQ5juW95lz2Qn+gnKihcWkIc/kIckKoehLpw==
X-MS-Exchange-CrossTenant-Network-Message-Id: ac07373a-7a4f-46c7-5350-08de9f333b0b
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Apr 2026 23:19:12.1310 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: XfSkQWqUrvu+a5NVy4QpTG/WrZhQLYV0Fy+iX82P4Azx8KVE+o7YBdQ32g20J8GWDvvnkJ6j3v4kjVavwsQdTA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5327
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
X-Spamd-Result: default: False [0.19 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FUZZY_RATELIMITED(0.00)[rspamd.com];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-0.997];
	FROM_NEQ_ENVFROM(0.00)[gustavo.sousa@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 3B1EF434D21
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Mika Kahola <mika.kahola@intel.com> writes:

> Add .get_hw_state hook to MTL+ platforms for dpll framework.
>
> Signed-off-by: Mika Kahola <mika.kahola@intel.com>
> Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cx0_phy.c  |  9 ++++--
>  drivers/gpu/drm/i915/display/intel_cx0_phy.h  |  2 +-
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 29 +++++++++++++++++++
>  3 files changed, 37 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> index a88169b76cfa..bde461878647 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> @@ -3594,19 +3594,24 @@ intel_mtl_port_pll_type(struct intel_encoder *encoder,
>  		return ICL_PORT_DPLL_DEFAULT;
>  }
>  
> -void intel_cx0pll_readout_hw_state(struct intel_encoder *encoder,
> +bool intel_cx0pll_readout_hw_state(struct intel_encoder *encoder,
>  				   struct intel_cx0pll_state *pll_state)
>  {
>  	memset(pll_state, 0, sizeof(*pll_state));
>  
>  	pll_state->tbt_mode = intel_tc_port_in_tbt_alt_mode(enc_to_dig_port(encoder));
>  	if (pll_state->tbt_mode)
> -		return;
> +		return true;
> +
> +	if (!intel_cx0_pll_is_enabled(encoder))
> +		return false;
>  
>  	if (intel_encoder_is_c10phy(encoder))
>  		intel_c10pll_readout_hw_state(encoder, pll_state);
>  	else
>  		intel_c20pll_readout_hw_state(encoder, pll_state);
> +
> +	return true;
>  }
>  
>  static bool mtl_compare_hw_state_c10(const struct intel_c10pll_state *a,
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.h b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> index acfbaced22f5..37b53faa5e78 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> @@ -37,7 +37,7 @@ intel_mtl_port_pll_type(struct intel_encoder *encoder,
>  int intel_cx0pll_calc_state(const struct intel_crtc_state *crtc_state,
>  			    struct intel_encoder *encoder,
>  			    struct intel_dpll_hw_state *hw_state);
> -void intel_cx0pll_readout_hw_state(struct intel_encoder *encoder,
> +bool intel_cx0pll_readout_hw_state(struct intel_encoder *encoder,
>  				   struct intel_cx0pll_state *pll_state);
>  int intel_cx0pll_calc_port_clock(struct intel_encoder *encoder,
>  				 const struct intel_cx0pll_state *pll_state);
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> index c0ba269dc714..beaf270294ca 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> @@ -4351,7 +4351,36 @@ static const struct intel_dpll_mgr adlp_pll_mgr = {
>  	.compare_hw_state = icl_compare_hw_state,
>  };
>  
> +static struct intel_encoder *get_intel_encoder(struct intel_display *display,
> +					       const struct intel_dpll *pll)
> +{
> +	struct intel_encoder *encoder;
> +	enum intel_dpll_id mtl_id;
> +
> +	for_each_intel_encoder(display->drm, encoder) {
> +		mtl_id = mtl_port_to_pll_id(display, encoder->port);
> +
> +		if (mtl_id == pll->info->id)
> +			return encoder;
> +	}
> +
> +	return NULL;
> +}
> +
> +static bool mtl_pll_get_hw_state(struct intel_display *display,
> +				 struct intel_dpll *pll,
> +				 struct intel_dpll_hw_state *dpll_hw_state)
> +{
> +	struct intel_encoder *encoder = get_intel_encoder(display, pll);
> +
> +	if (!encoder)
> +		return false;

I came accross this code recently and I'm wondering why we need to have
this null check here.

Are there scenarios where this is possible? If so, are those possible
only starting with Xe_LPDplus?

--
Gustavo Sousa

> +
> +	return intel_cx0pll_readout_hw_state(encoder, &dpll_hw_state->cx0pll);
> +}
> +
>  static const struct intel_dpll_funcs mtl_pll_funcs = {
> +	.get_hw_state = mtl_pll_get_hw_state,
>  };
>  
>  static const struct dpll_info mtl_plls[] = {
> -- 
> 2.34.1
