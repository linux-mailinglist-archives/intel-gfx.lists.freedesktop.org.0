Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 902DF9F315B
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Dec 2024 14:16:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0F8B910E63F;
	Mon, 16 Dec 2024 13:16:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GLuT1g16";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6DC9010E63F
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Dec 2024 13:16:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734355004; x=1765891004;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=ogGmj7XDa3J8ptd+qyPKDgF/eWmWGhXnzOLTG63MBmg=;
 b=GLuT1g1683c/gUjxrRDUbbaHqHRj51Ovz5EiyhBFo8y6eFRg3joHI63h
 94a7aVrIBk5Vz0Al3bG16gvSXApDVUuncVhTr1fxlNdIrS8LzyYCGNAAv
 Zj4SS2az+xKesMDJ71y1cuBAMcaqZ2XR/2lCdO6RQ8YK3UTzU7JthCsLw
 2kzrId5BW8u69JEToME/XKbQ1TLWVIhIYWptfwd/v72jJ+qhxCT4V69yH
 u6usLpyCKTOCdn0pMIQzkO4HHrC4GQuFJOnOrTErlEFCBbZUZ8tm6JM1j
 1p/qLaNq8CrnEntCD/rFBIhhJVlx4wNQzw7H7/v8NdQk7mVFOdoH/96Om Q==;
X-CSE-ConnectionGUID: YU2pXrk0QuWzS6AiH4QZcg==
X-CSE-MsgGUID: +0FJakiwR3eDajFfyt5Lhw==
X-IronPort-AV: E=McAfee;i="6700,10204,11282"; a="45741710"
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="45741710"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2024 05:16:44 -0800
X-CSE-ConnectionGUID: nuQ1RF8nTuqNcobgM+BOAQ==
X-CSE-MsgGUID: tgVjgb8oRUi14wNkakGnyg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="101341515"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.245])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2024 05:16:43 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Luca Coelho <luca@coelho.fi>, intel-gfx@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com
Subject: Re: [PATCH 1/3] drm/i915: split out i9xx_wm_regs.h
In-Reply-To: <2a12da88189422fca266a88b3954eda27668402f.camel@coelho.fi>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241213115111.335474-1-jani.nikula@intel.com>
 <2a12da88189422fca266a88b3954eda27668402f.camel@coelho.fi>
Date: Mon, 16 Dec 2024 15:16:40 +0200
Message-ID: <87frmnsr7r.fsf@intel.com>
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

On Mon, 16 Dec 2024, Luca Coelho <luca@coelho.fi> wrote:
> On Fri, 2024-12-13 at 13:51 +0200, Jani Nikula wrote:
>> Very few files need the i9xx watermark related registers. Split them out
>> to a dedicated file.
>> 
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>
> Reviewed-by: Luca Coelho <luciano.coelho@intel.com>

Thanks for the review, series pushed to din.

BR,
Jani.

>
> --
> Cheers,
> Luca.

-- 
Jani Nikula, Intel
