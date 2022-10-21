Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 85C2260721D
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Oct 2022 10:26:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 90D6A10E63C;
	Fri, 21 Oct 2022 08:26:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 60F9710E63B
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Oct 2022 08:26:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666340773; x=1697876773;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=Ebt3ECYMMwsRomz/kkLNe27oJOljpGPAV4o0OQzX+RQ=;
 b=DT1ogQbMTQhgiSeGTRJAa4S3xGDN/L159ZlSlpHyHbs/sRkHVMqQ8nnr
 omD48VIA3mhDrFcJ+IQAC83sWQ3ursLs18yz2tILODGFmusiudeqnGRzx
 +iU8VYLKl2FJLIVMb/eL3G9rL21YFvdqeyQTi4WjZQOmiGRZptxA+pCuC
 vPOwWm9c+rOsZNVmxdHr67rysl/cA90ZCVjvQFq4I+jMd5kog1nI69krK
 /+FmUYV1+lRnY4TE2QBgq07ZB1a/1UhrLBO7WEvlaKoUY5g5wPcJGv5u+
 tbD56IQf/64080q/8iB8DwldgElOEsf0BLlEz9L5AIEjxkkQUnd/Jro/4 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10506"; a="308046000"
X-IronPort-AV: E=Sophos;i="5.95,200,1661842800"; d="scan'208";a="308046000"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2022 01:26:04 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10506"; a="735416395"
X-IronPort-AV: E=Sophos;i="5.95,200,1661842800"; d="scan'208";a="735416395"
Received: from avilla3-mobl2.amr.corp.intel.com (HELO localhost)
 ([10.252.53.153])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2022 01:26:03 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Imre Deak <imre.deak@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20221020160022.1823365-1-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20221020160022.1823365-1-imre.deak@intel.com>
Date: Fri, 21 Oct 2022 11:26:00 +0300
Message-ID: <87y1t9fuqv.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v2 0/4] drm/i915/tgl+: Fix race conditions
 during DKL PHY accesses
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

On Thu, 20 Oct 2022, Imre Deak <imre.deak@intel.com> wrote:
> This is v2 of [1] addressing the review comments from Jani.

Did not do detailed review,

Acked-by: Jani Nikula <jani.nikula@intel.com>


>
> [1] https://lore.kernel.org/intel-gfx/Y1BaRfTAH%2Fl+XLqc@ideak-desk.fi.in=
tel.com/T/#t
>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Cc: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Imre Deak (4):
>   drm/i915/tgl+: Add locking around DKL PHY register accesses
>   drm/i915: Rename intel_tc_phy_regs.h to intel_mg_phy_regs.h
>   drm/i915/tgl+: Move DKL PHY register definitions to
>     intel_dkl_phy_regs.h
>   drm/i915/tgl+: Sanitize DKL PHY register definitions
>
>  drivers/gpu/drm/i915/Makefile                 |   1 +
>  drivers/gpu/drm/i915/display/intel_ddi.c      |  71 +++---
>  .../gpu/drm/i915/display/intel_display_core.h |   4 +
>  .../i915/display/intel_display_power_well.c   |   8 +-
>  drivers/gpu/drm/i915/display/intel_dkl_phy.c  | 101 +++++++++
>  drivers/gpu/drm/i915/display/intel_dkl_phy.h  |  20 ++
>  .../gpu/drm/i915/display/intel_dkl_phy_regs.h | 202 ++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.c |  62 +++---
>  ...ntel_tc_phy_regs.h =3D> intel_mg_phy_regs.h} |   6 +-
>  drivers/gpu/drm/i915/display/intel_tc.c       |   3 +-
>  drivers/gpu/drm/i915/i915_driver.c            |   1 +
>  drivers/gpu/drm/i915/i915_reg.h               | 176 ---------------
>  12 files changed, 397 insertions(+), 258 deletions(-)
>  create mode 100644 drivers/gpu/drm/i915/display/intel_dkl_phy.c
>  create mode 100644 drivers/gpu/drm/i915/display/intel_dkl_phy.h
>  create mode 100644 drivers/gpu/drm/i915/display/intel_dkl_phy_regs.h
>  rename drivers/gpu/drm/i915/display/{intel_tc_phy_regs.h =3D> intel_mg_p=
hy_regs.h} (99%)

--=20
Jani Nikula, Intel Open Source Graphics Center
