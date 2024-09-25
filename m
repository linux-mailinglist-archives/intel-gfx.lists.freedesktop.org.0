Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 545D5985735
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Sep 2024 12:32:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3B7E010E7DD;
	Wed, 25 Sep 2024 10:32:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Mf41RvHT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E9A7510E7DD;
 Wed, 25 Sep 2024 10:32:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727260329; x=1758796329;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=GRsbMwsXEeF4rwKBWgefVKf7EZfnNpB4W79N3EU+518=;
 b=Mf41RvHTV1Ra1MoOk6b7q6F1Xi79XzdvOZPJXZqFrbbAzMNnP6x3tkeS
 +k36L+q7Zy5yWKxfTSrZywXv1lP9rhmnTUt7vUKfqCM4sYVTzbzzzjbBn
 dBwGC1zSZ4hrh9ZzGt2LReC0OIKraMEvtDMfHM35nrID+AxDywJdf4SB+
 Vd+CYbKWsFtkrOTnieT0eJPJOxmnMHlJk3l2x43i2wC8L9sN69q4sYLV0
 ob5t/pEq1D9LJR4AdHtWsPMqp6rUZ6WSRw+x8UCuzdFEgxOEaAlNQhT0l
 9CSB5ORVvRrx0tKnaEKCOIk6QH1hQ7eKV/Xa+PW2S+bXe17TykVPoXwWb A==;
X-CSE-ConnectionGUID: YelaWVQbQMeXAV/VGuvQKQ==
X-CSE-MsgGUID: 3BfoGFsdTsG2GrhnMlN7uw==
X-IronPort-AV: E=McAfee;i="6700,10204,11205"; a="26247806"
X-IronPort-AV: E=Sophos;i="6.10,257,1719903600"; d="scan'208";a="26247806"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Sep 2024 03:32:08 -0700
X-CSE-ConnectionGUID: YbbH6tryS0qBoy19QwkWfw==
X-CSE-MsgGUID: sLbE+GbaQvmCrZ7g13H3IA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,257,1719903600"; d="scan'208";a="76658721"
Received: from sschumil-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.16])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Sep 2024 03:32:06 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Cc: imre.deak@intel.com, Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: Re: [PATCH 00/31] Reconcile i915's and xe's display power mgt
 sequences
In-Reply-To: <20240924204222.246862-1-rodrigo.vivi@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240924204222.246862-1-rodrigo.vivi@intel.com>
Date: Wed, 25 Sep 2024 13:32:03 +0300
Message-ID: <87ed582fdo.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Tue, 24 Sep 2024, Rodrigo Vivi <rodrigo.vivi@intel.com> wrote:
> Reconcile i915's and xe's display power management sequences.
>
> The main goal of this series is to ensure that the display
> power management sequences from both drivers are fully aligned.
> So, it needs to live under i915/display/ and xe_display_pm
> can only be a wrapper to check for the xe's module
> parameter before jumping in the i915/display functions.
>
> During this process, it was clear that the Xe's runtime pm
> sequences for integrated gfx (non d3cold capable) was totally
> misaligned with i915 and prune to more bugs. So, this series ends
> up fixing this and bringing a full alignment there as well.
>
> The one new thing under i915 is the d3cold sequences. Apparently
> that can be reduced, but for now this is what is validated and
> stable on both DG2 and BMG. So, let's move that to the
> i915/display side as well and continue on the improvements with
> the code in the right place.
>
> When I started this work I was hoping that I could run more
> conversions to intel_display struct before moving things from
> i915_driver.c to intel_display_driver, however that was a deeper
> task and this series is already deep enough.

Holy crap this is scary and a PITA to review but exactly what we'll
need! Thanks for doing this. I've been shying away from this too long.

I'll try to put in some review effort, but at the same time just more
eyeballs than mine would be great.

BR,
Jani.


-- 
Jani Nikula, Intel
