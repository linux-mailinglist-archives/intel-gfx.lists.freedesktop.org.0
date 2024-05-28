Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 38E288D2215
	for <lists+intel-gfx@lfdr.de>; Tue, 28 May 2024 18:58:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1744210F0BA;
	Tue, 28 May 2024 16:58:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BpU1SrXS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4DC0210F9FA
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 May 2024 16:58:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716915499; x=1748451499;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=lDzT7niI5MQqIGLqAQYgt6kbieCZ8woUJKDsA1PyBlg=;
 b=BpU1SrXSjo9lWpkADn5cSTBJgkROjIv1J3NyadLCtHZ7crhkLv8ci7m5
 6cHURqzTbpKvunANVyqU8cqhFojgds2KpjZ+RzIlO626GEcKPXu5jAm4p
 uu61bEdBV39+DdCQYncbx5y4b8hgYpNRanxrFQrRgV/UOJ80YGY405hx0
 0Ipt8eR1GXL5tnPd6e3XHXwxBYNENBb2CutE7abvUMyyCDBdie4zK7bXx
 yknWNWagCWlZiKe/LQ2NKXjqBRKG3LLglnfwlebHZw8fUzT0AmXYG40L0
 eUJfu3mZHXZFeayjSz4eZT2MZ7ZShTPjDipu4hVDxaqqo7xdGPN8b+NHi Q==;
X-CSE-ConnectionGUID: KfmTKGEETJWnZkk66fDkyQ==
X-CSE-MsgGUID: wWBXOeaqTMqRiAIFacpnUw==
X-IronPort-AV: E=McAfee;i="6600,9927,11085"; a="16225803"
X-IronPort-AV: E=Sophos;i="6.08,195,1712646000"; d="scan'208";a="16225803"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2024 09:58:18 -0700
X-CSE-ConnectionGUID: 4X8vbIB2Q/enhaag4ucHvg==
X-CSE-MsgGUID: 2WRm8BdKSge3kvHBPviOFA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,195,1712646000"; d="scan'208";a="35081829"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 28 May 2024 09:58:18 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 28 May 2024 09:58:18 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 28 May 2024 09:58:18 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 28 May 2024 09:58:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=M3kO4K9memuZYrhpzFlY1MjiobvMiIVt+5Cgv1kVBXYVOAB/RuNn8Tx9PuPrsAp5ax6cYJuk8cCLX39rinQBVgD4JEuXFJYko2JknCxelEipMOxwLOo+Q0Op3qnQQXxvp/5BuQdS5WmTtqlBV3ueGX5WLXra/HkiFi+REXJ9Dz2T4YYA1l3eAHs9jSc9TEDFr7ygUmVFvE4GMO88H9FZTLVp3/1ZqjLHG15pgoX3l18GPYB9+HyTSUDbD7g4yDbY6yInMg2RUh10KWLKaS7+pdCLsoVOMVeAC/8IiIrnFpX9g74yXdqzlqgT70rRYUwpAL+jLnWBDHhu8RhStI1ywA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZiPX87xKcwI1ZfkkILDmCq8W2fLXWoU8SwOftBJoTHI=;
 b=Tzm6ONyOvhgVmeh7x0nS5empHRs6hkhpne5qGeN2Zr/ouPPDEuEoa39EUaqebG/1jdUIEN4DGDI90UpfLOD0GqtMBozNybPD3+nliZctX4Rje31Vkfo9kMd98go4qVSwLWDJlNRangSVCne15yoslGxDF2pYLQwxD2z/4ecEPq2nGP6hmlWVM9qQTxyo5OE1OeHs6HVE4LaA9JP0Abi1dC5/nbRrGOtvqNiNZ7fFAdwbiisexpziapW2BsAdbrYQIeaGTo/1Cedg/l3F51MbPgRH0oN6DATHUk7Dgiq6L92lN9GsOLT3DlKPR7j+6TJa1cty74KLhCFBjzUa5yB5sw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by CO1PR11MB5010.namprd11.prod.outlook.com (2603:10b6:303:93::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7611.30; Tue, 28 May
 2024 16:58:15 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413%5]) with mapi id 15.20.7611.025; Tue, 28 May 2024
 16:58:15 +0000
Date: Tue, 28 May 2024 12:58:11 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Luca Coelho <luciano.coelho@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <ville.syrjala@intel.com>
Subject: Re: [PATCH 2/2] drm/i915: move uapi.event outside spinlock in
 intel_crtc_vblank_work
Message-ID: <ZlYNIwxyv-6eA2bc@intel.com>
References: <20240528112901.476068-1-luciano.coelho@intel.com>
 <20240528112901.476068-3-luciano.coelho@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20240528112901.476068-3-luciano.coelho@intel.com>
X-ClientProxiedBy: SJ0PR03CA0349.namprd03.prod.outlook.com
 (2603:10b6:a03:39c::24) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|CO1PR11MB5010:EE_
X-MS-Office365-Filtering-Correlation-Id: b104d45e-40aa-41f8-a6f1-08dc7f375d6c
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|376005|366007|1800799015;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?2OY3pmpwDxBmr4aneUkDZfxR7NFa6GsUj6PDQ7nrk66yMRCUyg7BFwt1JVlH?=
 =?us-ascii?Q?1lvut0hSR/27fRtPtCbUtrK1QUPDCSbHXQZJB/a2ZT2r816UyNkd/bAMiUc3?=
 =?us-ascii?Q?Vy0s9TRSUmiIebY1eugz+ANZKOoeom+uXrO7eH15c6/RCE8aCLIKLtCljNFP?=
 =?us-ascii?Q?e/92UU93bUzJ/jr0VM7nObswbew3RDKDInFbk2aFi0K7hSbiWn2NFpJLerK8?=
 =?us-ascii?Q?/qZRUNsm0+DyIOoFOQilXARXFn7qt47nrAVvxwNzhACWMLtVWgkFXaaFpebu?=
 =?us-ascii?Q?FIud6/uvFVzHpa+bpJUbWvDjxrQIuUET3NLIYRBZkaztehyM6r0ja9J9ocoi?=
 =?us-ascii?Q?NDyVhPCaGsRGlXkbneQ1yiVPZUNkeaM3GnQfNBabEYRn9G1NRWtLl/5YGz6t?=
 =?us-ascii?Q?baMRLpA11Haj7vX5JpFUYp8ALAUwD09hF+Df4AIH+dilaWqeyiSXlGCq1EDZ?=
 =?us-ascii?Q?aAGc3FZlmm3JYZbCgK4JVjeRyOmo3JXcf0faNkCs336T8/rZrIw64nCzwS3/?=
 =?us-ascii?Q?9sXzXc2p57CcXpKX6H6b1rNLyyTMbFbe7TrEwfmGw2JkRzAVoZkwSCfHiWm/?=
 =?us-ascii?Q?Rdut1/uQixuU70gCF6HOcQNz0NU4sxBrMYdGoPAaqmTYngCoABLKoMEwBCWZ?=
 =?us-ascii?Q?2ox7kovU5+pvDV3VZxq+Zpe4KbP5183uPHTP0vas8bW7Nwt70dl0LbtSQ1Xf?=
 =?us-ascii?Q?kYCWMLH+onb3L7tYZpYqG80K8KLgIAEhmAoCxhMH2YG8UCk2rH0yG8VHO0CO?=
 =?us-ascii?Q?FrgdLlsZqSmra+Z4ERGc/0t4Nb+/jA9J+iZicyMhCScbtQ8qSTqGO5os+QaB?=
 =?us-ascii?Q?jMFCPZRHaymIdKgWaf4MZFcNztdiHAmFzyeN6q0SeCSZfSpTaCzGUvMgpWgX?=
 =?us-ascii?Q?DlyL3KLVgKr8FZzVpRumNMNgvlqW654BC4MxpRTAUg1+nwQV1lIua6BQBuPm?=
 =?us-ascii?Q?HBbrWCDLB1snK4nbADZyZTMlmNwFJKHUQAaz3Xt/xZ8OeO6bh87+G/Z84Tx8?=
 =?us-ascii?Q?SdeTYqx0wixz5rmVZ7aJ8g7Z2A4AG2wB2nDXigXTvXDjuRIbIckl7HCJcV/z?=
 =?us-ascii?Q?inJKzxwN94qIWOQjoDwAuBS36W0TMWGaSDIQO26J5UND5JLiksIfzcbUFPwm?=
 =?us-ascii?Q?aDJ+wKGqgxyo/i7CQUWjZky9T4UoLTtg93zzP0J6DllKgFwoRCEt01lPPkjh?=
 =?us-ascii?Q?7p1cuM5hb5cnXqUZml+rZIO3upvK375H6OiV8ipW7eTw/YlxW/gHYdXitCzu?=
 =?us-ascii?Q?zJZFIkKrjvJuCJ7A2tMkm4iMcpKk0pjO7UarVzOMJQ=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(366007)(1800799015); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?6tYFxGeIYZnSCn2MODZi+Fc9sufZZXEmUTljr3L/ux1yrwBkELLFCf9/7N1u?=
 =?us-ascii?Q?JBivkxCgU2UFSdkJWjkdud9MUlsD04uwxI5KLRBccpOlzPsnwHIv+/IviuoN?=
 =?us-ascii?Q?q1GM+zgD0YnYRI4VVYzUwrD82CNwEF6GYXHsAsX59Jj9eoW8Zdfdl1TK51r3?=
 =?us-ascii?Q?WJzVovcFyo00cIH1YUVjIOTD5q4ZAKS9Mx5EU/Hu4SlPWSbX2cHtE1vjAaCp?=
 =?us-ascii?Q?4744sjfDGA+F15jjuJOi9rxYf3C+42kWUDhGh37iapHwp0hR2yS/A7NJUEjf?=
 =?us-ascii?Q?a9ypKVzz+AfRh2nxiSh/4grkqhAAfH8tTpDlCDogFnt0lm8eJEu20yA/iaNS?=
 =?us-ascii?Q?Glc4w9OD2oeVqcvT4rMCx15GPNJ7eiah4seuAJHbaEElHk4mv4zL//3e9Xt5?=
 =?us-ascii?Q?6Hp7Dv8Ymb0itcQNgxhLPwKTr43A/MEp7ecdG0BMLktpQTSF/4q2yuPk4G1K?=
 =?us-ascii?Q?5XrAXj148GsgnhtTqWdk/0uDU3BT4k2uLiQVuNlqAjnz4Q37NWBCWEtZZ0sd?=
 =?us-ascii?Q?bKxkHKmsbadeTvVkgHWk5DbE+H3kDQ1c3h8T19nbnwqu1wf8Wo+ligeZghHY?=
 =?us-ascii?Q?HrsPIaai59NwtfQnOMm+dAtg2bb3aEEJ9J1GPK3u+kOBO8kBza2196UQcf1Y?=
 =?us-ascii?Q?L4X2ZnYJBOGxB40JwvUb1zaY8yKsHxuFi6D9nBhUJlcR8ATK6L21SIpyKfXm?=
 =?us-ascii?Q?YYNyzaoddyt9MVBQxw8sL6YxHaTxtKgtX7Q7n1URjtCdaqY3dujRmG6Ii4HW?=
 =?us-ascii?Q?tofu+kSq4ujLLg9gKSnCCehn94KziyojEkW7d1zjxkZ6q5ZtxpcwaBRIv0GI?=
 =?us-ascii?Q?M7VIJo2WjciIT3/9/JOiXN8q0qOOR8NikTEnwADL+7QykY8HXiD0WkW0lZbC?=
 =?us-ascii?Q?VNMP28DXEm3bCECANMfarwKvhSU55GqPoylXvOj2/Q7h4GAfLF3e7BVAfXMf?=
 =?us-ascii?Q?FuJWrTz8s2pAbUkw7EGBfPak+bYCxewsjdFTPhi+UeAudUoKb3E8oNRrXUrc?=
 =?us-ascii?Q?BNhpjnPMSMom3bZKRyfbSipss59bQnSJq0zAWvfouuEShZk9GH0M3NAmcRym?=
 =?us-ascii?Q?+iRb/mab0o/gDZVmrdZW6vQB4WR/61mCYWxynkxSm+snhqD90n4YiNw75hEI?=
 =?us-ascii?Q?BixfQ66wzvgftSymYcujpJUc9XOiS/CfMqDe9JKena5Ax1zBtAeBVAc2y4Y7?=
 =?us-ascii?Q?CUrpVLUZrcLdK7SBRSXNe1RTysRWWTHfDmmYnz7vakRqlo3zwSYGbk3YNV/0?=
 =?us-ascii?Q?odT70iB2j/ue1KcHdmFEPMknqVwCDf13H91jPXuR/UmnfL1JibnTmJ1bc5GH?=
 =?us-ascii?Q?DXnONetIC56fJL7dgWgl1BzK2Z1iIH4+CWoBo44/ApzgNZ/GgR4NSuf6PxtR?=
 =?us-ascii?Q?njQk/jXj3lOJb4lCW/GdSioxlJMpn618gHpJ8H1iW1vkX3RWWBNwhZKujFEW?=
 =?us-ascii?Q?IQTmw09/bzlnVjoQoAtRWjYBUfGwShQW0okSKo7jeRP4GfVH/8IYIjCTgmSC?=
 =?us-ascii?Q?0cIINJgn6J7i1nYNOLQs9k1X4wm/rqo2nHT+Re7lAZqu+6iYCvoFE/uIuD8D?=
 =?us-ascii?Q?5awj7VXWwFzDSs5xDznebGSgoHmBW8h9cK2GdwTO?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b104d45e-40aa-41f8-a6f1-08dc7f375d6c
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 May 2024 16:58:14.9888 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: IzLUiTeltLqUf8G/2li7Y62zh3NQk4hIMnAMPqUKDFpZZT06qvG6ZO+/1xTjd3Wc0uU9eSYq5FxoVBYVaeCwfQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5010
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

On Tue, May 28, 2024 at 02:29:01PM +0300, Luca Coelho wrote:
> In intel_crtc_vblank_work(), we access uapi.event before grabbing the
> event_lock spinlock, but modify it inside the spinlock block.  This
> causes some static analyzers to get confused and issue a warning.
> 
> The uapi.event value is not protected by the event_lock, so we can
> safely move it out of the protected block to prevent false positives.


My first reaction was to think about moving the lock before the if,
but then I went down to see the event_lock definition and usage in drm
and see some other precedences on this and agree this is safe and
better.

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> 
> Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_crtc.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
> index ca6dc1dc56c8..bf6e74e99f5c 100644
> --- a/drivers/gpu/drm/i915/display/intel_crtc.c
> +++ b/drivers/gpu/drm/i915/display/intel_crtc.c
> @@ -411,8 +411,8 @@ static void intel_crtc_vblank_work(struct kthread_work *base)
>  	if (crtc_state->uapi.event) {
>  		spin_lock_irq(&crtc->base.dev->event_lock);
>  		drm_crtc_send_vblank_event(&crtc->base, crtc_state->uapi.event);
> -		crtc_state->uapi.event = NULL;
>  		spin_unlock_irq(&crtc->base.dev->event_lock);
> +		crtc_state->uapi.event = NULL;
>  	}
>  
>  	trace_intel_crtc_vblank_work_end(crtc);
> -- 
> 2.39.2
> 
