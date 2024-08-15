Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EB178952AD0
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Aug 2024 10:44:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C3D6610E050;
	Thu, 15 Aug 2024 08:44:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EI3jBLbZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A05DE10E050
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Aug 2024 08:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723711473; x=1755247473;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=khnE8w5/6EE78p7rT4km5c2GgjgCLtZHgsZ/kFGxAqU=;
 b=EI3jBLbZK/au411zSYYxrWSO20rSj6+2noQE476iY+WPfic9QGu2x9MS
 3mevKWogNDsk6xlwK4PIcmMxnyYCv582dxQIsvPZSkqr0iGDM2XV0ibON
 +Kpk5eXZJ639ZQ8kzFkoqIParoZ+h4qGDeqEcPDEvxvqt4tIUr35ewk4P
 1ky+24+wZdP0Ge7sYxN3Z0n0+0t1Cd1zQdhMp4gIq2CIcgX5sLnaW8kYm
 OjOyf4MrQX/VaT1dNyr1FbthRng7rpf7wyye6lYRq8wV64IXQY1l56BvT
 EPQ+a+BEyoqg2+bld0b4Fmu/EYea8BFMHzj8OO68Skjw3FmGDgb46pjAZ w==;
X-CSE-ConnectionGUID: 1AQ1lH5WSPm5FdvR8UlHVg==
X-CSE-MsgGUID: qdKKRW34RxebOWKKcptZLg==
X-IronPort-AV: E=McAfee;i="6700,10204,11164"; a="32595440"
X-IronPort-AV: E=Sophos;i="6.10,148,1719903600"; d="scan'208";a="32595440"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Aug 2024 01:44:33 -0700
X-CSE-ConnectionGUID: 1/Voow0TTQOoBbmbsM+DEQ==
X-CSE-MsgGUID: JpLoSDbdRC21yQH4UHv8DA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,148,1719903600"; d="scan'208";a="59319085"
Received: from iklimasz-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.149])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Aug 2024 01:44:31 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Renan W. P." <renanwilliamprado@gmail.com>, rodrigo.vivi@intel.com,
 intel-gfx@lists.freedesktop.org, "Deak, Imre" <imre.deak@intel.com>
Subject: Re: A huge warning in dmesg pointing to
 drivers/gpu/drm/i915/display/intel_tc.c
In-Reply-To: <2810b938-7df7-408e-9775-6f20d1694176@gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <2810b938-7df7-408e-9775-6f20d1694176@gmail.com>
Date: Thu, 15 Aug 2024 11:44:28 +0300
Message-ID: <87wmkixjir.fsf@intel.com>
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


[dropped a bunch of mailing lists and maintainers, added Imre]

On Thu, 15 Aug 2024, "Renan W. P." <renanwilliamprado@gmail.com> wrote:
> [2.] Full description of the problem/report:
>
> I can't identify any factual problems beyond a warning in dmesg triggered at every boot, i.e., I have seen no features affected. The dmesg output is located in the log files in the attachment.
> I am facing this warning in LENOVO 82MG/LNVNB161216, BIOS H4CN35WW(V2.04) 04/12/2024 (Lenovo Ganing 3i). I have tried two new kernel versions fromwww.kernel.org  site, the Kernel 6.10.5 and 6.1.105.
> Additionally, I have used Debian at least since kernel version 6.1.22. All kernels present warnings in the same file with slightly different outputs in dmesg. I am compiling the kernel with the config-6.1.105 file in the attachment.

Unless Imre has some obvious ideas what the problem is, please file the
bug report at freedesktop.org gitlab as described in [1]. While the
detail in your report here is great, I'm afraid it's just going to be
completely forgotten on the mailing list.

Thanks,
Jani.


[1] https://drm.pages.freedesktop.org/intel-docs/how-to-file-i915-bugs.html



-- 
Jani Nikula, Intel
