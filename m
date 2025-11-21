Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E06DEC78841
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Nov 2025 11:30:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7495A10E84B;
	Fri, 21 Nov 2025 10:30:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mofjgAAG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D669C10E84B;
 Fri, 21 Nov 2025 10:30:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763721011; x=1795257011;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=PFk6zOL2oO8RIG1++OADRnO1MzLea1XCw4mskQlSgvY=;
 b=mofjgAAGQZk4xUDZvKC7i2rGi1NPIK+ytGE/k37a4pFQLJt2BWXqkcfv
 UGSrWhWTLaHfPhBDyJLBu172gVGmQOH4k0PgRIlCXEtvj9pCMwX7GV+gO
 N5BtJj3f6wh3iCjHVmf9AWgj9rNmjfSx60+0hiiBGLIcNcyHwjUjzUnTM
 5XUHlwxfoxbKiktSA/12VGKSuwDpqCY0Xv8XkXz1GONInTetE4F5kUmvb
 TnkUauE7qtaAV4qPf71xV6y2hR70cx4txGg8Xjk/4pqG86EcIuIGaYh8c
 UUOqXV8iXxZ8tCygDbWYB+d1IrbjBfqDtAFiUSfIbgx2EcZpWIgPvDo8d A==;
X-CSE-ConnectionGUID: yHsS3iusQrOtfXMfIIZbFw==
X-CSE-MsgGUID: tlr224/MT1GcXiV0ndjeDQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11619"; a="65745372"
X-IronPort-AV: E=Sophos;i="6.20,215,1758610800"; d="scan'208";a="65745372"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2025 02:30:11 -0800
X-CSE-ConnectionGUID: 4zp7Xsc6RAaG2y4/ua1GQg==
X-CSE-MsgGUID: uQGu9QHaTCi5pd672tepEg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,215,1758610800"; d="scan'208";a="190867475"
Received: from ettammin-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.86])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2025 02:30:09 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH v2 13/13] drm/xe/vga: use the same
 intel_gmch_vga_set_decode() as i915
In-Reply-To: <2bkiopdfnvb7clswdyxugft55za25esifpji35mjcmxv7qjctn@2v6het7sh7f4>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1763578288.git.jani.nikula@intel.com>
 <f4121e6c70bac6c26ef3cf51aaf72822f2cb2d54.1763578288.git.jani.nikula@intel.com>
 <2bkiopdfnvb7clswdyxugft55za25esifpji35mjcmxv7qjctn@2v6het7sh7f4>
Date: Fri, 21 Nov 2025 12:30:03 +0200
Message-ID: <4cd82f1b10776abd6b78da078d5444c8099802a0@intel.com>
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

On Thu, 20 Nov 2025, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
> On Wed, Nov 19, 2025 at 08:52:52PM +0200, Jani Nikula wrote:
>>Drop the #ifdef I915, and use the same intel_gmch_vga_set_decode() for
>>both i915 and xe.
>
> I hope this doesn't regress our display side on other archs. We are very
> close to having display working, but this messing with VGA is likely to
> break it.
>
> See "drm/i915/display: Stop touching vga on post enable", which is
> needed for xe to use a DG2/BMG with a raspberry pi (+pci/resources
> branch + a few other patches).

I'm feeling confident [1] that the patch at hand does not have similar
issues. This is about VGA arbitration on the PCI bridge, not about
actually poking at VGA registers.

I went ahead and merged the series. If there are any ill effects with
the last patch, we can revert with a low bar.


BR,
Jani.



[1] https://en.wikipedia.org/wiki/Dunning%E2%80%93Kruger_effect


-- 
Jani Nikula, Intel
