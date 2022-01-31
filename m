Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8970D4A49E1
	for <lists+intel-gfx@lfdr.de>; Mon, 31 Jan 2022 16:10:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D060210E2A8;
	Mon, 31 Jan 2022 15:10:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E786310E2B7
 for <intel-gfx@lists.freedesktop.org>; Mon, 31 Jan 2022 15:10:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643641805; x=1675177805;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=aRjDgi4hVc9F56A1aXJ3pLitG2A/WZh9A6oaz4DKAEE=;
 b=ZgIDCJqEbnF9So6flZfaiVD/JYSCnspeSOl1Q/+RiEQLzkG3Wtte/GkD
 H6XubI5nDqWY+1DvIUWG+ASWqYeE9gnTmwHxKscOLgOQTcNK7gORwARGT
 yD5esr3TEgEb3o8PjmlD0yFW3tbtYR7KecHK7EFcbc6OKnHjhL0jiftoO
 IhVvFhAffBbWiUxW1IAg76cyWGPdAck8lNcM3P1z15GLrc74hwkeblzwN
 i2MuIgGd4objgXnx629BQbR/LKtAi4BbZCCCXM3jAypLmqhcOGL5t+ORz
 hsOvGcUVFwUTHwFyh6rDLzEyUFN2hICYy7DWB3TMMKDHTMF7VUJ48uSGY w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10243"; a="247431890"
X-IronPort-AV: E=Sophos;i="5.88,331,1635231600"; d="scan'208";a="247431890"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2022 07:10:05 -0800
X-IronPort-AV: E=Sophos;i="5.88,331,1635231600"; d="scan'208";a="522687874"
Received: from ylian16-mobl1.ccr.corp.intel.com (HELO localhost)
 ([10.252.16.100])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2022 07:10:03 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220128103757.22461-1-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220128103757.22461-1-ville.syrjala@linux.intel.com>
Date: Mon, 31 Jan 2022 17:10:01 +0200
Message-ID: <87mtjcuek6.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v2 00/17] drm/i915: M/N cleanup
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

On Fri, 28 Jan 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Rehashed version of the M/N cleanup after Jani (rightly)
> complained about the legibility of some of the patches in
> the v1 series. These are chunked to a finer pulp, some got
> revised a bit, and I left out a few of the FDI related
> things for now. I'll revisit the PCH port/FDI topic later,
> for now I just slapped in an extra patch to make sure we
> don't try to use DRRS on PCH ports.

I've commented on one bug that needs fixing, and some nitpicks and
future suggestions, but overall the series is

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

>
> Ville Syrj=C3=A4l=C3=A4 (17):
>   drm/i915: Nuke intel_dp_set_m_n()
>   drm/i915: Nuke intel_dp_get_m_n()
>   drm/i915: Nuke ilk_get_fdi_m_n_config()
>   drm/i915: Split intel_cpu_transcoder_set_m_n() into M1/N1 vs. M2/N2
>     variants
>   drm/i915: Split intel_cpu_transcoder_get_m_n() into M1/N1 vs. M2/N2
>     variants
>   drm/i915: Pass crtc+cpu_transcoder to intel_cpu_transcoder_set_m_n()
>   drm/i915: Move PCH transcoder M/N setup into the PCH code
>   drm/i915: Move M/N setup to a more logical place on ddi platforms
>   drm/i915: Extract {i9xx,ilk}_configure_cpu_transcoder()
>   drm/i915: Disable DRRS on IVB/HSW port !=3D A
>   drm/i915: Extract can_enable_drrs()
>   drm/i915: Fix intel_cpu_transcoder_has_m2_n2()
>   drm/i915: Clear DP M2/N2 when not doing DRRS
>   drm/i915: Program pch transcoder m2/n2
>   drm/i915: Dump dp_m2_n2 always
>   drm/i915: Always check dp_m2_n2 on pre-bdw
>   drm/i915: Document BDW+ DRRS M/N programming requirements
>
>  drivers/gpu/drm/i915/display/g4x_dp.c         |  18 +-
>  drivers/gpu/drm/i915/display/intel_ddi.c      |  14 +-
>  drivers/gpu/drm/i915/display/intel_display.c  | 266 ++++++++----------
>  drivers/gpu/drm/i915/display/intel_display.h  |  32 ++-
>  .../drm/i915/display/intel_display_types.h    |  19 --
>  drivers/gpu/drm/i915/display/intel_dp_mst.c   |   2 -
>  drivers/gpu/drm/i915/display/intel_drrs.c     |  50 +++-
>  .../gpu/drm/i915/display/intel_pch_display.c  |  54 +++-
>  .../gpu/drm/i915/display/intel_pch_display.h  |   6 +
>  9 files changed, 259 insertions(+), 202 deletions(-)

--=20
Jani Nikula, Intel Open Source Graphics Center
