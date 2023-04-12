Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A18686DF74D
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Apr 2023 15:34:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE33510E7F5;
	Wed, 12 Apr 2023 13:34:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BEE0110E7E5
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Apr 2023 13:34:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681306472; x=1712842472;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=N64LW98UgvRTpT89c3ycl6AZsUyfxpdiXUFpQFUSYjU=;
 b=myXcrFKouSJ3xC1brcRdpbL6sM8HcYClyNlSeqtF/S2kR6rD0LQz3ghm
 GU/k9p8FJsj2P8YPda4C/hrogARdMOHuNtzc/DMw+AAIh/DhvRHXD5ABO
 NhNKquX+D9AxqsOx9YEEvSSEBomXicNz3v15NXIE3PZl92EGRNAaL4Cnz
 mkY3MVuD8x4+NkXppZylfs9LmtrgERy974CZOSlW+iLn5G3YZgCXdOybl
 lMv4xQaXJukToiF3PU6D3nXJxUEdeo2iWA+ejg47IV8cG6soAM4c/dJvT
 tH0C7mU0tnJ6l3htZEvd3DkWHg+RRmipAOFXC/QJPeSvyauRava9PPU+3 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10678"; a="342652178"
X-IronPort-AV: E=Sophos;i="5.98,339,1673942400"; d="scan'208";a="342652178"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2023 06:34:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10678"; a="778303382"
X-IronPort-AV: E=Sophos;i="5.98,339,1673942400"; d="scan'208";a="778303382"
Received: from smoticic-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.45.172])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2023 06:34:29 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>, Mika Kahola
 <mika.kahola@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <168130241568.5121.2708879208728811060@gjsousa-mobl2>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230403085043.2219092-1-mika.kahola@intel.com>
 <168125326577.3326.16288863179121640086@gjsousa-mobl2>
 <87o7ntcum5.fsf@intel.com>
 <168130241568.5121.2708879208728811060@gjsousa-mobl2>
Date: Wed, 12 Apr 2023 16:34:27 +0300
Message-ID: <87ile1cjh8.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH] drm/i915/mtl: Add support for PM DEMAND
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
Cc: Matt Roper <matthew.d.roper@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 12 Apr 2023, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
> Quoting Jani Nikula (2023-04-12 06:33:54)
>> On Tue, 11 Apr 2023, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
>> > Quoting Mika Kahola (2023-04-03 05:50:43)
>> >> @@ -8250,6 +8259,7 @@ void intel_init_display_hooks(struct drm_i915_private *dev_priv)
>> >>         intel_color_init_hooks(dev_priv);
>> >>         intel_init_cdclk_hooks(dev_priv);
>> >>         intel_audio_hooks_init(dev_priv);
>> >> +  intel_init_pmdemand(dev_priv);
>> >
>> > I think intel_init_display_hooks() is meant to call functions setting up
>> > function pointers, right? That would not be the case for intel_init_pmdemand().
>> >
>> > I think we could rename intel_init_pmdemand() to
>> > intel_pmdemand_init_early() and call it inside i915_driver_early_probe().
>> 
>> Please let's not add new direct calls to display from top level driver
>> code. See also [1].
>
> Okay. What would be the suggested place to do this SW-only initialization?
>
> Should we just merge the two init functions into one named intel_pmdemand_init()
> and call the new function under intel_modeset_init_noirq()?

Or add a new function intel_display_early_probe() or somesuch, which
will call the early pmdemand init as well as intel_init_display_hooks()
that is currently called from i915_driver_early_probe().

Bottom line, there should only be one high level call from
i915_driver_early_probe().

There are similar needs for other things [1].

BR,
Jani.


[1] https://lore.kernel.org/r/20230411195918.hdxyir5w7dp2qx55@ldmartin-desk2.lan


>
> --
> Gustavo Sousa

-- 
Jani Nikula, Intel Open Source Graphics Center
