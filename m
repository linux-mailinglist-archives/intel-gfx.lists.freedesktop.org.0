Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2088F9A2D41
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Oct 2024 21:06:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 83808882B5;
	Thu, 17 Oct 2024 19:06:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="X3TJgDmp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 96318882B5
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Oct 2024 19:06:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729191992; x=1760727992;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=E2Z7fq1bu+lBS5IAc+KmFZvJJ3MQdUL3/Ec59lLH+yg=;
 b=X3TJgDmpqbLHHmUCP0Uso7ruhWRSiOnSBPEZo8Hx1gp2c/seE9Byfr32
 6WCEEF/0hPpLQO3OuFGXzPSvc4VTDZaqlf8RMf+TsfrdSKjBOumfw6FuY
 7Cgmow2u85jarJaDORBzT4xQfRlFT9AebUk9/R5x0xHMHjL1Hvs8UyU3r
 HCqPwzwDJN/JNS5Eo+V/lEy5J6WDIr/ruhgkw87PAVJFlXxKbxxzUsgzt
 us620IrrnFvZE2DSDpBbOUe+8297P7Y74thl93q11guRR+m42HFn0kwUf
 rTXC30SB9lbw4sR+Gc2jj8j0vu2s1/CL2wG6jjMVhW7f8lysZoUokM1Yp g==;
X-CSE-ConnectionGUID: LmiDVh+4Sc2YIK0XPl4nAw==
X-CSE-MsgGUID: ZBzOlARYShqB+Q4n2RILuA==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="51243960"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="51243960"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2024 12:06:32 -0700
X-CSE-ConnectionGUID: 8LVrX+m5Rmy0iqfbdFKrvQ==
X-CSE-MsgGUID: nukQH9D+RrWwwJ3eW1b5mQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,211,1725346800"; d="scan'208";a="101950161"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 17 Oct 2024 12:06:31 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 17 Oct 2024 12:06:30 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 17 Oct 2024 12:06:30 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.48) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 17 Oct 2024 12:06:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=FwOAM3UyUa7sfcY+a9hZDsRj+Iz3hUDIfc8aYMNpHFZGlENVC7R66zQc+UzwxIIWO7vKVZbVo4NAaFc3CFvzfiP3ibjDfy3V8/uCSa2fgoTuJ8yEQ9ewoxE9Qc90HUSmvCeeOodkYAcbwbmUcYNlgQbX2FHisLWlShoGYitUCSELKk0JxKjGsc+h3PVRuzGKUUmKUIBGsrnFHI9sPsfSrvEiwMvHPcLYIRK0+3oann1Y7dlPNZQpvJE9EUDJofx5IkEybdXHUlY8nHCvcTiuXZFGoM3nzWDyhOTPDur3taUnaNx2a/km/gf9i5xhYgygNRWIb2yQWCtY43PU8WOnyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=I+DMeHVtWIGy+qYRvBwZDu9HI8i3fWtixZ4jPNTH8s8=;
 b=dwujKWkWpfWXn6TuQApA8ewaBvzPdx7lv9YXVaQkLtae2BPHiTYVzj3K8nlWQU0zWrRX70Jwx6wq9Dpbrv1YlmGmw4lbnscCleWLE8Gnujs1Q0jscllfsQm4s4k32ltj4+AfLPdZrwNpoeZ8jSJ4DbMkELWAflwfW1Lxx0t1wrDlpj7jxDqE0rmVgEBOiDrwDgusRd6m6pJ9HoYNT875AENG8DUHzPz12v9tmvvqV/6CODlGPH4fZJZDR/GDFUOI2YHciIgVAe8uMP9YxsLDYc5VSYWZUU9s2DAWmAQOGITVnIVhRR96OrxSftMmClAd2CBDQBeFTsrF2tgAi7mYdw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by PH7PR11MB5794.namprd11.prod.outlook.com (2603:10b6:510:131::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8069.18; Thu, 17 Oct
 2024 19:06:21 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%7]) with mapi id 15.20.8069.018; Thu, 17 Oct 2024
 19:06:20 +0000
Date: Thu, 17 Oct 2024 15:06:17 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Sai Teja Pottumuttu <sai.teja.pottumuttu@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <matthew.d.roper@intel.com>,
 <ville.syrjala@intel.com>, <balasubramani.vivekanandan@intel.com>
Subject: Re: [PATCH v3] drm/i915: Remove unused underrun irq/reporting bits
Message-ID: <ZxFgKbFKCbzbbx0v@intel.com>
References: <20241015080503.3521063-1-sai.teja.pottumuttu@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20241015080503.3521063-1-sai.teja.pottumuttu@intel.com>
X-ClientProxiedBy: MW4PR03CA0187.namprd03.prod.outlook.com
 (2603:10b6:303:b8::12) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|PH7PR11MB5794:EE_
X-MS-Office365-Filtering-Correlation-Id: 3237b761-3243-4ca1-fdf7-08dceedec91f
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?s13+TB2icxGx8tOpNuspXy6H4RvihjyuGq44M63hXSLj/LQEAXEmOTMMDZtE?=
 =?us-ascii?Q?v5lMF9TxlNrJWM4mRdyVa6PDXCm5AfOu8ZWjJPZu9Pfl3qCqx6wwSR6yatbG?=
 =?us-ascii?Q?CSPYnyo19SFEasBquPsFOiabBmKtaU+brHsGnrBjwNtt+zl2FBJnEDsSI/Z0?=
 =?us-ascii?Q?xj3UN2PKHZXs7rzRLI5JmId+sWRQRDYgE3ZWlDs4pgiHaNNykQPC/hkdGfUe?=
 =?us-ascii?Q?L++WMMxPqnByKvNWiXPWjMtrtGT7OJIyk07NqVBgk+gqzvEuY2t+TMMoXJHi?=
 =?us-ascii?Q?3UFoijCOsjwW3byKok2IGiAdA8Wy3LEvg9EhFhAB06ZqCG4bfU6IHQQQdyYd?=
 =?us-ascii?Q?fphcAv1gKIklGBX1PplN/8q/+Rktak5sRybFaQMe1g7HxFSqkE6eylADXsvZ?=
 =?us-ascii?Q?003nrrwZ0VbWcqdpE85FpO7IZa5gm+Zjw8399/HY2gX4WPZGMy9liS7bJGX5?=
 =?us-ascii?Q?sUTeO1z79Oebr3ApvX5ZxTyZaAxwJGrAGLpa/vNwfZUW19cSP4pLBgYBhLh+?=
 =?us-ascii?Q?k4P5svt7IxQwdXbBMkLuW2RFVAzF3PpLnSlXsFcthfa9G8d4gzNyGSVywsHp?=
 =?us-ascii?Q?ofKecwHdfIO5gpTXgKH/zcnvSXGNbVVdYJshdCj5bapYt4fOxp6pksuvYLy1?=
 =?us-ascii?Q?3B+TjlPKNyWWijltQKno/iBW3c/r099Qwc3DHw4TXJpQvdLm5R8fUfgHiNtC?=
 =?us-ascii?Q?JemWEz81L3DOaVxN11cWhoWXrQdK+44QIk8yJ8OefqSX3agy+rC4RxJ0PZ1B?=
 =?us-ascii?Q?UFacv8fjevyyJHWVzVz3kkzjKPqyX7RLpRssnC0YRLyarDOC7QLlVgNTFCav?=
 =?us-ascii?Q?3SlchvcBfZIv3JMpKxKwLf2X25x+/b/9DhIIhHC25Q0pLGyR7BNuv+3kTNdF?=
 =?us-ascii?Q?TQl7rtBAZ8w0ue0w3gzqWhIbB3YbMsbsOet6T0se8cY9Z2ENAtgUjyBICKU9?=
 =?us-ascii?Q?np8s5c3WOUCYdo/XGrEYSP/cXcMvgUzzrUK15+k8tV2aWX57GCrxRwdEoThE?=
 =?us-ascii?Q?jrHLP5ZBdwTufOBXHRVQ8dyKcyZEWkUtN+XAJTS7ShFfmvvHWKNw9zfyXd2K?=
 =?us-ascii?Q?8JQqU+WmpuXsoa8rw9eA9SKg1FWo6zTQSSydXyP0tmBgLU9CjYJawwZIGaqI?=
 =?us-ascii?Q?8/pEx0PfC2hSlvhDIjWYL9MWXeFHZ17TdPzKB8w/Ypt2zfmpyTUf8J7OG4Vr?=
 =?us-ascii?Q?TnnK9/xUdOWa85EW4RR1WydmnEjTcRReZctqbZA/cLuy7FDKt4/GMfuM2Vkv?=
 =?us-ascii?Q?jsl/KI63jiwG49DjqOJ9MeeqSmb4D8diPtiAHw8CIO1tOKCr7jqZfC/vnjcY?=
 =?us-ascii?Q?rNCpmR4DddmbpOlIhmJ+ZI7v?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?nbHzi3k9RnlQxFUUjNdJl86RwrNHiBoXWVjjLQvwv5mCwhId/FG7e8G3Qdps?=
 =?us-ascii?Q?qE1w9Iek4D//iKG5dDz1Y633sygQCk/83afT0EklA5Zq8nt/H5bjrvGMZ6VN?=
 =?us-ascii?Q?l7ugxiJ7rnCGq7VSHET1I3XDq74boBRKwjjLgDZYUqMeY0LJ9ucaabFQY/dL?=
 =?us-ascii?Q?XG8zJebEmp/G2wgPkSCF8ZjRwU67jGlDc1DlcNwm3T9qSnWU5JdAnii2vxaP?=
 =?us-ascii?Q?BH/74qn0j6NIi07ELCQA+DpjxHRAnKIf8SKr9+kuVKMXRw5AfYQVecEhor5M?=
 =?us-ascii?Q?G77Sh2RioFIM1AdlJSdxasPJMfL6n5ylP9Fp+NDxUK/xPIdNOJaizN4mIxPj?=
 =?us-ascii?Q?+VwsqMQMVuARTmO23j7kc/eSY7GrLsGmsOZmrL/2pfAHd4Yl8BBrT/0aw9Lr?=
 =?us-ascii?Q?mXCSHlY5mfdGAEBwIoO1rjWM+iozJ0EkLqG7ygLs4+rYl6+Zbd+ATeJ4Gx38?=
 =?us-ascii?Q?85jXkcYZUWU5B68//GjfNr9L91H7VaelvsvaIBxSjtwnQF5Uol6OgGP00bOK?=
 =?us-ascii?Q?d0nMVu94u8KLOZ4xjvF0TmPpX2Rvjfb66O0Nl2OQk8ZAStsVLxt2RMOnTx6h?=
 =?us-ascii?Q?X2VVgzEIk3WDguHZ5CfbTqhP9U7B2dPoI030J7Ap+51MSc7bItgfo3Jk2ano?=
 =?us-ascii?Q?t/WMaDAkAjJevebzHGEugjLhJoR7DnSiC9cbqt1af6eArrOWAwMEjtIw4PCb?=
 =?us-ascii?Q?xTZYUTbFOxMVYmaTVpvocPCY0Bd44We8PbmdvIyCYxWD+s8of607WYg6y2VK?=
 =?us-ascii?Q?tw8Bi42kh/MFq3zXBtq8kVbDRXhkjQvknONOWU986sIP1Sl6n8kSeriJIYq3?=
 =?us-ascii?Q?G41B5TayRNPZ319SjcVnrN1/r2nEhjcXJc83Jw/tn8HWuTNzFtvGTYn4QDwy?=
 =?us-ascii?Q?O7MjKd4Tje4YSyNvePoM1gyos978dpiRlM8gxL5jw6UEGvchrH7NTmO3fK1V?=
 =?us-ascii?Q?p8bQvZcFArX8Y24IS7PDDmu9HIzUjabgSl0JH4+K2bzTCLqRZVkdxfMzxkJN?=
 =?us-ascii?Q?K/RjMwBN3Vjtg3ACq8r+1m27DIbKeH5vyIwVl0J7ZrkT8ib15QxhmnbvAviw?=
 =?us-ascii?Q?KNMdiqCGyJuoHSibChUqkWslCBaqUwoPY8v6Ok2fEqbWwBmnY4Lnes1XuNQE?=
 =?us-ascii?Q?GK9viE8W6g4m8EVzPLFi6ypMaPB5kFlOlvOivlWr4hXETHcL2kO4GraHYoft?=
 =?us-ascii?Q?UU048zzIxg9nYNmxzUNY54OfAWeIvu7VXrhT5LyuGcI5Zvnown/asxG15SpR?=
 =?us-ascii?Q?6O78DU8gFTpSRRrx/7jS9KIp0mJio4AbAhC4xk/ChvUPkLoPzGBdDY/fdZ5N?=
 =?us-ascii?Q?485dqKoITq3X60EQQeYe+eb8W5drD2H32s83yJKQzisQuPWaVfzSxkF5oIXx?=
 =?us-ascii?Q?aXINxasXI+a86YC3vHLlxfORMKva7VVriPJGexywd6nsi7uUuA2851wZLyhL?=
 =?us-ascii?Q?NDO96eFAbu8yjDQfIsvf0kPvdXYja/lY+XaTD5sQJVFGhQmQkmQ2Iwwijh4V?=
 =?us-ascii?Q?qrnDYp8CCKbZmjocmw8LfSAn5XurdTpV8rOGLSlcuwVIXslYdrvyylkTGGhw?=
 =?us-ascii?Q?W3XXz5/WhKqCltBW7KtOKSunATDO2PGoSFOLvXJGuspYhAH59qtORo5bo8pV?=
 =?us-ascii?Q?3Q=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3237b761-3243-4ca1-fdf7-08dceedec91f
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Oct 2024 19:06:20.8546 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: SzzaKtsH2x7JNaQ1Emw34H3NCq4TGaew+kWEJGq0KuGC5Gs/2xa9wkN/rFgwxVhEfwHdEj8cQ6MRLRMLSHX0tg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB5794
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

On Tue, Oct 15, 2024 at 01:35:03PM +0530, Sai Teja Pottumuttu wrote:
> Underrun recovery was defeatured and was never brought into usage.
> Thus we can remove the underrun recovery interrupt/reporting
> register bits and related logic introduced to detect/report soft,
> hard, port underruns.
> 
> Essentially this is a revert of the commit 8bcc0840cf7c
> ("drm/i915/xelpd: Enhanced pipe underrun reporting") which originally
> added this functionality. Also note that PIPE_STATUS_UNDERRUN bit in
> PIPESTATUS still stays relevant but we would move back to not
> clearing this sticky bit as we are not using any information from
> this register.
> 
> v2: Extend commit message to add more details (Matt Roper)
> v3: Fix the old commit mention in commit message
> 
> Signed-off-by: Sai Teja Pottumuttu <sai.teja.pottumuttu@intel.com>
> Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

pushed, thanks for the patch and review

> ---
>  .../gpu/drm/i915/display/intel_display_irq.c  | 19 +-----
>  .../gpu/drm/i915/display/intel_display_irq.h  |  1 -
>  .../drm/i915/display/intel_fifo_underrun.c    | 58 ++-----------------
>  drivers/gpu/drm/i915/i915_reg.h               |  9 ---
>  4 files changed, 8 insertions(+), 79 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
> index a4367ddc7a44..827891070461 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_irq.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
> @@ -1021,17 +1021,6 @@ static u32 gen8_de_pipe_flip_done_mask(struct drm_i915_private *i915)
>  		return GEN8_PIPE_PRIMARY_FLIP_DONE;
>  }
>  
> -u32 gen8_de_pipe_underrun_mask(struct drm_i915_private *dev_priv)
> -{
> -	u32 mask = GEN8_PIPE_FIFO_UNDERRUN;
> -
> -	if (DISPLAY_VER(dev_priv) >= 13)
> -		mask |= XELPD_PIPE_SOFT_UNDERRUN |
> -			XELPD_PIPE_HARD_UNDERRUN;
> -
> -	return mask;
> -}
> -
>  static void gen8_read_and_ack_pch_irqs(struct drm_i915_private *i915, u32 *pch_iir, u32 *pica_iir)
>  {
>  	u32 pica_ier = 0;
> @@ -1177,7 +1166,7 @@ void gen8_de_irq_handler(struct drm_i915_private *dev_priv, u32 master_ctl)
>  		if (iir & GEN8_PIPE_CDCLK_CRC_DONE)
>  			hsw_pipe_crc_irq_handler(dev_priv, pipe);
>  
> -		if (iir & gen8_de_pipe_underrun_mask(dev_priv))
> +		if (iir & GEN8_PIPE_FIFO_UNDERRUN)
>  			intel_cpu_fifo_underrun_irq_handler(dev_priv, pipe);
>  
>  		fault_errors = iir & gen8_de_pipe_fault_mask(dev_priv);
> @@ -1617,8 +1606,7 @@ void gen8_irq_power_well_post_enable(struct drm_i915_private *dev_priv,
>  				     u8 pipe_mask)
>  {
>  	struct intel_uncore *uncore = &dev_priv->uncore;
> -	u32 extra_ier = GEN8_PIPE_VBLANK |
> -		gen8_de_pipe_underrun_mask(dev_priv) |
> +	u32 extra_ier = GEN8_PIPE_VBLANK | GEN8_PIPE_FIFO_UNDERRUN |
>  		gen8_de_pipe_flip_done_mask(dev_priv);
>  	enum pipe pipe;
>  
> @@ -1807,8 +1795,7 @@ void gen8_de_irq_postinstall(struct drm_i915_private *dev_priv)
>  			GEN12_DSB_INT(INTEL_DSB_2);
>  
>  	de_pipe_enables = de_pipe_masked |
> -		GEN8_PIPE_VBLANK |
> -		gen8_de_pipe_underrun_mask(dev_priv) |
> +		GEN8_PIPE_VBLANK | GEN8_PIPE_FIFO_UNDERRUN |
>  		gen8_de_pipe_flip_done_mask(dev_priv);
>  
>  	de_port_enables = de_port_masked;
> diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.h b/drivers/gpu/drm/i915/display/intel_display_irq.h
> index 4b493cff7b8e..b077712b7be1 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_irq.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_irq.h
> @@ -33,7 +33,6 @@ void ibx_disable_display_interrupt(struct drm_i915_private *i915, u32 bits);
>  
>  void gen8_irq_power_well_post_enable(struct drm_i915_private *i915, u8 pipe_mask);
>  void gen8_irq_power_well_pre_disable(struct drm_i915_private *i915, u8 pipe_mask);
> -u32 gen8_de_pipe_underrun_mask(struct drm_i915_private *i915);
>  
>  int i8xx_enable_vblank(struct drm_crtc *crtc);
>  int i915gm_enable_vblank(struct drm_crtc *crtc);
> diff --git a/drivers/gpu/drm/i915/display/intel_fifo_underrun.c b/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
> index 745ce22afb89..cda1daf4cdea 100644
> --- a/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
> +++ b/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
> @@ -192,35 +192,15 @@ static void ivb_set_fifo_underrun_reporting(struct drm_device *dev,
>  	}
>  }
>  
> -static u32
> -icl_pipe_status_underrun_mask(struct drm_i915_private *dev_priv)
> -{
> -	u32 mask = PIPE_STATUS_UNDERRUN;
> -
> -	if (DISPLAY_VER(dev_priv) >= 13)
> -		mask |= PIPE_STATUS_SOFT_UNDERRUN_XELPD |
> -			PIPE_STATUS_HARD_UNDERRUN_XELPD |
> -			PIPE_STATUS_PORT_UNDERRUN_XELPD;
> -
> -	return mask;
> -}
> -
>  static void bdw_set_fifo_underrun_reporting(struct drm_device *dev,
>  					    enum pipe pipe, bool enable)
>  {
>  	struct drm_i915_private *dev_priv = to_i915(dev);
> -	u32 mask = gen8_de_pipe_underrun_mask(dev_priv);
> -
> -	if (enable) {
> -		if (DISPLAY_VER(dev_priv) >= 11)
> -			intel_de_write(dev_priv,
> -				       ICL_PIPESTATUS(dev_priv, pipe),
> -				       icl_pipe_status_underrun_mask(dev_priv));
>  
> -		bdw_enable_pipe_irq(dev_priv, pipe, mask);
> -	} else {
> -		bdw_disable_pipe_irq(dev_priv, pipe, mask);
> -	}
> +	if (enable)
> +		bdw_enable_pipe_irq(dev_priv, pipe, GEN8_PIPE_FIFO_UNDERRUN);
> +	else
> +		bdw_disable_pipe_irq(dev_priv, pipe, GEN8_PIPE_FIFO_UNDERRUN);
>  }
>  
>  static void ibx_set_fifo_underrun_reporting(struct drm_device *dev,
> @@ -404,7 +384,6 @@ void intel_cpu_fifo_underrun_irq_handler(struct drm_i915_private *dev_priv,
>  {
>  	struct intel_display *display = &dev_priv->display;
>  	struct intel_crtc *crtc = intel_crtc_for_pipe(display, pipe);
> -	u32 underruns = 0;
>  
>  	/* We may be called too early in init, thanks BIOS! */
>  	if (crtc == NULL)
> @@ -415,37 +394,10 @@ void intel_cpu_fifo_underrun_irq_handler(struct drm_i915_private *dev_priv,
>  	    crtc->cpu_fifo_underrun_disabled)
>  		return;
>  
> -	/*
> -	 * Starting with display version 11, the PIPE_STAT register records
> -	 * whether an underrun has happened, and on XELPD+, it will also record
> -	 * whether the underrun was soft/hard and whether it was triggered by
> -	 * the downstream port logic.  We should clear these bits (which use
> -	 * write-1-to-clear logic) too.
> -	 *
> -	 * Note that although the IIR gives us the same underrun and soft/hard
> -	 * information, PIPE_STAT is the only place we can find out whether
> -	 * the underrun was caused by the downstream port.
> -	 */
> -	if (DISPLAY_VER(dev_priv) >= 11) {
> -		underruns = intel_de_read(dev_priv,
> -					  ICL_PIPESTATUS(dev_priv, pipe)) &
> -			icl_pipe_status_underrun_mask(dev_priv);
> -		intel_de_write(dev_priv, ICL_PIPESTATUS(dev_priv, pipe),
> -			       underruns);
> -	}
> -
>  	if (intel_set_cpu_fifo_underrun_reporting(dev_priv, pipe, false)) {
>  		trace_intel_cpu_fifo_underrun(display, pipe);
>  
> -		if (DISPLAY_VER(dev_priv) >= 11)
> -			drm_err(&dev_priv->drm, "CPU pipe %c FIFO underrun: %s%s%s%s\n",
> -				pipe_name(pipe),
> -				underruns & PIPE_STATUS_SOFT_UNDERRUN_XELPD ? "soft," : "",
> -				underruns & PIPE_STATUS_HARD_UNDERRUN_XELPD ? "hard," : "",
> -				underruns & PIPE_STATUS_PORT_UNDERRUN_XELPD ? "port," : "",
> -				underruns & PIPE_STATUS_UNDERRUN ? "transcoder," : "");
> -		else
> -			drm_err(&dev_priv->drm, "CPU pipe %c FIFO underrun\n", pipe_name(pipe));
> +		drm_err(&dev_priv->drm, "CPU pipe %c FIFO underrun\n", pipe_name(pipe));
>  	}
>  
>  	intel_fbc_handle_fifo_underrun_irq(&dev_priv->display);
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 818142f5a10c..405f409e9761 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -1735,13 +1735,6 @@
>  #define   PIPE_MISC2_FLIP_INFO_PLANE_SEL_MASK		REG_GENMASK(2, 0) /* tgl+ */
>  #define   PIPE_MISC2_FLIP_INFO_PLANE_SEL(plane_id)	REG_FIELD_PREP(PIPE_MISC2_FLIP_INFO_PLANE_SEL_MASK, (plane_id))
>  
> -#define _ICL_PIPE_A_STATUS			0x70058
> -#define ICL_PIPESTATUS(dev_priv, pipe)			_MMIO_PIPE2(dev_priv, pipe, _ICL_PIPE_A_STATUS)
> -#define   PIPE_STATUS_UNDERRUN				REG_BIT(31)
> -#define   PIPE_STATUS_SOFT_UNDERRUN_XELPD		REG_BIT(28)
> -#define   PIPE_STATUS_HARD_UNDERRUN_XELPD		REG_BIT(27)
> -#define   PIPE_STATUS_PORT_UNDERRUN_XELPD		REG_BIT(26)
> -
>  #define VLV_DPFLIPSTAT				_MMIO(VLV_DISPLAY_BASE + 0x70028)
>  #define   PIPEB_LINE_COMPARE_INT_EN			REG_BIT(29)
>  #define   PIPEB_HLINE_INT_EN			REG_BIT(28)
> @@ -2512,9 +2505,7 @@
>  #define  GEN12_PIPEDMC_INTERRUPT	REG_BIT(26) /* tgl+ */
>  #define  GEN12_PIPEDMC_FAULT		REG_BIT(25) /* tgl+ */
>  #define  MTL_PIPEDMC_ATS_FAULT		REG_BIT(24) /* mtl+ */
> -#define  XELPD_PIPE_SOFT_UNDERRUN	REG_BIT(22) /* adl/dg2+ */
>  #define  GEN11_PIPE_PLANE7_FAULT	REG_BIT(22) /* icl/tgl */
> -#define  XELPD_PIPE_HARD_UNDERRUN	REG_BIT(21) /* adl/dg2+ */
>  #define  GEN11_PIPE_PLANE6_FAULT	REG_BIT(21) /* icl/tgl */
>  #define  GEN11_PIPE_PLANE5_FAULT	REG_BIT(20) /* icl+ */
>  #define  GEN12_PIPE_VBLANK_UNMOD	REG_BIT(19) /* tgl+ */
> -- 
> 2.34.1
> 
