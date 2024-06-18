Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 430FE90C883
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jun 2024 13:09:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 81BB010E534;
	Tue, 18 Jun 2024 11:09:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jylR0oxO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9C7A910E211
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Jun 2024 11:09:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718708961; x=1750244961;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=JXyMFIbxTHSAdNg609vPjBeJdk+Ba3HFu1O7I/9ghws=;
 b=jylR0oxO7inEyYlFf9ZmiRnwvtKUThfmcuRYtt8eChK/20QZ8v4bnJTs
 P1AXLkGc0YojAN2KxF07gDbVkj5zNAHo1zGVtF8Z393/WG8G1L+S9Uznz
 brGIfKfAE9Jmp/DjJ+G2MjPELjeH1eQ/POgHSmz8REZ6/VcbpX+2KCNeI
 e1zYTsEuYJuF5RF8vtaAA1+1yCVo6kQPQzEfpA03GK/AdPeQcyYO4He8y
 5iU08/La4EF2m6gZ49jpBNXdz0abkfCTPg6LieaWY4CqSNhLeOY7jMkP2
 Ds2RNlgE2Qz9xKy7LlvGZpQA3AtP8nozSp+KGBODg+DVCnPvewbFYpOu1 Q==;
X-CSE-ConnectionGUID: hXaSO9u3QJSnR5aMitcjDw==
X-CSE-MsgGUID: uhGc6/wBSAmb1pFRc03/Rg==
X-IronPort-AV: E=McAfee;i="6700,10204,11106"; a="15722058"
X-IronPort-AV: E=Sophos;i="6.08,247,1712646000"; d="scan'208";a="15722058"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2024 04:09:21 -0700
X-CSE-ConnectionGUID: 3OtyW/RIT7CbKmq9ligPfQ==
X-CSE-MsgGUID: 0YEulkR+R/CDFd2CaEBLng==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,247,1712646000"; d="scan'208";a="41378020"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.176])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2024 04:09:19 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 00/11] drm/i915/dsb: DSB prep stuff
In-Reply-To: <20240611133344.30673-1-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240611133344.30673-1-ville.syrjala@linux.intel.com>
Date: Tue, 18 Jun 2024 14:09:17 +0300
Message-ID: <87zfrifqxu.fsf@intel.com>
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

On Tue, 11 Jun 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> More prep work extracted from my upcoming DSB based plane
> programming series.

One nitpick, otherwise

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

on the series


>
> Ville Syrj=C3=A4l=C3=A4 (11):
>   drm/i915: Extract intel_crtc_arm_vblank_event()
>   drm/i915: Add async flip tracepoint
>   drm/i915: Add flip done tracepoint
>   drm/i915: Introduce intel_mode_vdisplay()
>   drm/i915: Pass the whole atomic state to intel_color_prepare_commit()
>   drm/i915/dsb: Plumb the whole atomic state into intel_dsb_prepare()
>   drm/i915/dsb: Convert the DSB code to use intel_display rather than
>     i915
>   drm/i915/dsb: Add i915.enable_dsb module parameter
>   drm/i915: Drop useless intel_dsb.h include
>   drm/i915/dsb: Document that the ATS fault bits are for mtl+
>   drm/i915/dsb: Try to document that DSB_STATUS bit 16 is level
>     triggered
>
>  .../gpu/drm/i915/display/intel_atomic_plane.c | 22 +++++--
>  .../gpu/drm/i915/display/intel_atomic_plane.h |  4 ++
>  drivers/gpu/drm/i915/display/intel_color.c    | 13 ++--
>  drivers/gpu/drm/i915/display/intel_color.h    |  3 +-
>  drivers/gpu/drm/i915/display/intel_crtc.c     | 30 +++++----
>  drivers/gpu/drm/i915/display/intel_crtc.h     |  1 +
>  drivers/gpu/drm/i915/display/intel_display.c  | 12 ++--
>  .../gpu/drm/i915/display/intel_display_irq.c  |  1 +
>  .../drm/i915/display/intel_display_params.c   |  3 +
>  .../drm/i915/display/intel_display_params.h   |  1 +
>  .../drm/i915/display/intel_display_trace.h    | 50 ++++++++++++++
>  drivers/gpu/drm/i915/display/intel_dsb.c      | 66 ++++++++++---------
>  drivers/gpu/drm/i915/display/intel_dsb.h      |  4 +-
>  drivers/gpu/drm/i915/display/intel_dsb_regs.h |  6 +-
>  drivers/gpu/drm/i915/display/intel_vblank.c   | 10 +++
>  drivers/gpu/drm/i915/display/intel_vblank.h   |  1 +
>  16 files changed, 165 insertions(+), 62 deletions(-)

--=20
Jani Nikula, Intel
