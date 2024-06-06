Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BCCA8FF0FF
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jun 2024 17:44:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1B52310E9C6;
	Thu,  6 Jun 2024 15:44:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="f1dhEpZa";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2AE6710E9C7
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Jun 2024 15:44:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717688669; x=1749224669;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=oMFHAHw3mbF637u/Gf+HHPMFeNCKZHKeQeCt0i3fVGM=;
 b=f1dhEpZaU9qgY50wRc4FB9GHXae+s/Kcrl/+cZYr6vXgmZ4A3xXf8BHz
 fCOlqwwUsPbqE2Qrw6hUrwvf8GYB6OhkNFoGtb9DyetW5jGsDGvXUkuKL
 myFLWxu+zN7Cu4flj4wO05gixT3jFe2AAUxgZWJx+IfwLMS7Ed1ukDvoR
 6LpAJFOkxsmC1r4uRe/m8+lSEwZ4nj5xZI198IN5empBQOPXUKw2QZfH2
 t4zXhLruR1JpJiUqfQ3WU2d7hr6E7CYRthjZ6kJ1Oo7E8it1UMBxKQp4a
 NpimJvY4gAxuutdLC2L/YL6z1DdWO2hu4dsR9BjeA3YqDnPeibV9Wwr2h g==;
X-CSE-ConnectionGUID: HOk/urk2T7y44jlUn5XgFQ==
X-CSE-MsgGUID: PaA5VFm3RhugDu3JpJ+c/Q==
X-IronPort-AV: E=McAfee;i="6600,9927,11095"; a="14251450"
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="14251450"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2024 08:44:29 -0700
X-CSE-ConnectionGUID: dMq7K2KfQy6xpEw7UAvgHg==
X-CSE-MsgGUID: VndYdz3PRjmDpTcPi6qGAg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="38078172"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Jun 2024 08:44:28 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 6 Jun 2024 08:44:28 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 6 Jun 2024 08:44:28 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 6 Jun 2024 08:44:27 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZPl0+jQ9x5LlnxMVfhd6czRfh/XkYGNAYhY7VMsMZa5fu7Mf8sgnFH+cXr+cVThvl/zdGEQfd2ybzMN9Y+HOuDGLhVZ235xuvqufBEafFDutmaWlL2632VEY5EWhkwGtdQUxVtFUFv7Dw7y/YwzuxI8LqLRQZScmMQKAZBwPYmSaXIy8Gj8+Lu4LO1mEqFCtzCn0Q7nqUJJjl/PI17zWM8Rp+ge2PsXEq5FElrQr6DNAdpQdxe73DMKNTc0UvvPdY/nP056vdFk90FDS9sJVIUSTSITKGpb1+GmNmlkXGqbvF2BVdHdTO+HQDCkRlnlvCPWDylevJ30DtI6XRn6d5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9GhxZUq1UXu0UKRIudN05sg0AhDsf5fTMT1i2mtbzAk=;
 b=FtwQNRJ7R2R4UK6I4jrEweFs2wl4u6mh8HU3y4c6S7SnWgpv2bjcPSESHNQpkXHmjKjvTWkSl2Hxju4f+hVKCpxq5x581pVvQlbXzJkLNlL2Q9ZufAb1OynDfacXuYs5nxczefEHs0t6XtehniOnDN8035X0FITixfDjxIyBLVy48Q+3Ird+PGAJJcMMp5MKhWEDy78/o94g72RdUpXeoBxBrOYB4uhX4S3xW45Iheb/PTlJ8MvGYxafNoGtnTgiqtC/sZv1ucV7CWxgh5l2xfp05rMY276nRw7XNpRUYwl/L+0ShhoL8/Gm7tM4zuEw489DnyjHvxFVMLmgSZBKQw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by SJ2PR11MB8404.namprd11.prod.outlook.com (2603:10b6:a03:53f::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.34; Thu, 6 Jun
 2024 15:44:26 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7633.033; Thu, 6 Jun 2024
 15:44:26 +0000
Date: Thu, 6 Jun 2024 11:44:23 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 23/65] drm/i915: pass dev_priv explicitly to PIPE_ARB_CTL
Message-ID: <ZmHZV2RKoB6CsiRo@intel.com>
References: <cover.1717514638.git.jani.nikula@intel.com>
 <e75e80bd96e05ece6b82c0bdb509527ab2dd0e6d.1717514638.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <e75e80bd96e05ece6b82c0bdb509527ab2dd0e6d.1717514638.git.jani.nikula@intel.com>
X-ClientProxiedBy: SJ0P220CA0013.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:a03:41b::20) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|SJ2PR11MB8404:EE_
X-MS-Office365-Filtering-Correlation-Id: 4f9fba62-6b5d-45b3-cb38-08dc863f8b53
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|376005|1800799015|366007;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?oYH1LxxkGw7s8UYGPJ4QitzAQu1CR3KqWkIJ3UYaMyiFn0mtkwaP2ujj136Q?=
 =?us-ascii?Q?mYQ+E4aFpmG4ZmICSse1RvMIzrCNioeEdlKfURln3kuPujf9FN7MKtf+qo65?=
 =?us-ascii?Q?nyc9ggB2SXgwlyKOz168d2PA0eJMCE9qTWs+Q+ewq4usChc/mtbce7AMa/Dr?=
 =?us-ascii?Q?DfiQFgdgcuZCuM8281ER+93vAM3BFj+qL+8aM4RWIVq/u7xpEJZQSI2vZLQ9?=
 =?us-ascii?Q?Pio/ZwNRtHb/MflqwwrOPvch0mScqa2s1AnuIsMeeEyhXqY0g7uBsgDSgF7U?=
 =?us-ascii?Q?UnMqtj8dXfTeAgmjI7QNZjaH2p0C5BzmhS0NrZiChzDf7xOgz2yaKc3nMpa0?=
 =?us-ascii?Q?Setj7rcam9nysB3cY63FNgXBt5iganzjc5+1A9OI3NXLqUm5fx7EHVZbRa2/?=
 =?us-ascii?Q?SJ6ZLHbYDxNVw8datEcxA+JdyFciN0OWWunKX0FUCzdLrx1v3K8I1GJEZgnv?=
 =?us-ascii?Q?4E/jYvmPPmo9shzpQJmAbhQI+8wJC8NsJ54R9nvI6zPQKldDG2xyr/nB+tW5?=
 =?us-ascii?Q?VQYFCpGhg0/5ywstNqEQA77n8xbtcr3MCXrV7hmoaZG/V3Qsie5FO7ltIiQJ?=
 =?us-ascii?Q?9kWtC8sQ5BfUPmP8BM6FvY50P+yTR8di5zPsqbQsSKZd4nERW35q0VG4qLsZ?=
 =?us-ascii?Q?PlXQSwE+ysxMrkQQrxG6WWYj/4d6nKtMrciuuDrVRlp6Lp2Xvlteu5665QR3?=
 =?us-ascii?Q?HIqy5wDz+Q1/nK68FnFy+uicxRZsNrBUaVIUwz5gSizzP8iYRj8N0cJuzjdo?=
 =?us-ascii?Q?fgMDjregjn/oJSqCbBEkmonbmW3dYvBzDzobJyaphVj67QZmwNqBK+C7AcfM?=
 =?us-ascii?Q?/sFGkCbD4JNkBIVi8COr5Nq7P3Lkw+Xzubm27S10Sn7kINcUAAwuHZ6y3BHw?=
 =?us-ascii?Q?aOrC/C9DrOVi4v6mdXZbkP78PNUjbzMRsYhXm/QEHbu3yMZjBI4f5Rc6Hfql?=
 =?us-ascii?Q?W9M0mF5v/yBnN/4w3A5pnyMfoa089ITtkWDhsfriu1oifL+BKI6/4GKwWEk2?=
 =?us-ascii?Q?xGbqtUgnSDiCass9R/OOzKsIngopx6c4rpS0OLfyW3LqYWJCiRZ9eruPJ+Up?=
 =?us-ascii?Q?vqQb3ObwrY6u7wNDzVLt0n0uwrTCPuOjz700aM1DhQdOrcu/9AHCkYGNZ4n9?=
 =?us-ascii?Q?jbzwSgQs4t9cnd+MS0eFiiOdz4umnQvzFf61odoSGnrV+U5zBqp4B+32T2S9?=
 =?us-ascii?Q?G45j88T5KcE5qlSnh7i4M4ovM/9aseTGXBvcLv7jBba60LOO2O3wKtQDOoBb?=
 =?us-ascii?Q?3WdDm+JeI13x7mJsUBqml5lsiHCOobrCBqx+81FZX1e1WHlYS0rHMCmG1xA+?=
 =?us-ascii?Q?q05F6T3cYC6qV93j4EWTop/Z?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(366007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?cWGCjaOH7Ato506S2e9TCZpnRKNA4IXy6shp+v17wv6eV/C7pe04OyRIn5T8?=
 =?us-ascii?Q?WicQAgyu4R1dbH6fZCwdApZTog81zWaLQM29dQotmLCzv9cFy045hvCot+XV?=
 =?us-ascii?Q?YxsKNFD8XSpsY3R+jCAMSsGZ6Tjb2b3zPD8WWMmDP4oj1eXrljkxqsInNN2Z?=
 =?us-ascii?Q?hwphG1RHXG5w2aeqdXQcjpKqnCe7KqHedxGBjqdC1z3mQempPynIHGvi3Ccb?=
 =?us-ascii?Q?gzAJb1m6PEz4JOe2aKpIxiSgvxTMtB2mjMl6Vy5wegcKiTdp7BrahwUkOKtX?=
 =?us-ascii?Q?9/lWS8vgdcdongV9jh1kG9rTOuwKq0hE5xn+qcIy7taEv1DYf5tkmI5CeEoA?=
 =?us-ascii?Q?5wnPmzL6dlDYI2kkg5IC3NKE2cOtDiPmNdgiCfGsjkjdxaKSnNkXOF4vjlIu?=
 =?us-ascii?Q?dOyX54PM1+uGAkx/MvkltJ2dY3/pn8xGrkoPij6X2Fq0EFrrmDx7mkdFexXA?=
 =?us-ascii?Q?x+iBZxxkMIjrQBMdCT6AH1MmJZAr/z1dWoRaYMLuXrSoE/WhdFg52sMGmIvq?=
 =?us-ascii?Q?TXaRPsdn5OcXZMpS4e+fX0vQyTgse2JWk8+Cwk2bLad2/Uc0XNTZlHiHeKe7?=
 =?us-ascii?Q?K3bm7eR7coRgFmWHgUILAoz3csjYW9j+X3XWr3QHxye1xaftxEyd2T1C04oE?=
 =?us-ascii?Q?LB07TbDq4Ku1iCylpAbLuPVfHjmCvvURqKeEFXoWjWRdC+5doBHVtctDD29N?=
 =?us-ascii?Q?9zE7cDbg2QFOd2tn3hRGW42VX6LlAELxEWHsdIBREvxYrgEN6yNk5yAnlX2k?=
 =?us-ascii?Q?ehG88ft/8nx1QyuDQOZPJr/4SnGqCMYfnB8PcC/FY52JyG+CYK6LugU9bJAu?=
 =?us-ascii?Q?NLcYIR89mYs+ADgFxmoqrKFJIp9Sglqzh88a3NCRzCop8oMYnio5NPAN9fx2?=
 =?us-ascii?Q?4e3fd5gTfClwK1G9QydjNlJmKqGXBNVmN5cYr8iCwd/lQII6UdQa0hNYOW7g?=
 =?us-ascii?Q?DrIT+WdxbA2DlYs/KswO1Wbuf+g74W3dR3+JhqIwGTcCNg/lFxkyn+kqEemQ?=
 =?us-ascii?Q?m5BgsDPJcvQ1o/9IyAbQ0o4RWW3lrhjRDrkY0U0v0sD6Qkqkk4AgJvDLpna1?=
 =?us-ascii?Q?/1JJLJQ3N/rLBh8AuXFQWv6PLlieWzPYkWFwtYhsxGFJOpwo3aak5uMFjKiJ?=
 =?us-ascii?Q?RvlW9+xBklAn5+bdm2/JQo0dwOY69Dy5rr8V9+fmAJAneAky75JQPGYUm47b?=
 =?us-ascii?Q?3/8S2dQ2wP97kprhSlVi9MFazVxNdJTagCYrT9IrYGEiOKIDY8xGTDeKS6JW?=
 =?us-ascii?Q?L92Viba58vaWAo/TIWLUhc2GhsWDk8cNcFSpE4b7QOCmPVlxyeWLngRfJgtO?=
 =?us-ascii?Q?s5m3i9MyeTA+TojRm2PWpYt+Diobli/wgAtpAS74EKiIekks02NqoHFZ7RPb?=
 =?us-ascii?Q?EaQ4v3HjYguvyq6Yyy1Z2LH5ECco+jS+ymy56ohC5tD1oEuxPFVZHwc8SYme?=
 =?us-ascii?Q?Bm/wybzIbxwAfEzWeTS7mZv3r7LLtn6Z/OmqN2rIcdnZFMO4eXXlKGGy85M3?=
 =?us-ascii?Q?AxfxjxhBXrO/bYKgMhYyISJRdUGUi6psdgw7l5071hmDKSJ7x8sGe19fxLw4?=
 =?us-ascii?Q?D/qOZ49/Sh/+1XBWu/71cay2Wyw09gVFom3eGBYE?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4f9fba62-6b5d-45b3-cb38-08dc863f8b53
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Jun 2024 15:44:26.0481 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: QAKma5Y0KySgqlcdA/IDMMonMIstikJ3AcyZopscSE1iTYXIeMLLpxoKO0dblGKBfiSfVC9+Xrbxne+NZvdBAA==
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

On Tue, Jun 04, 2024 at 06:25:41PM +0300, Jani Nikula wrote:
> Avoid the implicit dev_priv local variable use, and pass dev_priv
> explicitly to the PIPE_ARB_CTL register macro.

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 2 +-
>  drivers/gpu/drm/i915/i915_reg.h              | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 9434eba91839..48ee8aee21be 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -439,7 +439,7 @@ void intel_enable_transcoder(const struct intel_crtc_state *new_crtc_state)
>  
>  	/* Wa_22012358565:adl-p */
>  	if (DISPLAY_VER(dev_priv) == 13)
> -		intel_de_rmw(dev_priv, PIPE_ARB_CTL(pipe),
> +		intel_de_rmw(dev_priv, PIPE_ARB_CTL(dev_priv, pipe),
>  			     0, PIPE_ARB_USE_PROG_SLOTS);
>  
>  	if (DISPLAY_VER(dev_priv) >= 14) {
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 0aaceedf77dc..1b2c0d650bff 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -1883,7 +1883,7 @@
>  #define PIPESTAT(dev_priv, pipe)		_MMIO_PIPE2(dev_priv, pipe, _PIPEASTAT)
>  
>  #define _PIPE_ARB_CTL_A			0x70028 /* icl+ */
> -#define PIPE_ARB_CTL(pipe)		_MMIO_PIPE2(dev_priv, pipe, _PIPE_ARB_CTL_A)
> +#define PIPE_ARB_CTL(dev_priv, pipe)		_MMIO_PIPE2(dev_priv, pipe, _PIPE_ARB_CTL_A)
>  #define   PIPE_ARB_USE_PROG_SLOTS	REG_BIT(13)
>  
>  #define _PIPE_MISC_A			0x70030
> -- 
> 2.39.2
> 
