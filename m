Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 09645861344
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Feb 2024 14:50:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5961A10EC13;
	Fri, 23 Feb 2024 13:50:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LweP0bxv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 647CC10EC13
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Feb 2024 13:50:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708696204; x=1740232204;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=KE5X78l4VKyiqgrZOW99YMGQg/7zMZdWAff+0JGdGe0=;
 b=LweP0bxvRALOk1CeYB9hOkxNZm0Z53eQKeUiqhx5k8h1UTrWq/22APAr
 7GEpT433o2UyC4gJ+9n+vW4VV4oCLWLpd7qSAzBCWA8OLFh+yiDOO/Bph
 KnxIqzCqV2E0MwzKWg8GU7NMQ56M1NufUnTOu9tE4jsSAtc58xT3x97wU
 QZOGxfRXm193iwH1poc+Og+F0twIbEqdiKkEfo7i72HWWycEAkjepahfs
 HOdEZHIGulLo9gBDHAo3MTh325+ix9gC3QsvzbcoWGYZ1aSmMTcEYPPBR
 UlGI8L0tRLNlr/2fLesBUDigipUQmNlQvjMpF0bMR2G2DSmXqCWQ2PXSp w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10992"; a="13573319"
X-IronPort-AV: E=Sophos;i="6.06,180,1705392000"; d="scan'208";a="13573319"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2024 05:50:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,180,1705392000"; d="scan'208";a="36697899"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 23 Feb 2024 05:50:04 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 23 Feb 2024 05:50:02 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 23 Feb 2024 05:50:02 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 23 Feb 2024 05:50:02 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 23 Feb 2024 05:50:02 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=negDTB8f0KNlbObimjI/m6Y0TritF4eK3Qg2D8vkU4qdO9KKLxlBZaNyWykFchi+lxXCzNa3VwLFpRMsOOThKhEBNDOv5J7JfUrschhLD7p+ukQSOKMKj4Uz+xyKg3eed50Ie4xb4Nf95tGMA3aQ2MhN6J668nIKNMnh3mJLTSQDEt9ufmiXwLVLl2qgoKZp2NBRFzwUldQYCesx32XEdTY/OnCzuwYUjFC9p28ap0b21iL4QFbbe2Oj9H1SRu+0meEbRGKZtJBX0mAc9msin/v2vfDkgLdY/u0mqoSX3SLu+/Uta+hZLQj903o2JUegFoJAQ1NcGNE/uCJQORGfeQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Pbdu7621LTKby7P6d7i6GI2CL4hWUgy0aozdfnXyOvY=;
 b=CBB5titsFbDB5IN3Y/CUXux0xvetm2F1oSQGnJfn1zmOg0jc9XpIgu+1L5etrP0PaegVq1ziKKCKS62PtSDNruR2PRAsg4mo1esAmOkkVHbbb1ZTWOss34z1m6TO8NZljEqwCO4hoiSE4QqFMhbzElRgPxS9odhAuWEc9axvjZ8ej7eWpLK6NCKDEGeqxKeX7KYMor6KdgH8MDmoOkiu+Uxbrzs1gcOnA7xEnDXdbe2VmfD7coS/HTatDy6gCZnXDAkUsd0c7lmyRmJmmyD1Cj+PXl7iQ1WojpdscHaVczZrNNvwRtq1lAWbaLBL+0jSa7L/HRhqcb2G5p9ZOQX7vg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by SJ2PR11MB7669.namprd11.prod.outlook.com (2603:10b6:a03:4c3::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7292.26; Fri, 23 Feb
 2024 13:49:59 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::a7f1:384c:5d93:1d1d]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::a7f1:384c:5d93:1d1d%4]) with mapi id 15.20.7339.009; Fri, 23 Feb 2024
 13:49:59 +0000
Date: Fri, 23 Feb 2024 08:49:54 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Cezary Rojewski <cezary.rojewski@intel.com>
CC: <broonie@kernel.org>, <alsa-devel@alsa-project.org>,
 <linux-sound@vger.kernel.org>, <tiwai@suse.com>, <perex@perex.cz>,
 <jani.nikula@linux.intel.com>, <joonas.lahtinen@linux.intel.com>,
 <tvrtko.ursulin@linux.intel.com>, <intel-gfx@lists.freedesktop.org>,
 <amadeuszx.slawinski@linux.intel.com>,
 <pierre-louis.bossart@linux.intel.com>, <hdegoede@redhat.com>
Subject: Re: [PATCH v2 1/4] ALSA: hda: Skip i915 initialization on
 CNL/LKF-based platforms
Message-ID: <ZdiigqI71CI7g652@intel.com>
References: <20240223114626.1052784-1-cezary.rojewski@intel.com>
 <20240223114626.1052784-2-cezary.rojewski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20240223114626.1052784-2-cezary.rojewski@intel.com>
X-ClientProxiedBy: SJ0PR05CA0094.namprd05.prod.outlook.com
 (2603:10b6:a03:334::9) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|SJ2PR11MB7669:EE_
X-MS-Office365-Filtering-Correlation-Id: a1c4d33a-bfdc-4237-71b6-08dc3476539a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: MllKzPQ1cY0pOdKalgOpKoKVMxA5rBSXcar8PBArJqnvT6qg3bochMt1SgmFEHJQZA7zRrWeG6PXvrMxz7oLCY0RpCjhpIt4R0PeJbwpPTWqxF60q33YJIBeOzRsIZuu536XJTJFByEkW5DsYrs0WRJVMSFsGBUKmLFs3sQghiknkDTDP/D/97X4DBntnsWiDoZv6h0cjkpWVNl4P9NbD7BqyRSXQfK6UMYR+XT213writ1vbe5Y8AI0TGeFdQ9tRimudh3dN9i2LDmBMvLdr4Vl/9u9fgnMck5uWz/TG8jbNmVCx1uXaVKA6q6MlIcTfNy//DMPcLQcntNj/g1Dc6dFIuwrc0ecl4XrgicqZV/BE55PqAmUkOskyDZjhYDN/NDARAFMgOA75YY7M4pTfsSh77PGhw6sqF7StgRqsL5QMzJ072osgYStdw044KudP/c5R56YVUsRu+6lsUs2GlxPzkXCvw1ynCW6iwRLIoL6Mk99Hsg6f+EF9/LzO6TdIN8cyxb1CEImOSTcxjppYA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?kCr7yhQQjPWU7XP7AbcUMa/36MmXcpT/e3YGcjZqzFsw0UmhD511Ewvraudo?=
 =?us-ascii?Q?3vTcR72mFl6FyJL+wjt4eyCG8Q9YB7k7QD7HnxFVtzIgBSjglhftzRs0TRbZ?=
 =?us-ascii?Q?zfBwpfJwISYWlzrDkQlkXPttmHfFGIOtH49bVvKoLz5pnMukr7bXTKobFGTZ?=
 =?us-ascii?Q?TcKeG4muGsKydOiGd2teCBUESWv9Wrj7PFOducyNmguCm24j61D9XgtqN0MU?=
 =?us-ascii?Q?JVy93gXHplq0VmHG329LzXqwNEERpkVIZwekP+2/3hvJcZSxsaw85hvA6NVs?=
 =?us-ascii?Q?Mu04XPUYeMW08ck4Tw3Uoo2gVy0vz23MlvPpoGMzPQlcoz3W5TTuTgdVEIkH?=
 =?us-ascii?Q?d+7XXyzylJgwU2P5tc3csrOdWnWtj1l/wcGg0pZ9EwbkWTuxEwJeUUKxsbBu?=
 =?us-ascii?Q?bQNwg712vKs1KRKbfDxJOo03aM+oaKaDMM+xzK6BM4dAMxEmeG6vPG1zuUB1?=
 =?us-ascii?Q?ZSqF3/hC1oa3lE4VUUhP/KwhSTr9KR2fkn88VUxonYGE9R9Y7SuB4bnkYUNz?=
 =?us-ascii?Q?8H1Gze7zNeFngJZIQTE8Y+fJfp/E/H7o/E8qHsPlupzERK19DLq3c3yRmpqP?=
 =?us-ascii?Q?dgF9jX0qjA3RJJSvenzipJSV8zUMk/Hopd+yFtiITuGw3ngRtEWqIjRWImHo?=
 =?us-ascii?Q?168+snnSkRLj980EMkeHrsKxzchqe/XYMuMNFfIOrEXD/ZhwKxT69LlZeuOU?=
 =?us-ascii?Q?PX/mF/dy3fdO/vZMpXmQnxZixUaXxbiTxAOswi7DP61tz0EMCFEzY+RCHHiK?=
 =?us-ascii?Q?sYAyqI4LiHZM+L+ZLVcurInQ54pTlYXWMffSJZmG/QmBWJR98Yg4it8Plji6?=
 =?us-ascii?Q?zSdW/Uu0RpZHf/vKPm89MSCsVT1bjg94d6WLRzcsXGrFuaCyFNcKheRfUaKQ?=
 =?us-ascii?Q?mb8l2mEwvFRoZ1+gtIWLMzVObfMHxvgbTPg4Pzvx2yXQbPes9cN0JD+shfJB?=
 =?us-ascii?Q?djUBh2tH3JcXrvLJ5UpT0uau8DP50W8PvTIMk20AD0l3rktyRpwAVhdUce+5?=
 =?us-ascii?Q?KgtbQQV5yCEVqhu2zMPYzE3fKK2boWsHUHg5YnXV7jK+Gd2buz4DBxkMH51T?=
 =?us-ascii?Q?COrp+frhVNObsMsqUmjjRbVO6ZUL8mj+Nukd2VdToMgZ8FgNUzgfjj66CO7s?=
 =?us-ascii?Q?d3BvnhBbp3rHsCrHfsXpNXIpNfRaRdog0yypB0OuFAmsNbuElpNtIiYvZKHJ?=
 =?us-ascii?Q?y3cV9ksQlwPrnXbNAj8QEBFGlo7QEqCueQrpATMrxk/WxCfBTwSVk6ADZShk?=
 =?us-ascii?Q?7PGxOZXVJZB1Zxrt/rMqzk5Uy4T/UuvXoKysvfGg/xxlIgODfD2JaP+BMCPr?=
 =?us-ascii?Q?OClSw/gAa440pF2hAqjXKg3rXzRBFo81Us9cAsekV5+f0PWk0r28FsaTEBXn?=
 =?us-ascii?Q?l5yVhtFqrwOR1N7GU8x5qskFYNsLzmQB5MyKyGvRefTJEHbdR6A0NwdsWmx8?=
 =?us-ascii?Q?FDFxSjZ66sIFS5GP6xkTV0IxHEBqCGTE3rBeQ7nCnrJNo1eRxqjd63vBRyL9?=
 =?us-ascii?Q?QXYcED/rLWBqnNDhsBp/APA/qMX051Nlu0E5XIsSK8Khwph/GgduKRpVrELw?=
 =?us-ascii?Q?zm69cD2vh/sGDxeXQiyw6izmPkDoOPllqw++3G7R?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a1c4d33a-bfdc-4237-71b6-08dc3476539a
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Feb 2024 13:49:59.6421 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: xGd/D7oNpiPoCPnNfM4hUgTeLh6t13J8wtFmnI3L7ozYow/JPBaJlY8U33BEy7e4jDM3tOSu1UfLxp/1CrSO4Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB7669
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

On Fri, Feb 23, 2024 at 12:46:23PM +0100, Cezary Rojewski wrote:
> Commit 78f613ba1efb ("drm/i915: finish removal of CNL") and its friends
> removed support for i915 for all CNL-based platforms. HDAudio library,
> however, still treats such platforms as valid candidates for i915
> binding. Update query mechanism to reflect changes made in drm tree.
> 
> At the same time, i915 support for LKF-based platforms has not been
> provided so remove them from valid binding candidates.
> 
> Link: https://lore.kernel.org/all/20210728215946.1573015-1-lucas.demarchi@intel.com/
> Signed-off-by: Cezary Rojewski <cezary.rojewski@intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  sound/hda/hdac_i915.c | 32 +++++++++++++++++++++++++++++---
>  1 file changed, 29 insertions(+), 3 deletions(-)
> 
> diff --git a/sound/hda/hdac_i915.c b/sound/hda/hdac_i915.c
> index 365c36fdf205..afee87bd0f2e 100644
> --- a/sound/hda/hdac_i915.c
> +++ b/sound/hda/hdac_i915.c
> @@ -127,15 +127,41 @@ static int i915_component_master_match(struct device *dev, int subcomponent,
>  /* check whether Intel graphics is present and reachable */
>  static int i915_gfx_present(struct pci_dev *hdac_pci)
>  {
> +	/* List of known platforms with no i915 support. */
> +	static struct pci_device_id denylist[] = {
> +		/* CNL */
> +		{ PCI_DEVICE(PCI_VENDOR_ID_INTEL, 0x5a40), 0x030000, 0xff0000 },
> +		{ PCI_DEVICE(PCI_VENDOR_ID_INTEL, 0x5a41), 0x030000, 0xff0000 },
> +		{ PCI_DEVICE(PCI_VENDOR_ID_INTEL, 0x5a42), 0x030000, 0xff0000 },
> +		{ PCI_DEVICE(PCI_VENDOR_ID_INTEL, 0x5a44), 0x030000, 0xff0000 },
> +		{ PCI_DEVICE(PCI_VENDOR_ID_INTEL, 0x5a49), 0x030000, 0xff0000 },
> +		{ PCI_DEVICE(PCI_VENDOR_ID_INTEL, 0x5a4a), 0x030000, 0xff0000 },
> +		{ PCI_DEVICE(PCI_VENDOR_ID_INTEL, 0x5a4c), 0x030000, 0xff0000 },
> +		{ PCI_DEVICE(PCI_VENDOR_ID_INTEL, 0x5a50), 0x030000, 0xff0000 },
> +		{ PCI_DEVICE(PCI_VENDOR_ID_INTEL, 0x5a51), 0x030000, 0xff0000 },
> +		{ PCI_DEVICE(PCI_VENDOR_ID_INTEL, 0x5a52), 0x030000, 0xff0000 },
> +		{ PCI_DEVICE(PCI_VENDOR_ID_INTEL, 0x5a54), 0x030000, 0xff0000 },
> +		{ PCI_DEVICE(PCI_VENDOR_ID_INTEL, 0x5a59), 0x030000, 0xff0000 },
> +		{ PCI_DEVICE(PCI_VENDOR_ID_INTEL, 0x5a5a), 0x030000, 0xff0000 },
> +		{ PCI_DEVICE(PCI_VENDOR_ID_INTEL, 0x5a5c), 0x030000, 0xff0000 },
> +		/* LKF */
> +		{ PCI_DEVICE(PCI_VENDOR_ID_INTEL, 0x9840), 0x030000, 0xff0000 },
> +		{ 0 }
> +	};
>  	struct pci_dev *display_dev = NULL;
>  
>  	if (!gpu_bind || (gpu_bind < 0 && video_firmware_drivers_only()))
>  		return false;
>  
>  	for_each_pci_dev(display_dev) {
> -		if (display_dev->vendor == PCI_VENDOR_ID_INTEL &&
> -		    (display_dev->class >> 16) == PCI_BASE_CLASS_DISPLAY &&
> -		    connectivity_check(display_dev, hdac_pci)) {
> +		if (display_dev->vendor != PCI_VENDOR_ID_INTEL ||
> +		    (display_dev->class >> 16) != PCI_BASE_CLASS_DISPLAY)
> +			continue;
> +
> +		if (pci_match_id(denylist, display_dev))
> +			continue;
> +
> +		if (connectivity_check(display_dev, hdac_pci)) {
>  			pci_dev_put(display_dev);
>  			return true;
>  		}
> -- 
> 2.25.1
> 
