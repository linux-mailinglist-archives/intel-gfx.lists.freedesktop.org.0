Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B9C570844E
	for <lists+intel-gfx@lfdr.de>; Thu, 18 May 2023 16:55:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 16C0A10E0A6;
	Thu, 18 May 2023 14:55:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6341410E0E1
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 May 2023 14:55:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684421713; x=1715957713;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=YbSDqM7mdOfAu9YnqDAPYzEqNj8n+nkHLpKizkKL2NI=;
 b=dU9+xYWPS4sTRXg4iolKOgN9t9lSb6mNfcbmFqtb7s4K4R4rqI7KFCic
 /v5Ds4dEck+77h0cN7MwwNST5b41JsgTbhhH3d/Vk++i1XuRFbfdoCqDh
 CGj8IVEZGD++ZYYlsynA8+0jDgxmDaBjBNy9G83WqPx9/vK8E1GBx2Esw
 fs9tQndO8y9MXgtEnoZvknhrSb3uKFKDq07NgFhqxlxLst8c6arTZByDA
 tVVAQeAOYO2k/4CpeQjnofzo2BszeqIPzDVVi42OeC1xhF6neUDnd/YFJ
 nmCMnHUQ6OEZb50Roqa+0eOOmhXlEGeWSZa08JNqIlWY9FdaRiyAiVFw6 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10714"; a="438431085"
X-IronPort-AV: E=Sophos;i="5.99,285,1677571200"; d="scan'208";a="438431085"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2023 07:55:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10714"; a="702159260"
X-IronPort-AV: E=Sophos;i="5.99,285,1677571200"; d="scan'208";a="702159260"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga002.jf.intel.com with ESMTP; 18 May 2023 07:55:11 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 18 May 2023 07:55:11 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 18 May 2023 07:55:10 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Thu, 18 May 2023 07:55:10 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Thu, 18 May 2023 07:55:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AJkO05vjTNN4FDb9OcLCsyMh4maiQy4TwguJAPiwR6mcGqMimeZm/AP1Sh45PIT96ftM/H9veCOSYWlij1rLIWoFUZHMqcb72mLkhf8Tran3f+tow5F6JA9gtFam8NW16+BSwXPFjDEl5oMxICnaucjQm6nfEtfRm6hSC2bBvYamz0Ap5UzKiFN6EjV4jh+PyA6QXg3kJuivBJSvkct9oHvDp1SURoKHaFkuPeA5JGP2NhX4xJpk4CknGPT0PqTeSPsuQtd2AvClLrFrNYutaTjGOo3JHOgT2S7ldQ6ct+8zFCLL43JolIZvygPFUhCM2MYZjTh9KSSHJZCCZn0P/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Eb1PiCxy1ktFOalOdeoJzfhRfAMcezx7wVGQ+Om4+OI=;
 b=KuBOXdP7cZtrcINpDTZa3hLhA6bctuhdGPmSzHIGSGDsWlAKwJr+4U/Ruazs8IilBQ9lv9s/rrI32vN/tlUPGQUQCH37lSGeMlNYcpVwmOG65xTpy+gfY4JStT39kyCqQ3xareP5PMePHOQNMbxBtGLm8E0hu422eOcIenmPi4dj/ZpA9yhsUE61/QYEAExx2v4QtsAaFPQN7tD6iJ8ab3tzYuzhMlmGEU8/ZQQoyf0uuc5rDv4n/v2jqzqXjv00ZCg777wcDmYmX83DN0eslYB6953bLtrGuuEErZfEV/UEVk5F+ZSEaZeQIVdB/YMrovYdvjhCB4dMkXk2xg3NxA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN8PR11MB3556.namprd11.prod.outlook.com (2603:10b6:408:8d::31)
 by SN7PR11MB7510.namprd11.prod.outlook.com (2603:10b6:806:349::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6411.17; Thu, 18 May
 2023 14:55:07 +0000
Received: from BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::7c95:635b:8059:9e68]) by BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::7c95:635b:8059:9e68%4]) with mapi id 15.20.6411.019; Thu, 18 May 2023
 14:55:07 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <d1ef735e61f073e67da145bbd60a994da1e18d00.1684327004.git.jani.nikula@intel.com>
References: <cover.1684327004.git.jani.nikula@intel.com>
 <d1ef735e61f073e67da145bbd60a994da1e18d00.1684327004.git.jani.nikula@intel.com>
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Jani Nikula <jani.nikula@intel.com>, <intel-gfx@lists.freedesktop.org>
Date: Thu, 18 May 2023 11:55:00 -0300
Message-ID: <168442170074.28967.14344829852795743939@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: BYAPR04CA0034.namprd04.prod.outlook.com
 (2603:10b6:a03:40::47) To BN8PR11MB3556.namprd11.prod.outlook.com
 (2603:10b6:408:8d::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR11MB3556:EE_|SN7PR11MB7510:EE_
X-MS-Office365-Filtering-Correlation-Id: d5e1ede5-6ab8-4965-cb3b-08db57afde9a
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: o/pHcY1M/+jB8h1hyQXDTTvP1wo8q/NusmeAD9d8VonWO/xYqm4RMabRgwaBW4QuqbahACTAXx+HAsrH0bh2GEXMerxIQWcAvtwddMEf+m0Y+jnjGqDc1aRBe3cG5SskOjESJUtRvDh+CtTh5cJFDOAAbB8xuTyCfBtgCohr7NdiaDRwwGzN1ULBGTqIn8DkutHWOixqqBjKiiHjByefAUvOzCvviXmFCKuNTwIVjH4Zt4EdPw5ZIVf8H9szIMGi5KMDRogJ4VHIuFySFzK3If3121E3xotM3qhCoD7PGoIQVnM+aEBLMiVxWCyd/lJu6u1+NtpIhDMQrwPzafnVkPLlJSO6GYvLXre1XtwxFQ7GL69vAz430sqAh1luHY6zfhm/hwlD4lDSnfk6HBkQNLvdkTMmFc9en+jWf9SL6IXWgFYNy/pPocbIS6zB4ZF0YXDpPki6lP/Nh55vbWPVJLCXmJCGNeyVhAjNJ9JDwyZRQdGU4sT5J7Jv8yNdJGlLB7z50YAlGoj/HmiVluyEnjjkVuflT8YzwcpVAOaRmBPgAa9y9JfC7iN2SV146Cpg
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3556.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(7916004)(396003)(136003)(376002)(366004)(39860400002)(346002)(451199021)(4326008)(316002)(66946007)(66476007)(66556008)(6512007)(186003)(83380400001)(6506007)(26005)(9686003)(38100700002)(82960400001)(478600001)(8936002)(33716001)(6666004)(6486002)(107886003)(8676002)(41300700001)(86362001)(44832011)(5660300002)(2906002)(30864003);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TzRhK0szaEVQTFc4SUtTeFJmVmlwc29OL3A5M2FHT0ptZlN2NWEzN05UaHd0?=
 =?utf-8?B?cXFKVUxQNUZTd3MrRkYzYVk2enpDVlBEOCttUzVrdksrdTFqbDlmVG15RmRI?=
 =?utf-8?B?U1FYa0xDWFM5S1cxVkdyWnJtWE12WlcyNVN1ZjZkVGs0RzhJcnU3WHRBTkRk?=
 =?utf-8?B?YXhkVkZjeldzTmtNbW1sTXQxY3IvWmtOaVF3YS9xYmorN2h5ZGdNMnVXeURy?=
 =?utf-8?B?Y1M2M0pmM1lBVGN1Y2tEUjNkQ0FtVXgrMTRaM2swOUY4U1ZuRE5CSkhVVWQ4?=
 =?utf-8?B?aDlXbkNycFo5ZGtmWGlreTlqb1ZRM3hmbWtQZjZYd2JDU0ZNYzkvWjhkU3Fx?=
 =?utf-8?B?UGN5RWV5ZDIzOHhERkxFakVXV0lnL1lSZHdzalV6Tm1Ba09NaE1sZDB0MjlH?=
 =?utf-8?B?VGJ6cytpd2NOaW5yelhhcGNOVW0vQU14WkkyVUNpbWJLcCtjeWU3dXhZc0pL?=
 =?utf-8?B?b3V4cXRUcUpWcEQxeHA2bks2My9rYUF5b1JERWJhejNmOW45YjdWcXNxWFJJ?=
 =?utf-8?B?THpYY2o0b09haEh4Y1B1dThWUm1GWkx0dzhwdFJFQXA5akduTzVGMFl0OHRi?=
 =?utf-8?B?bktJT0ZxdHlleVBwdHZJRXhPRzNRemZiWUZpSmpWcWdQbDduUzl0Y0xkSGhn?=
 =?utf-8?B?dzFzT1JiUTVKbktodFYyUG55NHZta3gxZ1BGUWJ6QVgyZzV5U1Jjb2ZTUXMz?=
 =?utf-8?B?dlArU3d4MnlneC9oTVpkTlNBSkN6U2NNODNyQ3dYaDY5RUVJZnFkYWo3YW80?=
 =?utf-8?B?eTYzOEJyT09zdFhiK01BSUhBaGNMQ2U3dG1iVkFLNE9LejIyU2xLM2ZxZXhZ?=
 =?utf-8?B?SU81anlzWXYzRGdRYmhwOWpEcmFlKzJSWTBYSXdYeWhWRlNoOTJrdXFjSk1O?=
 =?utf-8?B?dnh1dkJaZk1jVDBGdllTREJaeFh5NFYwK043a0dwWXA3d2p2b1dqd2hoNWNw?=
 =?utf-8?B?UTk0ajBxMytFWWFWSitUMlY4YmgwUUxManlaczVYNUQ0K0gwZGFZVkRtTEwx?=
 =?utf-8?B?MFQ2eHk1a202dWpQVVlZZGxlRSt4ZHc3Ymd3b3U0Y0Q3MWxncXlhV0pXTmE3?=
 =?utf-8?B?SHowQ3ZRNTZVZ0pRNUlUU0Q4d3B1a0d5QzFGMW5rYVMvMVhoZWxOaVJuK1BO?=
 =?utf-8?B?RDF0dENsd3JCSWduQnlBWVdmQW9qMllRYlNqVGx4dldNN0tjbXliVkEyNzJE?=
 =?utf-8?B?SEJYNENBTEpYVUUxK2oxM0p5Y1RpTkN3YmM0N0x3K3krMllMWE1tdDFkcGEx?=
 =?utf-8?B?UGU2WW4wS1lyalNMUUxacy8wd2h1bThzNCtXc2dSclJva1lNYTRrZzUvMnhS?=
 =?utf-8?B?bGtqeFFQTU5NVXZhZGJlcER5NFhNRXhtM1VWQVFweCtDVmk1UURMd1UyK0lY?=
 =?utf-8?B?Y3F5Qld0R2xiVTJaOTFQT0RmWmNXeGZlK3loek9DbjNyUlJSVDdCK2R0YmRV?=
 =?utf-8?B?ajRUSmdGbWIxRmV6Z1p6cUtCcHcvRDIvb0FGN2x3Y2crWm9MWnNWM1B1QVNY?=
 =?utf-8?B?L0F2blU4VDkzazFVanpacTRzbUhUNGppT1VXcDVtK09Fc29rMWUrR0VxVDVN?=
 =?utf-8?B?dWxlM0tsMm4vZml2TmJXTFRwdE1NVC9hV1IxR1RkTDBGT2NIM1k4dEFGc0Fo?=
 =?utf-8?B?dVlMQnl6NVBkMXpBVml2OEF5cUMrV2lzQWoydkQ2dm5WVmwwKzd2VW83NWR1?=
 =?utf-8?B?QzJxWWxHK09IaEJzUEFTZ2tIS1lrUElBc0FXcTEyMFRrUkZmUURjeGpKbUpU?=
 =?utf-8?B?SnZFWHJqRWdhQVNtTjFQVGdvUkJKTEUyRS9uaVlEcm1saDhPNGd3WTViWDNs?=
 =?utf-8?B?NkFnSFQ0aWtTcTJ4SWlyL3JSNnNrVzI1d1ErNG5oWkppdEEzdFZwMFpYa1pB?=
 =?utf-8?B?ZW02QlNFQVBaemx1TVJJR2tlTVpmTWE5NUJYVTZUZEJsVWE3dVlXYWpyNFM0?=
 =?utf-8?B?aVRvQ00yM243THBWbDhvcG16aGJpVmdwR2R4Z0FrRUhKWEkrc0VBZjZSL3Rp?=
 =?utf-8?B?SmNCcFVHaHp5UGtUM3A0R0xRKzV6R3JHUDg5aXVCcGtWQXFzUHlOMDUvUVZl?=
 =?utf-8?B?MTZQN29WRlpMMVA0Z3RrZDlPSjhUQmhaZ245NmVlZDExdU9oZEdRdElTdThV?=
 =?utf-8?B?ME9rd0EzNzVLeWYzSFZlUUdVeHBmTkQrWWlLN1NyOGxYUmlrUVNjc0JFMldL?=
 =?utf-8?B?SkE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d5e1ede5-6ab8-4965-cb3b-08db57afde9a
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3556.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 May 2023 14:55:07.4677 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: MmLODL2fSstTsvJbAXIRWGtHb5BY6PgoAgX4ULBrXHFpZnUR5vzYvurh/oGYwrfubDPoya25lhPKCLfch6W1cg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7510
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/6] drm/i915/regs: split out
 intel_color_regs.h
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Jani Nikula (2023-05-17 09:38:16-03:00)
>Declutter i915_regs.h.
>
>Signed-off-by: Jani Nikula <jani.nikula@intel.com>

I don't think I'm experienced enough to tell these are all the defines
necessary to be moved, but with respect to the code move, it looks good
to me. Thus,

Acked-by: Gustavo Sousa <gustavo.sousa@intel.com>

>---
> drivers/gpu/drm/i915/display/hsw_ips.c        |   1 +
> drivers/gpu/drm/i915/display/intel_color.c    |   1 +
> .../gpu/drm/i915/display/intel_color_regs.h   | 272 ++++++++++++++++++
> drivers/gpu/drm/i915/display/intel_display.c  |   1 +
> drivers/gpu/drm/i915/display/intel_overlay.c  |   1 +
> drivers/gpu/drm/i915/i915_reg.h               | 260 -----------------
> drivers/gpu/drm/i915/intel_gvt_mmio_table.c   |   1 +
> 7 files changed, 277 insertions(+), 260 deletions(-)
> create mode 100644 drivers/gpu/drm/i915/display/intel_color_regs.h
>
>diff --git a/drivers/gpu/drm/i915/display/hsw_ips.c b/drivers/gpu/drm/i915=
/display/hsw_ips.c
>index 8eca0de065b6..7dc38ac02092 100644
>--- a/drivers/gpu/drm/i915/display/hsw_ips.c
>+++ b/drivers/gpu/drm/i915/display/hsw_ips.c
>@@ -6,6 +6,7 @@
> #include "hsw_ips.h"
> #include "i915_drv.h"
> #include "i915_reg.h"
>+#include "intel_color_regs.h"
> #include "intel_de.h"
> #include "intel_display_types.h"
> #include "intel_pcode.h"
>diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/=
i915/display/intel_color.c
>index 07f1afe1d406..f458b136e6a8 100644
>--- a/drivers/gpu/drm/i915/display/intel_color.c
>+++ b/drivers/gpu/drm/i915/display/intel_color.c
>@@ -24,6 +24,7 @@
>=20
> #include "i915_reg.h"
> #include "intel_color.h"
>+#include "intel_color_regs.h"
> #include "intel_de.h"
> #include "intel_display_types.h"
> #include "intel_dsb.h"
>diff --git a/drivers/gpu/drm/i915/display/intel_color_regs.h b/drivers/gpu=
/drm/i915/display/intel_color_regs.h
>new file mode 100644
>index 000000000000..30e6f66a724d
>--- /dev/null
>+++ b/drivers/gpu/drm/i915/display/intel_color_regs.h
>@@ -0,0 +1,272 @@
>+/* SPDX-License-Identifier: MIT */
>+/*
>+ * Copyright =C2=A9 2023 Intel Corporation
>+ */
>+
>+#ifndef __INTEL_COLOR_REGS_H__
>+#define __INTEL_COLOR_REGS_H__
>+
>+#include "intel_display_reg_defs.h"
>+
>+/* legacy palette */
>+#define _LGC_PALETTE_A           0x4a000
>+#define _LGC_PALETTE_B           0x4a800
>+/* see PALETTE_* for the bits */
>+#define LGC_PALETTE(pipe, i) _MMIO(_PIPE(pipe, _LGC_PALETTE_A, _LGC_PALET=
TE_B) + (i) * 4)
>+
>+/* ilk/snb precision palette */
>+#define _PREC_PALETTE_A           0x4b000
>+#define _PREC_PALETTE_B           0x4c000
>+/* 10bit mode */
>+#define   PREC_PALETTE_10_RED_MASK                REG_GENMASK(29, 20)
>+#define   PREC_PALETTE_10_GREEN_MASK                REG_GENMASK(19, 10)
>+#define   PREC_PALETTE_10_BLUE_MASK                REG_GENMASK(9, 0)
>+/* 12.4 interpolated mode ldw */
>+#define   PREC_PALETTE_12P4_RED_LDW_MASK        REG_GENMASK(29, 24)
>+#define   PREC_PALETTE_12P4_GREEN_LDW_MASK        REG_GENMASK(19, 14)
>+#define   PREC_PALETTE_12P4_BLUE_LDW_MASK        REG_GENMASK(9, 4)
>+/* 12.4 interpolated mode udw */
>+#define   PREC_PALETTE_12P4_RED_UDW_MASK        REG_GENMASK(29, 20)
>+#define   PREC_PALETTE_12P4_GREEN_UDW_MASK        REG_GENMASK(19, 10)
>+#define   PREC_PALETTE_12P4_BLUE_UDW_MASK        REG_GENMASK(9, 0)
>+#define PREC_PALETTE(pipe, i) _MMIO(_PIPE(pipe, _PREC_PALETTE_A, _PREC_PA=
LETTE_B) + (i) * 4)
>+
>+#define  _PREC_PIPEAGCMAX              0x4d000
>+#define  _PREC_PIPEBGCMAX              0x4d010
>+#define PREC_PIPEGCMAX(pipe, i)        _MMIO(_PIPE(pipe, _PIPEAGCMAX, _PI=
PEBGCMAX) + (i) * 4) /* u1.16 */
>+
>+#define _GAMMA_MODE_A                0x4a480
>+#define _GAMMA_MODE_B                0x4ac80
>+#define GAMMA_MODE(pipe) _MMIO_PIPE(pipe, _GAMMA_MODE_A, _GAMMA_MODE_B)
>+#define  PRE_CSC_GAMMA_ENABLE                        REG_BIT(31) /* icl+ =
*/
>+#define  POST_CSC_GAMMA_ENABLE                        REG_BIT(30) /* icl+=
 */
>+#define  PALETTE_ANTICOL_DISABLE                REG_BIT(15) /* skl+ */
>+#define  GAMMA_MODE_MODE_MASK                        REG_GENMASK(1, 0)
>+#define  GAMMA_MODE_MODE_8BIT                        REG_FIELD_PREP(GAMMA=
_MODE_MODE_MASK, 0)
>+#define  GAMMA_MODE_MODE_10BIT                        REG_FIELD_PREP(GAMM=
A_MODE_MODE_MASK, 1)
>+#define  GAMMA_MODE_MODE_12BIT                        REG_FIELD_PREP(GAMM=
A_MODE_MODE_MASK, 2)
>+#define  GAMMA_MODE_MODE_SPLIT                        REG_FIELD_PREP(GAMM=
A_MODE_MODE_MASK, 3) /* ivb-bdw */
>+#define  GAMMA_MODE_MODE_12BIT_MULTI_SEG        REG_FIELD_PREP(GAMMA_MODE=
_MODE_MASK, 3) /* icl-tgl */
>+
>+/* pipe CSC */
>+#define _PIPE_A_CSC_COEFF_RY_GY        0x49010
>+#define _PIPE_A_CSC_COEFF_BY        0x49014
>+#define _PIPE_A_CSC_COEFF_RU_GU        0x49018
>+#define _PIPE_A_CSC_COEFF_BU        0x4901c
>+#define _PIPE_A_CSC_COEFF_RV_GV        0x49020
>+#define _PIPE_A_CSC_COEFF_BV        0x49024
>+
>+#define _PIPE_A_CSC_MODE        0x49028
>+#define  ICL_CSC_ENABLE                        (1 << 31) /* icl+ */
>+#define  ICL_OUTPUT_CSC_ENABLE                (1 << 30) /* icl+ */
>+#define  CSC_BLACK_SCREEN_OFFSET        (1 << 2) /* ilk/snb */
>+#define  CSC_POSITION_BEFORE_GAMMA        (1 << 1) /* pre-glk */
>+#define  CSC_MODE_YUV_TO_RGB                (1 << 0) /* ilk/snb */
>+
>+#define _PIPE_A_CSC_PREOFF_HI        0x49030
>+#define _PIPE_A_CSC_PREOFF_ME        0x49034
>+#define _PIPE_A_CSC_PREOFF_LO        0x49038
>+#define _PIPE_A_CSC_POSTOFF_HI        0x49040
>+#define _PIPE_A_CSC_POSTOFF_ME        0x49044
>+#define _PIPE_A_CSC_POSTOFF_LO        0x49048
>+
>+#define _PIPE_B_CSC_COEFF_RY_GY        0x49110
>+#define _PIPE_B_CSC_COEFF_BY        0x49114
>+#define _PIPE_B_CSC_COEFF_RU_GU        0x49118
>+#define _PIPE_B_CSC_COEFF_BU        0x4911c
>+#define _PIPE_B_CSC_COEFF_RV_GV        0x49120
>+#define _PIPE_B_CSC_COEFF_BV        0x49124
>+#define _PIPE_B_CSC_MODE        0x49128
>+#define _PIPE_B_CSC_PREOFF_HI        0x49130
>+#define _PIPE_B_CSC_PREOFF_ME        0x49134
>+#define _PIPE_B_CSC_PREOFF_LO        0x49138
>+#define _PIPE_B_CSC_POSTOFF_HI        0x49140
>+#define _PIPE_B_CSC_POSTOFF_ME        0x49144
>+#define _PIPE_B_CSC_POSTOFF_LO        0x49148
>+
>+#define PIPE_CSC_COEFF_RY_GY(pipe)        _MMIO_PIPE(pipe, _PIPE_A_CSC_CO=
EFF_RY_GY, _PIPE_B_CSC_COEFF_RY_GY)
>+#define PIPE_CSC_COEFF_BY(pipe)                _MMIO_PIPE(pipe, _PIPE_A_C=
SC_COEFF_BY, _PIPE_B_CSC_COEFF_BY)
>+#define PIPE_CSC_COEFF_RU_GU(pipe)        _MMIO_PIPE(pipe, _PIPE_A_CSC_CO=
EFF_RU_GU, _PIPE_B_CSC_COEFF_RU_GU)
>+#define PIPE_CSC_COEFF_BU(pipe)                _MMIO_PIPE(pipe, _PIPE_A_C=
SC_COEFF_BU, _PIPE_B_CSC_COEFF_BU)
>+#define PIPE_CSC_COEFF_RV_GV(pipe)        _MMIO_PIPE(pipe, _PIPE_A_CSC_CO=
EFF_RV_GV, _PIPE_B_CSC_COEFF_RV_GV)
>+#define PIPE_CSC_COEFF_BV(pipe)                _MMIO_PIPE(pipe, _PIPE_A_C=
SC_COEFF_BV, _PIPE_B_CSC_COEFF_BV)
>+#define PIPE_CSC_MODE(pipe)                _MMIO_PIPE(pipe, _PIPE_A_CSC_M=
ODE, _PIPE_B_CSC_MODE)
>+#define PIPE_CSC_PREOFF_HI(pipe)        _MMIO_PIPE(pipe, _PIPE_A_CSC_PREO=
FF_HI, _PIPE_B_CSC_PREOFF_HI)
>+#define PIPE_CSC_PREOFF_ME(pipe)        _MMIO_PIPE(pipe, _PIPE_A_CSC_PREO=
FF_ME, _PIPE_B_CSC_PREOFF_ME)
>+#define PIPE_CSC_PREOFF_LO(pipe)        _MMIO_PIPE(pipe, _PIPE_A_CSC_PREO=
FF_LO, _PIPE_B_CSC_PREOFF_LO)
>+#define PIPE_CSC_POSTOFF_HI(pipe)        _MMIO_PIPE(pipe, _PIPE_A_CSC_POS=
TOFF_HI, _PIPE_B_CSC_POSTOFF_HI)
>+#define PIPE_CSC_POSTOFF_ME(pipe)        _MMIO_PIPE(pipe, _PIPE_A_CSC_POS=
TOFF_ME, _PIPE_B_CSC_POSTOFF_ME)
>+#define PIPE_CSC_POSTOFF_LO(pipe)        _MMIO_PIPE(pipe, _PIPE_A_CSC_POS=
TOFF_LO, _PIPE_B_CSC_POSTOFF_LO)
>+
>+/* Pipe Output CSC */
>+#define _PIPE_A_OUTPUT_CSC_COEFF_RY_GY        0x49050
>+#define _PIPE_A_OUTPUT_CSC_COEFF_BY        0x49054
>+#define _PIPE_A_OUTPUT_CSC_COEFF_RU_GU        0x49058
>+#define _PIPE_A_OUTPUT_CSC_COEFF_BU        0x4905c
>+#define _PIPE_A_OUTPUT_CSC_COEFF_RV_GV        0x49060
>+#define _PIPE_A_OUTPUT_CSC_COEFF_BV        0x49064
>+#define _PIPE_A_OUTPUT_CSC_PREOFF_HI        0x49068
>+#define _PIPE_A_OUTPUT_CSC_PREOFF_ME        0x4906c
>+#define _PIPE_A_OUTPUT_CSC_PREOFF_LO        0x49070
>+#define _PIPE_A_OUTPUT_CSC_POSTOFF_HI        0x49074
>+#define _PIPE_A_OUTPUT_CSC_POSTOFF_ME        0x49078
>+#define _PIPE_A_OUTPUT_CSC_POSTOFF_LO        0x4907c
>+
>+#define _PIPE_B_OUTPUT_CSC_COEFF_RY_GY        0x49150
>+#define _PIPE_B_OUTPUT_CSC_COEFF_BY        0x49154
>+#define _PIPE_B_OUTPUT_CSC_COEFF_RU_GU        0x49158
>+#define _PIPE_B_OUTPUT_CSC_COEFF_BU        0x4915c
>+#define _PIPE_B_OUTPUT_CSC_COEFF_RV_GV        0x49160
>+#define _PIPE_B_OUTPUT_CSC_COEFF_BV        0x49164
>+#define _PIPE_B_OUTPUT_CSC_PREOFF_HI        0x49168
>+#define _PIPE_B_OUTPUT_CSC_PREOFF_ME        0x4916c
>+#define _PIPE_B_OUTPUT_CSC_PREOFF_LO        0x49170
>+#define _PIPE_B_OUTPUT_CSC_POSTOFF_HI        0x49174
>+#define _PIPE_B_OUTPUT_CSC_POSTOFF_ME        0x49178
>+#define _PIPE_B_OUTPUT_CSC_POSTOFF_LO        0x4917c
>+
>+#define PIPE_CSC_OUTPUT_COEFF_RY_GY(pipe)        _MMIO_PIPE(pipe,\
>+                                                           _PIPE_A_OUTPUT=
_CSC_COEFF_RY_GY,\
>+                                                           _PIPE_B_OUTPUT=
_CSC_COEFF_RY_GY)
>+#define PIPE_CSC_OUTPUT_COEFF_BY(pipe)                _MMIO_PIPE(pipe, \
>+                                                           _PIPE_A_OUTPUT=
_CSC_COEFF_BY, \
>+                                                           _PIPE_B_OUTPUT=
_CSC_COEFF_BY)
>+#define PIPE_CSC_OUTPUT_COEFF_RU_GU(pipe)        _MMIO_PIPE(pipe, \
>+                                                           _PIPE_A_OUTPUT=
_CSC_COEFF_RU_GU, \
>+                                                           _PIPE_B_OUTPUT=
_CSC_COEFF_RU_GU)
>+#define PIPE_CSC_OUTPUT_COEFF_BU(pipe)                _MMIO_PIPE(pipe, \
>+                                                           _PIPE_A_OUTPUT=
_CSC_COEFF_BU, \
>+                                                           _PIPE_B_OUTPUT=
_CSC_COEFF_BU)
>+#define PIPE_CSC_OUTPUT_COEFF_RV_GV(pipe)        _MMIO_PIPE(pipe, \
>+                                                           _PIPE_A_OUTPUT=
_CSC_COEFF_RV_GV, \
>+                                                           _PIPE_B_OUTPUT=
_CSC_COEFF_RV_GV)
>+#define PIPE_CSC_OUTPUT_COEFF_BV(pipe)                _MMIO_PIPE(pipe, \
>+                                                           _PIPE_A_OUTPUT=
_CSC_COEFF_BV, \
>+                                                           _PIPE_B_OUTPUT=
_CSC_COEFF_BV)
>+#define PIPE_CSC_OUTPUT_PREOFF_HI(pipe)                _MMIO_PIPE(pipe, \
>+                                                           _PIPE_A_OUTPUT=
_CSC_PREOFF_HI, \
>+                                                           _PIPE_B_OUTPUT=
_CSC_PREOFF_HI)
>+#define PIPE_CSC_OUTPUT_PREOFF_ME(pipe)                _MMIO_PIPE(pipe, \
>+                                                           _PIPE_A_OUTPUT=
_CSC_PREOFF_ME, \
>+                                                           _PIPE_B_OUTPUT=
_CSC_PREOFF_ME)
>+#define PIPE_CSC_OUTPUT_PREOFF_LO(pipe)                _MMIO_PIPE(pipe, \
>+                                                           _PIPE_A_OUTPUT=
_CSC_PREOFF_LO, \
>+                                                           _PIPE_B_OUTPUT=
_CSC_PREOFF_LO)
>+#define PIPE_CSC_OUTPUT_POSTOFF_HI(pipe)        _MMIO_PIPE(pipe, \
>+                                                           _PIPE_A_OUTPUT=
_CSC_POSTOFF_HI, \
>+                                                           _PIPE_B_OUTPUT=
_CSC_POSTOFF_HI)
>+#define PIPE_CSC_OUTPUT_POSTOFF_ME(pipe)        _MMIO_PIPE(pipe, \
>+                                                           _PIPE_A_OUTPUT=
_CSC_POSTOFF_ME, \
>+                                                           _PIPE_B_OUTPUT=
_CSC_POSTOFF_ME)
>+#define PIPE_CSC_OUTPUT_POSTOFF_LO(pipe)        _MMIO_PIPE(pipe, \
>+                                                           _PIPE_A_OUTPUT=
_CSC_POSTOFF_LO, \
>+                                                           _PIPE_B_OUTPUT=
_CSC_POSTOFF_LO)
>+
>+/* pipe degamma/gamma LUTs on IVB+ */
>+#define _PAL_PREC_INDEX_A        0x4A400
>+#define _PAL_PREC_INDEX_B        0x4AC00
>+#define _PAL_PREC_INDEX_C        0x4B400
>+#define   PAL_PREC_SPLIT_MODE                REG_BIT(31)
>+#define   PAL_PREC_AUTO_INCREMENT        REG_BIT(15)
>+#define   PAL_PREC_INDEX_VALUE_MASK        REG_GENMASK(9, 0)
>+#define   PAL_PREC_INDEX_VALUE(x)        REG_FIELD_PREP(PAL_PREC_INDEX_VA=
LUE_MASK, (x))
>+#define _PAL_PREC_DATA_A        0x4A404
>+#define _PAL_PREC_DATA_B        0x4AC04
>+#define _PAL_PREC_DATA_C        0x4B404
>+/* see PREC_PALETTE_* for the bits */
>+#define _PAL_PREC_GC_MAX_A        0x4A410
>+#define _PAL_PREC_GC_MAX_B        0x4AC10
>+#define _PAL_PREC_GC_MAX_C        0x4B410
>+#define _PAL_PREC_EXT_GC_MAX_A        0x4A420
>+#define _PAL_PREC_EXT_GC_MAX_B        0x4AC20
>+#define _PAL_PREC_EXT_GC_MAX_C        0x4B420
>+#define _PAL_PREC_EXT2_GC_MAX_A        0x4A430
>+#define _PAL_PREC_EXT2_GC_MAX_B        0x4AC30
>+#define _PAL_PREC_EXT2_GC_MAX_C        0x4B430
>+
>+#define PREC_PAL_INDEX(pipe)                _MMIO_PIPE(pipe, _PAL_PREC_IN=
DEX_A, _PAL_PREC_INDEX_B)
>+#define PREC_PAL_DATA(pipe)                _MMIO_PIPE(pipe, _PAL_PREC_DAT=
A_A, _PAL_PREC_DATA_B)
>+#define PREC_PAL_GC_MAX(pipe, i)        _MMIO(_PIPE(pipe, _PAL_PREC_GC_MA=
X_A, _PAL_PREC_GC_MAX_B) + (i) * 4) /* u1.16 */
>+#define PREC_PAL_EXT_GC_MAX(pipe, i)        _MMIO(_PIPE(pipe, _PAL_PREC_E=
XT_GC_MAX_A, _PAL_PREC_EXT_GC_MAX_B) + (i) * 4) /* u3.16 */
>+#define PREC_PAL_EXT2_GC_MAX(pipe, i)        _MMIO(_PIPE(pipe, _PAL_PREC_=
EXT2_GC_MAX_A, _PAL_PREC_EXT2_GC_MAX_B) + (i) * 4) /* glk+, u3.16 */
>+
>+#define _PRE_CSC_GAMC_INDEX_A        0x4A484
>+#define _PRE_CSC_GAMC_INDEX_B        0x4AC84
>+#define _PRE_CSC_GAMC_INDEX_C        0x4B484
>+#define   PRE_CSC_GAMC_AUTO_INCREMENT        REG_BIT(10)
>+#define   PRE_CSC_GAMC_INDEX_VALUE_MASK        REG_GENMASK(7, 0)
>+#define   PRE_CSC_GAMC_INDEX_VALUE(x)        REG_FIELD_PREP(PRE_CSC_GAMC_=
INDEX_VALUE_MASK, (x))
>+#define _PRE_CSC_GAMC_DATA_A        0x4A488
>+#define _PRE_CSC_GAMC_DATA_B        0x4AC88
>+#define _PRE_CSC_GAMC_DATA_C        0x4B488
>+
>+#define PRE_CSC_GAMC_INDEX(pipe)        _MMIO_PIPE(pipe, _PRE_CSC_GAMC_IN=
DEX_A, _PRE_CSC_GAMC_INDEX_B)
>+#define PRE_CSC_GAMC_DATA(pipe)                _MMIO_PIPE(pipe, _PRE_CSC_=
GAMC_DATA_A, _PRE_CSC_GAMC_DATA_B)
>+
>+/* ICL Multi segmented gamma */
>+#define _PAL_PREC_MULTI_SEG_INDEX_A        0x4A408
>+#define _PAL_PREC_MULTI_SEG_INDEX_B        0x4AC08
>+#define   PAL_PREC_MULTI_SEG_AUTO_INCREMENT        REG_BIT(15)
>+#define   PAL_PREC_MULTI_SEG_INDEX_VALUE_MASK        REG_GENMASK(4, 0)
>+#define   PAL_PREC_MULTI_SEG_INDEX_VALUE(x)        REG_FIELD_PREP(PAL_PRE=
C_MULTI_SEG_INDEX_VALUE_MASK, (x))
>+
>+#define _PAL_PREC_MULTI_SEG_DATA_A        0x4A40C
>+#define _PAL_PREC_MULTI_SEG_DATA_B        0x4AC0C
>+/* see PREC_PALETTE_12P4_* for the bits */
>+
>+#define PREC_PAL_MULTI_SEG_INDEX(pipe)        _MMIO_PIPE(pipe, \
>+                                        _PAL_PREC_MULTI_SEG_INDEX_A, \
>+                                        _PAL_PREC_MULTI_SEG_INDEX_B)
>+#define PREC_PAL_MULTI_SEG_DATA(pipe)        _MMIO_PIPE(pipe, \
>+                                        _PAL_PREC_MULTI_SEG_DATA_A, \
>+                                        _PAL_PREC_MULTI_SEG_DATA_B)
>+
>+/* pipe CSC & degamma/gamma LUTs on CHV */
>+#define _CGM_PIPE_A_CSC_COEFF01        (VLV_DISPLAY_BASE + 0x67900)
>+#define _CGM_PIPE_A_CSC_COEFF23        (VLV_DISPLAY_BASE + 0x67904)
>+#define _CGM_PIPE_A_CSC_COEFF45        (VLV_DISPLAY_BASE + 0x67908)
>+#define _CGM_PIPE_A_CSC_COEFF67        (VLV_DISPLAY_BASE + 0x6790C)
>+#define _CGM_PIPE_A_CSC_COEFF8        (VLV_DISPLAY_BASE + 0x67910)
>+#define _CGM_PIPE_A_DEGAMMA        (VLV_DISPLAY_BASE + 0x66000)
>+/* cgm degamma ldw */
>+#define   CGM_PIPE_DEGAMMA_GREEN_LDW_MASK        REG_GENMASK(29, 16)
>+#define   CGM_PIPE_DEGAMMA_BLUE_LDW_MASK        REG_GENMASK(13, 0)
>+/* cgm degamma udw */
>+#define   CGM_PIPE_DEGAMMA_RED_UDW_MASK                REG_GENMASK(13, 0)
>+#define _CGM_PIPE_A_GAMMA        (VLV_DISPLAY_BASE + 0x67000)
>+/* cgm gamma ldw */
>+#define   CGM_PIPE_GAMMA_GREEN_LDW_MASK                REG_GENMASK(25, 16=
)
>+#define   CGM_PIPE_GAMMA_BLUE_LDW_MASK                REG_GENMASK(9, 0)
>+/* cgm gamma udw */
>+#define   CGM_PIPE_GAMMA_RED_UDW_MASK                REG_GENMASK(9, 0)
>+#define _CGM_PIPE_A_MODE        (VLV_DISPLAY_BASE + 0x67A00)
>+#define   CGM_PIPE_MODE_GAMMA        (1 << 2)
>+#define   CGM_PIPE_MODE_CSC        (1 << 1)
>+#define   CGM_PIPE_MODE_DEGAMMA        (1 << 0)
>+
>+#define _CGM_PIPE_B_CSC_COEFF01        (VLV_DISPLAY_BASE + 0x69900)
>+#define _CGM_PIPE_B_CSC_COEFF23        (VLV_DISPLAY_BASE + 0x69904)
>+#define _CGM_PIPE_B_CSC_COEFF45        (VLV_DISPLAY_BASE + 0x69908)
>+#define _CGM_PIPE_B_CSC_COEFF67        (VLV_DISPLAY_BASE + 0x6990C)
>+#define _CGM_PIPE_B_CSC_COEFF8        (VLV_DISPLAY_BASE + 0x69910)
>+#define _CGM_PIPE_B_DEGAMMA        (VLV_DISPLAY_BASE + 0x68000)
>+#define _CGM_PIPE_B_GAMMA        (VLV_DISPLAY_BASE + 0x69000)
>+#define _CGM_PIPE_B_MODE        (VLV_DISPLAY_BASE + 0x69A00)
>+
>+#define CGM_PIPE_CSC_COEFF01(pipe)        _MMIO_PIPE(pipe, _CGM_PIPE_A_CS=
C_COEFF01, _CGM_PIPE_B_CSC_COEFF01)
>+#define CGM_PIPE_CSC_COEFF23(pipe)        _MMIO_PIPE(pipe, _CGM_PIPE_A_CS=
C_COEFF23, _CGM_PIPE_B_CSC_COEFF23)
>+#define CGM_PIPE_CSC_COEFF45(pipe)        _MMIO_PIPE(pipe, _CGM_PIPE_A_CS=
C_COEFF45, _CGM_PIPE_B_CSC_COEFF45)
>+#define CGM_PIPE_CSC_COEFF67(pipe)        _MMIO_PIPE(pipe, _CGM_PIPE_A_CS=
C_COEFF67, _CGM_PIPE_B_CSC_COEFF67)
>+#define CGM_PIPE_CSC_COEFF8(pipe)        _MMIO_PIPE(pipe, _CGM_PIPE_A_CSC=
_COEFF8, _CGM_PIPE_B_CSC_COEFF8)
>+#define CGM_PIPE_DEGAMMA(pipe, i, w)        _MMIO(_PIPE(pipe, _CGM_PIPE_A=
_DEGAMMA, _CGM_PIPE_B_DEGAMMA) + (i) * 8 + (w) * 4)
>+#define CGM_PIPE_GAMMA(pipe, i, w)        _MMIO(_PIPE(pipe, _CGM_PIPE_A_G=
AMMA, _CGM_PIPE_B_GAMMA) + (i) * 8 + (w) * 4)
>+#define CGM_PIPE_MODE(pipe)                _MMIO_PIPE(pipe, _CGM_PIPE_A_M=
ODE, _CGM_PIPE_B_MODE)
>+
>+/* Skylake+ pipe bottom (background) color */
>+#define _SKL_BOTTOM_COLOR_A                0x70034
>+#define _SKL_BOTTOM_COLOR_B                0x71034
>+#define   SKL_BOTTOM_COLOR_GAMMA_ENABLE                REG_BIT(31)
>+#define   SKL_BOTTOM_COLOR_CSC_ENABLE                REG_BIT(30)
>+#define SKL_BOTTOM_COLOR(pipe)                _MMIO_PIPE(pipe, _SKL_BOTTO=
M_COLOR_A, _SKL_BOTTOM_COLOR_B)
>+
>+#endif /* __INTEL_COLOR_REGS_H__ */
>diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/dr=
m/i915/display/intel_display.c
>index b3bac5dae20f..bca7664d1ffc 100644
>--- a/drivers/gpu/drm/i915/display/intel_display.c
>+++ b/drivers/gpu/drm/i915/display/intel_display.c
>@@ -61,6 +61,7 @@
> #include "intel_cdclk.h"
> #include "intel_clock_gating.h"
> #include "intel_color.h"
>+#include "intel_color_regs.h"
> #include "intel_crt.h"
> #include "intel_crtc.h"
> #include "intel_crtc_state_dump.h"
>diff --git a/drivers/gpu/drm/i915/display/intel_overlay.c b/drivers/gpu/dr=
m/i915/display/intel_overlay.c
>index d6fe2bbabe55..5c5efdf62631 100644
>--- a/drivers/gpu/drm/i915/display/intel_overlay.c
>+++ b/drivers/gpu/drm/i915/display/intel_overlay.c
>@@ -35,6 +35,7 @@
>=20
> #include "i915_drv.h"
> #include "i915_reg.h"
>+#include "intel_color_regs.h"
> #include "intel_de.h"
> #include "intel_display_types.h"
> #include "intel_frontbuffer.h"
>diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_r=
eg.h
>index 2a9ab8de8421..aa38901b7c22 100644
>--- a/drivers/gpu/drm/i915/i915_reg.h
>+++ b/drivers/gpu/drm/i915/i915_reg.h
>@@ -2693,13 +2693,6 @@
> #define   PIPE_MISC2_FLIP_INFO_PLANE_SEL(plane_id)        REG_FIELD_PREP(=
PIPE_MISC2_FLIP_INFO_PLANE_SEL_MASK, (plane_id))
> #define PIPE_MISC2(pipe)                _MMIO_PIPE(pipe, _PIPE_MISC2_A, _=
PIPE_MISC2_B)
>=20
>-/* Skylake+ pipe bottom (background) color */
>-#define _SKL_BOTTOM_COLOR_A                0x70034
>-#define _SKL_BOTTOM_COLOR_B                0x71034
>-#define   SKL_BOTTOM_COLOR_GAMMA_ENABLE                REG_BIT(31)
>-#define   SKL_BOTTOM_COLOR_CSC_ENABLE                REG_BIT(30)
>-#define SKL_BOTTOM_COLOR(pipe)                _MMIO_PIPE(pipe, _SKL_BOTTO=
M_COLOR_A, _SKL_BOTTOM_COLOR_B)
>-
> #define _ICL_PIPE_A_STATUS                        0x70058
> #define ICL_PIPESTATUS(pipe)                        _MMIO_PIPE2(pipe, _IC=
L_PIPE_A_STATUS)
> #define   PIPE_STATUS_UNDERRUN                                REG_BIT(31)
>@@ -4220,45 +4213,6 @@
> #define GLK_PS_COEF_DATA_SET(pipe, id, set)  _MMIO_PIPE(pipe,     \
>                         _ID(id, _PS_COEF_SET0_DATA_1A, _PS_COEF_SET0_DATA=
_2A) + (set) * 8, \
>                         _ID(id, _PS_COEF_SET0_DATA_1B, _PS_COEF_SET0_DATA=
_2B) + (set) * 8)
>-/* legacy palette */
>-#define _LGC_PALETTE_A           0x4a000
>-#define _LGC_PALETTE_B           0x4a800
>-/* see PALETTE_* for the bits */
>-#define LGC_PALETTE(pipe, i) _MMIO(_PIPE(pipe, _LGC_PALETTE_A, _LGC_PALET=
TE_B) + (i) * 4)
>-
>-/* ilk/snb precision palette */
>-#define _PREC_PALETTE_A           0x4b000
>-#define _PREC_PALETTE_B           0x4c000
>-/* 10bit mode */
>-#define   PREC_PALETTE_10_RED_MASK                REG_GENMASK(29, 20)
>-#define   PREC_PALETTE_10_GREEN_MASK                REG_GENMASK(19, 10)
>-#define   PREC_PALETTE_10_BLUE_MASK                REG_GENMASK(9, 0)
>-/* 12.4 interpolated mode ldw */
>-#define   PREC_PALETTE_12P4_RED_LDW_MASK        REG_GENMASK(29, 24)
>-#define   PREC_PALETTE_12P4_GREEN_LDW_MASK        REG_GENMASK(19, 14)
>-#define   PREC_PALETTE_12P4_BLUE_LDW_MASK        REG_GENMASK(9, 4)
>-/* 12.4 interpolated mode udw */
>-#define   PREC_PALETTE_12P4_RED_UDW_MASK        REG_GENMASK(29, 20)
>-#define   PREC_PALETTE_12P4_GREEN_UDW_MASK        REG_GENMASK(19, 10)
>-#define   PREC_PALETTE_12P4_BLUE_UDW_MASK        REG_GENMASK(9, 0)
>-#define PREC_PALETTE(pipe, i) _MMIO(_PIPE(pipe, _PREC_PALETTE_A, _PREC_PA=
LETTE_B) + (i) * 4)
>-
>-#define  _PREC_PIPEAGCMAX              0x4d000
>-#define  _PREC_PIPEBGCMAX              0x4d010
>-#define PREC_PIPEGCMAX(pipe, i)        _MMIO(_PIPE(pipe, _PIPEAGCMAX, _PI=
PEBGCMAX) + (i) * 4) /* u1.16 */
>-
>-#define _GAMMA_MODE_A                0x4a480
>-#define _GAMMA_MODE_B                0x4ac80
>-#define GAMMA_MODE(pipe) _MMIO_PIPE(pipe, _GAMMA_MODE_A, _GAMMA_MODE_B)
>-#define  PRE_CSC_GAMMA_ENABLE                        REG_BIT(31) /* icl+ =
*/
>-#define  POST_CSC_GAMMA_ENABLE                        REG_BIT(30) /* icl+=
 */
>-#define  PALETTE_ANTICOL_DISABLE                REG_BIT(15) /* skl+ */
>-#define  GAMMA_MODE_MODE_MASK                        REG_GENMASK(1, 0)
>-#define  GAMMA_MODE_MODE_8BIT                        REG_FIELD_PREP(GAMMA=
_MODE_MODE_MASK, 0)
>-#define  GAMMA_MODE_MODE_10BIT                        REG_FIELD_PREP(GAMM=
A_MODE_MODE_MASK, 1)
>-#define  GAMMA_MODE_MODE_12BIT                        REG_FIELD_PREP(GAMM=
A_MODE_MODE_MASK, 2)
>-#define  GAMMA_MODE_MODE_SPLIT                        REG_FIELD_PREP(GAMM=
A_MODE_MODE_MASK, 3) /* ivb-bdw */
>-#define  GAMMA_MODE_MODE_12BIT_MULTI_SEG        REG_FIELD_PREP(GAMMA_MODE=
_MODE_MASK, 3) /* icl-tgl */
>=20
> /* Display Internal Timeout Register */
> #define RM_TIMEOUT                _MMIO(0x42060)
>@@ -6253,179 +6207,6 @@ enum skl_power_gate {
> #define  WM_DBG_DISALLOW_MAXFIFO        (1 << 1)
> #define  WM_DBG_DISALLOW_SPRITE                (1 << 2)
>=20
>-/* pipe CSC */
>-#define _PIPE_A_CSC_COEFF_RY_GY        0x49010
>-#define _PIPE_A_CSC_COEFF_BY        0x49014
>-#define _PIPE_A_CSC_COEFF_RU_GU        0x49018
>-#define _PIPE_A_CSC_COEFF_BU        0x4901c
>-#define _PIPE_A_CSC_COEFF_RV_GV        0x49020
>-#define _PIPE_A_CSC_COEFF_BV        0x49024
>-
>-#define _PIPE_A_CSC_MODE        0x49028
>-#define  ICL_CSC_ENABLE                        (1 << 31) /* icl+ */
>-#define  ICL_OUTPUT_CSC_ENABLE                (1 << 30) /* icl+ */
>-#define  CSC_BLACK_SCREEN_OFFSET        (1 << 2) /* ilk/snb */
>-#define  CSC_POSITION_BEFORE_GAMMA        (1 << 1) /* pre-glk */
>-#define  CSC_MODE_YUV_TO_RGB                (1 << 0) /* ilk/snb */
>-
>-#define _PIPE_A_CSC_PREOFF_HI        0x49030
>-#define _PIPE_A_CSC_PREOFF_ME        0x49034
>-#define _PIPE_A_CSC_PREOFF_LO        0x49038
>-#define _PIPE_A_CSC_POSTOFF_HI        0x49040
>-#define _PIPE_A_CSC_POSTOFF_ME        0x49044
>-#define _PIPE_A_CSC_POSTOFF_LO        0x49048
>-
>-#define _PIPE_B_CSC_COEFF_RY_GY        0x49110
>-#define _PIPE_B_CSC_COEFF_BY        0x49114
>-#define _PIPE_B_CSC_COEFF_RU_GU        0x49118
>-#define _PIPE_B_CSC_COEFF_BU        0x4911c
>-#define _PIPE_B_CSC_COEFF_RV_GV        0x49120
>-#define _PIPE_B_CSC_COEFF_BV        0x49124
>-#define _PIPE_B_CSC_MODE        0x49128
>-#define _PIPE_B_CSC_PREOFF_HI        0x49130
>-#define _PIPE_B_CSC_PREOFF_ME        0x49134
>-#define _PIPE_B_CSC_PREOFF_LO        0x49138
>-#define _PIPE_B_CSC_POSTOFF_HI        0x49140
>-#define _PIPE_B_CSC_POSTOFF_ME        0x49144
>-#define _PIPE_B_CSC_POSTOFF_LO        0x49148
>-
>-#define PIPE_CSC_COEFF_RY_GY(pipe)        _MMIO_PIPE(pipe, _PIPE_A_CSC_CO=
EFF_RY_GY, _PIPE_B_CSC_COEFF_RY_GY)
>-#define PIPE_CSC_COEFF_BY(pipe)                _MMIO_PIPE(pipe, _PIPE_A_C=
SC_COEFF_BY, _PIPE_B_CSC_COEFF_BY)
>-#define PIPE_CSC_COEFF_RU_GU(pipe)        _MMIO_PIPE(pipe, _PIPE_A_CSC_CO=
EFF_RU_GU, _PIPE_B_CSC_COEFF_RU_GU)
>-#define PIPE_CSC_COEFF_BU(pipe)                _MMIO_PIPE(pipe, _PIPE_A_C=
SC_COEFF_BU, _PIPE_B_CSC_COEFF_BU)
>-#define PIPE_CSC_COEFF_RV_GV(pipe)        _MMIO_PIPE(pipe, _PIPE_A_CSC_CO=
EFF_RV_GV, _PIPE_B_CSC_COEFF_RV_GV)
>-#define PIPE_CSC_COEFF_BV(pipe)                _MMIO_PIPE(pipe, _PIPE_A_C=
SC_COEFF_BV, _PIPE_B_CSC_COEFF_BV)
>-#define PIPE_CSC_MODE(pipe)                _MMIO_PIPE(pipe, _PIPE_A_CSC_M=
ODE, _PIPE_B_CSC_MODE)
>-#define PIPE_CSC_PREOFF_HI(pipe)        _MMIO_PIPE(pipe, _PIPE_A_CSC_PREO=
FF_HI, _PIPE_B_CSC_PREOFF_HI)
>-#define PIPE_CSC_PREOFF_ME(pipe)        _MMIO_PIPE(pipe, _PIPE_A_CSC_PREO=
FF_ME, _PIPE_B_CSC_PREOFF_ME)
>-#define PIPE_CSC_PREOFF_LO(pipe)        _MMIO_PIPE(pipe, _PIPE_A_CSC_PREO=
FF_LO, _PIPE_B_CSC_PREOFF_LO)
>-#define PIPE_CSC_POSTOFF_HI(pipe)        _MMIO_PIPE(pipe, _PIPE_A_CSC_POS=
TOFF_HI, _PIPE_B_CSC_POSTOFF_HI)
>-#define PIPE_CSC_POSTOFF_ME(pipe)        _MMIO_PIPE(pipe, _PIPE_A_CSC_POS=
TOFF_ME, _PIPE_B_CSC_POSTOFF_ME)
>-#define PIPE_CSC_POSTOFF_LO(pipe)        _MMIO_PIPE(pipe, _PIPE_A_CSC_POS=
TOFF_LO, _PIPE_B_CSC_POSTOFF_LO)
>-
>-/* Pipe Output CSC */
>-#define _PIPE_A_OUTPUT_CSC_COEFF_RY_GY        0x49050
>-#define _PIPE_A_OUTPUT_CSC_COEFF_BY        0x49054
>-#define _PIPE_A_OUTPUT_CSC_COEFF_RU_GU        0x49058
>-#define _PIPE_A_OUTPUT_CSC_COEFF_BU        0x4905c
>-#define _PIPE_A_OUTPUT_CSC_COEFF_RV_GV        0x49060
>-#define _PIPE_A_OUTPUT_CSC_COEFF_BV        0x49064
>-#define _PIPE_A_OUTPUT_CSC_PREOFF_HI        0x49068
>-#define _PIPE_A_OUTPUT_CSC_PREOFF_ME        0x4906c
>-#define _PIPE_A_OUTPUT_CSC_PREOFF_LO        0x49070
>-#define _PIPE_A_OUTPUT_CSC_POSTOFF_HI        0x49074
>-#define _PIPE_A_OUTPUT_CSC_POSTOFF_ME        0x49078
>-#define _PIPE_A_OUTPUT_CSC_POSTOFF_LO        0x4907c
>-
>-#define _PIPE_B_OUTPUT_CSC_COEFF_RY_GY        0x49150
>-#define _PIPE_B_OUTPUT_CSC_COEFF_BY        0x49154
>-#define _PIPE_B_OUTPUT_CSC_COEFF_RU_GU        0x49158
>-#define _PIPE_B_OUTPUT_CSC_COEFF_BU        0x4915c
>-#define _PIPE_B_OUTPUT_CSC_COEFF_RV_GV        0x49160
>-#define _PIPE_B_OUTPUT_CSC_COEFF_BV        0x49164
>-#define _PIPE_B_OUTPUT_CSC_PREOFF_HI        0x49168
>-#define _PIPE_B_OUTPUT_CSC_PREOFF_ME        0x4916c
>-#define _PIPE_B_OUTPUT_CSC_PREOFF_LO        0x49170
>-#define _PIPE_B_OUTPUT_CSC_POSTOFF_HI        0x49174
>-#define _PIPE_B_OUTPUT_CSC_POSTOFF_ME        0x49178
>-#define _PIPE_B_OUTPUT_CSC_POSTOFF_LO        0x4917c
>-
>-#define PIPE_CSC_OUTPUT_COEFF_RY_GY(pipe)        _MMIO_PIPE(pipe,\
>-                                                           _PIPE_A_OUTPUT=
_CSC_COEFF_RY_GY,\
>-                                                           _PIPE_B_OUTPUT=
_CSC_COEFF_RY_GY)
>-#define PIPE_CSC_OUTPUT_COEFF_BY(pipe)                _MMIO_PIPE(pipe, \
>-                                                           _PIPE_A_OUTPUT=
_CSC_COEFF_BY, \
>-                                                           _PIPE_B_OUTPUT=
_CSC_COEFF_BY)
>-#define PIPE_CSC_OUTPUT_COEFF_RU_GU(pipe)        _MMIO_PIPE(pipe, \
>-                                                           _PIPE_A_OUTPUT=
_CSC_COEFF_RU_GU, \
>-                                                           _PIPE_B_OUTPUT=
_CSC_COEFF_RU_GU)
>-#define PIPE_CSC_OUTPUT_COEFF_BU(pipe)                _MMIO_PIPE(pipe, \
>-                                                           _PIPE_A_OUTPUT=
_CSC_COEFF_BU, \
>-                                                           _PIPE_B_OUTPUT=
_CSC_COEFF_BU)
>-#define PIPE_CSC_OUTPUT_COEFF_RV_GV(pipe)        _MMIO_PIPE(pipe, \
>-                                                           _PIPE_A_OUTPUT=
_CSC_COEFF_RV_GV, \
>-                                                           _PIPE_B_OUTPUT=
_CSC_COEFF_RV_GV)
>-#define PIPE_CSC_OUTPUT_COEFF_BV(pipe)                _MMIO_PIPE(pipe, \
>-                                                           _PIPE_A_OUTPUT=
_CSC_COEFF_BV, \
>-                                                           _PIPE_B_OUTPUT=
_CSC_COEFF_BV)
>-#define PIPE_CSC_OUTPUT_PREOFF_HI(pipe)                _MMIO_PIPE(pipe, \
>-                                                           _PIPE_A_OUTPUT=
_CSC_PREOFF_HI, \
>-                                                           _PIPE_B_OUTPUT=
_CSC_PREOFF_HI)
>-#define PIPE_CSC_OUTPUT_PREOFF_ME(pipe)                _MMIO_PIPE(pipe, \
>-                                                           _PIPE_A_OUTPUT=
_CSC_PREOFF_ME, \
>-                                                           _PIPE_B_OUTPUT=
_CSC_PREOFF_ME)
>-#define PIPE_CSC_OUTPUT_PREOFF_LO(pipe)                _MMIO_PIPE(pipe, \
>-                                                           _PIPE_A_OUTPUT=
_CSC_PREOFF_LO, \
>-                                                           _PIPE_B_OUTPUT=
_CSC_PREOFF_LO)
>-#define PIPE_CSC_OUTPUT_POSTOFF_HI(pipe)        _MMIO_PIPE(pipe, \
>-                                                           _PIPE_A_OUTPUT=
_CSC_POSTOFF_HI, \
>-                                                           _PIPE_B_OUTPUT=
_CSC_POSTOFF_HI)
>-#define PIPE_CSC_OUTPUT_POSTOFF_ME(pipe)        _MMIO_PIPE(pipe, \
>-                                                           _PIPE_A_OUTPUT=
_CSC_POSTOFF_ME, \
>-                                                           _PIPE_B_OUTPUT=
_CSC_POSTOFF_ME)
>-#define PIPE_CSC_OUTPUT_POSTOFF_LO(pipe)        _MMIO_PIPE(pipe, \
>-                                                           _PIPE_A_OUTPUT=
_CSC_POSTOFF_LO, \
>-                                                           _PIPE_B_OUTPUT=
_CSC_POSTOFF_LO)
>-
>-/* pipe degamma/gamma LUTs on IVB+ */
>-#define _PAL_PREC_INDEX_A        0x4A400
>-#define _PAL_PREC_INDEX_B        0x4AC00
>-#define _PAL_PREC_INDEX_C        0x4B400
>-#define   PAL_PREC_SPLIT_MODE                REG_BIT(31)
>-#define   PAL_PREC_AUTO_INCREMENT        REG_BIT(15)
>-#define   PAL_PREC_INDEX_VALUE_MASK        REG_GENMASK(9, 0)
>-#define   PAL_PREC_INDEX_VALUE(x)        REG_FIELD_PREP(PAL_PREC_INDEX_VA=
LUE_MASK, (x))
>-#define _PAL_PREC_DATA_A        0x4A404
>-#define _PAL_PREC_DATA_B        0x4AC04
>-#define _PAL_PREC_DATA_C        0x4B404
>-/* see PREC_PALETTE_* for the bits */
>-#define _PAL_PREC_GC_MAX_A        0x4A410
>-#define _PAL_PREC_GC_MAX_B        0x4AC10
>-#define _PAL_PREC_GC_MAX_C        0x4B410
>-#define _PAL_PREC_EXT_GC_MAX_A        0x4A420
>-#define _PAL_PREC_EXT_GC_MAX_B        0x4AC20
>-#define _PAL_PREC_EXT_GC_MAX_C        0x4B420
>-#define _PAL_PREC_EXT2_GC_MAX_A        0x4A430
>-#define _PAL_PREC_EXT2_GC_MAX_B        0x4AC30
>-#define _PAL_PREC_EXT2_GC_MAX_C        0x4B430
>-
>-#define PREC_PAL_INDEX(pipe)                _MMIO_PIPE(pipe, _PAL_PREC_IN=
DEX_A, _PAL_PREC_INDEX_B)
>-#define PREC_PAL_DATA(pipe)                _MMIO_PIPE(pipe, _PAL_PREC_DAT=
A_A, _PAL_PREC_DATA_B)
>-#define PREC_PAL_GC_MAX(pipe, i)        _MMIO(_PIPE(pipe, _PAL_PREC_GC_MA=
X_A, _PAL_PREC_GC_MAX_B) + (i) * 4) /* u1.16 */
>-#define PREC_PAL_EXT_GC_MAX(pipe, i)        _MMIO(_PIPE(pipe, _PAL_PREC_E=
XT_GC_MAX_A, _PAL_PREC_EXT_GC_MAX_B) + (i) * 4) /* u3.16 */
>-#define PREC_PAL_EXT2_GC_MAX(pipe, i)        _MMIO(_PIPE(pipe, _PAL_PREC_=
EXT2_GC_MAX_A, _PAL_PREC_EXT2_GC_MAX_B) + (i) * 4) /* glk+, u3.16 */
>-
>-#define _PRE_CSC_GAMC_INDEX_A        0x4A484
>-#define _PRE_CSC_GAMC_INDEX_B        0x4AC84
>-#define _PRE_CSC_GAMC_INDEX_C        0x4B484
>-#define   PRE_CSC_GAMC_AUTO_INCREMENT        REG_BIT(10)
>-#define   PRE_CSC_GAMC_INDEX_VALUE_MASK        REG_GENMASK(7, 0)
>-#define   PRE_CSC_GAMC_INDEX_VALUE(x)        REG_FIELD_PREP(PRE_CSC_GAMC_=
INDEX_VALUE_MASK, (x))
>-#define _PRE_CSC_GAMC_DATA_A        0x4A488
>-#define _PRE_CSC_GAMC_DATA_B        0x4AC88
>-#define _PRE_CSC_GAMC_DATA_C        0x4B488
>-
>-#define PRE_CSC_GAMC_INDEX(pipe)        _MMIO_PIPE(pipe, _PRE_CSC_GAMC_IN=
DEX_A, _PRE_CSC_GAMC_INDEX_B)
>-#define PRE_CSC_GAMC_DATA(pipe)                _MMIO_PIPE(pipe, _PRE_CSC_=
GAMC_DATA_A, _PRE_CSC_GAMC_DATA_B)
>-
>-/* ICL Multi segmented gamma */
>-#define _PAL_PREC_MULTI_SEG_INDEX_A        0x4A408
>-#define _PAL_PREC_MULTI_SEG_INDEX_B        0x4AC08
>-#define   PAL_PREC_MULTI_SEG_AUTO_INCREMENT        REG_BIT(15)
>-#define   PAL_PREC_MULTI_SEG_INDEX_VALUE_MASK        REG_GENMASK(4, 0)
>-#define   PAL_PREC_MULTI_SEG_INDEX_VALUE(x)        REG_FIELD_PREP(PAL_PRE=
C_MULTI_SEG_INDEX_VALUE_MASK, (x))
>-
>-#define _PAL_PREC_MULTI_SEG_DATA_A        0x4A40C
>-#define _PAL_PREC_MULTI_SEG_DATA_B        0x4AC0C
>-/* see PREC_PALETTE_12P4_* for the bits */
>-
>-#define PREC_PAL_MULTI_SEG_INDEX(pipe)        _MMIO_PIPE(pipe, \
>-                                        _PAL_PREC_MULTI_SEG_INDEX_A, \
>-                                        _PAL_PREC_MULTI_SEG_INDEX_B)
>-#define PREC_PAL_MULTI_SEG_DATA(pipe)        _MMIO_PIPE(pipe, \
>-                                        _PAL_PREC_MULTI_SEG_DATA_A, \
>-                                        _PAL_PREC_MULTI_SEG_DATA_B)
>-
> #define _MMIO_PLANE_GAMC(plane, i, a, b)  _MMIO(_PIPE(plane, a, b) + (i) =
* 4)
>=20
> /* Plane CSC Registers */
>@@ -6471,47 +6252,6 @@ enum skl_power_gate {
>                                                             (index) * 4, =
_PLANE_CSC_POSTOFF_HI_2(pipe) + \
>                                                             (index) * 4)
>=20
>-/* pipe CSC & degamma/gamma LUTs on CHV */
>-#define _CGM_PIPE_A_CSC_COEFF01        (VLV_DISPLAY_BASE + 0x67900)
>-#define _CGM_PIPE_A_CSC_COEFF23        (VLV_DISPLAY_BASE + 0x67904)
>-#define _CGM_PIPE_A_CSC_COEFF45        (VLV_DISPLAY_BASE + 0x67908)
>-#define _CGM_PIPE_A_CSC_COEFF67        (VLV_DISPLAY_BASE + 0x6790C)
>-#define _CGM_PIPE_A_CSC_COEFF8        (VLV_DISPLAY_BASE + 0x67910)
>-#define _CGM_PIPE_A_DEGAMMA        (VLV_DISPLAY_BASE + 0x66000)
>-/* cgm degamma ldw */
>-#define   CGM_PIPE_DEGAMMA_GREEN_LDW_MASK        REG_GENMASK(29, 16)
>-#define   CGM_PIPE_DEGAMMA_BLUE_LDW_MASK        REG_GENMASK(13, 0)
>-/* cgm degamma udw */
>-#define   CGM_PIPE_DEGAMMA_RED_UDW_MASK                REG_GENMASK(13, 0)
>-#define _CGM_PIPE_A_GAMMA        (VLV_DISPLAY_BASE + 0x67000)
>-/* cgm gamma ldw */
>-#define   CGM_PIPE_GAMMA_GREEN_LDW_MASK                REG_GENMASK(25, 16=
)
>-#define   CGM_PIPE_GAMMA_BLUE_LDW_MASK                REG_GENMASK(9, 0)
>-/* cgm gamma udw */
>-#define   CGM_PIPE_GAMMA_RED_UDW_MASK                REG_GENMASK(9, 0)
>-#define _CGM_PIPE_A_MODE        (VLV_DISPLAY_BASE + 0x67A00)
>-#define   CGM_PIPE_MODE_GAMMA        (1 << 2)
>-#define   CGM_PIPE_MODE_CSC        (1 << 1)
>-#define   CGM_PIPE_MODE_DEGAMMA        (1 << 0)
>-
>-#define _CGM_PIPE_B_CSC_COEFF01        (VLV_DISPLAY_BASE + 0x69900)
>-#define _CGM_PIPE_B_CSC_COEFF23        (VLV_DISPLAY_BASE + 0x69904)
>-#define _CGM_PIPE_B_CSC_COEFF45        (VLV_DISPLAY_BASE + 0x69908)
>-#define _CGM_PIPE_B_CSC_COEFF67        (VLV_DISPLAY_BASE + 0x6990C)
>-#define _CGM_PIPE_B_CSC_COEFF8        (VLV_DISPLAY_BASE + 0x69910)
>-#define _CGM_PIPE_B_DEGAMMA        (VLV_DISPLAY_BASE + 0x68000)
>-#define _CGM_PIPE_B_GAMMA        (VLV_DISPLAY_BASE + 0x69000)
>-#define _CGM_PIPE_B_MODE        (VLV_DISPLAY_BASE + 0x69A00)
>-
>-#define CGM_PIPE_CSC_COEFF01(pipe)        _MMIO_PIPE(pipe, _CGM_PIPE_A_CS=
C_COEFF01, _CGM_PIPE_B_CSC_COEFF01)
>-#define CGM_PIPE_CSC_COEFF23(pipe)        _MMIO_PIPE(pipe, _CGM_PIPE_A_CS=
C_COEFF23, _CGM_PIPE_B_CSC_COEFF23)
>-#define CGM_PIPE_CSC_COEFF45(pipe)        _MMIO_PIPE(pipe, _CGM_PIPE_A_CS=
C_COEFF45, _CGM_PIPE_B_CSC_COEFF45)
>-#define CGM_PIPE_CSC_COEFF67(pipe)        _MMIO_PIPE(pipe, _CGM_PIPE_A_CS=
C_COEFF67, _CGM_PIPE_B_CSC_COEFF67)
>-#define CGM_PIPE_CSC_COEFF8(pipe)        _MMIO_PIPE(pipe, _CGM_PIPE_A_CSC=
_COEFF8, _CGM_PIPE_B_CSC_COEFF8)
>-#define CGM_PIPE_DEGAMMA(pipe, i, w)        _MMIO(_PIPE(pipe, _CGM_PIPE_A=
_DEGAMMA, _CGM_PIPE_B_DEGAMMA) + (i) * 8 + (w) * 4)
>-#define CGM_PIPE_GAMMA(pipe, i, w)        _MMIO(_PIPE(pipe, _CGM_PIPE_A_G=
AMMA, _CGM_PIPE_B_GAMMA) + (i) * 8 + (w) * 4)
>-#define CGM_PIPE_MODE(pipe)                _MMIO_PIPE(pipe, _CGM_PIPE_A_M=
ODE, _CGM_PIPE_B_MODE)
>-
> /* Gen4+ Timestamp and Pipe Frame time stamp registers */
> #define GEN4_TIMESTAMP                _MMIO(0x2358)
> #define ILK_TIMESTAMP_HI        _MMIO(0x70070)
>diff --git a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c b/drivers/gpu/drm=
/i915/intel_gvt_mmio_table.c
>index 5d08774029cc..b3c036a54529 100644
>--- a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
>+++ b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
>@@ -5,6 +5,7 @@
>=20
> #include "display/intel_audio_regs.h"
> #include "display/intel_backlight_regs.h"
>+#include "display/intel_color_regs.h"
> #include "display/intel_display_types.h"
> #include "display/intel_dmc_regs.h"
> #include "display/intel_dp_aux_regs.h"
>--=20
>2.39.2
>
