Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 773718B0662
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Apr 2024 11:48:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EF88C10E8B2;
	Wed, 24 Apr 2024 09:48:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Hcvh1h6k";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B4B3110E8B2
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Apr 2024 09:48:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713952128; x=1745488128;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=fDG3gK5/8RYdsm8OfURk/BX4taRgusPebPu9YdHGsMs=;
 b=Hcvh1h6kd1uVYnMaqmdLlPh31Cg0wI4A+qhuRpJhj+aDpd0lWtW7bgPH
 ofhZ78e2J52PCSoGAMsai3H5V0NF3PstXjs0CKEzkcPWlmExwtmQIKJRi
 bGhvnXebHm9OQlL67MMX/Ov2TiBGVkDNUgPl0Dvd8Q/dUcHyUq56FOgTB
 rNgueR6aeYt5Vxm2wMoNfwzkansoR/luO2/6MKg6mtAa+JjmM+2Ts0iEW
 hDU/gR2gjgcfmEwjyaXzu9FRry5kLldlZ/2eo24sFAhjdwKjPr99ELXGf
 JzW6Jbdl4YAAsqOhqfN5nqThWM5fdggQSwtkZ7VzzWe7NsirFTBaP/+tM Q==;
X-CSE-ConnectionGUID: aHJ3uArPSTCWHgLilwKk/Q==
X-CSE-MsgGUID: W3JV6gb/Q0qbadK5Mzud9A==
X-IronPort-AV: E=McAfee;i="6600,9927,11053"; a="9444124"
X-IronPort-AV: E=Sophos;i="6.07,225,1708416000"; 
   d="scan'208";a="9444124"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2024 02:48:47 -0700
X-CSE-ConnectionGUID: 4Uo8q8HqQU68k1tFbzaJiA==
X-CSE-MsgGUID: mLVCyjnnQKqn1UDwwLS1eg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,225,1708416000"; d="scan'208";a="62126827"
Received: from vgrigo2x-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.48.49])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2024 02:48:45 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>, intel-gfx@lists.freedesktop.org
Cc: arun.r.murthy@intel.com, Suraj Kandpal <suraj.kandpal@intel.com>
Subject: Re: [RFC 0/3] Enable darkscreen detection
In-Reply-To: <20240424073829.824312-2-suraj.kandpal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240424073829.824312-2-suraj.kandpal@intel.com>
Date: Wed, 24 Apr 2024 12:48:42 +0300
Message-ID: <87a5ljqef9.fsf@intel.com>
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

On Wed, 24 Apr 2024, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> Fifo underrun can lead to flicker, screen corruption and blank screen in
> case of pipe hang.
> This patch series aims to enable dark screen detection whenever
> FIFO underruns are hit and in case we face a darkscreen at this point
> instead of disabling irq and fbc we want to try reset the pipe on which
> the underrun has occured and keep a track on the number of times
> underrun occurs post reset and if this persists more than 5 times we go
> ahead and reset the whole display. If this still persists we then
> fallback to disabling irq and the fb.
> To summarize we are using the dark screen detction feature to detect the
> pipe hung scenario of FIFO underrun. After detection as corrective
> measurements following is done.
> 1)pipe reset
> 2)display reset
> Comments on this design and ideas on how else this can be implemented
> or diffrent scenarios dark screen detection can be used are also
> welcome.

I don't know what the above has to do with the patches posted. Please
don't send this raw patches even as RFC. If you only want to discuss,
let's discuss, but in this case the patches were a distraction, sorry.

One of the big opens is that AFAICT this still detects desired black
screen as dark screen, and flags it as a problem. Now, the patches do
only log something to dmesg, so it's neither here or there, but if you
want to do something more clever, this is a consideration.

BR,
Jani.


>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
>
> Suraj Kandpal (3):
>   drm/i915: Add Dark screen detection registers
>   drm/i915/darkscreen: Enable darkscreen detection
>   drm/i915: Schedule darkscreen detection work
>
>  drivers/gpu/drm/i915/Makefile                 |   1 +
>  .../gpu/drm/i915/display/intel_darkscreen.c   | 139 ++++++++++++++++++
>  .../gpu/drm/i915/display/intel_darkscreen.h   |  25 ++++
>  .../drm/i915/display/intel_display_types.h    |   3 +
>  .../drm/i915/display/intel_fifo_underrun.c    |   2 +
>  drivers/gpu/drm/i915/i915_reg.h               |   8 +
>  drivers/gpu/drm/xe/Makefile                   |   1 +
>  7 files changed, 179 insertions(+)
>  create mode 100644 drivers/gpu/drm/i915/display/intel_darkscreen.c
>  create mode 100644 drivers/gpu/drm/i915/display/intel_darkscreen.h

-- 
Jani Nikula, Intel
