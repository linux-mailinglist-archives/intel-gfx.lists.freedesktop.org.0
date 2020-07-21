Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 31ED0227969
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Jul 2020 09:24:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5543E6E48D;
	Tue, 21 Jul 2020 07:24:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 460B76E48D
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Jul 2020 07:24:07 +0000 (UTC)
IronPort-SDR: mhj3ExV5A6CPCGsxuDps3tsLGNuVPmEQht/FqcughoZBVepg12QYJ7dTHbC1kk0+/ibLZu8c4f
 hvD2/qoCBGpw==
X-IronPort-AV: E=McAfee;i="6000,8403,9688"; a="138174510"
X-IronPort-AV: E=Sophos;i="5.75,378,1589266800"; d="scan'208";a="138174510"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2020 00:24:06 -0700
IronPort-SDR: X/jd1IbPHh7x9eafsZ1N9fa51AHLU5a+XyJVBIHB9XL+TyWItRRW5Dc9NwVfcsUTA5nxrVMN3L
 rol2igwbDJKg==
X-IronPort-AV: E=Sophos;i="5.75,378,1589266800"; d="scan'208";a="461979882"
Received: from kcritchl-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.8.26])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2020 00:24:02 -0700
MIME-Version: 1.0
In-Reply-To: <87d04w2a1o.fsf@intel.com>
References: <87d04w2a1o.fsf@intel.com>
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
To: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>, Chris Wilson <chris@chris-wilson.co.uk>, Jani Nikula <jani.nikula@intel.com>, Ville Syrjälä <ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Date: Tue, 21 Jul 2020 10:23:56 +0300
Message-ID: <159531623614.7224.4556574560956572582@jlahtine-desk.ger.corp.intel.com>
User-Agent: alot/0.8.1
Subject: Re: [Intel-gfx] Fixes that failed to apply to v5.8-rc5
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

Based on there being no replies, I'll assume the below mentioned
patches can be skipped.

There is one new commit, which I'll skip considering we're at -rc7
already:

b588e7015c92 ("drm/i915: Provide the perf pmu.module")

Regards, Joonas

Quoting Jani Nikula (2020-07-15 16:16:19)
> 
> Hi all -
> 
> The following commits have been marked as Cc: stable or fixing something
> in v5.8-rc5 or earlier, but failed to cherry-pick to
> drm-intel-fixes. Please see if they are worth backporting, and please do
> so if they are.
> 
> Failed to cherry-pick:
> e5ec1f954869 ("drm/i915/fbc: Use the correct plane stride")
> 1d9221e9d395 ("drm/i915: Skip signaling a signaled request")
> 
> I've already sent the pull request for -rc6 [1], I presume Joonas will
> take over the backports, if any, next week.
> 
> BR,
> Jani.
> 
> 
> [1] http://lore.kernel.org/r/87ft9t0vtt.fsf@intel.com
> 
> -- 
> Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
