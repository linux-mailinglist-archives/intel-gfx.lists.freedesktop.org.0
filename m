Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 123999632E2
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Aug 2024 22:50:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC96510E5DC;
	Wed, 28 Aug 2024 20:50:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Mr4eA+Z+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AACCB10E5DC;
 Wed, 28 Aug 2024 20:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724878254; x=1756414254;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=dtFIfajzXkezJpR3KiXt0u963ZJFGmbdL68k2JrpA0U=;
 b=Mr4eA+Z+Ou2hK07iwQyuT71XTzlnq1OdPNXCtl4RsRbnmJJwP6UdEfn5
 4xV9tTIjAWq64sgem6kwGcc5XX+4D3R7aoBLcRMwOLtfieLBLqgsQ/wCe
 5yae+97pIqFhKQFKC2WfqABTcuTIV1Ve5b2DAYTiEv+xc8a7Xv0ih0XIh
 dvbYp7z2ruZZY5JkLfVbI96c29Yv+rrdggSFA4c/JfHYgTBrPE52UPhnM
 KjJm35i4ZZ2zYwilAuEtPc7K2KexwUGLuHnDvOcJaFnOTU6Z5AlobHJJn
 LYz7hS2kxXYK1NAuqjN4UNSakbHK0KzpA2x8ldwyzrLWq+oSvubiv3YpJ A==;
X-CSE-ConnectionGUID: BoM6KkTeR9KmXdvdseMUYw==
X-CSE-MsgGUID: 5oVBfYE2Qo+AUxHy76C+iw==
X-IronPort-AV: E=McAfee;i="6700,10204,11178"; a="34094460"
X-IronPort-AV: E=Sophos;i="6.10,183,1719903600"; d="scan'208";a="34094460"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2024 13:50:54 -0700
X-CSE-ConnectionGUID: 1z8HjYAeQsKKi/g+5xXyCg==
X-CSE-MsgGUID: MmWSfdx7SHa8gdWkOdyvJg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,183,1719903600"; d="scan'208";a="63299871"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 28 Aug 2024 13:50:53 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 28 Aug 2024 13:50:52 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 28 Aug 2024 13:50:52 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 28 Aug 2024 13:50:52 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.48) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 28 Aug 2024 13:50:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=vgEnHTPlv8vLL37/7k33qGlzsF6BsNcHrbfk1FQx8N7sOE0g1Aq7PqHrsQPaBQVytx+bcDVGVxnpKzhNNuqPeOBxzichW76wOj/SEC9KRdqjUjbJTHIwf6iJtlaF3VrP7dhBepqRwgYNTHi4kAnH8IvNJgHwsa4L+o7JxlVnSoWni5YHvGskWmzfPQU43lqlizPGC4uAHf/FFSnGngs6iIetVzzMw6QEhWis40GKPRDC3JzDQqBcSNWVSi/xOx9Faq9E0QZMMureezRop8z3iW7ZFABhThuXHUj+TQVcjh/naRjsJR8gLKWO9u1Fe3/1tD6S1G6lW3Zelkw7sYXj9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+zoNUFLr0PsZEHsIjQJjkYTYfEO7GM53zJQFiTx/+J0=;
 b=RDM80h/n90oh4hdikogNGxGiniQNSbzlv5qxkNLxVaqsbIwyfrgK+T7vqtYXvOYV3xeLK/ZhiZAdIW5VlXr72L6vaN9UwHKj/lYg74R3dL9P/jGiXcuheErei2Yn/npYZpUGVLvw3DwyYUk6w4IVKvt0L3E8zwZYwvHWJr+WYDWl/COM624X/YBBGhm1x18m9WH2EMffxsNJuEnkcPH/0hp7uLp1B8RHU2M/Z2RxS/PQarRKZoQPNuB6S6kf9dlEPjyrG/6jsRJ0e8o7GFaUWzAZmYq3ux33WwwnCakhf4ZLnj4IoKlVc5emprse0gGbyUKA2Sl/lFuIXhgqZ0KCOw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by PH7PR11MB6676.namprd11.prod.outlook.com (2603:10b6:510:1ae::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7897.23; Wed, 28 Aug
 2024 20:50:47 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7897.014; Wed, 28 Aug 2024
 20:50:47 +0000
Date: Wed, 28 Aug 2024 16:50:43 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <lucas.demarchi@intel.com>, <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH v2 7/9] drm/i915/display: consider HSW/BDW ULX to also be
 ULT
Message-ID: <Zs-No2x_3vumEXGk@intel.com>
References: <cover.1724092799.git.jani.nikula@intel.com>
 <6d09d1d5b1868798c879b93f079742b472ef4f1e.1724092799.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <6d09d1d5b1868798c879b93f079742b472ef4f1e.1724092799.git.jani.nikula@intel.com>
X-ClientProxiedBy: MW3PR05CA0010.namprd05.prod.outlook.com
 (2603:10b6:303:2b::15) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|PH7PR11MB6676:EE_
X-MS-Office365-Filtering-Correlation-Id: 3c0eeded-a5b7-40a7-b733-08dcc7a31796
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?9TgcNBc9fNox3kYAVCP919MnDHsKeMUxwtcEFcd8r9kg5hPHabS7OxC3pCEh?=
 =?us-ascii?Q?pqnal/xpibOTCwyEcDk4uz0TBq0BnXVkhvJ722L79k3QoTAx9QXNJYlHRpvt?=
 =?us-ascii?Q?PJql7xXPFeWaFOSer5JMQ/I53R5y0C0wbxIukkZNAzUbF2Z+jXBk/ONqrxjb?=
 =?us-ascii?Q?UamhhRgCnVPAItAIvuMv+Ij5aeSnA77Uj8zWCk9KfHgDdHojz21Dy3F1Ehe8?=
 =?us-ascii?Q?DreOM0FtNRKOc2Yn/eI+i7sjtTLHju3H14IlnmT+gTD4PyEVS6IIeCYUbyM0?=
 =?us-ascii?Q?3uVKHFS+pqVFMaPGoDRoCp5oZjW4tOIVQ3UXe+5v0LKp6B3u+m1EwpSYANbx?=
 =?us-ascii?Q?oPsfQihck2/pKzmo4R/GqdXXsqVFvFgnyGcRzYMjuaMofbTgSEnGPvSR/tOR?=
 =?us-ascii?Q?VUo2WDKYTqEx+jH7HVSNuUiv76SxBLFO9pN8nne4k5lYABmK/OpFXSE8uWcI?=
 =?us-ascii?Q?jeaVgDZ+rXjsYBhsiOy5kKc2ueyFD0iPsWeZZCRr2NV+36z+5eJOVwKgUnBL?=
 =?us-ascii?Q?iVtF9Cg1oTEGVRtUULzTMMl6Wzl5AEhdiGfGUYK43TcAEl1n+WUVdVx38r2c?=
 =?us-ascii?Q?H7wWyqzjiUFnr4MvAknS9RdkN9lIyr3DLSCNWZmSupZRYz/roS6oRIhMlGxL?=
 =?us-ascii?Q?vDQxrNYVkzbviW8CV5owPXB98I8plDP4iHRzwkf0NcRPa0hLyPeF1+Az3pjQ?=
 =?us-ascii?Q?fP+8fvf89yE/g5krxTThm2DyEZ9ii4OjWP/eV6D3dX2fLSqP3/FXXk4Z6paY?=
 =?us-ascii?Q?PHgv9KzyF698bDnKJZix0dLJ3wBBqc8/MWyAt2zwuXN/6I3qh4scLOiICq3i?=
 =?us-ascii?Q?cqv8uuB0crCUJgdPvFzNeuIOdezrs9I2oFOtzPzycEVyHhHIjaid66xa/pWu?=
 =?us-ascii?Q?NWttOy/FlTnhiVNV8aScTa31OZmLkSkTu4rlhpbPfboB+gaqQHJG/dD1r2Rw?=
 =?us-ascii?Q?FVZHpNH7EJaGiLj9duVGiTuZ874Flydde993hXydy9tx375BiDa1aVtMZ+z+?=
 =?us-ascii?Q?AU6+pBhq7FQIL4fPvKBj+KzBs2dXbqdg36ZEXfGrZF2y0TPkXNWgP1phsJlI?=
 =?us-ascii?Q?duUGeaWqkDFarLjZKr26FrAu7jlcbNGbCqpNkT1upp8LotxwPM0tnnNEpnOJ?=
 =?us-ascii?Q?hu7CArA8Mv8rCl4G+e5CH5D4OPsZguIrkOJvuZTp3G+Nd78DMFlfV7d5o/Zl?=
 =?us-ascii?Q?ZTf0iwyfNEeVEtrJF7vkZsdNY6k43KBRD+hMS2ISziGMluKne/L2i9eNZSSQ?=
 =?us-ascii?Q?OYqUtL2AZm1qA1iVS85nws/z6N2D7Zk2HSSa9u8QYdP2H3qNWGYEtj1GbSyQ?=
 =?us-ascii?Q?JR/OCso4CHC5EmH1R60xvJvvs1TSjMbZl7/7Dklkk8AM6w=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?DILUEoqrpBPisxvtssSzD//1nETuZ5xKeOKWf4mYgjwm6JbVuGTCIVzuJg/W?=
 =?us-ascii?Q?mU1GYYYQCgUsoCZM7cHasUfhjmiMnwJOJ+BXpOyWUGk+AAQNw0IhNMQ0Vd1L?=
 =?us-ascii?Q?q+sPACpkGONJTz1YUtYBUQHBkVjmdBNfFgq6lapEcW4HS+UoGF+6d4IuyU9P?=
 =?us-ascii?Q?n/GHBX5hLPZaRRYupCWNr3t+TfeoULqed0sCE1SuREy6v8U7Jv+6EiV1lN+A?=
 =?us-ascii?Q?il8cr3fIlbslt45hDjgf4z8brczu8zhI2kuUDjXbQqkWqa92kT148zhpEExe?=
 =?us-ascii?Q?ps0GXoKmYHy6NuubaFZRjwwF0Ql5KL1aGla7kfNyfQG/6l8OM9Oso19SH1P1?=
 =?us-ascii?Q?t49Zk4/hDDm/LD+8taULdsArzPeG+A34DHurw5GFehuVJtqh7tQ4VgEUCp5M?=
 =?us-ascii?Q?qRVM5MJW4soiX+B5tWIKz6LxqSz4c/ZWUGJ7SvBVDmH0+F8cO6n/gG/3DoXu?=
 =?us-ascii?Q?NKv+hFzFn3XhsPmn5E2xuBe1IsFYVT429yCZT2r/lbzR05+uelC7i1GHpJW2?=
 =?us-ascii?Q?/RyryQ+0X9g1baNaYczEs5IyRnS3nIu+LLQPvdAuBpWXslHnnyY2Zdir/3K5?=
 =?us-ascii?Q?F6xDiypl7EHW/63YdNxCcz8VU4H3W28NtMC/ZYY0HTJBNbZ07tgAkr1QQE/w?=
 =?us-ascii?Q?ymmdPOPeQvN4LqFNouWb8UVEBsgPO5JHMjmXtKUOG2KCiloS1D+Uixvky2Qo?=
 =?us-ascii?Q?XqhxBHKZF2ho85A6M/Usljkramzy2Jxcj788zEeCLW+Q031DCR4jF+XAQXoy?=
 =?us-ascii?Q?tJhByNe4YhuZYIInyv/FvCJzP6zGSKZpov9JY8Kc19C1SGGyBavEDucNmMm0?=
 =?us-ascii?Q?F6evCXbk8YCyNAFrXs2zLGonRK4TAV4q+4fYXEGsCF1VHDEwOFIjuyyppgei?=
 =?us-ascii?Q?da9Ub/pff2Tl6dLLNKFfprqof7TP09H8nmDrO1K06TE+LZZ5k9JrtNICrHxs?=
 =?us-ascii?Q?dderB4J6FhdMmRsZad8h87TkOtQ67I7tr71dikrT6FFevtzvheqqN5ykJFWt?=
 =?us-ascii?Q?ojbUrYRVBJq7LuT6o6PXI+sk9ow3j97EfsdWk1kg7HL2KgH7fEezlmBmBInX?=
 =?us-ascii?Q?o9eLCpJmxbFWHNVhYGpxRs13M4L9YmiLE1zihmxfrwdESOFd97oltigx6ndg?=
 =?us-ascii?Q?i4pCLmkcisXt1+VSAMPZukq1q5ppKMeV08YeApOrDmEUGxakSi7gJ8r2I2Bk?=
 =?us-ascii?Q?Wqcx6309B5T1vVY/vHeQ9MHV0WsFKQI2wA6BoxJr8KqGjyWYtoqZOX5BM3Xf?=
 =?us-ascii?Q?tNs9F93u6iwDqXq7zjfWxJFgb4hf274Z17DFYmlM9yjAn2oCK63QbM0QsKg/?=
 =?us-ascii?Q?IkzwZbcmdf9vKudBPPK78JQ2N08SqhA0QIpFsTQcTAWKez0YnpFcgzCjSoF3?=
 =?us-ascii?Q?Uk2V4WlK91J+SlYQJb13OiVjYd53MnlpBB0YGGY5o2rIJz6rM02BrgoWAMkJ?=
 =?us-ascii?Q?ex1ssi4WezR4yEZqmEDBrL269ZMVHm6vMcgaHD4Ozq0CB1psR49WZ3Dg0K4F?=
 =?us-ascii?Q?p7tBs4gktV8VKG316wgDd3V8TIJSIFCXjgKyRfAZrROM0PGNvjz63gkA/dju?=
 =?us-ascii?Q?D1Ouuf98BsyWriBu9JJv+VyRkzSYrKm1GKnfSFrEHgooYVWrwcdmlWPQj6sO?=
 =?us-ascii?Q?8w=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3c0eeded-a5b7-40a7-b733-08dcc7a31796
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Aug 2024 20:50:47.0642 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: zaStzMeL3AbiaOxt+VGAZKZndae58sRlcwWXRueqcdfnI7BY3nQPhMYuHTcD9ETMd17Uu6ebAFELoQBjAbU+Dg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6676
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

On Mon, Aug 19, 2024 at 09:44:34PM +0300, Jani Nikula wrote:
> Follow i915 core and IS_HASWELL_ULT()/IS_BROADWELL_ULT() conventions,
> i.e. "is ULT" also matches ULX platforms.
> 
> Using multiple SUBPLATFORM() macros, we initialize both ULT and ULX
> subplatforms, and take the subplatform name from the last (so be careful
> to keep ULX last).
> 
> This is *not* an example to be copied.
> 
> Note: Pedantically, this should have been done earlier, but it's only
> feasible now that we no longer have a subplatform enum and can actually
> initialize multiple subplatforms.

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_device.c | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
> index 90609b561630..fd145f87d86b 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.c
> @@ -490,7 +490,8 @@ static const struct platform_desc hsw_desc = {
>  	PLATFORM(HASWELL),
>  	.subplatforms = (const struct subplatform_desc[]) {
>  		{ SUBPLATFORM(HASWELL, ULT), .pciidlist = hsw_ult_ids },
> -		{ SUBPLATFORM(HASWELL, ULX), .pciidlist = hsw_ulx_ids },
> +		/* Special case: ULX is also ULT. Do not copy this approach. */
> +		{ SUBPLATFORM(HASWELL, ULT), SUBPLATFORM(HASWELL, ULX), .pciidlist = hsw_ulx_ids },
>  		{},
>  	},
>  	.info = &(const struct intel_display_device_info) {
> @@ -534,7 +535,8 @@ static const struct platform_desc bdw_desc = {
>  	PLATFORM(BROADWELL),
>  	.subplatforms = (const struct subplatform_desc[]) {
>  		{ SUBPLATFORM(BROADWELL, ULT), .pciidlist = bdw_ult_ids },
> -		{ SUBPLATFORM(BROADWELL, ULX), .pciidlist = bdw_ulx_ids },
> +		/* Special case: ULX is also ULT. Do not copy this approach. */
> +		{ SUBPLATFORM(BROADWELL, ULT), SUBPLATFORM(BROADWELL, ULX), .pciidlist = bdw_ulx_ids },
>  		{},
>  	},
>  	.info = &(const struct intel_display_device_info) {
> -- 
> 2.39.2
> 
