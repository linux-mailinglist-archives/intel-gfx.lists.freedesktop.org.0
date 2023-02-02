Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D6D77687DE5
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Feb 2023 13:52:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5086D10E0A5;
	Thu,  2 Feb 2023 12:52:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AE7D510E0A5
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Feb 2023 12:52:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675342349; x=1706878349;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=zsdeZIG9zk2JIB2Rp5qYI7d6TBA/UCBLiT5zDg3vO4U=;
 b=cxZWMUjqvWuI/MJZnBTg/io34efX22BoP3bLQ5R8se/uqvJWvDr7hgTp
 VImKMW4bh4LLOz6PllCnYmodBsmfSfV3Ikl+VqQgSibLWUQiauWdffWap
 oBvRaIXLPaB9u6AvnCaYD6GunAdYqJrQKI4Ci6hnw5g0kJStZwXsWBdAC
 oMsvx6059TQfmy6fFI3f1qyX5v97ebA2lBOAXFtBot5zVrjPjDk5Bcv3U
 ouLRoXSc2HPVzCSFcWoo+UgDnZtuSHctYYdiYE+fVapLfl46txvSAc5mU
 pmfd8QLPLMr2HGqLdQEg1z4bDRt5a/zmfOFA11B5cm741MPywoPFUTAyI Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10608"; a="393017708"
X-IronPort-AV: E=Sophos;i="5.97,267,1669104000"; d="scan'208";a="393017708"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2023 04:52:29 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10608"; a="642882642"
X-IronPort-AV: E=Sophos;i="5.97,267,1669104000"; d="scan'208";a="642882642"
Received: from skopplex-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.34.132])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2023 04:52:27 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20230202114613.3177235-1-suraj.kandpal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230202114613.3177235-1-suraj.kandpal@intel.com>
Date: Thu, 02 Feb 2023 14:52:25 +0200
Message-ID: <87ilgk1b7a.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 0/1] Fix logic to get slice_height for dp
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

On Thu, 02 Feb 2023, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> According to bspec :49259 VDSC spec implies that 108 lines is an optimal
> slice height, but any size can be used as long as vertical active
> integer multiple and maximum vertical slice count requirements are met.
> Add a fix in this patch to go for most optimal lines and move ahead from
> there instead of primitively using 8 lines.

There's no need for a cover letter if you're sending just one patch.

>
> Suraj Kandpal (1):
>   drm/i915/dp: Fix logic to fetch slice_height
>
>  drivers/gpu/drm/i915/display/intel_dp.c | 28 +++++++++++++++----------
>  1 file changed, 17 insertions(+), 11 deletions(-)

-- 
Jani Nikula, Intel Open Source Graphics Center
