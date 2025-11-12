Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F532C51746
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Nov 2025 10:50:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D56E10E047;
	Wed, 12 Nov 2025 09:50:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eJq3EvrW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 09F6B10E040;
 Wed, 12 Nov 2025 09:50:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762941028; x=1794477028;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=ZXu2i0N6cHbkfe7hkCQI3sWoIKE9zIW8C1h8Ay5tNmU=;
 b=eJq3EvrWN9CGyiKB18ehIvj6xoJTGs/bqwk6v3UpLaLXd/VK1Wbj57fe
 TQsOeQ8b9ZQmGy+eNF5j4bzhQ/w13G67yPtxN8paaoUQowuEWCaqAbIJB
 7UkDYGgI4irhI49a+Dj2UYgQWVG3dscWtBwGj6WS9kX2Axh91vwXkF/2o
 HV4sxGV3I8yomDdF7JWmysnKZUxn25D/IPp967ntRJ9eeICXs4vT5mqWb
 IvyC3twDBANlO8hes/2aMtRgU8GTo+70SfTkJ8yi+zqWR/rBsLfYR39+8
 7flFpgu+HC/xRsYLBEZpFQ7jScrJSYDoOt2gY6nnWYmDyukipZlzmoY5u g==;
X-CSE-ConnectionGUID: ZA/fInHaRrO2PqysrO3tUw==
X-CSE-MsgGUID: XszNMn3pR42FtXNBalU0rA==
X-IronPort-AV: E=McAfee;i="6800,10657,11610"; a="75306377"
X-IronPort-AV: E=Sophos;i="6.19,299,1754982000"; d="scan'208";a="75306377"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2025 01:50:27 -0800
X-CSE-ConnectionGUID: SH1osFc+SE6Suq2uzSlNpA==
X-CSE-MsgGUID: NvesHU5xSUmnBteQQZ9Law==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,299,1754982000"; d="scan'208";a="194157794"
Received: from ettammin-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.54])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2025 01:50:26 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH v2 3/3] drm/{i915,xe}/display: move irq calls to parent
 interface
In-Reply-To: <aRNbNOb-bJsg4k35@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1762846363.git.jani.nikula@intel.com>
 <d0b480c27105b1013153212aafcb06bdf81a8757.1762846363.git.jani.nikula@intel.com>
 <aRNbNOb-bJsg4k35@intel.com>
Date: Wed, 12 Nov 2025 11:50:22 +0200
Message-ID: <13b044a043667b1247f6d12df01014bcb8edf708@intel.com>
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

On Tue, 11 Nov 2025, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Tue, Nov 11, 2025 at 09:34:04AM +0200, Jani Nikula wrote:
>> Add an irq parent driver interface for the .enabled and .synchronize
>> calls. This lets us drop the dependency on i915_drv.h and i915_irq.h in
>> multiple places, and subsequently remove the compat i915_irq.h and
>> i915_irq.c files along with the display/ext directory from xe
>> altogether.
>>=20
>> Use intel_irqs_enabled() and intel_synchronize_irq() static wrappers for
>> parent interface calls in intel_display_irq.c while chasing the function
>> pointers everywhere else. It's still a bit uncertain if we should
>> universally have wrappers for the parent interface calls or not.
>
> Why would we want those ugly pointer chains anywhere (except perhaps
> for single use cases)?

I guess my main point is, I'm not yet sure how those wrappers should be
organized, and I'm simply postponing the decision. But let's discuss.

I'm leaning towards putting them in files that are separate from the
implementation, i.e. intel_irqs_enabled() and intel_synchronize_irq()
would *not* be in intel_display_irq.[ch] but rather in
something_parent_something.[ch]. Because it's not so much about the
functionality, it's all about calling the parent interface.

Maybe just one file grouping *all* parent interface access, similar to
how include/drm/intel/display_parent_interface.h defines the interface.

And then should the naming indicate it's calling the parent? I think
there's value in knowing where the call ends up when reading the
code. But then do the function names end up being unweildy?

If you simply translate display->parent->irq->enabled to a function
name, it would be display_parent_irq_enabled(). Or perhaps
intel_parent_irq_enabled(). And you'd have the naming scheme right
there, always 1:1 without further thinking.

intel_display_rpm.[ch] has it all in a dedicated file now. But there's
really nothing runtime pm specific there anymore, it's just mechanical
calling of the interface and relaying parameters and return values.

I think we have too much "intel_display_something_something.[ch]" so
maybe intel_parent.[ch] and intel_parent_<SUBSTRUCT>_<FUNCTION>()?

BR,
Jani.


--=20
Jani Nikula, Intel
