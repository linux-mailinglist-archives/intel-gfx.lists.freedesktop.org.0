Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 88E318B8454
	for <lists+intel-gfx@lfdr.de>; Wed,  1 May 2024 04:24:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0634E112FFB;
	Wed,  1 May 2024 02:24:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FPTHqejr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2DF95112FFB
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 May 2024 02:24:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714530259; x=1746066259;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=9nY2TXI4PpRwVZtDYPLX548m9ldQSCb4jUJnEtRj7ZY=;
 b=FPTHqejrKfEETfC+kDgZ91C1tuJUHRTzL4lXc+7kmYYBCpXo70hWgnvE
 W3g2yxad367XG+wCX2RrU44nd06J/PRuJI+oEf740ZwGgXhoYeuxHM6gZ
 WtnDOeyJpIxtbfPKDVi3FjTPqBgRRnKqwXvVsi8hoi2uoaghEEo+/OUxU
 qm6aKLGVZAIPuzrx4jktP7fh97X2wv6Ckes4ZUJ5v+EU2g+Q3J6ZEmvRS
 bsIcLj4jY7rPmgvIli2qu/h+/Y3pgCbR04LSRaSqvrgj7kXJwmrBFbFlQ
 rQRZ9ezDoKqLLAo+R9UD97vw1IQFWZnx01JTxQiyDMW92GSuSyiTp3BhJ Q==;
X-CSE-ConnectionGUID: mNGSoWdWSBmRYs1ZBvDaxg==
X-CSE-MsgGUID: azQHnN+iQvS9+t0LxDWgSw==
X-IronPort-AV: E=McAfee;i="6600,9927,11060"; a="10139782"
X-IronPort-AV: E=Sophos;i="6.07,244,1708416000"; d="scan'208";a="10139782"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2024 19:24:19 -0700
X-CSE-ConnectionGUID: 7Kv+ATR9RfKpo99pIA3s8w==
X-CSE-MsgGUID: F8thrsgwRPu02b81S1XwAg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,244,1708416000"; d="scan'208";a="31114246"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 30 Apr 2024 19:24:19 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 30 Apr 2024 19:24:18 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 30 Apr 2024 19:24:18 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 30 Apr 2024 19:24:18 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.41) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 30 Apr 2024 19:24:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=laWVK/V5SSVCvlraRogygCJnNYS4FZeBAjRCDi6MFNkAg3f3wIgHLHvMhzYjI8V0i7VObTxIf6NBSu6qCGFVjoviDMn4EroUP0PKIsikzk8UVF7WNgxwlB2+1VRahzQhIcMUT9OR4GdSy7S2C3UlxesFqZ6ORwX4HykfvEF04Puc1K3RBt1bBx1PunJTPCgBlchyKeibjPL7Z6Kes2BvQAJrn0ZNVsWDTFZ71x72PspaD3Cn4+faMgR9MS0ABanQ7Qg9m25rWs1qeJ/J3cqK4U+pNaP/rMkX+WYdjKeoHsl7OpUXYOKxNH9lFSYhB0//xaNI7Cas5y4+b39SjI9Z9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CMwRKpcK5RLJ7ZGsLCWN9v1AHNQv7OAj45gvjGtw2Bg=;
 b=Ith1dAESmwz1QODpV9kh0w9UOVzc9vFE/JIt8RD0MnLxDFM18mUY1ALFIUIYpogHV47gPdUpgilhTX1IulGPkqEhCJwPbcEuASw19A4l0lTlAoqoTyJaO/499RoG8szLjX1v0OSP2mUu9nOHWVy7jDWmhlqKEPIkVs4DnBz65HJa5BCvKXoE0aSAKGnHuwoMmIHD08bY7UO6Vpmd3jkzXJ5lq2LbCyZ57XqvLFyR3PieEA21QIqm6LLjcmJBDUBJP7nZVSWwSWMMZO0afnycWICp1531l8TFc+Y/k2qJkoKEpdHzDTPEEB81UrZPPKeeR5ga6paOeAZEd/pOKNSzyw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by CY8PR11MB7731.namprd11.prod.outlook.com (2603:10b6:930:75::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7519.34; Wed, 1 May
 2024 02:24:15 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413%5]) with mapi id 15.20.7519.031; Wed, 1 May 2024
 02:24:15 +0000
Date: Tue, 30 Apr 2024 22:24:10 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <jouni.hogander@intel.com>
Subject: Re: [PATCH 15/19] drm/i915: pass dev_priv explicitly to
 PIPE_SRCSZ_ERLY_TPT
Message-ID: <ZjGnygb8yBPJeuQH@intel.com>
References: <cover.1714471597.git.jani.nikula@intel.com>
 <b37217f55702fc10190c2c5aded7d845a36766f6.1714471597.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <b37217f55702fc10190c2c5aded7d845a36766f6.1714471597.git.jani.nikula@intel.com>
X-ClientProxiedBy: MW4PR04CA0188.namprd04.prod.outlook.com
 (2603:10b6:303:86::13) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|CY8PR11MB7731:EE_
X-MS-Office365-Filtering-Correlation-Id: cf77ee1d-0531-4fdd-dc48-08dc6985cc1e
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|366007|1800799015|376005;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?Vft83wo96drJpve/Yk4OL3bAc5dq7oYMxxaaLaIk9v/z6F2dTA0e6X1X0Rh3?=
 =?us-ascii?Q?lJN7vpIOmyJA5kpYP7exqQ9G0SweL0VITXMaEJIsOfWuDAJXYRkHrkpZrZw/?=
 =?us-ascii?Q?JBvKXT7wIhKL1W8YivTD/AKproV8ZTF5lcZow2OkHenzGZoj2cFsY9R0jPhS?=
 =?us-ascii?Q?FV9CITYgSTsuNM4i1bHOQQDUbzteqrGrcDN38a0Vf2sjDJckSN2SUz9mopI4?=
 =?us-ascii?Q?uY95r/r+ZcyOAhgK5IEK4AQbDICLv5Yo06ohGLRGNbO/VrmhHY2gTqsLYZOY?=
 =?us-ascii?Q?1VPKNhEzwvNMpWe8tYlLOHO2SF+rh4lXmF9tZk409AFjSXGk35jJNlBpn3xE?=
 =?us-ascii?Q?kTBFPDQNiCU6pqGCiIQ7f7r2FhI9gmJVEfvKVLaFj4a2hDk//rlwKNRbcgoN?=
 =?us-ascii?Q?Jmygg9u5jRPLbsCrUZG30384DspAV8/nA2l6gKL5E2e5ZwfiJlWFcgzVY8PF?=
 =?us-ascii?Q?qqswht3lNuKq+MGGxqKojp2EPlzL/qE3x+PgmMhbs51EgnVBkL8hzo3DkU1E?=
 =?us-ascii?Q?IcLl25EKSfex12vn3eUwKglpdXcTxMa3SyDwXzhHUh/t8Dzx49Ro1SJA01mk?=
 =?us-ascii?Q?ThRU8EiwqYWzoObQc5aF0yi9x2Qln5PeO6HsOGT+4rGdKdKMvS+f0RfMYyLe?=
 =?us-ascii?Q?SAHrUo1rd7hkbHRmQnnDY8068MouIpFAl1cjKIGaTjq5hZuo0cFa+h/Fmg7y?=
 =?us-ascii?Q?lo30cxjRB1QbNklKmTvWV1R1noYlhTNWbuN9Typx2u66+PXuYBuXCDDMbDPf?=
 =?us-ascii?Q?ZHdNbsFabrKr+tN+Es6L49Lj5f8StO39bo88PQ31ZqpV6BYEzmMmXKJkAOiH?=
 =?us-ascii?Q?8leCMkaUpPn/XQD05jocsYM91VljtlNdjKvSTpDS2almQWUdW0afWy7iMiiz?=
 =?us-ascii?Q?lB3tPsn5kiIi9VRX2A45aOFmkJYVrFqbDKQ07AJEZXCRnuD9QO4PWHaUtf+T?=
 =?us-ascii?Q?MV+1J3aLurCZJCfyKXWsuS08DQR5vDaNgZ2mojeiGz5HX9ixHWe37UGszesu?=
 =?us-ascii?Q?AKVI3t4AlGIbQg/SCt4/LNB887MPJEpApItFTRYcfg0HUaowo8rnDWJADrdM?=
 =?us-ascii?Q?o8mLrZQTKbE9qIqOJeB5Uva3b4yThGrEOjmisOIl/SwbCTUIJ9H4VV2Vsi61?=
 =?us-ascii?Q?7JORrK+3OgjakC4Ws5qm4Cny8tjcKVzMrbsA21r8uP02hHz5XQoY4fJhhYr8?=
 =?us-ascii?Q?G3LTF2Uu3sO9ygoIf+UMDwb1EK5ynA6ELKzmWrwXOj17epgNjX5GmC61lQRK?=
 =?us-ascii?Q?bp9btvdBrnGE65m2H9spqAmxTrs7F5rVENzx2gBNIA=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(1800799015)(376005); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Bi9iY8DVVhlJD7LBelSnBHMczZ4aGGfVVR4pOfxqohsj0VCYJ1n2bBLVzKs9?=
 =?us-ascii?Q?8Wml4rntCxSi/g4yoPwnnRB9CMnyqDbGMWAkH04JJZMs6o+g9CJ63CFNmuMN?=
 =?us-ascii?Q?n32YQwSWfpV9hi48hAEoxmTNKDHTlcpROiH5CsWydFRPjTErVgwXWl2GZB2E?=
 =?us-ascii?Q?30okopwSHRugaDCPQl7qQU15wHbdQ85snlt/eYFLBMN0Yp8/smvPiDqLb93J?=
 =?us-ascii?Q?KnVKjbDSxICKdI3MXNeq9198AFg+e4l0ZnOdCWgAbOVPZvVUqyiSegFLqnaJ?=
 =?us-ascii?Q?vJnXuAlK7MYdHS7Ts5G5xeCR5OHE1tJg1lTMiRt8ojKuu61fB+VUxq9hxL4Z?=
 =?us-ascii?Q?8sXF/U5eJlY/KvtXGEtYUSaKvMbgq1zSaPG7CVzWTkDM/yCzZOSL7f93Di7O?=
 =?us-ascii?Q?LwdeMZhPUMJ0S/Bmk02p9+KJv29NB/0Jg61mNykOdTbRD8dA3cYLDjeFdXup?=
 =?us-ascii?Q?zBH9RzmhDW3CcuUr5pleZkaStBLan+XXvAMiOc4cQAnq2ti8LzUTdbONz4i0?=
 =?us-ascii?Q?geiz6NWgfL4tZjjHWlFBIYK1K9rQfYzMdXxzfsdbor03wggtRVx6MGzgcyaE?=
 =?us-ascii?Q?Ev62tL8F/sGL8D5uBC1hSnLiwahxWW6w0s1iMzWnrpHIyUWHp40HkGpzktdv?=
 =?us-ascii?Q?s5rSSR6s/kAoBp2ZeqjOz1wjm/zqR731Tj0/Zi2eoqGWX9UzCDZX8A/V9Sau?=
 =?us-ascii?Q?iZWKtQNlvC2APyDNkFtxozWdIejbs8tfaJQ5XMNuuPxwIsKPO8QtiAygEgXL?=
 =?us-ascii?Q?rpGzBiYg4HHq9PAoXOjus4izSU9+zJEk8l29ubvn12gFO9hwWGeTUVMeZhcj?=
 =?us-ascii?Q?zs3NJxhftrd//LirTgrVwSTfpm0ZjryzuUh+zRwn6cjE2P/esPXgp2hazrLh?=
 =?us-ascii?Q?0ERFCQ33AeEXc9eXjS7OwGfUOr8bwN/S+vftTdA1ymigL24ud/5Bv/UEBOPK?=
 =?us-ascii?Q?YdugMgOHjPru6nQQ2bXBEUbLsQUVJ/rQ3EipzviLich7zym85cjzKbsp208N?=
 =?us-ascii?Q?FwgiXnpHDvszT+9fu+rwFoUbb3H7MKtrxEOEIiFz3enaYZjCnrT+FDsIXCWq?=
 =?us-ascii?Q?mV+W14+LG4NhLs7upez/jZuC/Ukh88+4smEZmjKrdTDU3eHDB2PgDrHFuGx4?=
 =?us-ascii?Q?xqrwdWUn10PWSBFxe+v7lbgFWmH4VAo8toOdFBy8jkbCvkMKjZ9B8GPfZE5q?=
 =?us-ascii?Q?3lq1O5Qo5crutNJkFE82fxsTkNOCHlNVmmjIB7QrjiipGfLGKK0nSCDMQXIJ?=
 =?us-ascii?Q?WK3qe3O4Aq7y9ZjOMAMHIi1q/O21ZQ6bp/HE/VpJk/WRiUBxMLga6Q3PAZRM?=
 =?us-ascii?Q?Kx5MFdLqTwLk7lsliBcwO+cydDUhfkKl8Ga7sdxQThZg0YpF1WZysoJW9CR8?=
 =?us-ascii?Q?JHWbG45Rrr8etERaUWD6LI9qAENJyOhICLe/Ic45Q5s5kAr23ukmWKkJCE0C?=
 =?us-ascii?Q?P+rP0BW5Yx1dtcLd1z00NOWg7n/eFbeR1Ftf9wgHtYgi63TWJHjGHuyxrDO4?=
 =?us-ascii?Q?yrmcN8dTGXBADS2N4hW/4yhR6bOauC8VL31XaSbbkYxgJnvPfp7wh70YDhcj?=
 =?us-ascii?Q?QWScpqmVn3kZLgX4HbvZygoi7hFw6K/f+WEZErvQ?=
X-MS-Exchange-CrossTenant-Network-Message-Id: cf77ee1d-0531-4fdd-dc48-08dc6985cc1e
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 May 2024 02:24:15.7592 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Ppb1iagJrl5pwhpuYFfmeLnM+u+5LEY7Ed5sXaLoGdPDkHLyAZdyGsKELKemQya5qa2TfmJIbqeQAG1b37TgxQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7731
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

On Tue, Apr 30, 2024 at 01:10:09PM +0300, Jani Nikula wrote:
> Avoid the implicit dev_priv local variable use, and pass dev_priv
> explicitly to the PIPE_SRCSZ_ERLY_TPT register macro.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_cursor.c   | 2 +-
>  drivers/gpu/drm/i915/display/intel_psr.c      | 2 +-
>  drivers/gpu/drm/i915/display/intel_psr_regs.h | 2 +-
>  3 files changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_cursor.c b/drivers/gpu/drm/i915/display/intel_cursor.c
> index 23a122ee20c9..2118b87ccb10 100644
> --- a/drivers/gpu/drm/i915/display/intel_cursor.c
> +++ b/drivers/gpu/drm/i915/display/intel_cursor.c
> @@ -523,7 +523,7 @@ static void wa_16021440873(struct intel_plane *plane,
>  
>  	intel_de_write_fw(dev_priv, PLANE_SEL_FETCH_CTL(pipe, plane->id), ctl);
>  
> -	intel_de_write(dev_priv, PIPE_SRCSZ_ERLY_TPT(pipe),
> +	intel_de_write(dev_priv, PIPE_SRCSZ_ERLY_TPT(dev_priv, pipe),
>  		       PIPESRC_HEIGHT(et_y_position));
>  }
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> index ded7795e4c3a..37b85b721ddf 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -2303,7 +2303,7 @@ void intel_psr2_program_trans_man_trk_ctl(const struct intel_crtc_state *crtc_st
>  	if (!crtc_state->enable_psr2_su_region_et)
>  		return;
>  
> -	intel_de_write(dev_priv, PIPE_SRCSZ_ERLY_TPT(crtc->pipe),
> +	intel_de_write(dev_priv, PIPE_SRCSZ_ERLY_TPT(dev_priv, crtc->pipe),
>  		       crtc_state->pipe_srcsz_early_tpt);
>  }
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_psr_regs.h b/drivers/gpu/drm/i915/display/intel_psr_regs.h
> index 55e07e87dfbd..4ccbb651016f 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_psr_regs.h
> @@ -249,7 +249,7 @@
>  /* PSR2 Early transport */
>  #define _PIPE_SRCSZ_ERLY_TPT_A	0x70074
>  
> -#define PIPE_SRCSZ_ERLY_TPT(trans)	_MMIO_TRANS2(dev_priv, trans, _PIPE_SRCSZ_ERLY_TPT_A)
> +#define PIPE_SRCSZ_ERLY_TPT(dev_priv, trans)	_MMIO_TRANS2(dev_priv, trans, _PIPE_SRCSZ_ERLY_TPT_A)
>  
>  #define _SEL_FETCH_PLANE_BASE_1_A		0x70890
>  #define _SEL_FETCH_PLANE_BASE_2_A		0x708B0
> -- 
> 2.39.2
> 
