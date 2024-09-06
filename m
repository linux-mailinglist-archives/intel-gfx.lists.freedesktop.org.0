Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AC1CA96F7F4
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Sep 2024 17:13:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A59C110EA94;
	Fri,  6 Sep 2024 15:13:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ngWgfhq2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E222A10EA8C;
 Fri,  6 Sep 2024 15:13:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725635618; x=1757171618;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=4WHO5oHNnu7wnLBIst4wkz+OEhXOR/gWJfLSPS4VkZQ=;
 b=ngWgfhq20ZfNh7hCtpQTkO4sr8T1OQom1iUlLAl0fw6sUCEchpB6qpKh
 PcIwl5HtBBGZN2YWvAEUYzMgz3BXs0fO7SnxqVJZp1HAO92yibLszYjg7
 EGOw/WlqiKvCNo+wIzEU5Ovvd+ktL8bi8+7h0lqk8KawXYSppFAFNheAo
 x9z4fLrMRwDL3jediMTopjL8g2hT7txqSvRMyElDmiQ/GKbEElqbO8k6S
 WBZJcuxo5UV2jieisWk77XCGfcGlFJLFuXzbVV4HqIZ+2nlaJwdrtHgRd
 m61FBsVN4CZrLJAngpWdMp3rkOlfGvcalUoRUQisjWMShB0KeUBCSOx+n Q==;
X-CSE-ConnectionGUID: DVQ22warT4CtSF1kqVAltQ==
X-CSE-MsgGUID: T6wD9KGBQn2zi6F5rdvzkA==
X-IronPort-AV: E=McAfee;i="6700,10204,11187"; a="34972567"
X-IronPort-AV: E=Sophos;i="6.10,208,1719903600"; d="scan'208";a="34972567"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2024 08:13:38 -0700
X-CSE-ConnectionGUID: thG9d1/KSJmsUsWiPqSEJg==
X-CSE-MsgGUID: 3JkWzA61RGW2I6y1yTQycQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,208,1719903600"; d="scan'208";a="66013624"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Sep 2024 08:13:37 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 6 Sep 2024 08:13:36 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 6 Sep 2024 08:13:36 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 6 Sep 2024 08:13:36 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.41) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 6 Sep 2024 08:13:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=L3Sw8vVr4ow/M6Z6hNALFa55PIYlJuXPQVfvqG7+YUgwIYQbftUKwK4eccCe2g/vAnQcLw0nRL19HR0ELiIxtILlHs+r5/Yu69mS0pLsXhEZIaOb9+4ZlHYyw87HOw1NbKRTClzBDBoT1tehdXnUZ8npSDowGZsuAuquJNY3Zn3PFZw+3onqX4D1vyQvAZhtsW1yJgwkBChdr3lp0+o+S7ninlmkCFnAK9/DMsMj+iMljOAYFqtHqjPsZfLwLb+KcUj8kUWhInvEs+V+YyoRApdeOoXwjYb99YjRv4dGNVb3H+Bnqu0R0F7tHlL6AdbsMywraMubqMT69cG0cYkNsQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=b00FG2jy2/FFnfTNO3yr5SGncRT84iGApKAgp4/kBJY=;
 b=RjvAfFN7UTNQX1JGpwLy3JD3jSsNkkyOrqanaz9OFAMllb3M4q2kNleLqlOu69KrlomXhMLVDBCygHtoFi8DANnWmCQX3jTy5dto7Z4UIF0fj6g6nwo+aN1ywDuJNDx6EnIuyK5ciR4SCueXkJH78wYF8PGXE3xl/0BYdLl4mWnU8ljW8ZS43iel6MdgqfUDvDt/B2tRL0HtqhGWf6AQWd5pt+weWhVwpJyPNd5V/GOPeY+XocznfHIEt2tOEAcq8gNRpqeIbnxOT0nuyvFwu+TlrlQ+2gcxobktntotnqtfOI+jXs0F6eZDH52xc3Ox5a/LHXb4+yrQC936ZrQ/AQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by SA1PR11MB7110.namprd11.prod.outlook.com (2603:10b6:806:2b3::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7918.25; Fri, 6 Sep
 2024 15:13:34 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7918.024; Fri, 6 Sep 2024
 15:13:33 +0000
Date: Fri, 6 Sep 2024 11:13:30 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 5/6] drm/i915/power: Convert "i830 power well" code to
 intel_display
Message-ID: <ZtscGjH68EuueDMQ@intel.com>
References: <20240906143306.15937-1-ville.syrjala@linux.intel.com>
 <20240906143306.15937-6-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240906143306.15937-6-ville.syrjala@linux.intel.com>
X-ClientProxiedBy: MW4PR03CA0177.namprd03.prod.outlook.com
 (2603:10b6:303:8d::32) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|SA1PR11MB7110:EE_
X-MS-Office365-Filtering-Correlation-Id: 93e20ff7-28ba-415e-959a-08dcce867960
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?PISEGrCxZBuRycRfHqjEAwUIfhI9SD15zOV+uNdE4EIPL+CPVgNvvm363E?=
 =?iso-8859-1?Q?aWu3LMwiQ7Wj2Lw7fPgqTfbmSVKnsDSCLBTsGxLGc1Yq8TPCDAYmCcqJLC?=
 =?iso-8859-1?Q?2bJnOT0obeT63DviqUHWwxCnq+FHjmunD48YZeRB5O7V7OOS8BcLswl+o6?=
 =?iso-8859-1?Q?y6fmbPhxRQ9M7zBjl8RdXtcJ8vNomxDV1FVUO50cVKxQPoXIn0aiBdGrFV?=
 =?iso-8859-1?Q?8TKgILjjkGMLKY9wUwJp84HmMNujpXUUaiQfCz49F2wi+XEQdqpfR2DCtv?=
 =?iso-8859-1?Q?qCotB8awQOP7FsM+zY7E/53N8Jflpj1feNv1L73nzAac+LwmhcpkmefgZ7?=
 =?iso-8859-1?Q?jZzEYeWL3bEz0NB+Th1fJ1eObsgTZEEjoEXN35Z8FjRa/16EFwSJ/HojIo?=
 =?iso-8859-1?Q?mD4qQBfGrHItSO+K/jnC9H7wZxLIb8Emn5dRflfGyDtdBynhRcr0D5eUG4?=
 =?iso-8859-1?Q?afjPtguncgJ4o2sFhRFa56KTMLx1jnO0KYA+ZZLHIGanngtemf1VnSMGmG?=
 =?iso-8859-1?Q?36tNFrDDWHyi5vAyBfnKyGhefAHhK2Sh4wtr0uiDimvT1Xs5WrKRkry8SI?=
 =?iso-8859-1?Q?0DrWhJvo9CAZQu8vipooCf//cCBQTNpnotv8zNnG8jFV89xW+4feZwAAv+?=
 =?iso-8859-1?Q?aii9YHqHShWhc+4WCvpKXMrNXzwyVaHksUXXeS0R5/KGK3z5JPkbtYl8l9?=
 =?iso-8859-1?Q?D2qs7l8UaNDpFDT47+cWq8KcjIVBO7EzquISzdtzoQG3F/PV5fnJgZtj+Z?=
 =?iso-8859-1?Q?ORaZWhMmXEakceRUNenRUUPQXAptZ/RVBmBlqkJM9kRd2pltYoFKPWe+Ss?=
 =?iso-8859-1?Q?Sex93b86hna9bauUdFrZTtuhFJKUGJJfNsDM6GCzM1C0J2hoXyH09+WGDD?=
 =?iso-8859-1?Q?ngK+d55uhIJ3BLBlJHxTT7UbInXawoR11rrwbSeb/zznCiWnjolmFXmTy4?=
 =?iso-8859-1?Q?On52WCHoDQ+qwodmZ5zmIOFx6Svyz5waHaRvOwSYebbB3y/bfn6cNHqTyN?=
 =?iso-8859-1?Q?lhiqyef2YY0bYodacG0thH2mbsFnlBuzVPKsBwjZZn2Id2ISV5MPdr3aKG?=
 =?iso-8859-1?Q?rTZM9SBp+o7TSw6tf+zZ4TrtRE4jK+00ln5OufOqP3/UbB2sZjyQa/zvsf?=
 =?iso-8859-1?Q?Exny5Jn6+sQ7qmX6a2JZg/NxuIVDbdUOwLNHSpcP3vbtiTS5wnD2tLBR3+?=
 =?iso-8859-1?Q?TQco6GjeCqGL7gyse6nawcUiVEGYMJiA0FpW1yaNAF0bxS2QaXPv9zWPIT?=
 =?iso-8859-1?Q?HIifumFuW6rt7GQr+UcmpNGnAmDGB7Dv/HULRQH8JCEprBcvwgVmgJtOgl?=
 =?iso-8859-1?Q?dD+7E1aBtGfQ1P17XzztWkd+jVOyrdxezpojtP6/9M0QRuwoU/bRT9ScLp?=
 =?iso-8859-1?Q?Rvec4EU0Ekc96i6MQPs3K1Rik5tjaJ7Q=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?HnFeAZaoXwqqL9uwM1LyOsLhQYuzyqn+R14+9kNAN/fQN3tDr4/oSqurQj?=
 =?iso-8859-1?Q?ecOQSZMyk3Z9rThAXI+RBD1vVqzminsy0+7OkNZqRpmrlOtJuHRF6BACqS?=
 =?iso-8859-1?Q?yW1pIG3RrUsZoi4Axf7TO8RsTqkPg99fR6TlKwnINDVK1ZXnNwoTOiYm/K?=
 =?iso-8859-1?Q?BwBlEVVnlWW4qVp13urqcTJesQpdrtLJCNANx1pliHunUQs+TaRkPzwjP5?=
 =?iso-8859-1?Q?iOoChsGRwLfiGooZe+6LRJUyY0SwOwquGr8W5/A8kzbi76b/mNhCdKF3I8?=
 =?iso-8859-1?Q?Z6EgpVN+tU7VMLw2yFk3whtyYIcDu8kyNVUyzLqdcnc5PpxW1A8WmHDSXh?=
 =?iso-8859-1?Q?yIWAY2pg3p0TjrQEQvEyndrsK3SQjjk71ARXIRnspPFNwqwFeQLG4QWglE?=
 =?iso-8859-1?Q?H8Wer1vTypYI9Lm5JNOE+BnDWtHjJFV4qEYIa+0gpWG+3O7lB43KQyhQt9?=
 =?iso-8859-1?Q?cN3DzcImWCk6+hggkN2ikEovmi9UN6/Lgx7Aq73QE0ROYB//9KflaQNQ15?=
 =?iso-8859-1?Q?oUtxcy3INJ4Hcve4mub7oKzIR5Roi0rAMPefavOfgE4UR4+rG/ppLyYfsB?=
 =?iso-8859-1?Q?q+J/KLFN1JteuKUXXCf/JZvNCwILRXTVfvGw5x6isJhpCCO95jS0yMsAcg?=
 =?iso-8859-1?Q?cdMYpvw5ywZuuAc2RLkg9OcP92nR6IfzJ6NQEMsZ5Y3pmt6HN8OKfNmS+M?=
 =?iso-8859-1?Q?iFh6fjVWqxhM9lQ0qsyU/DvnmeVS5yDgH0O43n2tEcmzPWSr62ZtR6Lt4A?=
 =?iso-8859-1?Q?MaPhAoWqnJ/Foy4AdYlPJgEIE5Z+4pqX8J8GrU+uKOZyrVFXFNlkqeraLv?=
 =?iso-8859-1?Q?KWdI4d9K9rip8JkXWFwDsDz9ZpRcLLs1ZI96FIUcMtg3w5wvJPxFHI6iih?=
 =?iso-8859-1?Q?hfO2ZoxJ8PU9LkBV7tIaMIJD5YuA07bsyIc2JqlDIXUhB10hwZAJn45/Me?=
 =?iso-8859-1?Q?8OXbT1v2XUO7m/+a6SrQs2BmXoPcBGvhnyGqCsFEMuUTgrgNXQNVw/JkwE?=
 =?iso-8859-1?Q?RqpiIOPJtQM0NozPEXwQJwpgDW/3Xks5sLBX1sfqdc/bwWkgvUx7lFruxa?=
 =?iso-8859-1?Q?3kq+vg+ilBaS+BoENhjv5viW29CON43w2FKZjCSZ4rSbC6QoH/PDTRE0QC?=
 =?iso-8859-1?Q?G1Dzb9mJdtVAywvjFEssd2yQUWe5WbYAvKQsekEuDl6DA5d1hyhAoxIow5?=
 =?iso-8859-1?Q?fXygrX1JqN/tJZieWEnniARhQGMKt1pc2nV0Y3VMD+3RJLg6ZkYcm8Rr8n?=
 =?iso-8859-1?Q?E5/CxNlDI9ec3OL3sCZVJ+LMFdKWcfD/dTlvhB6AiV8h/QL2R4RPJKv3+i?=
 =?iso-8859-1?Q?YnMnLacS2GvzJr0LhL24LXwvsk/Gp6FpY2igJG8m57yTs17g0utaGLCBFg?=
 =?iso-8859-1?Q?+sP/KzkZLsLX0COQGinNqMldq40RS6//c2ywJbhcR0wW437/NVPdWEJNby?=
 =?iso-8859-1?Q?EVwim8uxNlWJ2H3yRMuWoLXOJ/g3V/UgmOnvMXbnOt+JUCSjGlQmLKkvY+?=
 =?iso-8859-1?Q?yU2/JNC6ql8PpCky0UAqxsG9Np3hEZOCB5XWOJfsC89pNUfMv6k7Aen7Em?=
 =?iso-8859-1?Q?wZFmd009W1bBLkMbonrr6CNpafOHJHKJHayw+h/R/FkYW0J2syLrNXJYwe?=
 =?iso-8859-1?Q?OiIwNSyTXZaWLKbexK7JIBGxZ603iK+GnyyoOa9JS74NZjgHimzEy84g?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 93e20ff7-28ba-415e-959a-08dcce867960
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Sep 2024 15:13:33.9378 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6rBfLlWILCza/zdD8/rPFwKVJvieY4E8SOShEWmIerA3SAVNPCEFXusoWiXeJ7lVKryIXKD918CYORZL9wpVCA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB7110
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

On Fri, Sep 06, 2024 at 05:33:05PM +0300, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> struct intel_display will replace struct drm_i915_private as
> the main thing for display code. Convert the "i830 power well"
> code to use it (as much as possible at this stage).
> 
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display.c  | 79 +++++++++----------
>  drivers/gpu/drm/i915/display/intel_display.h  |  5 +-
>  .../i915/display/intel_display_power_well.c   | 22 ++++--
>  3 files changed, 56 insertions(+), 50 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index b4ec9bf12aa7..0ec78b06ca80 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -2226,9 +2226,10 @@ static void i9xx_pfit_disable(const struct intel_crtc_state *old_crtc_state)
>  static void i9xx_crtc_disable(struct intel_atomic_state *state,
>  			      struct intel_crtc *crtc)
>  {
> +	struct intel_display *display = to_intel_display(state);
> +	struct drm_i915_private *dev_priv = to_i915(display->drm);
>  	struct intel_crtc_state *old_crtc_state =
>  		intel_atomic_get_old_crtc_state(state, crtc);
> -	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
>  	enum pipe pipe = crtc->pipe;
>  
>  	/*
> @@ -2267,7 +2268,7 @@ static void i9xx_crtc_disable(struct intel_atomic_state *state,
>  
>  	/* clock the pipe down to 640x480@60 to potentially save power */
>  	if (IS_I830(dev_priv))
> -		i830_enable_pipe(dev_priv, pipe);
> +		i830_enable_pipe(display, pipe);
>  }
>  
>  void intel_encoder_destroy(struct drm_encoder *encoder)
> @@ -8257,9 +8258,8 @@ int intel_initial_commit(struct drm_device *dev)
>  	return ret;
>  }
>  
> -void i830_enable_pipe(struct drm_i915_private *dev_priv, enum pipe pipe)
> +void i830_enable_pipe(struct intel_display *display, enum pipe pipe)
>  {
> -	struct intel_display *display = &dev_priv->display;
>  	struct intel_crtc *crtc = intel_crtc_for_pipe(display, pipe);
>  	enum transcoder cpu_transcoder = (enum transcoder)pipe;
>  	/* 640x480@60Hz, ~25175 kHz */
> @@ -8273,10 +8273,10 @@ void i830_enable_pipe(struct drm_i915_private *dev_priv, enum pipe pipe)
>  	u32 dpll, fp;
>  	int i;
>  
> -	drm_WARN_ON(&dev_priv->drm,
> +	drm_WARN_ON(display->drm,
>  		    i9xx_calc_dpll_params(48000, &clock) != 25154);
>  
> -	drm_dbg_kms(&dev_priv->drm,
> +	drm_dbg_kms(display->drm,
>  		    "enabling pipe %c due to force quirk (vco=%d dot=%d)\n",
>  		    pipe_name(pipe), clock.vco, clock.dot);
>  
> @@ -8288,35 +8288,35 @@ void i830_enable_pipe(struct drm_i915_private *dev_priv, enum pipe pipe)
>  		PLL_REF_INPUT_DREFCLK |
>  		DPLL_VCO_ENABLE;
>  
> -	intel_de_write(dev_priv, TRANS_HTOTAL(dev_priv, cpu_transcoder),
> +	intel_de_write(display, TRANS_HTOTAL(display, cpu_transcoder),
>  		       HACTIVE(640 - 1) | HTOTAL(800 - 1));
> -	intel_de_write(dev_priv, TRANS_HBLANK(dev_priv, cpu_transcoder),
> +	intel_de_write(display, TRANS_HBLANK(display, cpu_transcoder),
>  		       HBLANK_START(640 - 1) | HBLANK_END(800 - 1));
> -	intel_de_write(dev_priv, TRANS_HSYNC(dev_priv, cpu_transcoder),
> +	intel_de_write(display, TRANS_HSYNC(display, cpu_transcoder),
>  		       HSYNC_START(656 - 1) | HSYNC_END(752 - 1));
> -	intel_de_write(dev_priv, TRANS_VTOTAL(dev_priv, cpu_transcoder),
> +	intel_de_write(display, TRANS_VTOTAL(display, cpu_transcoder),
>  		       VACTIVE(480 - 1) | VTOTAL(525 - 1));
> -	intel_de_write(dev_priv, TRANS_VBLANK(dev_priv, cpu_transcoder),
> +	intel_de_write(display, TRANS_VBLANK(display, cpu_transcoder),
>  		       VBLANK_START(480 - 1) | VBLANK_END(525 - 1));
> -	intel_de_write(dev_priv, TRANS_VSYNC(dev_priv, cpu_transcoder),
> +	intel_de_write(display, TRANS_VSYNC(display, cpu_transcoder),
>  		       VSYNC_START(490 - 1) | VSYNC_END(492 - 1));
> -	intel_de_write(dev_priv, PIPESRC(dev_priv, pipe),
> +	intel_de_write(display, PIPESRC(display, pipe),
>  		       PIPESRC_WIDTH(640 - 1) | PIPESRC_HEIGHT(480 - 1));
>  
> -	intel_de_write(dev_priv, FP0(pipe), fp);
> -	intel_de_write(dev_priv, FP1(pipe), fp);
> +	intel_de_write(display, FP0(pipe), fp);
> +	intel_de_write(display, FP1(pipe), fp);
>  
>  	/*
>  	 * Apparently we need to have VGA mode enabled prior to changing
>  	 * the P1/P2 dividers. Otherwise the DPLL will keep using the old
>  	 * dividers, even though the register value does change.
>  	 */
> -	intel_de_write(dev_priv, DPLL(dev_priv, pipe),
> +	intel_de_write(display, DPLL(display, pipe),
>  		       dpll & ~DPLL_VGA_MODE_DIS);
> -	intel_de_write(dev_priv, DPLL(dev_priv, pipe), dpll);
> +	intel_de_write(display, DPLL(display, pipe), dpll);
>  
>  	/* Wait for the clocks to stabilize. */
> -	intel_de_posting_read(dev_priv, DPLL(dev_priv, pipe));
> +	intel_de_posting_read(display, DPLL(display, pipe));
>  	udelay(150);
>  
>  	/* The pixel multiplier can only be updated once the
> @@ -8324,47 +8324,46 @@ void i830_enable_pipe(struct drm_i915_private *dev_priv, enum pipe pipe)
>  	 *
>  	 * So write it again.
>  	 */
> -	intel_de_write(dev_priv, DPLL(dev_priv, pipe), dpll);
> +	intel_de_write(display, DPLL(display, pipe), dpll);
>  
>  	/* We do this three times for luck */
>  	for (i = 0; i < 3 ; i++) {
> -		intel_de_write(dev_priv, DPLL(dev_priv, pipe), dpll);
> -		intel_de_posting_read(dev_priv, DPLL(dev_priv, pipe));
> +		intel_de_write(display, DPLL(display, pipe), dpll);
> +		intel_de_posting_read(display, DPLL(display, pipe));
>  		udelay(150); /* wait for warmup */
>  	}
>  
> -	intel_de_write(dev_priv, TRANSCONF(dev_priv, pipe), TRANSCONF_ENABLE);
> -	intel_de_posting_read(dev_priv, TRANSCONF(dev_priv, pipe));
> +	intel_de_write(display, TRANSCONF(display, pipe), TRANSCONF_ENABLE);
> +	intel_de_posting_read(display, TRANSCONF(display, pipe));
>  
>  	intel_wait_for_pipe_scanline_moving(crtc);
>  }
>  
> -void i830_disable_pipe(struct drm_i915_private *dev_priv, enum pipe pipe)
> +void i830_disable_pipe(struct intel_display *display, enum pipe pipe)
>  {
> -	struct intel_display *display = &dev_priv->display;
>  	struct intel_crtc *crtc = intel_crtc_for_pipe(display, pipe);
>  
> -	drm_dbg_kms(&dev_priv->drm, "disabling pipe %c due to force quirk\n",
> +	drm_dbg_kms(display->drm, "disabling pipe %c due to force quirk\n",
>  		    pipe_name(pipe));
>  
> -	drm_WARN_ON(&dev_priv->drm,
> -		    intel_de_read(dev_priv, DSPCNTR(dev_priv, PLANE_A)) & DISP_ENABLE);
> -	drm_WARN_ON(&dev_priv->drm,
> -		    intel_de_read(dev_priv, DSPCNTR(dev_priv, PLANE_B)) & DISP_ENABLE);
> -	drm_WARN_ON(&dev_priv->drm,
> -		    intel_de_read(dev_priv, DSPCNTR(dev_priv, PLANE_C)) & DISP_ENABLE);
> -	drm_WARN_ON(&dev_priv->drm,
> -		    intel_de_read(dev_priv, CURCNTR(dev_priv, PIPE_A)) & MCURSOR_MODE_MASK);
> -	drm_WARN_ON(&dev_priv->drm,
> -		    intel_de_read(dev_priv, CURCNTR(dev_priv, PIPE_B)) & MCURSOR_MODE_MASK);
> +	drm_WARN_ON(display->drm,
> +		    intel_de_read(display, DSPCNTR(display, PLANE_A)) & DISP_ENABLE);
> +	drm_WARN_ON(display->drm,
> +		    intel_de_read(display, DSPCNTR(display, PLANE_B)) & DISP_ENABLE);
> +	drm_WARN_ON(display->drm,
> +		    intel_de_read(display, DSPCNTR(display, PLANE_C)) & DISP_ENABLE);
> +	drm_WARN_ON(display->drm,
> +		    intel_de_read(display, CURCNTR(display, PIPE_A)) & MCURSOR_MODE_MASK);
> +	drm_WARN_ON(display->drm,
> +		    intel_de_read(display, CURCNTR(display, PIPE_B)) & MCURSOR_MODE_MASK);
>  
> -	intel_de_write(dev_priv, TRANSCONF(dev_priv, pipe), 0);
> -	intel_de_posting_read(dev_priv, TRANSCONF(dev_priv, pipe));
> +	intel_de_write(display, TRANSCONF(display, pipe), 0);
> +	intel_de_posting_read(display, TRANSCONF(display, pipe));
>  
>  	intel_wait_for_pipe_scanline_stopped(crtc);
>  
> -	intel_de_write(dev_priv, DPLL(dev_priv, pipe), DPLL_VGA_MODE_DIS);
> -	intel_de_posting_read(dev_priv, DPLL(dev_priv, pipe));
> +	intel_de_write(display, DPLL(display, pipe), DPLL_VGA_MODE_DIS);
> +	intel_de_posting_read(display, DPLL(display, pipe));
>  }
>  
>  void intel_hpd_poll_fini(struct drm_i915_private *i915)
> diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
> index b21d9578d5db..7ca26e5cb20e 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.h
> +++ b/drivers/gpu/drm/i915/display/intel_display.h
> @@ -52,6 +52,7 @@ struct intel_atomic_state;
>  struct intel_crtc;
>  struct intel_crtc_state;
>  struct intel_digital_port;
> +struct intel_display;
>  struct intel_dp;
>  struct intel_encoder;
>  struct intel_initial_plane_config;
> @@ -437,8 +438,8 @@ void i9xx_set_pipeconf(const struct intel_crtc_state *crtc_state);
>  void ilk_set_pipeconf(const struct intel_crtc_state *crtc_state);
>  void intel_enable_transcoder(const struct intel_crtc_state *new_crtc_state);
>  void intel_disable_transcoder(const struct intel_crtc_state *old_crtc_state);
> -void i830_enable_pipe(struct drm_i915_private *dev_priv, enum pipe pipe);
> -void i830_disable_pipe(struct drm_i915_private *dev_priv, enum pipe pipe);
> +void i830_enable_pipe(struct intel_display *display, enum pipe pipe);
> +void i830_disable_pipe(struct intel_display *display, enum pipe pipe);
>  int vlv_get_hpll_vco(struct drm_i915_private *dev_priv);
>  int vlv_get_cck_clock(struct drm_i915_private *dev_priv,
>  		      const char *name, u32 reg, int ref_freq);
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> index a5d9b17e03a2..9f275a6674a1 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> @@ -1066,24 +1066,30 @@ static bool i9xx_always_on_power_well_enabled(struct drm_i915_private *dev_priv,
>  static void i830_pipes_power_well_enable(struct drm_i915_private *dev_priv,
>  					 struct i915_power_well *power_well)
>  {
> -	if ((intel_de_read(dev_priv, TRANSCONF(dev_priv, PIPE_A)) & TRANSCONF_ENABLE) == 0)
> -		i830_enable_pipe(dev_priv, PIPE_A);
> -	if ((intel_de_read(dev_priv, TRANSCONF(dev_priv, PIPE_B)) & TRANSCONF_ENABLE) == 0)
> -		i830_enable_pipe(dev_priv, PIPE_B);
> +	struct intel_display *display = &dev_priv->display;
> +
> +	if ((intel_de_read(display, TRANSCONF(dev_priv, PIPE_A)) & TRANSCONF_ENABLE) == 0)
> +		i830_enable_pipe(display, PIPE_A);
> +	if ((intel_de_read(display, TRANSCONF(dev_priv, PIPE_B)) & TRANSCONF_ENABLE) == 0)
> +		i830_enable_pipe(display, PIPE_B);
>  }
>  
>  static void i830_pipes_power_well_disable(struct drm_i915_private *dev_priv,
>  					  struct i915_power_well *power_well)
>  {
> -	i830_disable_pipe(dev_priv, PIPE_B);
> -	i830_disable_pipe(dev_priv, PIPE_A);
> +	struct intel_display *display = &dev_priv->display;
> +
> +	i830_disable_pipe(display, PIPE_B);
> +	i830_disable_pipe(display, PIPE_A);
>  }
>  
>  static bool i830_pipes_power_well_enabled(struct drm_i915_private *dev_priv,
>  					  struct i915_power_well *power_well)
>  {
> -	return intel_de_read(dev_priv, TRANSCONF(dev_priv, PIPE_A)) & TRANSCONF_ENABLE &&
> -		intel_de_read(dev_priv, TRANSCONF(dev_priv, PIPE_B)) & TRANSCONF_ENABLE;
> +	struct intel_display *display = &dev_priv->display;
> +
> +	return intel_de_read(display, TRANSCONF(dev_priv, PIPE_A)) & TRANSCONF_ENABLE &&
> +		intel_de_read(display, TRANSCONF(dev_priv, PIPE_B)) & TRANSCONF_ENABLE;
>  }
>  
>  static void i830_pipes_power_well_sync_hw(struct drm_i915_private *dev_priv,
> -- 
> 2.44.2
> 
