Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F1AB8D625D
	for <lists+intel-gfx@lfdr.de>; Fri, 31 May 2024 15:06:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 710A510E413;
	Fri, 31 May 2024 13:06:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QzxcduRG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 245D810E413
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 May 2024 13:06:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717160800; x=1748696800;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=PnlC1wy+5hvN/5n/GSlHi9mC0HRabSVJ/KHYNyuRf+o=;
 b=QzxcduRGSIPI3o5dHtFyOqDbi6/VH0yPCQvOlB3AjEFFVkD2lBf7ufNz
 xK0Kx/pKwHUOctBYs1i5mJUHhWdG+jwk2Kr+EorW+4Ph0p1Hzs8IVoO/E
 5NfRYqicIMnku3iXwhEPEOIWvKor7IyADHUkDs1XHRYRESg/Ja0YBPMJX
 j9WrP4jcSqJ9tWVXHJc81jTuOOTmXBuuP/hjN7Bj1FfrU5S7V9UNtlznP
 aN4IaIunCVTHwT9uemdRKcxO12qOGF9ONZu4Pth+ex6FgMa7kRcqhhfNs
 TpttKiohlKiCyuq9bE2XOXx/px4Wjn7dCG2a3FjNLVxBuYaQb+/lz5kwv w==;
X-CSE-ConnectionGUID: 0LALCfgERXqyadLoWJcW1w==
X-CSE-MsgGUID: YmCkaYoyQQWaMmykpPn7sA==
X-IronPort-AV: E=McAfee;i="6600,9927,11088"; a="24262727"
X-IronPort-AV: E=Sophos;i="6.08,204,1712646000"; d="scan'208";a="24262727"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2024 06:06:40 -0700
X-CSE-ConnectionGUID: uNyPRGjNSQ+jMqjzj7lweA==
X-CSE-MsgGUID: UzFvyVBPSYGfDHwa+SrN3Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,204,1712646000"; d="scan'208";a="36097597"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.190])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2024 06:06:39 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 4/7] drm/i915: Add a separate defintiion for
 PIPE_CRC_RES_HSW
In-Reply-To: <20240531115342.2763-5-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240531115342.2763-1-ville.syrjala@linux.intel.com>
 <20240531115342.2763-5-ville.syrjala@linux.intel.com>
Date: Fri, 31 May 2024 16:06:34 +0300
Message-ID: <87v82udtb9.fsf@intel.com>
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


Subject: *definition

On Fri, 31 May 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> On hsw+ we only have one CRC result registers, instead of the

*register

> five we have on ivb, and some of the others have been repurposed
> to serve other CRC related purposed.

*purposes

>
> Since the hsw+ vs. pre-hsw register operate quite diffently

*differently

> let's add a separate definition for the hsw+ variant to make the
> situation a bit more clear. Also since we only use this from a
> hsw+ codepath there is no real benefit to be had with reusing
> the ivb register definition.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


--=20
Jani Nikula, Intel
