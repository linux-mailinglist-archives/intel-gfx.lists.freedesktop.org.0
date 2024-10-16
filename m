Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 201DA9A0D76
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Oct 2024 16:56:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4A06610E043;
	Wed, 16 Oct 2024 14:56:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="T7y1VeJr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E7F2810E043
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Oct 2024 14:56:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729090593; x=1760626593;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=9LyLmuNI33afoXMsqB8STlXDwXp8dQ2uDA2lJnCb2mA=;
 b=T7y1VeJrGAgCD0YdaBzTDHi+Uej0jqslOZK6J04VHd2+eRsd54c+bKob
 kN15svEl3K/zK01e5EnN6rZJ8gTsUL8+XnYUt7hGfxnr/Mc6WEpqpKy49
 LINIyjbdGmFXqZzWlcVwi8AOWAf0/BpFU7TaSfroC8KyukNmwE5+OmviI
 kP185womt05WQXH3Xl+Epx8stXh9akw52/eUpcupe+U06dLUictsXLDPA
 UU9FeX2QwJAaIfoFoyksWgPHGgbyDwnOyg1/CvNSmEgv0SKN2MTopsr+R
 4oFPrk9dJPJbl02Yx8JaeoG33YLb4MZJC9AgWf2REKJDzPJFMjKOXOS1i w==;
X-CSE-ConnectionGUID: u7jChGR8TOiIovy/eyoAvg==
X-CSE-MsgGUID: adjoFNuERKeXD8rwRTadow==
X-IronPort-AV: E=McAfee;i="6700,10204,11226"; a="39171214"
X-IronPort-AV: E=Sophos;i="6.11,208,1725346800"; d="scan'208";a="39171214"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2024 07:56:32 -0700
X-CSE-ConnectionGUID: GBJjeFX2QlCRokc678QIow==
X-CSE-MsgGUID: +Evx2N6NSzCZ2mby13634w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,208,1725346800"; d="scan'208";a="78294901"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 16 Oct 2024 07:53:17 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 16 Oct 2024 17:53:15 +0300
Date: Wed, 16 Oct 2024 17:53:15 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Cc: intel-gfx@lists.freedesktop.org, jani.nikula@intel.com,
 ankit.k.nautiyal@intel.com, uma.shankar@intel.com, animesh.manna@intel.com
Subject: Re: [PATCH v14 0/3] Vrr refactoring and panel replay workaround
Message-ID: <Zw_TW5eHx0Ke5xeb@intel.com>
References: <20241010040503.1795399-1-mitulkumar.ajitkumar.golani@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20241010040503.1795399-1-mitulkumar.ajitkumar.golani@intel.com>
X-Patchwork-Hint: comment
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

On Thu, Oct 10, 2024 at 09:35:00AM +0530, Mitul Golani wrote:
> Refactor VRR compute config to account for Panel replay workaround
> for VSC SDP.
> 
> Previous Patch series links:
> https://patchwork.freedesktop.org/series/135629/
> https://patchwork.freedesktop.org/series/135851/
> https://patchwork.freedesktop.org/series/138232/
> 
> Animesh Manna (2):
>   drm/i915/vrr: Split vrr-compute-config in two phases
>   drm/i915/panelreplay: Panel replay workaround with VRR
> 
> Mitul Golani (1):
>   drm/i915/vrr: Add helper to check if vrr possible

Pushed to drm-intel-next. Thanks.

I fixed up a few minor issues (missing consts, redundant parens)
while pushing.

> 
>  drivers/gpu/drm/i915/display/intel_display.c | 18 ++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_vrr.c     | 20 +++++++++++++++-----
>  drivers/gpu/drm/i915/display/intel_vrr.h     |  2 ++
>  3 files changed, 35 insertions(+), 5 deletions(-)
> 
> -- 
> 2.46.0

-- 
Ville Syrjälä
Intel
