Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A63EF7FE042
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Nov 2023 20:23:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 160CE10E378;
	Wed, 29 Nov 2023 19:23:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C324510E378
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Nov 2023 19:23:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701285815; x=1732821815;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=3aNm2xf3ddyjT/bNUCpF7rZNFI4A/42Vax1TwZsH784=;
 b=PHQxAXLZZEuBXC0M7VfwMC8m8fNZRW4ToGeVBUTy90KRu3iDXfMXeb0r
 wMgtqyBJofVIXjKbiTYMc+96A2CVA475pJqgu9BLBpj7eE4ouW821gn2Z
 AT9u2TRgrgv4dUXAzsRNfppiq9gVw/uZ2SdAeWQzwQduwLT02JmwASH2Y
 kDT7YhMvCjhT+NLLLHgpaQOG0vCH6Xz2Ai5y41SoVkc6gRo8AnTpw10TQ
 qnqeQ3StVRyx3tl2WGKHbafKQKNVs+WgqaMUSI3kxtjv/40HqXAteDjA/
 cF+qXkyRW9Nb9OOoeSxuDmqQtHiMSoTBKgB8A8Hl4+3Acyc5dRO0QPYlt A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10909"; a="383608247"
X-IronPort-AV: E=Sophos;i="6.04,237,1695711600"; d="scan'208";a="383608247"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Nov 2023 11:23:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10909"; a="745367245"
X-IronPort-AV: E=Sophos;i="6.04,237,1695711600"; d="scan'208";a="745367245"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 Nov 2023 11:23:35 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Wed, 29 Nov 2023 11:23:35 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Wed, 29 Nov 2023 11:23:35 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Wed, 29 Nov 2023 11:23:34 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cToFFEngBokNFkQdM11kkDJU4YQLtN/90dQYJQ8g/Z7iRsbzA4GcYjYpcpqpZGAGX/Cs54UdZc9JpZ2aHtfsTB+fRi8s6BAtD696o5ySuT4iWbmCOFCLrQW3K8NzZwlOg2tgnDWh2MRmXw8ocBljAX9o8zzwDTI2psun6O2uVjGI71flNHYoS/jkc7Dcwr4AdVuVJFX7Y0Smarc0omufsHSrPj8E2kkfHNCToPt82R3oFzdgO62q2ofw1bDzlPuiYHp8Q0Byb07typX0RHRBlzrL0REd6Z6RbxurHwuyT9rPkvWzfQpyzFbWDusGfcdZMsttGnn6nJDMs9zFVDRmCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CMEknNOOpHtd4eqhMLNUV7hGct3Spe0Qg3dLGzHpjtk=;
 b=IX4IaQM/krP3DxKruKVHBCR1XS+39HLypzBZT++6BUxqikMDLrwhrgAmI7wRozN6IVmexgVWYpWatZfA8ZqL+jh3AI6yEfLDDa58sh6UDrfLwB9vwlK9rz1BvU5ZzjrMew8vF2CIU59nUqNS+E8UrekLpdbXqWsbgpl6UeeEpdWCb8oj3LxcswyXYI2/VvBhHeHusOcJ+vGjTkg485ET32w2eNSmCuuKAEdVpNbXImFhknBF0BwMOhj2tUHpqqn8k5l/XM+YfCa7s1opH2qknWvBaZCTSFJ4y6rEZf9Q8MSMloBndwkiOFTYF9JVkQCvCSxs5GQIXTcEVdBwU4C/Dg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by BL1PR11MB5399.namprd11.prod.outlook.com (2603:10b6:208:318::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7046.22; Wed, 29 Nov
 2023 19:23:32 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::ada2:f954:a3a5:6179]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::ada2:f954:a3a5:6179%5]) with mapi id 15.20.7046.023; Wed, 29 Nov 2023
 19:23:32 +0000
Date: Wed, 29 Nov 2023 14:23:28 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <ZWePsA5BLZDsIGDT@intel.com>
References: <20231129173317.1192269-1-jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20231129173317.1192269-1-jani.nikula@intel.com>
X-ClientProxiedBy: BYAPR07CA0107.namprd07.prod.outlook.com
 (2603:10b6:a03:12b::48) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|BL1PR11MB5399:EE_
X-MS-Office365-Filtering-Correlation-Id: c0b361ac-ff27-47c3-5300-08dbf110accb
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: cXkCAuQs2zXCqBI3Eflp2NDEeD3aHnUMm1McfKv7Knv528ugnnCMEXOHBtVJPQU1gAGjdfuZItbdBhHaQdzvwtZtdELsTwIfZUmzTdOhAJR1zWFfk7u6ZTw07LnStCgbmMjQk5NnE7PYfyx8yYNRlQ1v3Hi9IJRfdCyVRJFVf5GWfXuEzFFe7YAHiQrMvjtzEps66SUExRZZJzxn5UTjaGIiYLEoAPqkVI202T4ZviOJwBsstYsIs5gU8kqjBjmZhaIQz9tgYkIdTBUAblMYbePie+OQr9srA3nzmduTeXLusOuscJnw1rix5bsxM3PJGCcyC3avQpW0FK7yu6IQ6xDzsZMy89KPlN7ZzCv+9SbFncAjeTn8fhQOOfZsuxKdXCwZUqGG0rAHoHGLe9+DperM4WTJyOkUUpAOlS2RZWa3E/LcWPIcZsZiShzldj7rHSL3JhQf1pR3j0jwYr1Fd3KvHdCv+5b8DctCc+L9t8bxkrplxjlifOTdPh+n+1CylogdHYupdpIzbNGbjJKXZAhk+w4l8kDLtgLqVl6XnLEvCQFpFJynSJXp+3ONqF0wHZbrcEiEu/Um5ZY3mbsCOC5I086z9ggBcqyfAYyqEJIX5gptQ775Ohgr97LjdeO+
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(396003)(39860400002)(366004)(376002)(136003)(230922051799003)(186009)(451199024)(1800799012)(64100799003)(82960400001)(38100700002)(202311291699002)(83380400001)(2906002)(86362001)(5660300002)(44832011)(8936002)(8676002)(6862004)(4326008)(66556008)(66476007)(37006003)(66946007)(6486002)(478600001)(6666004)(41300700001)(6506007)(6636002)(316002)(36756003)(6512007)(26005)(2616005);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Ub5F/MhuzUbA7IZGzDUzNJ7jACYJLj2ynij8rWIkTUhscyYxU9AZMNx73p6a?=
 =?us-ascii?Q?jRTB/AKlbpJq64aFHHhb2D7+l40OLuhqUIBP8yDu4b0sPDmmrVLMn00BCmEb?=
 =?us-ascii?Q?6ZvlkZJRMICsgLyUpFoCUrc3GwUmPxL7wzHVI+hLyzr76Cac0g5rFnUkqJ+k?=
 =?us-ascii?Q?qYUsJPXilFRpg5UTpe0RavkGSyZpsLOsylfjrRakO+qBoVNYMkZcRg+snO3w?=
 =?us-ascii?Q?CgybXBfu/HBLgVuRGIDM1BTiCj9bxHGDHSkWX4MONDVkhl1wW1CeqdjdS2H2?=
 =?us-ascii?Q?fNAJlLzkNSERJDAJCiG7JeBQKMVXJr93uoZlnIdoOgcj1geZD1BkZO3SpnHW?=
 =?us-ascii?Q?F3mCq4neD47DD2ey+V32qRvhG3knWJIiizfSsEcwnHm4Wcp3ALGtNUdu78VM?=
 =?us-ascii?Q?+cmH2TgWLAGjDiITdKe1CQjFnLxOGdMTUJJkVuNSr1kSLvbDZEYEmYhn444d?=
 =?us-ascii?Q?zpzWiwauALOWFT6THOaiNr2N6Od9U0tXx8HycHfPYW06z7PirBq7zndhFxE5?=
 =?us-ascii?Q?U68kkqsABiIAT3CMXXGZVf/dbcx35UQZL9aBVJlQzwTGa/DwONc/SegrZnCR?=
 =?us-ascii?Q?rUOthgtAFky9BodbQsHtXi2at0OmFzAANzdrAHp82s8cMzlrQiCC/hFoWEHw?=
 =?us-ascii?Q?Ro48UJzR7NmVzmPM0ZrzwNcg0jnlSGmpF3A/iChXip2/boBR9TzFKu5H7RXh?=
 =?us-ascii?Q?Bre+Zl2j/tIBnHeHV6tqOTEUYowZrhqcEXFXuvsiOzmYc4tKfVJRUo/4TlEr?=
 =?us-ascii?Q?LvLxlu8He3Y8IKXihdI70AeJJG1chau0lKHXsiBrEmniAlXQ3ECHhqrNl095?=
 =?us-ascii?Q?l5yvCXNQGO+M7yZMKmGk/0P23ZbpYDUfsWi9+dmu9ckBH3FTghYdrbIIs8LJ?=
 =?us-ascii?Q?uO7vZNHosBP8IdN/QqX0NaI392UBe3r0fZJd/rNhqVfNDqBsjhXE9UF5U6+5?=
 =?us-ascii?Q?8YLCA53skWdtqtyQdJKd/ywo/9JLYbLhM7lam5qXjzl82NO4rRSF92pzLuW3?=
 =?us-ascii?Q?5yNuqqmqOS9ZU2og/S4gSn6kxovzSJpPL3bUjng+i8T7ujEjNEvsg4F9GZkf?=
 =?us-ascii?Q?0Pvcdp3Dsj2YtZu+7yWjvPq0VnzgUEHWXb5k3VMUqZk5llpaVjlw2jUi+2Bm?=
 =?us-ascii?Q?FmywDmbph1sv2Y/Ya6JtpFRUquRrTuGk6zDx9goxz/7gpTqhoAMStA1h/rLV?=
 =?us-ascii?Q?6JrIUuqOVJ90jllmlI9cLpxnNVqqCzJxBOgB2Yhnlb3flccgoB1P6hfkrepV?=
 =?us-ascii?Q?BmJ+zF8TdfsrHuC+5fLgVwHkJVKwmZuPr9w7iVgEwyJXTJcIDP6w3lkDwkFQ?=
 =?us-ascii?Q?bRzUfTvhmGs5wblQnB7MSJyrwF4DMMsTp8rQWWpAKa50jXAv3k4aRUKT8Rsa?=
 =?us-ascii?Q?6tgBX6LX1uYXBApvlSVbdQt64FcDSIwAYqJCnDGEpvW55x3ZsEfMWt1nu+XD?=
 =?us-ascii?Q?Q63Oo+FnMfhZKwlfJHbeD2TPxzMvUl+nDRqung1jUWTkjaexXUMciyCllWpQ?=
 =?us-ascii?Q?9d4gN9OWZoZOPSYUZXNHBosV0Al7xCWUkvFJV/LsOvna8cLLtffLzjqH/q0A?=
 =?us-ascii?Q?mjd15F6jWqn7T9mxdJqKHMMU+AKadKncVhFTpMulSrUb7xL+W0dRDPdnyuNi?=
 =?us-ascii?Q?3w=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c0b361ac-ff27-47c3-5300-08dbf110accb
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Nov 2023 19:23:32.5874 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: wZd68vMGaAflBnmn+lUle0Is0ep65LGgX/Hao9tQ3QPzg0N7Ge7943Ij3MWCUwtD9FJxx8ExZKDbjGlMZUjFTQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5399
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 1/2] drm/i915: use PIPE_CONF_CHECK_BOOL()
 for bool members
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

On Wed, Nov 29, 2023 at 07:33:16PM +0200, Jani Nikula wrote:
> Don't treat bools as integers.
> 
> v2: Rebase
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 9dc22fc8b3d3..d62cdae7ab6b 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -5091,8 +5091,8 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
>  #define PIPE_CONF_QUIRK(quirk) \
>  	((current_config->quirks | pipe_config->quirks) & (quirk))
>  
> -	PIPE_CONF_CHECK_I(hw.enable);
> -	PIPE_CONF_CHECK_I(hw.active);
> +	PIPE_CONF_CHECK_BOOL(hw.enable);
> +	PIPE_CONF_CHECK_BOOL(hw.active);
>  
>  	PIPE_CONF_CHECK_I(cpu_transcoder);
>  	PIPE_CONF_CHECK_I(mst_master_transcoder);
> @@ -5301,8 +5301,8 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
>  	PIPE_CONF_CHECK_I(dsc.config.second_line_bpg_offset);
>  	PIPE_CONF_CHECK_I(dsc.config.nsl_bpg_offset);
>  
> -	PIPE_CONF_CHECK_I(dsc.compression_enable);
> -	PIPE_CONF_CHECK_I(dsc.dsc_split);
> +	PIPE_CONF_CHECK_BOOL(dsc.compression_enable);
> +	PIPE_CONF_CHECK_BOOL(dsc.dsc_split);
>  	PIPE_CONF_CHECK_I(dsc.compressed_bpp_x16);
>  
>  	PIPE_CONF_CHECK_BOOL(splitter.enable);
> -- 
> 2.39.2
> 
