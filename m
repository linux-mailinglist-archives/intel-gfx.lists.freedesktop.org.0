Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B1058FF0CA
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jun 2024 17:37:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ADC7810E215;
	Thu,  6 Jun 2024 15:37:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UOHcWDHf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B06F210E215
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Jun 2024 15:37:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717688222; x=1749224222;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=SFwDhnB34YSPNsp/m1oFKldoIkjvLyLOxon3S4a+0Tg=;
 b=UOHcWDHfm6jpdXwqBpCqh/gzrIsaJbDPdblQFvV9990PZHJUKDIskarT
 Ncv1Ls+Ximz+37i63v2kX+kbW7XxwWQOjEUV7YEgARQndgJGSkFVo/pLn
 1S3ntDVc1KlUPiYL62aNwhV8PFpqou2qAc17m4iRJxVJ+mVw36Dak9hFf
 /B4RhoQ8sOIUhu0QxfnybwG71XgJxtS+8sR0TZCCUSkaVp+ZdzLqVMQmk
 edwM2kXoc5A4XH2Zup3Yf4gQ0vpNLlDETR7v9wMlr7kzGpzpEH3a+je5A
 vBp0iWuADs+6H1eumWU3BYNCGsmHM5bxZUYR1ow8BfthA1YwNorGjHHZ3 Q==;
X-CSE-ConnectionGUID: fvgn3cW8R7anQRHJeObycg==
X-CSE-MsgGUID: se1+S1zxTa2zkWe8EY8t7w==
X-IronPort-AV: E=McAfee;i="6600,9927,11095"; a="36896772"
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="36896772"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2024 08:37:02 -0700
X-CSE-ConnectionGUID: xfUGbtyoS9aSJKqssA0DjA==
X-CSE-MsgGUID: b8NOViR8R5Cx+xMwKC9hsQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="68800031"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Jun 2024 08:37:02 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 6 Jun 2024 08:37:01 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 6 Jun 2024 08:37:01 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 6 Jun 2024 08:37:01 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.41) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 6 Jun 2024 08:37:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CqPGLKY6FNPT9lcKZZcY7aeFuamUHOIbMHrLVIwj+8nZCRu/STPk+JZErDv2zPSqWrPcC92oXxupqL5TzFk4Clys+ir6na8JoC7c7VU6hMdog88n8QzyvFOCq7NcuGoU5kFwETcLDAds69SfcRkr1MfUzi0s/MO6Ge69grmmHiHTuI6Tu1bLMbZ/6b3CW913TnPsr22Gfark9sEs5LV1UzQJ5gK+45UXQOosVzJnA4qMZWyreaROvcIF7LYcHreJCbSMtNwEL3gveRl3qv3AGvuovZzXsHUugAHviHIyfCxV2FtB5gU2WgFjDhf7O7Ylxn5n+KXe7UApAQN1fJnQEg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aqLi9Ity4rEDPllq3I025gwD/2YHFv8tAloF7ZGRmIs=;
 b=LhtOsWcMyzEy7vhdgxyYNTcC/T8ktv0eO+feSRbZrZu5Nl8h05MyssuPcf7daRwGQOTpXoxKPzXEYetTIC2Yo3T1AkETBGBeLvo6mjuYu1zqcID1WiU5Cruc23rDqFwI0YhIKF4DVHlch+TdEz7JICHN6FO6isB7uoHQJCh2yTZAeZrzjlMrdsAp/76WTu39Y3/3jUeCOJ7B9aQsjS4ZxmjE8tGWiuOCRgrB1qay6E/lLoHI8H3ykSIuXVdr18T+tXwN7kKJi+Tk+Tg2zDd0n3mgtPF56XJzUTCAm0qkMbKWH1shc97gOGpjs0U7FzaipEAmwto8Sf8bvo8qWSBd7Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by DS0PR11MB7459.namprd11.prod.outlook.com (2603:10b6:8:144::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.27; Thu, 6 Jun
 2024 15:36:58 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7633.033; Thu, 6 Jun 2024
 15:36:58 +0000
Date: Thu, 6 Jun 2024 11:36:56 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 09/65] drm/i915: pass dev_priv explicitly to BCLRPAT
Message-ID: <ZmHXmHguwHe7BK0r@intel.com>
References: <cover.1717514638.git.jani.nikula@intel.com>
 <f04d0313032d5820a14cc504af390b4b1006fae6.1717514638.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <f04d0313032d5820a14cc504af390b4b1006fae6.1717514638.git.jani.nikula@intel.com>
X-ClientProxiedBy: SJ0PR03CA0358.namprd03.prod.outlook.com
 (2603:10b6:a03:39c::33) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|DS0PR11MB7459:EE_
X-MS-Office365-Filtering-Correlation-Id: 7887ed9e-55f2-4e9c-91fc-08dc863e809a
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|376005|366007|1800799015;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?RrGZ8u3foc6/6wjCrKAxJvlkP3aTCjA4SWsrCwic1NF1SQ0Nl5mf+wsQ0PwK?=
 =?us-ascii?Q?l/Z1I7jUP5XAFUEqDVBwShuQZI8pjY9zwftD5T2FBWjssP34TDJHYhDTQZpk?=
 =?us-ascii?Q?eP31dWkBnsbYa7tc5NsrBq4e88dJrrlFVBo1aQYWwBiR70aA2IWAcOiGd7Gg?=
 =?us-ascii?Q?WhMFPRfkDHhTaUp1bn6ZlRVyrTqHICKPX+e/JKKfMCZnaW+D9oRfFyvaLJbo?=
 =?us-ascii?Q?pcF+rUTwLiM9xWp/+CfFib9VNIdS1n1Phh/Kcgs2g9s8cO2N8HUrUUHEPgMz?=
 =?us-ascii?Q?J+B/0ciK+/Du3qkha5tY1lMt0O5xmfH5i1XXmbcMpshnlqsi2fg28gngwMFz?=
 =?us-ascii?Q?NsM1kkBP5GcxSiqnryAMRtRpGIVkKHm04Fy6qegtsLkH4bkvXGqO8jEB7mHH?=
 =?us-ascii?Q?fqSrEQOLjAmZkN+k7PGLEZUFTuaD1lknMe1hno7oWevkZeT4XtWeDg1ISzPO?=
 =?us-ascii?Q?XAmAWLztBeLUo25AxsfwfFNVXqMvJ5fcBkeTxUxZE1dtmZZV2/i7jYB5zJA8?=
 =?us-ascii?Q?Uhg0cxH+m6bwlX814+SVq5co0vR5pBbCmCEYjbRNj05NwNPiR8fFmS8C64BM?=
 =?us-ascii?Q?lGlQbAGP77QOYFPArCohY9AbvawksVmgUSWMuwndkwCdSj34bwwb5viQlqAV?=
 =?us-ascii?Q?t8QWJjZah9wAti5EAF6Tfm/raehQJ8Sm1dvGbvy+K/4BM5hExinohAtqaYwI?=
 =?us-ascii?Q?d3wHtCcia5ChTWs6OjKivrc+nW97cpCgSQ3eDcfbr0UzcAqUZLYSjOwTwasy?=
 =?us-ascii?Q?Qd2DSTWbf+oFmPRbxRl4gMnXMEQ7kJqIeExaFOwN6vpWkkqri/PF32eBh/Eo?=
 =?us-ascii?Q?MU6r9CvNpkz5xW9KXScJ32xbgzbS9KTd3DgwbCHA3qpwVWMc/lEWALvU00cd?=
 =?us-ascii?Q?kgbyqlFw2ZT8g0d9j/p87WXV31lDXpkozvuvK4Rz21xM58dXUzappfz5Bw6G?=
 =?us-ascii?Q?O2rJUUvaKaZeeSu49rLyGpAPn4260oyDiE0wXvXgo71XFeA+eO4dmgMYL+x4?=
 =?us-ascii?Q?9u6imtKnyJYdvUOFiie4Jybqd+vw3gUs+clgv0uJWEFLS3jKyi6DM4awpcPQ?=
 =?us-ascii?Q?nKzojXZuDEdBVS+s4IT2+vDb+jaDvXYsCIqzuLO+IJdlr665AMDnfCacRzeT?=
 =?us-ascii?Q?IRShKMtMQ+FIWr1VbvsQi2KINCDxkOuYNh7Y2BUZP97ovUG3WN2olFVkgsmL?=
 =?us-ascii?Q?kCXZNKx9G/hCVt60zZuNnKl/MXVP3KsqUJGNBFC8oEkIO3FsITcHV7LyI9fo?=
 =?us-ascii?Q?Dq8nwfkmQyj/e7ISlqbQUy0nLWbw41hgVvFKoGqCiIyklvbWWBO1dFvM2f4f?=
 =?us-ascii?Q?cGj48U5C9/9sAUzEV2SaGfAI?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(366007)(1800799015); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?hceUvRicIiiWGPYQtG1a1hnaw6UaOv92k+ycjVtIFnVM8wRBNy7mC3mNyXYM?=
 =?us-ascii?Q?bu8E0MTt/jhSxFjL8obOk1xaEl98eHE/0biGpptrTqbKB0skgBnY22pHZLuM?=
 =?us-ascii?Q?RPI36vBGy984GfGNQA0uietgAWrnnHFgdCe44Mr2sy3b4g/weNo3vfO8Q6db?=
 =?us-ascii?Q?NDF3K8uV5w2qsgz/0Gd7rpxZ2iGZAmKffBiZlFQx9bcOYQvm8d2H1/d0Jsdi?=
 =?us-ascii?Q?296X/xF9CtGe98l+wkfthZlelUK04lEVJFBlWxf+BT4qXRN5NS5mrrylNypf?=
 =?us-ascii?Q?N+lo6RpSQ1lIEGzn/ws2uTWR79md0zeILnS+TokXGxSSWmgAwZot2aReo/R+?=
 =?us-ascii?Q?Icl4PaR3ikMq2Je3UTChdsg6bJHLgfHXXW9hIh0lxmiaJyOBWnTL6MZb5KQU?=
 =?us-ascii?Q?KLzrmmKlJq1yAr3lvoN3JifJL6n1+iq/9pGtmQCPDFAXQHUvisrv2p4HR9AE?=
 =?us-ascii?Q?jivIAWfgVi6LDBtOz4epnqutXEhFEVMKJUxu6VkIzWJCekGo7gv70M94n1PL?=
 =?us-ascii?Q?tCrSRlyrT9ReC6JPg1CfG3QmCePLf0StiLtP+X+ME6awcQ3wYw8OrlfZDVWb?=
 =?us-ascii?Q?979e3L9gghKkLuiFnTpre6yJ+wW6OXYi3smB37G269MSFS2w8GDESzmkPO6X?=
 =?us-ascii?Q?Zlso94XkoFJ+6ID5ECecFRNaXndbdXspfyMhf+lzCezTK5XtGVXgx7zknXC7?=
 =?us-ascii?Q?aVxF1GxO91yZ+k3kPK3lU0TN9U7OvQkYtPxZGFn/+RPvbkp0wb2R32d3FZAG?=
 =?us-ascii?Q?PxZptAJGzNerwwS8b3tuzyTZycRbBQKNItsb4Wp8T2iaK+FMkJbgql2v+Fv5?=
 =?us-ascii?Q?/HfKJkl9t0Tfs3780Nk4sRdledix7Hn8k93MYUXOEtyovrmjcmmJiYoyBiZj?=
 =?us-ascii?Q?idW4XebrJB01wiPZJocFJPgf7sft1K1EwPzPrIvhIUzeG8ajk6avn7wkK/BM?=
 =?us-ascii?Q?m6cmDEusT2Oe6BovfuHwqUG34AVLm4nI0OigWsytlZsvB6sdatNAb62JivGI?=
 =?us-ascii?Q?C7Mlv3+FYthZ9Om8eoHgV2K8XI5gAmS5CjNd3mra8Ux1Ng7raE7kLo3JdYfg?=
 =?us-ascii?Q?p63G5fdnDBvunxUkOQ6MVC9RbQSW4dEiqJCNXQ3F41wZ1idLt2aXc7zMk4mn?=
 =?us-ascii?Q?2I/3a+C9zy3qV18B/lLKO6ihl5fePx37dam8q6CuK1UGMDFHuFCrYRQISlZK?=
 =?us-ascii?Q?03wJrM9K4N0X8vvacS2EJcCMi63NBHT0slmRvWIT7ew0+fD8U3274rUkLhIJ?=
 =?us-ascii?Q?ajYZaINHtis0pcDeq22f7ldeQtpxhWrEpNMCi5RwLhl/F8QFNTmPvQZmYHhV?=
 =?us-ascii?Q?vMxhZBrAyVWWNaQGFFvcPCe0EHLROo8/2t0aLjFtMaSNgF7FYJMoq+urWUjZ?=
 =?us-ascii?Q?ZmHrCx+nKN5FHVvavIc/sxAqP1EklHmOk3Vl3pGv9oiRWdvwLnlPtnNN6z3L?=
 =?us-ascii?Q?M+E4k6FOA3yOh8WXxTbF0YdG275yJdyka+/I5a3gbkF+w3jxtIA5Jb3pQSoQ?=
 =?us-ascii?Q?A3/ZgqrOsINqM4riT5XKDRGrLnOCECuXUgAhibB22fyf23tY/fDrmRqyIpZt?=
 =?us-ascii?Q?kvBCqvkrScQ7Ncmh34aYCLQQNVVwif2wi60g9gQD?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7887ed9e-55f2-4e9c-91fc-08dc863e809a
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Jun 2024 15:36:58.5177 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: oIT/2ReK27qcyhwsdL/20ON/Xt/7tggVvYomySi6q+E1PvVDp4FIv9TIRqqJErLBKLXv8Q6Mw7SD8iAIynzKuA==
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

On Tue, Jun 04, 2024 at 06:25:27PM +0300, Jani Nikula wrote:
> Avoid the implicit dev_priv local variable use, and pass dev_priv
> explicitly to the BCLRPAT register macro.

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_crt.c     | 10 ++++++----
>  drivers/gpu/drm/i915/display/intel_display.c |  2 +-
>  drivers/gpu/drm/i915/i915_reg.h              |  2 +-
>  drivers/gpu/drm/i915/intel_gvt_mmio_table.c  |  8 ++++----
>  4 files changed, 12 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_crt.c b/drivers/gpu/drm/i915/display/intel_crt.c
> index 15569cf96c9c..2660c4a53e6f 100644
> --- a/drivers/gpu/drm/i915/display/intel_crt.c
> +++ b/drivers/gpu/drm/i915/display/intel_crt.c
> @@ -193,7 +193,7 @@ static void intel_crt_set_dpms(struct intel_encoder *encoder,
>  		adpa |= ADPA_PIPE_SEL(crtc->pipe);
>  
>  	if (!HAS_PCH_SPLIT(dev_priv))
> -		intel_de_write(dev_priv, BCLRPAT(crtc->pipe), 0);
> +		intel_de_write(dev_priv, BCLRPAT(dev_priv, crtc->pipe), 0);
>  
>  	switch (mode) {
>  	case DRM_MODE_DPMS_ON:
> @@ -707,7 +707,8 @@ intel_crt_load_detect(struct intel_crt *crt, enum pipe pipe)
>  
>  	drm_dbg_kms(&dev_priv->drm, "starting load-detect on CRT\n");
>  
> -	save_bclrpat = intel_de_read(dev_priv, BCLRPAT(cpu_transcoder));
> +	save_bclrpat = intel_de_read(dev_priv,
> +				     BCLRPAT(dev_priv, cpu_transcoder));
>  	save_vtotal = intel_de_read(dev_priv,
>  				    TRANS_VTOTAL(dev_priv, cpu_transcoder));
>  	vblank = intel_de_read(dev_priv,
> @@ -720,7 +721,7 @@ intel_crt_load_detect(struct intel_crt *crt, enum pipe pipe)
>  	vblank_end = REG_FIELD_GET(VBLANK_END_MASK, vblank) + 1;
>  
>  	/* Set the border color to purple. */
> -	intel_de_write(dev_priv, BCLRPAT(cpu_transcoder), 0x500050);
> +	intel_de_write(dev_priv, BCLRPAT(dev_priv, cpu_transcoder), 0x500050);
>  
>  	if (DISPLAY_VER(dev_priv) != 2) {
>  		u32 transconf = intel_de_read(dev_priv, TRANSCONF(cpu_transcoder));
> @@ -800,7 +801,8 @@ intel_crt_load_detect(struct intel_crt *crt, enum pipe pipe)
>  	}
>  
>  	/* Restore previous settings */
> -	intel_de_write(dev_priv, BCLRPAT(cpu_transcoder), save_bclrpat);
> +	intel_de_write(dev_priv, BCLRPAT(dev_priv, cpu_transcoder),
> +		       save_bclrpat);
>  
>  	return status;
>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 776e4450e4af..49f7ac0f7997 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -1870,7 +1870,7 @@ static void i9xx_pfit_enable(const struct intel_crtc_state *crtc_state)
>  
>  	/* Border color in case we don't scale up to the full screen. Black by
>  	 * default, change to something else for debugging. */
> -	intel_de_write(dev_priv, BCLRPAT(crtc->pipe), 0);
> +	intel_de_write(dev_priv, BCLRPAT(dev_priv, crtc->pipe), 0);
>  }
>  
>  /* Prefer intel_encoder_is_combo() */
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index c47aae3f70cd..92d9e8cdf782 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -1223,7 +1223,7 @@
>  #define TRANS_VTOTAL(dev_priv, trans)	_MMIO_TRANS2(dev_priv, (trans), _TRANS_VTOTAL_A)
>  #define TRANS_VBLANK(dev_priv, trans)	_MMIO_TRANS2(dev_priv, (trans), _TRANS_VBLANK_A)
>  #define TRANS_VSYNC(dev_priv, trans)	_MMIO_TRANS2(dev_priv, (trans), _TRANS_VSYNC_A)
> -#define BCLRPAT(trans)		_MMIO_TRANS2(dev_priv, (trans), _BCLRPAT_A)
> +#define BCLRPAT(dev_priv, trans)		_MMIO_TRANS2(dev_priv, (trans), _BCLRPAT_A)
>  #define TRANS_VSYNCSHIFT(trans)	_MMIO_TRANS2(dev_priv, (trans), _TRANS_VSYNCSHIFT_A)
>  #define PIPESRC(pipe)		_MMIO_TRANS2(dev_priv, (pipe), _PIPEASRC)
>  #define TRANS_MULT(trans)	_MMIO_TRANS2(dev_priv, (trans), _TRANS_MULT_A)
> diff --git a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
> index e618a16eafac..5e1ef52922cc 100644
> --- a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
> +++ b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
> @@ -237,7 +237,7 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
>  	MMIO_D(TRANS_VTOTAL(dev_priv, TRANSCODER_A));
>  	MMIO_D(TRANS_VBLANK(dev_priv, TRANSCODER_A));
>  	MMIO_D(TRANS_VSYNC(dev_priv, TRANSCODER_A));
> -	MMIO_D(BCLRPAT(TRANSCODER_A));
> +	MMIO_D(BCLRPAT(dev_priv, TRANSCODER_A));
>  	MMIO_D(TRANS_VSYNCSHIFT(TRANSCODER_A));
>  	MMIO_D(PIPESRC(TRANSCODER_A));
>  	MMIO_D(TRANS_HTOTAL(dev_priv, TRANSCODER_B));
> @@ -246,7 +246,7 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
>  	MMIO_D(TRANS_VTOTAL(dev_priv, TRANSCODER_B));
>  	MMIO_D(TRANS_VBLANK(dev_priv, TRANSCODER_B));
>  	MMIO_D(TRANS_VSYNC(dev_priv, TRANSCODER_B));
> -	MMIO_D(BCLRPAT(TRANSCODER_B));
> +	MMIO_D(BCLRPAT(dev_priv, TRANSCODER_B));
>  	MMIO_D(TRANS_VSYNCSHIFT(TRANSCODER_B));
>  	MMIO_D(PIPESRC(TRANSCODER_B));
>  	MMIO_D(TRANS_HTOTAL(dev_priv, TRANSCODER_C));
> @@ -255,7 +255,7 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
>  	MMIO_D(TRANS_VTOTAL(dev_priv, TRANSCODER_C));
>  	MMIO_D(TRANS_VBLANK(dev_priv, TRANSCODER_C));
>  	MMIO_D(TRANS_VSYNC(dev_priv, TRANSCODER_C));
> -	MMIO_D(BCLRPAT(TRANSCODER_C));
> +	MMIO_D(BCLRPAT(dev_priv, TRANSCODER_C));
>  	MMIO_D(TRANS_VSYNCSHIFT(TRANSCODER_C));
>  	MMIO_D(PIPESRC(TRANSCODER_C));
>  	MMIO_D(TRANS_HTOTAL(dev_priv, TRANSCODER_EDP));
> @@ -264,7 +264,7 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
>  	MMIO_D(TRANS_VTOTAL(dev_priv, TRANSCODER_EDP));
>  	MMIO_D(TRANS_VBLANK(dev_priv, TRANSCODER_EDP));
>  	MMIO_D(TRANS_VSYNC(dev_priv, TRANSCODER_EDP));
> -	MMIO_D(BCLRPAT(TRANSCODER_EDP));
> +	MMIO_D(BCLRPAT(dev_priv, TRANSCODER_EDP));
>  	MMIO_D(TRANS_VSYNCSHIFT(TRANSCODER_EDP));
>  	MMIO_D(PIPE_DATA_M1(TRANSCODER_A));
>  	MMIO_D(PIPE_DATA_N1(TRANSCODER_A));
> -- 
> 2.39.2
> 
