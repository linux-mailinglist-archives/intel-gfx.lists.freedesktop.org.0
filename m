Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A50FB6A8855
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Mar 2023 19:10:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C80110E254;
	Thu,  2 Mar 2023 18:10:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 99FF210E18C
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Mar 2023 18:10:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677780645; x=1709316645;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=HkQDbE7vafFHj9jw9AJ8oFQlbD9TXfHXBzu11wYKl1g=;
 b=D5ZegFyLbrUdYOTnhrGFX1zsMisWw+jLf7+DfGXrLdNQ+9fx5EGBEwbE
 eM3vPULz+Ep2qz+d3oeyqcUcAvS6w+8GOf8k2srPahSzBWlSTz4ASxU/H
 gid892a8d1SNeLExxStv9VXaxS4YymyoAKHeV+NGJ59dnS7DhRHMeJT5q
 GiLPyfCziE6EAMa7PhA61D0zT9CAWfhiM+rvPQsTKzDGSq0tdnghzrWX+
 uM9zXVtqCD3lnU+CxYZdxQ7+JmGLmWts2aIQ8mZGpbsu2OKqfo900HF2l
 GueQqyPMplT5AxeeqLQ38usKDMxblIX4NreyxTcs6x1lrg5oESSXdh5sI Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10637"; a="314465009"
X-IronPort-AV: E=Sophos;i="5.98,228,1673942400"; d="scan'208";a="314465009"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2023 10:10:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10637"; a="625043141"
X-IronPort-AV: E=Sophos;i="5.98,228,1673942400"; d="scan'208";a="625043141"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga003.jf.intel.com with ESMTP; 02 Mar 2023 10:10:44 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Thu, 2 Mar 2023 10:10:44 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Thu, 2 Mar 2023 10:10:44 -0800
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.46) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Thu, 2 Mar 2023 10:10:42 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TvZhqcA6lhznRMSSQfddck18rnr+UXVcibsHTCWw8WlvdL/cL+h+30gYngUa2ysn0tQVwFXjf87dtG6Vu8rD7CWo1ykd3IDShOUb1N85QVHTXVzBR4vuQd6SBmtX9h2X/OKd3VEIMxIUJwQjm9OU0yTIKygUyHin7D8rV7K/TgQ2TvUvDDnrgUd6XmttXqJK9naRECRcnLdxuuPxNfAIGDiH732XgnKYWMmePcJWTTg5CLtWzm5L8pADto2icslgq2I8/SJvqNKagqv7c89SOUNVH4Clolmp6uDjOZk0RlaCQe7EfsyNQ+hHZTZp9lf0R1R1NFlBDtpxpMzjG47QOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1Hz4fxonO+wZw1q6JrKfF8l+A5Tkr60/PZHnneBxHoA=;
 b=fVHN0DlUahknQmrz3dMpY003yuTEfc/ZaoBwpDCMgfVK5WGjhm9ndRL52uLiHLT4AHzrnqIAhBMQfqVrkJcLzRnFJSCFEBb7XAtbZfCCl8Ui0q0sV7/YC7tOYCBOY7Qsrdh9Kh0Rx2rtyL9497PjS9+UsA8iALXuYvanF6okcI39KF0iUPL/mYVtUpcOVONn4XnuSVPAmeayMGFotpYwmGjI7Lc6Pe2lgmqti9v+RHYpqN2nQmxZ9hDSKBEGHnKsVA9Ske2b1EbADYtLkaBRCTCBJQSgq1FxGk6qgYFlL4fD4MnICoufQGYtj0jrWAlFeaCIESkrFDeYZFwFwTN4aw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by CY5PR11MB6186.namprd11.prod.outlook.com (2603:10b6:930:26::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6156.17; Thu, 2 Mar
 2023 18:10:38 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::3bd5:710c:ebab:6158]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::3bd5:710c:ebab:6158%8]) with mapi id 15.20.6156.019; Thu, 2 Mar 2023
 18:10:38 +0000
Date: Thu, 2 Mar 2023 13:10:34 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <ZADmmjJjXWNSHKIh@intel.com>
References: <cover.1677678803.git.jani.nikula@intel.com>
 <f11cbbdb5a5c8961fcae0b3f6c87860ee00f8c26.1677678803.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <f11cbbdb5a5c8961fcae0b3f6c87860ee00f8c26.1677678803.git.jani.nikula@intel.com>
X-ClientProxiedBy: SJ0PR05CA0100.namprd05.prod.outlook.com
 (2603:10b6:a03:334::15) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|CY5PR11MB6186:EE_
X-MS-Office365-Filtering-Correlation-Id: ca295852-cd6e-4e6a-4fd4-08db1b496d3c
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: G+mVyRvN+QB+ez3cTHEXjxpmG4TU27M6VFP+SHgrMeYMA+s3tSZqhDau189I1jv46T7HK3gxzrnnnLn+JKTWM0Ni3nELbcjCSBZ6U3SHdG9MalkxprCRpg0O0yN8XowVsNLGSVF2Y46lHC5XjbNvEJyz8ySV9BS/553t82nCKTXof6MydxGKwshEkoI6S82H5Ia/sAwsPO7KuIfeekpUiuYrVKfR5JjpSzw/oHzIGvJKkgZhYoSWG0XzPFjbXW8QXlDDkmOwmPZ8Scajz77iIgwfMB+OMZnVNz8Ztu0T1g26Uap2bOfuaMsufFMSqYRHJ+khcW20fJln8CO5vGRu+Nk/7BEZQ1ohm9NVviYCIHL1fA1qu2oT7J8nbnZ4oOk6Ax29m86x3hiH8I+mzyUahc7unDJ+bBo2W8RyxXwVDnZlLywOTlzXZbETTgov3qAIe2vEpkVfGxIHlMC8kVjZSpt/JAa6RzVtFYpK61nf2RDbTvC2elyPvLBAQMtmJFgISB1cv2by0RnvhIp5Mpvqguc0AIn3qUhoa92LkGPMSU8uv895NY2/krHUWnfhASaheCZz4TddKEADhI8kpeQUdgRLmwpMUmNymkFzb1w3SxD2OdG/WE7TByIq6rGPZ0bmVhxCg8GJnMT6hR63TVzcyg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(136003)(396003)(346002)(366004)(376002)(39860400002)(451199018)(6636002)(36756003)(4744005)(478600001)(186003)(5660300002)(38100700002)(6862004)(37006003)(6506007)(83380400001)(6512007)(6486002)(8936002)(26005)(2906002)(44832011)(86362001)(41300700001)(316002)(2616005)(66556008)(66476007)(82960400001)(4326008)(8676002)(66946007)(6666004);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?VtzY9e5oOBR2jJ9nwyaHnOxUKpbFj2hUpZya/pjiZ/3LRM16W1s6w9+8oDIJ?=
 =?us-ascii?Q?Ja1l830JTZKm7FNSXiJN/qkYO17G1nKQOW4MUaFKCp8smdu/SEMZRkRwgNjz?=
 =?us-ascii?Q?4ERdFRRu05c1mquP5oCq8I9JZd9r8NhAEmQ6xrOyjLTRI2XgbLfbMvYXiI/Q?=
 =?us-ascii?Q?iJ9afpxDRhF1vuvuIfham7/xbmsz0XAaDl6Ex5k884TEIi/0y/moRVlReDry?=
 =?us-ascii?Q?U1sTbf+Pj2e1QUwppAhbnd79glh+nrA19EgbOnP1JRG6YnsJAIMGo0K1fDip?=
 =?us-ascii?Q?2n23goPSUmY20DPrn7GyOrDBfBfA/CGsbqQ8ZZqERLqedyUY+JwVMxebhFFp?=
 =?us-ascii?Q?2/K8sEnB+9d6vClEOiB85nbWNqsOyb33qekg7axU3ZfPk2qHTBf5eFLJuahN?=
 =?us-ascii?Q?cP1/Dlc6tecocVmM2T8hR2/1Aw1mATMAHpDp0D2wXhzgXpU1MjvcURDsXRtj?=
 =?us-ascii?Q?XvU6D7EzsOBeXWKTDHdzJ+joYJOJMbDClYGxeZQ9HXhUBUKFTt95dScW6P+q?=
 =?us-ascii?Q?+qy3NHoWnBlAzT69UR1ZZ+zh0ZStCwndiwkReNRQdIHXSYW0D/+0GidHF0T+?=
 =?us-ascii?Q?rxpEhpH0+6N3JeN3lEgvY8PcX+NHyh+b1U4C0Y2hRlXBff5FDJdxAN/eukBS?=
 =?us-ascii?Q?yndLvAq74demVG4DD3+pDiGCqlHCeY4hLzSmJ1zeGDPAA4753ouiChiYlsRy?=
 =?us-ascii?Q?G867J9zRA7h4DZuuBtUfsYy9ydwwTKdoDOtAyk6d4zI4Jcghdtcejne9c2gw?=
 =?us-ascii?Q?5pvitxJrDiP3mJFThBEH/mOKs1uNHFhkQMit9EnsZf532HJJidvSiWRFHc3r?=
 =?us-ascii?Q?wxf4ZxXfFW+eu03kWsPP9wcm77UXoEgQDIj9h3BHI3UrshQO/I1FA3ywKiZF?=
 =?us-ascii?Q?j0FaUeOWywNt6+G7eIqcxpxd1tgNjvGTdMcvSE5KoNfj7+YXJXyj25fbx4OI?=
 =?us-ascii?Q?5/hfmcXtfSzvXJmHA8EgUUcN9XTeyvnidyYDtqqZ5D9lJt4QGcezcIZzTJyo?=
 =?us-ascii?Q?M2/ktHvVxsWHKrhIoh999e5nUwSWae20lhXC9lf/G1fsEXfC6xN2n6WwZpJr?=
 =?us-ascii?Q?h6rqv8bPMyUabEfKdq3fo8jwhtDz94AUYsv0SE5Hdhrl2lmoQX9boOPwuM4W?=
 =?us-ascii?Q?PnrGRfbpUH2qyykUKaQJykD+2MSCMCJTOsetadDtVUcV5YaemFkuS+4I3zNN?=
 =?us-ascii?Q?GLLfzDv2H5YpAH7v4CqsgzNL2vBWQjtKL0OXflJU1pYY6HbFyX4sRIE0RVyx?=
 =?us-ascii?Q?9RAOHmzWXGEoW35RtsiMfYofDZUzX9m0fWcnifXbpNEAuFRW9O7TKgV+37cC?=
 =?us-ascii?Q?sPW9w3iK34WgsXtdzgFCI/Se9B+7T7801dC9hVUoxyoTyapoKED1GdGlAAnH?=
 =?us-ascii?Q?duK/1soNi3I9gZkY7uPRGrYmH77p81HC+ViISUc5UdfNiCkVrJ3wDlHD4Yet?=
 =?us-ascii?Q?qc3YyzMOWTz1sLNnRw0wpYGX6WiClV/VAeCmCTuTi5lfYh8JfF18g7uI+vyB?=
 =?us-ascii?Q?ZQh++4LT78lyoIefq0GTtSk4BWOBPx3XtzoU5/gfvfsIrkudVX8Ff6I50GJg?=
 =?us-ascii?Q?/32GqGHQ1LzsVA0YSD/lTfVS8J0KIzRZfAEFdT6XhtLhxDevYhc6M6ZHY9ld?=
 =?us-ascii?Q?dg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ca295852-cd6e-4e6a-4fd4-08db1b496d3c
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Mar 2023 18:10:38.5725 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: dvIvYrCPi5g7I2UDSv6ElTOzhQhLxgXzTDalGRONLYUOuFOUE//ItHLFG6Dbw2eUOn6JDAVn0/ddQCH7OfLiQQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6186
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/6] drm/i915/wm: remove display/ prefix
 from include
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

On Wed, Mar 01, 2023 at 03:54:15PM +0200, Jani Nikula wrote:
> Remove the leftover from moving and renaming the file from driver top
> level.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_wm_types.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_wm_types.h b/drivers/gpu/drm/i915/display/intel_wm_types.h
> index bac2b6fdc5d0..628b7c0ce484 100644
> --- a/drivers/gpu/drm/i915/display/intel_wm_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_wm_types.h
> @@ -8,7 +8,7 @@
>  
>  #include <linux/types.h>
>  
> -#include "display/intel_display_limits.h"
> +#include "intel_display_limits.h"
>  
>  enum intel_ddb_partitioning {
>  	INTEL_DDB_PART_1_2,
> -- 
> 2.39.1
> 
