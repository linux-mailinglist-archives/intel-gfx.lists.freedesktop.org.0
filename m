Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E5AD8FF0D6
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jun 2024 17:38:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EFF8210E9A5;
	Thu,  6 Jun 2024 15:38:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lRogt5Pm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6C63B10E9B1
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Jun 2024 15:38:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717688321; x=1749224321;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=Nc86i482y/FIV+lThC8TRfPnf09Fbvh8k2k2D8raWyg=;
 b=lRogt5PmBNvwvjCx0oS4REaNqBL+GpPq4Q48RvFM0c7hFy5DK2wG9SWB
 lj//Th5ktQsIn6+gkTnhZuDhcB9c1Pd3RlVIQeo9dPj9BLCLyawUOiTWD
 i5wLDvxAbYHahx8Bhi+G3IeQhsAdp+9XlI0HwPRZc+QjntIJvgkTqEkt9
 3LwOQlIZqBHKrDSLmBGCQZHQEB4Oz1PG6w5QYoS7tS8xiVFohNX8/QmB8
 9FaiIid5taYfcdbjpy2GQRxgxTeSFdblA3TTl4rCl46HfpmMtp+PKMxpi
 JZuIiM2yL8cCANDFQTaWFQAfKSd2ZmX9EG0LRdw3+NjS8eUuB4mo4fGxA g==;
X-CSE-ConnectionGUID: 6ZOIUnjDTZCD5RwG6191XA==
X-CSE-MsgGUID: JSmgKeG5SdmjmkJN0zJL5A==
X-IronPort-AV: E=McAfee;i="6600,9927,11095"; a="14172097"
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="14172097"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2024 08:38:31 -0700
X-CSE-ConnectionGUID: NczvPCZHTYKUwp1O4WWqLQ==
X-CSE-MsgGUID: Eh6jYrO6RSCKjWlNoAZJ9A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="38567768"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Jun 2024 08:38:31 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 6 Jun 2024 08:38:31 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 6 Jun 2024 08:38:31 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.49) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 6 Jun 2024 08:38:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hUwuSSisnwd51mZEkUTVRxTWRiZzI09r+h41b21BCtmI3ll0v7ROdAldQBnnU4oaHmLTej1qNA4LRsze13BtWIqkBtxaW0UzB6Vu6GrdK/0VdwbHXstO34eEuy98a1ZT1QgZQhU7uAU6Kcal7kuvIiYdn+ux0fZEPVxx7H9tOKaRFSA38phv8uHHdCxczqQyXTJEOwXxq/55onqNkt9ZL8Mu0NQWCkp3srWHu0afrpNf32yU0qQYbxOZ3FPPaFoqfxhb5E+mHy64trL0dsiUWfEm8hukh9Ai/fjo6Je0I6TMh2cop3mCkRe0nr775c0+bU3YXlN3kb2qH+zKf+xb8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hdRsM4t6RLjt17eRawdumqnnQg9OozYflB1diusE7kA=;
 b=CmrlDf6eW+nLROLAFQwNYql16RG2cYeZ5WJp4Cz1BoPqDgr+E44JgQdzi/XhXpPXiMYJ7kTs+qiQ6P4FBfibauup2BVCSfd22rh98fVLSgbRTGbNolz2KfDGaJwB3Ph8kLqyBxcbGP6IohENFmbMqcq+sR2M3/g6OWa+wfsX9g+sTAh4iC6zWOiQBGz9jl9v0kn9VqFt1QnJc+KxNvrVuCcnCUhUne6U947sMgsmcMTPidrM0Xw5B4DJjlaRPlPFhZfxCnGtom74zURnpqQCHOhaxoWwhFN2/LeT7Vcy38ZHkzaGb4Jw/WadqhWvz6a2jEVYQcbFMNDx35ln3t1vNA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by DS0PR11MB7459.namprd11.prod.outlook.com (2603:10b6:8:144::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.27; Thu, 6 Jun
 2024 15:38:29 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7633.033; Thu, 6 Jun 2024
 15:38:29 +0000
Date: Thu, 6 Jun 2024 11:38:27 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 12/65] drm/i915: pass dev_priv explicitly to TRANS_MULT
Message-ID: <ZmHX8_XbZ4iF7MFS@intel.com>
References: <cover.1717514638.git.jani.nikula@intel.com>
 <7ea79208a81fd5c3b021bcd8e1f9f90607716d82.1717514638.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <7ea79208a81fd5c3b021bcd8e1f9f90607716d82.1717514638.git.jani.nikula@intel.com>
X-ClientProxiedBy: BYAPR07CA0007.namprd07.prod.outlook.com
 (2603:10b6:a02:bc::20) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|DS0PR11MB7459:EE_
X-MS-Office365-Filtering-Correlation-Id: 6e6ef3da-e683-4bdf-0c47-08dc863eb68f
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|376005|366007|1800799015;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?Z+WmCrs5fLNCubqH2LWrR04zdbVp0YNVoCrzALIx8cYmsA0BMTy8hPDP2kUc?=
 =?us-ascii?Q?BO7zNLOJfWrWn2pTrIaeSMiVb7+FBCrWKtCUDeqlIGZ6L5UEJ0+D718zd6RD?=
 =?us-ascii?Q?k+ftlxAYEQsAWjAKmUhBVxPGdGHs8gSM1Vg3Y8seaRb6ehNmUkoYw7W90/Fx?=
 =?us-ascii?Q?upgX9DWbWy9cOU0XFL8Y645PbDk4D0b/GfEVLrh9vah0xs0x4y+6ryyY/BlT?=
 =?us-ascii?Q?geHATYKgJAQh15UDA4mD1tZmwRj6oGAe2oTGcIXBk49mU0+OSz0N5nZCgQ16?=
 =?us-ascii?Q?7Dn22I7cp16k5JPx8cIuZfu4e1Oqa0IkEsr4FpnZEyVD2d4RwPUv8pKyMWNY?=
 =?us-ascii?Q?s9biH6yAnzzlGsXzgoQzZjBC5f5/rhU7ZFc75nHpTgPIPXT3gXZcI68iy+yj?=
 =?us-ascii?Q?Tk5gMoWP8PNXJED9gKbTBDNAHSxhC9QN3uRZh451qBt1v3DbbBPPbsN997BE?=
 =?us-ascii?Q?uimDb73zM8hxXq3rDHK8112I+7WGnbOB3ZipDEgbLQ9ohFbdX5aSXKYql/b5?=
 =?us-ascii?Q?KnPMMw93/yjqOH2ns+a2VPjCOc0rZVTBxjTS4CGCn+bPHJ0JPL1iFQYe7QiU?=
 =?us-ascii?Q?ZdUpLmhN1pS4VZMbid08BBxuS3qXOa7iZI6BBM/hnd4naf3tG+r/HVGszIYg?=
 =?us-ascii?Q?t8w7FjjfO9FdElceN8dHBQ9K7NDRwQLmzliZqur4xzcV+oaX3dZ2FPQH/OEq?=
 =?us-ascii?Q?+ZeD9S6XZSgyK4UB2Uz7qFj2+ehKBUJAsmsJ/afJR1rkbsavE7SuQiKjyryT?=
 =?us-ascii?Q?AB5ftEAGNyG94iwwUog+Cjy7SjFHDYn70aVOikjsu+bMjONW+YW0iaueLM7i?=
 =?us-ascii?Q?jrvrXqDBrk99Krm+awEQ+oF8FYQwX5Sp555qCOi+5BzLc2yQBfweZWop4vmQ?=
 =?us-ascii?Q?4eNOAWzVI+7p6EydizNa8cyyhyBCAMBTuzPJuQQQlswdHCHj9Ez/6KvaoQT6?=
 =?us-ascii?Q?TdXxBjIp1XpQE4dw3dA01areJ8iO8J4UsD03g5WFoSXZyEHPdbdIGnKzijvS?=
 =?us-ascii?Q?83kcBrqQrexChCugmAoDTE4LZCCQ0LvhOAbsDG6dAtxMnwk/1Ox5a4kctz9H?=
 =?us-ascii?Q?+4sTaSFgWGHhb4bXcQ747vXyMq1lci8VM1tfQbZ/n5PUDXzD85jTlhJsZIAJ?=
 =?us-ascii?Q?/XvHbIb4xche2H3r0I8BWsNhghCmsTAoK3FTwPZfsP07Em8JExfEKQzc0CcS?=
 =?us-ascii?Q?4X2BpQ/QSaCGv0wBwmpqhlnfcV5BTOOxhfpSiAHQwEm01Gj09Kd8IvvsJ6tb?=
 =?us-ascii?Q?OD9r6DQu/ZHD1wSMKIVvX2kGddn7rl150NM6CWtM/jwi1nzbOTKbjHF073w2?=
 =?us-ascii?Q?fJcsTH3uDQTteT9jCXrJvFUg?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(366007)(1800799015); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?UYFtbLcg58bV7p3WCjgW2n1Wzm/kq6jdrgaTiZwsCE/Vef5shgm8fZ1vtSPN?=
 =?us-ascii?Q?18TrNXZNHQSkRVScacmUu/XJNjFcUc7d4mjafnjlG1C3C1e3irI3phtF0vMY?=
 =?us-ascii?Q?cm5uNRx9MySqE9gBGZwltu+pH2q8P627hkRJK6TFpzHepWVAHApO3QX+JK7e?=
 =?us-ascii?Q?SyZpq/0bOMUGPpVz6uD3TL0c5eEZ/FZoPlDhKMDQd4O3flWWQ4EmGvVqnJfD?=
 =?us-ascii?Q?uO2f7Suso5Mqfo+9+dFBpbJ/kYKFXbXxiaYd50pZaX6uBF/cOhFoBXHLyMbk?=
 =?us-ascii?Q?cDBtUbuSrUl84QsOrnAayFFktVW6FhdTYtsTfdv4uz0WLwcAERjh+L+aHt7a?=
 =?us-ascii?Q?ZPIg4KAykzhN0L5HoCvmlEy4TQs9sZ0FXunmqKqb/C6vlL9PjN8nuhvvayOt?=
 =?us-ascii?Q?WYAAah9RgDutdWTCGhK/hjFL3oErKHwCmKZuiB1DINUGQrrMPfBUKqOVAJO7?=
 =?us-ascii?Q?YC7Tlt6bX3DR+H3tTRjXdshjkn2RiNVQHZlH0GRSxjmspl/PM/SuWjiBvY7A?=
 =?us-ascii?Q?wH7st44R+gSOHWFMyBqcgbtZkzHkEGnmu3JOL5UPT6hVJ6do9/+mJoFSNsMo?=
 =?us-ascii?Q?6QqPQEtHMK/pfz27G8yQt3lq8T9g1D+BQYnBXDNaC3/PUtzEeK86LmWgVeYg?=
 =?us-ascii?Q?K+5QRNqxksmwtOzki6O6Q6wMw1zupnMHmNHtOxiJBNxb9RrRQJtLGLyD+AZF?=
 =?us-ascii?Q?PrJV05ySLCKZEJtgDVQDxLKz/BxWav3uRJPD2SJklQT8Itt4UfhZGRDr8xn6?=
 =?us-ascii?Q?zqW17/OPhpgw+SD+LoXVKMDBdFza1SxuUIca789UlhXn5brg49I8Fmh/8+tR?=
 =?us-ascii?Q?MuIhhuA1rWWiKKONLDkWtrW4f5LVAyR9UtSAAC1EKn02jihl8iwaGR2z8Jia?=
 =?us-ascii?Q?k3IJCYmQydUXvijqkpf3ntZdMocZw2w3MZ6PoHyMFsrhVF6dQnvIFoxoRe/1?=
 =?us-ascii?Q?YMg3ewrxmTKiGoLJwpFi+uqgcYTnYIDB3hl+XviMcDSlR8nUVOhL0LdieYmJ?=
 =?us-ascii?Q?H+rfnrC8co4vKYDH5671QcyjCxg2Dix+tqxAMfVmq6wB8QojoD+bFCHHEQlo?=
 =?us-ascii?Q?9zfjn9ojs5KtbGqWUKvQbkQqOKSI2G/EnMkNBCpFW/ih5RV9b1IFzqVdZoVm?=
 =?us-ascii?Q?4vO1LG0TZT2brylxM72qvLKWjmMQrt+KRaWSJTgsRe56Nk2cEd0unJKJro8r?=
 =?us-ascii?Q?5iljrdoulYVvIVnPmmDcnt4i0I7os6l4YOpEjcgkg9g9eMNrWOWWL4HcrG6E?=
 =?us-ascii?Q?wJ4WVOaLTFj/UL2aS1xNUDgIX561MLGXQJBUvFMl6fRW0ZyxEGeb7d99arSi?=
 =?us-ascii?Q?iYnXe5BH1sCI/wA6ut8KUyNd/rSMBbphXLIFqfg8g/Ds3P0Sa47PtqgC/qeV?=
 =?us-ascii?Q?/vApkJ+p34Y8WoCaYo3tYLr+nMKLDwBzxsZd55Bz/SQ81pc0Y1+GFFd8/lAV?=
 =?us-ascii?Q?YE2MbIkUSyPZoKEt7z1Leo2RwEvqeUPV9z0V9CAgStWD+xgZpzkFvffENSH2?=
 =?us-ascii?Q?5DReSmHtWZotRso/qfv9rerjUKYtIyDtZgF83IUGWTAx/Kj/M+2D2fjuPkxG?=
 =?us-ascii?Q?OGxbVcfQ5hnSYAkQ5e48IXkJwQKsDdTU/Yh2x0tg?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6e6ef3da-e683-4bdf-0c47-08dc863eb68f
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Jun 2024 15:38:29.0645 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: dPmFNpno+SfuQfrogZu7Pr8JwThmwnrzSNpqZWP1UzY8qMTozP1aNDeV5g8NsVtjzQvdbOol6IeMxHT7ojfkHQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7459
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

On Tue, Jun 04, 2024 at 06:25:30PM +0300, Jani Nikula wrote:
> Avoid the implicit dev_priv local variable use, and pass dev_priv
> explicitly to the TRANS_MULT register macro.

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 4 ++--
>  drivers/gpu/drm/i915/i915_reg.h              | 2 +-
>  drivers/gpu/drm/i915/intel_gvt_mmio_table.c  | 6 +++---
>  3 files changed, 6 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 81ae72648e8e..e7ee4970e306 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -1646,7 +1646,7 @@ static void hsw_configure_cpu_transcoder(const struct intel_crtc_state *crtc_sta
>  		intel_vrr_set_transcoder_timings(crtc_state);
>  
>  	if (cpu_transcoder != TRANSCODER_EDP)
> -		intel_de_write(dev_priv, TRANS_MULT(cpu_transcoder),
> +		intel_de_write(dev_priv, TRANS_MULT(dev_priv, cpu_transcoder),
>  			       crtc_state->pixel_multiplier - 1);
>  
>  	hsw_set_frame_start_delay(crtc_state);
> @@ -3861,7 +3861,7 @@ static bool hsw_get_pipe_config(struct intel_crtc *crtc,
>  	    !transcoder_is_dsi(pipe_config->cpu_transcoder)) {
>  		pipe_config->pixel_multiplier =
>  			intel_de_read(dev_priv,
> -				      TRANS_MULT(pipe_config->cpu_transcoder)) + 1;
> +				      TRANS_MULT(dev_priv, pipe_config->cpu_transcoder)) + 1;
>  	} else {
>  		pipe_config->pixel_multiplier = 1;
>  	}
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 2e26464672f7..3bb895d030ab 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -1226,7 +1226,7 @@
>  #define BCLRPAT(dev_priv, trans)		_MMIO_TRANS2(dev_priv, (trans), _BCLRPAT_A)
>  #define TRANS_VSYNCSHIFT(dev_priv, trans)	_MMIO_TRANS2(dev_priv, (trans), _TRANS_VSYNCSHIFT_A)
>  #define PIPESRC(dev_priv, pipe)		_MMIO_TRANS2(dev_priv, (pipe), _PIPEASRC)
> -#define TRANS_MULT(trans)	_MMIO_TRANS2(dev_priv, (trans), _TRANS_MULT_A)
> +#define TRANS_MULT(dev_priv, trans)	_MMIO_TRANS2(dev_priv, (trans), _TRANS_MULT_A)
>  
>  /* VRR registers */
>  #define _TRANS_VRR_CTL_A		0x60420
> diff --git a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
> index ff561a1e0fd3..600e89148f77 100644
> --- a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
> +++ b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
> @@ -506,9 +506,9 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
>  	MMIO_D(GAMMA_MODE(PIPE_A));
>  	MMIO_D(GAMMA_MODE(PIPE_B));
>  	MMIO_D(GAMMA_MODE(PIPE_C));
> -	MMIO_D(TRANS_MULT(TRANSCODER_A));
> -	MMIO_D(TRANS_MULT(TRANSCODER_B));
> -	MMIO_D(TRANS_MULT(TRANSCODER_C));
> +	MMIO_D(TRANS_MULT(dev_priv, TRANSCODER_A));
> +	MMIO_D(TRANS_MULT(dev_priv, TRANSCODER_B));
> +	MMIO_D(TRANS_MULT(dev_priv, TRANSCODER_C));
>  	MMIO_D(HSW_TVIDEO_DIP_CTL(dev_priv, TRANSCODER_A));
>  	MMIO_D(HSW_TVIDEO_DIP_CTL(dev_priv, TRANSCODER_B));
>  	MMIO_D(HSW_TVIDEO_DIP_CTL(dev_priv, TRANSCODER_C));
> -- 
> 2.39.2
> 
