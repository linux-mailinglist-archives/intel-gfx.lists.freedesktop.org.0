Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C5B848CE329
	for <lists+intel-gfx@lfdr.de>; Fri, 24 May 2024 11:17:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1F01710E48D;
	Fri, 24 May 2024 09:17:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Mcxmkt+h";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 333E410E48D
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 May 2024 09:17:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716542244; x=1748078244;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=lvRMu4FCFpq76JMwa1U/lJTpLXuT4Lbq0IXB5mhU6Eo=;
 b=Mcxmkt+hcfhze8/xsgq4cSs5x/vQQRO9CsQyiEVs/e4TLnz48Zgd3GGN
 5hei0svUeurmiw49lhTgct0bjz+ohYfU3vgDKsDJADBBf4VwLDvSCb4Ut
 4vHjuAe0bVdvphucgTLWBFrRdR7kNv6K0sTORPYqMa9o4UUbzu9F5pCCz
 2hnthotC2wWGaktSPHi/F0eFsx0lddmoy0IngVEBAEywt9+Jp+3K6cyMG
 xco/4Is1qCxIyx4e69HeXXqhei8p9/fI9Jy3UEJ2qUy8ENDzVn246e6lD
 9qP9dIXnbdzLgcL7Ve07HYlwe5c0EiCWJSMsVQuhImZVlEUL6I15vZ7oq g==;
X-CSE-ConnectionGUID: QcQ+Z3liQxeB2tFBRqnLkg==
X-CSE-MsgGUID: YCEwKx0aSOSp1/azLoszNQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11081"; a="13028244"
X-IronPort-AV: E=Sophos;i="6.08,185,1712646000"; d="scan'208";a="13028244"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 May 2024 02:17:24 -0700
X-CSE-ConnectionGUID: 8r912WixSbWGtIQ1lDagZQ==
X-CSE-MsgGUID: BqfqcwzHQIW79OWzwZYVIA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,185,1712646000"; d="scan'208";a="71364976"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.108])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 May 2024 02:17:21 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 0/3] drm/i915: intel_color_check() cleanup
In-Reply-To: <20240523182818.15382-1-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240523182818.15382-1-ville.syrjala@linux.intel.com>
Date: Fri, 24 May 2024 12:17:18 +0300
Message-ID: <877cfjo9gh.fsf@intel.com>
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

On Thu, 23 May 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Eliminate the crtc_state->state footgun from intel_color_check(),
> and hide some mundane C8 plane details inside it.

On the series,

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


>
> Ville Syrj=C3=A4l=C3=A4 (3):
>   drm/i915: Plumb the entire atomic state into intel_color_check()
>   drm/i915: Hide the intel_crtc_needs_color_update() inside
>     intel_color_check()
>   drm/i915: Bury c8_planes_changed() in intel_color_check()
>
>  drivers/gpu/drm/i915/display/intel_color.c   | 125 ++++++++++++-------
>  drivers/gpu/drm/i915/display/intel_color.h   |   4 +-
>  drivers/gpu/drm/i915/display/intel_display.c |  26 +---
>  3 files changed, 85 insertions(+), 70 deletions(-)

--=20
Jani Nikula, Intel
