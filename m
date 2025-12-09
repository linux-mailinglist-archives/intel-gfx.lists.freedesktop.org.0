Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 04819CAFAA3
	for <lists+intel-gfx@lfdr.de>; Tue, 09 Dec 2025 11:38:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9EBDF10E4FD;
	Tue,  9 Dec 2025 10:38:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="X9bTC4Kk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7601D10E4F2;
 Tue,  9 Dec 2025 10:38:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765276733; x=1796812733;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=pygN8zVMurd26bszcIQBBzQZjKB7udzZkD65VtTKzJU=;
 b=X9bTC4KkMaohAMJSLKiL/ELdg84WjftUKBuoUy2ABsPore0l7esShpnP
 kdBNLpKKPA2WGoLWw8pgUvKqqqFsGCso9n3Vd7lnkoTDqrs0FOqZV/jqR
 bJe+Fz4Ly7SStvHnk+/o6u5QxDZ2kiJaoN6MZsI9hZiD2KsNWhq//4qe5
 EY58h/614zy4ojDFR7iUI4J0ZD83Ms6I/Qi8qDJiANc95BV8NA3YX9LaU
 4lLVxvlB8OgDwyryCMHDyc1SrkUeiXeU3tHSZ6vcdwiGoSpvykblA4vTr
 GG4N2uINqIqK8KDxxCuWEiMVJTe4VcRwPldSqoQM/Xy5pdJgo291M8sc0 w==;
X-CSE-ConnectionGUID: S9tNsLbsS5eAY6aJz9cp7Q==
X-CSE-MsgGUID: +8eSrqUaQjqFxtlGxlwJOQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11636"; a="78347283"
X-IronPort-AV: E=Sophos;i="6.20,261,1758610800"; d="scan'208";a="78347283"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2025 02:38:53 -0800
X-CSE-ConnectionGUID: tgLDjxDAQMWI5+P+bqUF7A==
X-CSE-MsgGUID: UoucZg4pR7i1I2LdxQhnSg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,261,1758610800"; d="scan'208";a="200374664"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2025 02:38:52 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 9 Dec 2025 02:38:51 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Tue, 9 Dec 2025 02:38:51 -0800
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.57) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 9 Dec 2025 02:38:51 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=SZCleSjteh3u1mvycHxjGj9vgoaL37umLeBKRhd4R6EFOeXxhtRGRDaPZ1AYUJtkvXWeuATmtL4oLFXrX1kp0G4/GSi23+TA3VIgrGpxvJzhOhY401U0jMTDeMW+WWZdN/SFKdm6NIEuxsSbwd4H+zMxej5XaJOf8s+eFim9unf80mAz757tAR0OCBwqXlYR35Ye/dy/3zQGtlWDDfBe4QP9qJtQWKxJlR19iFZITSDNTErLde5MFURtqRmDwgPssmZu4JmhezwNzgYh3z/H24/03gHZJMoIS1dMao6SXXNEth6gzWdbBqmkUdV3zGdya4H1dyNDFuS9C+9KJakC7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EpBG3IyK7sJrx3FwT+PzSZQYn8NNtO0ti0FF3Wt8q1o=;
 b=uBxnvDYEzqK/MiwQ0mU7Sz4Ig/H7PfxRDoTf8yq/q4qKWuSE4Rn6dzKQ7TOXzRsvRQ+DaMgZnrJevC6ut670HMsZUu3tY1ahVG35sZ1Z06u+IMDUt+kuFow/6wxNK818t7V7CxxQdtJysbCx8vgfX5aznOPOLlwaW2QP/TiB6EUArm+MmFwNNgqqUAiEQqvI8KcE2GglA7E9AqpW2hf/PmFS6zhs/Mavz21/rMiuGmaYWskctWWCRFzmSAUEXHPfrmpghk7rlU+zAnI0nmk2iCo4qoiv6TJeBJb7NxB6UQo9eawuzs3+slrzMmomAt/taMTD0GR+I36xkoC9uFJWXQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by LV8PR11MB8769.namprd11.prod.outlook.com (2603:10b6:408:204::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9388.14; Tue, 9 Dec
 2025 10:38:44 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9412.005; Tue, 9 Dec 2025
 10:38:44 +0000
Date: Tue, 9 Dec 2025 12:38:39 +0200
From: Imre Deak <imre.deak@intel.com>
To: Jouni Hogander <jouni.hogander@intel.com>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 38/50] drm/i915/dsi: Move initialization of DSI DSC
 streams-per-pipe to fill_dsc()
Message-ID: <aTf8L_RcUICgHnPZ@ideak-desk>
References: <20251127175023.1522538-1-imre.deak@intel.com>
 <20251127175023.1522538-39-imre.deak@intel.com>
 <159d7d279c48cc07847b03e3466e78976dc3d086.camel@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <159d7d279c48cc07847b03e3466e78976dc3d086.camel@intel.com>
X-ClientProxiedBy: LO0P123CA0014.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:354::18) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|LV8PR11MB8769:EE_
X-MS-Office365-Filtering-Correlation-Id: 24956ea7-ca38-4dc0-88ed-08de370f205f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|10070799003|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?4ATkYBgju507ooDDvs9GUjWqhixi/TiFCDlrcJmt2gyeoruR3braHfIWeK?=
 =?iso-8859-1?Q?pOMiGqtE5XrGW7InP1wA/z8Xc7Dyx5BYF6HfA0lU+bOtzkwegM5rrTZO1a?=
 =?iso-8859-1?Q?P7iv17gGNrLMELiNFuiEsyl8YY/gZsTq7r+fwbqQ7pJCsCd2tgVifrb17N?=
 =?iso-8859-1?Q?KILmS6OFdrAaoifiAW5vs/cUbbJnWOsa/qb6mJvrSeJlK60F9XjhjJzEGr?=
 =?iso-8859-1?Q?9B/ogtjsmNp0jWdc/9EyAcLOG6vFYnOaKbkhL2flheqiGmK2wGEDXqPzGU?=
 =?iso-8859-1?Q?IYqaKJ1MOouQkOx75jrd+GaFE337V/Ij9Jg/caQALqkx1AuSUfyblLt4gQ?=
 =?iso-8859-1?Q?opolSHHvyIsbYslnt0ptk1Z/9ggoHVS0pG2TGHll8jqqjZ3HjVuMo0b5dl?=
 =?iso-8859-1?Q?QJDMR3wWKFUO0c+CT0Hm9varJLjEVsEmpr0v013wd6YgLJtw3+TrXQFCq7?=
 =?iso-8859-1?Q?OC9BXDtnafUEZeZWJtyGvzARrmFsg8cNLyCEb2EEcqIDHykLm7usuRLEtT?=
 =?iso-8859-1?Q?vtGC6SIdAwO2Qur+DFXtDhVVYuTg4J7DoFeMDizC1S0GlLmWFM9j/5KUxj?=
 =?iso-8859-1?Q?P2JfND75HjFphK19DIblFDQ1/Pt8hN9erdJy2xmnTzYJcNs5FmE5Q8pJAF?=
 =?iso-8859-1?Q?1Lsu303olCpTTJqtBYJdvKgB+wED5f28Lj6ZQmG17D1XmZFD3PpUU+rYDu?=
 =?iso-8859-1?Q?1GscPqMLp+7SEkFRDONWCrs692P1pLb6hkHreOLkMYgTJEf+iMjXvVWABx?=
 =?iso-8859-1?Q?4popO71Ew0geNfmc86QdBMbfJG+ek87qsaI6byZsZCMLGBDBv+iO3VRUjK?=
 =?iso-8859-1?Q?05GQAsTNECJoE8DR1azBg+YMmFy7OrlIRYpiNkkIIm2sn9UXwqoDI4bNSL?=
 =?iso-8859-1?Q?YJ5WYCLxBzxfguVI1iJy3lMpOJKNvHxp0Czzv12r0p8X3C87Xhi+9WfbUH?=
 =?iso-8859-1?Q?G1vwipLpWzhLUWkXemsq5RGM4mdFPZ5g6X+zbNDdk7AEu6GKf59cDcy153?=
 =?iso-8859-1?Q?9kTIo6oEqMkfUEoU/kU03byi8ef3Z/62MT33ucnsFOYzjK2i81U3N80Fja?=
 =?iso-8859-1?Q?8eSqm4Egnnph027JYGVW0C1oTUpDdalqFaWwKWYK4g2zids15MMkwz75vk?=
 =?iso-8859-1?Q?ch8WSNIoXpbVVi4znrjfi9+B2Hleaifo6nnOzEXOQmKzJmuLgQgPBwZc87?=
 =?iso-8859-1?Q?HIGKIRSzwFS0Htaum/mUeUagp7gP7sA+2SEVuUk9aEZBpQ+T1SXUl0WnL4?=
 =?iso-8859-1?Q?9GAOLMjbka//sBI5ODVy0JOeGxVE1H9X+6IVt2U7vNvX2Ip1RXiM96S2i4?=
 =?iso-8859-1?Q?Es+sVSAOScnquHnU40CnbnZmW2Sb5uA/j/T5GdVp5qOS5gyIkdiJQJXFnN?=
 =?iso-8859-1?Q?cyaVggCOx6xkMCTdGB0J/e1DwNwXGdUibaZ/qmQ4GevjZ9tWHhUdLSlmPN?=
 =?iso-8859-1?Q?QsZIi4uWjP+095DvFiM49OmVUmWyy79Iz92lep0HsCg0cq+fmAt1Y1ycrF?=
 =?iso-8859-1?Q?mPGxHiO1w9imx8mbpBnbht?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?L8I9Pet1xLtlj5C3Bl/pJq7GcVIM/frD1YueAEdBBuuF6Ib2bOAE9pgwXU?=
 =?iso-8859-1?Q?A/0p91Cky+WDuMByeHYo/5xLCjmpdYHXgc+NixhvT680sNWw9BOwVe6+Pj?=
 =?iso-8859-1?Q?BSSnZSkowEO8FxTd3NRcSY1L+esffZ+XJxPWS1a2EMuQXoymzajvk+oMVG?=
 =?iso-8859-1?Q?FypLan8eqs7mxvgsRo1k1nbALZwhy6zlDv07Ftw7ICITSbcgPZhHewAN1g?=
 =?iso-8859-1?Q?YqJUtl01qio1Qq8hW0SxzndCPQdwYTujA6VU6pc4+CtMMXaGy6gEv9Otjs?=
 =?iso-8859-1?Q?+xaOneY11a73YLQ+T8EAeidZeMTTT0M28E2vssnt+zL7hMErpQr4rMzItu?=
 =?iso-8859-1?Q?gt3P6A0jgIox1x62xno2falpwcR7tJ4a1Q6isCtAQAP1BoEVn6fLLgZhct?=
 =?iso-8859-1?Q?hZ/hbSPD/74rShthM0B1RM/tTlHXQYQj9DLi80zGyvVb4kFu8LwPC+fY1U?=
 =?iso-8859-1?Q?u/UzADdHRF8cqjMWfVtKS8MQHzVCoh2qdDVhpTQVO6Bm8E2sGhHAEhfyak?=
 =?iso-8859-1?Q?3u49YxYtgMHN1KF+KEX6+yeNCAZcSgscLPhzJMMAWyKgOdvxQBjjkpoJBg?=
 =?iso-8859-1?Q?Jdeizu+uFtaaH3BFIpzJDEKgT06jA5F9J8wgc5tBXhsY6ysmeoD5azS+w/?=
 =?iso-8859-1?Q?sBxCLIVwGshTWK22vSFxgSEJLYfMEBKUc+pZwOXUSjwJEWUL8+0SXhZDl/?=
 =?iso-8859-1?Q?OHIVuHzFp2eH9UxSfThJKdD/L0fY7oALzVj+/dinkSJXaR/PImWVHhgvQA?=
 =?iso-8859-1?Q?d2aFPWel+mD/Ocq2KwGXPy5iK9tyOQp7WmeBZ2doZcjncGWCwBHQ/yZcLY?=
 =?iso-8859-1?Q?JIQQE86+evkW3wYUvnS805N48FBWNmxSd7hjpFzty4g4i5wcUhHUnpX+hG?=
 =?iso-8859-1?Q?+7wKJSM47s/Ql5i4GFhDiQa1QSWVZpuyIEjgLoTjxNg5AExZqusAYDZP2L?=
 =?iso-8859-1?Q?/2lVA0gm0EkUI6Rdgt6jLKAc8gCxajWdyxO1hiCM+qO5tJgkmumbrgBvHA?=
 =?iso-8859-1?Q?n6iI0poDA2s27wfhDlxuFwG+f7fEk71J9Rs4QSsHBO4vR5ntZWYzNeeatN?=
 =?iso-8859-1?Q?AHLwFRKtGWlN5Ll0ZVZHj21RS/La029pRyQ4XTQc3W0Jd4O0rJsKdkbg8C?=
 =?iso-8859-1?Q?aDl8JY3fNMxtSHeJ0PpRDO0SDeC7Jhxxu17I81ffdrnQmuL6uCS3tcWdyb?=
 =?iso-8859-1?Q?HjF3CpB2hU8RoEwRoqPCK4ocftugeN2/u7NcuycxvD9SvnBP4AxpVcASly?=
 =?iso-8859-1?Q?kPVZECW4vV51yC//f4M15QKB/vM7KHt3oWZVgcbiIQkZkRAishJqG9gU9a?=
 =?iso-8859-1?Q?IyREGh+Q3wFhTjwwODZgNMviNIq6QqqbvfVZAvkLjyfhJpFotMJuOac1f2?=
 =?iso-8859-1?Q?obEtK0f/D+CqERTIjYsqZsmJOpBgL1GNuYDSVsu+Q5kzqBhNI+oy6WoJbX?=
 =?iso-8859-1?Q?sJg89JHThulbGgRrg+QKLLvRTxdTKIr7KnZB3o1fG2q5xLvOeYG3ULUbb9?=
 =?iso-8859-1?Q?R+9oP8N0U+jRXS9GrIbWt17aEBtIwhPCoFq0Ut20sWDJHvSe0HGClMn+ol?=
 =?iso-8859-1?Q?r/om9rYgCqmJtcEDpiMLKugS6p6V7edrwpfivTvspF0qtRkaju3Me40nsO?=
 =?iso-8859-1?Q?2qeTyZU8UNUF9VpEhaeU1tJFti5bZ9FEwpqT8f6pxcvyTKOZUTsgPhFeCn?=
 =?iso-8859-1?Q?mK58GKqbZA7cRXdTpiyA3h3KzeUJFa0szJ+/TT0v?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 24956ea7-ca38-4dc0-88ed-08de370f205f
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Dec 2025 10:38:44.4416 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: X5gGpATjh1TeCjUq2CgR4vUOd2UpFZ3MzEqA25H8JSFMtP+pnsCPZr9aYB/rTg4QJIprGbx9IRagsNN9u++0zw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV8PR11MB8769
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

On Tue, Dec 09, 2025 at 10:47:35AM +0200, Jouni Hogander wrote:
> On Thu, 2025-11-27 at 19:50 +0200, Imre Deak wrote:
> > Move the initialization of the DSI DSC streams-per-pipe value to
> > fill_dsc() next to where the corresponding (per-line) slice_count
> > value
> > is initialized. This allows converting the initialization to use the
> > detailed slice configuration state in follow-up changes.
> > 
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/icl_dsi.c    | 6 ------
> >  drivers/gpu/drm/i915/display/intel_bios.c | 5 +++++
> >  2 files changed, 5 insertions(+), 6 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c
> > b/drivers/gpu/drm/i915/display/icl_dsi.c
> > index 90076839e7152..9aba3d813daae 100644
> > --- a/drivers/gpu/drm/i915/display/icl_dsi.c
> > +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
> > @@ -1624,12 +1624,6 @@ static int gen11_dsi_dsc_compute_config(struct
> > intel_encoder *encoder,
> >  	if (crtc_state->pipe_bpp < 8 * 3)
> >  		return -EINVAL;
> >  
> > -	/* FIXME: split only when necessary */
> > -	if (crtc_state->dsc.slice_count > 1)
> > -		crtc_state->dsc.slice_config.streams_per_pipe = 2;
> > -	else
> > -		crtc_state->dsc.slice_config.streams_per_pipe = 1;
> > -
> >  	/* FIXME: initialize from VBT */
> >  	vdsc_cfg->rc_model_size = DSC_RC_MODEL_SIZE_CONST;
> >  
> > diff --git a/drivers/gpu/drm/i915/display/intel_bios.c
> > b/drivers/gpu/drm/i915/display/intel_bios.c
> > index a639c5eb32459..e69fac4f5bdfe 100644
> > --- a/drivers/gpu/drm/i915/display/intel_bios.c
> > +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> > @@ -3516,10 +3516,14 @@ static void fill_dsc(struct intel_crtc_state *crtc_state,
> >  	 * throughput etc. into account.
> >  	 *
> >  	 * Also, per spec DSI supports 1, 2, 3 or 4 horizontal slices.
> > +	 *
> > +	 * FIXME: split only when necessary
> >  	 */
> >  	if (dsc->slices_per_line & BIT(2)) {
> > +		crtc_state->dsc.slice_config.streams_per_pipe = 2;
> >  		crtc_state->dsc.slice_count = 4;
> >  	} else if (dsc->slices_per_line & BIT(1)) {
> > +		crtc_state->dsc.slice_config.streams_per_pipe = 2;
> 
> fill_dsc is called by intel_bios_get_dsc_params. Is streams_per_pipe
> really bios parameter? I see slices_per_line is in VBT.
> Streams_per_pipe and existing slice_count are decided based on that.

The slices_per_line computed in fill_dsc() at the moment
(crtc_state->dsc.slice_count) is not exactly what is in VBT. VBT
indicates what slices_per_line counts the sink supports, not what the
selected slices_per_line count should be (which would be a single
integer parameter in VBT, not a mask).

> Is that right place to make that decisions or should we leave that
> decision to caller of intel_bios_get_dsc_params?

I think the computation of the slices_per_line value (for which the
sink's slice_per_line capability mask is only one criteria) should be at
the same spot where the closely related pipes_per_line, streams_per_pipe
and slices_per_stream are computed as well. In fact at the end of the
patchset only these latter 3 params are computed and the slices_per_line
value is derived from these using a helper function.

I agree with you that fill_dsc() should not do the actual state
computation (like it does atm selecting slices_per_line aka
dsc.slice_count), rather this should be done by the DSI encoder state
computation in gen11_dsi_dsc_compute_config(), fill_dsc() only returning
a mask of the slices_per_line counts supported by the sink. Would you be
ok to do this as a follow-up?

> BR,
> 
> Jouni Högander
> 
> >  		crtc_state->dsc.slice_count = 2;
> >  	} else {
> >  		/* FIXME */
> > @@ -3527,6 +3531,7 @@ static void fill_dsc(struct intel_crtc_state *crtc_state,
> >  			drm_dbg_kms(display->drm,
> >  				    "VBT: Unsupported DSC slice count for DSI\n");
> >  
> > +		crtc_state->dsc.slice_config.streams_per_pipe = 1;
> >  		crtc_state->dsc.slice_count = 1;
> >  	}
> >  
