Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 26F788FBBA5
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Jun 2024 20:28:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A837110E5B3;
	Tue,  4 Jun 2024 18:28:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="j4ET6NQx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8F2FD10E5B3
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Jun 2024 18:28:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717525683; x=1749061683;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=C19sGuickBtJrkCEiSrdeIwzBetw7jX0PGVU57ImWsY=;
 b=j4ET6NQxzCrLgDgKwachSMejZSkaMYG9ypUxlWH5E0CYHcQcO94XVBhJ
 pJeBKBfZpBK0mhv/ByOBx85xPD6fSnZq+7LKSVIGb1R3inOkI/QvSQvfq
 tE8qkWAFa3t/aG81UNBW2fVlHNBhifk2TVe/2qG039yqA69qNntL845iw
 qUyPoXAdphywHntVOyGggdT22vWsogPDlrNwWdf+mqGvuK4RagsXFApFy
 /j+7GHuunKi4bLKEeKBp/hxVjUv38Y0WXw/qRK8leiKksCp2llUlfRGmJ
 2uQ5hb1j/o7pIyr9aDC45goSSiX0skSbwDknQqb9yglFU+0Cjn3PUm3X9 A==;
X-CSE-ConnectionGUID: DNkIgFlzR96Mp0tYNsLgwA==
X-CSE-MsgGUID: 9+YfP6AwRfOJASA02MFqpA==
X-IronPort-AV: E=McAfee;i="6600,9927,11093"; a="13903056"
X-IronPort-AV: E=Sophos;i="6.08,214,1712646000"; d="scan'208";a="13903056"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2024 11:28:03 -0700
X-CSE-ConnectionGUID: 55pOSd17Tw2AZJd3d9Lh+g==
X-CSE-MsgGUID: kRdmbKG0T3SvVcOZxRUD4w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,214,1712646000"; d="scan'208";a="37904358"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Jun 2024 11:28:02 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 4 Jun 2024 11:28:01 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 4 Jun 2024 11:28:01 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 4 Jun 2024 11:28:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GK5vCBvSCsU1I+JM9Ro9RY2W5QABHfjHyvxS61eJctpdMWm2rVHrjBmxOKlToR3LbWNkViwGvuo4vSKCBdge9xEMidb6PbZkBAtvmHaJprEpZTyEiBujtCIuRelpHc7v1uMtTT4MVYxCoJs3QfxGGwMb9xaeOUOX3+AHZ1OnBbg/SmKlfWmBsYxOI3uoL0R6n6SmvsRHs/ibAD45XaMS6qRUAKUNej6md/503zka9q085EXUMf6kkvAty/7PW8iHOxk/5duMnpVT8zRbenf14Q9CdJn2wJbCDtTDRUOzirhqsXnLc48SwmJ7cc9OijZFXhoyh5h9+Xm73OFpcqtHAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aDRxaeOxyUQebIUKRCbCPMQ1f5xi497PvvyViIh0LZQ=;
 b=McT6/IdQ3xOw/2DFzZ6gD0+YCB/7DUo9skLXG2DuFMtVlbXL0jWQQX0EjVfulOTexMk9jtAAMBl4HVxgFlr5IrrokJKSINAIbofA3WnUc0BzzZqz6Vo4ud5n3rA67Ku3EZn4kxUr6aMVhoJOoeSXFx8WtygLBHZabi7B+ziF9mGc1vt+MN5FkEb+AMFKW+nFLBT6KgLOIqw9lTEYDXXfnaGqkv95vmhOLSVMZmTFEsyBHw6/7JH0o+uTCvY47KFxqFILZqzVdU5MGfYRPhKKozl76oSvieOoXZr339pTZr2tcLOT/UXd2Lo+DHmhqM8apJ4KaPQd5eXORhx2AT0J3g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by MN0PR11MB6035.namprd11.prod.outlook.com (2603:10b6:208:376::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.25; Tue, 4 Jun
 2024 18:27:58 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413%4]) with mapi id 15.20.7633.018; Tue, 4 Jun 2024
 18:27:58 +0000
Date: Tue, 4 Jun 2024 14:27:54 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Imre Deak <imre.deak@intel.com>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: [core-for-CI PATCH] thunderbolt: Add Kconfig option to disable
 PCIe tunneling
Message-ID: <Zl9cqvABnQKcIGs8@intel.com>
References: <20240604161618.1958674-1-imre.deak@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20240604161618.1958674-1-imre.deak@intel.com>
X-ClientProxiedBy: BY5PR03CA0029.namprd03.prod.outlook.com
 (2603:10b6:a03:1e0::39) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|MN0PR11MB6035:EE_
X-MS-Office365-Filtering-Correlation-Id: 926c0f37-fd7a-405e-a93f-08dc84c40ebe
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|376005|366007|1800799015;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?nwY07Iyg3NYNGTUE4VI/ZZSpp7GjeFiwP6B7t4LABrnNfJxUUEoAH/iuT3XR?=
 =?us-ascii?Q?aPgbzxraIpsEN/SYZZ/EsBzxSGzQKOVGSehFDBNBNVZUL3eIGsMjww8F/CYK?=
 =?us-ascii?Q?363V4KPUVIr+gTCh3v7PebV4V63YgKd5bWZPz6k80Yt0eqHc4E7AHj234zKI?=
 =?us-ascii?Q?66gZCvhv4N2hf+LX9j1rdVZAFXV9D1LD6VrYx5h+vd4SjJuVEPMVzF3l/CHl?=
 =?us-ascii?Q?aPiOSB5yy1rYlRTP/kAFyIDvy3Q7w++Wmf7+43USBWjKUdXg+hAq88KGQDlp?=
 =?us-ascii?Q?EJqKZZgpmEXXjTczYZ052GGGMWCP7hg6CxJLMY/ndtGihpgOgYcr2u/dUL7M?=
 =?us-ascii?Q?/UGePuZrUxlFlNClNX9aHY7fhKvaEocZyVIbIlPkidOedShe0iujljzAEkks?=
 =?us-ascii?Q?bPzJd09OiTQWeFL6UDXtPC5SCoDeK3gePxoA+92lwHKaH/2cfuPvDv6WrFGi?=
 =?us-ascii?Q?46bXsHTuJWK8haZU4LEP8bH4L5Rda74o6jSdbWD5RIEh9CYHUg9F0z42vUO7?=
 =?us-ascii?Q?wakhZYNoPtzKhuBDpVs3O84VSu0DyWRUlw9mOy++d4nI+OQjwABj1+fJy0Qu?=
 =?us-ascii?Q?q69xTsMtxoqerYnP1G828J/0hK9EP+2XMoMk5hBGmOFK8rk1pYL0m/rGruN4?=
 =?us-ascii?Q?xdMtiIJfkp2Z6/zoaeaiwFS98w/s4HtN3OcvhMZDKWAn+M2IgxFAtrgNDYGa?=
 =?us-ascii?Q?HcC9sePlCuc+tIOPVTxh/ZFOZv6C/6HmHyypVvedFsEnlMz0rT1tYv6ilQ8M?=
 =?us-ascii?Q?q8Pk36cS5Ybm0isfXc6rOEtxyFN+DF7Mqemtg7n/DnRir9qic38PQVP6qvt9?=
 =?us-ascii?Q?A/dtGrpBcdl+7zyEPNFKpXhbME4Epg/2/nthQ5d6g19Shz+j64/uMd4VghjF?=
 =?us-ascii?Q?Eu+u5i9aKhGxvdnW4nvqCx1nVcRvnMMqezSvJe8u5oRpeFZizoz5IzOFJ6pX?=
 =?us-ascii?Q?d6HW94s/PGdEUJOW/se7/kGpZJY2mPukwkF6L2Q97ryFNTt7SeykvdBhqOHi?=
 =?us-ascii?Q?n3LzWzVhLrj7lD3ksSoBooeXMiWWsEKRR3As9wlmcvdBXq1dBfxiTHDOJpOR?=
 =?us-ascii?Q?MKo4ZwDIVRZHY/072D34d3MbNi/gejN+RE48vnBd1zm5XwKoHeyZc6UkFlBu?=
 =?us-ascii?Q?HzDfs+F73XRBK0oedPnzrkHK3bwMfy+IYf4qXhZYVqCGkZc67xbEDMa4spgU?=
 =?us-ascii?Q?JvfvA7gaXIQsyUKnCKaum5YoOdYAB7qVPsO7yXztL49ytXyOPDhQH8MJm0M?=
 =?us-ascii?Q?=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(366007)(1800799015); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?ai2DxaKZfu01PISpMedNM1qSNWgDcDR9B6MnieAl4DiGFEWVl1XDg5pOZasP?=
 =?us-ascii?Q?K79Rc4e9YKSKUTBroHZBxTJd2xJz3vasHTtsal3iXiw/XcItIa5y728IAsiw?=
 =?us-ascii?Q?KD2dOH0ouFKVjDvcb/YcpRyeUYmRA3tx3Xf1NNChf+pcseN7YpKeuYk1iwMZ?=
 =?us-ascii?Q?sIouGge/FegfLFA9TQxd9V3QV78v0A9cZ2AnAjl8WUZwKRJtRxaf0rofGnR4?=
 =?us-ascii?Q?1MWJkHv7hdtKGQF5L5S+gDgXI3V491IKXTMxHzilE0mM9Bu6uLCuEv8hQrzy?=
 =?us-ascii?Q?y1L4ce/NZEl9yhky1ZNvFC0A/QX4EDoZ0mpz6AnFAnzkSBT4RB0M9P1xYOaf?=
 =?us-ascii?Q?i0J/XCWwpS3jt0JPo7ScCO9AUB5J2It8d4isjQ3FH8/3asLBglOZntzOyRrk?=
 =?us-ascii?Q?C4K5JUfNyqH/mT7uW7tGT4pbaRWjnhKLNP8+TQtm3Ais9M6r2AATir2g6cqU?=
 =?us-ascii?Q?ASabVFLxeXw7oiDEUHtKbmbTTUKC/WHyydVCCvI9PZ7AZmW205mUQF830Wya?=
 =?us-ascii?Q?vsLCFPvZ8ASfY7s8rVrWmlUKrbh3WUrFcLjxVjoYIDHA0FI4VnF0NJfuhlep?=
 =?us-ascii?Q?ydz9Sdrmo6ddlUY5EQbnd34BddlA0k2c3pupn8+BfiLGlYRZdI5UTRqUd2Pp?=
 =?us-ascii?Q?F3iTl7uZsw6EYPDLqUfFB+gA9DD9mJrvRAMRX9DPFx6MxskTZF+e8ckF6mdg?=
 =?us-ascii?Q?OgdpVPOLN/IxBsb6FGZJyJa68Es7acmNDr/eFxT4HprzE1Uyf6TeT6XdB3ss?=
 =?us-ascii?Q?DiZbnzpYnORVvC00KiFZHOse0gjx8SyotnGSxfB2AwHBrVyv878uEHJWEq5Q?=
 =?us-ascii?Q?8VPpLC0rW5xNvrbveWJufrD0PPwi99oqgplMH4ueI5hUUJALp1aVMCld/bwi?=
 =?us-ascii?Q?ygdtaz6BPWafdqqDOo9OEc549uENpYtjX6Vh838+5x+wIvsBQwWoWRJYNJxL?=
 =?us-ascii?Q?fSp9TUKSwnkanSgNILd5PMQsaiCSiZGwtIV7nKj7RXcgSO+wxG1ytuKK326W?=
 =?us-ascii?Q?xUhNiPhJho/j0Vx7OROY4U9YZOKnrBbkERbjaZ2S4bJw4vUoxkCqlmDxD1OS?=
 =?us-ascii?Q?IEIY8ihV8VQDtIkpQ7AAHGgly0VFVFgGW/sZlsfB+LiIvBsTrdtNszt3xmhj?=
 =?us-ascii?Q?njDGHR1uoS35sYvDSuyHoeFOoEtCBM5exeXbHqhn0eZK7juORLd4geq1J1KT?=
 =?us-ascii?Q?M5yz20nTBoaao8+y9jSL1AyrUeFCwTElb/yjdm4z7XSOCJS2hjQG8Fuh1WFp?=
 =?us-ascii?Q?8XRiZLnDry7ruH/8EXIUz+rp4IAWAWXWJ5m8g0XFgtUbXLpgMJrxRbIQHHl9?=
 =?us-ascii?Q?q3290QUD141SnZDwoetJtHl3mBH3j68knzZAT0s76unTBfn5xldMx8LMBu+d?=
 =?us-ascii?Q?uhwKaoeranzyerQq0bKH86lLmndWddAWH4mrbpRVNhh4D5f4+2i4DrrxfXJ+?=
 =?us-ascii?Q?EjtNXQfbq+R6Z51k22m4LraM9tRoX0EIjS5NSGO+lr9qQ+BswEwNYhd1dUUW?=
 =?us-ascii?Q?yGZJ9hD6WjKmo3NVUH+mR+Nq0r8RIsDIqwMjZvUo4nKsS5XVetUHuZYRy2lc?=
 =?us-ascii?Q?3P3kSl2r1R3u1of5wuQrTcHQWaoOs9cc3p13TlbP?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 926c0f37-fd7a-405e-a93f-08dc84c40ebe
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Jun 2024 18:27:57.9460 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Xfqcj4GZbQ3YE9f3oQo8aqHZqE3H8aU1aTx5ucK77XyWViDwjpqe+Y+cySjGVm1s/Kge3OOAtS5n8ALw2Y0kkw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6035
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

On Tue, Jun 04, 2024 at 07:16:18PM +0300, Imre Deak wrote:
> From: Mika Westerberg <mika.westerberg@linux.intel.com>
> 
> In typical cases PCIe tunneling is needed to make the devices fully
> usable for the host system. However, it poses a security issue because
> they can also use DMA to access the host memory. We already have two
> ways of preventing this, one an IOMMU that is enabled on recent systems
> by default and the second is the "authorized" attribute under each
> connected device that needs to be written by userspace before a PCIe
> tunnel is created. This option adds one more by adding a Kconfig option,
> which is enabled by default, that can be used to make kernel binaries
> where PCIe tunneling is completely disabled.
> 
> Signed-off-by: Mika Westerberg <mika.westerberg@linux.intel.com>
> References: https://intel-gfx-ci.01.org/tree/drm-tip/Trybot_134314v1/bat-mtlp-9/boot0.txt
> References: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11261
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
> 
> The issue at the first References: link is a known false-positive lockdep issue
> in the TBT/PCIe subsystem. After discussion with the TBT maintainer (Mika
> Westerberg), the easiest solution for the iGFX CI is to disable the PCIe TBT
> tunneling functionality which leads to the issue, as
> 
> - It's not an important feature iGFX CI needs to test.
> - There is no available solution (patch) yet to solve the lockdep issue.
> 
> The feature could be re-enabled if needed once the lockdep issue is
> solved upstream. This patch will be merged upstream, until that sending it
> for core-for-CI.

Acked-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> 
>  drivers/thunderbolt/Kconfig  | 18 ++++++++++++++++++
>  drivers/thunderbolt/tb.c     |  2 +-
>  drivers/thunderbolt/tb.h     |  9 +++++++++
>  drivers/thunderbolt/tunnel.c |  8 ++++----
>  drivers/thunderbolt/usb4.c   |  2 +-
>  5 files changed, 33 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/thunderbolt/Kconfig b/drivers/thunderbolt/Kconfig
> index 448fd2ec8f6e2..facf2e684c022 100644
> --- a/drivers/thunderbolt/Kconfig
> +++ b/drivers/thunderbolt/Kconfig
> @@ -18,6 +18,24 @@ menuconfig USB4
>  
>  if USB4
>  
> +config USB4_PCIE_TUNNELING
> +	bool "Allow PCI Express tunneling over USB4 fabric"
> +	depends on PCI
> +	default y
> +	help
> +	  USB4 and Thunderbolt devices typically include PCIe switch
> +	  with a number of PCIe endpoints such as USB host controllers,
> +	  GPUs and network adapters. These are made available to the
> +	  host system through PCIe tunneling. These can use DMA and
> +	  therefore have access to the host memory which is typically
> +	  guarded by an IOMMU. This option allows disabling PCIe
> +	  tunneling completely.
> +
> +	  For devices to be usable it is recommended to say Y here.
> +
> +	  Note this only works with systems that use Software Based
> +	  Connection Manager (this is most USB4 hosts).
> +
>  config USB4_DEBUGFS_WRITE
>  	bool "Enable write by debugfs to configuration spaces (DANGEROUS)"
>  	help
> diff --git a/drivers/thunderbolt/tb.c b/drivers/thunderbolt/tb.c
> index 10e719dd837ce..7d71ff3f82c13 100644
> --- a/drivers/thunderbolt/tb.c
> +++ b/drivers/thunderbolt/tb.c
> @@ -3181,7 +3181,7 @@ struct tb *tb_probe(struct tb_nhi *nhi)
>  	if (!tb)
>  		return NULL;
>  
> -	if (tb_acpi_may_tunnel_pcie())
> +	if (tb_may_tunnel_pcie())
>  		tb->security_level = TB_SECURITY_USER;
>  	else
>  		tb->security_level = TB_SECURITY_NOPCIE;
> diff --git a/drivers/thunderbolt/tb.h b/drivers/thunderbolt/tb.h
> index 18aae4ccaed59..22fad8a9679ae 100644
> --- a/drivers/thunderbolt/tb.h
> +++ b/drivers/thunderbolt/tb.h
> @@ -1436,6 +1436,15 @@ static inline int tb_acpi_power_on_retimers(struct tb_port *port) { return 0; }
>  static inline int tb_acpi_power_off_retimers(struct tb_port *port) { return 0; }
>  #endif
>  
> +static inline bool tb_may_tunnel_pcie(void)
> +{
> +#ifdef CONFIG_USB4_PCIE_TUNNELING
> +	return tb_acpi_may_tunnel_pcie();
> +#else
> +	return false;
> +#endif
> +}
> +
>  #ifdef CONFIG_DEBUG_FS
>  void tb_debugfs_init(void);
>  void tb_debugfs_exit(void);
> diff --git a/drivers/thunderbolt/tunnel.c b/drivers/thunderbolt/tunnel.c
> index 41cf6378ad251..7c8397c135ba9 100644
> --- a/drivers/thunderbolt/tunnel.c
> +++ b/drivers/thunderbolt/tunnel.c
> @@ -101,7 +101,7 @@ static unsigned int tb_available_credits(const struct tb_port *port,
>  	size_t ndp;
>  
>  	usb3 = tb_acpi_may_tunnel_usb3() ? sw->max_usb3_credits : 0;
> -	pcie = tb_acpi_may_tunnel_pcie() ? sw->max_pcie_credits : 0;
> +	pcie = tb_may_tunnel_pcie() ? sw->max_pcie_credits : 0;
>  
>  	if (tb_acpi_is_xdomain_allowed()) {
>  		spare = min_not_zero(sw->max_dma_credits, dma_credits);
> @@ -426,7 +426,7 @@ bool tb_tunnel_reserved_pci(struct tb_port *port, int *reserved_up,
>  	if (WARN_ON_ONCE(!port->remote))
>  		return false;
>  
> -	if (!tb_acpi_may_tunnel_pcie())
> +	if (!tb_may_tunnel_pcie())
>  		return false;
>  
>  	if (tb_port_get_link_generation(port) < 4)
> @@ -1510,7 +1510,7 @@ static unsigned int tb_dma_available_credits(const struct tb_port *port)
>  	int credits;
>  
>  	credits = tb_available_credits(port, NULL);
> -	if (tb_acpi_may_tunnel_pcie())
> +	if (tb_may_tunnel_pcie())
>  		credits -= sw->max_pcie_credits;
>  	credits -= port->dma_credits;
>  
> @@ -1821,7 +1821,7 @@ static int tb_usb3_consumed_bandwidth(struct tb_tunnel *tunnel,
>  		int *consumed_up, int *consumed_down)
>  {
>  	struct tb_port *port = tb_upstream_port(tunnel->dst_port->sw);
> -	int pcie_weight = tb_acpi_may_tunnel_pcie() ? TB_PCI_WEIGHT : 0;
> +	int pcie_weight = tb_may_tunnel_pcie() ? TB_PCI_WEIGHT : 0;
>  
>  	/*
>  	 * PCIe tunneling, if enabled, affects the USB3 bandwidth so
> diff --git a/drivers/thunderbolt/usb4.c b/drivers/thunderbolt/usb4.c
> index de480bf2a53de..cacc7bec19eb4 100644
> --- a/drivers/thunderbolt/usb4.c
> +++ b/drivers/thunderbolt/usb4.c
> @@ -282,7 +282,7 @@ int usb4_switch_setup(struct tb_switch *sw)
>  	 * Only enable PCIe tunneling if the parent router supports it
>  	 * and it is not disabled.
>  	 */
> -	if (tb_acpi_may_tunnel_pcie() &&
> +	if (tb_may_tunnel_pcie() &&
>  	    tb_switch_find_port(parent, TB_TYPE_PCIE_DOWN)) {
>  		val |= ROUTER_CS_5_PTO;
>  		/*
> -- 
> 2.43.3
> 
