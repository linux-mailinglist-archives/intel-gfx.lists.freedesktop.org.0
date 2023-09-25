Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 899917AD7CF
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Sep 2023 14:16:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 33BFB10E244;
	Mon, 25 Sep 2023 12:16:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9497D10E244;
 Mon, 25 Sep 2023 12:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695644193; x=1727180193;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=+3EZxBE4CXgbU72Z+JaRryaClRRuQEypMVRIs80MYJU=;
 b=LqIY1MHwTpRDp3cjd/tPCBjvLPFpZOPK5vPih1m9ODrocmEcdRnDpGJg
 XAx2vsb4BFjRhfiGvOFqRzFUYYe97cfGNH+ui2Lac37X2lttr/LxhTHD5
 VLOeORdmRvuSXQpOIh6Gwmw/gdLxoJTk5dnwjmcOXteuI/FWUs6tO3DMp
 HNKJS12zDaQvMw6MevYSGwBYjYy6CIFA7CsM4C92QHGhxl9cDP3ntpLeK
 F7z7xEt68gVfvY1b6WX8sC0cinS5avQIt46+qBZrJDKrqf07j9VYTgwCz
 3rK/JWzxR2vJnsGn9jblcqfK9/4+dYQz2mK3aVEbsVuCa6In/cXzzhcUO Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10843"; a="412165345"
X-IronPort-AV: E=Sophos;i="6.03,174,1694761200"; d="scan'208";a="412165345"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Sep 2023 05:16:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10843"; a="813945188"
X-IronPort-AV: E=Sophos;i="6.03,174,1694761200"; d="scan'208";a="813945188"
Received: from smgotth-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.40.46])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Sep 2023 05:16:30 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Vinod Govindapillai <vinod.govindapillai@intel.com>,
 intel-xe@lists.freedesktop.org
In-Reply-To: <20230922133003.150578-1-vinod.govindapillai@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230922133003.150578-1-vinod.govindapillai@intel.com>
Date: Mon, 25 Sep 2023 15:16:28 +0300
Message-ID: <87sf72morn.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [Intel-xe] [PATCH v5 0/2] fbc on any planes
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
Cc: ville.syrjala@intel.com, intel-gfx@lists.freedesktop.org,
 matthew.d.roper@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 22 Sep 2023, Vinod Govindapillai <vinod.govindapillai@intel.com> wrote:
> FBC can be supported in first three planes in lnl

When you're cross-posting to intel-xe and intel-gfx lists, you need to
actually say what you want done with these patches. Otherwise we won't
know.

Before xe is upstream, the order of business for i915 changes should be:

1) Get them merged to upstream i915 (send to intel-gfx)

2) Get the merged commits backported to xe (send to intel-xe)


BR,
Jani.

>
> Vinod Govindapillai (2):
>   drm/i915/lnl: possibility to enable FBC on first three planes
>   drm/i915/lnl: update the supported plane formats with FBC
>
>  drivers/gpu/drm/i915/display/intel_fbc.c           | 11 ++++++++++-
>  drivers/gpu/drm/i915/display/skl_universal_plane.c |  9 ++++++---
>  drivers/gpu/drm/i915/i915_reg.h                    |  2 ++
>  3 files changed, 18 insertions(+), 4 deletions(-)

-- 
Jani Nikula, Intel
