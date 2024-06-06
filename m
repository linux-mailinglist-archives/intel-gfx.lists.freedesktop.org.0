Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CEAF8FF1AF
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jun 2024 18:08:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 50DC010E9ED;
	Thu,  6 Jun 2024 16:08:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="L/Ks1b62";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8CEEF10E9ED
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Jun 2024 16:08:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717690117; x=1749226117;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=SR+8GMrQPjh4MBGPxKpfGEVDD2orK+6oCKjcm7KWogs=;
 b=L/Ks1b62I6qtWSPfIOyOKKxyV3qUHomgZ1OckSCOG9SbfuF9QUvKpeja
 P49anAXp/+lGhwtqGNbiu59GtgQE9fTFayX6tcdyZt4iafZM8vVtvEbX4
 rvMV0hLESa9GaJSzEt8h/zR0mZYyoPjsPl//Bxygd5ar7YrsHw2CJcUTs
 6IwkWLbEL90Q+BuyW6+kqLn46SYOAZwc7SAiVhBg2NPS5o7nyuAWotm4O
 6tztJfVo6VSJ9lQadTZaesc4rgoFR71TKQ2WM/dcQgFZR2/YlGlXh9ZUG
 LK4+FbF1io1t9nDdxOAYeIRWJ3f2Gba+WrO7HoNpJo3egfTRwyD72AKjt A==;
X-CSE-ConnectionGUID: jFbaug07QPiIjxDkluUUkw==
X-CSE-MsgGUID: P4MxyCxPSdi5gDq2RQ+c3w==
X-IronPort-AV: E=McAfee;i="6600,9927,11095"; a="18163535"
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="18163535"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2024 09:08:37 -0700
X-CSE-ConnectionGUID: 8Qg3CyUJSE2R1ADab8Y5ow==
X-CSE-MsgGUID: XhBkVGdmQiW54yxDRXDz9w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="38465795"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Jun 2024 09:08:37 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 6 Jun 2024 09:08:37 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 6 Jun 2024 09:08:36 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 6 Jun 2024 09:08:36 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.49) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 6 Jun 2024 09:08:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XOtrFXndzhq6ikeTnCThwwSVDiBdhatxUkkTQ5MYYAtarl4DQBUevT/MP5ShLs9wZgyYfCkBrN1MW1bVDKSCCM0Y+0ukT9kg/kpipmCXBebNJRq0rgtCYIaQD4Wr+7S9CV8Owsm7EYXFQ/WdKT6O5he5oV9E/B05ILUr+9naAfn/B6Cko3diAi2LaU0llp7nNSITfU7lvC3kxIuEoyqevghFwDqqHAR78wJ4rdz6FJWN0vzg3AAPrif70XLHzXsE55fBy/LAl+p/JdDbDahcGknn433G/MyNnNsxkXZNuhTfoVO+eli31vXeJIRDIBzG1x4vealzSHXlNXJHYicfLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nmWCGNIEJbtUEK8pe+lbKMfXyH5cuyLvYbBNq0M+YX8=;
 b=maq8v0zVlvgdNYWAZHsss3E3qUXwIA2rtr23JKsZYpXLlDNKEmtehgK+SmYee7D2inlnEBIXmpJwDkcSljGbeUIcB6iZUG2YG6rLppQrx+OxtjuLgps6zoife7jQPbFcPN7Vtf4vRhHHqD/uIV9brlO+YlNjAKlnlLz2oqZeJxrFhvVRaLNUwOYjzIK1ccEpu/surTsWiwCbHBfThNyGD9qzqQoAuLi0tP7KbqeJxzms/HiYIlJuSVP+SXuPZ9IzkGLF+Qaa0fPOdAWjZ5+re/Ah97SMFDSyL1sA5sGil9O+XIsUW4u0bbdHBmtcBvPkwgNMhsYfyR6UpooQFdToZA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by MN0PR11MB6160.namprd11.prod.outlook.com (2603:10b6:208:3c8::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7611.30; Thu, 6 Jun
 2024 16:08:33 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7633.033; Thu, 6 Jun 2024
 16:08:33 +0000
Date: Thu, 6 Jun 2024 12:08:31 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 44/65] drm/i915: pass dev_priv explicitly to _DSPBPOS
Message-ID: <ZmHe_y6q8bqI4pFh@intel.com>
References: <cover.1717514638.git.jani.nikula@intel.com>
 <da803b096949c492af3d82f5e5e4d2ae50139e22.1717514638.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <da803b096949c492af3d82f5e5e4d2ae50139e22.1717514638.git.jani.nikula@intel.com>
X-ClientProxiedBy: SJ0PR13CA0083.namprd13.prod.outlook.com
 (2603:10b6:a03:2c4::28) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|MN0PR11MB6160:EE_
X-MS-Office365-Filtering-Correlation-Id: 2e20b753-90f5-4305-2fa2-08dc8642ea27
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|1800799015|376005|366007;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?2LLMoDFCdZMr67/RX4xp6XpDBApAUC9TW+UqBAoNsoUE3FXHxwaoTIkCL+G6?=
 =?us-ascii?Q?6jxmegThlvmCNtrXemJapzJC9ai3276yfcDvPvPslUX36O73rK/dpD+7MVZa?=
 =?us-ascii?Q?+mS+8GcWY2Mgi5TmDSNm+5NzRGZhrOucTzSQZvvhV89slMc57CpvarjiVBcH?=
 =?us-ascii?Q?ZM+XaekGL+sDlO39LhwMNiQotVJJKrIbJX3DdCq8ax6R804s7VHqaRKuNSWs?=
 =?us-ascii?Q?sX4E0r+92UekCo5WBTyeBysC24/kMjax2Py7pzEXpe5nNOLElv2T3H+lbfli?=
 =?us-ascii?Q?rT4TWUiywntmLACJnBWynXjqP4vqp9lJeMYjvmQetarRniNPosXrRRa5aLPE?=
 =?us-ascii?Q?BObcn2ja3Ny87acI+cRggRrMZZ2SG+tq+gzeabpg9i3O5v8y7uNNPfKBI5At?=
 =?us-ascii?Q?P98TAdZbe5a6zJcPMJTVCqGPVTNDDhAcJNReJsEqaH/AjbLjIyOINla8QMsj?=
 =?us-ascii?Q?bq3oEUeJvLRqWCtihNiB6BUmgOoYQPkyviNODY6lBNcAshxx8jFCqSUe+jv2?=
 =?us-ascii?Q?hrroGs5mhFa9q9KquBHtLEZhayMKbLBOz1kfUqvNReJmFJldjkhhhkAASn9I?=
 =?us-ascii?Q?IpM43UyhnwAipGkjRx9ZA7iHAzMJLPDbSwqaLjAp7/BCcVEqmwTWmlLBN0ZV?=
 =?us-ascii?Q?jT6u/Kkz7ys0f0L3h/EYjEGfQczpKjd2iCn13z+qiLrVgc1UDvjXSF3BgrEL?=
 =?us-ascii?Q?znE1QBiZeb7Llr+qIany+Wap5ZBhNwuHJp1IlaTJsd3pjhEcFDiYL/e3T4WK?=
 =?us-ascii?Q?ZKtvp0klPJ6D4BTtRjMmsIvKTgMwuX5pPXdLJgBOKiVpt6/Rl4NWlc2EfMNp?=
 =?us-ascii?Q?hnwHIvXQLPbWUXaZDPjOJFf/SRfAlwlG8r+q+Z+/qpCd1hIV/MqgqOQzvssw?=
 =?us-ascii?Q?wTjRduXvfdkCluR68r4EB9fiRKWyC2JfBD46bbCdjWY891M15kR9fC//6cTS?=
 =?us-ascii?Q?IytBz9xvfGdpi1Y+32OHp0onlhP6DgQW2f58Z+/30zQjyD93gNs9GScwKFvS?=
 =?us-ascii?Q?9h+KfF68jS2iXVFqpgjCgZD7TLvdwp9KJzplVwc8jx09a1rl6YysznJeHizG?=
 =?us-ascii?Q?NOfzUTn7QZElHrc/Q1ZfJ2H5DQjeH3Hr+3wfumBOZxVCXDDfPn0Rbnb4Fnqg?=
 =?us-ascii?Q?aQUeYaYgaeSRW756BsWHefA4KDCdJYP0rJiuOEw+PmVr8lm08NwxgC+fYzmt?=
 =?us-ascii?Q?Tn70hU+dg0EXvaZ2Oa353r77v8zhOG/UbD1yA6Ud/oiru10rWsvm9R6VYaub?=
 =?us-ascii?Q?90++TvQXCa0jE0fKTPkOrfMRUATaLI+dZmsiKQq+dotAdmHq47bg4sg6tQIt?=
 =?us-ascii?Q?mskdicjU81cYLcQCwyUigOYq?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005)(366007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?W072uemOO7jbLWPJ0/Hvx4qpS78KbElIPx0W7iH32Hxb45OlA54Iv3mC7dCn?=
 =?us-ascii?Q?JWC2rLeJ/prtc67JxjGFg9mg/P540p0l8lqgtsmXhVLKQFfXIdqZm68IL+d4?=
 =?us-ascii?Q?U3jmOcDXoagcSRTwj/ICpBYJgjHmZR2oM9fPE4wWAlnGP/9vlgdAAOamYjCn?=
 =?us-ascii?Q?Qd6bbA0eu3lO6UHnqUUVPUvDVKtrmJitQ1WT/YeHPF/ZOGSSArX2ywaDGJ76?=
 =?us-ascii?Q?7KGyiWBZ9ws0RHR1WBBzNtT5KrfBsCQ0WJO0wsqX/XRAtbIJvlLXNPG+Bo0O?=
 =?us-ascii?Q?lsfnelEGBVjsSAGrlhXiD5fKr0Ln6yiYnsORVOF4A8/SRHaOzTY5XAUNcrEC?=
 =?us-ascii?Q?zldxRIwSNPEVrnykSGtuwOxRTbWnb9eAFXGSFMazJ2fxdW36u3V+QSZw+Uy4?=
 =?us-ascii?Q?l8KjXQ5/iUFV8Oq8jrmHcgrGuMPDbdVGOqdVAOabroqHJOiEFk0Inn9co5Gw?=
 =?us-ascii?Q?3CmR+8ZYcnc8UDwt/sx+K1QjpdLUp85+nAp6lUvwS2QeDPxdnAIojGeXzybp?=
 =?us-ascii?Q?RbyWgAHvwtCCXh9ZkeHoDynAYMoH2/Neh++bGuy+TT524WIBekGREKrpxXFI?=
 =?us-ascii?Q?rLorU1Ch5gycuhNhpTCwwGz3MLDA7oCJ4hi7mTaF+pWnFG2thvV0iWJPYkf9?=
 =?us-ascii?Q?si23kn3wlNREs6Ab4brP3pP3jZ+jKG5s2LGosvLzh0WAYwHtA1vmJubx+oxo?=
 =?us-ascii?Q?P/c1GFkmcd6mPHlijq1mEDyNaSoJjaO8lMQkSaTwXzbjMvm3Wml1GjW5Yws8?=
 =?us-ascii?Q?nJ4do3pY+xG1d1+5m+K5BQ4571pJsp9uddrHdDqQzYwI+GkhgFIUkswE6hLd?=
 =?us-ascii?Q?MrohgvXwt4tKHpgA0nI99crK5Ro+xmPmUXjqufa7f5c992xO6NBW7i1IRCEb?=
 =?us-ascii?Q?EFGg8l+Vo6RqolIV2WmHqxXrBQwYwZQhG8v/BwjQmID5rwjtTl76qGaJuZvY?=
 =?us-ascii?Q?Ago0EzzOcGHMJ8EH79CRxrxiZYyLTPVji/QxTgpOWCMQYI1JWSOUrJn0H6gh?=
 =?us-ascii?Q?dIwe4LkH0wi4QBfuYl8qulAJGPNEl8WiqtZHymg0rPmPOocu53arwVQASMqg?=
 =?us-ascii?Q?VZwfFmfHUPxDNwNL0kp+3eXcu4J4FUzr2NIoItqmG3VISNGXhI0LlFjVvTyi?=
 =?us-ascii?Q?qJRoRUNFr2CnosxSf7C9WW7INQf8VQqPZ4HLeDocZKGXkL10FLWwoGMlXOBB?=
 =?us-ascii?Q?jWNdZxIuDRdf6QloQxwD9RxKX0t9d7v69b46vZlyNBVJb7IcDoL7ViDOpHhB?=
 =?us-ascii?Q?2NQOei0lAzfu2xWNCatZXISgj6srDe5w+NLBUSZxk7h5jfie9afhZJjIg1xF?=
 =?us-ascii?Q?Le0caKq+7JkxKH8XfWY4PNLdu5BE5H/KzXsw4FMe8ROPEdpbakV+KbD5BYNE?=
 =?us-ascii?Q?S9ZaD8mXZ/j5ux11BcWPVtBoecin35lqYcUdxTmCjCKvznzZ9jQ/hifxkc2h?=
 =?us-ascii?Q?TzglE0yvmM3bpJ88ElhUdGWvumwHxcx4eEHr6ZCsugGWiroYmVWW7HkH3mpR?=
 =?us-ascii?Q?2pXr3hOzF65O1G2dC8K8GdbDWDJE0n2yUe/mztpnPUvKnazgGQ7OkffzJiaf?=
 =?us-ascii?Q?ntUCWHhF3Cv8xadqwRFJE0zXHYcXkbiqOxBMjG/3?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2e20b753-90f5-4305-2fa2-08dc8642ea27
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Jun 2024 16:08:33.5904 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: bcGOU0tniTjtHRbpYzziV9D02AYPJJnOrs1H7wRIEklBooJymBKbyeCgXkWbt41rqFbh1UBXnfvuGyGKlrE9qw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6160
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

On Tue, Jun 04, 2024 at 06:26:02PM +0300, Jani Nikula wrote:
> Avoid the implicit dev_priv local variable use, and pass dev_priv
> explicitly to the _DSPBPOS register macro.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_reg.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 7fd2d5e07b48..38c8b98d95c3 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -2311,7 +2311,7 @@
>  #define   DISP_SPRITE_ABOVE_OVERLAY	REG_BIT(0)
>  #define _DSPBADDR(dev_priv)		(DISPLAY_MMIO_BASE(dev_priv) + 0x71184)
>  #define _DSPBSTRIDE(dev_priv)		(DISPLAY_MMIO_BASE(dev_priv) + 0x71188)
> -#define _DSPBPOS		(DISPLAY_MMIO_BASE(dev_priv) + 0x7118C)
> +#define _DSPBPOS(dev_priv)		(DISPLAY_MMIO_BASE(dev_priv) + 0x7118C)

ditto

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>


>  #define _DSPBSIZE		(DISPLAY_MMIO_BASE(dev_priv) + 0x71190)
>  #define _DSPBSURF		(DISPLAY_MMIO_BASE(dev_priv) + 0x7119C)
>  #define _DSPBTILEOFF		(DISPLAY_MMIO_BASE(dev_priv) + 0x711A4)
> -- 
> 2.39.2
> 
