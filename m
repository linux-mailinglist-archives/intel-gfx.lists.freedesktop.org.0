Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E753B1D885
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Aug 2025 15:05:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 394D910E83D;
	Thu,  7 Aug 2025 13:05:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="atXwAGoK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B31CB10E83D;
 Thu,  7 Aug 2025 13:05:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754571922; x=1786107922;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=oZKi+QW2Pua0PySDPHps8ArHznLnPyJsjq2Yf+e+9js=;
 b=atXwAGoKw0pwMiua1fbh0CNhhFURWrPnfB3AmkCcoS1w77dixubjM1jG
 cq2g75bv/PuBkUSN9zQjS0cSMt08545lEqJ23yCAWo8ZHTLxR8TfMsCVr
 h+l4l5iSmtsEBvGavdA4gc27qFLt8nNQ+wQUNdL3hxabJYP/5U4a03tG6
 bmp9JWFFnVWAGDFhWcqNAVR//H2RmCFzIp/fWF3YPH1fCKpER4m86Dg5j
 EQK+eZvk+Bw/8Kx1vn+edf+f2kOOCnQg6Fsx0JVqTxvt/3UhHs8fwaVJA
 HsqZdVC3HNpxcd8HBljwgvYM05EKlEqSGXZn+7xQy7ZrK7SfKQto1Dju+ w==;
X-CSE-ConnectionGUID: c9M36coUS3uSnXXLD1I8Pw==
X-CSE-MsgGUID: n/9Swx+RTeaEVrvMgW+7ig==
X-IronPort-AV: E=McAfee;i="6800,10657,11514"; a="56869509"
X-IronPort-AV: E=Sophos;i="6.17,271,1747724400"; d="scan'208";a="56869509"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2025 06:05:20 -0700
X-CSE-ConnectionGUID: LU6BV1d4RVCQ8RQtJlMr7g==
X-CSE-MsgGUID: MiYnhfNbSUejuYkKWQCu/g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,271,1747724400"; d="scan'208";a="170318684"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.96])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2025 06:05:17 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: imre.deak@intel.com, Luca Coelho <luca@coelho.fi>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 stable@vger.kernel.org, Charlton Lin <charlton.lin@intel.com>, Khaled
 Almahallawy <khaled.almahallawy@intel.com>
Subject: Re: [PATCH 01/19] drm/i915/lnl+/tc: Fix handling of an
 enabled/disconnected dp-alt sink
In-Reply-To: <aJShB9ufOBH9AWLY@ideak-desk>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250805073700.642107-1-imre.deak@intel.com>
 <20250805073700.642107-2-imre.deak@intel.com>
 <95999d2602067f556dc2e5739758deef7c462e17.camel@coelho.fi>
 <aJSQKu72vVYmUd4Y@ideak-desk>
 <d8e9cabb243cd8bbe7ac942d117146bf7f68b631@intel.com>
 <aJSc9UaVwn132FqX@ideak-desk> <aJShB9ufOBH9AWLY@ideak-desk>
Date: Thu, 07 Aug 2025 16:05:14 +0300
Message-ID: <b8c6a347154b3ad39045c9fd2b805b522609f442@intel.com>
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

On Thu, 07 Aug 2025, Imre Deak <imre.deak@intel.com> wrote:
> Would you be ok with
>
> tc_phy_owned_by_display()

Sounds good to me. Maybe add a brief comment "Is the PHY in legacy or
DP-alt mode" or something above the function.

BR,
Jani.


-- 
Jani Nikula, Intel
