Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C18DA85FAAE
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Feb 2024 15:02:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3AD2510E947;
	Thu, 22 Feb 2024 14:02:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="oBI4shTs";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1E70D10E947
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Feb 2024 14:02:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708610559; x=1740146559;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=8k49hCynAHJK+Sqc+XjZxI6eWsCrrTn2M3pZJU/aJHg=;
 b=oBI4shTse4McbqJZpdKjhnb+V8E8lhIqrSNFNKnCjBJ95wNkL0+JNN3Y
 YukJlDqUM54t0KHoXe6zqJigHIyHMsDQ+s/1YgCZcf5Iz1nE27kVPuS0/
 XuUWW9a1T7bLw4AGUUtT256UmNHHnRbZTY5avPVTks5gW667WYic6HzEB
 Yxt0ZNNrU7WJJyxRExlugiGrt7PnU/yDyX42BD34KOUB8msSMYp6Cdtvd
 MQetqViZyiKX2oFjeMbBWV2kv0AQeal38c0kt+uCrhSbUAtuwvOORsvHE
 GJTKObozddfS46khS0ehDAGJVidNeIzeEumYJby1YkKaRHPCqXZev+SKd A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10991"; a="2698727"
X-IronPort-AV: E=Sophos;i="6.06,177,1705392000"; 
   d="scan'208";a="2698727"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2024 06:02:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,177,1705392000"; 
   d="scan'208";a="5814308"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Feb 2024 06:02:39 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 22 Feb 2024 06:02:38 -0800
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 22 Feb 2024 06:02:37 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 22 Feb 2024 06:02:37 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 22 Feb 2024 06:02:37 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=j5/y/ECimtvxPLzRnVlCeal5IL2hjdG9SyfUolaJEzLGrhZfi6MPyqtVg8gaBiUj2K7TbuQrRcnIPs6d4nCVWJnQ+gc8+++F8Uwo2bWSv3YT3Aus3J1w2NuwIGFlZ1m29kVHbiWTPsU9vbKHIVenelxvqqTvIRrJ+rLQOzzFqtEk/Rp58T3hN7PG3+LlV686HUX8aeettloz3BKaPk1+haIKOpbtUSUhVTQ5hxSeOAGyR1IV201FD/fXncbgQA3m5fVrA86GS9nt4Lrf4oaDqoU2CyMhwooULoI0ee5DXhqs4HerNAZbo1iXgoo5HwaP6llB9j2+6lUVHdCmmMd27g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wAXKbQz9Y5OzMkSJC7VVkYTPPlvJVLqPIBrzMP7l8yc=;
 b=Y1Y4kllj5FDujtWwyS+VteGK8VU4t20npP4Brs0kQM+VmQ8P1euxDOyOBKyQ5AzGRK3tuU49xuIUEU1ziyOSohT1UjbsggyAiJVftQYQOWXGC92QRThL/thgFtaFTTUVgNVVP69RTinZmLKBBMin/O7Q5TMtHsRaA3S8czpsFrKsnHjQoooCGBkwXGKkIOQQu5VC8XygX3V28QPSmqqLVd9ImDEgazDAdECeM/RxhP8KDLY6B9+ZWWMRtJ/oqij8K+1WJywzDyisq5dM1XphyrnRTxkOJh+fix66uPQ4cYhqFH0zHeZGvccVNcqNBYQ8mtra80BH1qn+1QyCq6pHuA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6135.namprd11.prod.outlook.com (2603:10b6:208:3c9::9)
 by MN0PR11MB6302.namprd11.prod.outlook.com (2603:10b6:208:3c2::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7339.10; Thu, 22 Feb
 2024 14:02:35 +0000
Received: from MN0PR11MB6135.namprd11.prod.outlook.com
 ([fe80::6c14:55af:8583:6ba7]) by MN0PR11MB6135.namprd11.prod.outlook.com
 ([fe80::6c14:55af:8583:6ba7%7]) with mapi id 15.20.7339.009; Thu, 22 Feb 2024
 14:02:35 +0000
Date: Thu, 22 Feb 2024 08:02:31 -0600
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Vinod Govindapillai <vinod.govindapillai@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <stanislav.lisovskiy@intel.com>,
 <matthew.d.roper@intel.com>, Gustavo Sousa <gustavo.sousa@intel.com>
Subject: Re: [PATCH v1 0/6] LNL display
Message-ID: <rjprf5shfn7ewh6dvdhd2bdhy3o4d5ncffadd5p6hvanuycbbr@k56on5zkxcqs>
References: <20240222125634.275047-1-vinod.govindapillai@intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <20240222125634.275047-1-vinod.govindapillai@intel.com>
X-ClientProxiedBy: BYAPR06CA0065.namprd06.prod.outlook.com
 (2603:10b6:a03:14b::42) To MN0PR11MB6135.namprd11.prod.outlook.com
 (2603:10b6:208:3c9::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6135:EE_|MN0PR11MB6302:EE_
X-MS-Office365-Filtering-Correlation-Id: fde578af-0657-4aae-3d75-08dc33aeeb87
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ciGZWMAZX0L7dwsDgZrN+r7WRUPyAtMn1X0L55PLBl9W07jMBRVxycMJuxv9qe/B3krhpAbFca2unEzDNeIs83GMRyPczzrF1t3b4sfQPC9WlsTy6FOPagEAw5O7aiEwEixIbHWTBYhL98czNfk5LpcCpcZl02S4toDPVBqygPIiDX7XQAqdm5gEoKZcNk2fwCFkQM7YnyboKmcCHx1H2s5U9EqLjx6AFhcyKoxNEU3xGnln/0DXjn68wUdxJlsIAC8BYDPAmqfJ7oHZQZvyX09ADPtgnPagpQLsoV6fxeLqGBnv9JpJDtoNlucw4cTOEqqhRv7UkUakhVtmC0rYI68wpcLdckfMUKUIj8dfMi1N6r7a0b3x4xd/iWohpoOl1DQS5s45/wlaaGHP+wH3tamsZRMDk+k0Qqwt6XwUgsNXSSjBP+JHu8pjuJzccpdRySKvKYr13YUBOhUYjmh/aoFY6w7o3Kq2hm/I+ZC4P+EowHKJPlEbzSwXBizNTOwy2NWWLlH5o79RWL71wvkRkQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6135.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?mLT21yGuIfhuxoR52roF1qt6lgrvdjYtHBQjjhvRbezmQJFpwy+fGssEf+3Q?=
 =?us-ascii?Q?xLjsSq/zj/eRLIY8a+2pGEJp1/VYEGecThTMQ270OR758cx7s4gTIKNriEnf?=
 =?us-ascii?Q?ZOzxWfYJZtwsgV50WslrB9ivkBtz0yfe3Tk4HIgZ/+Q/lWmkVbS8K2XlB1/D?=
 =?us-ascii?Q?ZHAbKqq7jzCmWyae8k3c/Ht2nXbFK40iM2z2ncOeSS+m9XiraQTl/TIeiTl9?=
 =?us-ascii?Q?vJiMd6yucHrbaybxiVilQXa1Ohx4o8ypP+usbextcrW6n1N/jVxNDgru5EdQ?=
 =?us-ascii?Q?rUD3GZoscNR6HIf+ed+t4sK4oe6+ZmMqFjEDrRaKcepgW9IGaeM72DxLV5z/?=
 =?us-ascii?Q?HcQulI0bscxXLmT5a+K9AP+mbJ/NQ90XQojhY6TUA6c+hL/1ZGHdhEZmRnIt?=
 =?us-ascii?Q?symgAFfOrlA9fo3xwmjJA7aL1XyTzV4G2RZ9S1dUrgZuSj3+/n2np8Q/QcQK?=
 =?us-ascii?Q?TcI0P9uVteEzqlQrAj5D3ZQKAUyfrmHLJSRwkAarj7JXsp6CTRHFWleOg4Jt?=
 =?us-ascii?Q?XjjukO5vnpLXVbmWYlwb6MaY/u9WMZkaUOK75aSX8h4x82I/459hAJKtI9BO?=
 =?us-ascii?Q?2S4hNtdWKQZfx0+FK3HRGP3KwHjfz6IgR9WOTQ00oH8K8SW7NN8OTnXpVcag?=
 =?us-ascii?Q?MiGIc8gwbpY/ECmAecFLMMaBMupvSOAGbzDJHbwudlPIdjv+d5fAbH/5EjOO?=
 =?us-ascii?Q?1nvKUvE1vbfpdr63LMVXK+tUrMwqFWOxCYYWbKY7UYziYt/W4XFCPNCnTbb5?=
 =?us-ascii?Q?aJQOdHIB63s6Ebca3+20HvBd9Yso1Rb/oS9UPjuHyuoOKcigxKbz7iwbIwGw?=
 =?us-ascii?Q?Nv5/GguFx7sQckGuOi0Ox+f09+cINffFBsIYm/NXspV1IPfi0aPb1wlppLtc?=
 =?us-ascii?Q?7H/eUxV69IqjSsGYkxCFcx3Feqg0S6ybYuLQzUTzzQBZynnoHYgQpo1rJ3+6?=
 =?us-ascii?Q?yembu3Yxfeyj7dCVYShscmDyZ8ayQTIT8inQdMDSRiUF7bWTpd50ihr4HQwj?=
 =?us-ascii?Q?+0HIJddd9CMDWK6MsmjdLVvLuwVd2zEeM19selb7AjjvHDJaeQ7rCzqMO4XN?=
 =?us-ascii?Q?ncOMEr9WasX6tWoca0fquw2jI/h2ItiV19cKiPVMij5TltUYPczIPGvIdUw4?=
 =?us-ascii?Q?apxxug7x/ROkC/YLkKE+kJMWKz39yiH5EX0ZSvhKyDTdDBJN4z6cq6dJDeTP?=
 =?us-ascii?Q?WBbRzDhjJhONqmGb+anhJQ0W79IebkK0ZmIbz6pN3G28CB+xc2NFw3taui+i?=
 =?us-ascii?Q?knkJFTWRtq7EGQVtaOzFI6+9yiXSxTf2nBVQM785TrcBKhcVFtis7kYpf2mT?=
 =?us-ascii?Q?wzfD6iAEtDyJ27VZ4AwZbdbGIWlJ/DT4fiBwCfh6HY9kdcWBAmo22anYuJw6?=
 =?us-ascii?Q?r3eATb0K6B6Xd0wjRYLKo/yz5FdQVZktpy52fNEbqTD/PWHki9sNNi/jB+bS?=
 =?us-ascii?Q?bMVdCmr4Rk0TP6Rxeb2KBvjZeGhymSHoJpT35PdRqx5quxgMoadBk+QIZqqj?=
 =?us-ascii?Q?GnKnDeoafUQayoqlFGEBHbAFQByxztUYqXQiY46yDcXTz9q71/yrnQF1YOhW?=
 =?us-ascii?Q?zF80TMY3VEvSqi7BAd3+0Y9Wbjf8C9OcBAcMzwApvEJmOrL1ULI5leJOJdl0?=
 =?us-ascii?Q?xg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: fde578af-0657-4aae-3d75-08dc33aeeb87
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6135.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Feb 2024 14:02:35.0273 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: XV0sH5x5S3Qxb7iER48jEqEb0J7+TUYg3io2hjvWG0KKuGeuQhEjVVMVo81zy8UDMSWXTxBCeJc5L53vHgGRcF84qGg4XaNxwws+K8CEVCA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6302
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

+Gustavo as he was looking at upstreaming these patches.

Were the issues with mdclk handling pointed out at latest attempt fixed?
 From the changelog it doesn't seem so.

https://lore.kernel.org/all/20230908224303.GX2706891@mdroper-desk1.amr.corp.intel.com/

and also worth taking a look at previous versions:
https://lore.kernel.org/all/?q=s%3A%22Introduce+MDCLK_CDCLK+ratio+to+DBuf%22

Lucas De Marchi

On Thu, Feb 22, 2024 at 02:56:28PM +0200, Vinod Govindapillai wrote:
>Rest of the cdclk patches as well as the patches to enable the display in LNL
>
>Balasubramani Vivekanandan (2):
>  drm/i915/xe2lpd: Load DMC
>  drm/xe/lnl: Enable the display support
>
>Ravi Kumar Vodapalli (1):
>  drm/i915/lnl: Add programming for CDCLK change
>
>Stanislav Lisovskiy (3):
>  drm/i915/lnl: Introduce MDCLK_CDCLK ratio to DBuf
>  drm/i915/xe2lpd: Write DBuf after CDCLK change in post plane
>  drm/i915/xe2lpd: Update mbus on post plane updates
>
> drivers/gpu/drm/i915/display/intel_cdclk.c    | 74 ++++++++++++++++++-
> drivers/gpu/drm/i915/display/intel_display.c  |  5 +-
> drivers/gpu/drm/i915/display/intel_dmc.c      |  9 ++-
> drivers/gpu/drm/i915/display/skl_watermark.c  | 35 +++++++--
> drivers/gpu/drm/i915/display/skl_watermark.h  |  1 +
> .../gpu/drm/i915/display/skl_watermark_regs.h |  2 +
> drivers/gpu/drm/xe/xe_pci.c                   |  1 +
> 7 files changed, 118 insertions(+), 9 deletions(-)
>
>-- 
>2.34.1
>
