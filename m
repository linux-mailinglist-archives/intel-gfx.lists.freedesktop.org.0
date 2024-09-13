Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B0AB0978A45
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Sep 2024 22:55:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4F78E10ED90;
	Fri, 13 Sep 2024 20:55:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lJ6mj26S";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D74A010ED90
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Sep 2024 20:55:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726260950; x=1757796950;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=zAX48kxEuKN/60ipGEJ3+++6EsX/MizNDxQSNOfwC6w=;
 b=lJ6mj26S4AnvCa3y3fqLS8krKAGo1/lQ8J23QdfJ9zyWFkNCQJbp6hVk
 vb9J7FFKEsmP/rzPGHv6Sm/eseaJJC/jZA3YNxOgvJ+WW6WI9pv5GWw1Z
 3N3hkbeRrTLX0EUPYi5fveZHBQbcaK3rDf6B7NqtD/Uk0jxu5JJiuWa3w
 v57e65O0FhCNxjq6CMLanSHTVLF9Pumt1kUzZ9kSLtNm4Q4an3ADHFLgT
 gNhoD+3+ehSxjhpZUEAvPQ7i1mRWANncHIrZX4iRJG7D/o5YC/XaKwRZe
 fq7HI1GoJmF4AkZaXKcbwofVGrqu80WTKpvjEwgyQXoFtu32akbUIEfOE Q==;
X-CSE-ConnectionGUID: X2q2HAVJT96iK4AnCrArXg==
X-CSE-MsgGUID: DkbSCVWzSGemcoTl6PGLpA==
X-IronPort-AV: E=McAfee;i="6700,10204,11194"; a="28960097"
X-IronPort-AV: E=Sophos;i="6.10,227,1719903600"; d="scan'208";a="28960097"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2024 13:55:50 -0700
X-CSE-ConnectionGUID: Gjru+ewfSuK8ZEDgVaWF6w==
X-CSE-MsgGUID: H2R+XnGZRneV9qt5K4l+HA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,227,1719903600"; d="scan'208";a="72568261"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 13 Sep 2024 13:55:49 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 13 Sep 2024 13:55:49 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 13 Sep 2024 13:55:48 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 13 Sep 2024 13:55:48 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.48) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 13 Sep 2024 13:55:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Y1vfR/2RMgRRXdXuppP/+HLMEnoTxc5Ub8ccZKBtnpWO5Pr+S8kuNvmoz9mWjq5y9QxOsr/rqv/LaXbyshTkuPg7yVqQLemmFdjP0wCwLE8WziTrC9Pm8U5r6106abBJRAMxDVrSRMrEsOwlTIlqgin3cFYjJqO0bXyysB7m+NzeLi/Eb7hN7typYBQ/nbUFyOBWpGkCBO6ycTh9kVMoDw6T7XPG0Y0LMXP4Jl+eoDaiNQiVaFDRRCk/Wcc6o1AiATusjX8i75EG4CZfGVGjb78lo/glQn8VUjRWABxQVgjntKJYT9z5Kz7SmNGbKjke9pWAHmU1mGDJlYJuGk3i7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qEA2FY0n8KqmuFyjL2LuEVf9uvyWyIHgW4YYEiGoNnA=;
 b=Q7Ja1aZGgi9VqCOuUo4wI18ecSijKGH90G/EvhR981yvIjna+TSt23pxFBG/KJk2uvEf5o04XKQDITUIPya04HrVlQ7pXSa7GohxwUh3zLCAUy37+oAvUI+XHMQ4SIu0gPlqavWCEB2fcYWSUK5eF4eCf6NNbDPdEo6qHUJ5Hm3HxzbCKShE1TsE/0I3UHMxHsdTUECBMWj+cvt7vEWYf8tckK8S2I7AP4tc/Eoa14xZKnS8kLZkVUjDt311i9k24HgGVnY0MBRfohff4USB3BAgatfecBYbu7f7dqgTdfygVtVWZA1VrU7sDoGMY3/wJPyTpX7G92uvFjOIMw6Mxw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB2859.namprd11.prod.outlook.com (2603:10b6:5:c9::14) by
 CY8PR11MB7266.namprd11.prod.outlook.com (2603:10b6:930:99::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7962.18; Fri, 13 Sep 2024 20:55:46 +0000
Received: from DM6PR11MB2859.namprd11.prod.outlook.com
 ([fe80::4063:4fec:bf76:f095]) by DM6PR11MB2859.namprd11.prod.outlook.com
 ([fe80::4063:4fec:bf76:f095%7]) with mapi id 15.20.7939.022; Fri, 13 Sep 2024
 20:55:46 +0000
Date: Fri, 13 Sep 2024 16:55:38 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 2/2] drm/i915/display: move enum i9xx_plane_id to
 intel_display_limits.h
Message-ID: <ZuSmylwGgvOPi1W7@intel.com>
References: <cover.1726235647.git.jani.nikula@intel.com>
 <1e8f9768f2d638dfa1fc72f80f0d7391c4a48bbb.1726235647.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <1e8f9768f2d638dfa1fc72f80f0d7391c4a48bbb.1726235647.git.jani.nikula@intel.com>
X-ClientProxiedBy: MW4PR04CA0348.namprd04.prod.outlook.com
 (2603:10b6:303:8a::23) To DM6PR11MB2859.namprd11.prod.outlook.com
 (2603:10b6:5:c9::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2859:EE_|CY8PR11MB7266:EE_
X-MS-Office365-Filtering-Correlation-Id: 9fa2e8b4-b640-424e-33a4-08dcd4366d95
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?JfW3o12VwCkJhs3d7UGIWeTFjeEyBh6K3/sgJ0mJrIYaIKxjyvHiolB956fG?=
 =?us-ascii?Q?B/l65BbXs7pamjieeFjFWagJSb0ORNV9mmD5Ms+tuxgiO27j4LTMND6njHMe?=
 =?us-ascii?Q?Jaly6DU5r7PuDiV0v3/XsKEkAas8nZb6FEcJMB5FR4V/lRkGZ8lSf0Gox53k?=
 =?us-ascii?Q?R8RcW/G5OauhPB3hF5tNiSuH3QYcW6KMmxuQO5njcGMNAc2Hu+F+C+JVrw8z?=
 =?us-ascii?Q?OOQa29HsnyWidppOTl7TUbF4MwIyIUjbjeeO2cusBbqg9VcDTLWpGuOyxwnW?=
 =?us-ascii?Q?Q9UtofhvI/Izh9AqyB5eiA3KGx7TG7+RMLQgG+E8RG/sIFySEIAfSm7rb9nJ?=
 =?us-ascii?Q?ir5Fh9yZ+8kQL88nAWvzJ4BvnovWBFD9d984npN+PWwJr1Qwgt3fYXGroaOf?=
 =?us-ascii?Q?21i3muXSr3LdtWL/4hp3stC9bOnlr6DjCj2ql4x/X3xGV9JmRDtuuKG9Ew1I?=
 =?us-ascii?Q?Cr5OZg7wC3Ej/xVoBgPMZLxsx4Sqk2JxUOZ3neJATJY0BQVh3Hzjv7Ricddj?=
 =?us-ascii?Q?IKTgD5uKU4tHbn+DRAjHtB/s4EsdGVDNP3z1AgeqZiUjgt6va5Z2/anTdrPu?=
 =?us-ascii?Q?Q6mg9DYxU8Lki1W/lKjSd1X9ZssKwU5/2ojeRg4BTPOrpWcQv8EpiWBjQ5Mz?=
 =?us-ascii?Q?n0vZdHX9KA8dfgvPggAPSzrcWzeZy3B85ip912y58q6Dhl5BzJLVx0YUMhJR?=
 =?us-ascii?Q?B9hGbstHfm2Jr0bp5kKc/cxlfXMdjlJK5QvLLFkxuNvHrxu4Q9HGJdICQ9q1?=
 =?us-ascii?Q?aNxRrKEx2pATQnzk+KMBiYtH7CG19+v1BXTId+rhJzQRjVIF5OJLY7Iljib9?=
 =?us-ascii?Q?GNZadD2J5eOSMqgzTxAI28acAXlcL+nTNV23NxXd8+UikATkNL5jLbESxRYO?=
 =?us-ascii?Q?ahozEp57TZZWaERBnmUe6fiXbyJZ0b00dEAtVOH2JWn4y6uLKzkA/pKv3BeY?=
 =?us-ascii?Q?6LG7OX8+cHzjz86C3/PM+gOp0cOe/kUtk0WJCJ1dvU+p8QkcFtR5nKK/g+Tb?=
 =?us-ascii?Q?Af8TI+Gne0DB6yvo8xh6sBMWTVVWC49Kxneu7doAWifWvcjeDRD892aJW90l?=
 =?us-ascii?Q?9dO+wnfuSc6zveoZyRZt98Ha8eKLUinabGn93Z2fwpmEuOP4ykcemGtkhnDJ?=
 =?us-ascii?Q?zN9N7ZPsVaCxCIbseXQ0DYu3dX5oYfgsosaIhKFktB/HEvgnA2T77kgpy+hs?=
 =?us-ascii?Q?muFUufQtGBT1DajXzuM01jERZH7precyyoSGi34mC3+y7GS6M0ikkd8AlFIr?=
 =?us-ascii?Q?Ym3rnJ9Zmr63Q0MSQl402jGZ5/e6GGoWyZ9loaPQto4FW7+2f8ZEP48Bxq7v?=
 =?us-ascii?Q?/3CulFJlONHnZ+QyRFahbPoI7PpdnQQvTW+usqFDVnbd1Q=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?dBMbtww66ZNsvR3tOhAcK46bLLJOyq9IMDsWTeUKnnnbhFGj6P9QViZeZASP?=
 =?us-ascii?Q?s+e7wxZhkBwvC/vedsJAgOrBMtInP/jjCpUncFTGF7gNui0Gg+NHe4wLddnE?=
 =?us-ascii?Q?c5OlwF42tsAUv48wABjpkU0tljLJaZUD8cCXERVTlPWILMXI3mmmioAbt4pw?=
 =?us-ascii?Q?e5EKuz30x/JHEtUkUTEKzqeCUja6vNb9uwAS7MGOLyGtAaKuJC1S7XBx43RH?=
 =?us-ascii?Q?zTdF8TSWdAwnLB87kDYNMxXAB4TSYdjElWoHxN9DIEnuKkB5Oz9FW4Xn7kaX?=
 =?us-ascii?Q?2Dv3ONk2ySUBkpfCJVlIAocMK3jFRGHBIpl5BzE9/aOTv1vHid1ZAE09GDw+?=
 =?us-ascii?Q?0sqh3SCBPUeSx69DPLG/Hk1sFfqJD4oW4EANXL2O3Y9+qPWkLqitM42uDDv1?=
 =?us-ascii?Q?SyIvqE7BZHUhYcUOTQ/XobDSnAKgw1KGTZtGIhBKwgxYFU1KIaWP8sNfdxLI?=
 =?us-ascii?Q?WRgjUhiUQ8RlNlQiV9Xy69HqSijq8LVtUImwqvfH0O/NVAhcrkWV7ZgxVTHi?=
 =?us-ascii?Q?C1IwM1a2EL/rAohttWTwXczHcoG40eN8GMZIInebdP6XT9Llqk6/KsYYXbww?=
 =?us-ascii?Q?dYnG2ceEhIYPNCBLesXmyBR1ykx9BySe9xyrkUTogGuctpAUc4pRKB8qWP9w?=
 =?us-ascii?Q?pBVrV9Em8pSrbw5nh7lgaziLzlxhLJz4lykYTP6LW2vFc+vircGCQ5DTOTSs?=
 =?us-ascii?Q?9mg85sFg+sK96Dj3Fs0IDScV8xY+hIU8Cjgssxgtbp8nxpm/CZPVsXiyVuib?=
 =?us-ascii?Q?r6ThoIXT348n/NFR41W8gUG2JhsZEAQbiNB/VfjYW5BoMuLWy2H9AjzvigIa?=
 =?us-ascii?Q?Vk4wiiMnFcmVf7c57pzRyAX1c/3rQS4Ku9KALWkRwEwGDr2EDe6rOD/J6p9I?=
 =?us-ascii?Q?yLvHkBUsuqQLo2QmchGrfMgP7I5YwwDOtCLQPGFkF64zzsorzYioi+ViewDF?=
 =?us-ascii?Q?K9QZS1jqKL/8HvoKNG872POS1b0Cma9oOmAR0/2WWq4JBzwLsRn9vCmbeT9o?=
 =?us-ascii?Q?bdX8PdsKtJfSOPWRFOfJg65mo1+2tnFg/u+SjRCXB99+M5NKRSDlBfrZx3Vo?=
 =?us-ascii?Q?8L9yhxOK5iwh1SFrCglpYMvOtyYLpHXtMytRzv4RTHQZ87jtL42DBoTtMxHY?=
 =?us-ascii?Q?6cTrVPFEnivcSPvr1r1sF0l3oAeHHmTP1U1vpI2gcbv8ZngYVVaHrXCP0ohR?=
 =?us-ascii?Q?Ek+ovqAj+bKPcoXaKTYejMsP3wYirWDkV/QF69XZG8vvUEv5ghvK3g7QYsC1?=
 =?us-ascii?Q?+ItFZ/rHLu5Z8QlU5W/RXGehSUrc1UH8csBbEax2rwO+6NaOI4gzt7wcIBj6?=
 =?us-ascii?Q?QeM7kj2KnhOLjfan5FroiSTn+mTtvLWV/sSj+RBTBWfqrIbBkY/C6B8mZnRg?=
 =?us-ascii?Q?A7DJuH2cwEjM5JdExMwUj0Z8Dv3pyanCjHkI0RyElmQdUl+8hyUduptE+O0A?=
 =?us-ascii?Q?v8AaQYlu6OUCw34NYzTuChQcuGG4PGEJB3D9sFqspc0lsSXkHP3p2kgRQ/LO?=
 =?us-ascii?Q?ao40HpPVA4+sMu9DK7GT/bbgX0MjTa5BYj8K0ArMfPBrQk8XxK+v24F7H8Hw?=
 =?us-ascii?Q?HcqQUsrdNaP67BbCSqebIFzJA0uYPToDRxuqlf8pMxMe7YJmpivh4y5gG/5g?=
 =?us-ascii?Q?iA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9fa2e8b4-b640-424e-33a4-08dcd4366d95
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Sep 2024 20:55:46.5247 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: nzkddu8mVRTTu2miXnrPeGb04tn8HFt8DBzNEciFZDBDqArsO35s/qU1qbJjDIla75tWBp39FcYjmkXo3Y3qeA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7266
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

On Fri, Sep 13, 2024 at 04:54:39PM +0300, Jani Nikula wrote:
> Move enum i9xx_plane_id from intel_display.h to intel_display_limits.h
> to be able to reduce dependencies on intel_display.h.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.h        | 10 ----------
>  drivers/gpu/drm/i915/display/intel_display_limits.h | 10 ++++++++++
>  drivers/gpu/drm/i915/gvt/cmd_parser.c               |  1 -
>  3 files changed, 10 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
> index d10608526eee..4bdb48084cab 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.h
> +++ b/drivers/gpu/drm/i915/display/intel_display.h
> @@ -95,16 +95,6 @@ static inline bool transcoder_is_dsi(enum transcoder transcoder)
>  	return transcoder == TRANSCODER_DSI_A || transcoder == TRANSCODER_DSI_C;
>  }
>  
> -/*
> - * Global legacy plane identifier. Valid only for primary/sprite
> - * planes on pre-g4x, and only for primary planes on g4x-bdw.
> - */
> -enum i9xx_plane_id {
> -	PLANE_A,
> -	PLANE_B,
> -	PLANE_C,
> -};
> -
>  #define plane_name(p) ((p) + 'A')
>  
>  #define for_each_plane_id_on_crtc(__crtc, __p) \
> diff --git a/drivers/gpu/drm/i915/display/intel_display_limits.h b/drivers/gpu/drm/i915/display/intel_display_limits.h
> index c4775c99dc83..f0fa27e365ab 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_limits.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_limits.h

why here and not in somewhere like:
drivers/gpu/drm/i915/display/i9xx_plane.h
?

> @@ -49,6 +49,16 @@ enum transcoder {
>  	I915_MAX_TRANSCODERS
>  };
>  
> +/*
> + * Global legacy plane identifier. Valid only for primary/sprite
> + * planes on pre-g4x, and only for primary planes on g4x-bdw.
> + */
> +enum i9xx_plane_id {
> +	PLANE_A,
> +	PLANE_B,
> +	PLANE_C,
> +};
> +
>  /*
>   * Per-pipe plane identifier.
>   * I915_MAX_PLANES in the enum below is the maximum (across all platforms)
> diff --git a/drivers/gpu/drm/i915/gvt/cmd_parser.c b/drivers/gpu/drm/i915/gvt/cmd_parser.c
> index 2f4c9c66b40b..81d67a46cd9e 100644
> --- a/drivers/gpu/drm/i915/gvt/cmd_parser.c
> +++ b/drivers/gpu/drm/i915/gvt/cmd_parser.c
> @@ -50,7 +50,6 @@
>  #include "trace.h"
>  
>  #include "display/i9xx_plane_regs.h"
> -#include "display/intel_display.h"
>  #include "display/intel_sprite_regs.h"
>  #include "gem/i915_gem_context.h"
>  #include "gem/i915_gem_pm.h"
> -- 
> 2.39.2
> 
