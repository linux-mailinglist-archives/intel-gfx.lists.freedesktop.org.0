Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E0B89875084
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Mar 2024 14:43:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0598310F176;
	Thu,  7 Mar 2024 13:43:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NfXKaTUj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 51AAA1137B6;
 Thu,  7 Mar 2024 13:43:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709819014; x=1741355014;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=SpN2xOtzyblYLQKLmPtcDK6cNfTzgBu8fktVjRPSKb8=;
 b=NfXKaTUjWM+9Y575JOAp2UFiSjDc1wF4K5GzIPQDLUr2hvfb0cVCthJV
 Lsjt9yzUZHGNApKBnJWjw4sfspSxpypKPgKmPl/iNZVJfP37XwBv///eO
 cYpELzcdEnDhqdA8AsIWvs7kxsoJtXi1wgfapZDID8CTspkUk7bUOF0kI
 rT0vmgYdKi0JVSl90Rg1LVHs9L/pNYJ4ymRlGe3Mz7pYQTzTvBzEorQ+U
 jUFh7aC2VwWK2SwSsG4kSXNEF5q3k6ftuJzSSJ+cEYCFFXRZ/28DqVBdG
 9zuUxusI1HhFr2Lj9cjO+SeFWX2yY1kiU61hf+Bxi2gm2SzNWQCJdtVk/ g==;
X-IronPort-AV: E=McAfee;i="6600,9927,11005"; a="8304337"
X-IronPort-AV: E=Sophos;i="6.07,211,1708416000"; 
   d="scan'208";a="8304337"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2024 05:43:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,211,1708416000"; d="scan'208";a="10222893"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Mar 2024 05:43:33 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 7 Mar 2024 05:43:32 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 7 Mar 2024 05:43:32 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 7 Mar 2024 05:43:32 -0800
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.41) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 7 Mar 2024 05:43:32 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TjilvTiqT1qxbunSqMy2/GvQHMWerXD5vFbG2B+r6z3o2MY8hduP+iIrcXHD83JldPzLvkxMvTlAmVkVdg73kj1EoO21gqf31G7Zv2zKIF6Th0vq57fs39osyYBhptTudTyOElEYug7oKNf4OLM230ENq4q0S28tcnsOj7eKmlAnK8q/8YRNW9tDVeDtkDsotrg76HWTI2pOH/Kj2wKsWpEvVR4Q7nr8hy815k2MsoAom3ktzgJ99wrMFrfYvpHbcyAHE4hFE4su/gdqEdAPH1vpOlofiM5oz/Z0lHptAKOKn7fj2q0eJWosnZ6QDkjHaISdK8MqnZdTDNU+Jz9vfQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CMEvXeAA6IGBkV+iObP1DHesOV2Uj0yTbWILgIwwNuY=;
 b=YsLK4OcFjIYoGpo2j70qAJHSrq1qvyppIaOXnRTheoVgnqeH/HxIWrryAEXt78fUnUI6dYCiQ+QRtLnbtLZEoHkQskj/6fqmh3opQv4Yxmghs9+qRRhXJ7Uv41X5NOkhZTin84AiM4XPWR7MJ6a+2KcQbL+4nhyucYRuz18gd7pwCE3hrMwoszOSAYbWCcDVZG9/WFf1NKdzfvEViontMRWgx9TQvfhLGcT6XeP+/1LgE0KbFmHCVL3LiARqRPTTok0EG3U9rRADGurKcEjv1UWN7U8LpiwBYMvN2zB9tKnZZiHf7WhS9NqM+I9+QH0dJxjZGXBDN2vuf3tO1mWGvg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by CY8PR11MB7134.namprd11.prod.outlook.com (2603:10b6:930:62::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7362.23; Thu, 7 Mar
 2024 13:43:30 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::a7f1:384c:5d93:1d1d]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::a7f1:384c:5d93:1d1d%4]) with mapi id 15.20.7362.019; Thu, 7 Mar 2024
 13:43:29 +0000
Date: Thu, 7 Mar 2024 08:43:25 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <lucas.demarchi@intel.com>, <ville.syrjala@linux.intel.com>
Subject: Re: [RFC v2 2/4] drm/i915/display: add generic to_intel_display()
 macro
Message-ID: <ZenEfcJLaS1BSHHs@intel.com>
References: <cover.1709727127.git.jani.nikula@intel.com>
 <0b9459da6c8cba0f74bf2781d69182fa6801cd97.1709727127.git.jani.nikula@intel.com>
 <ZeizBzI-yv_fwdmx@intel.com> <87zfvawa9y.fsf@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <87zfvawa9y.fsf@intel.com>
X-ClientProxiedBy: SJ0PR03CA0051.namprd03.prod.outlook.com
 (2603:10b6:a03:33e::26) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|CY8PR11MB7134:EE_
X-MS-Office365-Filtering-Correlation-Id: 8b818dcf-d8fa-4d33-655d-08dc3eac9233
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: aRKYoAyGJ51Ef/GWJ8sITBdyQkTQDvhfDvnpyoNXzXO5LXVCedC5sZJyozYv5C/aBCa5k2lgevqY+bxyw6qjLfjGE3ggkLg2vlKSP5DvXdityKj/Ev5sb+lm+A7tJ2U9PsWwFM+LMQzSn6LyCMUCxUpaF8sfPqSgph1WDCIHN7Y4+FQP2U/luA3xWEyC83dGkCs2YIt9uDnv8Qa3iAOj/PIj5KKQBtXkLWmtHfNA3YXL5bJ6Sq5BF7389LJfOTXWssyck8lkP5KtLLc9FCvBwNMGOxVq193pck49eMlhYP7KYJtfiZGGtOxd6nb/nET67W7go/3J4K3ex8MkP9VUiKDRawfCLusiv4z4bmsM4pLriAM2ocCct7RmjSWHolLlE6Zil+S6lkq+S0KYQHbRDv+oDNsVnFMt/SWliku3NT9pLZOwhvS/OSW1fEdlWOsgyzn9QZbXE5uwnnAEXFq/Iv8rlqp2YvTE4TklIjJwOrA4eGRElI0DSqabeApPerwSU66WrxLGJFQq5Hpvw+kd0UlPDjl08udFdUNGjXhauK3ls2KHr7C8FG1TxUVBw6/lG1FxY+cz3Hmyy1KUqh/fsHG41/Drx/lJZdo32xPc1aNS9wZORz3G7S2bAHGsbzpUgfruK46aMp5AC9BauYNW2d1ESof9dhkw0DXjs43JnCY=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?HCz1hI0u6byomVwkCWwljXVG6MSrPj6TfesBwoHoocobMp1/5fITkyg4i4mf?=
 =?us-ascii?Q?gwInKKkrFWVFhAeo9QW0gAAY7ZzYtUJjyROAtADVjsIz9Hh0XE6u3KQdP1TB?=
 =?us-ascii?Q?4QMSPER/xq41DNkqanfqPRkWiyR5WqSQ5tXoieZiX5PeOFE8B9Qe9bMr6uEV?=
 =?us-ascii?Q?DrD2/GNdOcWiJwHyO/8pOfD9RFes5lopzDsndh6kG3Cepr1NwL4tmWe12ogZ?=
 =?us-ascii?Q?H69PL1053p+NhZzEZSzHdzK+Y9XtnNLpkx9o0pVcn3cGOzlZlIj62IVmOBPw?=
 =?us-ascii?Q?DzyBxCTYzCuU1SC9f+uzLbX46DWmvxRnT0H7AF4dMCqD56tlFVeJboXuuBoc?=
 =?us-ascii?Q?8+FHnjxMbKqB9A3XAli5jrSLku2dB8CoUZS3qoNcWM3ApxezDB3agkZFpZ3i?=
 =?us-ascii?Q?1LBLEkWRaC60eirUK15VWk6bq+g80EJLlsmpn0xoF9Me2GI3+6KCQFlsTqdd?=
 =?us-ascii?Q?ZL+9frc6Z9bBmf/p/jgBuEdWY/f0eKSyjiF6ho/kBw6SObIVv1mSmoD7ds3H?=
 =?us-ascii?Q?1Vh88zhN0w3qcxoc7zPYli2RCbDyuUd/uKsHjLbqSvN9bU/834wc88aYPDkx?=
 =?us-ascii?Q?DI1b78vMMK1EcGVMzfAfqV91Ik9RrcpgQyluhFnabwvEoagk07Jn8tMlgfrg?=
 =?us-ascii?Q?uDId8DeHiFu1VQ0yY6a5QEarbJsqJh9liDbCvVp40BoVESNLeL6QU5Q1vHfz?=
 =?us-ascii?Q?ycCHPuJBuyqLkbqFPtiO27imUrv05gHdk1id1VA/XcYc0dQqryt0PqFGTWfG?=
 =?us-ascii?Q?n/v8uqly6PAMbpwPzYTn93TohiLUpPWXygaWjSr+Kue6Hu9/bTEUjy3Z8lnC?=
 =?us-ascii?Q?27pgic1/Dr/RBVlvijt6QFp1UOwzLsItEEvXWqEbAeCHxqu4n82j7P/BeXBM?=
 =?us-ascii?Q?vrKqGz/ubpCyN5lnBdsCl+q/77hs5bPuHl66AuydV35kMKU9k1I2fsX9uzQQ?=
 =?us-ascii?Q?SEPOVdFRl+qu4WOMcsfC/oFXjuwG/af6Mv2XwOzI52aLc3ammbuxMvDoZPYO?=
 =?us-ascii?Q?ZZbg2g3X85khHnNUiDkqqXNA80udHaPKJDS0U9HapIQO+GehXE2kcXrL/HGi?=
 =?us-ascii?Q?37CaxI/+GTJTphMDMH2y1kqDehY1FV4Riu+KN7LpKbAyiWm7/9G0yg2+kG0h?=
 =?us-ascii?Q?vPbNe5bFoMh8yJnraDQkEezb0dAPKKrRwJGbQNi44Nu3Q1/2kTFjHejcbjQC?=
 =?us-ascii?Q?6MlPODwi9L8NpI3g+mpG0pHPpUcfk0fRBWQuHrUxjlnLU3/U142v4UgZKkx8?=
 =?us-ascii?Q?hYVh0SDFYh4ArY1TBdQT6zoktAdBZgVsbI4N6K21oqlRxr6okFQ7UdQZ3fvb?=
 =?us-ascii?Q?8gyguWhtz/epMD1Vu7qfXFB3WrcmC+LtPM1ESvdLZZAmY/09HVHDga9J/OkB?=
 =?us-ascii?Q?rhyiwiueCtPqV+SkODFKBRWwXg0xdlQoqz9aq8aN64Zxo1XL2J+EFQ6cV33/?=
 =?us-ascii?Q?fYc3HyORlD7RYSs92Yszl9BLKQb8YlkpuT7z+IJ1YhJBX+5DA/APzjmXQYBT?=
 =?us-ascii?Q?QO70uf7x3hvyoUTb0rSwOoqTVuXjVx7RrIbD/b7PLUVReyZexuTMr/teZmhX?=
 =?us-ascii?Q?3fp6q6/FVC1wB4K0ysxsQmHTqRoDE8whjbNRgUpr?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8b818dcf-d8fa-4d33-655d-08dc3eac9233
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Mar 2024 13:43:28.9875 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: glc/ahaJi77ldiIed6nfuYgsmFU40ZZrUn1x5EbWXEx/2NjZ6TWkdZH9MOWE3GvfeZmlF7+0McC/EfNn7UZ4Bw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7134
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

On Thu, Mar 07, 2024 at 01:28:57PM +0200, Jani Nikula wrote:
> On Wed, 06 Mar 2024, Rodrigo Vivi <rodrigo.vivi@intel.com> wrote:
> > On Wed, Mar 06, 2024 at 02:24:36PM +0200, Jani Nikula wrote:
> >> Convert various pointers to struct intel_display * using _Generic().
> >> 
> >> Add some macro magic to make adding new conversions easier, and somewhat
> >> abstract the need to cast each generic association. The cast is required
> >> because all associations needs to compile, regardless of the type and
> >> the generic selection.
> >> 
> >> The use of *p in the generic selection assignment expression removes the
> >> need to add separate associations for const pointers.
> >> 
> >> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> >> ---
> >>  .../drm/i915/display/intel_display_types.h    | 46 +++++++++++++++++++
> >>  1 file changed, 46 insertions(+)
> >> 
> >> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> >> index e67cd5b02e84..3f63a5a74d77 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> >> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> >> @@ -2183,4 +2183,50 @@ static inline int to_bpp_x16(int bpp)
> >>  	return bpp << 4;
> >>  }
> >>  
> >> +/*
> >> + * Conversion functions/macros from various pointer types to struct
> >> + * intel_display pointer.
> >> + */
> >> +static inline struct intel_display *__drm_device_to_intel_display(const struct drm_device *drm)
> >> +{
> >> +	/*
> >> +	 * Assume there's a pointer to struct intel_display in memory right
> >> +	 * after struct drm_device.
> >> +	 */
> >> +	struct intel_display **p = (struct intel_display **)(drm + 1);
> >
> > at least this patch and the first one should be together to help the
> > 'magic' to be understood and confirmed safe.
> 
> Yes. I just kept them separate while still juggling the whole thing.
> 
> And it occurs to me we could make *this* the first patch in the series,
> by making the above function:
> 
> static inline struct intel_display *__drm_device_to_intel_display(const struct drm_device *drm)
> {
> 	return &to_i915(drm)->display;
> }
> 
> Then we could only add the struct drm_device *drm backpointer in struct
> intel_display from patch 1, and proceed with patches 3-4, avoiding the
> whole magic thing for starters. It would unblock a whole lot of
> refactoring as the first step.

sounds like a good plan

> 
> >
> >> +
> >> +	return *p;
> >> +}
> >> +
> >> +#define __intel_connector_to_intel_display(p)		\
> >> +	__drm_device_to_intel_display((p)->base.dev)
> >> +#define __intel_crtc_to_intel_display(p)		\
> >> +	__drm_device_to_intel_display((p)->base.dev)
> >> +#define __intel_crtc_state_to_intel_display(p)			\
> >> +	__drm_device_to_intel_display((p)->uapi.crtc->dev)
> >> +#define __intel_digital_port_to_intel_display(p)		\
> >> +	__drm_device_to_intel_display((p)->base.base.dev)
> >> +#define __intel_encoder_to_intel_display(p)		\
> >> +	__drm_device_to_intel_display((p)->base.dev)
> >> +#define __intel_hdmi_to_intel_display(p)	\
> >> +	__drm_device_to_intel_display(hdmi_to_dig_port(p)->base.base.dev)
> >> +#define __intel_dp_to_intel_display(p)	\
> >> +	__drm_device_to_intel_display(dp_to_dig_port(p)->base.base.dev)
> >> +
> >> +/* Helper for generic association. Map types to conversion functions/macros. */
> >> +#define __assoc(type, p) \
> >> +	struct type: __##type##_to_intel_display((struct type *)(p))
> >> +
> >> +/* Convert various pointer types to struct intel_display pointer. */
> >> +#define to_intel_display(p)				\
> >
> > For a moment I almost complained of this because of the generic magic,
> > but mostly because I had guc related code in mind where you can never
> > find the definition, but here it is different. the used 'to_intel_display'
> > can easily be searched by cscope/ctags and then you are able to see
> > below what are the accepted cases, so I ended up liking it.
> 
> Yay!
> 
> I also tried to put effort into making this easily extensible. Add a
> __<FROM-STRUCT>_to_intel_display(p) macro or function, and
> __assoc(<FROM-STRUCT>, p) in the association list below, and it just
> works.

as long as we don't lose the ability to use cscope/ctags to find
these definitions I would be okay.

right now a cscope on intel_crtc would show the _assoc(intel_crtc...
but if we lose that we kind of go to the dark side of the macro
indirections.

> 
> BR,
> Jani.
> 
> >
> >> +	_Generic(*p,					\
> >> +		 __assoc(intel_connector, p),		\
> >> +		 __assoc(intel_crtc, p),		\
> >> +		 __assoc(intel_crtc_state, p),		\
> >> +		 __assoc(intel_digital_port, p),	\
> >> +		 __assoc(intel_encoder, p),		\
> >> +		 __assoc(intel_hdmi, p),		\
> >> +		 __assoc(intel_dp, p),			\
> >> +		 __assoc(drm_device, p))
> >> +
> >>  #endif /*  __INTEL_DISPLAY_TYPES_H__ */
> >> -- 
> >> 2.39.2
> >> 
> 
> -- 
> Jani Nikula, Intel
