Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 052ED7C70E1
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Oct 2023 17:02:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B9BF210E219;
	Thu, 12 Oct 2023 15:02:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4CF0610E219
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Oct 2023 15:02:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697122969; x=1728658969;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=n0LB4zdAMiqDSgbp+AH/oZVhTD0zGU+9pwtcdDUOKR8=;
 b=JEkt6N9AThA+FD8AIkBzGdn6BgUnFRnalC7/LV2eYN8XMju3Rcz1+eVa
 TEMGUx+q5pnjTBkE3qqBqxL6z53ohMhEm6nhvvddJdz8+RPIgAKAZuzPy
 AHhjszddUPibrNHebwNd+red0DN8yqc+PT2f9hLtMAxOBOYei7IxcvBDf
 73naVCuV7Y+08l2N7x1kUxKdXiGNv3EmFecUkLfQ7+d6O+4BHKyexuSaB
 agoDB9XbsaxF6Tppn+Za+Bb1X2aZzHzbRuPlt+VEfW4Y8WFeIlem23mdt
 R9sQPrxgQB3qjMEAJrn3nkt1/MGVJ8qDggOrS+j3w/2pDB7pDfa0vdXSD Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10861"; a="382176454"
X-IronPort-AV: E=Sophos;i="6.03,219,1694761200"; d="scan'208";a="382176454"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2023 08:01:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10861"; a="870609359"
X-IronPort-AV: E=Sophos;i="6.03,219,1694761200"; d="scan'208";a="870609359"
Received: from jnikula-mobl4.fi.intel.com (HELO localhost) ([10.237.66.162])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2023 08:01:02 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20231012122442.15718-1-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20231012122442.15718-1-ville.syrjala@linux.intel.com>
Date: Thu, 12 Oct 2023 18:01:00 +0300
Message-ID: <874jiv28cz.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 0/6] drm/i915: Clean up zero initializers
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

On Thu, 12 Oct 2023, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Unify the array/struct zero initialization to use the least
> awkward form (=3D {}).

Yes, please!

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

on the series




>
> Ville Syrj=C3=A4l=C3=A4 (6):
>   drm/i915/display: Clean up zero initializers
>   drm/i915/hdcp: Clean up zero initializers
>   drm/i915/guc: Clean up zero initializers
>   drm/i915/pci: Clean up zero initializers
>   drm/i915/pxp: Clean up zero initializers
>   drm/i915/gvt: Clean up zero initializers
>
>  drivers/gpu/drm/i915/display/intel_acpi.c     |  2 +-
>  drivers/gpu/drm/i915/display/intel_cx0_phy.c  |  2 +-
>  drivers/gpu/drm/i915/display/intel_dp.c       |  6 +--
>  .../drm/i915/display/intel_dp_aux_backlight.c |  4 +-
>  drivers/gpu/drm/i915/display/intel_dp_mst.c   |  2 +-
>  drivers/gpu/drm/i915/display/intel_gmbus.c    |  2 +-
>  .../drm/i915/display/intel_hdcp_gsc_message.c | 44 +++++++++----------
>  .../drm/i915/display/intel_plane_initial.c    |  2 +-
>  drivers/gpu/drm/i915/display/intel_sdvo.c     |  2 +-
>  drivers/gpu/drm/i915/display/intel_snps_phy.c |  2 +-
>  drivers/gpu/drm/i915/display/intel_wm.c       |  2 +-
>  .../gpu/drm/i915/gt/uc/intel_guc_capture.c    |  4 +-
>  drivers/gpu/drm/i915/gvt/cmd_parser.c         |  2 +-
>  drivers/gpu/drm/i915/gvt/fb_decoder.c         |  6 +--
>  drivers/gpu/drm/i915/gvt/handlers.c           |  2 +-
>  drivers/gpu/drm/i915/i915_pci.c               |  2 +-
>  drivers/gpu/drm/i915/pxp/intel_pxp_gsccs.c    |  8 ++--
>  drivers/gpu/drm/i915/pxp/intel_pxp_huc.c      |  4 +-
>  drivers/gpu/drm/i915/pxp/intel_pxp_tee.c      |  8 ++--
>  19 files changed, 52 insertions(+), 54 deletions(-)

--=20
Jani Nikula, Intel
