Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 05E708FF0C8
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jun 2024 17:36:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C1D2410E1B4;
	Thu,  6 Jun 2024 15:36:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cOhn4Cp1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D58B10E1B4
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Jun 2024 15:36:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717688194; x=1749224194;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=/B8idiHo4pD2k4OCd9+bGWDgPlbl3v8DUdK7uk8EaHw=;
 b=cOhn4Cp1/wUz+FhT0i88eKy+Ikc6Ml1PbpjTVhXzNLKTd87HV3ekhpFc
 rUbBAwfMCx5EIBtwLJLy/DcR4jwVzUPRR1qjoQk8X8HJEbcITo0fGnd2U
 NHIauUKkyWJ0XHjI5CiFHVkSmilu0IXshciCkN+zyMIr66R1CHlfveO/C
 K80NkKn3+0tJNAfVksVLctlb7K+gIn2Ac9uMsrTWOYxFmDns4fUEQyLQs
 RhbWTn8WSRO/G38wAKpkKY/C7IDpUtrrAYCwI/V0CDgzoFmXQGSsducKF
 Hsx4ngN7ktzU+N2t9hyhzSyZM7lmQ4r1VAwwww/TRSThymtkX82Ks1EU9 A==;
X-CSE-ConnectionGUID: Z2j1dRioR2OSITuQ9ca9sQ==
X-CSE-MsgGUID: zcw68yJ7SUu+eNmDrs/Qzw==
X-IronPort-AV: E=McAfee;i="6600,9927,11095"; a="31862386"
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="31862386"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2024 08:36:29 -0700
X-CSE-ConnectionGUID: B4Z6HQtyQnOpvMKGuWSA3w==
X-CSE-MsgGUID: fthhbWEtRNOktx5MFIwd0g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="43104140"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Jun 2024 08:36:30 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 6 Jun 2024 08:36:28 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 6 Jun 2024 08:36:28 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 6 Jun 2024 08:36:28 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 6 Jun 2024 08:36:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YKGWfwqatfIHQz4tpmc3gANgfPRt86tjpzN6QfhY5zAo+0dR55XdeaUmUG0RN6Gf2GcLV4nTHG1YwBxJbhkb8ele6HVo6BcClOzluRnyhROi61iMRQ35puSgO3WMjvQJwElGsyK6Rq4LuuYmLsNSFmjvQ1CAOxpr9y5PtesWqtgkhZJujwVM094pr1NnCk+Flma6GtvZA3ryNJXbK6GGzKqLb1i2e8Bj/Tw8p1IgXgE7yK1lmqPWFwNqtaQf52kj0X1u2yf04CzzEGzUi0prn4Z6c+jF6VkUZUPBTP8mNVVeaI3h4kDtHIqoMmOSi+DWkXV75MnW0uVEGT7XRMy3Kw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Zf+SLapL9Ut1TbI16r9eLTVB38N4XApiMXIlUZ/Ul5Y=;
 b=Y69RJnmXCvDtf/7vduZphUdyEiX9aJOZLxYJXH8ptAyB8+tbO7RgpRirwM3BxtjlZH748euSn4InVjOE7GT8ZCAoEiTd+pUsMynWK/OTt/0hGWi3Dr8XJzRk5Bke6wFxLkF7pgGWPeAY3pRL/8EGRUbpAJOYlNmgUItx6UJvshwMSvSkj702Yllib5htgEvFwgiV3vsq3aQ4BfP/4oRY3SZSlYigq+g/d/1m2Vzno7u1ZtWx6ai6B1a5K3hqD8Wyzx94ivDT+PVPRBVpmWmJ/R9cRXkAsuCDCN9Be8tg24e8d0iFgZ8BLsJ1CHOZeo0Yz4U0/ch6cTmNTeu/nlYI1g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by DS0PR11MB7459.namprd11.prod.outlook.com (2603:10b6:8:144::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.27; Thu, 6 Jun
 2024 15:36:20 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7633.033; Thu, 6 Jun 2024
 15:36:20 +0000
Date: Thu, 6 Jun 2024 11:36:18 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 06/65] drm/i915: pass dev_priv explicitly to TRANS_VTOTAL
Message-ID: <ZmHXcnqj77pH1X9n@intel.com>
References: <cover.1717514638.git.jani.nikula@intel.com>
 <751bc7046f5e2c5fc6a4fe5ade2e836c641abdb7.1717514638.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <751bc7046f5e2c5fc6a4fe5ade2e836c641abdb7.1717514638.git.jani.nikula@intel.com>
X-ClientProxiedBy: SJ0PR03CA0020.namprd03.prod.outlook.com
 (2603:10b6:a03:33a::25) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|DS0PR11MB7459:EE_
X-MS-Office365-Filtering-Correlation-Id: d62c16ff-6170-4340-b8e5-08dc863e69f9
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|376005|366007|1800799015;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?thgcQopntDDeaWMQlDBmdK+I8o8JbYEelguhVA2zxJjmiADLDT43/djWb58n?=
 =?us-ascii?Q?4Pz1CsNEsMQIGKo4vKCE/bdumiQkVn1EkZkcrHhV9Dm2uTV8b8eNqbMMYHKh?=
 =?us-ascii?Q?stzaRNAGpx2IP0KWV1CNmViAvpLrTntLYiE4e3wj/PWf4vQAYHHJJfQN+m1R?=
 =?us-ascii?Q?Q5FPXKUVwEZpMIwaz2OpUzVpBi+aU6LXErBgsw6lQUiU6Td2S/on5/I2qunF?=
 =?us-ascii?Q?l+AJrO0BnaH6Qt38MLkRww2JXs24OGbKWTovxeuO0o6Tzhwiia/T5kbql7Mn?=
 =?us-ascii?Q?1cyDWn1CoUZaNg6KoFFLG5hZez+cGvVwYLU3cAIk/keInWuZDBzi59Q3NOv7?=
 =?us-ascii?Q?aexAfygAEfhFEcMHk76rFMqkd9QsKDJ9D9yQiQJb3RVnWFurm5MxxXAj9QNv?=
 =?us-ascii?Q?gVfgN7eb0ava0rdwEPUkV0pI2+c3MddWvhpvPlWL/7pv9uRQ3H+ajmWELZTZ?=
 =?us-ascii?Q?NQ/rm3nWW30SyWmv4MKufOybSUQ/HON8jmrDfw5xK7Y3M2J0i86zH0zgppMT?=
 =?us-ascii?Q?OB3G18x93li8NQW8ZUec3o/yEouL2CgVhXIuIKQNBumSSY6ebpEx/MWqsNKi?=
 =?us-ascii?Q?74dmxQ/GqFiiALNsSD4u+EdPlsBzdtbXtk9iFFAfsoVmSV+Jhq2afj0/gQlR?=
 =?us-ascii?Q?OlwrcNol4vmkxuYP/MK5KIkL4To6X+fBpTIRr+IqLAaCD2h+LQeY13Ppw84X?=
 =?us-ascii?Q?om4vYyU9oJUUG1J/Hn2IN1Iy8lOroSgAgScF/YJCPLvpPJ4MTdtiB9r78Iu4?=
 =?us-ascii?Q?zIX9eyPjWzWGHOT6wIkw1ttXuXdLf7p4r00VuZIbe3SZLMZgrc21yIJRJct2?=
 =?us-ascii?Q?uEpN8EmcP356HCW/qKqFGWBCDSOyglfAYSnGuVWaCrdrsnDkCkCgZsCgHTO3?=
 =?us-ascii?Q?vtZ0EhWTnZy40wHvr765N3zEIbmp6LkGVqHVqYdoewyo3DuKYxjhuJPX23JH?=
 =?us-ascii?Q?Tg4ddXB1kKLJQosu3yCnVYfRAerbDHsnT/V35MDfPQSdqpAJUeIZMv9adltw?=
 =?us-ascii?Q?9VHRJ44jyZ/SAz6mrHx9r/Q61t0pY0wMqvbyruSpKrzf5C1qxnxd+HzLY//H?=
 =?us-ascii?Q?HmVbG+WB3jJ6HhJZAbk3nv/fEeBVBKg1sbwS7+YilPIOXAWVl3S446jc9d9t?=
 =?us-ascii?Q?h6m6DhnYkx0yFIc/NMEVAHCjis42gseCRV8n2bvOay7GFzzakYQbgJdVXTjn?=
 =?us-ascii?Q?FwpOvX14pVYPDIFa9DZhkO7vb04bU6DZq+AjB6m3wJHRZYW+/zvBzHc+jlnN?=
 =?us-ascii?Q?U/nsbbLcfzEGYWhkQEGUzjAbQZf70vZjQ9Im4Q8hjKrvl64uZXx2g0bQ4MUO?=
 =?us-ascii?Q?GKbqWGOwVPJunoUNvqqfmC0O?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(366007)(1800799015); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?rnqr1c27d7v1FlP0cMPkWWBAgBUUE71S086oaD4hd11H4gRHtf3Lpc+y42ZP?=
 =?us-ascii?Q?diJyVeV5ge+eyuQoK4qzoVOdivC743AeoHBi5nn91duIX7+MCFUO+0IPEhK9?=
 =?us-ascii?Q?+UASY1LzPCFlCTAryiu8y7rYStNStfrhVLSc2MQu6CGzTCM/GyDSqCynLKK8?=
 =?us-ascii?Q?LRGy6aW5S/w7OvGDp0PNSoK/UJe6x0e/vugkq5oylIJLYhFQItriBJvleF75?=
 =?us-ascii?Q?Ytz8pa+Izn3RtLEHnKoXNREdJwL2qXt+2bGnhfmg9cqhD5txBGDdP2Veq45l?=
 =?us-ascii?Q?NuYH/0PmHERDV8l+qEqDJCOKCVPwplSlaXDia+nQlvLjfIw4ur/aoDVL9LuL?=
 =?us-ascii?Q?xT6l08RMipbaLS2HxzVrU0P6hyaTXyWXCEMHockfIAtJRkpPL3MpDaVnHcmq?=
 =?us-ascii?Q?O7rk4EpKjCJaBJvVXR6EOduMiT+oyIV+xg7mu1uVzNv7kHWp8OsAsWEv8vSx?=
 =?us-ascii?Q?+T+m8Kn+74ceS6HNWP5JsAGsii+AQAK/GxKhx5DYwFY1nlf2U8LvSjCU+UI5?=
 =?us-ascii?Q?bkUntAyxOQPfIb94aIeJHif/HvZpOx9F3r6+QFTnp+yHwjd4zdUkVNjhFi6A?=
 =?us-ascii?Q?k9/XLA1KFCX5jNhldbgQMdir4UMP+1t0ODi7hGkPG2AmpTpQz9BdGyWmNV94?=
 =?us-ascii?Q?IpqnKwWklTKXyr1crTKmGLDcpSIaY2c3M7eByZkjPy9xrczI9q3YzA359cdU?=
 =?us-ascii?Q?vV/Ws59Wk6idNDEeULzXmfuunJSP99DP7qLNAgzfXIZr/f8jhHXgKZUPowfw?=
 =?us-ascii?Q?thgjThxnzE/lnY3Yohq9vm6F3bA+BPPuuh2V90OJqX3xB1PrnVkvmajt6QIL?=
 =?us-ascii?Q?Cd5Bl4t3B4bzmMtJNR5UIn6PTAYptA5cGxdeufRjuupdqgRf3cRVAFjtUOpA?=
 =?us-ascii?Q?OgZY9G43d0MXD0QCy7/guVtxVot1y7gr3MrkJyCBQiGWUxILKTBZY8OX6dlf?=
 =?us-ascii?Q?Wuhe0x4Sk4K7iKr48GDF0IGcD1rMvciX95paIbOg764DxXQeRouY4eLf3usQ?=
 =?us-ascii?Q?etg5GIxJQbbk9ssnmhnsTLPtDvqnqYsnz8mGq5WUflpzhRUPsi4mqhcIqrvN?=
 =?us-ascii?Q?AJ/vr3TR2I0ZxBKtbin2GIBsB8JMtalzGrnIbh2xbA0POsJ4aCBMIG6tgYHQ?=
 =?us-ascii?Q?n/4jz8r8kgOWdy2Cv5QBNXk2UW7poGh89jQjUBzVoW7lO1HbTVpKBBqqy6n/?=
 =?us-ascii?Q?sDRXPDOK1RM7DxD6gIDri0QdKni6xH/xqUI3y0NuG5CyxN61TdBAk9qspL8Y?=
 =?us-ascii?Q?5Mb5ScBtuRtF3NbtrafH/oWOP8Auq1S7z/ihGEEYWtAupsqMW0pQOWcAwZe+?=
 =?us-ascii?Q?VwdvvxMK2iW4vp7HLeDbzYcf8LqwV7gmt7/6cyhwEtkFN9d/WUwqRsdt1Vyl?=
 =?us-ascii?Q?fgofWyaNjhir8wFiXooHX75E7CChUQFEqT/yAbFvUBaRqRDdmF5ufUCgChmb?=
 =?us-ascii?Q?M//xJWV84Tyidw+ShM9CNEWHMc+1tjtpOF6AycS4vTOSrfphUtgeLps/YqwS?=
 =?us-ascii?Q?XHfyhZEF2XcqNW9M0kiDqhUEHM5OWjCn0lAH2qyw2BlSBK+2MtKBFtY9FTv+?=
 =?us-ascii?Q?/AdNZq0oapb5vsHc8AjRMZu1AN1gkSKEumVVFndg?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d62c16ff-6170-4340-b8e5-08dc863e69f9
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Jun 2024 15:36:20.7193 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Ws7pEtm7TeMHL9UQGiOAipNZydtj+dUkegEATztjTEfQ6x68Dst64NQpp1WeM34bE1TeKcMNbQOzHkgoH53+nQ==
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

On Tue, Jun 04, 2024 at 06:25:24PM +0300, Jani Nikula wrote:
> Avoid the implicit dev_priv local variable use, and pass dev_priv
> explicitly to the TRANS_VTOTAL register macro.

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/icl_dsi.c           |  2 +-
>  drivers/gpu/drm/i915/display/intel_crt.c         |  3 ++-
>  drivers/gpu/drm/i915/display/intel_display.c     | 10 +++++-----
>  drivers/gpu/drm/i915/display/intel_pch_display.c |  2 +-
>  drivers/gpu/drm/i915/gvt/handlers.c              |  2 +-
>  drivers/gpu/drm/i915/i915_reg.h                  |  2 +-
>  drivers/gpu/drm/i915/intel_gvt_mmio_table.c      |  8 ++++----
>  7 files changed, 15 insertions(+), 14 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
> index f87a2170ac91..f95709321ea6 100644
> --- a/drivers/gpu/drm/i915/display/icl_dsi.c
> +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
> @@ -953,7 +953,7 @@ gen11_dsi_set_transcoder_timings(struct intel_encoder *encoder,
>  		 * struct drm_display_mode.
>  		 * For interlace mode: program required pixel minus 2
>  		 */
> -		intel_de_write(dev_priv, TRANS_VTOTAL(dsi_trans),
> +		intel_de_write(dev_priv, TRANS_VTOTAL(dev_priv, dsi_trans),
>  			       VACTIVE(vactive - 1) | VTOTAL(vtotal - 1));
>  	}
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_crt.c b/drivers/gpu/drm/i915/display/intel_crt.c
> index 10e95dc425a6..29ab5b112b86 100644
> --- a/drivers/gpu/drm/i915/display/intel_crt.c
> +++ b/drivers/gpu/drm/i915/display/intel_crt.c
> @@ -708,7 +708,8 @@ intel_crt_load_detect(struct intel_crt *crt, enum pipe pipe)
>  	drm_dbg_kms(&dev_priv->drm, "starting load-detect on CRT\n");
>  
>  	save_bclrpat = intel_de_read(dev_priv, BCLRPAT(cpu_transcoder));
> -	save_vtotal = intel_de_read(dev_priv, TRANS_VTOTAL(cpu_transcoder));
> +	save_vtotal = intel_de_read(dev_priv,
> +				    TRANS_VTOTAL(dev_priv, cpu_transcoder));
>  	vblank = intel_de_read(dev_priv, TRANS_VBLANK(cpu_transcoder));
>  
>  	vtotal = REG_FIELD_GET(VTOTAL_MASK, save_vtotal) + 1;
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 111f2c400ecd..c681a23be1eb 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -2720,7 +2720,7 @@ static void intel_set_transcoder_timings(const struct intel_crtc_state *crtc_sta
>  		       HSYNC_START(adjusted_mode->crtc_hsync_start - 1) |
>  		       HSYNC_END(adjusted_mode->crtc_hsync_end - 1));
>  
> -	intel_de_write(dev_priv, TRANS_VTOTAL(cpu_transcoder),
> +	intel_de_write(dev_priv, TRANS_VTOTAL(dev_priv, cpu_transcoder),
>  		       VACTIVE(crtc_vdisplay - 1) |
>  		       VTOTAL(crtc_vtotal - 1));
>  	intel_de_write(dev_priv, TRANS_VBLANK(cpu_transcoder),
> @@ -2736,7 +2736,7 @@ static void intel_set_transcoder_timings(const struct intel_crtc_state *crtc_sta
>  	 * bits. */
>  	if (IS_HASWELL(dev_priv) && cpu_transcoder == TRANSCODER_EDP &&
>  	    (pipe == PIPE_B || pipe == PIPE_C))
> -		intel_de_write(dev_priv, TRANS_VTOTAL(pipe),
> +		intel_de_write(dev_priv, TRANS_VTOTAL(dev_priv, pipe),
>  			       VACTIVE(crtc_vdisplay - 1) |
>  			       VTOTAL(crtc_vtotal - 1));
>  }
> @@ -2767,7 +2767,7 @@ static void intel_set_transcoder_timings_lrr(const struct intel_crtc_state *crtc
>  	 * The double buffer latch point for TRANS_VTOTAL
>  	 * is the transcoder's undelayed vblank.
>  	 */
> -	intel_de_write(dev_priv, TRANS_VTOTAL(cpu_transcoder),
> +	intel_de_write(dev_priv, TRANS_VTOTAL(dev_priv, cpu_transcoder),
>  		       VACTIVE(crtc_vdisplay - 1) |
>  		       VTOTAL(crtc_vtotal - 1));
>  }
> @@ -2826,7 +2826,7 @@ static void intel_get_transcoder_timings(struct intel_crtc *crtc,
>  	adjusted_mode->crtc_hsync_start = REG_FIELD_GET(HSYNC_START_MASK, tmp) + 1;
>  	adjusted_mode->crtc_hsync_end = REG_FIELD_GET(HSYNC_END_MASK, tmp) + 1;
>  
> -	tmp = intel_de_read(dev_priv, TRANS_VTOTAL(cpu_transcoder));
> +	tmp = intel_de_read(dev_priv, TRANS_VTOTAL(dev_priv, cpu_transcoder));
>  	adjusted_mode->crtc_vdisplay = REG_FIELD_GET(VACTIVE_MASK, tmp) + 1;
>  	adjusted_mode->crtc_vtotal = REG_FIELD_GET(VTOTAL_MASK, tmp) + 1;
>  
> @@ -8196,7 +8196,7 @@ void i830_enable_pipe(struct drm_i915_private *dev_priv, enum pipe pipe)
>  		       HBLANK_START(640 - 1) | HBLANK_END(800 - 1));
>  	intel_de_write(dev_priv, TRANS_HSYNC(dev_priv, cpu_transcoder),
>  		       HSYNC_START(656 - 1) | HSYNC_END(752 - 1));
> -	intel_de_write(dev_priv, TRANS_VTOTAL(cpu_transcoder),
> +	intel_de_write(dev_priv, TRANS_VTOTAL(dev_priv, cpu_transcoder),
>  		       VACTIVE(480 - 1) | VTOTAL(525 - 1));
>  	intel_de_write(dev_priv, TRANS_VBLANK(cpu_transcoder),
>  		       VBLANK_START(480 - 1) | VBLANK_END(525 - 1));
> diff --git a/drivers/gpu/drm/i915/display/intel_pch_display.c b/drivers/gpu/drm/i915/display/intel_pch_display.c
> index 480c0e09434d..611a9cd2596f 100644
> --- a/drivers/gpu/drm/i915/display/intel_pch_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_pch_display.c
> @@ -231,7 +231,7 @@ static void ilk_pch_transcoder_set_timings(const struct intel_crtc_state *crtc_s
>  		       intel_de_read(dev_priv, TRANS_HSYNC(dev_priv, cpu_transcoder)));
>  
>  	intel_de_write(dev_priv, PCH_TRANS_VTOTAL(pch_transcoder),
> -		       intel_de_read(dev_priv, TRANS_VTOTAL(cpu_transcoder)));
> +		       intel_de_read(dev_priv, TRANS_VTOTAL(dev_priv, cpu_transcoder)));
>  	intel_de_write(dev_priv, PCH_TRANS_VBLANK(pch_transcoder),
>  		       intel_de_read(dev_priv, TRANS_VBLANK(cpu_transcoder)));
>  	intel_de_write(dev_priv, PCH_TRANS_VSYNC(pch_transcoder),
> diff --git a/drivers/gpu/drm/i915/gvt/handlers.c b/drivers/gpu/drm/i915/gvt/handlers.c
> index 06ba39b2b103..00cf35a9669e 100644
> --- a/drivers/gpu/drm/i915/gvt/handlers.c
> +++ b/drivers/gpu/drm/i915/gvt/handlers.c
> @@ -678,7 +678,7 @@ static void vgpu_update_refresh_rate(struct intel_vgpu *vgpu)
>  
>  	/* Get H/V total from transcoder timing */
>  	htotal = (vgpu_vreg_t(vgpu, TRANS_HTOTAL(dev_priv, TRANSCODER_A)) >> TRANS_HTOTAL_SHIFT);
> -	vtotal = (vgpu_vreg_t(vgpu, TRANS_VTOTAL(TRANSCODER_A)) >> TRANS_VTOTAL_SHIFT);
> +	vtotal = (vgpu_vreg_t(vgpu, TRANS_VTOTAL(dev_priv, TRANSCODER_A)) >> TRANS_VTOTAL_SHIFT);
>  
>  	if (dp_br && link_n && htotal && vtotal) {
>  		u64 pixel_clk = 0;
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 0d33815b91a4..3b48022b29a7 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -1220,7 +1220,7 @@
>  #define TRANS_HTOTAL(dev_priv, trans)	_MMIO_TRANS2(dev_priv, (trans), _TRANS_HTOTAL_A)
>  #define TRANS_HBLANK(dev_priv, trans)	_MMIO_TRANS2(dev_priv, (trans), _TRANS_HBLANK_A)
>  #define TRANS_HSYNC(dev_priv, trans)	_MMIO_TRANS2(dev_priv, (trans), _TRANS_HSYNC_A)
> -#define TRANS_VTOTAL(trans)	_MMIO_TRANS2(dev_priv, (trans), _TRANS_VTOTAL_A)
> +#define TRANS_VTOTAL(dev_priv, trans)	_MMIO_TRANS2(dev_priv, (trans), _TRANS_VTOTAL_A)
>  #define TRANS_VBLANK(trans)	_MMIO_TRANS2(dev_priv, (trans), _TRANS_VBLANK_A)
>  #define TRANS_VSYNC(trans)	_MMIO_TRANS2(dev_priv, (trans), _TRANS_VSYNC_A)
>  #define BCLRPAT(trans)		_MMIO_TRANS2(dev_priv, (trans), _BCLRPAT_A)
> diff --git a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
> index 09d8960f7398..5dd85943e0a1 100644
> --- a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
> +++ b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
> @@ -234,7 +234,7 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
>  	MMIO_D(TRANS_HTOTAL(dev_priv, TRANSCODER_A));
>  	MMIO_D(TRANS_HBLANK(dev_priv, TRANSCODER_A));
>  	MMIO_D(TRANS_HSYNC(dev_priv, TRANSCODER_A));
> -	MMIO_D(TRANS_VTOTAL(TRANSCODER_A));
> +	MMIO_D(TRANS_VTOTAL(dev_priv, TRANSCODER_A));
>  	MMIO_D(TRANS_VBLANK(TRANSCODER_A));
>  	MMIO_D(TRANS_VSYNC(TRANSCODER_A));
>  	MMIO_D(BCLRPAT(TRANSCODER_A));
> @@ -243,7 +243,7 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
>  	MMIO_D(TRANS_HTOTAL(dev_priv, TRANSCODER_B));
>  	MMIO_D(TRANS_HBLANK(dev_priv, TRANSCODER_B));
>  	MMIO_D(TRANS_HSYNC(dev_priv, TRANSCODER_B));
> -	MMIO_D(TRANS_VTOTAL(TRANSCODER_B));
> +	MMIO_D(TRANS_VTOTAL(dev_priv, TRANSCODER_B));
>  	MMIO_D(TRANS_VBLANK(TRANSCODER_B));
>  	MMIO_D(TRANS_VSYNC(TRANSCODER_B));
>  	MMIO_D(BCLRPAT(TRANSCODER_B));
> @@ -252,7 +252,7 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
>  	MMIO_D(TRANS_HTOTAL(dev_priv, TRANSCODER_C));
>  	MMIO_D(TRANS_HBLANK(dev_priv, TRANSCODER_C));
>  	MMIO_D(TRANS_HSYNC(dev_priv, TRANSCODER_C));
> -	MMIO_D(TRANS_VTOTAL(TRANSCODER_C));
> +	MMIO_D(TRANS_VTOTAL(dev_priv, TRANSCODER_C));
>  	MMIO_D(TRANS_VBLANK(TRANSCODER_C));
>  	MMIO_D(TRANS_VSYNC(TRANSCODER_C));
>  	MMIO_D(BCLRPAT(TRANSCODER_C));
> @@ -261,7 +261,7 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
>  	MMIO_D(TRANS_HTOTAL(dev_priv, TRANSCODER_EDP));
>  	MMIO_D(TRANS_HBLANK(dev_priv, TRANSCODER_EDP));
>  	MMIO_D(TRANS_HSYNC(dev_priv, TRANSCODER_EDP));
> -	MMIO_D(TRANS_VTOTAL(TRANSCODER_EDP));
> +	MMIO_D(TRANS_VTOTAL(dev_priv, TRANSCODER_EDP));
>  	MMIO_D(TRANS_VBLANK(TRANSCODER_EDP));
>  	MMIO_D(TRANS_VSYNC(TRANSCODER_EDP));
>  	MMIO_D(BCLRPAT(TRANSCODER_EDP));
> -- 
> 2.39.2
> 
