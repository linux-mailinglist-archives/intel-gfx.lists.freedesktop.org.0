Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 75234C52A71
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Nov 2025 15:19:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 073B910E17A;
	Wed, 12 Nov 2025 14:19:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bkam7AuX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A3CB910E17A;
 Wed, 12 Nov 2025 14:19:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762957156; x=1794493156;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=LEWDcjvnJHEeTINa/9LBDNEh1Q1iYGH+TxZ6VnWf5OU=;
 b=bkam7AuXoynRMe/OlBuxha2+/gIVfAEUprWoWbPeRvRr4pENP/1TauyB
 Yoe3i8Ga++Io9PMYyXsNyM873HsNZ2EAerM7p1RIATfImVVCm6HXGlek+
 gEdHZjlKw1tct8qXKSgHDp48RJjwMs4lmlXOn6CizPfTg72lqJkoECRkX
 aggp56x0hcClhPS/BIS2xksj1ph2lPFY3YmoYHsdiyIJeUd58uAVq1Tu1
 iUljF+gzqvNq1UotWHcKFWjTtwvUH9U8poqXbKkRHRzKKrrvty4rP6xUX
 c/lBMHANF7r/DkEHGcOxPpniakCiPea4cGJbYEq7DKzyF9VHRW50x6rTo g==;
X-CSE-ConnectionGUID: vvsCcvLOQQaaCklqTjXGjg==
X-CSE-MsgGUID: O0sV5dGqR4i/jwKt670YFw==
X-IronPort-AV: E=McAfee;i="6800,10657,11611"; a="87660778"
X-IronPort-AV: E=Sophos;i="6.19,299,1754982000"; d="scan'208";a="87660778"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2025 06:19:15 -0800
X-CSE-ConnectionGUID: +MwskesrRxWzkYO8Zk/GCA==
X-CSE-MsgGUID: tcMihyvkTgKakPrIAGRa5w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,299,1754982000"; d="scan'208";a="219978225"
Received: from ettammin-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.54])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2025 06:19:13 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH v2 3/3] drm/{i915,xe}/display: move irq calls to parent
 interface
In-Reply-To: <13b044a043667b1247f6d12df01014bcb8edf708@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1762846363.git.jani.nikula@intel.com>
 <d0b480c27105b1013153212aafcb06bdf81a8757.1762846363.git.jani.nikula@intel.com>
 <aRNbNOb-bJsg4k35@intel.com>
 <13b044a043667b1247f6d12df01014bcb8edf708@intel.com>
Date: Wed, 12 Nov 2025 16:19:10 +0200
Message-ID: <30fdcb1be4b9046453a2ba00d5fd99478948538a@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
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

On Wed, 12 Nov 2025, Jani Nikula <jani.nikula@intel.com> wrote:
> On Tue, 11 Nov 2025, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.c=
om> wrote:
>> On Tue, Nov 11, 2025 at 09:34:04AM +0200, Jani Nikula wrote:
>>> Add an irq parent driver interface for the .enabled and .synchronize
>>> calls. This lets us drop the dependency on i915_drv.h and i915_irq.h in
>>> multiple places, and subsequently remove the compat i915_irq.h and
>>> i915_irq.c files along with the display/ext directory from xe
>>> altogether.
>>>=20
>>> Use intel_irqs_enabled() and intel_synchronize_irq() static wrappers for
>>> parent interface calls in intel_display_irq.c while chasing the function
>>> pointers everywhere else. It's still a bit uncertain if we should
>>> universally have wrappers for the parent interface calls or not.
>>
>> Why would we want those ugly pointer chains anywhere (except perhaps
>> for single use cases)?
>
> I guess my main point is, I'm not yet sure how those wrappers should be
> organized, and I'm simply postponing the decision. But let's discuss.
>
> I'm leaning towards putting them in files that are separate from the
> implementation, i.e. intel_irqs_enabled() and intel_synchronize_irq()
> would *not* be in intel_display_irq.[ch] but rather in
> something_parent_something.[ch]. Because it's not so much about the
> functionality, it's all about calling the parent interface.
>
> Maybe just one file grouping *all* parent interface access, similar to
> how include/drm/intel/display_parent_interface.h defines the interface.
>
> And then should the naming indicate it's calling the parent? I think
> there's value in knowing where the call ends up when reading the
> code. But then do the function names end up being unweildy?
>
> If you simply translate display->parent->irq->enabled to a function
> name, it would be display_parent_irq_enabled(). Or perhaps
> intel_parent_irq_enabled(). And you'd have the naming scheme right
> there, always 1:1 without further thinking.
>
> intel_display_rpm.[ch] has it all in a dedicated file now. But there's
> really nothing runtime pm specific there anymore, it's just mechanical
> calling of the interface and relaying parameters and return values.
>
> I think we have too much "intel_display_something_something.[ch]" so
> maybe intel_parent.[ch] and intel_parent_<SUBSTRUCT>_<FUNCTION>()?

Typed it up, I like it, sent as v3.

BR,
Jani.


--=20
Jani Nikula, Intel
