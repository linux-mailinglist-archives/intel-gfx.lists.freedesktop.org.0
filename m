Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 00A6C6EE912
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Apr 2023 22:30:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5548710E0C5;
	Tue, 25 Apr 2023 20:30:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CA6BF10E0C5
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Apr 2023 20:30:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682454613; x=1713990613;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=OyIHZDPDJ5ghkwHknJDjCEiNjOXnbMbsRK9dE9ReNQg=;
 b=f/4JTurBs/WL+oVUjTcTU5ZB8LE8KXQDDuEV8v8xBazZ/ZK/P4WHbto5
 H0o/r9/K4vtVZ7wO/YmTM6neApz/jhShqiqdzEEmNR0Z16TrG2NiA/1WX
 rF9K4ioX3umzjRzpyinhQ/k8HBHwAQyKLVwAjCn7jnj8Cc0DtvNhMnbg6
 uUyRl+JY1W9kXawRP1LxPsbBHGG4Rebk84zgXbXvZ+MQ8tg9CM55MPekc
 PvnLpCmvVXVgO7DeZNX2gj1mbKhoP1+nP/OHMtthuQHNBGEW7Uzdzrx/m
 9q2JYClw0jeZIInt9THiXiQo802duHWpjOZlG9wQV5D77Hz7XuKDfY63i A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10691"; a="433163245"
X-IronPort-AV: E=Sophos;i="5.99,226,1677571200"; d="scan'208";a="433163245"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Apr 2023 13:30:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10691"; a="763015843"
X-IronPort-AV: E=Sophos;i="5.99,226,1677571200"; d="scan'208";a="763015843"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga004.fm.intel.com with ESMTP; 25 Apr 2023 13:30:13 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 25 Apr 2023 13:30:12 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 25 Apr 2023 13:30:12 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Tue, 25 Apr 2023 13:30:12 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Tue, 25 Apr 2023 13:30:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GC/k+HvLfbsIY9Lwk8+ImjkLwpTXIRDZHXCvr7KtcKlZIvpiZ3eaVvxBgn1P+RlXWPDDusgBB2qWftNJ3WstyNSST9KqK7ChpixWCaDHIRTx113OZ7it6bxIJX913t99tAKO70rhHuBjIDXhf0fCadi0Lli/cnZwxB5Aw48YVjQ884wHicxv0jda0iZx/cLqoyVjuMM2RlRNqZgcUUjM35/Ab/ASo/PRcgEHe58nmGh+PN3akM6OMtdIqdmt3+zwf6NDItGebT+6XnLECDvlESz9lec04VgME/wVNMh17uekNSa++yFnwq8+UCicQktfAYB7ghrcfZohNfaUT8cm/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nLyleHFOI6VsC01gNO1lYLKt2JURLjZSl2Vr3kSIO54=;
 b=j9e1BS/mSjYLufoIOKxnnWgEMEcA9YoLKwTF8uLuli8fqkbOy9w+5wCMDrzcCKUR6n/6I02Eex/D6nhDFXKBDhfUHqtf6bPum/UceY7j64pzwjjx6H9wuR4OJ9TSPL8KDZs5wouNQ6CURP0ByxEttmY0BbYECQdsIwKw1FoNmkl6iWkVxCqP3RUw0rV8vlZEI2ZGiJVFvTr+qUlPosKSrrU/aa3r+FW7ZAEfz/BVJzX+/0QwGuFrxWIDhKhFN1xTXf0oeF1/CZq3cngfdY0JkqdMkC9p1yxgUSAUmOP5rK2WaqyDLvmcuLdQ5SgUT9AksL3A6aoncZqrmfdRWZYq+Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5971.namprd11.prod.outlook.com (2603:10b6:8:5e::7) by
 SJ2PR11MB7672.namprd11.prod.outlook.com (2603:10b6:a03:4cd::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6319.32; Tue, 25 Apr
 2023 20:30:10 +0000
Received: from DM4PR11MB5971.namprd11.prod.outlook.com
 ([fe80::df8c:4a33:f53a:9a2e]) by DM4PR11MB5971.namprd11.prod.outlook.com
 ([fe80::df8c:4a33:f53a:9a2e%8]) with mapi id 15.20.6319.033; Tue, 25 Apr 2023
 20:30:10 +0000
Date: Tue, 25 Apr 2023 13:29:04 -0700
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: Mika Kahola <mika.kahola@intel.com>
Message-ID: <ZEg4ECN5V93xdAGe@invictus>
References: <20230420124050.3617608-1-mika.kahola@intel.com>
 <20230420124050.3617608-10-mika.kahola@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230420124050.3617608-10-mika.kahola@intel.com>
X-ClientProxiedBy: SJ0PR05CA0008.namprd05.prod.outlook.com
 (2603:10b6:a03:33b::13) To DM4PR11MB5971.namprd11.prod.outlook.com
 (2603:10b6:8:5e::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5971:EE_|SJ2PR11MB7672:EE_
X-MS-Office365-Filtering-Correlation-Id: 7c80396d-5d46-4348-d3df-08db45cbdd77
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: MMjX/qHNRB9b+jX+gj0iPyOIC8vjfWJY9jO6QiNqW6calZ6rep0McpuW1zGt0tlSif7UtVMw6EZi3TZGLeJgaF6S3P4M9ea5Yy7fikP1NgQNBiOaqOrK7y7ajaybMoyoiNbeEleEttyMCxRdPYhNTEKBf4cv3NRqn38mSgl6XUziigCMBfxhCs1TMBkW9wje/NLklQFsG2YXJLlALjfZI2EmHxY8uNCCFf8MoPYCv9mz8pmKzxcmqltfIym7WleYmerV9KLDfONnHZVkpSm0SEd9QALlHMtKhMbFrobrqYYU2fwgQfRCbwNBHvKswgachSztmUeDMWT2hOBtwNgCRZxneqnXzoxLQp58lYe0EAfttDXTDB6JuJjzXl7zNBqHMWGILAPNptR6VcujjbZt6Y6IR06yrJ8B3jROTWT5vZVxSaOdDX4BOqdkUW01uJ5F9YdJf84HuNB6HUTx7lricufXpuqRPnDiEkcMFhD+Zi7SfOzOnY8ceaH3WXh8RNjAWcBElJ89Q9+jVoumWsdt65FcV+UHIe5B6l7uIVtNpafzTxRvQnZELNC7ENvWZ4V5
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5971.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(7916004)(396003)(39860400002)(136003)(366004)(376002)(346002)(451199021)(8676002)(8936002)(6862004)(478600001)(66476007)(6636002)(4326008)(66946007)(66556008)(82960400001)(44832011)(316002)(41300700001)(38100700002)(2906002)(5660300002)(86362001)(33716001)(186003)(26005)(6506007)(9686003)(6512007)(6486002)(6666004)(83380400001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?fN3zRZ0x3ajTyyD4sm2DKOZ9/VtmFPpIZuEEatdmCoY5Ztyw/rCAqlKBkeJC?=
 =?us-ascii?Q?cd0GpJkNvGGmfJJAo7aa3+TXMi6HAuCNLoA9GO/SCD56/OL7AKYhdO41xANO?=
 =?us-ascii?Q?cWjA7jszEpNTqfTX8IGbJTUVIazRJeV3NX5ir7WbwMGhI/ONsMyxbw+117MW?=
 =?us-ascii?Q?HPZd3ch4MH/T1ObSG+tN61Oy239hbfsRJmuicNLcm05kJ5cpxe5GU9YeRY8Q?=
 =?us-ascii?Q?xL/GjlMOA3yWTvSYp8tmYIp1pxNGm9n2hTcY9MZhzx8NMi43fyrVGK/WnEmT?=
 =?us-ascii?Q?g+vRBNPQytgAv4I+Xt7VBZORUC6KU7Imu+5XnW67fj/DQEIsLUiYDbSPakrz?=
 =?us-ascii?Q?bGKSSwgQ5AAGnrwZ3tDV1j1HYTzT6H8BzYKxYmAR9vaM79aFdgVMB/i1S2fu?=
 =?us-ascii?Q?X9eNohH8qzxX7V8NcKCUaDk03pOTxdfYB3RNOpbvDyYAZYDJf/3OyN8fNkbF?=
 =?us-ascii?Q?yD2c9OXPizwg9V+2dgZdMbmyJwVVmn3GAU/Kl6PLdqQV1sCTZDWNAPyPxzO2?=
 =?us-ascii?Q?YefgEqsX7meZ60FLqLQWSnYU4E8mLuCzMbz8TbTjF1hxvS9uy+2p5fi8rcL6?=
 =?us-ascii?Q?EJMWmpk5Zo+btQ/ngb+c+oS4mOM3KrhfGmk3zhrjKyo1lztKySGJaMQinwOx?=
 =?us-ascii?Q?Bxjoxk8f0HWjX+/hBYvbtgnpnzBwDUQG6joa6YXfAF67tygyiAV8Nurpig9T?=
 =?us-ascii?Q?8z6IsCnbsEZqp0awyDhEIXNnA11Geef1SCy/ypXY4WZ90RJqLH6rynUisXBK?=
 =?us-ascii?Q?t4d75vvaoBcc586niAfb0TKpvLmH1AdKaGaBbZt/CndgALlXFGoPsmGgOQ2Y?=
 =?us-ascii?Q?nm3Gkw2LX/e4PiuydkMFhAYe3Tcur8MWOqnD0OpLuema3aoG8E/txbY38jEO?=
 =?us-ascii?Q?klOf8IXZx95raFlHH+ve14OxNR6VQ0mePWNyX9H9El3s06hSGIOdLTG9SC/K?=
 =?us-ascii?Q?7pod3YoCknmILDeF5nRkGtHwT4QudJgULgzPUH0T+0svH1cvOpR4HjJnPCdH?=
 =?us-ascii?Q?otN31hkRk9fQ9rWObzd7J2NxNbRCHAbv77i9TuxtwMgw/pCepQGXvTiZEhXL?=
 =?us-ascii?Q?yXAh7zOfmNFC/cBk9h02ClOcxoM6eVTWVwc6xf4UJyGAxZA6kMkwnOKTV/0S?=
 =?us-ascii?Q?zQZwSetnJ3zP1/oYaQSYeKocJf2FphIHU3ivtkrUhMoTk+we5jCwjsJ6MXEB?=
 =?us-ascii?Q?Bahf8P7khzAxx35NlGfqoKGJjDBE1kdjEWsCsmER6v/fAVezZxEUYNm36NCi?=
 =?us-ascii?Q?QVWJKBkLmwU+AUi3F1RyeoeMHmnJ4F5bnk+rXoBdwFKXpE24ZRGHZqRNaZnN?=
 =?us-ascii?Q?BE5IVkR4Zljm0J6BfqXbf380/hvZ7+B+sZUM7CwfHF/FX4QkWuSo+ONncqPk?=
 =?us-ascii?Q?b9nrNDqiBlLl0br69/VwZoIr+1+TLU/kk0ALkGOPleSQlJlEXj+RG1b431rC?=
 =?us-ascii?Q?esrDoHQ/Mozaad/+r9QHH7nkx/qQbmCNwRLCi4SHgrGKO3/G2VbfwTQ/UJcU?=
 =?us-ascii?Q?KA99W3AnDKkprehY0z7743Bk7mx1PVkFWWVOpcNipJk5o/HMI77NZQIBYCDg?=
 =?us-ascii?Q?KyQ59K8lwTg5IVsQzns6CaSK9SU/KevanVKfJqkfVELRqZEHhGioDeW50IZo?=
 =?us-ascii?Q?ZlxzRViShFLHN3E+lbosI60=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7c80396d-5d46-4348-d3df-08db45cbdd77
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5971.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Apr 2023 20:30:10.0912 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: q3/MoH3XDlPSw5xcbbUepDg+lFL6qvbXill8VXqP32yw1A6k/q4lm9FJzzXkkSSwBoOCbGlNm22e4K7/wsl9CSPIXKhrVxiiG1iM7CRrYy8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB7672
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 09/13] drm/i915/mtl: Define mask for DDI AUX
 interrupts
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

On Thu, Apr 20, 2023 at 03:40:46PM +0300, Mika Kahola wrote:
> From: Gustavo Sousa <gustavo.sousa@intel.com>
> 
> Xe_LPD+ defines interrupt bits for only DDI ports in the DE Port
> Interrupt registers. The bits for Type-C ports are defined in the PICA
> interrupt registers.
> 
> BSpec: 50064
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
Missing S-o-b, with that,
Reviewed-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_irq.c | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
> index 2b94b8ca8ec9..e5f12aa141f6 100644
> --- a/drivers/gpu/drm/i915/i915_irq.c
> +++ b/drivers/gpu/drm/i915/i915_irq.c
> @@ -1938,7 +1938,10 @@ static u32 gen8_de_port_aux_mask(struct drm_i915_private *dev_priv)
>  {
>  	u32 mask;
>  
> -	if (DISPLAY_VER(dev_priv) >= 13)
> +	if (DISPLAY_VER(dev_priv) >= 14)
> +		return TGL_DE_PORT_AUX_DDIA |
> +			TGL_DE_PORT_AUX_DDIB;
> +	else if (DISPLAY_VER(dev_priv) >= 13)
>  		return TGL_DE_PORT_AUX_DDIA |
>  			TGL_DE_PORT_AUX_DDIB |
>  			TGL_DE_PORT_AUX_DDIC |
> -- 
> 2.34.1
> 
