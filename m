Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8934F9AEDBE
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Oct 2024 19:20:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0863910E3A4;
	Thu, 24 Oct 2024 17:20:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Na4WKUZ5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ED34D10E3A4
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Oct 2024 17:20:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729790440; x=1761326440;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=8oTJ4QG8Os0Eo/E2pzAjnCZyuXuKJuJW4cWoiSITdZo=;
 b=Na4WKUZ5FsBveLp8dkMU068v8i6XUPVUbgYtphXkcBBLvFf8jbgCUiit
 s5AapHS9aZKdLAMnobVe3RKPHfNcVA5YN4uNhwdRkEqAH7W9/w4PfCUWH
 oGmLWpJrSkVEaQKW/DUEzO4H8YWz5FOZXtyne91xivzDEjf5rB/geqeXF
 SLZHGDxGhkAzdBAaeAacn1BHgNTWnp94NMvk95T+/Eje/NGKHEEyke3FP
 nsv0pqbkOR5ILbPSGK4r5/dYTQtEgPRfp2iXHFBRwnwM8SsK3X+9kyGqb
 FKLgz8ceV2EaKq/c7XohyWItKeG2zwbturNT7QuJxM82r2B6Bq/fkjofJ w==;
X-CSE-ConnectionGUID: 26UDIWXFSJm+At4lo6ooLg==
X-CSE-MsgGUID: lCbvRCVGSseu+502ZiUjtg==
X-IronPort-AV: E=McAfee;i="6700,10204,11235"; a="46921553"
X-IronPort-AV: E=Sophos;i="6.11,229,1725346800"; d="scan'208";a="46921553"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2024 10:20:30 -0700
X-CSE-ConnectionGUID: od3y/RSWRwCJHakVtTGUdw==
X-CSE-MsgGUID: 6RcBXUFjT1i3eYNAtPdiWw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,229,1725346800"; d="scan'208";a="80564466"
Received: from unknown (HELO localhost) ([10.237.66.160])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2024 10:20:29 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 0/4] drm/i915/color: Debug improvements and
 intel_display conversion
In-Reply-To: <20241024165356.17756-1-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241024165356.17756-1-ville.syrjala@linux.intel.com>
Date: Thu, 24 Oct 2024 20:20:25 +0300
Message-ID: <878quds9ie.fsf@intel.com>
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

On Thu, 24 Oct 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Improve the debug prints in intel_color.c a bit, and convert it to
> intel_display while at it.

Series is

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


>
> Ville Syrj=C3=A4l=C3=A4 (4):
>   drm/i915/color: Pimp debugs
>   drm/i915: Handle intel_plane and intel_plane_state in
>     to_intel_display()
>   drm/i915/color: Convert color management code to intel_display
>   drm/i915/color: Make color .get_config() mandatory
>
>  drivers/gpu/drm/i915/display/intel_color.c    | 673 +++++++++---------
>  drivers/gpu/drm/i915/display/intel_color.h    |   6 +-
>  .../drm/i915/display/intel_display_driver.c   |   4 +-
>  .../drm/i915/display/intel_display_types.h    |   8 +-
>  4 files changed, 356 insertions(+), 335 deletions(-)

--=20
Jani Nikula, Intel
