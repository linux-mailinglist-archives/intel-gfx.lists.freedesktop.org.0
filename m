Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BA7324874BF
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Jan 2022 10:35:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD43F11A1EA;
	Fri,  7 Jan 2022 09:35:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 920E511A1A3
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Jan 2022 09:35:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641548105; x=1673084105;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=Gf8CVuDzx+AhrcCz/VH41Nb4bUtBN8/nmz65MpeGBlg=;
 b=QXFzckr4CoDZyy7GWZBFoUdnmKnZiDYM8C2XJgGu1R8kOMPSKTeud4Cq
 OfzZlGDotQe5LMWfPAGxNFXsCQ/OYcTS97e0h9UpjA2XbBfK3+IizGP9A
 KQJ/Up4iyFIWKvsyiRQmGDr0RYAFx0XyMCXfVWBjX7NYg02/ObYFTcAY3
 3pP4PN+qV0HH48n82SZdKzfn5EukTfegVZhIJv2i4Fk5D8EZmXV78b5tU
 ZNIi08JKPj6CFHnw2fSg4qlXnqFZtEYpvktm7fcwQhb5PvUCdiPGlwnBZ
 wUG4dBzNlTTMwTvsnuMTu82dKSEyMgWm2IHgL6U7YuKtF6dYajyTB1Qhg g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10219"; a="241657195"
X-IronPort-AV: E=Sophos;i="5.88,269,1635231600"; d="scan'208";a="241657195"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jan 2022 01:35:05 -0800
X-IronPort-AV: E=Sophos;i="5.88,269,1635231600"; d="scan'208";a="527318310"
Received: from dgreerx-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.24.206])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jan 2022 01:35:02 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Matt Roper <matthew.d.roper@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20220106230823.2791203-1-matthew.d.roper@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220106230823.2791203-1-matthew.d.roper@intel.com>
Date: Fri, 07 Jan 2022 11:34:56 +0200
Message-ID: <87czl3nb27.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 0/1] Start cleaning up register definitions
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 06 Jan 2022, Matt Roper <matthew.d.roper@intel.com> wrote:
> Our i915_reg.h file has become a huge unwieldy mess over the years.  A
> lot of definitions don't follow any logical ordering, there's
> unintentional duplication of registers under different names, the coding
> style is very inconsistent, and there's tons of unused definitions
> (nearly a quarter of i915_reg.h is dead code!).  This makes it a pain to
> work with and also needlessly slows down development since any trivial
> change to i915_reg.h forces us to unnecessarily rebuild the entire i915
> driver instead of just the affected are of the code.

Agreed.

> I'd like to start cleaning up the register definitions in a few steps:
>  (1) Eliminate unnused register and bit definitions.  Some of these may
>      get re-added in the future if/when code starts using them but
>      that's fine; we'd prefer to carefully (re)review the register
>      definitions at that time anyway.

I don't agree with this one, though. I'll reply to the actual patch on
details.

I think step 1 should be splitting out the generic register type and
helper macros to a separate file. It's needed by a number of other
headers for i915_reg_t while most of them don't need any actual register
macros, and the ones that do should be refactored to not require them.

Another early step should be splitting out the non-MMIO macros, for
example the IOSF and PUNIT sideband stuff. They don't necessarily fall
to the below categories.

>  (2) Move registers exclusive to the command parser to their own header
>  (3) Move OA registers to their own header
>  (4) Move GT registers to their own header
>  (5) Move display registers to their own header

Agreed.

>  (6) While moving things to new files, take the opportunity to also
>      update to update to a consistent coding style:  consistent
>      indentation, consistent case for hex values, use of
>      REG_BIT/REG_GENMASK, etc.

I think this should be split to separate move and cleanup patches. More
than anything, this is because of review mechanics. It's trivial to
review code movement by comparing diffs where the only difference in
content is +/- at the beginning of the lines. Submit, review, merge,
forget. Switching to REG_BIT/REG_GENMASK etc. needs though, and is
easier done when the diff is limited to those changes. If there are
issues found in review, you don't have to double check the code movement
anymore.

> This will make it easier to find an appropriate place to add new
> registers and should also improve quality of life for developers since
> driver builds will be faster in cases where a register is added/updated
> and only a specific part of the driver needs to be rebuilt.

Agreed. Basically only .c files should include the headers that have
register macros, and only the ones that are actually needed.

> This only includes step (1) above; the other steps will come as
> follow-up patches if there's no concern with the general goal.

While I appreciate and agree with the overall effort and goal, I don't
think this should be the first patch, nor do I think this should be an
indiscriminate automated mass removal of macros. More on that later.


BR,
Jani.

>
> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> Cc: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
>
> Matt Roper (1):
>   drm/i915: Drop unused register definitions
>
>  drivers/gpu/drm/i915/i915_reg.h | 3107 +------------------------------
>  1 file changed, 9 insertions(+), 3098 deletions(-)

--=20
Jani Nikula, Intel Open Source Graphics Center
