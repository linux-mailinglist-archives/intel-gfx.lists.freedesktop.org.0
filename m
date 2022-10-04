Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DC9665F43DF
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Oct 2022 15:03:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5EEC810E642;
	Tue,  4 Oct 2022 13:03:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DBC2C10E6EA
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Oct 2022 13:03:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664888601; x=1696424601;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=BSZ4G5EnH2BRptNDvnahonzz0AJRcalYKZrbFVaXWOQ=;
 b=g09PszKfxBPq+A7j0+9sJFvwgFLENbVcUwDwpmtjnN57NDpUUZnaXGiF
 waA7LtWYW4e47kCHVlxtT+gAtmwYXtFEYeDHE+WiVg+oV0NLMhAgqHHHh
 ZdW04ccyvIV4jAzOVf3R16VHUe0u/1dmLUpgiZ2/WEjMF/hmvbT7cPojy
 Ju9OZj4uDb4a2Q5Z7Bu+q+3/COhH1eQufuCyCc4BFHPG9eoH/4QQqZE2m
 yNU5010WfKBnmGyXunzejtaTonpLH4HUSER/W9V3jYwOpEmaoVa7QhiKI
 azQcAdjdy5dKW4kQvc6GDpRZYlowHsbmRg41xNq99dE2/qo9gT677ePeK Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10490"; a="300503622"
X-IronPort-AV: E=Sophos;i="5.95,157,1661842800"; d="scan'208";a="300503622"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2022 06:03:21 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10490"; a="868995489"
X-IronPort-AV: E=Sophos;i="5.95,157,1661842800"; d="scan'208";a="868995489"
Received: from pvarla-mobl4.gar.corp.intel.com (HELO localhost)
 ([10.252.39.104])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2022 06:03:19 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20221004125344.228294-1-balasubramani.vivekanandan@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20221004125344.228294-1-balasubramani.vivekanandan@intel.com>
Date: Tue, 04 Oct 2022 16:03:16 +0300
Message-ID: <877d1fu4ff.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v6 0/7] drm/i915/display: Don't use port
 enum as register offset
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

On Tue, 04 Oct 2022, Balasubramani Vivekanandan <balasubramani.vivekanandan=
@intel.com> wrote:
> Prior to display version 12, platforms had DDI ports A,B,C,D,E,F=20=20=20=
=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20
> represented by enums PORT_A,PORT_B...PORT_F. The DDI register offsets of=
=20=20=20=20=20=20=20=20=20=20
> the ports were in the same order as the ports. So the port enums=20=20=20=
=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20
> were directly used as index to calculate the register offset of the=20=20=
=20=20=20=20=20=20=20=20=20=20=20=20=20
> ports.=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=
=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=
=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=
=20=20=20=20
> Starting in display version 12, TypeC ports were introduced in the=20=20=
=20=20=20=20=20=20=20=20=20=20=20=20=20=20
> platforms. These were defined as new enums PORT_TC1,PORT_TC2... The=20=20=
=20=20=20=20=20=20=20=20=20=20=20=20=20
> later generation platforms had DDI register offests of TypeC and=20=20=20=
=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20
> non-TypeC ports interleaved and the existing port enums didn't match the=
=20=20=20=20=20=20=20=20=20=20
> order of the DDI register offests. So the enums could no more be used as=
=20=20=20=20=20=20=20=20=20=20
> index to calculate the register offest.=20=20=20=20=20=20=20=20=20=20=20=
=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=
=20=20=20=20=20=20=20
> This led to the creation of new platform specific enums for the ports=20=
=20=20=20=20=20=20=20=20=20=20=20=20
> like PORT_D_XELPD, PORT_E_XELPD to match the index of the ports in those=
=20=20=20=20=20=20=20=20=20=20
> platforms and additional code to handle the special enums.=20=20=20=20=20=
=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20
>=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=
=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=
=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=
=20=20=20=20=20=20=20=20=20
> So we want to make the port enums not tied to DDI register offset and=20=
=20=20=20=20=20=20=20=20=20=20=20=20
> use the index from somewhere else to calculate the register offsets.=20=
=20=20=20=20=20=20=20=20=20=20=20=20=20
> The index of the DDI ports in the platform is now defined as part of=20=
=20=20=20=20=20=20=20=20=20=20=20=20=20
> device info.
>
> Series includes few patches at the end which does some cleanup and
> fixing made possible because of unique enums for the ports.
>
> v2: ddi_index defined for platforms starting from Gen75. Many platforms
> from Gen75 has ddi support.
> v3: Updated DDI_CLK_SEL macro to use new index for DDI register offset
> caculation.
> v4: After removing d13_port_domains array, d12_port_domains is used for
> all platforms with DISPLAY_VER 12 and above. So the port_end member had
> to fixed to extend it for ports D and E.
>
> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> Cc: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Why do you keep sending several new versions within days when there's
been no replies to the previous ones?

BR,
Jani.


>
> Balasubramani Vivekanandan (7):
>   drm/i915/display: Pass struct drm_i915_private to DDI_BUF_CTL macro
>   drm/i915/display: Pass struct drm_i915_private to DDI_CLK_SEL macro
>   drm/i915/display: Define the DDI port indices inside device info
>   drm/i915/display: Free port enums from tied to register offset
>   drm/i915/display: Remove PORT_D_XELPD/PORT_E_XELPD platform specific
>     defintions
>   drm/i915/display: Fix port_identifier function
>   drm/i915/display: cleanup unused DDI port enums
>
>  drivers/gpu/drm/i915/display/icl_dsi.c        | 12 +--
>  drivers/gpu/drm/i915/display/intel_bios.c     |  7 +-
>  drivers/gpu/drm/i915/display/intel_ddi.c      | 80 ++++++++-----------
>  drivers/gpu/drm/i915/display/intel_display.c  | 12 +--
>  drivers/gpu/drm/i915/display/intel_display.h  | 29 ++++---
>  .../drm/i915/display/intel_display_power.c    | 44 +---------
>  drivers/gpu/drm/i915/display/intel_fdi.c      | 14 ++--
>  drivers/gpu/drm/i915/display/intel_tc.c       |  6 +-
>  drivers/gpu/drm/i915/gvt/display.c            | 30 +++----
>  drivers/gpu/drm/i915/gvt/handlers.c           | 17 ++--
>  drivers/gpu/drm/i915/i915_pci.c               | 46 ++++++++++-
>  drivers/gpu/drm/i915/i915_reg.h               |  7 +-
>  drivers/gpu/drm/i915/intel_device_info.h      |  1 +
>  drivers/gpu/drm/i915/intel_gvt_mmio_table.c   | 10 +--
>  include/drm/i915_component.h                  |  2 +-
>  15 files changed, 153 insertions(+), 164 deletions(-)

--=20
Jani Nikula, Intel Open Source Graphics Center
