Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DC1425967F3
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Aug 2022 06:17:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0629410E57B;
	Wed, 17 Aug 2022 04:17:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CF2ED10E554
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Aug 2022 04:16:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660709810; x=1692245810;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=/FhnhXcPJp8iFgXy9VqQ3jH781cYGuLmksgvREWhmmA=;
 b=ak9X6+RfRUzEZoja4z82hXjjCCZp+sK+UIFt7q4CSrjGgCUHU3L5pp5t
 mmyx8tbx0OHY8gLwcJmjgWF63T9q2HQEJMh1+4Bg3KebIHPSk0diJxdfm
 EyD17HCes08f17QCtn49kiq9h+TO5Lan6G3eHuM0YamoyQpIAIo3Yq5cY
 AmMVvlH8rzlp6O8j0OsrabKfK8y1efp5MdtXrJNA7S/KV7ADSvCl2ME4T
 G+ZYNRw/9feUXiNM/tKYX7uopdpNWPSdOVvAxADfS2oX90NEHDHXUuNuz
 n6OmKxcxqXE5r2zuuSr5WAFsRckLs6YXUDoljrjSETSLIO60RSEdmDZR5 A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10441"; a="291148034"
X-IronPort-AV: E=Sophos;i="5.93,242,1654585200"; d="scan'208";a="291148034"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2022 21:16:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,242,1654585200"; d="scan'208";a="696625312"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by FMSMGA003.fm.intel.com with ESMTP; 16 Aug 2022 21:16:50 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Tue, 16 Aug 2022 21:16:49 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Tue, 16 Aug 2022 21:16:49 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Tue, 16 Aug 2022 21:16:49 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Tue, 16 Aug 2022 21:16:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=L0ENT+j4JbuPkr1w7lw6qG2FJJctaVDs/b1Ttm6RswPlQH6zQUPt5cEFZ6s6kKCbe9YEghqd2wTzii6qLAILo6ec0kB3Z48x02Mx8zILFzSmviwDCWqeT500PN4gd8CJbeCm2+07FmisKQ+ieRjcBtKaJ0Cyey9qNHI5RAjZufF/YFPk6lNLAsKwUWDn27pn5KNSN47VqEBD7gDGNLIH660qnJws7/dz9zw5Hhod1nRAejRa5HycTCG92VvV9HP43chaoIhv2euF0+URUFLgx2w38HfmlKVxpZlnVvK9mGUmgB2wrzMcqKGg80pb8zC6AWvqIv4Ch2zC7XBAzMCNpA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aS+v6LE8+4T1+AvB5a4A/1ZFoC6bvZ98XlOFXdIwjuE=;
 b=i92ijswPPawJ7uXdUOmVtTPlEeNN47w8bTJEk80qrs1DEdU4Q+JrF0JLN5II6EcQDPCdNyUnhtdSMSGNTFAOpo0+6LF6TXe3XIAZfCdfAjCST35YP5nP9IGkIug74b/KAZR76TfHMXD7TY1OVYKq49KCLIVFN0sqz5gASDqac9R9+vvclNBmX8ci/xfZ37w1ZpSBCKtwJ6fZEBJ9bEgxdYAA7pUzRMfZBuQ1/4oA8b9DaPS5DMyaGpyyvAZ0zCUKPQIVummdZBrjwjMynNBHkhQYSaltf3FXA5VcuKVnge1YvZNrF/0PetEAHZDV2HTNDP/juMgzeR7qufSd1on6fw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by BYAPR11MB3623.namprd11.prod.outlook.com (2603:10b6:a03:b5::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5504.16; Wed, 17 Aug
 2022 04:16:46 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::a012:82da:5edb:513]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::a012:82da:5edb:513%7]) with mapi id 15.20.5525.011; Wed, 17 Aug 2022
 04:16:46 +0000
Date: Tue, 16 Aug 2022 21:16:43 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20220817041643.jfyuaugrlok7w3mu@ldmartin-desk2.lan>
X-Patchwork-Hint: comment
References: <cover.1660230121.git.jani.nikula@intel.com>
 <32be38d0fcf6dd695b1488c0b78fd6fc09280d62.1660230121.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <32be38d0fcf6dd695b1488c0b78fd6fc09280d62.1660230121.git.jani.nikula@intel.com>
X-ClientProxiedBy: SJ0PR05CA0134.namprd05.prod.outlook.com
 (2603:10b6:a03:33d::19) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 5184b351-6c94-4ad5-1593-08da80074c45
X-MS-TrafficTypeDiagnostic: BYAPR11MB3623:EE_
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: CzVHCP8Bh1uDUGFLMxWIaZEt9qQHBWvu61VeOJHdj/pT+AsPsawpK2NrqkentI/egxso2FIa/nddxuTGWBNPRBB/ige1bGjk8u2g+rCjNQ3DJsVhw14+DR7GdVqOe2AwobaftrsjFJerECYAtukosYtWdK8ycDD7/7E5PNqSjLAGwCThOaFk6ZYVSZvIZMwBWRYvKMnB1pgdYeenK8WNPswmCR2nRRzy/+aXfhb++NFvf4MMFQYdbf8QECiDvkecv6HK+AfZzruap/P8kBJgJn6yG3F0ssxadCh+Rr3XA6NVzQzOu+F8Nj1rHntMa/Bk11S8hJusiG5LeSfH/79m28mJzcd6lK8dyk1R+0KJUjIw71qPMf9OofFgkk/AWkyePxw+rH8ScVpl8sV453PGNZxmlaZMbww9G0hyxDx4x71sas3KFrxSnxm7svHiuPEZ+HywsuHDXpW7GXQUxkWhU+UsPmYUkWo4sDcWQL9CpaV1PkZ7utRO/1NH+Gr4ZNvpta+/OrSns/jr8YghCLmlHeyrCGS7neCkhb8nYFGVrmSzpdlMMmqxHnArXsUmxJZzKJ9DvXjFAG6Wp/RewM5LvSlSQCDh1duqpZdmFFobt+Lx+ueChREAXD7bXRhDpxwL5Z2QivXqAXlwpNo3jw1KLimGzBSOMBy/PINw5WNkk2EI0Au9irgSRFNDQ0dIRv32Yq7ek8aAa+RyQLgtEXtfH6wYHos+IUTHNld6jvJ++XD+31+fX2QT0ksuhe+8FDU8
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(366004)(376002)(346002)(136003)(396003)(39860400002)(6512007)(6636002)(9686003)(82960400001)(2906002)(26005)(41300700001)(6506007)(6486002)(6666004)(83380400001)(478600001)(6862004)(5660300002)(8936002)(186003)(86362001)(8676002)(4326008)(38100700002)(1076003)(66476007)(36756003)(66556008)(316002)(66946007);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?mNN+u/w5Lk3QbqpWmuTSLXuIs+pAKCZ72adesrgApIc/kVtPUpmyB3mB/4DW?=
 =?us-ascii?Q?AAglWVNTl7gUkLEUr3ECbqO83nT6GCxksgPRjEwtzn4VqjnQvdvJ2gxIBljN?=
 =?us-ascii?Q?zGa52YJRVa5k3+zOXu9pl5aKiQ1egDrPZKefq8/uzFj8N4wXKubBpVVDCWwr?=
 =?us-ascii?Q?AE185ZRaN5eogveYwstB+revUwyOgMCja26xJ42ygq0vnCCF+GOD316ZPh23?=
 =?us-ascii?Q?bTTWTHA0NixZqrY/QJFI8MG+4XUZRqVDRUq4VwzQ6Yb6zd2vyppwu5y9lyTP?=
 =?us-ascii?Q?KTDmrVYS1MogmM5TKW9xKWeKcV0PYI7y4jP2VMh4rBvTK5/e4WcYXmiGr/5T?=
 =?us-ascii?Q?+Byx5lvmQunDyoI8pKf3QZ1Ysi2Yz15IhgKDceQN1rSsa2kHJcNtheonHM8V?=
 =?us-ascii?Q?9q8mSkK53m9xhFNjC8QVq3kV6oVdJ4zhT1b8+VOlm0MzKvGL7bGqYcY6w9ta?=
 =?us-ascii?Q?1qezWIa9crTkgFkklqmn1KI6ZaqBKW0rwZ9yIid6zo3VQlFU0w9sgLgTPS2U?=
 =?us-ascii?Q?qUbNdvWQylIMaE/RCGvd6OR9Sa1snqhO6PEi68zhQwN693ayOxGhgPxZ2kDb?=
 =?us-ascii?Q?qvH2qlEmdYw4VD/ubUG726ZZaRMLkHduQp5LE/KEHmDtOE36tJvnig985NNg?=
 =?us-ascii?Q?UGn15OIC1aEXwtudLCxzzYTC9jz27FHNpexGDzpwEhGWZDVWr0+pQ7O36P7w?=
 =?us-ascii?Q?3aI54/cqHcidD+WaXF3v9S+lv7AuJQIZMvXmuD5k3e5oeAsHN5OlnKImhLeO?=
 =?us-ascii?Q?lW//DZAOyM76rD4X/4/e4CY0cvhvF/r0+Yi+5zxrY+p5iqV15o25y1sWQq5D?=
 =?us-ascii?Q?BILhAIOMKGxy5JWtwJ9P+6/+CX4K0trijV7kLCamFg8Bbd0a9Cjq9WdkzfE3?=
 =?us-ascii?Q?YF623nw43qJAFJnCLOZD4p5TP9jbHacFeJHnF3thATgYvNAdWZWrnC5f+nXm?=
 =?us-ascii?Q?7AXCTgD0n9VORCplIjHNKh5m5yYDxnpufBKJdAWioOfk0zDgL6KT8pS2qhPh?=
 =?us-ascii?Q?RekdX/GTyvGM2fsO1fBZP5XQqXCqgXGPhAqJp8SW63wKRjcWnfmyY3/aMwuK?=
 =?us-ascii?Q?cf4t1OMVR18YNTuW8Tt2WlEI8VmoX/M7wqfpJClZQeLV9Pu59Sfy0M91U1JO?=
 =?us-ascii?Q?pcdwKBWKrFNoy8DeXA5XMIgIhvV7DcX6eyaLs/Fon3C80LGuOQgsMIquIn4A?=
 =?us-ascii?Q?ckoCrYO8CJWNtF9i2i2Abh4CSMP4bt/qbDrWmpovAvzl4i0jpQwUgjhK4BEr?=
 =?us-ascii?Q?Pd/WTlHasVn8urN+JeZIc2zeuOfabmEx8kbiZOLhupGEBDfIEbhK3tgylbmj?=
 =?us-ascii?Q?4jDPzwRvaYFB2bN95tWl6Xzkm8tLRt2oU9I8vD+xqg2Mqr/na7I5DLKUoh8+?=
 =?us-ascii?Q?T6+4IZgr2X72FVj85J90g+lWlY37je2El3gWFg9AroAdn+YYd2XaaQ9MT/kL?=
 =?us-ascii?Q?bENhaSXAl/0mtgtbweT7GCj9Rtx8ugk9JTEIrXnvQ1tyUf7licBv/LhiqXOb?=
 =?us-ascii?Q?r1e5gJ72c0dAILWQ3/gUbFt1TuL8NxH4Y0ZmR+tsp3/0C0Um81H1pdv8YGJs?=
 =?us-ascii?Q?vqEnBAaL6q5v0p1rK1GMzDx3YM2ilra/6dgIkXG0pkTlkaJewk88zFAhx0S5?=
 =?us-ascii?Q?Dg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5184b351-6c94-4ad5-1593-08da80074c45
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Aug 2022 04:16:46.0474 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 8J7F3ZQLo8wUMzv204bNwe263r9DFAlolZFIxo1DNA64VZl7HLVurLLGJHvIjExz9dprm4O+QNM63qcqEB8zTk/TNm7HFo0SGVSA9xfHd5o=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3623
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 13/39] drm/i915: move dpll under display.dpll
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

On Thu, Aug 11, 2022 at 06:07:24PM +0300, Jani Nikula wrote:
>Move display related members under drm_i915_private display sub-struct.
>
>Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>---
> drivers/gpu/drm/i915/display/icl_dsi.c        |  12 +-
> drivers/gpu/drm/i915/display/intel_ddi.c      |  24 ++--
> drivers/gpu/drm/i915/display/intel_display.c  |   4 +-
> .../gpu/drm/i915/display/intel_display_core.h |  21 ++++
> .../drm/i915/display/intel_display_debugfs.c  |   8 +-
> drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 112 +++++++++---------
> .../gpu/drm/i915/display/intel_pch_refclk.c   |   2 +-
> drivers/gpu/drm/i915/gvt/handlers.c           |   4 +-
> drivers/gpu/drm/i915/i915_drv.h               |  21 ----
> 9 files changed, 104 insertions(+), 104 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
>index 5dcfa7feffa9..49357e4ed3be 100644
>--- a/drivers/gpu/drm/i915/display/icl_dsi.c
>+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
>@@ -641,13 +641,13 @@ static void gen11_dsi_gate_clocks(struct intel_encoder *encoder)
> 	u32 tmp;
> 	enum phy phy;
>
>-	mutex_lock(&dev_priv->dpll.lock);
>+	mutex_lock(&dev_priv->display.dpll.lock);
> 	tmp = intel_de_read(dev_priv, ICL_DPCLKA_CFGCR0);
> 	for_each_dsi_phy(phy, intel_dsi->phys)
> 		tmp |= ICL_DPCLKA_CFGCR0_DDI_CLK_OFF(phy);
>
> 	intel_de_write(dev_priv, ICL_DPCLKA_CFGCR0, tmp);
>-	mutex_unlock(&dev_priv->dpll.lock);
>+	mutex_unlock(&dev_priv->display.dpll.lock);
> }
>
> static void gen11_dsi_ungate_clocks(struct intel_encoder *encoder)
>@@ -657,13 +657,13 @@ static void gen11_dsi_ungate_clocks(struct intel_encoder *encoder)
> 	u32 tmp;
> 	enum phy phy;
>
>-	mutex_lock(&dev_priv->dpll.lock);
>+	mutex_lock(&dev_priv->display.dpll.lock);
> 	tmp = intel_de_read(dev_priv, ICL_DPCLKA_CFGCR0);
> 	for_each_dsi_phy(phy, intel_dsi->phys)
> 		tmp &= ~ICL_DPCLKA_CFGCR0_DDI_CLK_OFF(phy);
>
> 	intel_de_write(dev_priv, ICL_DPCLKA_CFGCR0, tmp);
>-	mutex_unlock(&dev_priv->dpll.lock);
>+	mutex_unlock(&dev_priv->display.dpll.lock);
> }
>
> static bool gen11_dsi_is_clock_enabled(struct intel_encoder *encoder)
>@@ -693,7 +693,7 @@ static void gen11_dsi_map_pll(struct intel_encoder *encoder,
> 	enum phy phy;
> 	u32 val;
>
>-	mutex_lock(&dev_priv->dpll.lock);
>+	mutex_lock(&dev_priv->display.dpll.lock);
>
> 	val = intel_de_read(dev_priv, ICL_DPCLKA_CFGCR0);
> 	for_each_dsi_phy(phy, intel_dsi->phys) {
>@@ -709,7 +709,7 @@ static void gen11_dsi_map_pll(struct intel_encoder *encoder,
>
> 	intel_de_posting_read(dev_priv, ICL_DPCLKA_CFGCR0);
>
>-	mutex_unlock(&dev_priv->dpll.lock);
>+	mutex_unlock(&dev_priv->display.dpll.lock);
> }
>
> static void
>diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
>index a4c8493f3ce7..23c8287b0262 100644
>--- a/drivers/gpu/drm/i915/display/intel_ddi.c
>+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
>@@ -1425,7 +1425,7 @@ hsw_set_signal_levels(struct intel_encoder *encoder,
> static void _icl_ddi_enable_clock(struct drm_i915_private *i915, i915_reg_t reg,
> 				  u32 clk_sel_mask, u32 clk_sel, u32 clk_off)
> {
>-	mutex_lock(&i915->dpll.lock);
>+	mutex_lock(&i915->display.dpll.lock);
>
> 	intel_de_rmw(i915, reg, clk_sel_mask, clk_sel);
>
>@@ -1435,17 +1435,17 @@ static void _icl_ddi_enable_clock(struct drm_i915_private *i915, i915_reg_t reg,
> 	 */
> 	intel_de_rmw(i915, reg, clk_off, 0);
>
>-	mutex_unlock(&i915->dpll.lock);
>+	mutex_unlock(&i915->display.dpll.lock);
> }
>
> static void _icl_ddi_disable_clock(struct drm_i915_private *i915, i915_reg_t reg,
> 				   u32 clk_off)
> {
>-	mutex_lock(&i915->dpll.lock);
>+	mutex_lock(&i915->display.dpll.lock);
>
> 	intel_de_rmw(i915, reg, 0, clk_off);
>
>-	mutex_unlock(&i915->dpll.lock);
>+	mutex_unlock(&i915->display.dpll.lock);
> }
>
> static bool _icl_ddi_is_clock_enabled(struct drm_i915_private *i915, i915_reg_t reg,
>@@ -1720,12 +1720,12 @@ static void icl_ddi_tc_enable_clock(struct intel_encoder *encoder,
> 	intel_de_write(i915, DDI_CLK_SEL(port),
> 		       icl_pll_to_ddi_clk_sel(encoder, crtc_state));
>
>-	mutex_lock(&i915->dpll.lock);
>+	mutex_lock(&i915->display.dpll.lock);
>
> 	intel_de_rmw(i915, ICL_DPCLKA_CFGCR0,
> 		     ICL_DPCLKA_CFGCR0_TC_CLK_OFF(tc_port), 0);
>
>-	mutex_unlock(&i915->dpll.lock);
>+	mutex_unlock(&i915->display.dpll.lock);
> }
>
> static void icl_ddi_tc_disable_clock(struct intel_encoder *encoder)
>@@ -1734,12 +1734,12 @@ static void icl_ddi_tc_disable_clock(struct intel_encoder *encoder)
> 	enum tc_port tc_port = intel_port_to_tc(i915, encoder->port);
> 	enum port port = encoder->port;
>
>-	mutex_lock(&i915->dpll.lock);
>+	mutex_lock(&i915->display.dpll.lock);
>
> 	intel_de_rmw(i915, ICL_DPCLKA_CFGCR0,
> 		     0, ICL_DPCLKA_CFGCR0_TC_CLK_OFF(tc_port));
>
>-	mutex_unlock(&i915->dpll.lock);
>+	mutex_unlock(&i915->display.dpll.lock);
>
> 	intel_de_write(i915, DDI_CLK_SEL(port), DDI_CLK_SEL_NONE);
> }
>@@ -1824,7 +1824,7 @@ static void skl_ddi_enable_clock(struct intel_encoder *encoder,
> 	if (drm_WARN_ON(&i915->drm, !pll))
> 		return;
>
>-	mutex_lock(&i915->dpll.lock);
>+	mutex_lock(&i915->display.dpll.lock);
>
> 	intel_de_rmw(i915, DPLL_CTRL2,
> 		     DPLL_CTRL2_DDI_CLK_OFF(port) |
>@@ -1832,7 +1832,7 @@ static void skl_ddi_enable_clock(struct intel_encoder *encoder,
> 		     DPLL_CTRL2_DDI_CLK_SEL(pll->info->id, port) |
> 		     DPLL_CTRL2_DDI_SEL_OVERRIDE(port));
>
>-	mutex_unlock(&i915->dpll.lock);
>+	mutex_unlock(&i915->display.dpll.lock);
> }
>
> static void skl_ddi_disable_clock(struct intel_encoder *encoder)
>@@ -1840,12 +1840,12 @@ static void skl_ddi_disable_clock(struct intel_encoder *encoder)
> 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
> 	enum port port = encoder->port;
>
>-	mutex_lock(&i915->dpll.lock);
>+	mutex_lock(&i915->display.dpll.lock);
>
> 	intel_de_rmw(i915, DPLL_CTRL2,
> 		     0, DPLL_CTRL2_DDI_CLK_OFF(port));
>
>-	mutex_unlock(&i915->dpll.lock);
>+	mutex_unlock(&i915->display.dpll.lock);
> }
>
> static bool skl_ddi_is_clock_enabled(struct intel_encoder *encoder)
>diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
>index 7db4ac27364d..efc0fa648736 100644
>--- a/drivers/gpu/drm/i915/display/intel_display.c
>+++ b/drivers/gpu/drm/i915/display/intel_display.c
>@@ -1487,7 +1487,7 @@ static void intel_encoders_update_prepare(struct intel_atomic_state *state)
> 	 * Make sure the DPLL state is up-to-date for fastset TypeC ports after non-blocking commits.
> 	 * TODO: Update the DPLL state for all cases in the encoder->update_prepare() hook.
> 	 */
>-	if (i915->dpll.mgr) {
>+	if (i915->display.dpll.mgr) {
> 		for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state, new_crtc_state, i) {
> 			if (intel_crtc_needs_modeset(new_crtc_state))
> 				continue;
>@@ -5839,7 +5839,7 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
>
> 	PIPE_CONF_CHECK_BOOL(double_wide);
>
>-	if (dev_priv->dpll.mgr) {
>+	if (dev_priv->display.dpll.mgr) {
> 		PIPE_CONF_CHECK_P(shared_dpll);
>
> 		PIPE_CONF_CHECK_X(dpll_hw_state.dpll);
>diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
>index 748d2a84e20e..f12ff36fef07 100644
>--- a/drivers/gpu/drm/i915/display/intel_display_core.h
>+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
>@@ -12,6 +12,7 @@
>
> #include "intel_display.h"
> #include "intel_dmc.h"
>+#include "intel_dpll_mgr.h"
> #include "intel_gmbus.h"
>
> struct drm_i915_private;
>@@ -24,6 +25,7 @@ struct intel_color_funcs;
> struct intel_crtc;
> struct intel_crtc_state;
> struct intel_dpll_funcs;
>+struct intel_dpll_mgr;

if you include intel_dpll_mgr.h you don't need the fwd declaration?


Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>


Lucas De Marchi
