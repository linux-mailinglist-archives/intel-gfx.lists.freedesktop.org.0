Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CDDAC57C17
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Nov 2025 14:45:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 47ED910E816;
	Thu, 13 Nov 2025 13:44:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AVzTZOtR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 179FC10E816;
 Thu, 13 Nov 2025 13:44:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763041497; x=1794577497;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=duFwnvCAXFfMhQPl/fXVyu0HXpqDFI2tU8G4CJv+0pg=;
 b=AVzTZOtRgfWtjFYfPxizSevAK/t39SPlztGbZXQtFDpMcnXXT7EjHJkT
 3oNiGtTlB7Q87Wyl2GCCniFGtDxDZTJvxiTMv1pWi+dy4B15yzOi809bC
 l2Ka7r7XoKqg1zqa+cWdBP9PRwaENNUK1AiCDG+hRHPC/zf1YxpTPvLxn
 +e28PI0PKSiw7mZySZtlJcgb14+vRsyhneL5PST1YxTn/+HVITK9peacA
 v4QKU8CSVcqHyRs1ogbOE7XjFPHYgjz+uGEuc0/OFBCmTVySZKYlMlRpx
 dE7xA4d6+68T+61zLDWuPpMFHY2SYltby1DsQ5ur8bOiJqHyVeIJsL/xj g==;
X-CSE-ConnectionGUID: c5/cTXv/S1GtHI3cn0Mlrw==
X-CSE-MsgGUID: mEchUn2TQwSUcGvr0hSNKg==
X-IronPort-AV: E=McAfee;i="6800,10657,11612"; a="65158833"
X-IronPort-AV: E=Sophos;i="6.19,302,1754982000"; d="scan'208";a="65158833"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2025 05:44:57 -0800
X-CSE-ConnectionGUID: Wra2m2nDTea6lqiMUYx29A==
X-CSE-MsgGUID: gaIjphNXQ3qEqTGSJfO/Qg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,302,1754982000"; d="scan'208";a="189774199"
Received: from aotchere-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.135])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2025 05:44:55 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, uma.shankar@intel.com
Subject: Re: [PATCH 0/8] drm/i915: start dissolving soc/
In-Reply-To: <85590237a138e9a6acbd53a8e9ec96cf76dd8078@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1763027774.git.jani.nikula@intel.com>
 <85590237a138e9a6acbd53a8e9ec96cf76dd8078@intel.com>
Date: Thu, 13 Nov 2025 15:44:53 +0200
Message-ID: <dc52de2ad62897a90672497b04b1a3dbed3087ab@intel.com>
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

On Thu, 13 Nov 2025, Jani Nikula <jani.nikula@intel.com> wrote:
> On Thu, 13 Nov 2025, Jani Nikula <jani.nikula@intel.com> wrote:
>> soc/ has served a useful purpose, and way back when it was the obvious
>> thing to do. However, it has become a bit awkward, sitting somewhere
>> between i915, xe and display.
>>
>> Split the i915 core specific parts out of intel_dram.c, and move
>> intel_dram.c and intel_rom.c under display. This allows us to clean up
>> the xe build and compat headers very nicely.
>>
>> intel_gmch.[ch] still remains under soc/, as it requires a bit more
>> thought. But this series is a good start.
>
> After a discussion with Ville, I've got this figured out and the patches
> ready as well.

Sent the patches in-reply-to the cover letter for review, though it'll
probably confuse CI and b4. :)


-- 
Jani Nikula, Intel
