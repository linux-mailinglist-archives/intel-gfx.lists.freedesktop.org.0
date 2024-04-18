Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 81D378AA1F3
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Apr 2024 20:21:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE7E3113ECE;
	Thu, 18 Apr 2024 18:21:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BBP5Dy3O";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1006B113ECE;
 Thu, 18 Apr 2024 18:21:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713464493; x=1745000493;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=Vj+ARm1NjfEOaLvnrr6I+XyQ3JWexwo7xy3/XoWPtdw=;
 b=BBP5Dy3OqmYDLUvvHP8WksTt1TRTAiaJN0y3+vgWstBTN+g2X2hfim56
 VdpAHVFOqiMTxjFVbXJEzLoPCKCYiZoji0DJnLA2N0tESXh1QYs+AuZQQ
 4eL4etL1YCYQo4mgA+D3ad05d9ooU+o9mespQtVqS0sUIMvKl/FQfMGKG
 W8esLFI3Mz6cX6nnEgAGo0eII9RIRLvMRgrACzuroEjLlS7hJAM6uAf/q
 kV4FKq60djLhsbB7wPTiiP63QuUehkF/ZEYW7vwv2BBifKPtPWX5Cn3JL
 oRSZkg9EPlbypv9vwGnbtlAUpD0RhTeBnZAiAs7mO2wfVNCGQBknRAxUo w==;
X-CSE-ConnectionGUID: DPzQj8YTSxO40wFp7Da+Zg==
X-CSE-MsgGUID: fXsfwe0FTqiDHBPcxYEOPA==
X-IronPort-AV: E=McAfee;i="6600,9927,11047"; a="9580186"
X-IronPort-AV: E=Sophos;i="6.07,212,1708416000"; 
   d="scan'208";a="9580186"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2024 11:21:32 -0700
X-CSE-ConnectionGUID: 4XW+uWxXSnSHBqYrOsvRMg==
X-CSE-MsgGUID: 2f6EgE52TbSLreHj+MqOPg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,212,1708416000"; d="scan'208";a="23516319"
Received: from msundstr-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.62.212])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2024 11:21:30 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org, Luca
 Coelho <luciano.coelho@intel.com>
Subject: Re: [PATCH v4 9/9] drm/i915/dmc: use struct intel_display more
In-Reply-To: <Zh_dVoy11dTY1IaM@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1713358679.git.jani.nikula@intel.com>
 <06bc9fd9d0472e899bd9d50f3b10a6066c1a0238.1713358679.git.jani.nikula@intel.com>
 <Zh_dVoy11dTY1IaM@intel.com>
Date: Thu, 18 Apr 2024 21:21:26 +0300
Message-ID: <87o7a6wmzd.fsf@intel.com>
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

On Wed, 17 Apr 2024, Rodrigo Vivi <rodrigo.vivi@intel.com> wrote:
> On Wed, Apr 17, 2024 at 04:02:47PM +0300, Jani Nikula wrote:
>> Now that the intel_de_ functions and DISPLAY_VER() accept struct
>> intel_display *, use it more.
>> 
>> Cc: Luca Coelho <luciano.coelho@intel.com>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
> Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

Thanks for the review, pushed the series to din.

BR,
Jani.

-- 
Jani Nikula, Intel
