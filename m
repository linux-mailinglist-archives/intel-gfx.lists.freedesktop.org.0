Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 28B6D8FF0F1
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jun 2024 17:42:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8C51510E9C2;
	Thu,  6 Jun 2024 15:42:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dx4ptg4n";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2802D10E9BE
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Jun 2024 15:42:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717688568; x=1749224568;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=+gyLJolRifOm2wVV3t8YmJcQT3Mwf1XVc9wSPfNROZo=;
 b=dx4ptg4nXTVBwUnrrw/X8iLSO/xygdr1zu1uoO/MVhwrOXTRsC7Lx7+j
 7C0+1XjAD0sHaiPBNRJnN8QwMDng842j0AJ1ee6QhH/orEKWoW+Gm6gA1
 6ifs4LjIiyri8JmYv/UhEM0hrmnVQ2A7GDGu+tz8wpI7gKA/+q+kZfPsI
 WMm7HPkvpvKHVQaVH/wlZM5MBoc8KxbFw4VGCH98EEyJaANfCv9B9+ers
 ahxh+wqcvt+7MM9lWBYL/YA3silXEywsFKn58lHnbvfmoJCmOkaxSPKaZ
 YQMEUjb5Lu5G9bYYUqVPTICFSDVwqB2BRJT2yUxEWX23ET02NOeBmFFJ6 Q==;
X-CSE-ConnectionGUID: zb2g6jZfSHiUXpEHhwIDIQ==
X-CSE-MsgGUID: JKecyptFS823JIoipdgmGw==
X-IronPort-AV: E=McAfee;i="6600,9927,11095"; a="24940548"
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="24940548"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2024 08:42:41 -0700
X-CSE-ConnectionGUID: o+wE6Ig2T0a/rnAtTF2FZw==
X-CSE-MsgGUID: +A6jRGvUTvCumU1ulZGPxA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="38015252"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Jun 2024 08:42:41 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 6 Jun 2024 08:42:40 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 6 Jun 2024 08:42:40 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 6 Jun 2024 08:42:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZdBdjKIlryg19QVZpT2E9r+GWg4HWL0HvppXIj+rXPEDSUW7KoKJwHheqHx2egRG9SbsHhWksC+tSyQs73Yh0LsfKUmBL61Hs0YAejg/D8KYur+v+3BE1SqOrbyuWnfexItnHORSfkUogzzUo8crT5TL3gAoEsvmItCqntloykLZdq5TFoUDvzlhrF+qkukDpBMkCyioq1/xUHY4igdSwFpTJzNPTOlg8+whBdr4DHjd5c6ldwhnstKLyv0Hda3RQcgyhXYioKH3N7xmBWkKlT4evcj8ngygudj1GF/oaO4+SRScurPnHPyaQIufsBAt/DVKMS/FYGKr8NSy9LmBRg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=s4qReHJBswcYXgxqC9NwofIi4nOjpbaX5mCs/dDlSZE=;
 b=mqz5t0+w2UE5BS1hyvxp3WD1njnM5iiAfgnDXPJZvhLIcUp/tmmtjHlCpJofO0ObXvPdgIfeMAyPjdyLzDQa0IsjQ8fLVw7jRLguwtXGPZL7+VeW+NZwYvLxjGpcVfEE+joIgV9NIDP3UxExkZlYNvBlJMohe27ZWif2QZV5Y+yE1ZXypMOL9151fv5PW3jeQ20ycJQtl2+7xTGA2qR3VbqsAL64w/t1FL7uZqGGFpgcCHvSDrSnCdpGWp8pX9nupwKQvrjGrRVJGpfUmbXj3X3xRCuG9KmtE6lNI3saqIeySLGU2ij7PbZqLL5UtndgKsidcCLXG9MDYR3ztZEtLw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by SJ2PR11MB8404.namprd11.prod.outlook.com (2603:10b6:a03:53f::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.34; Thu, 6 Jun
 2024 15:42:38 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7633.033; Thu, 6 Jun 2024
 15:42:38 +0000
Date: Thu, 6 Jun 2024 11:42:36 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 18/65] drm/i915: pass dev_priv explicitly to TRANSCONF
Message-ID: <ZmHY7EcyEYspcO_1@intel.com>
References: <cover.1717514638.git.jani.nikula@intel.com>
 <9afc96be1cbe4514cdca701ab434b4c7aa3a55ba.1717514638.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <9afc96be1cbe4514cdca701ab434b4c7aa3a55ba.1717514638.git.jani.nikula@intel.com>
X-ClientProxiedBy: BY5PR16CA0024.namprd16.prod.outlook.com
 (2603:10b6:a03:1a0::37) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|SJ2PR11MB8404:EE_
X-MS-Office365-Filtering-Correlation-Id: 3946b226-c74b-4020-33be-08dc863f4af3
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|376005|1800799015|366007;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?1NnA8cMfMnkqSHCKi/4xoxrFgWBMDvmyqDsPWrmqHkfbl/XdJZnDFrB4q2s1?=
 =?us-ascii?Q?2cqXX6UmkjOB1G7UE+5Mk5db0zBglSCJPoAVL6Ws88By/jFbyVGKaVut4c/X?=
 =?us-ascii?Q?uFMoyS+EofhbZSYOLowHQAsl4yBDFxAxKERlI+CxuX9uHBPCNhMWW8GUyXFI?=
 =?us-ascii?Q?zVN2JhPZIm9i8O3ZywNNRxX1xUDWUMKn6yMIFjT6iyO7YY6i2g/eR1F7zg9n?=
 =?us-ascii?Q?DOLns7Qd33jIzjO8F2SSvMwexlXBeAsWXjVwSkiZXTIu9Ie+U4ITpGEaErIj?=
 =?us-ascii?Q?ASHT4iBAAk5WgNpZGcZMFybeB4QEhsfNEhi+aFYQBae2qBTu+f6P7GGw5hoL?=
 =?us-ascii?Q?kDRVoU/Q6ckebAgvdnvZ2TtNEM+pwMY94kbgl9nuFHLmtKd3Qc7vsoqh7Djl?=
 =?us-ascii?Q?+CoOtdUrXaIXQhfXM9l71/eMA9zHH7kIFBKD9Cjj3PSLLx3zDDFt/9tT+1d5?=
 =?us-ascii?Q?ZUk0dE1PSoaFR33FnQUe6yUHSo+yZCjeiJApX6yPdqanM6309bcSF09/2PMF?=
 =?us-ascii?Q?pxF53RjjWaGfcwhPSra5v6pSOqMH/qwipsJdc+CTZvTxaUdfgYrLu2gnac0O?=
 =?us-ascii?Q?bjf7WX2q45lk/rxiLopNp0A4YJc4fPJKo/FWmWWtlXJEvL29IJK4lENS2BZe?=
 =?us-ascii?Q?/7/Y0ZhstxBy2XUzTMeF0eTA35YErvoaHvVTX0dG+jGY/Us/Vq1ubVsqjoGz?=
 =?us-ascii?Q?UStVnUZZGbx/wE3qPOiqZfTcf+e2vCmpTQjb8FZtaFYnLiTiU3+WeTu0Z4ji?=
 =?us-ascii?Q?shWdRpsTvhif4TfRKLsI3ZXQ4a/wIpa9Bo52+s7EAWUSUyaFL6A+oj7ZF072?=
 =?us-ascii?Q?HNilNsjqNiKIVIBbBrNYchEW/YANxiKA7jnO++N1mTkm233HbTWlUl+UMK+y?=
 =?us-ascii?Q?uo+9ib6AqQvxDIzmFqfGppyUvu/hmOBu8/FwCkbeBxOrBBZF2XsMw3xY/Eqk?=
 =?us-ascii?Q?pFLsFUAioWZOMtFtuic3RtSyBPWqeipdVX63jI2QBknfOeCGOoWqdqOllkmt?=
 =?us-ascii?Q?Zz2Mb2p2YUkbBnZF3n5KxgYos7eQ2KWFHsG1Kvx8tWWjUMKhdvuzMTh8FMZ8?=
 =?us-ascii?Q?ihCHzQaCU0m/X5bYa6FMEWBfA7FAU0d670LS5+x1QMvdPl+cLvqBJp1yfIDk?=
 =?us-ascii?Q?qUga0cB6rtabR8j1iFDKQu9MQgwWuU7LVkieofFKykup0H81dNI5e2UZZ0xh?=
 =?us-ascii?Q?09B1rPF1UjCZp22O/Xg5UvhldDaZKMnIP+f9HQDEaJYFQqFruCDPc5WVrdfX?=
 =?us-ascii?Q?jZ6FzWXnBmw6AFy6Gm6JnHeqdf8ERCKVhta5z9KKzbvgCZSmxF9Cwy/uEKr/?=
 =?us-ascii?Q?JZ+WbqiGGJLAy2asHTfi8ElU?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(366007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?tBsX/HdRpV+UshjAVwSrWQxEb9DvV+N0gWfx0hHxZPnYLrG6YKCiTZn36NQu?=
 =?us-ascii?Q?UZDtSann7jlDif5VpZLS+CvMyjuej5GwpWIZhEWGGEVJE/7d/P2nsCY93r0D?=
 =?us-ascii?Q?EfhjlDEcoOk2WvpYqkXwWh7TtakppGsR9hh57C0IrUMmkYsgddUDKhjkPX67?=
 =?us-ascii?Q?iOGyWzwQMj24bDhIVKXxx4EhU9CJIDFDhuTKSjTsA27HnuHzm5toI7akDF13?=
 =?us-ascii?Q?lZ0XEY1sZW8c/Z5JjI2mXEVvX0QldmS3WLXj5rHMjMNJzZOiQDTksu1x12ZE?=
 =?us-ascii?Q?mM9O++ysTLEJ17WJ5++W6zNqb0oGe5ou4ghCiMcHMOyCG/i9qG81+rREPsfS?=
 =?us-ascii?Q?QCgPX8tAImxSMLp1FHfnUGi6lqFYYGteTKT3jgzQ+uARH3eY/L9NPP3tUYKb?=
 =?us-ascii?Q?fztb3CZEIgw3qf7oT2dXqnkjVrTZLOr5Z2dY9GCNITWQbDp86u8dpQMwei8w?=
 =?us-ascii?Q?6llbd2quI/vdwKfbiJJYmKkm5UxyxVRQgW17cLOA1Mh4p5I4GwgsysPv8RnB?=
 =?us-ascii?Q?zXQuzHx0jS08v1dcjo+XHDDS+IwhDm94vL/ccBn8ndg0SZO72Gq4pq76pcnu?=
 =?us-ascii?Q?/aZsLkLy8ohPKw2j9CMhLYAbeRlf8vh/DrrRmVmZDojZauax72lRaEK8Z3Aa?=
 =?us-ascii?Q?gZgcQtsXWSOEHJjieNb8IMMUUQyDBJVH3jc3+mvHKa8MijPv/vIvudYhdg3a?=
 =?us-ascii?Q?uGvLna0RVMDRvSth3OEGwQtQb9n9JHv6j+caPSRP4AGzU2L5ovEj2SqwcPnl?=
 =?us-ascii?Q?L+t95p4A8SI0Z4+Z0u6oOD5YSebuj7ZQY5vvahr8Rq3/E1gzwZ5NJC+Q1rPq?=
 =?us-ascii?Q?Q3XlAVJNuR2X6IbgsyNJ5PwGXHQzYcOHVPt0aWQaXTjGj7wAFFxbmPdSmNJT?=
 =?us-ascii?Q?BO63aj3z5K1PsRqYO525zk0m/1B2yi6vMljIDhoq+19I3FWH8JCd1Jn6Uqj4?=
 =?us-ascii?Q?UX4aUWFemPcMdvVjrZQFzDvOzlksjE5BbrpdSSJxHac6MbTUIxZKkWw5ibMP?=
 =?us-ascii?Q?lIaRXFcVoEdk6TszE8sBEgPEgQSBLwtXdb/Vz4gdP4j628DVLiED7E8rA/JR?=
 =?us-ascii?Q?qkDZWpE34tmaNu7wzm/6vqkRzRzFB0c8tFeUUYSKfGYro9UQgmN6Rnu8fMDh?=
 =?us-ascii?Q?T10bPGATQ3mplnR0eANtCg8Bs7ZEloSVKx1Dv6JwD28Rw05+l9ckFLm1BfWI?=
 =?us-ascii?Q?uOk/9YAPsTnEh9W9+2dWE2XFAfkQotnS1eASVfxzKizXpreTt8+FNE5lVMgL?=
 =?us-ascii?Q?QmyVxV5GvywjXiZxl6Foashc+/ezIoJ3hvN9CXASIN17T7R42ryG2z50Aqtp?=
 =?us-ascii?Q?vFaq6nobOz8GBrHkZaJsEtZYSJjEBWsT3mac+LRkLWpm9M0pg4gcGyRQb/dv?=
 =?us-ascii?Q?xjsbvDfmsry7sJGI6Dj0qsfhH4Ymz+f7sjforfNYqsD48zA47RHIfOKVaYIv?=
 =?us-ascii?Q?fFJLH33OYtMAouTxbIr7/UDpI9PnMmHZH2yh9YJT08NQZO85UWoHvHR6ZnEW?=
 =?us-ascii?Q?MKgSHB6oJfoCfHgjXcGDAazTkJttrTf5Asvy6QrLR5xypNNoM2zxiGjtRoIt?=
 =?us-ascii?Q?HUaKGUZIa3r1vSlCJG8eZj+JB2KEDFbMfRhNeuOq?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3946b226-c74b-4020-33be-08dc863f4af3
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Jun 2024 15:42:38.0251 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: GeyDTTJTgPzBR7S4avUAjvnvM9JVt6cfCxHb+DeXpyFyAjNynLgZnEyb4kSx34iNfbDR2+SpYt0YAwEVvuSu/Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8404
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

On Tue, Jun 04, 2024 at 06:25:36PM +0300, Jani Nikula wrote:
> Avoid the implicit dev_priv local variable use, and pass dev_priv
> explicitly to the TRANSCONF register macro.

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/icl_dsi.c        | 12 +++--
>  drivers/gpu/drm/i915/display/intel_crt.c      | 11 ++--
>  drivers/gpu/drm/i915/display/intel_display.c  | 52 +++++++++++--------
>  .../i915/display/intel_display_power_well.c   |  8 +--
>  drivers/gpu/drm/i915/display/intel_drrs.c     |  2 +-
>  drivers/gpu/drm/i915/display/intel_fdi.c      |  6 +--
>  .../gpu/drm/i915/display/intel_pch_display.c  |  7 +--
>  drivers/gpu/drm/i915/display/vlv_dsi.c        |  3 +-
>  drivers/gpu/drm/i915/gvt/display.c            | 12 ++---
>  drivers/gpu/drm/i915/gvt/handlers.c           | 12 +++--
>  drivers/gpu/drm/i915/i915_reg.h               |  2 +-
>  drivers/gpu/drm/i915/intel_gvt_mmio_table.c   |  8 +--
>  12 files changed, 76 insertions(+), 59 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
> index 0625c4d5ee0b..9beb94494b2b 100644
> --- a/drivers/gpu/drm/i915/display/icl_dsi.c
> +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
> @@ -1013,10 +1013,11 @@ static void gen11_dsi_enable_transcoder(struct intel_encoder *encoder)
>  
>  	for_each_dsi_port(port, intel_dsi->ports) {
>  		dsi_trans = dsi_port_to_transcoder(port);
> -		intel_de_rmw(dev_priv, TRANSCONF(dsi_trans), 0, TRANSCONF_ENABLE);
> +		intel_de_rmw(dev_priv, TRANSCONF(dev_priv, dsi_trans), 0,
> +			     TRANSCONF_ENABLE);
>  
>  		/* wait for transcoder to be enabled */
> -		if (intel_de_wait_for_set(dev_priv, TRANSCONF(dsi_trans),
> +		if (intel_de_wait_for_set(dev_priv, TRANSCONF(dev_priv, dsi_trans),
>  					  TRANSCONF_STATE_ENABLE, 10))
>  			drm_err(&dev_priv->drm,
>  				"DSI transcoder not enabled\n");
> @@ -1279,10 +1280,11 @@ static void gen11_dsi_disable_transcoder(struct intel_encoder *encoder)
>  		dsi_trans = dsi_port_to_transcoder(port);
>  
>  		/* disable transcoder */
> -		intel_de_rmw(dev_priv, TRANSCONF(dsi_trans), TRANSCONF_ENABLE, 0);
> +		intel_de_rmw(dev_priv, TRANSCONF(dev_priv, dsi_trans),
> +			     TRANSCONF_ENABLE, 0);
>  
>  		/* wait for transcoder to be disabled */
> -		if (intel_de_wait_for_clear(dev_priv, TRANSCONF(dsi_trans),
> +		if (intel_de_wait_for_clear(dev_priv, TRANSCONF(dev_priv, dsi_trans),
>  					    TRANSCONF_STATE_ENABLE, 50))
>  			drm_err(&dev_priv->drm,
>  				"DSI trancoder not disabled\n");
> @@ -1714,7 +1716,7 @@ static bool gen11_dsi_get_hw_state(struct intel_encoder *encoder,
>  			goto out;
>  		}
>  
> -		tmp = intel_de_read(dev_priv, TRANSCONF(dsi_trans));
> +		tmp = intel_de_read(dev_priv, TRANSCONF(dev_priv, dsi_trans));
>  		ret = tmp & TRANSCONF_ENABLE;
>  	}
>  out:
> diff --git a/drivers/gpu/drm/i915/display/intel_crt.c b/drivers/gpu/drm/i915/display/intel_crt.c
> index 808fa8afb164..d4f16d894eda 100644
> --- a/drivers/gpu/drm/i915/display/intel_crt.c
> +++ b/drivers/gpu/drm/i915/display/intel_crt.c
> @@ -725,11 +725,13 @@ intel_crt_load_detect(struct intel_crt *crt, enum pipe pipe)
>  	intel_de_write(dev_priv, BCLRPAT(dev_priv, cpu_transcoder), 0x500050);
>  
>  	if (DISPLAY_VER(dev_priv) != 2) {
> -		u32 transconf = intel_de_read(dev_priv, TRANSCONF(cpu_transcoder));
> +		u32 transconf = intel_de_read(dev_priv,
> +					      TRANSCONF(dev_priv, cpu_transcoder));
>  
> -		intel_de_write(dev_priv, TRANSCONF(cpu_transcoder),
> +		intel_de_write(dev_priv, TRANSCONF(dev_priv, cpu_transcoder),
>  			       transconf | TRANSCONF_FORCE_BORDER);
> -		intel_de_posting_read(dev_priv, TRANSCONF(cpu_transcoder));
> +		intel_de_posting_read(dev_priv,
> +				      TRANSCONF(dev_priv, cpu_transcoder));
>  		/* Wait for next Vblank to substitue
>  		 * border color for Color info */
>  		intel_crtc_wait_for_next_vblank(intel_crtc_for_pipe(dev_priv, pipe));
> @@ -738,7 +740,8 @@ intel_crt_load_detect(struct intel_crt *crt, enum pipe pipe)
>  			connector_status_connected :
>  			connector_status_disconnected;
>  
> -		intel_de_write(dev_priv, TRANSCONF(cpu_transcoder), transconf);
> +		intel_de_write(dev_priv, TRANSCONF(dev_priv, cpu_transcoder),
> +			       transconf);
>  	} else {
>  		bool restore_vblank = false;
>  		int count, detect;
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 1e2ddae5ba94..9434eba91839 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -307,7 +307,7 @@ intel_wait_for_pipe_off(const struct intel_crtc_state *old_crtc_state)
>  		enum transcoder cpu_transcoder = old_crtc_state->cpu_transcoder;
>  
>  		/* Wait for the Pipe State to go off */
> -		if (intel_de_wait_for_clear(dev_priv, TRANSCONF(cpu_transcoder),
> +		if (intel_de_wait_for_clear(dev_priv, TRANSCONF(dev_priv, cpu_transcoder),
>  					    TRANSCONF_STATE_ENABLE, 100))
>  			drm_WARN(&dev_priv->drm, 1, "pipe_off wait timed out\n");
>  	} else {
> @@ -329,7 +329,8 @@ void assert_transcoder(struct drm_i915_private *dev_priv,
>  	power_domain = POWER_DOMAIN_TRANSCODER(cpu_transcoder);
>  	wakeref = intel_display_power_get_if_enabled(dev_priv, power_domain);
>  	if (wakeref) {
> -		u32 val = intel_de_read(dev_priv, TRANSCONF(cpu_transcoder));
> +		u32 val = intel_de_read(dev_priv,
> +					TRANSCONF(dev_priv, cpu_transcoder));
>  		cur_state = !!(val & TRANSCONF_ENABLE);
>  
>  		intel_display_power_put(dev_priv, power_domain, wakeref);
> @@ -453,7 +454,7 @@ void intel_enable_transcoder(const struct intel_crtc_state *new_crtc_state)
>  			     clear, set);
>  	}
>  
> -	val = intel_de_read(dev_priv, TRANSCONF(cpu_transcoder));
> +	val = intel_de_read(dev_priv, TRANSCONF(dev_priv, cpu_transcoder));
>  	if (val & TRANSCONF_ENABLE) {
>  		/* we keep both pipes enabled on 830 */
>  		drm_WARN_ON(&dev_priv->drm, !IS_I830(dev_priv));
> @@ -468,9 +469,9 @@ void intel_enable_transcoder(const struct intel_crtc_state *new_crtc_state)
>  				      TRANSCONF_PIXEL_COUNT_SCALING_X4);
>  	}
>  
> -	intel_de_write(dev_priv, TRANSCONF(cpu_transcoder),
> +	intel_de_write(dev_priv, TRANSCONF(dev_priv, cpu_transcoder),
>  		       val | TRANSCONF_ENABLE);
> -	intel_de_posting_read(dev_priv, TRANSCONF(cpu_transcoder));
> +	intel_de_posting_read(dev_priv, TRANSCONF(dev_priv, cpu_transcoder));
>  
>  	/*
>  	 * Until the pipe starts PIPEDSL reads will return a stale value,
> @@ -499,7 +500,7 @@ void intel_disable_transcoder(const struct intel_crtc_state *old_crtc_state)
>  	 */
>  	assert_planes_disabled(crtc);
>  
> -	val = intel_de_read(dev_priv, TRANSCONF(cpu_transcoder));
> +	val = intel_de_read(dev_priv, TRANSCONF(dev_priv, cpu_transcoder));
>  	if ((val & TRANSCONF_ENABLE) == 0)
>  		return;
>  
> @@ -519,7 +520,7 @@ void intel_disable_transcoder(const struct intel_crtc_state *old_crtc_state)
>  	    old_crtc_state->dsc.compression_enable)
>  		val &= ~TRANSCONF_PIXEL_COUNT_SCALING_MASK;
>  
> -	intel_de_write(dev_priv, TRANSCONF(cpu_transcoder), val);
> +	intel_de_write(dev_priv, TRANSCONF(dev_priv, cpu_transcoder), val);
>  
>  	if (DISPLAY_VER(dev_priv) >= 12)
>  		intel_de_rmw(dev_priv, hsw_chicken_trans_reg(dev_priv, cpu_transcoder),
> @@ -2799,9 +2800,11 @@ static bool intel_pipe_is_interlaced(const struct intel_crtc_state *crtc_state)
>  
>  	if (DISPLAY_VER(dev_priv) >= 9 ||
>  	    IS_BROADWELL(dev_priv) || IS_HASWELL(dev_priv))
> -		return intel_de_read(dev_priv, TRANSCONF(cpu_transcoder)) & TRANSCONF_INTERLACE_MASK_HSW;
> +		return intel_de_read(dev_priv,
> +				     TRANSCONF(dev_priv, cpu_transcoder)) & TRANSCONF_INTERLACE_MASK_HSW;
>  	else
> -		return intel_de_read(dev_priv, TRANSCONF(cpu_transcoder)) & TRANSCONF_INTERLACE_MASK;
> +		return intel_de_read(dev_priv,
> +				     TRANSCONF(dev_priv, cpu_transcoder)) & TRANSCONF_INTERLACE_MASK;
>  }
>  
>  static void intel_get_transcoder_timings(struct intel_crtc *crtc,
> @@ -2952,8 +2955,8 @@ void i9xx_set_pipeconf(const struct intel_crtc_state *crtc_state)
>  
>  	val |= TRANSCONF_FRAME_START_DELAY(crtc_state->framestart_delay - 1);
>  
> -	intel_de_write(dev_priv, TRANSCONF(cpu_transcoder), val);
> -	intel_de_posting_read(dev_priv, TRANSCONF(cpu_transcoder));
> +	intel_de_write(dev_priv, TRANSCONF(dev_priv, cpu_transcoder), val);
> +	intel_de_posting_read(dev_priv, TRANSCONF(dev_priv, cpu_transcoder));
>  }
>  
>  static bool i9xx_has_pfit(struct drm_i915_private *dev_priv)
> @@ -3035,7 +3038,8 @@ static bool i9xx_get_pipe_config(struct intel_crtc *crtc,
>  
>  	ret = false;
>  
> -	tmp = intel_de_read(dev_priv, TRANSCONF(pipe_config->cpu_transcoder));
> +	tmp = intel_de_read(dev_priv,
> +			    TRANSCONF(dev_priv, pipe_config->cpu_transcoder));
>  	if (!(tmp & TRANSCONF_ENABLE))
>  		goto out;
>  
> @@ -3182,8 +3186,8 @@ void ilk_set_pipeconf(const struct intel_crtc_state *crtc_state)
>  	val |= TRANSCONF_FRAME_START_DELAY(crtc_state->framestart_delay - 1);
>  	val |= TRANSCONF_MSA_TIMING_DELAY(crtc_state->msa_timing_delay);
>  
> -	intel_de_write(dev_priv, TRANSCONF(cpu_transcoder), val);
> -	intel_de_posting_read(dev_priv, TRANSCONF(cpu_transcoder));
> +	intel_de_write(dev_priv, TRANSCONF(dev_priv, cpu_transcoder), val);
> +	intel_de_posting_read(dev_priv, TRANSCONF(dev_priv, cpu_transcoder));
>  }
>  
>  static void hsw_set_transconf(const struct intel_crtc_state *crtc_state)
> @@ -3212,8 +3216,8 @@ static void hsw_set_transconf(const struct intel_crtc_state *crtc_state)
>  	    crtc_state->output_format != INTEL_OUTPUT_FORMAT_RGB)
>  		val |= TRANSCONF_OUTPUT_COLORSPACE_YUV_HSW;
>  
> -	intel_de_write(dev_priv, TRANSCONF(cpu_transcoder), val);
> -	intel_de_posting_read(dev_priv, TRANSCONF(cpu_transcoder));
> +	intel_de_write(dev_priv, TRANSCONF(dev_priv, cpu_transcoder), val);
> +	intel_de_posting_read(dev_priv, TRANSCONF(dev_priv, cpu_transcoder));
>  }
>  
>  static void bdw_set_pipe_misc(const struct intel_crtc_state *crtc_state)
> @@ -3408,7 +3412,8 @@ static bool ilk_get_pipe_config(struct intel_crtc *crtc,
>  	pipe_config->shared_dpll = NULL;
>  
>  	ret = false;
> -	tmp = intel_de_read(dev_priv, TRANSCONF(pipe_config->cpu_transcoder));
> +	tmp = intel_de_read(dev_priv,
> +			    TRANSCONF(dev_priv, pipe_config->cpu_transcoder));
>  	if (!(tmp & TRANSCONF_ENABLE))
>  		goto out;
>  
> @@ -3721,7 +3726,8 @@ static bool hsw_get_transcoder_state(struct intel_crtc *crtc,
>  			pipe_config->pch_pfit.force_thru = true;
>  	}
>  
> -	tmp = intel_de_read(dev_priv, TRANSCONF(pipe_config->cpu_transcoder));
> +	tmp = intel_de_read(dev_priv,
> +			    TRANSCONF(dev_priv, pipe_config->cpu_transcoder));
>  
>  	return tmp & TRANSCONF_ENABLE;
>  }
> @@ -3827,7 +3833,7 @@ static bool hsw_get_pipe_config(struct intel_crtc *crtc,
>  
>  	if (IS_HASWELL(dev_priv)) {
>  		u32 tmp = intel_de_read(dev_priv,
> -					TRANSCONF(pipe_config->cpu_transcoder));
> +					TRANSCONF(dev_priv, pipe_config->cpu_transcoder));
>  
>  		if (tmp & TRANSCONF_OUTPUT_COLORSPACE_YUV_HSW)
>  			pipe_config->output_format = INTEL_OUTPUT_FORMAT_YCBCR444;
> @@ -8238,8 +8244,8 @@ void i830_enable_pipe(struct drm_i915_private *dev_priv, enum pipe pipe)
>  		udelay(150); /* wait for warmup */
>  	}
>  
> -	intel_de_write(dev_priv, TRANSCONF(pipe), TRANSCONF_ENABLE);
> -	intel_de_posting_read(dev_priv, TRANSCONF(pipe));
> +	intel_de_write(dev_priv, TRANSCONF(dev_priv, pipe), TRANSCONF_ENABLE);
> +	intel_de_posting_read(dev_priv, TRANSCONF(dev_priv, pipe));
>  
>  	intel_wait_for_pipe_scanline_moving(crtc);
>  }
> @@ -8262,8 +8268,8 @@ void i830_disable_pipe(struct drm_i915_private *dev_priv, enum pipe pipe)
>  	drm_WARN_ON(&dev_priv->drm,
>  		    intel_de_read(dev_priv, CURCNTR(dev_priv, PIPE_B)) & MCURSOR_MODE_MASK);
>  
> -	intel_de_write(dev_priv, TRANSCONF(pipe), 0);
> -	intel_de_posting_read(dev_priv, TRANSCONF(pipe));
> +	intel_de_write(dev_priv, TRANSCONF(dev_priv, pipe), 0);
> +	intel_de_posting_read(dev_priv, TRANSCONF(dev_priv, pipe));
>  
>  	intel_wait_for_pipe_scanline_stopped(crtc);
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> index 3b6cb237d80a..919f712fef13 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> @@ -1044,9 +1044,9 @@ static bool i9xx_always_on_power_well_enabled(struct drm_i915_private *dev_priv,
>  static void i830_pipes_power_well_enable(struct drm_i915_private *dev_priv,
>  					 struct i915_power_well *power_well)
>  {
> -	if ((intel_de_read(dev_priv, TRANSCONF(PIPE_A)) & TRANSCONF_ENABLE) == 0)
> +	if ((intel_de_read(dev_priv, TRANSCONF(dev_priv, PIPE_A)) & TRANSCONF_ENABLE) == 0)
>  		i830_enable_pipe(dev_priv, PIPE_A);
> -	if ((intel_de_read(dev_priv, TRANSCONF(PIPE_B)) & TRANSCONF_ENABLE) == 0)
> +	if ((intel_de_read(dev_priv, TRANSCONF(dev_priv, PIPE_B)) & TRANSCONF_ENABLE) == 0)
>  		i830_enable_pipe(dev_priv, PIPE_B);
>  }
>  
> @@ -1060,8 +1060,8 @@ static void i830_pipes_power_well_disable(struct drm_i915_private *dev_priv,
>  static bool i830_pipes_power_well_enabled(struct drm_i915_private *dev_priv,
>  					  struct i915_power_well *power_well)
>  {
> -	return intel_de_read(dev_priv, TRANSCONF(PIPE_A)) & TRANSCONF_ENABLE &&
> -		intel_de_read(dev_priv, TRANSCONF(PIPE_B)) & TRANSCONF_ENABLE;
> +	return intel_de_read(dev_priv, TRANSCONF(dev_priv, PIPE_A)) & TRANSCONF_ENABLE &&
> +		intel_de_read(dev_priv, TRANSCONF(dev_priv, PIPE_B)) & TRANSCONF_ENABLE;
>  }
>  
>  static void i830_pipes_power_well_sync_hw(struct drm_i915_private *dev_priv,
> diff --git a/drivers/gpu/drm/i915/display/intel_drrs.c b/drivers/gpu/drm/i915/display/intel_drrs.c
> index 597f8bd6aa1a..5250622f1479 100644
> --- a/drivers/gpu/drm/i915/display/intel_drrs.c
> +++ b/drivers/gpu/drm/i915/display/intel_drrs.c
> @@ -85,7 +85,7 @@ intel_drrs_set_refresh_rate_pipeconf(struct intel_crtc *crtc,
>  	else
>  		bit = TRANSCONF_REFRESH_RATE_ALT_ILK;
>  
> -	intel_de_rmw(dev_priv, TRANSCONF(cpu_transcoder),
> +	intel_de_rmw(dev_priv, TRANSCONF(dev_priv, cpu_transcoder),
>  		     bit, refresh_rate == DRRS_REFRESH_RATE_LOW ? bit : 0);
>  }
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_fdi.c b/drivers/gpu/drm/i915/display/intel_fdi.c
> index 295a0f24ebbf..8b17b8ad71c3 100644
> --- a/drivers/gpu/drm/i915/display/intel_fdi.c
> +++ b/drivers/gpu/drm/i915/display/intel_fdi.c
> @@ -1034,7 +1034,7 @@ void ilk_fdi_pll_enable(const struct intel_crtc_state *crtc_state)
>  	temp = intel_de_read(dev_priv, reg);
>  	temp &= ~(FDI_DP_PORT_WIDTH_MASK | (0x7 << 16));
>  	temp |= FDI_DP_PORT_WIDTH(crtc_state->fdi_lanes);
> -	temp |= (intel_de_read(dev_priv, TRANSCONF(pipe)) & TRANSCONF_BPC_MASK) << 11;
> +	temp |= (intel_de_read(dev_priv, TRANSCONF(dev_priv, pipe)) & TRANSCONF_BPC_MASK) << 11;
>  	intel_de_write(dev_priv, reg, temp | FDI_RX_PLL_ENABLE);
>  
>  	intel_de_posting_read(dev_priv, reg);
> @@ -1090,7 +1090,7 @@ void ilk_fdi_disable(struct intel_crtc *crtc)
>  	reg = FDI_RX_CTL(pipe);
>  	temp = intel_de_read(dev_priv, reg);
>  	temp &= ~(0x7 << 16);
> -	temp |= (intel_de_read(dev_priv, TRANSCONF(pipe)) & TRANSCONF_BPC_MASK) << 11;
> +	temp |= (intel_de_read(dev_priv, TRANSCONF(dev_priv, pipe)) & TRANSCONF_BPC_MASK) << 11;
>  	intel_de_write(dev_priv, reg, temp & ~FDI_RX_ENABLE);
>  
>  	intel_de_posting_read(dev_priv, reg);
> @@ -1116,7 +1116,7 @@ void ilk_fdi_disable(struct intel_crtc *crtc)
>  	}
>  	/* BPC in FDI rx is consistent with that in TRANSCONF */
>  	temp &= ~(0x07 << 16);
> -	temp |= (intel_de_read(dev_priv, TRANSCONF(pipe)) & TRANSCONF_BPC_MASK) << 11;
> +	temp |= (intel_de_read(dev_priv, TRANSCONF(dev_priv, pipe)) & TRANSCONF_BPC_MASK) << 11;
>  	intel_de_write(dev_priv, reg, temp);
>  
>  	intel_de_posting_read(dev_priv, reg);
> diff --git a/drivers/gpu/drm/i915/display/intel_pch_display.c b/drivers/gpu/drm/i915/display/intel_pch_display.c
> index 6a45bc1651c3..0d48b9bec29c 100644
> --- a/drivers/gpu/drm/i915/display/intel_pch_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_pch_display.c
> @@ -271,7 +271,7 @@ static void ilk_enable_pch_transcoder(const struct intel_crtc_state *crtc_state)
>  
>  	reg = PCH_TRANSCONF(pipe);
>  	val = intel_de_read(dev_priv, reg);
> -	pipeconf_val = intel_de_read(dev_priv, TRANSCONF(pipe));
> +	pipeconf_val = intel_de_read(dev_priv, TRANSCONF(dev_priv, pipe));
>  
>  	if (HAS_PCH_IBX(dev_priv)) {
>  		/* Configure frame start delay to match the CPU */
> @@ -413,7 +413,7 @@ void ilk_pch_enable(struct intel_atomic_state *state,
>  	    intel_crtc_has_dp_encoder(crtc_state)) {
>  		const struct drm_display_mode *adjusted_mode =
>  			&crtc_state->hw.adjusted_mode;
> -		u32 bpc = (intel_de_read(dev_priv, TRANSCONF(pipe)) & TRANSCONF_BPC_MASK) >> 5;
> +		u32 bpc = (intel_de_read(dev_priv, TRANSCONF(dev_priv, pipe)) & TRANSCONF_BPC_MASK) >> 5;
>  		i915_reg_t reg = TRANS_DP_CTL(pipe);
>  		enum port port;
>  
> @@ -557,7 +557,8 @@ static void lpt_enable_pch_transcoder(const struct intel_crtc_state *crtc_state)
>  	intel_de_write(dev_priv, TRANS_CHICKEN2(PIPE_A), val);
>  
>  	val = TRANS_ENABLE;
> -	pipeconf_val = intel_de_read(dev_priv, TRANSCONF(cpu_transcoder));
> +	pipeconf_val = intel_de_read(dev_priv,
> +				     TRANSCONF(dev_priv, cpu_transcoder));
>  
>  	if ((pipeconf_val & TRANSCONF_INTERLACE_MASK_HSW) == TRANSCONF_INTERLACE_IF_ID_ILK)
>  		val |= TRANS_INTERLACE_INTERLACED;
> diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c b/drivers/gpu/drm/i915/display/vlv_dsi.c
> index ee9923c7b115..eae5b5e09aa8 100644
> --- a/drivers/gpu/drm/i915/display/vlv_dsi.c
> +++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
> @@ -972,7 +972,8 @@ static bool intel_dsi_get_hw_state(struct intel_encoder *encoder,
>  		 */
>  		if ((IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) &&
>  		    port == PORT_C)
> -			enabled = intel_de_read(display, TRANSCONF(PIPE_B)) & TRANSCONF_ENABLE;
> +			enabled = intel_de_read(display,
> +						TRANSCONF(dev_priv, PIPE_B)) & TRANSCONF_ENABLE;
>  
>  		/* Try command mode if video mode not enabled */
>  		if (!enabled) {
> diff --git a/drivers/gpu/drm/i915/gvt/display.c b/drivers/gpu/drm/i915/gvt/display.c
> index eaa92d392189..ad21b8f65d6b 100644
> --- a/drivers/gpu/drm/i915/gvt/display.c
> +++ b/drivers/gpu/drm/i915/gvt/display.c
> @@ -67,7 +67,7 @@ static int edp_pipe_is_enabled(struct intel_vgpu *vgpu)
>  {
>  	struct drm_i915_private *dev_priv = vgpu->gvt->gt->i915;
>  
> -	if (!(vgpu_vreg_t(vgpu, TRANSCONF(TRANSCODER_EDP)) & TRANSCONF_ENABLE))
> +	if (!(vgpu_vreg_t(vgpu, TRANSCONF(dev_priv, TRANSCODER_EDP)) & TRANSCONF_ENABLE))
>  		return 0;
>  
>  	if (!(vgpu_vreg(vgpu, _TRANS_DDI_FUNC_CTL_EDP) & TRANS_DDI_FUNC_ENABLE))
> @@ -83,7 +83,7 @@ int pipe_is_enabled(struct intel_vgpu *vgpu, int pipe)
>  			pipe < PIPE_A || pipe >= I915_MAX_PIPES))
>  		return -EINVAL;
>  
> -	if (vgpu_vreg_t(vgpu, TRANSCONF(pipe)) & TRANSCONF_ENABLE)
> +	if (vgpu_vreg_t(vgpu, TRANSCONF(dev_priv, pipe)) & TRANSCONF_ENABLE)
>  		return 1;
>  
>  	if (edp_pipe_is_enabled(vgpu) &&
> @@ -191,7 +191,7 @@ static void emulate_monitor_status_change(struct intel_vgpu *vgpu)
>  			  GEN8_DE_PORT_HOTPLUG(HPD_PORT_C));
>  
>  		for_each_pipe(dev_priv, pipe) {
> -			vgpu_vreg_t(vgpu, TRANSCONF(pipe)) &=
> +			vgpu_vreg_t(vgpu, TRANSCONF(dev_priv, pipe)) &=
>  				~(TRANSCONF_ENABLE | TRANSCONF_STATE_ENABLE);
>  			vgpu_vreg_t(vgpu, DSPCNTR(dev_priv, pipe)) &= ~DISP_ENABLE;
>  			vgpu_vreg_t(vgpu, SPRCTL(pipe)) &= ~SPRITE_ENABLE;
> @@ -252,8 +252,8 @@ static void emulate_monitor_status_change(struct intel_vgpu *vgpu)
>  		 *   TRANSCODER_A can be enabled. PORT_x depends on the input of
>  		 *   setup_virtual_dp_monitor.
>  		 */
> -		vgpu_vreg_t(vgpu, TRANSCONF(TRANSCODER_A)) |= TRANSCONF_ENABLE;
> -		vgpu_vreg_t(vgpu, TRANSCONF(TRANSCODER_A)) |= TRANSCONF_STATE_ENABLE;
> +		vgpu_vreg_t(vgpu, TRANSCONF(dev_priv, TRANSCODER_A)) |= TRANSCONF_ENABLE;
> +		vgpu_vreg_t(vgpu, TRANSCONF(dev_priv, TRANSCODER_A)) |= TRANSCONF_STATE_ENABLE;
>  
>  		/*
>  		 * Golden M/N are calculated based on:
> @@ -510,7 +510,7 @@ static void emulate_monitor_status_change(struct intel_vgpu *vgpu)
>  		vgpu_vreg_t(vgpu, CURCNTR(dev_priv, pipe)) |= MCURSOR_MODE_DISABLE;
>  	}
>  
> -	vgpu_vreg_t(vgpu, TRANSCONF(TRANSCODER_A)) |= TRANSCONF_ENABLE;
> +	vgpu_vreg_t(vgpu, TRANSCONF(dev_priv, TRANSCODER_A)) |= TRANSCONF_ENABLE;
>  }
>  
>  static void clean_virtual_dp_monitor(struct intel_vgpu *vgpu, int port_num)
> diff --git a/drivers/gpu/drm/i915/gvt/handlers.c b/drivers/gpu/drm/i915/gvt/handlers.c
> index 00cf35a9669e..039d2cb273df 100644
> --- a/drivers/gpu/drm/i915/gvt/handlers.c
> +++ b/drivers/gpu/drm/i915/gvt/handlers.c
> @@ -2270,10 +2270,14 @@ static int init_generic_mmio_info(struct intel_gvt *gvt)
>  	MMIO_DFH(GEN7_HALF_SLICE_CHICKEN1, D_ALL, F_MODE_MASK | F_CMD_ACCESS, NULL, NULL);
>  
>  	/* display */
> -	MMIO_DH(TRANSCONF(TRANSCODER_A), D_ALL, NULL, pipeconf_mmio_write);
> -	MMIO_DH(TRANSCONF(TRANSCODER_B), D_ALL, NULL, pipeconf_mmio_write);
> -	MMIO_DH(TRANSCONF(TRANSCODER_C), D_ALL, NULL, pipeconf_mmio_write);
> -	MMIO_DH(TRANSCONF(TRANSCODER_EDP), D_ALL, NULL, pipeconf_mmio_write);
> +	MMIO_DH(TRANSCONF(dev_priv, TRANSCODER_A), D_ALL, NULL,
> +		pipeconf_mmio_write);
> +	MMIO_DH(TRANSCONF(dev_priv, TRANSCODER_B), D_ALL, NULL,
> +		pipeconf_mmio_write);
> +	MMIO_DH(TRANSCONF(dev_priv, TRANSCODER_C), D_ALL, NULL,
> +		pipeconf_mmio_write);
> +	MMIO_DH(TRANSCONF(dev_priv, TRANSCODER_EDP), D_ALL, NULL,
> +		pipeconf_mmio_write);
>  	MMIO_DH(DSPSURF(dev_priv, PIPE_A), D_ALL, NULL, pri_surf_mmio_write);
>  	MMIO_DH(REG_50080(PIPE_A, PLANE_PRIMARY), D_ALL, NULL,
>  		reg50080_mmio_write);
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index cd6eda1b6bef..72f5140cf109 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -1876,7 +1876,7 @@
>  #define PIPESTAT_INT_ENABLE_MASK		0x7fff0000
>  #define PIPESTAT_INT_STATUS_MASK		0x0000ffff
>  
> -#define TRANSCONF(trans)	_MMIO_PIPE2(dev_priv, (trans), _TRANSACONF)
> +#define TRANSCONF(dev_priv, trans)	_MMIO_PIPE2(dev_priv, (trans), _TRANSACONF)
>  #define PIPEDSL(pipe)		_MMIO_PIPE2(dev_priv, pipe, _PIPEADSL)
>  #define PIPEFRAME(pipe)		_MMIO_PIPE2(dev_priv, pipe, _PIPEAFRAMEHIGH)
>  #define PIPEFRAMEPIXEL(pipe)	_MMIO_PIPE2(dev_priv, pipe, _PIPEAFRAMEPIXEL)
> diff --git a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
> index 600e89148f77..436d4a2eccd7 100644
> --- a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
> +++ b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
> @@ -130,10 +130,10 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
>  	MMIO_D(PIPEDSL(PIPE_B));
>  	MMIO_D(PIPEDSL(PIPE_C));
>  	MMIO_D(PIPEDSL(_PIPE_EDP));
> -	MMIO_D(TRANSCONF(TRANSCODER_A));
> -	MMIO_D(TRANSCONF(TRANSCODER_B));
> -	MMIO_D(TRANSCONF(TRANSCODER_C));
> -	MMIO_D(TRANSCONF(TRANSCODER_EDP));
> +	MMIO_D(TRANSCONF(dev_priv, TRANSCODER_A));
> +	MMIO_D(TRANSCONF(dev_priv, TRANSCODER_B));
> +	MMIO_D(TRANSCONF(dev_priv, TRANSCODER_C));
> +	MMIO_D(TRANSCONF(dev_priv, TRANSCODER_EDP));
>  	MMIO_D(PIPESTAT(PIPE_A));
>  	MMIO_D(PIPESTAT(PIPE_B));
>  	MMIO_D(PIPESTAT(PIPE_C));
> -- 
> 2.39.2
> 
