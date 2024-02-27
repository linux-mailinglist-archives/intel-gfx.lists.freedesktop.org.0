Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 28189869BFD
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Feb 2024 17:24:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9086510E27C;
	Tue, 27 Feb 2024 16:24:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GT2GrH1l";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9F91510E27C
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Feb 2024 16:24:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709051091; x=1740587091;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=PnqwAI9xqDgtQjz+PzkQo9kfqNbYXuQYGE7nF4NAWvQ=;
 b=GT2GrH1ljuDNF20+KMeUtTayOuLUYuaMhk9wDguKpE5bnJn8PsNwr8p3
 sVFAQGOI+mqHBwqWyJW+wqCUmb3wshF2xjj56mkqJSu7jpOFG1MJgKvTW
 /yQRzo9xOXKNBHxuQ3aAbENbs00tGqv1hoEFdIkRF/4NnfF6ghWS8fwpc
 77JpklkIGYkXzvntxEj1eFtHjP3Ga1kALU/tZTjJ090dkjsYTvrc4epbO
 FCUl2qPQDTmOIvzNIm55Jx7CVhlV/vkUROkCfvVdAZ4O3bJr688ECDkoh
 oxSjURY6LNTM/FibP4VXKrEqRAA4qs8RroWOC2YH24oRg43e+Op2IDs0P w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10996"; a="14109731"
X-IronPort-AV: E=Sophos;i="6.06,188,1705392000"; d="scan'208";a="14109731"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2024 08:24:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,188,1705392000"; 
   d="scan'208";a="7669961"
Received: from stinti-mobl.ger.corp.intel.com (HELO localhost) ([10.252.50.15])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2024 08:24:48 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Roman Lozko <lozko.roma@gmail.com>, intel-gfx@lists.freedesktop.org
Subject: Re: Linux 6.7 fails to boot on Core Ultra 155H with "i915 GT1 GSC
 proxy" error
In-Reply-To: <CAEhC_BmNE-RQZv35tBO5sO2n8=+BNHCMNRHnZc87EP_nBiq26w@mail.gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <CAEhC_BmNE-RQZv35tBO5sO2n8=+BNHCMNRHnZc87EP_nBiq26w@mail.gmail.com>
Date: Tue, 27 Feb 2024 18:24:44 +0200
Message-ID: <87plwheuyb.fsf@intel.com>
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

On Wed, 14 Feb 2024, Roman Lozko <lozko.roma@gmail.com> wrote:
> Hi,
> I've first filled the bug in openSUSE Tumbleweed bugtracker
> (https://bugzilla.opensuse.org/show_bug.cgi?id=1219899) and then found
> Intel GFX CI and that it reliably triggers the same error in Arrow
> Lake BAT runs.
>
> Don't know what else to say, so yeah, system does not boot. Is it
> expected? I'm trying to install other distributions now to see if
> there is something different in their kernels.

Please file a bug as described at [1].

BR,
Jani.

[1] https://drm.pages.freedesktop.org/intel-docs/how-to-file-i915-bugs.html

-- 
Jani Nikula, Intel
