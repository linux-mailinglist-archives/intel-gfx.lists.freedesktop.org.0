Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E86DA9BBCD3
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Nov 2024 19:04:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 84A1410E4A7;
	Mon,  4 Nov 2024 18:04:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FEL9wdgh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 43A4610E4A7;
 Mon,  4 Nov 2024 18:04:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730743488; x=1762279488;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=J5BUNXs49zLd/TeXpsuBhJLie3+cxY10eBra7Ve7Js4=;
 b=FEL9wdghi9u4zQlsVn3a3RT/38KbT08EW6JPXRaRlxCdc/LxQdgmWsPI
 qwQYD19nzET6YKOJaSYCKEJP3Zg4kp2+lfnarRAk6Z7h98Pwkm1UoRAp/
 Rc4GgigoddXfyZO+y3EzGZFWImZx5fDdwuK/gjo8cOn+o9AdebvRTGg7o
 PRevnJpdkg29g6nbmGJj9PC+7KrUe/IYq804o2Yf6McGHLJjguOqaGva6
 oCImL+u+L2rXCQUUjSKJW9X4zc3JVrIWBveASa9hVTYQsUtIHcj3ZRxk/
 GcwSC4iYFCTkdgH6t+rKHdpKN6Ky0aU14BFiwwTv0YI+b2Z7YLc+26QDQ w==;
X-CSE-ConnectionGUID: NsPUzlwHQdSFDpEvgZI4eA==
X-CSE-MsgGUID: 1LG18rxbQNiLdV7xun9JXg==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="30236930"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="30236930"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2024 10:04:47 -0800
X-CSE-ConnectionGUID: rMVqWAAkQ9uoZHkUvrO43Q==
X-CSE-MsgGUID: Pp6HA3UwRpidsmvk7Ch0IA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,257,1725346800"; d="scan'208";a="88246971"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Nov 2024 10:04:46 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 4 Nov 2024 10:04:46 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 4 Nov 2024 10:04:46 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.170)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 4 Nov 2024 10:04:46 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=lf7RbU4R/6GJUmnPt4DKX3afvw8dhxLrjxtakF1YiILe1lI6OGLEjYz40jccFTGu+Ovd1WN/hybyMmN7gRC9s36Gy22BOP+rFOSktfVnWR7hWREZvO8MnLPB4oCc8U03Htkk97MgEiVtSuWJugYtcXrcEVZmtzobnNjd+aejM/JLl2Rppl0LmO/Jm5ZUI3c9MHtm25j1rFfufww4ZQQzKDGtXQoi+xuDnaWR2yx+jPlZu0MTKjnqJOu5KQuq3EFNuSB6KhAJl9nJS15gEz7fXdkP+xUQN0YhlP7Op+xbI8ASoGNf2xNWZkvrh+LjNvRPzBccXYOlCGPDQc4eNCFWGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ekJycibruNtij+cCO41ILxz3WPFHmdYvuq9OE83w0Go=;
 b=sESVQbh6qiwDR8oa78t0l2mmn9Hi+zb0NacCbfOFJaHjUF/2Gz9ZU2QrtZleVxJgTHShH4Gllz6ySzt/dwENSiWjp2KBqLKYKQYm0lj3w+8L21yVdCCb++6FEUUzU1EDjBTTSgBtdyyJ5QlPzp7vnvYZKuEzHNMilWmtoKwgKVtoDl1VSuaDS2udQ/xyrMx/ozR+P+C5h0WGqVxRtLIB2vifkfZvC4kmPnEnK1OxBO+iT6o6NS8DD0VBeMEkOTuW8lpIrujtThkNZ7zzlFo9kcQWHp+cGHPvduntvCIWSWxhyjmL7lLU6p5uaLbiyjzfyr20aum4eRCIluIWQ+2POA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by BY1PR11MB8007.namprd11.prod.outlook.com (2603:10b6:a03:525::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8114.31; Mon, 4 Nov
 2024 18:04:40 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e%7]) with mapi id 15.20.8114.028; Mon, 4 Nov 2024
 18:04:39 +0000
Date: Mon, 4 Nov 2024 10:04:37 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>
CC: <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 1/2] drm/i915/xe3lpd: Disable HDCP Line Rekeying for Xe3
Message-ID: <20241104180437.GJ4891@mdroper-desk1.amr.corp.intel.com>
References: <20241104083143.631760-1-suraj.kandpal@intel.com>
 <20241104175439.GB5725@mdroper-desk1.amr.corp.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20241104175439.GB5725@mdroper-desk1.amr.corp.intel.com>
X-ClientProxiedBy: SJ0PR03CA0052.namprd03.prod.outlook.com
 (2603:10b6:a03:33e::27) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|BY1PR11MB8007:EE_
X-MS-Office365-Filtering-Correlation-Id: 944cc4f9-0b19-4c77-ece4-08dcfcfb26c4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?0ewvBfCHYI9WK5Jwl6Z9kbptu/QvJWnM+tE+P5FKUYbhsKuqhekWMxjIDdlm?=
 =?us-ascii?Q?s3ook0xyITnzwo7WLMo5zhrKpCeOPcO8ralLFzt24UGsCt2egxw5FfXPH166?=
 =?us-ascii?Q?StKtgML3pg3xyzT/rQVhp3XOX1qZNn+KRg8FYCB2BVfHN8UTJ024RbeTzyCU?=
 =?us-ascii?Q?gDQYR2A89RzD1Zl8EVxIqxr3E7gF1o9CbvU2DkVF5VWosM88WqPxAaXwiXh7?=
 =?us-ascii?Q?IgBS4lBqamogxXQFW3tvOgOtcabP1h3LuqV2ku6an5wYi2+kJlysaJ2iwRU3?=
 =?us-ascii?Q?UcUpR2jKQi8t8ZNcOLUvxrF8P72rFQ8JVDg14N6qgRWc5GBq1eBYFUvzjvPm?=
 =?us-ascii?Q?GPWA3Lx4grQd6CMMv/MLXLsaChmckGOUf21W3+x3Q8AFcrZio0dXRqIJiHGM?=
 =?us-ascii?Q?HC1wxOg7KYtKevoK8aDUHYe0bBVwdiM+kejHBomIx3GNiCfi/7EusqgeXy3p?=
 =?us-ascii?Q?/u5sJDZrNx8XZYkk1oMu5psb7/P9aFEYuJxeCDIbO1RK/QH9X943gTyLOfa0?=
 =?us-ascii?Q?mVS6MLQ1cg8UXzrRgwMZm3hkQwvs8LO6UVX6pam066NMT0WkAPZnhSO8jQjI?=
 =?us-ascii?Q?1cdTaYKOwcSuJLt21yhF3A6ViOgvXckEO6r34WDuNEs5JnbI/qnqTHaxSQ+o?=
 =?us-ascii?Q?yRgf3AxsQ7Twe1MqjQQtU9OA1iNsGZ1nwB1hHa1BK1ewoNmAcgfKiPOQ7+/6?=
 =?us-ascii?Q?vDGymwjE9Z2NOQgx0IucXuywZu1Z+f7tixgX31rG02RuSU0E7uVp3kcfq+9p?=
 =?us-ascii?Q?Ch5VjTHXV9T1b4/SQN3RDlZJbCjkZMipogWk+/I0vGZV3RGqyte8YZmidi3I?=
 =?us-ascii?Q?JGV4y/gUdriTdobhqMe3UecI2u0itnDcL3/ZQB2suqZp/FKSmYREJ4vd/Egf?=
 =?us-ascii?Q?q/29GhD9DU7g/tnS0js6MyY1vNj0P2HwbozDePeLPs8QeyUGmfusycWAWhkY?=
 =?us-ascii?Q?wxZn5wFKujGNUKqfXa6YZ75bs9CLEKqFCgWVaWYrK+wRIeyW7GHjPHr+3G4o?=
 =?us-ascii?Q?OBGl2pK/dpkG8kwvY61LmG8Q6AOWgqfG+L4nCOzsZZ3p7uPGO9oOjEWMyHFD?=
 =?us-ascii?Q?fwiR23ur2o8LFiP2m2/s8yVan198k9KqiRh9sZk08TGA8iePLYHTXqZhfj3E?=
 =?us-ascii?Q?ibdLFO3dZlQv6OdrUobax6bDhDTZKqfjS3+Md1k8glFf3v225V8S7orSW8MC?=
 =?us-ascii?Q?XB5Sk3nk9sviER0TFy8f0XohJhLKhCsEA24s90lDEBQ0u+QelNHavCryiYjF?=
 =?us-ascii?Q?f/b+f+gX+rM79mmVGx8q10rGSDZoy/7lbx1QSqnLv3Cyy3yu/gw34lyPXYLN?=
 =?us-ascii?Q?4RIXzNftRB8tIXF/kpU3drQD?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?cSFhBERFq6X4n5wnChWxvvpw3R7jVxVQbg57B8Io1xG3QmoVuJuXPw2CxS9h?=
 =?us-ascii?Q?a9/XQTqCJNj8p9CTRJG4pRmsbCfWAegzVTzLGXwRPWPIncaS1KE+ECQ9kZQh?=
 =?us-ascii?Q?mMAXHqm+vYtjx1K5ZE/NCb9d+qZf2S9IywUSXaXbr70gi6VrnUvTViG/uFb2?=
 =?us-ascii?Q?umlfZ4jQPHMzgb7CA+6NVpENB+n9FEkpxyGEh3nTFoinDrJ/Icru5Wsofghi?=
 =?us-ascii?Q?WHwM8PZhnbNneBrxkRmw17Fgvjxa1DOqVMld060IlLEg7amqd14xbOvIDceW?=
 =?us-ascii?Q?Tdy3U4tXamDdHt/GMEjRC2VNrWD3IhgwwXf1QV+G3C3zzyNZnNEga8WvODGf?=
 =?us-ascii?Q?XXeVlCE8aJ9rm3XNY+5VaI0WZCm7hOmHPLAtEvi3sJ0xICQnDCAKqMdn9zwm?=
 =?us-ascii?Q?JDuzDEqXgLtYCGr2/fhcpcg3Z3qTTs2ScyK6kKDtUDN7ITxsqpXhG6ffewej?=
 =?us-ascii?Q?wfKe1OZmo/n8GRLXhOqwwO5ZoYfMgqnZUFdmUGFySLWna7cSBG5aOdg+UaE1?=
 =?us-ascii?Q?b+nHPbzL8xJPgL33fAcTCOO4K47bveAQsbk5lR6q3NrRRxIaU1/K4XTpbcUO?=
 =?us-ascii?Q?SfG1ePzci5/FLd/7rnhTjTo532q4eLFQNznyVklh7W1HxhpEaOIShhECrDk+?=
 =?us-ascii?Q?92BlVCRagmGpgSThNVR4nqQCNFicMCNL8hQAu60dvw6K8RXTzYbesFXjK5Pe?=
 =?us-ascii?Q?9WE2FfNkRw5nshcNfiPP+YCPBzoxBGGe4L8HK4FXRKyEQUzDIDf5iSmTsOub?=
 =?us-ascii?Q?te0Z/kYbo1AwDSBRtCfjJ2QpQ+3J7wGAOrkTpe6DesamwSy537RueaY6LG3d?=
 =?us-ascii?Q?bw3OOD8XWivm5Y/V0EJh9jvQDJVS039xZJH94l1oMg1IdugljNKU5RQ7myhQ?=
 =?us-ascii?Q?U49n1B8vObzPXjtyKuZ7GuD3iCFL/G/St8rnzfwFzI2lRwIVZ4OkurKLPYPr?=
 =?us-ascii?Q?bqGT4NGu4yTJuByiGN5CeTYkJ40q+y48wtCjPRlY6Gxk3IomuBjbQkYFaodY?=
 =?us-ascii?Q?GuujGeM60M+c1iKGqJE+GkoqBI+FZ1e/ie9MQjUsGB5ejBbSNBsrTVYyXqu0?=
 =?us-ascii?Q?0RIb1bzevZHhNEsmPIJ4q2b3tDBeMVAvOslOu8rpP4h8z80PzcSByrMNq33J?=
 =?us-ascii?Q?r4GUp7gPvN908qphRT7Fzl63SLv5PdUmckN5ajMhqCY/MSIUXPEHNE3jfXe4?=
 =?us-ascii?Q?3UXCAuhnRkwu5IABUXD0+HyypuHSEElQLDIIfL8bZ4aPT0YMUOKgGP6Pzhu/?=
 =?us-ascii?Q?W5wTbKRL9++zKn/e4dt5f7bn36CcBClMyc/sNwGX0lzZwetRwEdhfcL8gbmW?=
 =?us-ascii?Q?eIDF13pW3BJdafdbytKOGjnVVX1n/2epSJgNRQRwBNt5hg+NRMb5ERDWJL+W?=
 =?us-ascii?Q?u1PM/3OTJF3RdB5VdX9FBel2sQrPfc+dwc7BGdkqgAp9DrkvTT4x2mOFShlU?=
 =?us-ascii?Q?JYgtZRYaaf/Rg4rjI8Z789m/4rbIeF0bZxQ711YhBjhs7ECQh9bpzkFdrk4Q?=
 =?us-ascii?Q?JiLXUM5wQxFe+zjt5xm0zrQUK3a9FO8gf4MPN3Hbu6cHgJqTqjFzzxxbFF/0?=
 =?us-ascii?Q?el5oMOfVn/puZwmd/q4Trc6V4AfCuQPBVhd6UF5xFWKv661jE+c3s6cM2JyK?=
 =?us-ascii?Q?YQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 944cc4f9-0b19-4c77-ece4-08dcfcfb26c4
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Nov 2024 18:04:39.8821 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: eER67Xog9yDgZeVJieiFT0rdpGmfvXgMBp1du3Ns+hOHFGG9dX8y1+Wp/R7nWwTGKNm3AsklOnoxCovKFotso3DTijvuHKzuWnDnSmj2PSI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY1PR11MB8007
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

On Mon, Nov 04, 2024 at 09:54:39AM -0800, Matt Roper wrote:
> On Mon, Nov 04, 2024 at 02:01:42PM +0530, Suraj Kandpal wrote:
> > We need to disable HDCP Line Rekeying for Xe3 when we are using an HDMI
> > encoder. Also remove the Wa comment tag as this follows the bspec and
> > does not implement the wa.
> > 
> > v2: add additional definition instead of function, commit message typo
> > fix and update.
> > v3: restore lost conditional from v2.
> > v4: subject line and subject message updated, fix the if ladder order,
> > fix the bit definition order.
> > v5: Add the bspec link and remove the Wa comment tag
> > v6: Rebase over new changes
> > 
> > Bspec: 69964
> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> 
> I think the code changes are fine now (although you seem to have dropped
> the general ladder re-order that was done in v4; was that intentional or
> a mistake?), but the subject/commit message seem misleading since the
> change this patch is making isn't changing if/when rekeying is disabled,
> all it's doing is changing the bit used.  So a commit message more along
> the lines of
> 
>         drm/i915/xe3lpd: Update HDCP rekying bit
> 
>         The TRANS_DDI_FUNC_CTL bit used to enable/disable HDCP rekeying
>         has moved from bit 12 (Xe2) to bit 15 (Xe3); update the RMW
>         toggle accordingly.
> 
>         Also drop the misleading workaround comment tag on this function
>         since disabling of HDCP rekeying is something that happens on
>         all platforms, not just those impacted by that workaround.
> 
> If you decide to reinstate the ladder re-order that you had on an
> earlier version of this patch, you could add another sentence like
> 
>         While we're here, also re-order the if/else ladder to use
>         standard "newest platform first" order.
> 
> Anyway, with some kind of commit message cleanup,
> 
>         Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
> 
> 
> Matt
> 
> > ---
> >  drivers/gpu/drm/i915/display/intel_hdcp.c | 7 +++++--
> >  drivers/gpu/drm/i915/i915_reg.h           | 1 +
> >  2 files changed, 6 insertions(+), 2 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
> > index f6d42ec6949e..8bca532d1176 100644
> > --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> > @@ -31,7 +31,6 @@
> >  #define KEY_LOAD_TRIES	5
> >  #define HDCP2_LC_RETRY_CNT			3
> >  
> > -/* WA: 16022217614 */
> >  static void
> >  intel_hdcp_disable_hdcp_line_rekeying(struct intel_encoder *encoder,
> >  				      struct intel_hdcp *hdcp)
> > @@ -43,7 +42,11 @@ intel_hdcp_disable_hdcp_line_rekeying(struct intel_encoder *encoder,
> >  		return;
> >  
> >  	if (DISPLAY_VER(display) >= 14) {

Actually one other thing...do we even need this outer 'if?'  All of the
nested conditions work on specific versions that are >= 14 already, so
it doesn't appear that this has any effect.


Matt

> > -		if (IS_DISPLAY_VERx100_STEP(display, 1400, STEP_D0, STEP_FOREVER))
> > +		if (DISPLAY_VER(display) >= 30)
> > +			intel_de_rmw(display,
> > +				     TRANS_DDI_FUNC_CTL(display, hdcp->cpu_transcoder),
> > +				     0, XE3_TRANS_DDI_HDCP_LINE_REKEY_DISABLE);
> > +		else if (IS_DISPLAY_VERx100_STEP(display, 1400, STEP_D0, STEP_FOREVER))
> >  			intel_de_rmw(display, MTL_CHICKEN_TRANS(hdcp->cpu_transcoder),
> >  				     0, HDCP_LINE_REKEY_DISABLE);
> >  		else if (IS_DISPLAY_VERx100_STEP(display, 1401, STEP_B0, STEP_FOREVER) ||
> > diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> > index 22be4a731d27..c160e087972a 100644
> > --- a/drivers/gpu/drm/i915/i915_reg.h
> > +++ b/drivers/gpu/drm/i915/i915_reg.h
> > @@ -3819,6 +3819,7 @@ enum skl_power_gate {
> >  #define  TRANS_DDI_PVSYNC		(1 << 17)
> >  #define  TRANS_DDI_PHSYNC		(1 << 16)
> >  #define  TRANS_DDI_PORT_SYNC_ENABLE	REG_BIT(15)
> > +#define  XE3_TRANS_DDI_HDCP_LINE_REKEY_DISABLE	REG_BIT(15)
> >  #define  TRANS_DDI_EDP_INPUT_MASK	(7 << 12)
> >  #define  TRANS_DDI_EDP_INPUT_A_ON	(0 << 12)
> >  #define  TRANS_DDI_EDP_INPUT_A_ONOFF	(4 << 12)
> > -- 
> > 2.34.1
> > 
> 
> -- 
> Matt Roper
> Graphics Software Engineer
> Linux GPU Platform Enablement
> Intel Corporation

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
