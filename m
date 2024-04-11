Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E25828A21CD
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Apr 2024 00:39:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6454F10F3F6;
	Thu, 11 Apr 2024 22:39:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aX8HdVwP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2095910F202;
 Thu, 11 Apr 2024 22:39:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712875192; x=1744411192;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=g480B/9fKZJxPuHy23BXFaquU7dcSaqVZ/dGgH1gWsc=;
 b=aX8HdVwPgsIqMHAR8VBAHXO4YTbr6nbo4Qt6nYcdwpp56yBgifjY6GJs
 AFjn367y8nfB81FvUwrUmAkSCi5MCTZ9bMLzHeiABl7NwLoYTwsSZCkci
 NWebE52tK4W7PdpLgfGap9LEQIzy9HHHkEvfrxOBpD+VzuXN3f6HtGn8v
 mpI74HD4rF50dctsKRVXca8BwWiIoYB4AsrUAGmCmiCma9ZCC74tazW5n
 84VldklMADF+xgiIgLFRJUpDQFQnhwQIMCN7wDEhVGJxAi5pB/gLAU8tB
 ULrdE4z7xQQILf2cibK/0YN5pb0tv5UkB04FJvu8dTDBChETwLluTQN8p g==;
X-CSE-ConnectionGUID: lrofZjRBQfCX/UhEF6qNcQ==
X-CSE-MsgGUID: mFBP3YZcQkK1g9Jo+JLOVg==
X-IronPort-AV: E=McAfee;i="6600,9927,11041"; a="8173960"
X-IronPort-AV: E=Sophos;i="6.07,194,1708416000"; 
   d="scan'208";a="8173960"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2024 15:39:51 -0700
X-CSE-ConnectionGUID: jUxCg09XRe6+FlC0kbHIxg==
X-CSE-MsgGUID: Boj3moRFRp2D4e+R8M9DlA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,194,1708416000"; d="scan'208";a="21028605"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Apr 2024 15:39:51 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 11 Apr 2024 15:39:50 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 11 Apr 2024 15:39:50 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 11 Apr 2024 15:39:50 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 11 Apr 2024 15:39:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QdME/PBJGnT+g13YfEyaJRoyJHTJOEH9iK1s3CkYwZgYA0NiIeqDG9McEGESorIJSo713kyIQIKcdht+9qXXamWde/o5K/nfVkcO4fMobIWT5aIf3/5XDBdzzoG/BLeaEv4eqX2zUIywpBoPDJcDxdfrmqIfEoI/S4w6chd5wmYqvax8Vy7FKq/qcgSeEPWfd3TwcCVeGhBOI1xFDJK6xxx3FFd4rPRccbrTBIh+3upItlEzZCsr26nPXO33O4LDjypWIW79ZcBTqLqZEihDeel7Ci8PXhtEIxbeqz7EYuzWTgs+lrVQKGl0VRcwgkttvaHkI049XTcosTLWZ7a76g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YLzHpFBKFIGtkTDJnhK76L51b/7aPZC47nW3+5fJLe0=;
 b=E9NNSjekBjNsYt7r8i89KTqpy6a+nIc5/rI1goB4yiwbD3TkAr4KHgxPUuVsrCmMBK/wmO5MAzplI32EdLUvZrE6kuUGK8Rbjfl4QfLF1BcPqhAK6j6ap9KjXNWq8HaJ7DoKmckUc3CfgYFb/nGOEnWbVTAw43c69d93YoAyXouROzER9sHPutpvhLvrQVC7wKasgJqcElMq0jOI9/LU0nmpIHUaWzPHPmGIEyoWwD8NMFGGHtu/mJAyj9HmtsRbluSZSrqAHLMzXqaX+TI2fw3mqOdqT7EmknnNFG0sKext2eEXlWHmXWQm5Ndr0WLI9kKolDqRdVumzszXK1c/Aw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by CH3PR11MB7818.namprd11.prod.outlook.com (2603:10b6:610:129::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7452.25; Thu, 11 Apr
 2024 22:39:42 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e%5]) with mapi id 15.20.7430.045; Thu, 11 Apr 2024
 22:39:42 +0000
Date: Thu, 11 Apr 2024 15:39:40 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Uma Shankar <uma.shankar@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <chaitanya.kumar.borah@intel.com>, <jani.nikula@linux.intel.com>
Subject: Re: [v2] drm/i915: Implement Audio WA_14020863754
Message-ID: <20240411223940.GF6571@mdroper-desk1.amr.corp.intel.com>
References: <20240410135046.933254-1-uma.shankar@intel.com>
 <20240411223635.GE6571@mdroper-desk1.amr.corp.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20240411223635.GE6571@mdroper-desk1.amr.corp.intel.com>
X-ClientProxiedBy: SJ0PR13CA0085.namprd13.prod.outlook.com
 (2603:10b6:a03:2c4::30) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|CH3PR11MB7818:EE_
X-MS-Office365-Filtering-Correlation-Id: 5315278e-dabf-436e-d65d-08dc5a7847ae
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 8NdoC2/OS7vBZDhpjog6jMczbSG51tDJX6LxvxVmH+62AYOudu0VAHA1Qj9Og7VnNXXn1KE5OtLCSsFUKQiAxU3XHR+0p+5GANmQiu9SQrJDadHN1pRZoA9I3NtthWbaB1Jku81+ib/1oVWfbePRi2GXWBxSrH1yTXQkMcIvjnKTSrF2oYHOHxXUVaDJxMiO3Grj+he/YbfLOAfReQfW7YkJg5T3n47C2Q4SFE4avdBrojTItM4iXOdz4c8YHYh+giwd4pKSJuBiIexNvqYhlmLjBPXkY+xMOYDOhoR+RJdcWYM1kRQ9kdRMXdv5gqYMtj0T7VLL+i2eaBQpiItZsxku9gg7hpxv3Xrfl2/IGsX/lHewgqkdusaONq8/Wy1aCe+0uNwjFv1d0nO4R8OiMwMpmapMZbhISdZ24P+EcOe0cHTOFJDtOEDZi3i+R8PVro0zAzqkogFRstvl3jrrfoyD2rWVdEfE7C9aoNoI6oQFaxIaJmBiujXOaHIW0TFvkHTDb27QBFdWkUR9TEnUzPiIpCP0XG9fpqoGt4zr6EwelenED9kzuyqpbt+lvs6D133LFa9Snkjvn1sePOHnnkoESNu8QRC7X/yPnz8KK0rG3IljExEMav6Npq2YkPcazG9M80lMFMTwnIuR7rxdNREWSF7rwK6ehSRbB2dKHn4=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(1800799015)(376005); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?ChsUV3KrNYZRk4PJ7ZuGuRBiGgY/tUdlx65aTLHHgWXlINX232CStnidNO/d?=
 =?us-ascii?Q?0aQs2qadBTS4nVBfx5zGlcYOupf6FuCfdRRUjlaeYVG88KC4+NNPbt+sbKQ5?=
 =?us-ascii?Q?3faTX0U18YoG0geGGz8V2PVaq+QxGUdHoer0J+6/rTIXQYuhUqZvmyXc0WUF?=
 =?us-ascii?Q?FQWYI5aLGJv/0LaSsMzs3FpfnPEkd/s/k8TExsm766+sXErka0zKL0Zg/zJT?=
 =?us-ascii?Q?nN2ZXCbQ4vVKN0/7XG9IB1Gis33bm3TlbNEwXBJ9MMYt6DEk+jxQ4UqCCKgB?=
 =?us-ascii?Q?nzdJlbCUD3CKKn4BOp8U8VH4rfa0tzQ1mp1CLx0OITdCZJi9u8AIArYldL+7?=
 =?us-ascii?Q?9d+I+IS5JA77fnDC22bMjXkmgXUe/LnIhzIsLnJ/3t8ItHCc2T6KMfr2I37u?=
 =?us-ascii?Q?UfQLSxSEnohCC3uYTK9360DF/sYkhnYPURy73olEO12fHIEoaVJBU6Ar+2Ez?=
 =?us-ascii?Q?WjBWJO/KN+ZiGdhaxmA+ldGg+5w3hYRLYKi3+OS84Kv/puUbVg1trBX/ANB5?=
 =?us-ascii?Q?lq50J2lZZkssGZ5FHLymRJDS5Rmb0UI3z6EvRGJ84ZXjWKf8+52HcSjp3aOM?=
 =?us-ascii?Q?MXaze7a4zwjsK0gCXLcjvzf5Pe0zfMS7WnsOhyOUgKxBxw70yDYu5W0BeIM2?=
 =?us-ascii?Q?8lM8diI/zxGLQ9ssySipe5iI6NlBAuJmoCcdHcVl9DWuuA31vHQBeDlUrg/p?=
 =?us-ascii?Q?A8jSPL9nJM8gV7g+KWVYUe5BibNbATBhNX0/xD/5IF6bvtXNrzz/eMzoHkUH?=
 =?us-ascii?Q?v00vCRH3VwVVFTRjbpF5cF/zhYaBHyvUlWdshiM9rxoyOfGPCIWMwumpYN/H?=
 =?us-ascii?Q?v1qGXXF0w86nwqlV5+PjsoTJbd+7sRAyuwX3gAT4THi7PpbSb3vXpwCb70Dy?=
 =?us-ascii?Q?OZcXdquUxfVxzBlFQMoNwNFQShle/Xe5cUqTH7qoFfvuUiDL6L2QDJSLM+JF?=
 =?us-ascii?Q?K2wBHe8xSv+1IXMMyOaUO2bnvAc2+bnbrbUqWlQuWBPqOLGzhU5OSmglcYnE?=
 =?us-ascii?Q?v87rj0JbPr7BroaRGGW+VmhrOBq7Q1zRqfbX8IOkBMn1EXN+Voa9WCgdV8Ac?=
 =?us-ascii?Q?eEizChxO8+DDos3fst99hHUua7oov444lYsUxUQGhUieeghbHGSlc6HB64So?=
 =?us-ascii?Q?yi+L0YarE74FI2w9jrf/vC7GLCY3fm0a6kZQc9DNti4hrZepgO4GJf5eI6Yn?=
 =?us-ascii?Q?EgzJu4lrcGf6N0RVamBlamhofBNiXh9Dv9gohKXG8xOgbrlDLSqN/u/eL0XA?=
 =?us-ascii?Q?xLGbzn11Nvc3ZDbiqWW6zjX7OicF1Tl5MI2MbXeUbsUccro0xA5Zv3hd33qb?=
 =?us-ascii?Q?5mgZehT2rZbXbV5PDp8ItKJ/OOnPJfhd3n97nkxSOknPhBgCGc30P+xdcPO0?=
 =?us-ascii?Q?/cja9WVmLXuUIhzmn4mAlvWXazrjYU+mdqItz+SeYxe1aB3g40Xhx6n1TX5G?=
 =?us-ascii?Q?pIkOxexXx0Qyq5lfUOigEI/4SbZPVpWKfKcOdXraRkxHR+ZzgsQbrf147Zlu?=
 =?us-ascii?Q?TxdXPkhhPdd8h9XXfTsAwJ3wrqlQmwAwWo7+k+W1Ygv4JfrkvmWPw8W9bEmf?=
 =?us-ascii?Q?uioAYjFM2nwW6skpyQxE8sDvUXvRBe+Lyp/kvYpXE2cYAy9U3qgGfTq5PJz1?=
 =?us-ascii?Q?9g=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5315278e-dabf-436e-d65d-08dc5a7847ae
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Apr 2024 22:39:42.6182 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: T3Hc1igM/viKBophg88bVX7jaz34xsiqwnzHZ3yPJq18O5n450u5Vuc1X9c1wD5H7Sr11IiCc7Efn4GoJ+jTas8q/ymuMZvRiHhuV+rBYRQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7818
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

On Thu, Apr 11, 2024 at 03:36:37PM -0700, Matt Roper wrote:
> On Wed, Apr 10, 2024 at 07:20:46PM +0530, Uma Shankar wrote:
> > WA_14020863754: Corner case with Min Hblank Fix can cause
> > audio hang
> > 
> > Issue: Previously a fix was made to avoid issues with extremely
> > small hblanks, called the "Min Hblank Fix". However, this can
> > potentially cause an audio hang.
> > 
> > Workaround :
> > During "Audio Programming Sequence" Audio Enabling -
> > When DP mode is enabled Set mmio offset 0x65F1C bit 18 = 1b,
> > before step #1 "Enable audio Presence Detect"
> > 
> > During "Audio Programming Sequence" Audio Disabling -
> > When DP mode is enabled Clear mmio offset 0x65F1C bit 18 = 0b,
> > after step #6 "Disable Audio PD (Presence Detect)"
> > If not clearing PD bit, must also not clear 0x65F1C bit 18 (leave = 1b)
> > 
> > v2: Update the platform checks (Jani Nikula)
> > 
> > Signed-off-by: Uma Shankar <uma.shankar@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_audio.c      | 14 ++++++++++++++
> >  drivers/gpu/drm/i915/display/intel_audio_regs.h |  3 +++
> >  2 files changed, 17 insertions(+)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i915/display/intel_audio.c
> > index 07e0c73204f3..61df5115c970 100644
> > --- a/drivers/gpu/drm/i915/display/intel_audio.c
> > +++ b/drivers/gpu/drm/i915/display/intel_audio.c
> > @@ -512,6 +512,13 @@ static void hsw_audio_codec_disable(struct intel_encoder *encoder,
> >  	intel_de_rmw(i915, HSW_AUD_PIN_ELD_CP_VLD,
> >  		     AUDIO_OUTPUT_ENABLE(cpu_transcoder), 0);
> >  
> > +	/*
> > +	 * WA_14020863754: Implement Audio Workaround
> > +	 * Corner case with Min Hblank Fix can cause audio hang
> > +	 */
> > +	if (DISPLAY_VER(i915) >= 20)
> 
> The workaround is currently listed as applying to both Xe2_LPD (20.00)
> and Xe2_HPD (14.01).  So we should match on those precise IP versions
> for now.  Future platforms and/or refreshes may or may not need this
> workaround and we don't want to just assume the workaround will carry
> forward forever, so the condition may get updated further as new
> platforms/IP versions are added to the driver.

Also, since this is a workaround that requires logic in multiple spots
and already applies to multiple IP versions, it may be a good idea to
separate out the condition into a helper function so that if/when new
versions get added to the list in the future we can update a single
place rather than tracking down multiple 'if' statements.


Matt

> 
> 
> Matt
> 
> > +		intel_de_rmw(i915, AUD_CHICKENBIT_REG3, CHICKEN3_SPARE18, 0);
> > +
> >  	mutex_unlock(&i915->display.audio.mutex);
> >  }
> >  
> > @@ -637,6 +644,13 @@ static void hsw_audio_codec_enable(struct intel_encoder *encoder,
> >  	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP))
> >  		enable_audio_dsc_wa(encoder, crtc_state);
> >  
> > +	/*
> > +	 * WA_14020863754: Implement Audio Workaround
> > +	 * Corner case with Min Hblank Fix can cause audio hang
> > +	 */
> > +	if (DISPLAY_VER(i915) >= 20)
> > +		intel_de_rmw(i915, AUD_CHICKENBIT_REG3, 0, CHICKEN3_SPARE18);
> > +
> >  	/* Enable audio presence detect */
> >  	intel_de_rmw(i915, HSW_AUD_PIN_ELD_CP_VLD,
> >  		     0, AUDIO_OUTPUT_ENABLE(cpu_transcoder));
> > diff --git a/drivers/gpu/drm/i915/display/intel_audio_regs.h b/drivers/gpu/drm/i915/display/intel_audio_regs.h
> > index 616e7b1275c4..6f8d33299ecd 100644
> > --- a/drivers/gpu/drm/i915/display/intel_audio_regs.h
> > +++ b/drivers/gpu/drm/i915/display/intel_audio_regs.h
> > @@ -148,4 +148,7 @@
> >  #define HBLANK_START_COUNT_96	4
> >  #define HBLANK_START_COUNT_128	5
> >  
> > +#define AUD_CHICKENBIT_REG3		_MMIO(0x65F1C)
> > +#define  CHICKEN3_SPARE18		REG_BIT(18)
> > +
> >  #endif /* __INTEL_AUDIO_REGS_H__ */
> > -- 
> > 2.42.0
> > 
> 
> -- 
> Matt Roper
> Graphics Software Engineer
> Linux GPU Platform Enablement
> Intel Corporation

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
