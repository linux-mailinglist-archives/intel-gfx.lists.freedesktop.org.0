Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2500FC9B024
	for <lists+intel-gfx@lfdr.de>; Tue, 02 Dec 2025 11:00:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2098F10E5E9;
	Tue,  2 Dec 2025 10:00:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BicRvcFP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7EF8810E5C6;
 Tue,  2 Dec 2025 10:00:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764669618; x=1796205618;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=D0j1gEvbbCCRyRtUHyGTsC/11iPhFotjjvN0AuTTkzU=;
 b=BicRvcFPRMsBrQ1w187Q6eHDshitA4L7+CzlXXD8DzlyuIO2EQY8W8QP
 c7570wQ912Ebpqv5QO91Qy+5Z9t/aMgQD2sLjcK3uD9Sd1IPZQCCDElQP
 lB81aDjwKLm9FkQP0/OiuXf2puhL0Qf/YzyrXgWT/26jPImqgMpjjnOAc
 QKSz4gYqVAW3VaiDm+eAjFCxdiSMGL8TaKZWugTW3vTGowqVDD3HPc2Kj
 yx6QmudGAGzCqG2XYQ4a2tnrvhbngEEi0sJznKubJ21jmRVv1OPvu67SC
 H2M40ab7b8O1g96rNaBEpa6Ptn7BsbUS//fbqiRfnwo0YnxWYoi7XaMyD Q==;
X-CSE-ConnectionGUID: 887OUqVsQ2e8HmEhiahl9A==
X-CSE-MsgGUID: UzIa4VSBTfGZbGgGVlsc2Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11630"; a="66574204"
X-IronPort-AV: E=Sophos;i="6.20,242,1758610800"; d="scan'208";a="66574204"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Dec 2025 02:00:18 -0800
X-CSE-ConnectionGUID: RzKcmpgFQ9Oks/CDAnJkYw==
X-CSE-MsgGUID: Ka2J04MYQfqUSO2qUhre3Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,242,1758610800"; d="scan'208";a="225303836"
Received: from ettammin-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.182])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Dec 2025 02:00:16 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH] drm/xe/compat: remove unused i915_active.h and
 i915_active_types.h
In-Reply-To: <aS3RCI6ctO2ytM5E@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20251201171050.2145833-1-jani.nikula@intel.com>
 <aS3RCI6ctO2ytM5E@intel.com>
Date: Tue, 02 Dec 2025 12:00:13 +0200
Message-ID: <373293864b4aef87e916633068c9bb8006d1196e@intel.com>
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

On Mon, 01 Dec 2025, Rodrigo Vivi <rodrigo.vivi@intel.com> wrote:
> On Mon, Dec 01, 2025 at 07:10:50PM +0200, Jani Nikula wrote:
>> Commit 965930962a41 ("drm/i915/frontbuffer: Fix intel_frontbuffer
>> lifetime handling") dropped the last xe display users of the
>> headers. They're still used in intel_overlay.c, but it's not built as
>> part of xe.
>
> indeed, this patch moved the used ones to inside i915/gem...
>
> Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

Thanks, pushed to din.

BR,
Jani.


-- 
Jani Nikula, Intel
