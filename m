Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C29B184FB42
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Feb 2024 18:48:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1F88710F880;
	Fri,  9 Feb 2024 17:48:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nuuUS7H6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0FABD10F880;
 Fri,  9 Feb 2024 17:48:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707500936; x=1739036936;
 h=date:from:to:subject:message-id:reply-to:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=jPrJ8Uo6Z6OdB00QwV1rXBsosGoBMR2Z+xjr2FOYWh0=;
 b=nuuUS7H6zXSOvrwTDKhiN5gRjSUaMzSKlk2WifM08/H/c9uM3cuuxk7e
 LiV/XqqGsGmepCyKT0huXNUs5JVVH3NClvZq3v/qH+Q12kiWRIS95LvC9
 wfEu/LtDCFyB7vmjW3LHWzc6c6VoSpfnzOuXe9dOdKHu7DKg7QYA2p/WC
 Jz1kx1GMQE7RRRNkoHt0W84MRe/byHzaovKaHVZiLwVJCuiOZhtUWZQHH
 5wDKMlbaVyxVTLyox2VLv6Dw3IYTTQ3W3d46x5HRM2uA9Jn54wgqZNN0w
 rxFFJr10/I5g8f8OjXoYtHsAt7FiY9IQtNPjKUgPPDIdSNUbikReihMNY g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10979"; a="1626456"
X-IronPort-AV: E=Sophos;i="6.05,257,1701158400"; 
   d="scan'208";a="1626456"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2024 09:48:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,257,1701158400"; 
   d="scan'208";a="6637862"
Received: from unknown (HELO ideak-desk.fi.intel.com) ([10.237.66.155])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2024 09:48:54 -0800
Date: Fri, 9 Feb 2024 19:48:46 +0200
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org, I915-ci-infra@lists.freedesktop.org
Subject: Re: =?utf-8?B?4pyXIEZpLkNJLkJVSUxEOiBmYWls?=
 =?utf-8?Q?ure_for_series_starting_with_=5Bv3=2C1=2F2=5D_drm=2Fi915?=
 =?utf-8?Q?=3A?= Prevent HW access during init from SDVO TV get_modes hook
Message-ID: <ZcZlfpL29640umQM@ideak-desk.fi.intel.com>
References: <20240209160316.2160747-1-imre.deak@intel.com>
 <170749938843.1129907.10081916788868767063@5338d5abeb45>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <170749938843.1129907.10081916788868767063@5338d5abeb45>
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
Reply-To: imre.deak@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Feb 09, 2024 at 05:23:08PM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: series starting with [v3,1/2] drm/i915: Prevent HW access during init from SDVO TV get_modes hook
> URL   : https://patchwork.freedesktop.org/series/129727/
> State : failure
> 
> == Summary ==
> 
> Error: make failed
>   CALL    scripts/checksyscalls.sh
>   DESCEND objtool
>   INSTALL libsubcmd_headers
>   CC [M]  drivers/gpu/drm/i915/display/intel_sdvo.o
> drivers/gpu/drm/i915/display/intel_sdvo.c: In function ‘intel_sdvo_get_tv_modes’:
> drivers/gpu/drm/i915/display/intel_sdvo.c:2305:41: error: ‘i915’ undeclared (first use in this function); did you mean ‘I915’?
>  2305 |  if (!intel_display_driver_check_access(i915))
>       |                                         ^~~~
>       |                                         I915
> drivers/gpu/drm/i915/display/intel_sdvo.c:2305:41: note: each undeclared identifier is reported only once for each function it appears in
> make[6]: *** [scripts/Makefile.build:243: drivers/gpu/drm/i915/display/intel_sdvo.o] Error 1
> make[5]: *** [scripts/Makefile.build:481: drivers/gpu/drm/i915] Error 2
> make[4]: *** [scripts/Makefile.build:481: drivers/gpu/drm] Error 2
> make[3]: *** [scripts/Makefile.build:481: drivers/gpu] Error 2
> make[2]: *** [scripts/Makefile.build:481: drivers] Error 2
> make[1]: *** [/home/kbuild2/kernel/Makefile:1921: .] Error 2
> make: *** [Makefile:240: __sub-make] Error 2
> Build failed, no error log produced

Not sure why this fails, on latest drm-tip I get a different result, see
below.

Looks like an old tree is used as the base, could someone from the CI
team check this?

$ git fetch drm-tip
$ git reset --hard drm-tip/drm-tip
HEAD is now at 2aceb3c0b9c8c drm-tip: 2024y-02m-09d-12h-48m-25s UTC integration manifest
$ git am ~/imre.mbox
Applying: drm/i915: Prevent HW access during init from SDVO TV get_modes hook
Applying: drm/i915: Prevent HW access during init from connector get_modes hooks
$ make
  CALL    scripts/checksyscalls.sh
  DESCEND objtool
  INSTALL libsubcmd_headers
  CC [M]  drivers/gpu/drm/i915/display/intel_crt.o
  CC [M]  drivers/gpu/drm/i915/display/intel_dp_mst.o
  CC [M]  drivers/gpu/drm/i915/display/intel_dvo.o
  CC [M]  drivers/gpu/drm/i915/display/intel_sdvo.o
  LD [M]  drivers/gpu/drm/i915/i915.o
  CC [M]  drivers/gpu/drm/xe/i915-display/intel_dp_mst.o
  LD [M]  drivers/gpu/drm/xe/xe.o
  MODPOST Module.symvers
Kernel: arch/x86/boot/bzImage is ready  (#1476)
  LD [M]  drivers/gpu/drm/i915/i915.ko
  LD [M]  drivers/gpu/drm/xe/xe.ko
