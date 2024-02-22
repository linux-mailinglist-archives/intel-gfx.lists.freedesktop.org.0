Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 28D16860472
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Feb 2024 22:11:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9FFE410EA7B;
	Thu, 22 Feb 2024 21:11:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nGVsnQzL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0352810EA7C
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Feb 2024 21:11:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708636276; x=1740172276;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=8yuAkFg4H8H/lO8VZ+s59jNsGTBrfXKjvB071dqPugE=;
 b=nGVsnQzLPc412rcbMRdFLxNISdW1KAVWb+9lz1nJXXbGgKsYX2cQ0g7D
 wYT1fzXfPUzMKsKx4P91Q8p1467gDjMW6TZmphFzf76M5XFkE9kj6sdYl
 IBn3gzOOFBohafk1z8qWilxIPQc1rUM/dvx2cKaS56O4y7pI+ZU1RrPMr
 f1ORxPW4Nprwlpqzk7MF9Arc9u7PSsCQya4ZSQLF3omI1KgOU48BHxKH7
 qocy6cf2JKXtansXwZ8ZoSsLvwBT+c7Qz3McMqBfisLi+fA7CT0lmZC9E
 BVNkWBAKbDPGqohFRLQsU8oumtL+SiFr0+GDZR4Ibo5TtWQYfx3I+qIvz w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10992"; a="14030779"
X-IronPort-AV: E=Sophos;i="6.06,179,1705392000"; d="scan'208";a="14030779"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2024 13:11:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,179,1705392000"; 
   d="scan'208";a="5801224"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Feb 2024 13:11:14 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 22 Feb 2024 13:11:13 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 22 Feb 2024 13:11:13 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 22 Feb 2024 13:11:13 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.101)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 22 Feb 2024 13:11:13 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YlVhroHRZdbTKB/Jo49xqTOO3rrY3KsXJZCI9x/uPxk0NmH7c4L5akNcjo1AYW4hkaDnIuDLJ2T+oe9VusMG9pvG7TvZ7xJwBbcK0i1NkaN/QZPWJDi14CVuY83LidRTkdG6gCoJRbDd6Zf8npXQDr6ovEa+KiSUEscJ17dohMIDy/Tu7rppf4GrEWIlUBkNCT1KHEIa08qpZW9nrzrGe2as72vRUZ4FyJ9dAUXNoP0vyXxPqXnHgctnh9jTAvQLFXsz8nw2pYOhEljOU57fI21qvxdG5iS5ZO4txnFthW8ihr5Jp6CTCPDp8a4UaWegnJuyKV9rYFYF7J1n47+Hpw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KyAgKE2iwtcDR5ENdea+B/TwAm4KYqeZ8CS2mxvPeRQ=;
 b=VEkAuxWaxkuc9HUWayDZqq7pvUB1pDKM2U/+pI/xKsrUV1zjCr6RYXXB0LzyQ2kebNgFS+ouN48dwAmbNgv0ca8tdsjUbO5ZPDAyic4mNfkkivhjKBQPrRRkEKJ/8Cn1okVlJ2gzacj98KTV0owy25c/7mj83oIVDuVUBLx1lJRn+cxBUqEWOnCNAmhKAHbseR7Fl9OEru/XS9con6cYwEWnHE5G37X8AfyU8+U7Nw6WK2F3YRDyQMnk4OO0Z5V3UaoRiFBpL14kIJY+6KKZbw+dHrdb44HfAhYx9W+jwfhpNNpCHCz4gj738lEi2oU5gSWCqGrKImxocVQYgl0l2Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by SN7PR11MB7994.namprd11.prod.outlook.com (2603:10b6:806:2e6::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7292.38; Thu, 22 Feb
 2024 21:11:09 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::a7f1:384c:5d93:1d1d]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::a7f1:384c:5d93:1d1d%4]) with mapi id 15.20.7339.009; Thu, 22 Feb 2024
 21:11:09 +0000
Date: Thu, 22 Feb 2024 16:11:05 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Vinod Govindapillai <vinod.govindapillai@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <stanislav.lisovskiy@intel.com>,
 <lucas.demarchi@intel.com>, <matthew.d.roper@intel.com>
Subject: Re: [PATCH v1 5/6] drm/i915/xe2lpd: Load DMC
Message-ID: <Zde4aVGzPtk08p9j@intel.com>
References: <20240222125634.275047-1-vinod.govindapillai@intel.com>
 <20240222125634.275047-6-vinod.govindapillai@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20240222125634.275047-6-vinod.govindapillai@intel.com>
X-ClientProxiedBy: BYAPR05CA0030.namprd05.prod.outlook.com
 (2603:10b6:a03:c0::43) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|SN7PR11MB7994:EE_
X-MS-Office365-Filtering-Correlation-Id: 1c407d18-ed76-4af3-6d8e-08dc33eaca53
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: RJc+POBJgL5gfLlxoK8BArWk1lR7Xg4ql89hKQUv3m9uZlQiKBoEI61ehhirllCG1fTxZT3jNgcnMKrNo75DJUoT1hti7gp+1NwGYAYTC4EPmmCF10kKOmSBlWO1VO7g3VoqL+QOw184nIPp2ZwYVqgI97wJwEXgLAFypFxlCTO6BoqIquZeTYJSMfXYOEeGnZSmFirrcbZTjJKS/i91VvTxyaEcab/fznizjubUlZfDYNBkB+guV0h7ZOO0WiQRIdWdGq1ZtcdfyGrNKafNtmJXez2Tb91KJM6G8CmMnIEc5Hx2hlByWaVcweZCWAD7zi9mFVDXPab9HiufNjZItfEqzYh6jatoPQ1Fgmu054PI9uQuxhIVbbxD7vQOeClQ6VBVlGr58k9d7yy0QThR8MFHu5Eq2k84Rw0oDs0HcHOscspTup3DUQxmM5Hse6WCjbwAk7uCoYmr+Ht2iIA6wLFYHG0fwdFq0IbPArOX6SD14B5adJzxfBrkEykPkwMC8+p+rphyNpHXqGHVn5N0fzQhwF5xVO4TV3haFWkgRbE=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?kp+ziI1kZK9Rfx2bFNGmCvX6WjMaPETJu+cSbJK81/TFF3xV+67jXejNQzLF?=
 =?us-ascii?Q?RzDCfa/DMBWeRZNbE4wFFGOEJ0HpvuMf2ydVwbnJfUznxVga5Etdd25offW8?=
 =?us-ascii?Q?K72NP6Hf6tZ8/QPfG/sq1d60xUHEFj8xN0bX2ec8Zbgd8hArr6gBjZhZLPUe?=
 =?us-ascii?Q?GkHd4oleQFuYPX1ZocaVn3G7X2eGuePNd7g/j6MX3s0A2+mF0dtvzXgOjwVl?=
 =?us-ascii?Q?cMqzFxKNevzOox/75O5czAV/u9ahVi54XFfDjqIhWXUSogWjcXpf/niiw2jk?=
 =?us-ascii?Q?8CgtzX8HBKrP9iy8euO2twifxmyXKNYVtwKHPkKaezu+IRSs7qyd0kwj+EHi?=
 =?us-ascii?Q?b/+O+tH6odHsAefZlMcc6sMWKouiFnxK02dUkSF9R1rFddT/KTPsr7lvi+17?=
 =?us-ascii?Q?84GdYyN8qBL9pZDokhvv4m/fLD/gZBcdPRbuBWkhkd4OSnxiYoFLz7ICZPyJ?=
 =?us-ascii?Q?Vaygt4Zn6XSv5LipCjk4v+aAgBJojYgSk/ZM7RZTrcSBJFfXtS/uN1ECc/Co?=
 =?us-ascii?Q?bkwnG09VmVgqqpDWcMuJCJFA6wJ5jiOP52kBxC+pq6eEyH9z8pNwL7U+oEOU?=
 =?us-ascii?Q?zFw/9zoc/InF9sqUPNp5UedoQ92wD89FkWmEx2qtLFmhZzxjizI1RrKaIZYu?=
 =?us-ascii?Q?I4Zwa9bde6DuGoNMuzaU32YqWjcPrsP3gO+GcMHo03A8ucj/BgbF0UcQ0yIE?=
 =?us-ascii?Q?hvZDmUdtdRY/eHcAHJvlkJuQvhbi8RvelQCYzyWIKwhKlctEKiUGN5Vu8cdh?=
 =?us-ascii?Q?gWWf3ig3QNepnoia3gWxUzlheokk16nreRPnYUKi9gVdDLR3e2UaEYcb8HAV?=
 =?us-ascii?Q?3PgJFKs0o42PdS+ByPNPfvmks1Ig9ZwIaLp1vI1P4FmhHiDrurU75CqfHlJh?=
 =?us-ascii?Q?ktVcw/jyFip2h61mpQrsRjSC5PEcFk1mrBnhRvCBWi1iaxLoxFVUtmM/hwxy?=
 =?us-ascii?Q?Vq6+nvT211o6Wq3X83qdkqkU9UMvze5PmnUbbqcl+2iVzPdd22E5A1xTLRvV?=
 =?us-ascii?Q?Ce+EiXcvOIXwe15XXny5v4u5EjtG9jKHU6a9iWPfiv4gBObI55MoNKzDWWvl?=
 =?us-ascii?Q?7BTPisjStP5WFGiw/CYyDQs6pbEx1moNTi6sJF4xF04B3bMmMgDgiC8B2ReF?=
 =?us-ascii?Q?36J5t11prInXN2EH/aVfr9ESfZyMKiR5o9o92Yu5R3B/9sOYMYNr1SCK80ta?=
 =?us-ascii?Q?uf10hvUka7CAu5Vk5WDrtD5wiqdKnLXi5yZ2yctLjE5knZ9aJQAoy8IOxt7U?=
 =?us-ascii?Q?j04WtPOwYPXCVvR2nK88HxUeLkWi0iaxXPE0oiwgoz8zu9BGvFCFPoJG0Cns?=
 =?us-ascii?Q?PuYS3OOMSBFLwd2XYHICwPG5j/NfJ2x8MbdJ4T+ItDu7ieFTYfoRLvxC8lC7?=
 =?us-ascii?Q?X9+1zuWCH2GiheHv1Qgl8edNbw8aOflbAMddXKSpJplCSI2a2Hj8C9fWnF+D?=
 =?us-ascii?Q?9BbFcDAPovcKuv8VJ2DrG4dvIOIjoPv/2k3GZ+buryfpoz4M2VE8thx5uZV7?=
 =?us-ascii?Q?TA9gETe5kEXa1P6S4sjzQfFrEdc+ONSG1moHJ/zopWLXESi3oF8Hq28oHnkq?=
 =?us-ascii?Q?MJ90lJ8E7roc0tS2UazQBgKG6mPDptitSV/+Uf6E1e/09m94p48VMI0slKH0?=
 =?us-ascii?Q?KQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1c407d18-ed76-4af3-6d8e-08dc33eaca53
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Feb 2024 21:11:09.2027 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: aEpQQY7oOXA1p/RXPKFyuS9f8TkC+vjfS/GNi0MzDTEyAwVJWYv36GXsFks4iiS+Fzztekp4ctrsVkNwBc/PNQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7994
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

On Thu, Feb 22, 2024 at 02:56:33PM +0200, Vinod Govindapillai wrote:
> From: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
> 
> Load DMC for XE2LPD. The value 0x8000 is the maximum payload size for
> any xe2lpd dmc firmware.
> 
> Signed-off-by: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
> Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>

Please always sign-off whenever sending someone's else patch. Even when there
was no modification on the original patch. The sign-off is needed when handling
the patches.

> ---
>  drivers/gpu/drm/i915/display/intel_dmc.c | 9 ++++++++-
>  1 file changed, 8 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
> index 835781624482..54c5909de293 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc.c
> +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
> @@ -89,10 +89,14 @@ static struct intel_dmc *i915_to_dmc(struct drm_i915_private *i915)
>  	__stringify(major) "_"			\
>  	__stringify(minor) ".bin"
>  
> +#define XE2LPD_MAX_FW_SIZE		0x8000
>  #define XELPDP_DMC_MAX_FW_SIZE		0x7000
>  #define DISPLAY_VER13_DMC_MAX_FW_SIZE	0x20000
>  #define DISPLAY_VER12_DMC_MAX_FW_SIZE	ICL_DMC_MAX_FW_SIZE
>  
> +#define XE2LPD_DMC_PATH			DMC_PATH(xe2lpd)
> +MODULE_FIRMWARE(XE2LPD_DMC_PATH);
> +
>  #define MTL_DMC_PATH			DMC_PATH(mtl)
>  MODULE_FIRMWARE(MTL_DMC_PATH);
>  
> @@ -987,7 +991,10 @@ void intel_dmc_init(struct drm_i915_private *i915)
>  
>  	INIT_WORK(&dmc->work, dmc_load_work_fn);
>  
> -	if (DISPLAY_VER_FULL(i915) == IP_VER(14, 0)) {
> +	if (DISPLAY_VER_FULL(i915) == IP_VER(20, 0)) {
> +		dmc->fw_path = XE2LPD_DMC_PATH;
> +		dmc->max_fw_size = XE2LPD_MAX_FW_SIZE;
> +	} else if (DISPLAY_VER_FULL(i915) == IP_VER(14, 0)) {
>  		dmc->fw_path = MTL_DMC_PATH;
>  		dmc->max_fw_size = XELPDP_DMC_MAX_FW_SIZE;
>  	} else if (IS_DG2(i915)) {
> -- 
> 2.34.1
> 
