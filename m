Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BBE0D57B80A
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Jul 2022 16:03:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EB8D811BE05;
	Wed, 20 Jul 2022 14:03:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2B59E11BFC3
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Jul 2022 14:03:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658325831; x=1689861831;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=jT9/ngseTr377g7Izatj4sm93dhAwWhcVOu54xoQlbo=;
 b=foNNVfzpYEF4lb/EM6c3iwRW/6u6g3oTF6hmw42/WRJAxafu0Y62092x
 dALjKcOfMzAvdYKMvhnY7CG6d8rA9wjrFJBMwveF/+gucT3BrrvU/Jbe9
 BsLlnFOS4zdvt+2i55QPzjt7BV/c6pep7t6WPkVlA+oFt8XG6ieJnPJre
 UiX7/AKaIBxTDkQH7aIs5hYu3rxFJsW905CAHQbDIJl0OOuilz6noA+fO
 bqAPjAq+KTqaGcwMusxRbpVzeM5nK1Ulh6ezAWDtqAtTd8fTS04wihoA5
 5akyv1tIcrge2D73AyZQ+OdpqQEZbcKayk/mFJ3oH9zDMGZXpfJMacanM Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10414"; a="312480976"
X-IronPort-AV: E=Sophos;i="5.92,286,1650956400"; d="scan'208";a="312480976"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jul 2022 07:03:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,286,1650956400"; d="scan'208";a="598085367"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga002.jf.intel.com with ESMTP; 20 Jul 2022 07:03:31 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Wed, 20 Jul 2022 07:03:31 -0700
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Wed, 20 Jul 2022 07:03:30 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Wed, 20 Jul 2022 07:03:30 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.177)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Wed, 20 Jul 2022 07:03:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TxeLfyTrlsCQnfFL9A3mOxJ/QgoT5gg1dF57hMJ7BFc+3Qfpl4SRYyb7c4CJG326eF+FcVVcdOO+g/x4HdRXxPP2ixrAIAq82opmo10AJnXY+2ySV9Bu3yTRPXHkd/Y0KXJaDEnCE1K4OUrh1dTgNxKndWsVBAFC+cOghoTicrR9zxQErtKttDNDhzbD4+ukZ0CU0HmaTXLOzNnKdnrhEM4OyiYi+5iG7k0ha9KLoTYffsxitye95pNmCOlM92T66bW7cZVeWzMcDFj70ZaF8yMaz0SUyEKREHGTyFbfmAPyiwQFU4wd2HURmRZ2FPtC8qd9KIRPf2NIQj1fu7VrKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7iTJKGoMUW5r7AYoqHyveDltnr06tp53RpQ3B/kKkRo=;
 b=TmT3JV4ajNp3eVXlxuG+48lxDOq8D3XAL48qcwUxL8K9wz8zvvSPl3XUdOYs2Ub/5d48PWB1w8vK5ygtQxUKfv2EGBMkfun5FAaGmSlb9oSZBchcIMakz5vwn47FmK9p0E4Q6x2kNWuC9U8COJjW9kkMQRgSTES4uhNGW2S1JbITVwq1hPj75eTJFlMtt0DHniRybSJnMVvU4yNpeFrbb1mK9BPKOmx95lwNYtJ1d2ogr3YKk+v4J1NsCho7LZdOEPVPkjptx0hb94zol+9KcgzpjvTwS6zDifEd94c7lEaeOoyzP93X2w/EtJk73YeRLumuXwRepo8ybt9l6zMu2w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by SJ0PR11MB5680.namprd11.prod.outlook.com (2603:10b6:a03:305::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5458.18; Wed, 20 Jul
 2022 14:03:28 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::a968:40aa:6163:5c79]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::a968:40aa:6163:5c79%5]) with mapi id 15.20.5458.018; Wed, 20 Jul 2022
 14:03:28 +0000
Date: Wed, 20 Jul 2022 10:03:24 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Anshuman Gupta <anshuman.gupta@intel.com>
Message-ID: <YtgLLKqHishubmla@intel.com>
References: <20220720132137.18312-1-anshuman.gupta@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20220720132137.18312-1-anshuman.gupta@intel.com>
X-ClientProxiedBy: BY5PR17CA0003.namprd17.prod.outlook.com
 (2603:10b6:a03:1b8::16) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 4832ce6f-bc6a-4753-2977-08da6a589eb0
X-MS-TrafficTypeDiagnostic: SJ0PR11MB5680:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: /5MWYSlCc8PyKdk4mtV+pNN/ad/T6foG5uXuwBDIz5rGMw8b+5g98+IikHMBdC+MVLMCO53HpmkorsUlBWv8I+GS7VGz5ozdXyGFKj2vnSmOMNXPf5nBQz5uoSYavTyJDyuUGMIp3gYK/ht9t9c1gqMd6QYdbDp7GnNoEpqP24bUD+apFybqL5ydfUHAQhOzexCUptdhoJa3ncsKc5UDGPR5suSXKU8Ka2jEyRDDXVrWSEiKO9AM/JQx09MHHpWE1XsriHeL3loOwdLuFf3QgiizvbppFX8iDEPlPFIt9CesoC6xcqFRjBqWur89REyYd8NKNYj8IYI5zv8Ur8pmLqmdkfkaG/6Ym4CEgMRjQaCTAPwBJ36yvb8aZr7vaGDCvtaxWyHFAcMw2Ij8RzwG2my26zU7X2A+bHIaxBmeh40/tW68zLOw49vVG45GgsskJMa8MpxghQz2waPeWfNRpgeG7Xatis1vEeJvCVCN3ah4UM6ON973zAyGob8spfml0Hqr/xx85EFBcy3Iuj4f1mUT+5FpW5Oxgd5tFoUdXOtEV98SMrviWcvZi24oibu1a2UdrwZtxD/w6V5cE//MiqW4sUrVZfEkwzJL8rtvVbCDobqoUAnwjv6jed5v8Bo4vJKkqgCO004ug8QPLPadq6uv/WGeJYfT8NpoYVod05PRlGtUEeLBJNoQz2J2HCvX
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(39860400002)(376002)(366004)(346002)(396003)(136003)(6862004)(4326008)(41300700001)(66946007)(66476007)(8676002)(66556008)(2906002)(8936002)(966005)(6486002)(316002)(44832011)(478600001)(36756003)(5660300002)(82960400001)(107886003)(37006003)(6636002)(186003)(2616005)(6506007)(86362001)(38100700002)(83380400001)(6666004)(6512007)(26005);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?dA/jqZmzQmIOvengE2aqb+0T4OvQtIJ8nMw9JZL2QNJk+z1U0A884iJvBPOG?=
 =?us-ascii?Q?aWgnU0cUbvnX5SolYL2CkcwoaRgSwALDJaUs+Gw26J9+lGifPhA8FQTqa4zr?=
 =?us-ascii?Q?geqC89pLI7ySsmN87fkbKYvwuA92EuuGcUIXq/2JU8EEY1SirCIbauYJXN0Q?=
 =?us-ascii?Q?C+vR6kENzbVR/5KEjyq0JiMBTl5b4zDmShe4gG7WiIMfE4iy+L0Grz2TeMVD?=
 =?us-ascii?Q?JcuhwnawwJlSHUiFegICiGgsV4dN8hma1zb4KQ6C8wYViQRIYqCvt/y6sfwq?=
 =?us-ascii?Q?gJkeNAy7o/jLesxmTuP5xfu0cEz5REYPsmb5Qcd3PpUZDE6lv5Ys6RltQExa?=
 =?us-ascii?Q?NuFhZvwrRQOHBY5bgI0nQzGsdzvRzwMskPvg3de3NBrx+PaGYirJryfj37N1?=
 =?us-ascii?Q?lslw21gVY2/H0XtpbZ1OYb3pNzFiND1pxk1TV5UpQY+gLSuuIQjg2ehQy8gL?=
 =?us-ascii?Q?PP7wYvd0a65dcVl55bP0ZTYqx9qP+riY1vmOYnb3++rMDj99WtLvXmk+PUlC?=
 =?us-ascii?Q?UampMpuwOCRov/x93DWJjPDFgzCP9ADS/EauHGNbTSnVpJCn4yyLgAzSoa4N?=
 =?us-ascii?Q?ewgDQczdwrlUAcACozFqLm4cbzgoIX0fX5/bMA6aa/SbDKuUVwisFTDlKzwz?=
 =?us-ascii?Q?kw57wZVY7b+8z2+n7S9hbX6OxG/XD0wDKgWfEnv7I277SnSxOJuwQa6muelp?=
 =?us-ascii?Q?6Kgc18T01iZDL3GmQW1NS961zYm5qUVrOmPBzGV9awrvyLX7mrF8UEeug+sF?=
 =?us-ascii?Q?fJ3cQac3XZRIZOWRHSiX9VpGHya3L2X+9uBD5sebNCnF1DS3UFVIhijtS2Ix?=
 =?us-ascii?Q?CpwWNWrJnvnpSrADmSQ+xb1GwThCjCYEfr2gzpD/HsLID5bHtH/Cx3bkVODQ?=
 =?us-ascii?Q?yYJfG65UQMTxu9VnKEdwVBcGEYLRttpsmWzZwUCZH40loZ0gd0nDdYL9GfC5?=
 =?us-ascii?Q?cBfk3rIKhWcUIEt1RkoAZ1sz7wtk26MqZlkAKlYK6/ldh4tGoEMWMOD3GIe0?=
 =?us-ascii?Q?NXlJypYAyf1ZdIMAZ9X9ddhUqxryhlPUoyuE5C1/m2NrnHvZDGHCYcvBR0fk?=
 =?us-ascii?Q?QSakhrSDj7fGYX1DMsCkDW/PmnehAkk+uosSyD8Jqzc5LKrcs8bIUAoNUP1w?=
 =?us-ascii?Q?wQneJa5Njmaw4FY5QCeA2qwripGJqXa9f1a1pl+6PC+l3MqGL1AKjyXjRsaa?=
 =?us-ascii?Q?iJy1woyUEQ+CB1peYDK1lb+nDT/MfTBtX463XMSnqnA0jHo25th8AiIfgsXE?=
 =?us-ascii?Q?AAL+THGm424mxJ1KBR+RWEcFd69L6I2cFZoqfLexdLvmbsGqeBXFNkpPqeJM?=
 =?us-ascii?Q?86/19+ude/8d8qOkyADgEE4huhXUx+PcRBXoCBGnClYYuxKOw/6Qvigd7LE9?=
 =?us-ascii?Q?MOVuO1fv6tPxeJGTNtRhZpUOE6ox+IFSSSZlD11b5CjjDK1VwXU2g/Yglhur?=
 =?us-ascii?Q?0m+2/h+CtW9GhbuecBrfUHAUDuZlo8m+LBBg2vVOo4ykGpIDV35DrMQHQWyB?=
 =?us-ascii?Q?z07WJzF03QRbD4UTOvg6fSKehhKkD+DDK/O5ay8rcxwau3OoyIe31fSEzs0i?=
 =?us-ascii?Q?e+YEcb/Lxb8oAAn7SgiFSAqg8w5zNLzZt2BMteeKu5vekduRrMLJjvKX+aX9?=
 =?us-ascii?Q?Aw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4832ce6f-bc6a-4753-2977-08da6a589eb0
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Jul 2022 14:03:28.2419 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: G/EZ4F/MFIGnc+wnT1RmzjSCZ0XVSV7qAINb5dJIh0aSNBzkbVAZQAoP5/dB9Z6dzVT7AzWOndKt+zTq0QLE1g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5680
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dg1: Disable D3 for gfx's VSP
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Jul 20, 2022 at 06:51:37PM +0530, Anshuman Gupta wrote:
> When DG1 gfx pci endpoint's parent upstream bridge (VSP) enters
> to D3, any direct memory read from lmem returns with 0xff.
> DG1 requires i915 driven runtime resume in order to read properly
> from lmem, DG1 is unable to wakeup from local memory reads.
> This may breaks using mmap() with lmem object on DG1 as it
> relies on mercy of i915 driven runtime resume.

why our disable at root_port not working to block this case?
If the root power is not at D3Cold our power shouldn't be cut
and our memory should be there.

> 
> Let's not break using mmap() for lmem object on DG1.
> Using pci_d3cold_disable(i915) accordingly to disable D3 for
> upstream bridge.
> 
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/6331
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
> ---
>  drivers/gpu/drm/i915/intel_runtime_pm.c | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/intel_runtime_pm.c b/drivers/gpu/drm/i915/intel_runtime_pm.c
> index 6ed5786bcd29..671009fd351a 100644
> --- a/drivers/gpu/drm/i915/intel_runtime_pm.c
> +++ b/drivers/gpu/drm/i915/intel_runtime_pm.c
> @@ -559,6 +559,7 @@ void intel_runtime_pm_enable(struct intel_runtime_pm *rpm)
>  	struct drm_i915_private *i915 = container_of(rpm,
>  						     struct drm_i915_private,
>  						     runtime_pm);
> +	struct pci_dev *pdev = to_pci_dev(i915->drm.dev);
>  	struct device *kdev = rpm->kdev;
>  
>  	/*
> @@ -574,6 +575,9 @@ void intel_runtime_pm_enable(struct intel_runtime_pm *rpm)
>  	pm_runtime_set_autosuspend_delay(kdev, 10000); /* 10s */
>  	pm_runtime_mark_last_busy(kdev);
>  
> +	if (IS_DG1(i915))
> +		pci_d3cold_disable(pdev);
> +
>  	/*
>  	 * Take a permanent reference to disable the RPM functionality and drop
>  	 * it only when unloading the driver. Use the low level get/put helpers,
> @@ -607,12 +611,16 @@ void intel_runtime_pm_disable(struct intel_runtime_pm *rpm)
>  	struct drm_i915_private *i915 = container_of(rpm,
>  						     struct drm_i915_private,
>  						     runtime_pm);
> +	struct pci_dev *pdev = to_pci_dev(i915->drm.dev);
>  	struct device *kdev = rpm->kdev;
>  
>  	/* Transfer rpm ownership back to core */
>  	drm_WARN(&i915->drm, pm_runtime_get_sync(kdev) < 0,
>  		 "Failed to pass rpm ownership back to core\n");
>  
> +	if (IS_DG1(i915))
> +		pci_d3cold_enable(pdev);
> +
>  	pm_runtime_dont_use_autosuspend(kdev);
>  
>  	if (!rpm->available)
> -- 
> 2.26.2
> 
