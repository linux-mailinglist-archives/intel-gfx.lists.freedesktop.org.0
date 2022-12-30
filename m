Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 93A37659AD3
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Dec 2022 18:08:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 94B2D10E459;
	Fri, 30 Dec 2022 17:08:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DE60C10E459
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Dec 2022 17:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672420133; x=1703956133;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=BOYo7pcHk4Xlh2rTu3HTx8oLrGc5iRUkfLk5ouCTBCs=;
 b=WKRdN/qkeo8GhEFlNeOQNN1BkvHcgK0u/7LKKlv7RMeqV0HnxqiFKMqO
 Enf57BC8WzsdglIMLITlv8sz2j301AZ5vr/lh0FraUOQ9RWIQ7U1ZpfPR
 XZM+q1fPJMGHTZH6x1YBvX70Wy47uhjqLtyd+DcDB6tO9oPwUG3ypx+2u
 3u7AkTFGo44V5EDOR7BUopr4M3mkhYhbuA31quO3EG1/oSH2HYZhxNNxH
 FmNY7n+c7QNHt8LMQCzBOECUookzjXbRNw7UMBD0gwGoWtPna3gLoDUYT
 tw3f/ECRHmdEf+1Gjj6Y9HAHMN1ZQR7TrsSr5ZlLerhJ+mVKJ2AKkMdpZ A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10576"; a="385661784"
X-IronPort-AV: E=Sophos;i="5.96,287,1665471600"; d="scan'208";a="385661784"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Dec 2022 09:08:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10576"; a="796272090"
X-IronPort-AV: E=Sophos;i="5.96,287,1665471600"; d="scan'208";a="796272090"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga001.fm.intel.com with ESMTP; 30 Dec 2022 09:08:52 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Fri, 30 Dec 2022 09:08:52 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Fri, 30 Dec 2022 09:08:52 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.105)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Fri, 30 Dec 2022 09:08:51 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QzWwpplxEjQC1eK7BVnhOuxRHu4Gglb7EssuHF7ynDqQVsig/98NgdsbZoEBaqRF+6uhH3zqvvPpKAnr54jqvZWZjlZwNJgVO0NVJcBumoIU1Ob6e4btDA2wELjxSREnFd+rpQbHLH2jH8F9L6+S990i8SEBbvGA49NnIIc1xtYZGiLkmhPVIOBvim2Jaecms6TOTAtovj6X7/QGyO7xPz2uZYXODpO79BI3MgCRa6Mv7kQzITJ62nYltQSexNPpaiqV13kU6fhyaBkQTNSBrYPxszE/6+G8369Lmpnv7QxEsWw5rjL4uuajgzmGgbBXfSsA6JLHLut06hn+knfjxg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8wFD8l7Gq31mLvtlaJhNVNuRI0lOP89b3DGqw/JVaOY=;
 b=FtKon7W0+ELsEUJbXY+T4PGhZGQvCLcB9xGRW1DeVc1rJ0tgCQDZfchLaBh6HWAoF/eTxSCKs5RQQH/swzqqzYANUxJdFLCeXP1x97MmDWWtByrXoqchdWpdSxDJMVmuaVm+8jGIItOItKj6xUO7r2n2YsSKGmgMTgKpaPPNnZ0aXLMqemVQmEBP4Ii72TMkbWHPi6NCE9x0pRHX4Se+2L8aEFKUe1Jaldpwf8AuXvqkExN1nBOh6hioYdBbFvM75VMgQ9CRybR55wP71j0bwg2+q5TJAaCfaX9UgIEtOCl7Ns23ORa03JdqCy664Ob0UZAutdr7+XT1s3irGwDGag==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by MW4PR11MB5936.namprd11.prod.outlook.com (2603:10b6:303:16b::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5944.15; Fri, 30 Dec
 2022 17:08:48 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::499c:efe3:4397:808]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::499c:efe3:4397:808%9]) with mapi id 15.20.5944.016; Fri, 30 Dec 2022
 17:08:48 +0000
Date: Fri, 30 Dec 2022 12:08:44 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <Y68bHEiFZJMZJ9Ot@intel.com>
References: <20221229161230.1261938-1-rodrigo.vivi@intel.com>
 <20221229180134.ulydr5qprda3z3zz@gjsousa-mobl2>
 <Y66euxZzzpuHmnVd@intel.com> <87358x12r8.fsf@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <87358x12r8.fsf@intel.com>
X-ClientProxiedBy: SJ0PR13CA0063.namprd13.prod.outlook.com
 (2603:10b6:a03:2c4::8) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|MW4PR11MB5936:EE_
X-MS-Office365-Filtering-Correlation-Id: e242eeaa-c90d-4e94-82d1-08daea888431
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: gtUjFRpmYtCktLnjOLXF20fliur3L3EONCigs4PYa4KkOCBtjNy3tsvtSfkKWfAihl60iiKzK3ogx/aRJeF49kaBGAyAh6WcdTTyj+0nNX0oc+xouolIJOQcggujBZQvwUK8TT9b+52dDe6McxLOz9eJ1eJaxTwNktNTyyNLN4xJjCnReGw8Iq6OTEOcqQABmTD+HmC1+VNkE9o/014UQ3RHPFszjG7M1UFDtt5tinaOT/J5ZfCOJeW5Vy3tKrrL4sAueCA0gCWodM09tLx82gNa6ZnsOFP7vjRGgRwLk9ZZCfMpA7BMfBCQtZD5E3dnkyh0uVIIdG/5YCnbpaPaVVyicO7cMW2bX/MzwI1ljNMtrWuJk467yj+DCNMzoXPJ695zCiTvBSG0ZN3/HUPm42mgDrtqiAdEyLOv4NFxyUoH3PWCbLtLKuEdsngFDDaVRbHu+J4SlA95dztZWu2xP6+wM87KJ3NnYDIgcXJUB2xOTWmbnQQhNhEJCyMwDLQnrLcAAnQYNKb6AswJHIevxnO9nTkHCQcIaQ9YjXGweklCFsT3aHClGfzzohThnsXVt194dfsd9wAgVlJORcbXjKBTXTTf8wa/NEpWTWswv4rkqNrPyxfJZ6N8dv7+hNFtSiPwXqekDUgzz3UvTY59Ag==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(136003)(39860400002)(346002)(376002)(396003)(366004)(451199015)(4326008)(6486002)(478600001)(6666004)(316002)(6916009)(2906002)(36756003)(82960400001)(83380400001)(38100700002)(2616005)(6506007)(26005)(86362001)(6512007)(186003)(8676002)(8936002)(44832011)(66476007)(66556008)(66946007)(5660300002)(41300700001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?SGl5qtts+ZCzi4QXZGJg2JvxiZeepPk+A8OCffBP31v3BQxL0jm4SicS12gA?=
 =?us-ascii?Q?9OqJAqoY3sB0lKmeP25IoLd1HYRSY0+4XsiUi1VbbNVG/FnznWOKA3NxEKnK?=
 =?us-ascii?Q?pJygnU/bcr/UY9MUC7dVFcmJ/L1jY3pjwTpst9vsyQ3lDWWaachjbDy17yQy?=
 =?us-ascii?Q?1SZJvIKLvWeHT/wahXqeMMo/lOITayMwSUPlCNl0w8Tium6HUKxisc6UsV70?=
 =?us-ascii?Q?U6wrrKyKvEHFzhXxIOisIw4+GTKYO0TcC9bQUOUZki0YNTOo8vsFeJaNQlhW?=
 =?us-ascii?Q?cStpPlj3DeQ+Ge6K2g3k29n/4N81HXKjsS8Mf00WLBjKifkUK2RiFPsz6BjA?=
 =?us-ascii?Q?UxIVpDYxQCNozYCVIiRt6Yp4HGb2JBnHABzLJXENepu8SIaH0IfcGtPuvmfm?=
 =?us-ascii?Q?S9+dJAd5LTWBidwYnNFwkdFX94nfnKmeXPRbeMY1Kbg8FI0WzEvEYZFTsYhC?=
 =?us-ascii?Q?MqXmY9hhfnnBqbcBryjeyg0v6ztISPCQ1V0GW51QQlOI1LENIj18/1acDrRO?=
 =?us-ascii?Q?tJDa/bEksHDZVtF7jukev9Ia2wJGXqMHzd9QmVqMRE6w2rx7D0SnghBbnzyI?=
 =?us-ascii?Q?CaobGrhYGbLHFMag9JoDAjbIgU0aJ49a/A8vGrz/fADN35BZnZOELiz8wndv?=
 =?us-ascii?Q?9OynoXcIrXOby7hbTsGr5Z2H3nhQQheOGFi2l6XNWOb1fXb8KFqVYbtFkn43?=
 =?us-ascii?Q?Lr5xhaXea5BqUKC+G/aK+M8H3JghQewZsc0O6Jv3OEqQmcuP2gsSZqyhNb/Q?=
 =?us-ascii?Q?Rw/UdghLM1NSrdvZ39ykAIpArMM6Wml1GrnD54S3vLRD3AzKxEueI+cIod5H?=
 =?us-ascii?Q?LgeYtAqxPi0oC4N+ay9wP7C57IlB502v7bXm9Oh58Mv2tB5Nk1bs1DfhMsBc?=
 =?us-ascii?Q?3YS1pTwCl3842ONT3RZflosOLpCB0ldTlIsJfgFt/7/5U2miOk1DXGkWE/X9?=
 =?us-ascii?Q?aZ5esEBQD5+QdFwexJyGTadRteoa55FaUBpxgSLqLqJ66Sm7kEasWqlqe103?=
 =?us-ascii?Q?NlevIiWt/sIS2u5DwYgBFOY8qSclLWC48eRhC/RX19GPAuPY2nFs3k6aQ+OA?=
 =?us-ascii?Q?eRfiR2ICjJAV8w7Y5qDhJEodAE1+1tRYxJb8TbY5zBex8qS39Gh5kpQ9kq89?=
 =?us-ascii?Q?h9uRbN5JtZDGIUc4l4FKsrutMT9vUWWX0DaHDIxOLx/i830HZ9GeEdfPbJKK?=
 =?us-ascii?Q?ukqdzmFgpktKpBhvhc7l47dQ2YC3SFs2WoA3nkqoa9s9irq90rT/eITgSRa7?=
 =?us-ascii?Q?2/9LifFxHZ2oouZKPUVdqPkh1JnHPC3aZ9QmVXO713T0axn3G0QBoCGAjq4V?=
 =?us-ascii?Q?V+paT2LhP5T/N2lv8AxEDb1GLYWyOb5SR+Fe/gNy/72bLEAv7vxIdBQdwRum?=
 =?us-ascii?Q?e8i3PL4e4LKWjHIg091urOtgCmXDhRKZRB+DEAKi3drxZ1sTQpnxavT64hxu?=
 =?us-ascii?Q?69YsCNZN64ClP2y2poEO78OsSI3e/w4ZagbFa0+1hF2xsy8q3d/zDtm/qC38?=
 =?us-ascii?Q?5+3u2xfvTfMEibI1xsWWVawTZv3iB9m23AIGDCdKBmwJM1yp/99p+t4Vjr7U?=
 =?us-ascii?Q?mmZNg+xqTRFtJzls3QUj5wd3UVzXU1SqYPmZxQPGr2piNCl11I33l4quxMz+?=
 =?us-ascii?Q?4w=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e242eeaa-c90d-4e94-82d1-08daea888431
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Dec 2022 17:08:48.2822 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: pmZz8BYAXfFCuClaiUS/QeaLivpj4XtdH0JcdXvwCe8I+LKpscZCvcj/r0Lnu4ct7W1bDwirKACmaCic1Rlz0Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB5936
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Expand force_probe to block probe
 of devices as well.
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

On Fri, Dec 30, 2022 at 02:42:51PM +0200, Jani Nikula wrote:
> On Fri, 30 Dec 2022, Rodrigo Vivi <rodrigo.vivi@intel.com> wrote:
> > On Thu, Dec 29, 2022 at 03:01:34PM -0300, Gustavo Sousa wrote:
> >> On Thu, Dec 29, 2022 at 11:12:30AM -0500, Rodrigo Vivi wrote:
> >> > There are new cases where we want to block i915 probe, such
> >> > as when experimenting or developing the new Xe driver.
> >> > 
> >> > But also, with the new hibrid cards, users or developers might
> >> > want to use i915 only on integrated and fully block the probe
> >> > of the i915 for the discrete. Or vice versa.
> >> > 
> >> > Oh, and there are even older development and validation reasons,
> >> > like when you use some distro where the modprobe.blacklist is
> >> > not present.
> >> > 
> >> > But in any case, let's introduce a more granular control, but without
> >> > introducing yet another parameter, but using the existent force_probe
> >> > one.
> >> > 
> >> > Just by adding a ! in the begin of the id in the force_probe, like
> >> > in this case where we would block the probe for Alder Lake:
> >> > 
> >> > $ insmod i915.ko force_probe='!46a6'
> >> > 
> >> > Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> >> > ---
> >> >  drivers/gpu/drm/i915/Kconfig       | 13 ++++++++++---
> >> >  drivers/gpu/drm/i915/i915_params.c |  2 +-
> >> >  drivers/gpu/drm/i915/i915_pci.c    | 29 +++++++++++++++++++++++++----
> >> >  3 files changed, 36 insertions(+), 8 deletions(-)
> >> > 
> >> > diff --git a/drivers/gpu/drm/i915/Kconfig b/drivers/gpu/drm/i915/Kconfig
> >> > index 3efce05d7b57..8873cd0355b7 100644
> >> > --- a/drivers/gpu/drm/i915/Kconfig
> >> > +++ b/drivers/gpu/drm/i915/Kconfig
> >> > @@ -54,24 +54,31 @@ config DRM_I915
> >> >  	  If "M" is selected, the module will be called i915.
> >> >  
> >> >  config DRM_I915_FORCE_PROBE
> >> > -	string "Force probe driver for selected new Intel hardware"
> >> > +	string "Force probe i915 for selected Intel hardware IDs"
> >> >  	depends on DRM_I915
> >> >  	help
> >> >  	  This is the default value for the i915.force_probe module
> >> >  	  parameter. Using the module parameter overrides this option.
> >> >  
> >> > -	  Force probe the driver for new Intel graphics devices that are
> >> > +	  Force probe the i915 for Intel graphics devices that are
> >> >  	  recognized but not properly supported by this kernel version. It is
> >> >  	  recommended to upgrade to a kernel version with proper support as soon
> >> >  	  as it is available.
> >> >  
> >> > +	  It can also be used to block the probe of recognized and fully
> >> > +	  supported devices.
> >> > +
> >> >  	  Use "" to disable force probe. If in doubt, use this.
> >> >  
> >> > -	  Use "<pci-id>[,<pci-id>,...]" to force probe the driver for listed
> >> > +	  Use "<pci-id>[,<pci-id>,...]" to force probe the i915 for listed
> >> >  	  devices. For example, "4500" or "4500,4571".
> >> >  
> >> >  	  Use "*" to force probe the driver for all known devices.
> >> >  
> >> > +	  Use "!" right before the ID to block the probe of the device. For
> >> > +	  example, "4500,!4571" forces the probe of 4500 and blocks the probe of
> >> > +	  4571.
> >> > +
> >> >  config DRM_I915_CAPTURE_ERROR
> >> >  	bool "Enable capturing GPU state following a hang"
> >> >  	depends on DRM_I915
> >> > diff --git a/drivers/gpu/drm/i915/i915_params.c b/drivers/gpu/drm/i915/i915_params.c
> >> > index 61578f2860cd..d634bd3f641a 100644
> >> > --- a/drivers/gpu/drm/i915/i915_params.c
> >> > +++ b/drivers/gpu/drm/i915/i915_params.c
> >> > @@ -122,7 +122,7 @@ i915_param_named_unsafe(enable_psr2_sel_fetch, bool, 0400,
> >> >  	"Default: 0");
> >> >  
> >> >  i915_param_named_unsafe(force_probe, charp, 0400,
> >> > -	"Force probe the driver for specified devices. "
> >> > +	"Force probe options for specified supported devices. "
> >> >  	"See CONFIG_DRM_I915_FORCE_PROBE for details.");
> >> >  
> >> >  i915_param_named_unsafe(disable_power_well, int, 0400,
> >> > diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
> >> > index 668e9da52584..fc1383f3a646 100644
> >> > --- a/drivers/gpu/drm/i915/i915_pci.c
> >> > +++ b/drivers/gpu/drm/i915/i915_pci.c
> >> > @@ -1253,7 +1253,7 @@ static void i915_pci_remove(struct pci_dev *pdev)
> >> >  }
> >> >  
> >> >  /* is device_id present in comma separated list of ids */
> >> > -static bool force_probe(u16 device_id, const char *devices)
> >> > +static bool device_id_in_list(u16 device_id, const char *devices, bool negative)
> >> >  {
> >> >  	char *s, *p, *tok;
> >> >  	bool ret;
> >> > @@ -1272,6 +1272,12 @@ static bool force_probe(u16 device_id, const char *devices)
> >> >  	for (p = s, ret = false; (tok = strsep(&p, ",")) != NULL; ) {
> >> >  		u16 val;
> >> >  
> >> > +		if (negative && tok[0] == '!')
> >> > +			tok++;
> >> > +		else if ((negative && tok[0] != '!') ||
> >> > +			 (!negative && tok[0] == '!'))
> >> > +			 continue;
> >> > +
> >> >  		if (kstrtou16(tok, 16, &val) == 0 && val == device_id) {
> >> >  			ret = true;
> >> >  			break;
> >> > @@ -1283,6 +1289,16 @@ static bool force_probe(u16 device_id, const char *devices)
> >> >  	return ret;
> >> >  }
> >> >  
> >> > +static bool id_forced(u16 device_id)
> >> > +{
> >> > +	return device_id_in_list(device_id, i915_modparams.force_probe, false);
> >> > +}
> >> > +
> >> > +static bool id_blocked(u16 device_id)
> >> > +{
> >> > +	return device_id_in_list(device_id, i915_modparams.force_probe, true);
> >> > +}
> >> 
> >> I think id_blocked() would return true for any device id if force_probe was "*".
> >
> > good catch. I will just wait until middle next week to see if someone has something
> > against the idea in general and then re-spin a version with:
> >
> > - if (strcmp(devices, "*") == 0)
> > + if (strcmp(devices, "*") == 0 && !negative)
> 
> I admit I didn't bother checking, but please ensure force_probe=!* also
> works to block everything.

makes sense

-       if (strcmp(devices, "*") == 0)
+       if (negative && strcmp(devices, "!*") == 0)
+               return true;
+       if (!negative && strcmp(devices, "*") == 0)

will be it.

Thanks,
Rodrigo.

> 
> BR,
> Jani.
> 
> >
> >> 
> >> > +
> >> >  bool i915_pci_resource_valid(struct pci_dev *pdev, int bar)
> >> >  {
> >> >  	if (!pci_resource_flags(pdev, bar))
> >> > @@ -1308,10 +1324,9 @@ static int i915_pci_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
> >> >  		(struct intel_device_info *) ent->driver_data;
> >> >  	int err;
> >> >  
> >> > -	if (intel_info->require_force_probe &&
> >> > -	    !force_probe(pdev->device, i915_modparams.force_probe)) {
> >> > +	if (intel_info->require_force_probe && !id_forced(pdev->device)) {
> >> >  		dev_info(&pdev->dev,
> >> > -			 "Your graphics device %04x is not properly supported by the driver in this\n"
> >> > +			 "Your graphics device %04x is not properly supported by i915 in this\n"
> >> >  			 "kernel version. To force driver probe anyway, use i915.force_probe=%04x\n"
> >> >  			 "module parameter or CONFIG_DRM_I915_FORCE_PROBE=%04x configuration option,\n"
> >> >  			 "or (recommended) check for kernel updates.\n",
> >> > @@ -1319,6 +1334,12 @@ static int i915_pci_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
> >> >  		return -ENODEV;
> >> >  	}
> >> >  
> >> > +	if (id_blocked(pdev->device)) {
> >> > +		dev_info(&pdev->dev, "I915 probe blocked for Device ID %04x.\n",
> >> > +			 pdev->device);
> >> > +		return -ENODEV;
> >> > +	}
> >> > +
> >> >  	/* Only bind to function 0 of the device. Early generations
> >> >  	 * used function 1 as a placeholder for multi-head. This causes
> >> >  	 * us confusion instead, especially on the systems where both
> >> > -- 
> >> > 2.38.1
> >> > 
> 
> -- 
> Jani Nikula, Intel Open Source Graphics Center
