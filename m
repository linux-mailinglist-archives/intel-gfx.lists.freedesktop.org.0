Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F2080A826E5
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Apr 2025 16:01:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 752EF10E8D4;
	Wed,  9 Apr 2025 14:01:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dTRWWByS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 83A8310E8FF;
 Wed,  9 Apr 2025 14:01:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744207281; x=1775743281;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=LfINXOp/b+stBwBSKQ8iw8UplSLCWZFeaM2gcXMT1lE=;
 b=dTRWWBySaSz4g6eVOu6rG/c7l2jEHpnKnLtKtyr4Dr/N6scYJF6s3i7r
 VbTW2WRxObkL9PirIQ+Yv52KaBrWWkiE3mU6T+ZSqlGk5452kW7KIjXQe
 2RV7v4gPJj7F/1kU0kZniqgjyfQfS7Gge5Ec018hfDLzgD53ezDDkQe5T
 n0SUXwndHB/Y9f8VtgR5U3U6BKcIvkn8T4He7O+es7dWQt8YiI5cfTSbU
 20IWlxH5yMFc/J7509cWrb+hi6T133GWjxkCC8y0DHgiYpJoglaTUWrhJ
 Uk1MPtH3a1x6U9M3OzVAK+D/nEYWSydVWav8pyUgkYXDGo+V/4/UKjQYn A==;
X-CSE-ConnectionGUID: OM34TFJ1TpWKdQpVQeAynA==
X-CSE-MsgGUID: LY5/wA2VRXWa6YNerNAwmg==
X-IronPort-AV: E=McAfee;i="6700,10204,11397"; a="49530442"
X-IronPort-AV: E=Sophos;i="6.15,200,1739865600"; d="scan'208";a="49530442"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2025 07:01:21 -0700
X-CSE-ConnectionGUID: xmzZUR+SSxe0XOaJ7iBDpw==
X-CSE-MsgGUID: Wv5mRXh4T9i2E9jNAPlkFg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,200,1739865600"; d="scan'208";a="129115554"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2025 07:01:21 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Wed, 9 Apr 2025 07:01:20 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Wed, 9 Apr 2025 07:01:20 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.174)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 9 Apr 2025 07:01:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=PmcfFO9Dw6ba87hT12TKkED4IgVrXQ/4G3ksOFUZc9PtQKmQ3yEjsyb8rsODO7y/snYpM+Ig+3StbnHC3RSTufu73IbUHvTgRREMVnJwOdptEo7qpfHrM9n0K+BCsckiU7jxLOtLYN4vJ9fmuwyTKh6KSp1eAa8jGxSegG+47oTejNLm1gQg6F97yeiJ5uHyzvNgD1kniCXa0NwmR3m1zOJWjBPGmw1ETIEl78+G5KofQvS6h+MMizN5RgBEabMhMwWKj/ealJG4K84ergkZUjkWvpjHXO7/lw9ofQsqCoVQIX/vm+vVPsUh5avDyfEko0ooNb2RZg0Q9DuUx4AYgQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FnfPLPRYoxD+MSAMkcVs12CFIPly9+qRg0PTeYzHAXE=;
 b=Meg4I+Z3HjfAGG7GDBkyuGRx58BJQt10zfdddmirHUKqgffiwGvGc31PYz2647MB/bYzJ4w8AzVxU3RFAWu+V2ogVOOjwW1W0x6MORlEGhg6s4GlKUYm+Qj+jQINRXCSaq5IQsLvJTy6dcYFyMiNYv8713t783mqVzIJTLM/50Qod6gGPJtVV45dss+62Jbas95BfnydnqD9IwTcyHhwu0XUL0ONCpmyoaV78kX5M0kQbjs5rSixW2vnfZMNp9MQjfQqR+1mi8CSTzNfYGnAtq/2ysTg9iQ2b7/4T70KFUSUwKJYFfjOo2LTxcKccr0HY2zW15IT85BYMyoHOFv17Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by SJ5PPF2E3E6CCA8.namprd11.prod.outlook.com
 (2603:10b6:a0f:fc02::81b) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8632.21; Wed, 9 Apr
 2025 14:01:17 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%6]) with mapi id 15.20.8606.033; Wed, 9 Apr 2025
 14:01:17 +0000
Date: Wed, 9 Apr 2025 17:01:20 +0300
From: Imre Deak <imre.deak@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 08/10] drm/i915/hdmi: Use an intel_connector pointer
 everywhere
Message-ID: <Z_Z9sP2FQfclJ2cL@ideak-desk.fi.intel.com>
References: <20250408214342.1953197-1-imre.deak@intel.com>
 <20250408214342.1953197-9-imre.deak@intel.com>
 <87tt6xwxed.fsf@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <87tt6xwxed.fsf@intel.com>
X-ClientProxiedBy: DUZPR01CA0289.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:4b7::20) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|SJ5PPF2E3E6CCA8:EE_
X-MS-Office365-Filtering-Correlation-Id: 73e0841f-233d-40bf-52d7-08dd776eff3e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?voarkzPzQ6TcJb3FNwNAggiToVV2SzfjQ4EFrR9Lv06aStJ5pfWUhkyCZ/Sq?=
 =?us-ascii?Q?uPPi//CVZRpgrxDXpVW53Wz0ULHZbI1gCI61BUjVyEQK+RULbJ+v/iH6JC6u?=
 =?us-ascii?Q?dJljydrZKQqN1rC8jqz0Z8FayEfooohrROPqJmy+dtaQsbqoWtgRvsrf0Gy/?=
 =?us-ascii?Q?WFL0VNbM/xEvvtrgWUyBvt+tHCTShXirBK8Q0hk1J4y0x5GUWyaUZrXJyhIa?=
 =?us-ascii?Q?S+UmTRJgg+I7ns7O9ljhUoIJUdFkbujGrVn4ugfUK82i+qCSQ5/uTsAd+InU?=
 =?us-ascii?Q?15npH1xRUSC3/vZlfwEJhBYq1168zhImVv6q6ocrAZnOYeJhhdysQycOndWm?=
 =?us-ascii?Q?52HgO5iO0zM2BkLq9ALNB8io+AW9h02CRlLVEBnBUCM/9FKbGWCuZzLyQLpa?=
 =?us-ascii?Q?LjxpCpsAYpwh1WckXqrxeiBIpoEbNV6AuVm8/WnXw/7mtelYM8JybEFvQ9ax?=
 =?us-ascii?Q?Ji55VZgZEOdDa19ID+Vq0HSh1iBGEEOGQ7eXm2gLdaLHqTVzKTYx0MW6/6c+?=
 =?us-ascii?Q?9WzQbLqs7D56apl+LCV4YPvAkwKyPQNsQSHs3/ovr9x5qZ/Do2QdzFfpFwu8?=
 =?us-ascii?Q?60ryEM/+5F2RMxQu9WdPCL/3Nn2T4bSOpc9uyfW9lCtDNpIzys2P4sdrox4f?=
 =?us-ascii?Q?JF2tdt5a3JUL6227ouLlapePAB5wnLa/fHE3aaQO0amDFA+zLlbP8WGwnhq4?=
 =?us-ascii?Q?y+adsfo+FNPNdpFwCe6A1iOuhPmYFVVI+eMh0LtviIgwW0L6lAz8LoDuE8mi?=
 =?us-ascii?Q?6VpRVmIslJ33qHMraPAfrrnUUWGS+IQsBDLNOWax/9ykjhm4RHyb9cPdZGIo?=
 =?us-ascii?Q?pV5+4Lb/IzgwTflUbwDoAKs2OxgQ0gs7fkr/L3VU3ay9rRYluTOZKuWg4nK7?=
 =?us-ascii?Q?/sGm3kHuiE3Ys+avKL0WhJtZ6ruMF2cKlTM3ctBuutccVgsl89upb9fr/tBT?=
 =?us-ascii?Q?UZuO+zli+K3OesUD1dcpj0N2cTQDvWV9lv6RfOOMqaiVzdW9oYE6moawqZh/?=
 =?us-ascii?Q?oSKKNvvRZ4jjB+4muOVdDP4KPRsZwptLT9FRzW6LbOyrArzETYlio57zyPSK?=
 =?us-ascii?Q?bq8Ax0tsbSYV0ANimN4fQ8V/yFo301qZPNyV+/2cFZtXy0UFmOY7EDo7IPLt?=
 =?us-ascii?Q?dB4p2WpC0TE7HX0aJnUVrz96YPqefMF0g0fKHJzgBzRNkE9IlPWAA/d6roVz?=
 =?us-ascii?Q?CcjXp15taPsYgVT99ysL0KFrwIS2SGytJ8xqNKvNI5NOODVinXOFuz/CGdcM?=
 =?us-ascii?Q?+a9wUT6D/MrgA+qER5eE+WHUqs6/hvKqlhBXMk5A565ipwNC2GJqohZo7WV/?=
 =?us-ascii?Q?2Y6iZ3ChVjy/DvZ1z96JXQQ+GQiT5d9H0//yLCjuDkk6pQxzZ6MJcExj3MO5?=
 =?us-ascii?Q?1oTqaX74020YBHdL3OG1bM0x+1Bl+LTnEQKCeJ0Mvg+H/rYD8+r8fH3TR7us?=
 =?us-ascii?Q?m9SgdnnR3Gw=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?laqf9GVJ1tzo4BQGc9EoSzTLf/BYJ3aUOnOe36i7fGdSe6Xj5wRCn2ICnJiJ?=
 =?us-ascii?Q?x58++UhbY50s/xb/zgG59LRVOTPFHuKuXYtukzfpr2ad+yWgBzatNTYhZhGs?=
 =?us-ascii?Q?Q8m1vvq8LxlmFXzYJRs//RfZOeibPUXxN1u6rtRKEciLUBcQkItgCCsFDO5e?=
 =?us-ascii?Q?Ymz35OrbLuvsTcQ0IFmn/68tYaFpfepJ4JD7oen5R6S46RXhpYfGK6bdW2/h?=
 =?us-ascii?Q?cNPmZz8PWYnDo+qcUJu4QtnEqsJhV5jjgL/k3TEOEzAbtWJyXbldkxjA7/Wk?=
 =?us-ascii?Q?oBck9TNl8nBQVoMfBNuEJVMPMa4v3baVmFGt434gBZ+auI/ca1dcZ12661cK?=
 =?us-ascii?Q?BKNPGUZG0dcwpTvU+ci64VAaXSkCeagDmuz0mIiyfaMGStLJlxpcGSVCtZK+?=
 =?us-ascii?Q?cyHftuHi/TSipXzjn7Iy1Mdeh255yLR/kGhAPX5ec7rGFhLDL30/VfZcfm3D?=
 =?us-ascii?Q?s2U75ULF116W3vFPkwWy+/2soHa6d1QTuCTz2fw2BkrgFvlX3XijkZSQwVdt?=
 =?us-ascii?Q?tWBmr65gRTioARorBuf2zj5RYBASwgxKjofNpT08AP4C27xb1e3ka6byHr0N?=
 =?us-ascii?Q?t+QJBxA3EB6TzbJ3sbkfBCF1u7saMh/NNG5TQk8I8KO37DErOPsGsDbsDfiL?=
 =?us-ascii?Q?QSuS1/Pg5w1qmlcKopd0WoQzj3Ds0UpeNF61ZLFaP4WT8SOB7cyp5/g6lXQV?=
 =?us-ascii?Q?l6K9qzBrE5x0y4YPkn8axfn4fpwDk+ZloPzXWWumrAQLgIrDEXvBdmMU3sJ6?=
 =?us-ascii?Q?lsjqNGukGjWvjRfKvM0WjIUgVkG0GTENAkwAXh3pbHOldJOK2IJXuZ5cUCZa?=
 =?us-ascii?Q?HeoFDb15ZMicxGOYzMUgyoBCkVXHP7wprS7iASkzC7coR7ItT5rItLCyfnC7?=
 =?us-ascii?Q?vgt9sJPSPq67ubC8GLp2n0LQEAsA54v/KyE8KeZQpp3FIOFPeP4ZK4kzD6tz?=
 =?us-ascii?Q?t+zfLp5dRmjked1ZLkTOG6EEx9pMu8f43qzw8HiKm92QxY6jHF7GETwxczR/?=
 =?us-ascii?Q?/WGVK1nnqK951mWpf+NRPyShmKyF9OzJABkMO5ObzsSwLgbTQR3sYGG6d5Au?=
 =?us-ascii?Q?SLB55pzxWSC3JvWuhx/Q3VCUWFDRbnQ60efeMvleTKasFlhj499x9dRKOauT?=
 =?us-ascii?Q?Q1Oj4s/B3po3/ijbuoFu2GQPTPk+mbKmhUxftBjjq+pLivx0ai9q6eUkE9t/?=
 =?us-ascii?Q?T84OpbO1spF6LHdNJKm/fc/18CA6sZKnXz/UCJ7uS908lMHD5/+ScdF1Cd/2?=
 =?us-ascii?Q?X2Cx5yoWVht9fMef8Bp/lAVQt9ddQ2x/mfFo7usJnPBPSLt88XVhMyeIKv/E?=
 =?us-ascii?Q?mMoOshHUls9Drj1W8YqGFeSxK0/ptwqvPtE3aokvlX9wHkAFHBX9zj7JFgkV?=
 =?us-ascii?Q?yRswbnIaYDEEZh4Lr7KvflxkWijgoavbHzI3ulS6lXJqNCcrjmF9KTlV0Bb6?=
 =?us-ascii?Q?VPw5bnTgZravX1FTnSENLGxaiaoOZaD5tAyHVFSIpsbm7T4DSUYhqAYsupZH?=
 =?us-ascii?Q?WtQbZK3OUxunYrVg+lFa53W+Pt6MTkOFFdPYmASpjcrgfFyP4DnQk85PGmiH?=
 =?us-ascii?Q?ZY4Kb+xEMicMDBdY7jdyVaFCh4KHo2lXzWfMwa/7?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 73e0841f-233d-40bf-52d7-08dd776eff3e
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Apr 2025 14:01:16.9816 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: MCesb2PRXdoOoCYkLq4J+hLD+wYH+9NtR7F3NdDnByWZKd9srA7oDutbtlDOgiXEYm3ldMoDREoIVxxbUwuIWA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ5PPF2E3E6CCA8
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

On Wed, Apr 09, 2025 at 11:29:30AM +0300, Jani Nikula wrote:
> On Wed, 09 Apr 2025, Imre Deak <imre.deak@intel.com> wrote:
> > Following the convention, convert intel_hdmi.c to use an intel_connector
> > pointer everywhere, calling this pointer connector. If the intel
> > connector must be casted from a drm_connector, call this pointer
> > _connector and use this pointer only for the casting.
> >
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> 
> > @@ -2076,14 +2081,16 @@ bool intel_hdmi_bpc_possible(const struct intel_crtc_state *crtc_state,
> >  {
> >  	struct drm_atomic_state *state = crtc_state->uapi.state;
> >  	struct drm_connector_state *connector_state;
> > -	struct drm_connector *connector;
> > +	struct drm_connector *_connector;
> >  	int i;
> >  
> > -	for_each_new_connector_in_state(state, connector, connector_state, i) {
> > +	for_each_new_connector_in_state(state, _connector, connector_state, i) {
> 
> Can we use for_each_new_intel_connector_in_state() here?

Ok, can use it.

It depends on 'base' being the first field in
intel_digital_connector_state, I think that assumption is acceptable
(and used elsewhere already).

> 
> BR,
> Jani.
> 
> 
> -- 
> Jani Nikula, Intel
