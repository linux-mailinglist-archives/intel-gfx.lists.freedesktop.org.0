Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E84548FF1E6
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jun 2024 18:13:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 63A7010E9FF;
	Thu,  6 Jun 2024 16:13:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OobXsV0h";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 28DCB10EA03
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Jun 2024 16:13:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717690428; x=1749226428;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=TVgGVNAoiLK7A71ZT3pWAktVytsmIDKQMfCeFb8ukRE=;
 b=OobXsV0hP54G4slkYjwUI7QRyoQsGJ1lcrZddUd5xbvH4subhfc8mS2Y
 eSLtD4dR4e0d+yxMhD2CRMskAJgF7RhFUuiyyfg5Ec6zUKjVeXsNbLNAR
 DQgfez3o9pPjmhcsBuSPGmdG23se1fAYtQVtsQT/9kSOW7DgSLROq7jDG
 DSA0x+1IZHalVBRE69ZxkQnVPQt6Li8OnlxukrmZLUqTlzMN+tRKXl+Pi
 9rFDSEEkRbZK2UZ65pF36BVyr3LS3H69fOa6vVElPTqxVSJxCnvr62Hcv
 ilkRGbgXf3X1aO/mixsSKhpN8ej62783Es97jNcp+kib4JoB7XEUe3LqZ g==;
X-CSE-ConnectionGUID: 28Q5eykSTUaMAZKtXqh1AA==
X-CSE-MsgGUID: +fmqInH9TLaTDOy4GMzzYQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11095"; a="14526002"
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="14526002"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2024 09:13:48 -0700
X-CSE-ConnectionGUID: xam4aBzjSJquF+4h68fIqw==
X-CSE-MsgGUID: bGdo6uLOThyqERILcoY8+A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="38697035"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Jun 2024 09:13:47 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 6 Jun 2024 09:13:46 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 6 Jun 2024 09:13:46 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 6 Jun 2024 09:13:46 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 6 Jun 2024 09:13:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=N9ifHmBt/rsbm7Ao6MgPgWP5xQc3fnV/yNB2Loi+pXuJZy0nzzkz/6d4oLe+UwyUVyGpAK9hBzyHPshjkgH3XQ8+FpAkiP53LWTkSguexvIXOzwf1phySeXhIt6M4PXlkdm9daUIo4wg0t7whYMbtaGfJRguB8heFSUZCi8W0EUuUJu4Ehg0fvkEiVzDnsr1FTSqSia5QDaC8K1JDoW3A7l0TLF/NofcT186Vx/hFtSp0YURKmBFFhHlwHjNvCtOPRQh6VeUhKe521Hg5Y+Ko7ZKE95XRTBvtwP45CquQ18wY1WByyioBa4ARPHUHq5J0PMQMICaUKlz+nWtc1OlPg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CnK4+Lt2FECwQU2hl31wnHXgOsSlS8rRg1tHcWK5Meo=;
 b=JiT1tE5dhv4HK4c8CPIDfWNs8UXkWAe0YnwEMNXbHTJ4ktXu1VYGMiQzVFDg+TzlH4G2PUdNcpQAQn6omK0YxlYZ01knE8mPw1PAPE7A+XsVX7ZkBF0h++A+j83ZMCi0c7kQFVyTiKvMgJICGMmwQm/+JAzQ0XvB95B1pyTbqPx5t6YZJNvc0dEKvk3j+d242nxcIWTyLAxy86eShXv9BxtR4ruAkur5gWpJBv+Q64WLLUdSiwqJ/Eybt2HufFWu8/WaUGxD7fnDvllGGo/7oWPD28QaTRvT5HpOUekB1iYLChVdiCypS+BpuH5aj16pyt/Tqd49gQmIyu+jERwk5A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by IA1PR11MB6514.namprd11.prod.outlook.com (2603:10b6:208:3a2::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.21; Thu, 6 Jun
 2024 16:13:43 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7633.033; Thu, 6 Jun 2024
 16:13:43 +0000
Date: Thu, 6 Jun 2024 12:13:41 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 59/65] drm/i915: pass dev_priv explicitly to
 TRANS_DDI_FUNC_CTL
Message-ID: <ZmHgNYj7tZWXIvul@intel.com>
References: <cover.1717514638.git.jani.nikula@intel.com>
 <4ccf75561aa0fb209fd71c85e9089b0350570fd6.1717514638.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <4ccf75561aa0fb209fd71c85e9089b0350570fd6.1717514638.git.jani.nikula@intel.com>
X-ClientProxiedBy: BYAPR02CA0061.namprd02.prod.outlook.com
 (2603:10b6:a03:54::38) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|IA1PR11MB6514:EE_
X-MS-Office365-Filtering-Correlation-Id: b72b25ee-730e-4ad6-08a8-08dc8643a2c9
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|376005|366007|1800799015;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?o6IvjZgyl83vu8MhlIlJCXg4YxLDMqWh/+OEo/60PiuiQT+kb3JOfNAB5902?=
 =?us-ascii?Q?y3ApyEN5uvaliJZz9h700pF/yOXUxNV98CT3vuSgGPPhsv8N3KnOPAPmIO8H?=
 =?us-ascii?Q?+gx60XNQdox6uWXgYDFrEZOv57I1eLbW5HyGs+VjBJDix6sgtmtNgv2/k/7W?=
 =?us-ascii?Q?aGsKrnIfmzpZC6lXT+KEm4ahtJurs36ftzeczQqMDG6p4BQUByt7UVMCU3kG?=
 =?us-ascii?Q?/crD9DqMI0ZPM1yzCVeGcmCK7gudT3qLPCE/o9rcYPzQ1YO0NiZ5QQAJCwee?=
 =?us-ascii?Q?GNTKqbNKIw3yGCp6k6OiOZE+Watr9nzDEwDVag7SYQWdyIWgPKSd6chzUFVg?=
 =?us-ascii?Q?8dG5qMqBIvL3waUWSYKgPYplUGfWnvopHy6GTi73h4S16QRga+QRLxHFoQQt?=
 =?us-ascii?Q?kuikvnJoMassQbMf/nGLFrZXS+numdla/Fs8fxsNeViBQEX0qL2BdC+BiqNc?=
 =?us-ascii?Q?cL8Em3FgFdV+ZrENUI5Hp91G0xRzGk5tLvIYul0kPHvT0d/S4pwlbAftaYfO?=
 =?us-ascii?Q?A/MZo1T9c1GYmMXLQU146boLBaXV5HbYX0g8tBvtkQS64fUoZyVtElxxiPxo?=
 =?us-ascii?Q?TH/9mTRYplH7CqAQg2FD46wO1KN7KY/H7babJsPNvdqL7XzdJQ1zQcr5O/xx?=
 =?us-ascii?Q?g776o5mznE9TYG2EuXNtMhgkxZmIEE7iDHfOmARviwKUoiu/gZwvPqVbhcW2?=
 =?us-ascii?Q?wI3+Dw0UQRTLkNmH+BqjMoFpLBiZppDNmaVGzuxNO2wqq66wtC6GO3uN6CGz?=
 =?us-ascii?Q?GM1B4plIy/QFRVxbbKPTPWPCpK+L8ErbE+TQyKJ5UaF6Huakvl4NiGgutuDI?=
 =?us-ascii?Q?0R/kPmBj8794kb1WmvDpdGPvkQCQxPCDvNYsKmMasbo7VlRzLnf4TWJgyL4p?=
 =?us-ascii?Q?kclBVfC8C4CrS+uD7nrWLH5A5UtDDtvonlI0y5cZ68geqSpK6AuQMiIiMTTR?=
 =?us-ascii?Q?vYtgP6Xhq11SnoHTGUTT2v7BSfpQfAbKM2CR/6RXvodwrRr3+BwONkuWMhWB?=
 =?us-ascii?Q?Ei2JDfI3Ye31vSJllibsh654ulGJGA3Ouw/tXY8vwGb4gP0u9ajRx7tnkzzr?=
 =?us-ascii?Q?BfwT69Kj+d4tC/Weqy5nLm4Ec9VjI6GRgMIDsawcwjTKqimTZvzy6rZ2xlXB?=
 =?us-ascii?Q?yjlwDKJ+BrjfSSLdjrO3ORi+eV7rL4kPbXn/96346d84K26ws2Fg1bb06ic7?=
 =?us-ascii?Q?5ugfxRKKeYKhUMB5ZNrASROhCte3jLnHpshn9qEamXbjxaSMGOyhxB5dhfoF?=
 =?us-ascii?Q?oKFWEDuAS0sxBSYtoksZYjDJxLkM4yYxqm6Z0hEbTSCxPhsxhPSllUeuH824?=
 =?us-ascii?Q?vBXp0/9mmeM6k6jhCcr3ybvq?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(366007)(1800799015); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?BEgX+ydMSD/cYLLErKfhI817h/5G6ij8wLhr6wJdS+H3fMdueibZqnYwnESd?=
 =?us-ascii?Q?nDE9XNjovvNM81G6ZfX8CkSpSGGmXrMYE90e4jl1qMfzoEJd1vXrJxRgyRaZ?=
 =?us-ascii?Q?VQYVEwINWL2q3FaRUoMawdgzO9WNP5pXu8p36DmY7nWaWsXAKnIZdm5e5Z3x?=
 =?us-ascii?Q?kvPgC1N/oH11DxxBrxrh74R+6O5JOTcLNxvjGpfj4+1I5gGYkk9ksxJUwEM8?=
 =?us-ascii?Q?nhJrwuXTE4CzOcnh1HNy22zVDhjKHpwPSNAyzE73Bd+4rGz/etrjgRnaOl9B?=
 =?us-ascii?Q?L8NUusKHSPXs6+bzSbSLxvYVcGhXdzs5okCq9Cn0Cm0HvKe9NcGy53YZ2pTs?=
 =?us-ascii?Q?pR2G7LXX9gxHFuA13RsIadGxZyEkyqsP+x576XF3N2BkxeiPbLCSRYsLy7Yr?=
 =?us-ascii?Q?RSVNUUW60qBtxkvcqJf1sPLEsg+X2Dp3vsRfV/dhFmgDYQJNK8LoQ5461Ghb?=
 =?us-ascii?Q?oHc9TGFlBs00M3fLXawsnxHfjhgzIcINJswsafrYYJ4NIfT8eZcBA1c3ti+o?=
 =?us-ascii?Q?lm1krshuFGZMoqJ71fI8IPzrdMYgnmJfMfmMmeFmlY2qKA6e5V6RF40MMwaY?=
 =?us-ascii?Q?SScte4hPZSyxsVW5U7dpkjYMFeQvBXX5qHkt/5ymhmF87ZTYjJzL82tnK9qT?=
 =?us-ascii?Q?+5tgIXHhHYPeeIiu05VL2pKW9roIf8yQksn0gUqR88aDCr5zLQos3nRRSFhQ?=
 =?us-ascii?Q?wzWJJjhodzXPuDxaA0gVicnqip+O9Mq796/pR6tYNuAlkPLilGy/iB4jLR6U?=
 =?us-ascii?Q?s7Kq5KZdolU2UQ3JoQ3pXce69SKkyH9LewfqLevrWnvqsiUDSbzUW2whMGoD?=
 =?us-ascii?Q?Q3+QBRzaWubIiNQhrbRhNIIqNPvOPn98e8xSFYgcXJ2gTF0YOGqNOMA8o35V?=
 =?us-ascii?Q?TNArIbIUy59OEGsN/0gwY0+Q79t3smy5YO3JqQ0Sj7k0aQ5iA311xkDvtKBA?=
 =?us-ascii?Q?EoGVIEL7BecqUbGsvsjriCTHHhsY3WpLNdxmNCFxSYlHXXL5mGtoLcKn5iFS?=
 =?us-ascii?Q?TM3n3PlGTeqYH+5mdFkOn7uhyvU4YTmV3dWKwdk3vstYgcArimAg5wa9SvFi?=
 =?us-ascii?Q?wtdMeBongaxtljtNke+qYCXQkVuD9MbFU3MAbnGk5CZ8XxUgx6mgqhkIX3DU?=
 =?us-ascii?Q?3VDHRBKcEZbhOkn5TQMBDT2j9Zeg5skfklADxJO9+TySqd1JNL5ft5i6dlCR?=
 =?us-ascii?Q?rHgCf3gQ4rdHtfs5zcFZkn5LnPAbLYjxTaRRyVam9jn/0R3iEXzkqeK72zAe?=
 =?us-ascii?Q?PhDVLJyUmtQZ5FMqWujG43ecU1zIg2mFBE8UsyWu3/wIWK+VaaUXNXHG0JOX?=
 =?us-ascii?Q?knsVwVIPSR94vYS4OzswmGJZNKBI+K8Qf1JrjO+4D25fc5tCprE1MJVKtWzI?=
 =?us-ascii?Q?njN3OIJ32kJPCJXgGOEeAWuhlohbjbh59BZxSxfbd8e0S1B2p75wSoJAppr7?=
 =?us-ascii?Q?BZ23ST6P8l18onu15hwd/kJ3dpiN9PxNXFNJ3lYWId5Ib5oWNeEQW13jBLQc?=
 =?us-ascii?Q?Hos7zr0/lF7tz6U0iUPayPGSP8Ask85AAQ4EMS7B3of2GvLWprKZXM8wUf8V?=
 =?us-ascii?Q?Lc1I53FkZ2q67J7dPFVyNs0LabRTW/b4AOTUGdpH?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b72b25ee-730e-4ad6-08a8-08dc8643a2c9
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Jun 2024 16:13:43.5390 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: RJeHVd4ADmvV96oHIRE91Kn0j+z6mqzTPc9jec97Ot/zPedqmK3CiJDZ6uJAUqHi2WAuT+iJO0LHZ6PxlpJsaA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6514
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

On Tue, Jun 04, 2024 at 06:26:17PM +0300, Jani Nikula wrote:
> Avoid the implicit dev_priv local variable use, and pass dev_priv
> explicitly to the TRANS_DDI_FUNC_CTL register macro.

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/icl_dsi.c        | 12 +++++---
>  drivers/gpu/drm/i915/display/intel_ddi.c      | 29 ++++++++++++-------
>  drivers/gpu/drm/i915/display/intel_display.c  |  9 ++++--
>  .../gpu/drm/i915/display/intel_display_irq.c  |  3 +-
>  drivers/gpu/drm/i915/display/intel_dp_mst.c   |  5 ++--
>  drivers/gpu/drm/i915/display/intel_fdi.c      |  3 +-
>  drivers/gpu/drm/i915/display/intel_hdcp.c     |  3 +-
>  drivers/gpu/drm/i915/display/intel_hdmi.c     |  2 +-
>  drivers/gpu/drm/i915/gvt/display.c            | 25 +++++++++-------
>  drivers/gpu/drm/i915/gvt/handlers.c           |  2 +-
>  drivers/gpu/drm/i915/i915_reg.h               |  2 +-
>  11 files changed, 58 insertions(+), 37 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
> index 9beb94494b2b..acc80d439352 100644
> --- a/drivers/gpu/drm/i915/display/icl_dsi.c
> +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
> @@ -796,7 +796,8 @@ gen11_dsi_configure_transcoder(struct intel_encoder *encoder,
>  		dsi_trans = dsi_port_to_transcoder(port);
>  
>  		/* select data lane width */
> -		tmp = intel_de_read(dev_priv, TRANS_DDI_FUNC_CTL(dsi_trans));
> +		tmp = intel_de_read(dev_priv,
> +				    TRANS_DDI_FUNC_CTL(dev_priv, dsi_trans));
>  		tmp &= ~DDI_PORT_WIDTH_MASK;
>  		tmp |= DDI_PORT_WIDTH(intel_dsi->lane_count);
>  
> @@ -822,7 +823,8 @@ gen11_dsi_configure_transcoder(struct intel_encoder *encoder,
>  
>  		/* enable DDI buffer */
>  		tmp |= TRANS_DDI_FUNC_ENABLE;
> -		intel_de_write(dev_priv, TRANS_DDI_FUNC_CTL(dsi_trans), tmp);
> +		intel_de_write(dev_priv,
> +			       TRANS_DDI_FUNC_CTL(dev_priv, dsi_trans), tmp);
>  	}
>  
>  	/* wait for link ready */
> @@ -1333,7 +1335,8 @@ static void gen11_dsi_deconfigure_trancoder(struct intel_encoder *encoder)
>  	/* disable ddi function */
>  	for_each_dsi_port(port, intel_dsi->ports) {
>  		dsi_trans = dsi_port_to_transcoder(port);
> -		intel_de_rmw(dev_priv, TRANS_DDI_FUNC_CTL(dsi_trans),
> +		intel_de_rmw(dev_priv,
> +			     TRANS_DDI_FUNC_CTL(dev_priv, dsi_trans),
>  			     TRANS_DDI_FUNC_ENABLE, 0);
>  	}
>  
> @@ -1697,7 +1700,8 @@ static bool gen11_dsi_get_hw_state(struct intel_encoder *encoder,
>  
>  	for_each_dsi_port(port, intel_dsi->ports) {
>  		dsi_trans = dsi_port_to_transcoder(port);
> -		tmp = intel_de_read(dev_priv, TRANS_DDI_FUNC_CTL(dsi_trans));
> +		tmp = intel_de_read(dev_priv,
> +				    TRANS_DDI_FUNC_CTL(dev_priv, dsi_trans));
>  		switch (tmp & TRANS_DDI_EDP_INPUT_MASK) {
>  		case TRANS_DDI_EDP_INPUT_A_ON:
>  			*pipe = PIPE_A;
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index 3c3fc53376ce..c5571be3c66e 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -606,7 +606,7 @@ void intel_ddi_enable_transcoder_func(struct intel_encoder *encoder,
>  			       TRANS_DDI_FUNC_CTL2(cpu_transcoder), ctl2);
>  	}
>  
> -	intel_de_write(dev_priv, TRANS_DDI_FUNC_CTL(cpu_transcoder),
> +	intel_de_write(dev_priv, TRANS_DDI_FUNC_CTL(dev_priv, cpu_transcoder),
>  		       intel_ddi_transcoder_func_reg_val_get(encoder,
>  							     crtc_state));
>  }
> @@ -626,7 +626,8 @@ intel_ddi_config_transcoder_func(struct intel_encoder *encoder,
>  
>  	ctl = intel_ddi_transcoder_func_reg_val_get(encoder, crtc_state);
>  	ctl &= ~TRANS_DDI_FUNC_ENABLE;
> -	intel_de_write(dev_priv, TRANS_DDI_FUNC_CTL(cpu_transcoder), ctl);
> +	intel_de_write(dev_priv, TRANS_DDI_FUNC_CTL(dev_priv, cpu_transcoder),
> +		       ctl);
>  }
>  
>  void intel_ddi_disable_transcoder_func(const struct intel_crtc_state *crtc_state)
> @@ -641,7 +642,8 @@ void intel_ddi_disable_transcoder_func(const struct intel_crtc_state *crtc_state
>  		intel_de_write(dev_priv,
>  			       TRANS_DDI_FUNC_CTL2(cpu_transcoder), 0);
>  
> -	ctl = intel_de_read(dev_priv, TRANS_DDI_FUNC_CTL(cpu_transcoder));
> +	ctl = intel_de_read(dev_priv,
> +			    TRANS_DDI_FUNC_CTL(dev_priv, cpu_transcoder));
>  
>  	drm_WARN_ON(crtc->base.dev, ctl & TRANS_DDI_HDCP_SIGNALLING);
>  
> @@ -660,7 +662,8 @@ void intel_ddi_disable_transcoder_func(const struct intel_crtc_state *crtc_state
>  		ctl &= ~(TRANS_DDI_PORT_MASK | TRANS_DDI_MODE_SELECT_MASK);
>  	}
>  
> -	intel_de_write(dev_priv, TRANS_DDI_FUNC_CTL(cpu_transcoder), ctl);
> +	intel_de_write(dev_priv, TRANS_DDI_FUNC_CTL(dev_priv, cpu_transcoder),
> +		       ctl);
>  
>  	if (intel_has_quirk(display, QUIRK_INCREASE_DDI_DISABLED_TIME) &&
>  	    intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI)) {
> @@ -684,7 +687,7 @@ int intel_ddi_toggle_hdcp_bits(struct intel_encoder *intel_encoder,
>  	if (drm_WARN_ON(dev, !wakeref))
>  		return -ENXIO;
>  
> -	intel_de_rmw(dev_priv, TRANS_DDI_FUNC_CTL(cpu_transcoder),
> +	intel_de_rmw(dev_priv, TRANS_DDI_FUNC_CTL(dev_priv, cpu_transcoder),
>  		     hdcp_mask, enable ? hdcp_mask : 0);
>  	intel_display_power_put(dev_priv, intel_encoder->power_domain, wakeref);
>  	return ret;
> @@ -718,7 +721,8 @@ bool intel_ddi_connector_get_hw_state(struct intel_connector *intel_connector)
>  	else
>  		cpu_transcoder = (enum transcoder) pipe;
>  
> -	tmp = intel_de_read(dev_priv, TRANS_DDI_FUNC_CTL(cpu_transcoder));
> +	tmp = intel_de_read(dev_priv,
> +			    TRANS_DDI_FUNC_CTL(dev_priv, cpu_transcoder));
>  
>  	switch (tmp & TRANS_DDI_MODE_SELECT_MASK) {
>  	case TRANS_DDI_MODE_SELECT_HDMI:
> @@ -782,7 +786,7 @@ static void intel_ddi_get_encoder_pipes(struct intel_encoder *encoder,
>  
>  	if (HAS_TRANSCODER(dev_priv, TRANSCODER_EDP) && port == PORT_A) {
>  		tmp = intel_de_read(dev_priv,
> -				    TRANS_DDI_FUNC_CTL(TRANSCODER_EDP));
> +				    TRANS_DDI_FUNC_CTL(dev_priv, TRANSCODER_EDP));
>  
>  		switch (tmp & TRANS_DDI_EDP_INPUT_MASK) {
>  		default:
> @@ -823,7 +827,7 @@ static void intel_ddi_get_encoder_pipes(struct intel_encoder *encoder,
>  		}
>  
>  		tmp = intel_de_read(dev_priv,
> -				    TRANS_DDI_FUNC_CTL(cpu_transcoder));
> +				    TRANS_DDI_FUNC_CTL(dev_priv, cpu_transcoder));
>  		intel_display_power_put(dev_priv, POWER_DOMAIN_TRANSCODER(cpu_transcoder),
>  					trans_wakeref);
>  
> @@ -3025,7 +3029,8 @@ static void intel_ddi_post_disable_dp(struct intel_atomic_state *state,
>  		if (is_mst) {
>  			enum transcoder cpu_transcoder = old_crtc_state->cpu_transcoder;
>  
> -			intel_de_rmw(dev_priv, TRANS_DDI_FUNC_CTL(cpu_transcoder),
> +			intel_de_rmw(dev_priv,
> +				     TRANS_DDI_FUNC_CTL(dev_priv, cpu_transcoder),
>  				     TGL_TRANS_DDI_PORT_MASK | TRANS_DDI_MODE_SELECT_MASK,
>  				     0);
>  		}
> @@ -3759,7 +3764,8 @@ static enum transcoder bdw_transcoder_master_readout(struct drm_i915_private *de
>  
>  		master_select = REG_FIELD_GET(PORT_SYNC_MODE_MASTER_SELECT_MASK, ctl2);
>  	} else {
> -		u32 ctl = intel_de_read(dev_priv, TRANS_DDI_FUNC_CTL(cpu_transcoder));
> +		u32 ctl = intel_de_read(dev_priv,
> +				        TRANS_DDI_FUNC_CTL(dev_priv, cpu_transcoder));
>  
>  		if ((ctl & TRANS_DDI_PORT_SYNC_ENABLE) == 0)
>  			return INVALID_TRANSCODER;
> @@ -3815,7 +3821,8 @@ static void intel_ddi_read_func_ctl(struct intel_encoder *encoder,
>  	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
>  	u32 temp, flags = 0;
>  
> -	temp = intel_de_read(dev_priv, TRANS_DDI_FUNC_CTL(cpu_transcoder));
> +	temp = intel_de_read(dev_priv,
> +			     TRANS_DDI_FUNC_CTL(dev_priv, cpu_transcoder));
>  	if (temp & TRANS_DDI_PHSYNC)
>  		flags |= DRM_MODE_FLAG_PHSYNC;
>  	else
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 952780028630..62f8300c73a5 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -3507,7 +3507,8 @@ static bool transcoder_ddi_func_is_enabled(struct drm_i915_private *dev_priv,
>  	power_domain = POWER_DOMAIN_TRANSCODER(cpu_transcoder);
>  
>  	with_intel_display_power_if_enabled(dev_priv, power_domain, wakeref)
> -		tmp = intel_de_read(dev_priv, TRANS_DDI_FUNC_CTL(cpu_transcoder));
> +		tmp = intel_de_read(dev_priv,
> +				    TRANS_DDI_FUNC_CTL(dev_priv, cpu_transcoder));
>  
>  	return tmp & TRANS_DDI_FUNC_ENABLE;
>  }
> @@ -3622,7 +3623,8 @@ static u8 hsw_enabled_transcoders(struct intel_crtc *crtc)
>  
>  		power_domain = POWER_DOMAIN_TRANSCODER(cpu_transcoder);
>  		with_intel_display_power_if_enabled(dev_priv, power_domain, wakeref)
> -			tmp = intel_de_read(dev_priv, TRANS_DDI_FUNC_CTL(cpu_transcoder));
> +			tmp = intel_de_read(dev_priv,
> +					    TRANS_DDI_FUNC_CTL(dev_priv, cpu_transcoder));
>  
>  		if (!(tmp & TRANS_DDI_FUNC_ENABLE))
>  			continue;
> @@ -3729,7 +3731,8 @@ static bool hsw_get_transcoder_state(struct intel_crtc *crtc,
>  		return false;
>  
>  	if (hsw_panel_transcoders(dev_priv) & BIT(pipe_config->cpu_transcoder)) {
> -		tmp = intel_de_read(dev_priv, TRANS_DDI_FUNC_CTL(pipe_config->cpu_transcoder));
> +		tmp = intel_de_read(dev_priv,
> +				    TRANS_DDI_FUNC_CTL(dev_priv, pipe_config->cpu_transcoder));
>  
>  		if ((tmp & TRANS_DDI_EDP_INPUT_MASK) == TRANS_DDI_EDP_INPUT_A_ONOFF)
>  			pipe_config->pch_pfit.force_thru = true;
> diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
> index 76bba95410e7..036f77c2702d 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_irq.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
> @@ -934,7 +934,8 @@ static void gen11_dsi_te_interrupt_handler(struct drm_i915_private *dev_priv,
>  	}
>  
>  	/* Get PIPE for handling VBLANK event */
> -	val = intel_uncore_read(&dev_priv->uncore, TRANS_DDI_FUNC_CTL(dsi_trans));
> +	val = intel_uncore_read(&dev_priv->uncore,
> +				TRANS_DDI_FUNC_CTL(dev_priv, dsi_trans));
>  	switch (val & TRANS_DDI_EDP_INPUT_MASK) {
>  	case TRANS_DDI_EDP_INPUT_A_ON:
>  		pipe = PIPE_A;
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index 715d2f59f565..00fdcbc28e9b 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -1009,7 +1009,8 @@ static void intel_mst_post_disable_dp(struct intel_atomic_state *state,
>  
>  	clear_act_sent(encoder, old_crtc_state);
>  
> -	intel_de_rmw(dev_priv, TRANS_DDI_FUNC_CTL(old_crtc_state->cpu_transcoder),
> +	intel_de_rmw(dev_priv,
> +		     TRANS_DDI_FUNC_CTL(dev_priv, old_crtc_state->cpu_transcoder),
>  		     TRANS_DDI_DP_VC_PAYLOAD_ALLOC, 0);
>  
>  	wait_for_act_sent(encoder, old_crtc_state);
> @@ -1230,7 +1231,7 @@ static void intel_mst_enable_dp(struct intel_atomic_state *state,
>  
>  	clear_act_sent(encoder, pipe_config);
>  
> -	intel_de_rmw(dev_priv, TRANS_DDI_FUNC_CTL(trans), 0,
> +	intel_de_rmw(dev_priv, TRANS_DDI_FUNC_CTL(dev_priv, trans), 0,
>  		     TRANS_DDI_DP_VC_PAYLOAD_ALLOC);
>  
>  	drm_dbg_kms(&dev_priv->drm, "active links %d\n",
> diff --git a/drivers/gpu/drm/i915/display/intel_fdi.c b/drivers/gpu/drm/i915/display/intel_fdi.c
> index 007e0f9e9304..d33befd7994d 100644
> --- a/drivers/gpu/drm/i915/display/intel_fdi.c
> +++ b/drivers/gpu/drm/i915/display/intel_fdi.c
> @@ -34,7 +34,8 @@ static void assert_fdi_tx(struct drm_i915_private *dev_priv,
>  		 * so pipe->transcoder cast is fine here.
>  		 */
>  		enum transcoder cpu_transcoder = (enum transcoder)pipe;
> -		cur_state = intel_de_read(dev_priv, TRANS_DDI_FUNC_CTL(cpu_transcoder)) & TRANS_DDI_FUNC_ENABLE;
> +		cur_state = intel_de_read(dev_priv,
> +					  TRANS_DDI_FUNC_CTL(dev_priv, cpu_transcoder)) & TRANS_DDI_FUNC_ENABLE;
>  	} else {
>  		cur_state = intel_de_read(dev_priv, FDI_TX_CTL(pipe)) & FDI_TX_ENABLE;
>  	}
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
> index ba3eca919900..3ebe035f382e 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> @@ -47,7 +47,8 @@ intel_hdcp_disable_hdcp_line_rekeying(struct intel_encoder *encoder,
>  				     0, HDCP_LINE_REKEY_DISABLE);
>  		else if (IS_DISPLAY_IP_STEP(dev_priv, IP_VER(14, 1), STEP_B0, STEP_FOREVER) ||
>  			 IS_DISPLAY_IP_STEP(dev_priv, IP_VER(20, 0), STEP_B0, STEP_FOREVER))
> -			intel_de_rmw(dev_priv, TRANS_DDI_FUNC_CTL(hdcp->cpu_transcoder),
> +			intel_de_rmw(dev_priv,
> +				     TRANS_DDI_FUNC_CTL(dev_priv, hdcp->cpu_transcoder),
>  				     0, TRANS_DDI_HDCP_LINE_REKEY_DISABLE);
>  	}
>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
> index 7704ead5002d..19498ee455fa 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> @@ -83,7 +83,7 @@ assert_hdmi_transcoder_func_disabled(struct drm_i915_private *dev_priv,
>  				     enum transcoder cpu_transcoder)
>  {
>  	drm_WARN(&dev_priv->drm,
> -		 intel_de_read(dev_priv, TRANS_DDI_FUNC_CTL(cpu_transcoder)) &
> +		 intel_de_read(dev_priv, TRANS_DDI_FUNC_CTL(dev_priv, cpu_transcoder)) &
>  		 TRANS_DDI_FUNC_ENABLE,
>  		 "HDMI transcoder function enabled, expecting disabled\n");
>  }
> diff --git a/drivers/gpu/drm/i915/gvt/display.c b/drivers/gpu/drm/i915/gvt/display.c
> index 95b4b76d3b45..c66d6d3177c8 100644
> --- a/drivers/gpu/drm/i915/gvt/display.c
> +++ b/drivers/gpu/drm/i915/gvt/display.c
> @@ -200,11 +200,11 @@ static void emulate_monitor_status_change(struct intel_vgpu *vgpu)
>  		}
>  
>  		for (trans = TRANSCODER_A; trans <= TRANSCODER_EDP; trans++) {
> -			vgpu_vreg_t(vgpu, TRANS_DDI_FUNC_CTL(trans)) &=
> +			vgpu_vreg_t(vgpu, TRANS_DDI_FUNC_CTL(dev_priv, trans)) &=
>  				~(TRANS_DDI_BPC_MASK | TRANS_DDI_MODE_SELECT_MASK |
>  				  TRANS_DDI_PORT_MASK | TRANS_DDI_FUNC_ENABLE);
>  		}
> -		vgpu_vreg_t(vgpu, TRANS_DDI_FUNC_CTL(TRANSCODER_A)) &=
> +		vgpu_vreg_t(vgpu, TRANS_DDI_FUNC_CTL(dev_priv, TRANSCODER_A)) &=
>  			~(TRANS_DDI_BPC_MASK | TRANS_DDI_MODE_SELECT_MASK |
>  			  TRANS_DDI_PORT_MASK);
>  
> @@ -287,7 +287,8 @@ static void emulate_monitor_status_change(struct intel_vgpu *vgpu)
>  				(DDI_BUF_CTL_ENABLE | DDI_INIT_DISPLAY_DETECTED);
>  			vgpu_vreg_t(vgpu, DDI_BUF_CTL(PORT_A)) &=
>  				~DDI_BUF_IS_IDLE;
> -			vgpu_vreg_t(vgpu, TRANS_DDI_FUNC_CTL(TRANSCODER_EDP)) |=
> +			vgpu_vreg_t(vgpu,
> +				    TRANS_DDI_FUNC_CTL(dev_priv, TRANSCODER_EDP)) |=
>  				(TRANS_DDI_BPC_8 | TRANS_DDI_MODE_SELECT_DP_SST |
>  				 TRANS_DDI_FUNC_ENABLE);
>  			vgpu_vreg_t(vgpu, PCH_PORT_HOTPLUG) |=
> @@ -316,7 +317,8 @@ static void emulate_monitor_status_change(struct intel_vgpu *vgpu)
>  				DDI_BUF_CTL_ENABLE;
>  			vgpu_vreg_t(vgpu, DDI_BUF_CTL(PORT_B)) &=
>  				~DDI_BUF_IS_IDLE;
> -			vgpu_vreg_t(vgpu, TRANS_DDI_FUNC_CTL(TRANSCODER_A)) |=
> +			vgpu_vreg_t(vgpu,
> +				    TRANS_DDI_FUNC_CTL(dev_priv, TRANSCODER_A)) |=
>  				(TRANS_DDI_BPC_8 | TRANS_DDI_MODE_SELECT_DP_SST |
>  				 (PORT_B << TRANS_DDI_PORT_SHIFT) |
>  				 TRANS_DDI_FUNC_ENABLE);
> @@ -346,7 +348,8 @@ static void emulate_monitor_status_change(struct intel_vgpu *vgpu)
>  				DDI_BUF_CTL_ENABLE;
>  			vgpu_vreg_t(vgpu, DDI_BUF_CTL(PORT_C)) &=
>  				~DDI_BUF_IS_IDLE;
> -			vgpu_vreg_t(vgpu, TRANS_DDI_FUNC_CTL(TRANSCODER_A)) |=
> +			vgpu_vreg_t(vgpu,
> +				    TRANS_DDI_FUNC_CTL(dev_priv, TRANSCODER_A)) |=
>  				(TRANS_DDI_BPC_8 | TRANS_DDI_MODE_SELECT_DP_SST |
>  				 (PORT_B << TRANS_DDI_PORT_SHIFT) |
>  				 TRANS_DDI_FUNC_ENABLE);
> @@ -410,10 +413,10 @@ static void emulate_monitor_status_change(struct intel_vgpu *vgpu)
>  		vgpu_vreg_t(vgpu, DPLL_CTRL2) |=
>  			DPLL_CTRL2_DDI_SEL_OVERRIDE(PORT_B);
>  		vgpu_vreg_t(vgpu, SFUSE_STRAP) |= SFUSE_STRAP_DDIB_DETECTED;
> -		vgpu_vreg_t(vgpu, TRANS_DDI_FUNC_CTL(TRANSCODER_A)) &=
> +		vgpu_vreg_t(vgpu, TRANS_DDI_FUNC_CTL(dev_priv, TRANSCODER_A)) &=
>  			~(TRANS_DDI_BPC_MASK | TRANS_DDI_MODE_SELECT_MASK |
>  			TRANS_DDI_PORT_MASK);
> -		vgpu_vreg_t(vgpu, TRANS_DDI_FUNC_CTL(TRANSCODER_A)) |=
> +		vgpu_vreg_t(vgpu, TRANS_DDI_FUNC_CTL(dev_priv, TRANSCODER_A)) |=
>  			(TRANS_DDI_BPC_8 | TRANS_DDI_MODE_SELECT_DP_SST |
>  			(PORT_B << TRANS_DDI_PORT_SHIFT) |
>  			TRANS_DDI_FUNC_ENABLE);
> @@ -436,10 +439,10 @@ static void emulate_monitor_status_change(struct intel_vgpu *vgpu)
>  		vgpu_vreg_t(vgpu, DPLL_CTRL2) |=
>  			DPLL_CTRL2_DDI_SEL_OVERRIDE(PORT_C);
>  		vgpu_vreg_t(vgpu, SDEISR) |= SDE_PORTC_HOTPLUG_CPT;
> -		vgpu_vreg_t(vgpu, TRANS_DDI_FUNC_CTL(TRANSCODER_A)) &=
> +		vgpu_vreg_t(vgpu, TRANS_DDI_FUNC_CTL(dev_priv, TRANSCODER_A)) &=
>  			~(TRANS_DDI_BPC_MASK | TRANS_DDI_MODE_SELECT_MASK |
>  			TRANS_DDI_PORT_MASK);
> -		vgpu_vreg_t(vgpu, TRANS_DDI_FUNC_CTL(TRANSCODER_A)) |=
> +		vgpu_vreg_t(vgpu, TRANS_DDI_FUNC_CTL(dev_priv, TRANSCODER_A)) |=
>  			(TRANS_DDI_BPC_8 | TRANS_DDI_MODE_SELECT_DP_SST |
>  			(PORT_C << TRANS_DDI_PORT_SHIFT) |
>  			TRANS_DDI_FUNC_ENABLE);
> @@ -462,10 +465,10 @@ static void emulate_monitor_status_change(struct intel_vgpu *vgpu)
>  		vgpu_vreg_t(vgpu, DPLL_CTRL2) |=
>  			DPLL_CTRL2_DDI_SEL_OVERRIDE(PORT_D);
>  		vgpu_vreg_t(vgpu, SDEISR) |= SDE_PORTD_HOTPLUG_CPT;
> -		vgpu_vreg_t(vgpu, TRANS_DDI_FUNC_CTL(TRANSCODER_A)) &=
> +		vgpu_vreg_t(vgpu, TRANS_DDI_FUNC_CTL(dev_priv, TRANSCODER_A)) &=
>  			~(TRANS_DDI_BPC_MASK | TRANS_DDI_MODE_SELECT_MASK |
>  			TRANS_DDI_PORT_MASK);
> -		vgpu_vreg_t(vgpu, TRANS_DDI_FUNC_CTL(TRANSCODER_A)) |=
> +		vgpu_vreg_t(vgpu, TRANS_DDI_FUNC_CTL(dev_priv, TRANSCODER_A)) |=
>  			(TRANS_DDI_BPC_8 | TRANS_DDI_MODE_SELECT_DP_SST |
>  			(PORT_D << TRANS_DDI_PORT_SHIFT) |
>  			TRANS_DDI_FUNC_ENABLE);
> diff --git a/drivers/gpu/drm/i915/gvt/handlers.c b/drivers/gpu/drm/i915/gvt/handlers.c
> index f2af234769bf..24abe70afe46 100644
> --- a/drivers/gpu/drm/i915/gvt/handlers.c
> +++ b/drivers/gpu/drm/i915/gvt/handlers.c
> @@ -657,7 +657,7 @@ static void vgpu_update_refresh_rate(struct intel_vgpu *vgpu)
>  	u32 dp_br, link_m, link_n, htotal, vtotal;
>  
>  	/* Find DDI/PORT assigned to TRANSCODER_A, expect B or D */
> -	port = (vgpu_vreg_t(vgpu, TRANS_DDI_FUNC_CTL(TRANSCODER_A)) &
> +	port = (vgpu_vreg_t(vgpu, TRANS_DDI_FUNC_CTL(dev_priv, TRANSCODER_A)) &
>  		TRANS_DDI_PORT_MASK) >> TRANS_DDI_PORT_SHIFT;
>  	if (port != PORT_B && port != PORT_D) {
>  		gvt_dbg_dpy("vgpu-%d unsupported PORT_%c\n", vgpu->id, port_name(port));
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index c8488877dd68..14f4060dd573 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -3953,7 +3953,7 @@ enum skl_power_gate {
>  #define _TRANS_DDI_FUNC_CTL_EDP		0x6F400
>  #define _TRANS_DDI_FUNC_CTL_DSI0	0x6b400
>  #define _TRANS_DDI_FUNC_CTL_DSI1	0x6bc00
> -#define TRANS_DDI_FUNC_CTL(tran) _MMIO_TRANS2(dev_priv, tran, _TRANS_DDI_FUNC_CTL_A)
> +#define TRANS_DDI_FUNC_CTL(dev_priv, tran) _MMIO_TRANS2(dev_priv, tran, _TRANS_DDI_FUNC_CTL_A)
>  
>  #define  TRANS_DDI_FUNC_ENABLE		(1 << 31)
>  /* Those bits are ignored by pipe EDP since it can only connect to DDI A */
> -- 
> 2.39.2
> 
