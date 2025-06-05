Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CA8D9ACEF67
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Jun 2025 14:42:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CA93E10E0B5;
	Thu,  5 Jun 2025 12:42:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZmKsBxfS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EBE0110E0B5;
 Thu,  5 Jun 2025 12:42:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749127338; x=1780663338;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=koRP4FbaWskqHBEFrzIyDhLHwzttxKXA5i98ob55HzY=;
 b=ZmKsBxfSjdWaYW69wFjp6fEj/ZOY3gG/tfG9EwNlU+3Jagd54VPxeZ3J
 Q29ju21JXSc6PuDnvrWHpyyxg8zU61IaA3suloUIRjlQJZpPVDhkDyjIg
 EGYbvsr3eZJ52yA4I817pvy/nIkJMv+wSzF99xabaW7GbQhznbHqp+f2Z
 s+FT+5w6I9bA5PdBbwtPbiYZXPvuqFoiAGRlA7OjAoKZjCfipTf/mv8Um
 doItGkty5wwS+FqW/wzPAlpKbEDSFDSIRijw+i6SQHWOGJI1d7nqjVQ46
 hfBMeBk1h1Q54a8GZeDGu2fNRcjQeBqEfiADaXGBu1uLuOIx3fxte1tL1 A==;
X-CSE-ConnectionGUID: 2q/nOqr1TTi3ZfHFxtElBQ==
X-CSE-MsgGUID: HOo/l53aTHejOo2fDbczwg==
X-IronPort-AV: E=McAfee;i="6800,10657,11455"; a="53872527"
X-IronPort-AV: E=Sophos;i="6.16,212,1744095600"; d="scan'208";a="53872527"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2025 05:42:17 -0700
X-CSE-ConnectionGUID: Mfxn2ZbTRCeIqBO5ktcY2A==
X-CSE-MsgGUID: jzUk5QMhRpiqRumyP8l/0g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,212,1744095600"; d="scan'208";a="145840159"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.67])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2025 05:42:16 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: Suraj Kandpal <suraj.kandpal@intel.com>, Ville =?utf-8?B?U3lyasOkbMOk?=
 <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH v3] drm/i915: split out display register macros to a
 separate file
In-Reply-To: <20250604110225.993638-1-jani.nikula@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250604110225.993638-1-jani.nikula@intel.com>
Date: Thu, 05 Jun 2025 15:42:13 +0300
Message-ID: <ae7026aee5943df7693f25a04e6b1b8185494dc6@intel.com>
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

On Wed, 04 Jun 2025, Jani Nikula <jani.nikula@intel.com> wrote:
> This is a scripted split of the display related register macros from
> i915_reg.h to display/intel_display_regs.h. As a starting point, move
> all the macros that are only used in display code (or GVT). If there are
> users in core i915 code or soc/, or no users anywhere, keep the macros
> in i915_reg.h. This is done in groups of macros separated by blank
> lines, moving the comments along with the groups.
>
> Some manually picked macro groups are kept/moved regardless of the
> heuristics above.
>
> This is obviously a very crude approach. It's not perfect. But there are
> 4.2k lines in i915_reg.h, and its refactoring has ground to a halt. This
> is the big hammer that splits the file to two, and enables further
> cleanup.

Note: This is already stale. Will need to be redone.

BR,
Jani.


-- 
Jani Nikula, Intel
