Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 08746694C11
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Feb 2023 17:11:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 62C5F10E062;
	Mon, 13 Feb 2023 16:11:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0AE8810E062
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Feb 2023 16:11:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676304676; x=1707840676;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=6vrJtHR53zhySDQLUGgfqRqU70+NvVsT5Zi3yD1JqXQ=;
 b=eAPQeLdoUEcypRw4Hpy4yVvTv8KClxMOA9fT12RKLx+bKlP615Og0Fir
 WVV/nJ+qSRVHMF9LBrE7dbhFHWulkFgkb4N8DDJgAgd6L2giM63EZhYDN
 B1JfBiZGRlnmMSCJjT78ZwYtdrTUlPY1zN0PKBLtId1M4gmefM7ML2IAi
 hRyje29GmidIXyQ6pDEhOypdzIkuVv9GowiqqISfDAOR4B/iYNML9YqiD
 /T00Z79rO2Ytt+m3ddl6FaLmXDWWmcCxH98wKFosDRoZAT+V9Orho5cPR
 uHhVr751+9y32dV4eQYZ369cDSP5G4K/biB6M/K8J8MaZg1t/t9qPHlJZ w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10620"; a="311283800"
X-IronPort-AV: E=Sophos;i="5.97,294,1669104000"; d="scan'208";a="311283800"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2023 08:11:14 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10620"; a="701316437"
X-IronPort-AV: E=Sophos;i="5.97,294,1669104000"; d="scan'208";a="701316437"
Received: from tkatila-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.50.147])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2023 08:11:13 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20230208015508.24824-1-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230208015508.24824-1-ville.syrjala@linux.intel.com>
Date: Mon, 13 Feb 2023 18:11:05 +0200
Message-ID: <87k00lv946.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 00/10] drm/i915: Prep work for vbt.ports[]
 nukage
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

On Wed, 08 Feb 2023, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> We need to get rid of the vbt.ports[] array. The main
> reason being the bogus VBTs found on many ADL laptops
> that declare both eDP+HDMI child devices for the same
> port. The goal is to probe each of those in order and
> stick to the first one that works. But the vbt.ports[]
> array gets populated before we do any output probing=20
> and, being indexed with the port, can't handle any
> aliasing child devices.
>
> Here's a bit of prep work to reduce our reliance on
> vbt.ports[], mainly by expanding the encoder->devdata
> (a direct pointer to the correct vbt child device from
> the encoder) usage.

On the series,

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

with some nitpicks on commit messages.

>
> Ville Syrj=C3=A4l=C3=A4 (10):
>   drm/i915: Pass the whole encoder to hotplug_enables()
>   drm/i915: Move variables to loop context
>   drm/i915: Replace intel_bios_is_lspcon_present() with
>     intel_bios_encoder_is_lspcon()
>   drm/i915: Replace intel_bios_is_lane_reversal_needed() with
>     intel_bios_encoder_lane_reversal()
>   drm/i915: Replace intel_bios_is_port_hpd_inverted() with
>     intel_bios_encoder_hpd_invert()
>   drm/i915: Consult the registested encoders for the ICL combo PHY w/a
>   drm/i915: Populate encoder->devdata for g4x+ DP/HDMI ports
>   drm/i915: Pass devdata to intel_bios_port_aux_ch()
>   drm/i915: Iterate all child devs in intel_bios_is_port_present()
>   drm/i915: Use encoder->devdata in eDP init
>
>  drivers/gpu/drm/i915/display/g4x_dp.c         |  12 +-
>  drivers/gpu/drm/i915/display/g4x_hdmi.c       |  12 +-
>  drivers/gpu/drm/i915/display/intel_bios.c     | 128 ++++++------------
>  drivers/gpu/drm/i915/display/intel_bios.h     |  14 +-
>  drivers/gpu/drm/i915/display/intel_ddi.c      |   6 +-
>  .../i915/display/intel_display_power_well.c   |  15 +-
>  drivers/gpu/drm/i915/display/intel_dp.c       |  30 ++--
>  drivers/gpu/drm/i915/display/intel_hdmi.c     |   2 +-
>  drivers/gpu/drm/i915/display/intel_lspcon.c   |   2 +-
>  drivers/gpu/drm/i915/i915_irq.c               |  59 ++++----
>  10 files changed, 134 insertions(+), 146 deletions(-)

--=20
Jani Nikula, Intel Open Source Graphics Center
