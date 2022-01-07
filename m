Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C9C844875DD
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Jan 2022 11:46:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 09F8011287C;
	Fri,  7 Jan 2022 10:46:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9DDBC112852
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Jan 2022 10:46:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641552416; x=1673088416;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=PqINruenHDf12WgrUOGlfYtME8TR0NRs7hQpsdftWWQ=;
 b=F0qV0gZW5WSH2MW5IvQygw83GM1fv2DRF9vGwWIZWM/YOlGs3RaPh61j
 34Mo9nPW+3tO4xJ7O0oIgQVDiTSw6PoNpQYZInJqxWoPaVnKIrLrK3IJb
 hEjXizY1dAWevsX4ACSa1J0sRtxJl7EwxW+XXbELOrasCAwrsQPk+e6Vd
 GaD+WA+Gzy88ncYqz5ENV4zqcPuRwvWnkk8NGUMCe5ar8qYM3568pLGXH
 eLchTuJTVa9mQxUvXe/uED93GNJw7+M5De2PahDhSSE4qpRp5XUi0vQYe
 HH8mjShpZH4+Vqgvb4LLteTj/anaPdyl8gDMHB4+WnaLNqGn1plGCp4uP A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10219"; a="267147327"
X-IronPort-AV: E=Sophos;i="5.88,269,1635231600"; d="scan'208";a="267147327"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jan 2022 02:46:56 -0800
X-IronPort-AV: E=Sophos;i="5.88,269,1635231600"; d="scan'208";a="489256560"
Received: from dgreerx-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.24.206])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jan 2022 02:46:53 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Matt Roper <matthew.d.roper@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20220106230823.2791203-2-matthew.d.roper@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220106230823.2791203-1-matthew.d.roper@intel.com>
 <20220106230823.2791203-2-matthew.d.roper@intel.com>
Date: Fri, 07 Jan 2022 12:46:48 +0200
Message-ID: <874k6fn7qf.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 1/1] drm/i915: Drop unused register
 definitions
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
> A large percentage (nearly 25%) of the register and bit definitions in
> i915_reg.h are not used by the i915 driver and are effectively dead
> code.  There are a few origins for these unused definitions:
>
>  * Registers only accessed by workarounds that were either retracted by
>    the hardware team or that only applied to pre-production steppings
>    and have been removed from the driver.
>
>  * General refactoring of the codebase (e.g., separate definitions of
>    REG1, REG2, REG3 being replaced by a parameterized REG(n) macro
>    without the original definitions being dropped.
>
>  * In the early days of i915, all registers in an area of the hardware,
>    or all bits in a given register got documented in i915_reg.h "just in
>    case" they needed to be used in the future.  With the exploding
>    complexity of the hardware and huge number of platforms we now
>    support, mass-documenting everything as #define's doesn't scale.
>    We'd also generally prefer *not* to have definitions already in the
>    driver before they're used since we'd rather review them explicitly
>    alongside new code that is starting to use them.

I still tell people to 1) split out register definitions to separate
patches, and 2) add macros for the entire feature and full contents for
each register, even if they remain unused.

One of the main reasons is review economics. It's pretty easy to look at
a patch adding register contents, review it against the bspec and be
done with it. And while you have the right bspec page open, it only
takes a very short time to add and review the entire register, instead
of having to return to it later. A patch adding just the registers could
get reviewed and merged at v1. It's one less patch the developer has to
keep carrying and rebasing, and it's one less portion the reviewer has
to worry about.

Overall it's about getting the easy stuff done and behind you first. And
that's a huge part of my whole approach to kernel development, and what
I try to tell others to follow.

I also think the documentation aspect is still valid, and especially so
for older hardware. It may be fine to remove some of the accumulated
cruft, *after* the register macros have been split up to smaller files
by functionality. But I don't think it should be an indiscriminate mass
removal of macros. For example, I don't think I want any of the sideband
or VGA or PCI register macros removed.

Bottom line, I don't mind adding or having unused register macros at
all. Heck, I'd be on board for switching to auto-generated register
macros with absolutely everything.

Of course, this is only about register macros that describe the
hardware, not so much about driver implementation where I'd toss unused
code to the curb in a heartbeat.

From a purely pragmatic perspective, please proceed with the
non-controversial splitting up i915_reg.h to individual files, switching
to REG_* macros for contents, etc, etc, first. Just please don't start
with this one because it's going to be a long tedious debate that will
suck the life force right out of us and make you want to stop doing the
whole thing. (Remember, get the easy stuff done and behind you first. ;)


BR,
Jani.


>
> Let's start cleaning up the register definition file by removing a bunch
> of dead code.  I used a cscope database to track down most of these via
> searches like:
>
>    for x in $(grep '^#define' drivers/gpu/drm/i915/i915_reg.h | awk '{ pr=
int $2 }' | cut -d'(' -f1); do count=3D$(cscope -d -R -L0 $x | wc -l); if (=
($count <=3D 1)); then echo $x; fi; done
>
> although I had to watch out for cases where register/bit names are never
> referenced directly, but are constructed elsewhere by macro
> concatenation (e.g., GEN3_IRQ_INIT()).
>
> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> Cc: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>

--=20
Jani Nikula, Intel Open Source Graphics Center
