Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DA1593F278
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Jul 2024 12:19:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 411F910E383;
	Mon, 29 Jul 2024 10:19:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="i7BJ4fKL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 514D510E383
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Jul 2024 10:19:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722248351; x=1753784351;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=kwjwZ+Q13hRDOt0uDLtCck0bxi5XRwKv8VH6rkNkbvY=;
 b=i7BJ4fKLpO3fcnVGvkvOqSf8uKg35t6yVVL2dXah+zyRdmgKycLmWUFd
 CATgYCpkcGCIEjRG83WANRb/zY9t1CP2WqHmj1EwpFKAkdJiNfljiY+0I
 bDTHk6vEK/RV/LYspdhNsN/A7zyv9xcfndigEx6+bBSo7ZgRhTq7/bJ8s
 h/aCnA3pVosR1/HHQjUXub0kjL8rYbUIP0KC3Uqm7C+sr7UZjMOXT8y1V
 N5Vvawor6bCIb/jYB+BEzTeI08zV2iekxbFjRkmTyhWu+E58iW3srSLOE
 ucOXPssnrdzJFdaxrn7sRbNY/dE3vv5LsnJIexsNnKZ3oWRTuV6N+ot7R w==;
X-CSE-ConnectionGUID: mgLNwm/MT2yDNlSMEKIxzQ==
X-CSE-MsgGUID: zo6vgS3NQsW8pyFPyExjcw==
X-IronPort-AV: E=McAfee;i="6700,10204,11147"; a="30613101"
X-IronPort-AV: E=Sophos;i="6.09,245,1716274800"; d="scan'208";a="30613101"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2024 03:19:11 -0700
X-CSE-ConnectionGUID: u1yknAgNQcmY90325mLjiQ==
X-CSE-MsgGUID: ILWWqph7TQmDrpkVQ5JNyQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,245,1716274800"; d="scan'208";a="53890905"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.185])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2024 03:19:09 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Francesco Poli <invernomuto@paranoici.org>, imre.deak@intel.com
Cc: Intel GFX list <intel-gfx@lists.freedesktop.org>, 1075770@bugs.debian.org
Subject: Re: [bug report] adlp_tc_phy_connect [i915] floods logs with
 drm_WARN_ON(tc->mode == TC_PORT_LEGACY) call traces
In-Reply-To: <20240725235929.68dd56625806ac0c8d20a2c8@paranoici.org>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240715203543.63b40a68931fdc45332ba9f8@paranoici.org>
 <ZqFIKLLcUQrd1IAq@ideak-desk.fi.intel.com>
 <20240725235929.68dd56625806ac0c8d20a2c8@paranoici.org>
Date: Mon, 29 Jul 2024 13:19:06 +0300
Message-ID: <87v80oxzz9.fsf@intel.com>
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

On Thu, 25 Jul 2024, Francesco Poli <invernomuto@paranoici.org> wrote:
> I had reported the bug to the Debian BTS (Bug Tracking System), where
> I was told to report the bug upstream, by contacting developers/mailing
> lists.
> Now on this mailing list, I am being told to report the issue on
> gitlab.freedesktop.org (which requires to register an account, in order
> to report issues)... Having to jump through all these hoops is beginning
> to be a little time consuming...   :-(

There are a number of reasons why email and mailing lists are really bad
for reporting bugs, from our perspective, which is why we've asked
people to report bugs to freedesktop.org bug trackers for about a decade
now.

If the right person doesn't have time to resolve the issue right away,
it'll likely be forgotten on the mailing list. Attachments aren't
welcome on mailing lists, let alone big logs. It's easier to label and
reference issues on a bug tracker. It's easier (yes, for us) to manage
the issues, and the people working on them, on a bug tracker. And so on.

BR,
Jani.


-- 
Jani Nikula, Intel
