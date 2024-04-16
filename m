Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CFE28A70DF
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Apr 2024 18:07:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A1B5112D47;
	Tue, 16 Apr 2024 16:07:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gkr/ZRZn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CC96F112D3E;
 Tue, 16 Apr 2024 16:07:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713283632; x=1744819632;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=/eh5NtYOWt9ytFdiCWkbWFfQ6+G7wTEuhgXvOeSS8hY=;
 b=gkr/ZRZnujMyFyh7aqdBhLPZ+0TcLBquA20Rrs4fa3gnkGwQ3eBJRz+e
 zTsVAxpvc9Aj1CjII/z+XgcQzBVRUXih8l8AD1f89Lfrxsdvon2rWm80S
 lNPNrQ4QfA4+7FOdkBd9mnM5h44sa2PSLwlB43gBR6UIAa6Z43B8CmNtC
 EXrK2CCrZndo9waJRxuc0FR6qiBoikporFzaiwNogHQMV5dsE0zbb6fZT
 8ejrIOuVckGnaduMFImSL787cC2OY42l2EQrSPT1gPT73PLdJRCsAgUMb
 suGFJXDKvoYqLC8ng4Zl5U7qDyKtRuY6WjBMKFg8Lc/tYgokgGP1MUUqP Q==;
X-CSE-ConnectionGUID: pyDpb/rBTk6THwwn7eIphw==
X-CSE-MsgGUID: 6qfy2tIwRSquY4Rd2SUzfg==
X-IronPort-AV: E=McAfee;i="6600,9927,11046"; a="12522229"
X-IronPort-AV: E=Sophos;i="6.07,206,1708416000"; d="scan'208";a="12522229"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2024 09:06:53 -0700
X-CSE-ConnectionGUID: 5mMNdrFbSVKaa8YilxenuQ==
X-CSE-MsgGUID: 9zyIaY7/Sla60gI1CZWapg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,206,1708416000"; d="scan'208";a="22316692"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 16 Apr 2024 09:06:53 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 16 Apr 2024 09:06:52 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 16 Apr 2024 09:06:51 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 16 Apr 2024 09:06:51 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.101)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 16 Apr 2024 09:06:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SVYHxA+fN4hEyu97qXHrA1bBnCqiVk9mlmCN6nF/NPMQ0vaAMefgadLSYrlk5XUUVRNK6tDgFJxUMgKpb6KmH1ALcE9KPEyUPtj4ps0ijImeDAwhs7l+RpA79mgebBsl92KqchRwi1Vq+9tenkATCraC7XRR1S30Ik5oHNcjydi5B29ycYIQmtOzuwRYIhgZWql+LZJMo1xDhpJODJQhuQ2PCIkL2tCO6R4EyKBJYSYdEyrKFupMKHsyRkxNU0Y0yqRb0N0csmZYrFH1Kv3OswD+1azZczEJy3Tk+PzxGeEQSfEk6P8f6nI3kj0F6aHULYgGSgPM4GdK11PZKe83kw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Rr38e2KJ41mamCO5cYmsZLWpLKUlN95QxORsBzTFy7c=;
 b=nLzzJdfTP10yQreX+4qnjVM6qGF3A5Hs3WaWDJJC/Afo9Vq5f/Hdj9yiyTtrvC+u3NFqxENqBIzEAt/9bKFzR2vB8AS3dpfiX2YM14ZLvzOXoq8itgJidvftgHZd3WdMCwlVxX2LxFZ4Nri8iRnirtcto/08SvyAw35cRjcYkSm0X/ZIPv+pkMRAkO0fTaRPOhA5sZeemE6ga0UVgsM3NlQeNzBojSBBNnEXXwTPC2QycOZhrvR7Kdd/KHkzF93egmyX7y8twDLSXW9juBhHWvEIHCH0+97fX3lUSELEydeta7trzM43w+7alR9jA9yLqR1EcKoEPpt3zSi98BUW5A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH7PR11MB6053.namprd11.prod.outlook.com (2603:10b6:510:1d1::8)
 by DS7PR11MB6103.namprd11.prod.outlook.com (2603:10b6:8:84::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7472.28; Tue, 16 Apr
 2024 16:06:48 +0000
Received: from PH7PR11MB6053.namprd11.prod.outlook.com
 ([fe80::9461:3f2e:134a:9506]) by PH7PR11MB6053.namprd11.prod.outlook.com
 ([fe80::9461:3f2e:134a:9506%7]) with mapi id 15.20.7472.025; Tue, 16 Apr 2024
 16:06:48 +0000
Date: Tue, 16 Apr 2024 12:06:38 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <lucas.demarchi@intel.com>, <ville.syrjala@linux.intel.com>,
 <joonas.lahtinen@linux.intel.com>, <tursulin@ursulin.net>
Subject: Re: [PATCH v3 2/7] drm/i915/display: add generic to_intel_display()
 macro
Message-ID: <Zh6iDvIMmmB3lcHV@intel.com>
References: <cover.1712665176.git.jani.nikula@intel.com>
 <11bb764f479cd3638f0701d4466ae47dfd8def81.1712665176.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <11bb764f479cd3638f0701d4466ae47dfd8def81.1712665176.git.jani.nikula@intel.com>
X-ClientProxiedBy: BYAPR08CA0071.namprd08.prod.outlook.com
 (2603:10b6:a03:117::48) To PH7PR11MB6053.namprd11.prod.outlook.com
 (2603:10b6:510:1d1::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR11MB6053:EE_|DS7PR11MB6103:EE_
X-MS-Office365-Filtering-Correlation-Id: 9ed1daf1-aab9-4cef-0c8c-08dc5e2f3872
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?Gnl70oKeJy7SGU3zYpEFH1/hA/tW2761kPGj3oLlVcF2z5TWDBqzlZ5wWRsu?=
 =?us-ascii?Q?pTbNV2nnNbhiNobQ4OnkwID7unsTjKey+fTifImLdG3WoVwdDfmGO2nOOOJH?=
 =?us-ascii?Q?XKn1iI5TXbVBrYYGzt9GCXfNyysQ/LO4sZ9qDs3wZjGMkOQao6/F11LF8ff+?=
 =?us-ascii?Q?NMCOg4DyBS5B6wPVO5TzwgADFq21mBIzhRQCYjCkphUvj8xRzQ1lebSyWYFC?=
 =?us-ascii?Q?po/RwbO5vATSt/UdZFqY2z2hoko5JhzKMtcYSKarbFPSkPEY9DSr1IDadboc?=
 =?us-ascii?Q?EGI8xcdIMO3E8Q3USrgwv26kdsCgUMbMx67BvdONyvpvJUqlq7EXy/iP0Dsx?=
 =?us-ascii?Q?JPyITRnTWAdzxSmX3dVxwLaBg7+vW1OU1NDn8q419nyM0RgqsKldt7i4Lw0d?=
 =?us-ascii?Q?japYAh8V42C4UycNTnGstJLRbAuIwqkjkSgcxNQQkdJdNsbttz7bVSKNL4Rp?=
 =?us-ascii?Q?gE8f4GbJu605wFrxTkKYJVtN/gCeJTGb6mW0oUQHGssweTSZUxDdlCWoNc1V?=
 =?us-ascii?Q?/2nn4q167mCawvY7MFY90mQAp0qidIed2jPLFNuat/I8dgaqdOWwDwjnvUcq?=
 =?us-ascii?Q?cdmwuGK2SEzgtH1AcVJzPCoB/R6+4LSgPbKZEHmX4H8sAvC6B8RIOeS8gqlY?=
 =?us-ascii?Q?UpLMzeiILjbdyH1hEmLwdVAktS1wI6cGwso6KkSketv1hFXiyC6gs7AUDj9v?=
 =?us-ascii?Q?h7Ee7788D63vEcLO87DvnX5Hj7Hwg5S9aEtaWZVCINUFCvYxu5cxyzjYpnEp?=
 =?us-ascii?Q?cLRiQ1mkFa6IusK6F5CvgcSrIxZ4X/GmGIy8ZvPoxnn/iAb5o2XVL1Ogx/b6?=
 =?us-ascii?Q?MHer6csVTI686X8jSI7SjW8ErpqhRx9OsST5/BsEu8nauYpWwgUqkclnmDbC?=
 =?us-ascii?Q?SNXlWv5HZMiavGmnnHn5qxfmqvUlBHy5r4IfLIxaORsFtgs215/rN13a5sr8?=
 =?us-ascii?Q?rw7edobetQOcf/Zjuh+cxsIzgISYfszGo8HcszfZCWCAs8zfZF6NpoLjKK8H?=
 =?us-ascii?Q?OpaTxG1j1/bi4VqSy3COQJo8mY0s62AU8Pj+OAb2Fr5u02psOrVZaaiCjLlm?=
 =?us-ascii?Q?nPOdviD61YDHVIv+ZQMWku2upMVHEUqFtd5cp/1OWLxXXz953H1ySlsNHQ4H?=
 =?us-ascii?Q?oiP1Q/U0fW37V5PCOGgdeb0//OZ4RCqS4rOOpnkYXm8ulf3riyKR2aQ2xoEo?=
 =?us-ascii?Q?Ax1vfenev/X4oSbdPxc3ckB1+OB/+jVNEXaNw35e9Ry+KFTi0L919FzIqyrb?=
 =?us-ascii?Q?9RS3SY5sC4HtZODkI7LsMw0MLT8FmDzi1XChk2rZ4g=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB6053.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(1800799015)(376005); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?bbtr3543+XAg8wJMlNEDexqW/CezTW2CkmXAPwhpMox/Kna7WGqWkcGmMomf?=
 =?us-ascii?Q?FfROisL6g8KM+qSCJ6zEconoSTLqy/V5cZrUSorU82Y/IUiCHPHdoKgeIEb8?=
 =?us-ascii?Q?L/lyXEu9WXgiTTTza67LObuLN0ks7HcnX6nyLlW1/NTgMNMowCQwe7hnSAdA?=
 =?us-ascii?Q?GzTO9H3FvkpY0m4Iw6WqabbupmCzKHqR0MMqpwRe6OUm1KaOeYVQvoGyXbKv?=
 =?us-ascii?Q?UpFcsVKXmsmBFt7dSlMzgxKRwFOAQoj8X8etB19HVELGCBnWHy3VKc8XmZfV?=
 =?us-ascii?Q?1XNzRkUiQkDV2Tpr6qyS0f2HwMevTM01ZNxsX9OWMzVU2C4whsImSrtpnmPV?=
 =?us-ascii?Q?zpNva9qtxaeyguF00bgbEuPxw4oFqTCff+uSV/UAemR0rfQf0+sB/TEC9E0a?=
 =?us-ascii?Q?htv5fgKxXyJxZoxRcBk2490fJtcRUKLkYUcKzOj49XtrpxCMupgg1e2nvAd8?=
 =?us-ascii?Q?ljFS69s7LvBRJSGzjgjW9QRS+NoJXb96km8D7v36iltGs60SnzlFkVKXCu7c?=
 =?us-ascii?Q?4xmihxbtciKHorGer2rbG5Yo/mZ4OhUQHVWf5Mn+FEi7PJN6EI+PbyDXybcq?=
 =?us-ascii?Q?UoDbHIKrwi0IfOFYMtJnCPgMRiTMf7OjMwKuDolRzkAHCSiIbc48RQEwEY7y?=
 =?us-ascii?Q?sYha2ORMWWNgYlZlfpYspSmx+XiaoAz25PYdDwPXfP6mEiOVtAW5ZS5/1cXy?=
 =?us-ascii?Q?IQ1XG02+y30mV1BvunlRsF12bOkbbNbX4wCPDr0BfMz7O7OM2EX5RLmFn6Bm?=
 =?us-ascii?Q?/9NH+91YTEB47a4C3JMEpCPUZZummX3a99fGYB9TGWcqPcNTrgmzlFjwvkx/?=
 =?us-ascii?Q?0C4nlyLy1XJ7Br2HTZ0sP75I+N5p7EHl9V/yZCTJVRlMqdBVcls0fTbVSOza?=
 =?us-ascii?Q?qKd8ZxapiouUDMloexfEkzsD+RrPSVtObb/uwV2alvFKf/iQyiSSKRE5HTP0?=
 =?us-ascii?Q?+Vc6t/W3VXEs0luCO1fqjgl65G/7vODXJCmbfJoGllEs0rvqbLkzz5e8TKel?=
 =?us-ascii?Q?XXXLiOiWbCoxifINEF6fLuCx7ykMDhuqWNQJW8jeOawmaYdhTjMcyAB1rEQN?=
 =?us-ascii?Q?JFiDUL5lxvNmO6xOVamLhbRdGxJNhjK0smmSzIGIZ+UsTgy5h6BmeR7NGD71?=
 =?us-ascii?Q?vkTCo4P8nAe2KEVUctVOAcQUSKP8on61dTDd99bFczpBbuOP0xNuhximLb3Z?=
 =?us-ascii?Q?080faN+8R38HahevoVQtINbPkNatO2dKfBU+GoSGPejSH7XnXuhOTEKOmZV0?=
 =?us-ascii?Q?ylQiZPh6JX7KWaPffCuE2DEW6wa36dVtFeuEoldMBDiib4rDL0EImIEd4CLu?=
 =?us-ascii?Q?ad/+6A0uQqd6b3ABVs+wwfenf0STSxyaNFUrou3AHIVXhsE3r57/llsEfzeP?=
 =?us-ascii?Q?73TaLsFhsvoNFhG7I71zokdrpn6zCtqnldGC6MCkZQZAmh+6JabJEOXJ28qV?=
 =?us-ascii?Q?jbc3c3T97ZNQw18y3tY7w2eXABy0PIMWyaano2pQSe0CsXXxF4FEEX6L7O68?=
 =?us-ascii?Q?GiWjkITvAUuY29ZOIAgIPAKHxA6paJHKYq0mLoWUr/syft4oOJR+FgWPXhhg?=
 =?us-ascii?Q?ig4qqQVn7ENC0o05ItZ9jmkoQ/ElENJV/57Fmaf/Ugsg6G2acFmW5zLXsxDN?=
 =?us-ascii?Q?Gw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9ed1daf1-aab9-4cef-0c8c-08dc5e2f3872
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB6053.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Apr 2024 16:06:48.7176 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: aGT9p8AxTG6AWiPuJZv6X/8whZ3AnmuSKB1GjunY7U0GTpDbs0+RbXRNNyVeNh/Y1+PcbNp4BOuZnFrb4pGaFA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6103
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

On Tue, Apr 09, 2024 at 03:26:44PM +0300, Jani Nikula wrote:
> Convert various pointers to struct intel_display * using _Generic().
> 
> Add some macro magic to make adding new conversions easier, and somewhat
> abstract the need to cast each generic association. The cast is required
> because all associations needs to compile, regardless of the type and
> the generic selection.
> 
> The use of *p in the generic selection assignment expression removes the
> need to add separate associations for const pointers.
> 
> Note: This intentionally does *not* cover struct drm_i915_private or
> struct xe_device. They are not to be used in the long run, so avoid
> using this macro for them.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

I also missed this. This magic is great, let move with this already

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  .../drm/i915/display/intel_display_types.h    | 37 +++++++++++++++++++
>  1 file changed, 37 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 0f4bd5710796..1be98c4219b0 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -2197,4 +2197,41 @@ static inline int to_bpp_x16(int bpp)
>  	return bpp << 4;
>  }
>  
> +/*
> + * Conversion functions/macros from various pointer types to struct
> + * intel_display pointer.
> + */
> +#define __drm_device_to_intel_display(p) \
> +	(&to_i915(p)->display)
> +#define __intel_connector_to_intel_display(p)		\
> +	__drm_device_to_intel_display((p)->base.dev)
> +#define __intel_crtc_to_intel_display(p)		\
> +	__drm_device_to_intel_display((p)->base.dev)
> +#define __intel_crtc_state_to_intel_display(p)			\
> +	__drm_device_to_intel_display((p)->uapi.crtc->dev)
> +#define __intel_digital_port_to_intel_display(p)		\
> +	__drm_device_to_intel_display((p)->base.base.dev)
> +#define __intel_dp_to_intel_display(p)	\
> +	__drm_device_to_intel_display(dp_to_dig_port(p)->base.base.dev)
> +#define __intel_encoder_to_intel_display(p)		\
> +	__drm_device_to_intel_display((p)->base.dev)
> +#define __intel_hdmi_to_intel_display(p)	\
> +	__drm_device_to_intel_display(hdmi_to_dig_port(p)->base.base.dev)
> +
> +/* Helper for generic association. Map types to conversion functions/macros. */
> +#define __assoc(type, p) \
> +	struct type: __##type##_to_intel_display((struct type *)(p))
> +
> +/* Convert various pointer types to struct intel_display pointer. */
> +#define to_intel_display(p)				\
> +	_Generic(*p,					\
> +		 __assoc(drm_device, p),		\
> +		 __assoc(intel_connector, p),		\
> +		 __assoc(intel_crtc, p),		\
> +		 __assoc(intel_crtc_state, p),		\
> +		 __assoc(intel_digital_port, p),	\
> +		 __assoc(intel_dp, p),			\
> +		 __assoc(intel_encoder, p),		\
> +		 __assoc(intel_hdmi, p))
> +
>  #endif /*  __INTEL_DISPLAY_TYPES_H__ */
> -- 
> 2.39.2
> 
