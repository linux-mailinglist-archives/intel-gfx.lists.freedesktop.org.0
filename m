Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 382B9BCC716
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Oct 2025 11:55:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C69A010E288;
	Fri, 10 Oct 2025 09:55:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="labF2Nah";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2457F10E288
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Oct 2025 09:55:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760090108; x=1791626108;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=iFlT/RCZDhpcyUe61QHB1IhsWPpLMM/NNXfbCSaeKnA=;
 b=labF2Nahx9EUQ4eXCNqsja/Tnp/2dDRAU+0L5WS9Ww8DGxeZHcuAnDJ5
 DSw4P8+aR7eqwdddjjuV84KRqErGPaWmggf2n89FHAtodOW/dyT3xIqml
 cT1/jZaoCsJAYbY9/x4lUCWylGiSp9OPAlM+ighyzZ9PlAr6byfpxHAJy
 D2uDbdhob94Ce1dvy2onGRFu5KYOFjLp48anOSHiQ7aHRnDoZjdhofrxo
 Y1oE+oVkcBkDR5RVAwnv1zPLdVLBX64mqXpbzVsvUtwjYf9R+VPbrM3R9
 NJFWHCHeJlRyyTFCVC7Hi00/7LZVn1yxEa25EiIdXdyxrbHiTIt+ltG87 A==;
X-CSE-ConnectionGUID: 1ReBSGsVSKicsVbs5Tk2eA==
X-CSE-MsgGUID: Jjq28eTcQZy32LgPi4L5uQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11577"; a="61516446"
X-IronPort-AV: E=Sophos;i="6.19,218,1754982000"; d="scan'208";a="61516446"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2025 02:55:08 -0700
X-CSE-ConnectionGUID: 18jz9SR2Qq+HJeh7zrX01Q==
X-CSE-MsgGUID: ktNgJElxQCCMlMjX/8rImg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,218,1754982000"; d="scan'208";a="186063945"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.168])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2025 02:55:05 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Matt Atwood <matthew.s.atwood@intel.com>,
 intel-gfx@lists.freedesktop.org, matthew.d.roper@intel.com
Cc: rodrigo.vivi@intel.com, andi.shyti@kernel.org, Matt Atwood
 <matthew.s.atwood@intel.com>
Subject: Re: [PATCH v3] drm/i915:move and rename reg_in_range_table
In-Reply-To: <20251009215210.41000-1-matthew.s.atwood@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20251009215210.41000-1-matthew.s.atwood@intel.com>
Date: Fri, 10 Oct 2025 12:55:02 +0300
Message-ID: <e3b2b78e9acc4012b6755b3e1991c64f6fe1ed13@intel.com>
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

On Thu, 09 Oct 2025, Matt Atwood <matthew.s.atwood@intel.com> wrote:
> reg_in_range_table is a useful function that is used in multiple places,
> and will be needed for WA_BB implementation later.
>
> Let's move this function and i915_range struct to its own file, as we are
> trying to move away from i915_utils files.
>
> v2: move functions to their own file
> v3: use correct naming convention

Okay, Message from the Department of Bikeshedding and Nitpicking.

There's really nothing mmio specific about the functionality being
abstracted. You have a range represented by two u32's in a struct, and a
function to check if another u32 is within that range.

The struct could just as well remain i915_range, the files could be
i915_range.[ch], and the function could be, say,
i915_range_table_contains(). IMO "mmio" makes it unnecessarily specific.

> +bool i915_mmio_range_table_contains(u32 addr, const struct i915_mmio_range *table)

Usually, the "context" parameter goes first. I get that this wasn't the
case before, but I'd use the opportunity to swap these around.


BR,
Jani.


-- 
Jani Nikula, Intel
