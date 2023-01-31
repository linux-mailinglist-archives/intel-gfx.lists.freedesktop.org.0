Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DB56568257D
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Jan 2023 08:22:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 352CA10E0F1;
	Tue, 31 Jan 2023 07:22:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F258D10E0F1
 for <intel-gfx@lists.freedesktop.org>; Tue, 31 Jan 2023 07:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675149753; x=1706685753;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=gLzRyzMlOW7bu/sdJC/OZ6U4HVVk6I8s8Dh6n0W28rM=;
 b=OqHjbyzM4LySP3ICNBBWthNcOpfsWwFUZbTRYloNzTeHCouitNRiKcOE
 hIbvdbcMZQBuGftw8oKsXXW3Xxb32MztKSUEsCU/84GXWtu2huBoM5oHw
 ygHWSggGwIC4/SQC+QQ46lmNHlfw3Cm0V5K6QW5GisETcsW522y67Kb8u
 3oPTVJIuHnVkv3JtGCT1vjwokAzgIr1TijO5g5L7u9NLFdKoDGUR070tn
 kElssjdqFapTeiFWUQczSJFWxrbeA5DRfG0HHtgyn6jmoew+Cs46KuY1N
 oDPBRIzOOy6fnYPZuwLWKkqAVMDT8cOY17M/Dq6M7O8JGk7UZx52MYFT9 A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10606"; a="413989364"
X-IronPort-AV: E=Sophos;i="5.97,259,1669104000"; d="scan'208";a="413989364"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2023 23:22:33 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10606"; a="753139461"
X-IronPort-AV: E=Sophos;i="5.97,259,1669104000"; d="scan'208";a="753139461"
Received: from akryuko1-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.34.35])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2023 23:22:32 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20230130180540.8972-1-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230130180540.8972-1-ville.syrjala@linux.intel.com>
Date: Tue, 31 Jan 2023 09:22:29 +0200
Message-ID: <87r0vb2moa.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 0/8] drm/i915: LVDS cleanup
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

On Mon, 30 Jan 2023, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Some cleanup/modernization of the LVDS code.

Please spell check the commit messages, otherwise the series is

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

>
> Ville Syrj=C3=A4l=C3=A4 (8):
>   drm/i915/lvds: Split long lines
>   drm/i915/lvds: Use intel_de_rmw()
>   drm/i915/lvds: Use REG_BIT() & co.
>   drm/i915/lvds: Extract intel_lvds_regs.h
>   drm/i915/lvds: Fix whitespace
>   drm/i915/lvds: s/dev_priv/i915/
>   drm/i915/lvds: s/intel_encoder/encoder/ etc.
>   drm/i915/lvds: s/pipe_config/crtc_state/
>
>  drivers/gpu/drm/i915/display/intel_display.c  |   1 +
>  drivers/gpu/drm/i915/display/intel_lvds.c     | 332 +++++++++---------
>  .../gpu/drm/i915/display/intel_lvds_regs.h    |  65 ++++
>  drivers/gpu/drm/i915/display/intel_panel.c    |   1 +
>  .../gpu/drm/i915/display/intel_pch_display.c  |   1 +
>  drivers/gpu/drm/i915/display/intel_pps.c      |   1 +
>  drivers/gpu/drm/i915/i915_reg.h               |  56 ---
>  drivers/gpu/drm/i915/intel_gvt_mmio_table.c   |   1 +
>  8 files changed, 232 insertions(+), 226 deletions(-)
>  create mode 100644 drivers/gpu/drm/i915/display/intel_lvds_regs.h

--=20
Jani Nikula, Intel Open Source Graphics Center
