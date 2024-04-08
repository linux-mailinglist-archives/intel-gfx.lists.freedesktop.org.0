Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E01389BB11
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Apr 2024 10:59:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE246112307;
	Mon,  8 Apr 2024 08:59:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Cnx5OdB7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 586F4112304;
 Mon,  8 Apr 2024 08:59:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712566782; x=1744102782;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=yLSt3N3zCxpBjoNR1+jfTFma+k9yAAC1XvsGPb2aAcU=;
 b=Cnx5OdB7Lo12p3LljCfBjeSYqn+5Kwyjvxl5WksGeisbxMzUUAYb2Cfx
 ve0yLEQe1wBK+izd1zXEz7H4S0vjpk3dqkqtau6rQ2/K3s/AWLdH1M9JY
 Vtl1+0tgJ27OeNYFbZ1+uiUIXzhT1YXxHn+nk44WtHc63rgpdbVoiwg8F
 xYqH/bz+YZg4JbVXRolIALJlpUB/oKfWl1JZ1LQRzprXnaPVyl5P5/EZw
 /FmsKdp2Hd5UU15esu6iSjMpwM2K64KH5XL6dRgWDcAETTVo7famhDXWt
 D0ZnZ15BHylSCccPKi78Vm652OIZt9ttzBnGlrqWPV8u6grXvtdqrRVcL A==;
X-CSE-ConnectionGUID: kCg6a/RCSwKj1Uvm2JoTTA==
X-CSE-MsgGUID: BcwnFARDQaK2LB2r2xJAHg==
X-IronPort-AV: E=McAfee;i="6600,9927,11037"; a="7698542"
X-IronPort-AV: E=Sophos;i="6.07,186,1708416000"; 
   d="scan'208";a="7698542"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2024 01:59:41 -0700
X-CSE-ConnectionGUID: OIbCVeNhTDyLDiCpvUwiIA==
X-CSE-MsgGUID: r4q7WBPmSWOIKic6i5jiBg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,186,1708416000"; d="scan'208";a="50804552"
Received: from bauinger-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.42.71])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2024 01:59:40 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: dri-devel@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 0/3] drm/edid & drm/display header spring cleaning
In-Reply-To: <cover.1711014272.git.jani.nikula@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1711014272.git.jani.nikula@intel.com>
Date: Mon, 08 Apr 2024 11:59:36 +0300
Message-ID: <87cyr0b56v.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Thu, 21 Mar 2024, Jani Nikula <jani.nikula@intel.com> wrote:
> Jani Nikula (3):
>   drm/displayid: move drm_displayid.h to drm_displayd_internal.h
>   drm/edid: move all internal declarations to drm_crtc_internal.h
>   drm/edid: group struct drm_edid based declarations together

Resent as part of https://patchwork.freedesktop.org/series/132142/

>
>  drivers/gpu/drm/drm_crtc_internal.h                   |  6 ++++++
>  drivers/gpu/drm/drm_displayid.c                       |  4 +++-
>  .../gpu/drm/drm_displayid_internal.h                  |  5 +++--
>  drivers/gpu/drm/drm_edid.c                            |  2 +-
>  drivers/gpu/drm/drm_eld.c                             |  4 +++-
>  drivers/gpu/drm/drm_internal.h                        |  5 -----
>  include/drm/drm_edid.h                                | 11 ++++-------
>  7 files changed, 20 insertions(+), 17 deletions(-)
>  rename include/drm/drm_displayid.h => drivers/gpu/drm/drm_displayid_internal.h (98%)

-- 
Jani Nikula, Intel
