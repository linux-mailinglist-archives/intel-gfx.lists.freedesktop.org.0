Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DBF86A255E
	for <lists+intel-gfx@lfdr.de>; Sat, 25 Feb 2023 01:11:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1CD2210E56E;
	Sat, 25 Feb 2023 00:11:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 164D610E56E
 for <intel-gfx@lists.freedesktop.org>; Sat, 25 Feb 2023 00:11:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677283912; x=1708819912;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=s5BX3KQHf08JtWTfzljiTPCUy9Evc6AiOZC+V5W/iuI=;
 b=JurBjXxz+YftMuICbL9y/r5CHuh2LLZP6h4A6YW1vnSLrNK15fhLfNJ4
 M+Ljs9MFBcpin2mV69KUwD/E541JjQSAB4ybllm73HSaxB44srXhb4v4q
 /lVNm/7memlxgq1VfDHhWK4zuI32Q+Xige/pB+XImfDiYWye1rwR03S8s
 qMPqLDU7woPm/R+vaqcA2LoYus5alAz7jzxGiNM0ddHYUIyErprYwH7JP
 Znvx/OvHl88kwSNKEcrAkZs6qOJcQS5+bYQ+3BiVPpdmZ6o+MMneQZT9C
 qxnB0Eh9F8Ebds1NnC9Qzxuh4u0mMqk7P10Ok56A0/6SEKo/mUza+1xbW Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10631"; a="419840994"
X-IronPort-AV: E=Sophos;i="5.97,326,1669104000"; d="scan'208";a="419840994"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2023 16:11:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10631"; a="815911698"
X-IronPort-AV: E=Sophos;i="5.97,326,1669104000"; d="scan'208";a="815911698"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga001.fm.intel.com with ESMTP; 24 Feb 2023 16:11:51 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Fri, 24 Feb 2023 16:11:50 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Fri, 24 Feb 2023 16:11:50 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.105)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Fri, 24 Feb 2023 16:11:50 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=X3M2Z4JoVglEb7LePT9dY+yaM77ccYkezMznNrRhO7ljJeoyEr9glmwAkPaXjdkSAlq41lDztl4aEs2TMXEvRoPTUU12mYhAZaVONy240f5KHwortVJgtMmiZnGi6a5qk6XCZVG4INYruOElBtiHkxSgykpjI/NkH8FXECZtGa/X9HC9qWjBdL9fYhnPb6X0S9cvNHZAKDkcT2/pUc/EKL6L0rHIPTkppaEV4tH8wxgiT3ZJ/w3gvAcRYwxxjfqv1VhtWQErPqkG4SQZg5B/TGtMuwIr9q8H6HgZ7eMpmO/+VLlVxyKGQQFEAjdxh5CC9/kDLjrdc0Z0NtTAY0y2rg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kcQTXduCHpoRnTDf7IHpYJzr7pQs2dWh8WissASnWuU=;
 b=Yrw4dR4N6gJTMMLPGh80FFdcoCj8a3oez2mFXCjocO05p+nDxVFI/6QKF5wa8IUwTwoqWK/5pDWdgr1vN1wc9sSaIvX6OpxWN3zEp5UHKwC662+rzl21riZGKcwHD9Uw6ZaiW8JmPaGDhvoZkv9mvWAeicmMvaETkbwp6XB/skw5Ug4uMk8x+FsWc+TuTSpnSUEG4AdOFnXJjFPBhK2HzievONwpcm0n/BXir68bPFtfxongmU4ZLJlxQctVoiwo33umMIYwreqIkJPtsyafOfYqXeeSYonUdwdeW73csCyj2AWD56d88uyBF3G4ovEwnM+PaucTqf4Z5LfB4e2Tsw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 DS0PR11MB7630.namprd11.prod.outlook.com (2603:10b6:8:149::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6134.19; Sat, 25 Feb 2023 00:11:49 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::7333:f4b:7dbb:36b]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::7333:f4b:7dbb:36b%7]) with mapi id 15.20.6134.024; Sat, 25 Feb 2023
 00:11:49 +0000
Date: Fri, 24 Feb 2023 16:11:45 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Message-ID: <Y/lSQYm320YnS21d@mdroper-desk1.amr.corp.intel.com>
References: <20230224163444.818286-1-rodrigo.vivi@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230224163444.818286-1-rodrigo.vivi@intel.com>
X-ClientProxiedBy: SJ0PR05CA0092.namprd05.prod.outlook.com
 (2603:10b6:a03:334::7) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|DS0PR11MB7630:EE_
X-MS-Office365-Filtering-Correlation-Id: 700ed176-47c7-411c-0945-08db16c4e338
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: T6zpwza/MYXaMTEG+Oyp2LIFdMLLreVrAnyWjGntojKUszsnBZrskXqAnE19twM5q/2jPbIW8pzlIoCZIzlVNnb1d1PB+St6MAuFEEXlx3x0IOvf33ZujGo7CZ2FtWxzWGPbN2yzYsp/LEoWX4gI918lDHJZKysN/2VAYaRu2OJU0ERlF9bTJ4StxGN0wimym438VbQxJ3hmL3AsE7MyLyYvZU5n2MeDpqqg/7L/xAZ25jrVsJ9NjI0FKo9jl6k36KINzje0QJUl5jEutma04Koazdr1gA+zQy/eJAojgE3H9hQhZ/BWBpRmVro2eWeQu9+mD9q+jwrDlPdK9aNxXbL27DFHQZMVtHGUeiFgZEjABKs9QwVXCtXHCrbdhMh2H3L5U6Gf14pkE9iuzW+tS5ur/0nzVWU6l/CuB0UzP5td2H/rTnkKpihnGM/sTjpKA/9EqUfVJ6oJLMyBEu7hezMLk9iq6JoIZTl/5N5uveRIV3l5xKgsIUKZHJb3Th1uQsrOOnu0ttyp69iQ7+IDQHXhwPRFDTdJIQXAAKDf+UPiA2F1sSNtm9B76XoHsgDbYDC4gD7zO75WoqRGQQ/8BwnBZUc62XyLV1xxmkEdzj4Sl6dgz5k1W/AvGlMwfBoteNgELMnuu9Hjwpuq0kte6Q==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(39860400002)(346002)(136003)(366004)(396003)(376002)(451199018)(316002)(66946007)(6636002)(38100700002)(66556008)(6862004)(26005)(66476007)(82960400001)(8676002)(186003)(41300700001)(6512007)(6666004)(6486002)(107886003)(478600001)(4326008)(5660300002)(2906002)(86362001)(6506007)(8936002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?NEdac9lflRkqJdc37gfC/5eskKwNS1iQGV1nyLjjm8u7RS6httNvrScB1mfU?=
 =?us-ascii?Q?PbVEH7ovW3SreZeqdHHANTdoiShQu7ygc46VVC0cRbLY+3SKya90omZnNnox?=
 =?us-ascii?Q?uq7RlDDYDdzwZSjsrJYxE3+1JptZ3T2uH04vYqVL8pbCI7hQEDSAVZRH2ZVo?=
 =?us-ascii?Q?pVwBUnynnggDWWhpvZsQfGGqkMWmIMTtS1XSi1rxdkFROVj5MzuAkExT2nVg?=
 =?us-ascii?Q?d3dMzZZPhc/1Vca9W7nr3dvxqyHeYl9Mj8BLtG96zugUus4J78gZ80vPM7Jq?=
 =?us-ascii?Q?DoncLA96t0NnIn7R91xkbwa0re5HsIRtyaz1RyfcCrz/xzOjLhrF2oxtpuDO?=
 =?us-ascii?Q?VK7r5ZVf2iqM0nZbcHTuj8SIJVDC2yvtDJUTVCChrKBrR0x90IWiXoDlLPBo?=
 =?us-ascii?Q?hX4d0a3vhtiJUCYG+WDuPqjsJyc36R3OBPPUA2mymB54zkcwWMXyNK56fOZU?=
 =?us-ascii?Q?cjIrRW6KBaiAexkxlxH/GCug7yGrVdVyzLC8egVkAwUJcMasvWF7D3sQLkZs?=
 =?us-ascii?Q?/m8p4l3tlZ7eS0wlC7j/QJKtJnDCB0EVddcv2N+ARk4ysTF8dlYG1UzYB1Vp?=
 =?us-ascii?Q?KSDEyFl/omkmXaKrtgcwXpwbxisvb1+EFUpP9+T05a0fAU0nvQNt5PizvVz2?=
 =?us-ascii?Q?oxt6ikoaUN71krd5jsLtmxV0FSYoa+da7oOWgbSVUJcSY94mPX39C7mQuBWQ?=
 =?us-ascii?Q?rz7ue1jjbJevV3pOr3R+6ESVwR3q6TOQz5rXpcFEt+PGNP0N2UhN8JE9PMMS?=
 =?us-ascii?Q?+SzYC5RLITyk0XgEwl1/nMngYh5C2vMBriKWPqzpumWa2pBUJugb87jnUVkG?=
 =?us-ascii?Q?mdUVNRvfl5JWF5+FUXudS4v0mLPcGdZj5CaOVjdJ482nTa6fmFkshoATCmO9?=
 =?us-ascii?Q?EewLl4fRtf4k02+4MNedDmglYlKQvdI92ehBUJFBBe/Na3fCTMVTK0tmIWm0?=
 =?us-ascii?Q?kHXl6dSLXSDyE9fWq+RiFPG89Hi7ML1fZKf8IZpEsgnjKrA1vflXj+Xv/K85?=
 =?us-ascii?Q?pG1bcXVkxlRU0YKdsspUO2UcoOvkhTCnMsKsYR0QNX75+lOrGwaZJS4ZXudn?=
 =?us-ascii?Q?jlZCTq0oAipZznfvnr64qWNhxrYiej4vTae4Y7YQHvx3czzmYP7kgfKQbAnV?=
 =?us-ascii?Q?dXTavai+VBksPd0Ma/qdCoue2O+TUK+4L0ZWMGshq3jnqlIv0dUCnR6rRnJV?=
 =?us-ascii?Q?lPl4wj2iDtWlTnOPn/6RK+gfQrYezRR7DmofyV9EqwZPNzMJ/Wu05meLZ9ZH?=
 =?us-ascii?Q?9L2sTO0AmkKde62SAw9Aazmrg1FTWN9pPGdtJ6aiztUejvbVUP/gCCO3Gljq?=
 =?us-ascii?Q?4k9oR2/hbrm/DlxNZX/ykHmYQyGrAQfozEOQB5u4JeSw8Abx4d9N6XMfWpYl?=
 =?us-ascii?Q?Ql3Tn1poRx0bWTRlS4NB+QGx7E11+/6V91Kr0cpqPYUvLATXH7KI8hDWw5yg?=
 =?us-ascii?Q?tuvhAwn7O0908xnD5qEJnGVyfku2tSLZBFVreERbCvKXCbIi2k1XcvvyIkZa?=
 =?us-ascii?Q?8xtQY38XUs9YtNXuGzF7n/FY452rGVy462RYzaO5YqqJwCz+FvcaPaS+Q9/m?=
 =?us-ascii?Q?ZEVklSSnplUqVq+PMLYxjisS5yIqPlQ1UK990Qg0kj6KfKk4s5CdXNZ1R8Dn?=
 =?us-ascii?Q?mw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 700ed176-47c7-411c-0945-08db16c4e338
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Feb 2023 00:11:48.6277 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: F9ME0Gu1WRC8h6JG4G74WHBlTwrnEJCUXzbNspGUtHXCmTSKo10JiYBZlOIer5HT7aQM+fFQ1g9WkmZ3wCKnZv2VzP3WjOoL7NQa0IAywDI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7630
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/adlp: Restoring ADL-P/RPL-U IDs.
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
Cc: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Feb 24, 2023 at 11:34:44AM -0500, Rodrigo Vivi wrote:
> Some PCI IDs got accidentally removed when subplatform was added.

I don't think they got removed?  INTEL_RPLP_IDS still includes the
entire INTEL_RPLU_IDS list:

	/* RPL-P */
	#define INTEL_RPLP_IDS(info) \
		INTEL_RPLU_IDS(info), \
		INTEL_VGA_DEVICE(0xA720, info), \
		INTEL_VGA_DEVICE(0xA7A0, info), \
		INTEL_VGA_DEVICE(0xA7A8, info)

so the change below is just adding them to the list a second time.


Matt

> 
> Fixes: 61b795a9c352 ("drm/i915: Add RPL-U sub platform")
> Cc: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_pci.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
> index a8d942b16223..d2dc81848e3b 100644
> --- a/drivers/gpu/drm/i915/i915_pci.c
> +++ b/drivers/gpu/drm/i915/i915_pci.c
> @@ -1235,6 +1235,7 @@ static const struct pci_device_id pciidlist[] = {
>  	INTEL_DG1_IDS(&dg1_info),
>  	INTEL_RPLS_IDS(&adl_s_info),
>  	INTEL_RPLP_IDS(&adl_p_info),
> +	INTEL_RPLU_IDS(&adl_p_info),
>  	INTEL_DG2_IDS(&dg2_info),
>  	INTEL_ATS_M_IDS(&ats_m_info),
>  	INTEL_MTL_IDS(&mtl_info),
> -- 
> 2.39.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
