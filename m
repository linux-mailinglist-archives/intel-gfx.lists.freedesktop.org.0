Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 590A459683F
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Aug 2022 06:42:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A1DB10E5D9;
	Wed, 17 Aug 2022 04:42:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7939410E5C3
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Aug 2022 04:42:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660711321; x=1692247321;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=kYp+cr1JmICjiqt8sC7J6c88zPABaJJ+cqBTORNb1ZA=;
 b=YGUxSknML5JG3ZSUb0jHDFF9Cs5RzOs1zG/Gma7bf4SdRiuzu1LOQ5lO
 3CuaWoIqqNqpkYnRdUvzOl0GTeJgr+D1JO4yNl1vkt81zh54DJ6wLm6FN
 qL60Ot0XbQ2cnt4NbwOjvcS1RP/KTjGwGLdY8BB9hwdo0J08rmU4nHJ3G
 bLHn3VrKBjBxUjbf0zEhw37ccTbDJPaQfM+fkv8avX7SY7UeYA/Z62DTR
 AVW68tcqazMbquAj7R7iU2a3TaboB449Cc5u2Fq5kbzLkQsshBXNqi3GH
 o846rrgxJWIAHbgAjNAbyC5VTA9Cef3s2gJ42/u5ftl1Mk6rcADX+m84Y Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10441"; a="354142668"
X-IronPort-AV: E=Sophos;i="5.93,242,1654585200"; d="scan'208";a="354142668"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2022 21:42:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,242,1654585200"; d="scan'208";a="583603021"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga006.jf.intel.com with ESMTP; 16 Aug 2022 21:42:00 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Tue, 16 Aug 2022 21:41:59 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Tue, 16 Aug 2022 21:41:59 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Tue, 16 Aug 2022 21:41:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WeG9yYAI07b+nSR3d8TPSX5eKi4Uf1QFoUNEGPvthJnPm1LWlnpsEw+SaRoFbT0NLFpzj3Sh5QE8T+YOio3Nn3YAx/IioP1DwrHjpvnhcbl6xUhPInBHFx+H5vzefk+1+ba3DFmVmF0SMxqi4iMhwY0dmWFyOh1jAl3Uh0KEnO+LkW9cTlEjtlBouI4MytQU7wp/UF8UAfs43LAQN2ZzKCaaM4MQOm53HpsmmxIITaYp2fJTuZmqkVW4mpbgjUgRzCfkQ8ohIfVUbS/KFuLnD/4refhT79i1YmO5SLgqHMUvitP/29ziEjZUrE6Lt7+M4mFN92gqUO/eZnzglgjA9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wCBnXhGecGln6rjsfx3Sy9n7mv1GDTd4z/R5Z9PwzTY=;
 b=WDO+EnGyqTdXi8Xju2853UtSb6wwfk+Y/iAqlUplXBxcQ//sd18Z/it0eC2yE0R8aywW4vTAz0QlLPiOoLDkHxtyoxOv2GaryEGVxoPjfwuoGtuF//s9aVBrHLSHNf4/Oboq1vWvKijXZG/bTG4mvc/JcfMCxRG6UGqamvte7KHgFBTg6Elb/qhnKVTwI4EKE85OsBk7XLn+fbPF+DzOJOHvcCpGNV3/giDxo6NEJFVKfqbfueT1vZxKDXKwiVZ2ZRiU1zcRGwdWVslMZmQ7ImMxYkbglEE/R69D6irMOm3DtLeEUAnhRCQo4voVM7jepsIUVLKAzTzH9dLJjKG2aA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by PH0PR11MB5658.namprd11.prod.outlook.com (2603:10b6:510:e2::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5504.15; Wed, 17 Aug
 2022 04:41:57 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::a012:82da:5edb:513]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::a012:82da:5edb:513%7]) with mapi id 15.20.5525.011; Wed, 17 Aug 2022
 04:41:57 +0000
Date: Tue, 16 Aug 2022 21:41:55 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20220817044155.o3na6oe4kwllk5xz@ldmartin-desk2.lan>
X-Patchwork-Hint: comment
References: <cover.1660230121.git.jani.nikula@intel.com>
 <47ed350de67fda6120778f7159b305068df1ad30.1660230121.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <47ed350de67fda6120778f7159b305068df1ad30.1660230121.git.jani.nikula@intel.com>
X-ClientProxiedBy: MW2PR2101CA0030.namprd21.prod.outlook.com
 (2603:10b6:302:1::43) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: caa350b1-6d1f-45c1-9ae7-08da800ad14b
X-MS-TrafficTypeDiagnostic: PH0PR11MB5658:EE_
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: t3FYSJ6b+eX0lcPJVRhkbQfIpiHnSdHyQ8NjNHtvOjrFBMAWs/3FXaKUwx87zMr+4mXxE8hNlpd7xVbvPVZcYnnb58MBocBLbecHrrDy5sj8VWliaP28bgw6zk5i+9LQSBy9phCZzpSOS1IQi5nMwB81w25hHePaO0ZtixFV+IgQYzCz/JJg/lhcE2KRZmX/DpPeyGaQu274ZfyDYLA5CgdvOaolr4QnqO0D51WndCdZYAOSXrXgkDtOWjLgMdDfFWxrbaUW+x0zrJ+YHnBvVdFrZ+R2mkgw2D809ixoLAxn5urcSl9ZDbaaV+2dmGAVuf9D6JJg2U6rOYtKndYJnQKrTcWJIvoYBdfZHDxrIgSB/7AHt4fyGE+R0aijycL7mCl8mOqrsO8r+PcfVJNs1Rmq/QO5QbiX7iu2ElsdobYra9QZaMDM58/AY/1fxiV34Y8RQxC6jkeEMctPaWaZKkMEtohBZ49C2Etkt8H4ZNp2eUfzbrJVhKF1mNul6dh8Tvzj2X3d3NCArUaOY5LVzR9QxMD5G6GjdWcoYnXtUw2xsgmBeJZ8UD/Ck3pBI3zloyrgHLXG7bHcw8hx2J+IseESl8oA0M2iT6DHGz/vJIjqahWPAv69B+uiECJtGSFdtOWmNqGYNsbccknKmpu2lX3iPi3+e9GPLOKkDVDGMUlhtzEX79dCcP8cDUgfu3T5k1l8ReeiUAlas5kD5Yv2ULLw65dscdqQpbIr9Lz1raQxt9pPYAS7ytUdK464UGnF
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(366004)(136003)(376002)(396003)(39860400002)(346002)(66556008)(66946007)(66476007)(8676002)(4326008)(6512007)(6862004)(8936002)(2906002)(41300700001)(26005)(5660300002)(6506007)(478600001)(186003)(86362001)(1076003)(6486002)(9686003)(38100700002)(82960400001)(316002)(83380400001)(36756003)(6636002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?5Xzao8z9WMx4oegyC6rE7/sFgvPfj0GzSBuLxvoG/vWfSgoZKwYqpxXWR7HS?=
 =?us-ascii?Q?lBfCC6JtC7neX9OvLIIdJFAwebX8f7RUhRo3W8pudibzEbqThTVUArOVo9jc?=
 =?us-ascii?Q?7xuqtxwJWlPy1FcXfWdmKR14nQGwsDmI3kmaCmI5z6TPjTdKHErn6ejjNlvo?=
 =?us-ascii?Q?mhkocgSwqum2k+orMkLsI98eYuLX/oucDvP2mkMv45OduN0PXBAIhtdjCwqb?=
 =?us-ascii?Q?AF1OB8pz5VDVsSHKShpat6W+1bdfrBIjtIYNA2rBbOT4oBdEk9ewVGyR2Yv1?=
 =?us-ascii?Q?AJZ07ZdFdVeSgMemkqmzuRzgBRmpi/a7VE5I1hLWzoxuq5u79J3xPsTvUZgV?=
 =?us-ascii?Q?sW6b46DOmRjGg3DGCY9P2eSjUrXmZhJpU6B5v5gLl8OBZoDSDqoCiYV9FYYx?=
 =?us-ascii?Q?Dwe+q7mD16yNF5IuiMozxJlsHvlO1RWuhKYFuju2GfVoPs8FgHWZ4mMYHXvn?=
 =?us-ascii?Q?TGzD+3hXMbW/oJP/t7raQtsQPgsOjVXygqPbdKpeiMgd6AFYiAKa9af2LU8z?=
 =?us-ascii?Q?VOI2P6nyOK+SG4++xXXAOKiAS9cJrNXyHrPELAn5cGZOXpFGKLwXoncVv/yJ?=
 =?us-ascii?Q?8t2HrAo15NY6uPM0sZ1cwSTF3y0WgADsnZdix7yF92fMP+dvAdH2Xk5Oeo6D?=
 =?us-ascii?Q?134zygHM7CfjtQhCv7NPZXGMtUMMJR/+n6nT1zD6HIsLO1/mEHu7eUd3uLmq?=
 =?us-ascii?Q?XGZzMlby3Zb/kL1mCSH6FmCvhCJp7lq8V814IDooc88bCh3ZeuU+LKyHPyjT?=
 =?us-ascii?Q?MZrJyXQJn53YlglX4SLbM7tWab6MZaKsmZ0m2bZXlrKO9vxOBG5iuC8efgJk?=
 =?us-ascii?Q?iHMIfucuNvbqaOMgvZVBEP0G35EPvXajh1ZyKsT+TujNtzwakky44OEtTc4n?=
 =?us-ascii?Q?RI3LZZGBK41PD7xCKPxRSkvnZSg+uiKW8yZFgJgM54qJvYeSSzi/SagpKn9t?=
 =?us-ascii?Q?rW833ns2OtF8ZofBPNnEpaBYn5c1gWrZzCuu8DbRR3NajYMkNSNJFuCdtI+z?=
 =?us-ascii?Q?mN2LdXzcm13l6/cxEqrBN0ODudEff76TcDoBrDEh5al9GEO1JmEW7jn5QeD0?=
 =?us-ascii?Q?b156Q4Z6Ar0TzyLfj6XBOJP4Igr7Xe+aB3hlyQ4taPjKfDL6RXa7bRDFQaUd?=
 =?us-ascii?Q?ifCM8bWMsqoynDY8a91GSsb3xNoa8oTOqQLWjYPJcSl5rcGXfG05D9AIodzo?=
 =?us-ascii?Q?o2zetV87/ZsXdZvQkOLhGcyCQpU8hASE+fDMJ+uc54HBG7gR0NO4gCg4Cxbg?=
 =?us-ascii?Q?8YQ7kAOCW9Czh6AzAJ+YEIEniC4uOprD0r9NSpivPvNHRLsXuJnqRq70G/9j?=
 =?us-ascii?Q?B9p5B+9xwvIflVqOuI/W0fQV19chhVF3oAkig47MBU7cCgL2ndSilFZFgHcX?=
 =?us-ascii?Q?sDC6k2xhqm5qE2zwPQMO09pTnoPtxLUJVT83NKGW613QXwI0MEySksLWrTSl?=
 =?us-ascii?Q?5Q/14bKMJXWaBJIaJs4+QM72s3FB1SRDBbz1n1okTF/UG8Xd50USQHpYg/kB?=
 =?us-ascii?Q?8tnqD3+DJzcC94Ks+CgMo0/QpNUCVef60dPXEh8uyKrDE9KsO7/YBZZTElSe?=
 =?us-ascii?Q?/jh9ChAc5vhq/RSsfJX3TID6T6uqO91D34FkyzltAED5Th2AQY6j2BeV68tv?=
 =?us-ascii?Q?Lw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: caa350b1-6d1f-45c1-9ae7-08da800ad14b
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Aug 2022 04:41:57.7329 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: r2wnmXn+gdL4oydToletxnK18rhje5VHhH9bphirYqsCaCxYi5/pjbTZTTAS6+D00LGvZomapAksdy3w9fCFoiRok7wNMVviE8zUGsKpNrY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5658
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 28/39] drm/i915: move and group power
 related members under display.power
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

On Thu, Aug 11, 2022 at 06:07:39PM +0300, Jani Nikula wrote:
>Move display related members under drm_i915_private display sub-struct.
>
>Arguably chv_phy_control and chv_phy_assert could be placed in a phy
>substruct, but they are only used in the power code.
>
>Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>---
> .../gpu/drm/i915/display/intel_display_core.h |  11 ++
> .../drm/i915/display/intel_display_power.c    | 112 +++++++++---------
> .../i915/display/intel_display_power_map.c    |   4 +-
> .../i915/display/intel_display_power_well.c   |  56 ++++-----
> .../i915/display/intel_display_power_well.h   |  12 +-
> drivers/gpu/drm/i915/display/intel_dpio_phy.c |   2 +-
> drivers/gpu/drm/i915/i915_debugfs.c           |   2 +-
> drivers/gpu/drm/i915/i915_drv.h               |  20 +---
> 8 files changed, 110 insertions(+), 109 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
>index 066e7ee0b8df..19abdd05d413 100644
>--- a/drivers/gpu/drm/i915/display/intel_display_core.h
>+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
>@@ -16,6 +16,7 @@
>
> #include "intel_cdclk.h"
> #include "intel_display.h"
>+#include "intel_display_power.h"
> #include "intel_dmc.h"
> #include "intel_dpll_mgr.h"
> #include "intel_fbc.h"
>@@ -326,6 +327,16 @@ struct intel_display {
> 		struct mutex comp_mutex;
> 	} hdcp;
>
>+	struct {
>+		struct i915_power_domains domains;

rename the struct to display_power_domains?



Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

for all patches til this, expect patch 5

Lucas De Marchi
