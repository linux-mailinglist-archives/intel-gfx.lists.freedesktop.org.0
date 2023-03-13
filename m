Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CBEE6B755E
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Mar 2023 12:08:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9DC1810E0F1;
	Mon, 13 Mar 2023 11:08:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 12E0910E4F0
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Mar 2023 11:08:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678705725; x=1710241725;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=pKdbjHdC/DydkP88s4ewrDJg2+1W07R2Jf3XW1/YquA=;
 b=UlJcBvtmdMFivOqPUA/y5wG/tHwIc1VrglX1Y1/X8Rac+HIbjpJvnAFU
 6ZUUIGUxf9nXyoz4ZmgirGLbnCGqGatzXx3VXf9Bz1pHQjdHcNExNBA9a
 mxHOqDGD+ZpLs0E8A4ey7EH9n1fhBNc7ca7OflmVCSyrdxOfsDXW9sJKM
 OHoBgbJTWhIWWsWVc8EbgOurKz7Can5IBGAq45g3kpoPB8TYOygO7eFHG
 1DAwYXwmBDHB73cS9UDeQm0EnLQNvueZcW8jEYdlVHb+gdPo4k5+0wdGl
 V8C9qN1lsH1scu+wU+vIPxrQAF0bYvDPH1SImzTLxXle4KudT1ek3c9EE A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10647"; a="325478207"
X-IronPort-AV: E=Sophos;i="5.98,256,1673942400"; d="scan'208";a="325478207"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2023 04:08:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10647"; a="821921901"
X-IronPort-AV: E=Sophos;i="5.98,256,1673942400"; d="scan'208";a="821921901"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by fmsmga001.fm.intel.com with SMTP; 13 Mar 2023 04:08:36 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 13 Mar 2023 13:08:35 +0200
Date: Mon, 13 Mar 2023 13:08:35 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <ZA8EM6TXxenI38Gg@intel.com>
References: <20230313093913.30198-1-ville.syrjala@linux.intel.com>
 <167870533713.1029.7537039656477322671@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <167870533713.1029.7537039656477322671@emeril.freedesktop.org>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBk?=
 =?utf-8?q?rm/i915=3A_Fix_build_with_WERROR=3Dy?=
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

On Mon, Mar 13, 2023 at 11:02:17AM -0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915: Fix build with WERROR=y
> URL   : https://patchwork.freedesktop.org/series/115046/
> State : failure
> 
> == Summary ==
> 
> Error: make failed
>   CALL    scripts/checksyscalls.sh
>   DESCEND objtool
>   INSTALL libsubcmd_headers
>   CC [M]  drivers/gpu/drm/i915/gt/intel_workarounds.o
> In file included from drivers/gpu/drm/i915/gt/intel_workarounds.c:6:
> drivers/gpu/drm/i915/gt/intel_workarounds.c: In function ‘dg1_gt_workarounds_init’:
> drivers/gpu/drm/i915/gt/intel_workarounds.c:1482:13: error: ‘i915’ undeclared (first use in this function); did you mean ‘to_i915’?

Huh. I guess CI keeps on trying to build against the last succesfully
built drm-tip tag? But there is no hint here about that...

Ewelina, this seems to be another place where CI needs improvements:
- report the baseline against which the patch was applied
- report drm-tip build failures

>  1482 |  if (IS_DG1(i915))
>       |             ^~~~
> ./drivers/gpu/drm/i915/i915_drv.h:559:45: note: in definition of macro ‘IS_DG1’
>   559 | #define IS_DG1(dev_priv)        IS_PLATFORM(dev_priv, INTEL_DG1)
>       |                                             ^~~~~~~~
> drivers/gpu/drm/i915/gt/intel_workarounds.c:1482:13: note: each undeclared identifier is reported only once for each function it appears in
>  1482 |  if (IS_DG1(i915))
>       |             ^~~~
> ./drivers/gpu/drm/i915/i915_drv.h:559:45: note: in definition of macro ‘IS_DG1’
>   559 | #define IS_DG1(dev_priv)        IS_PLATFORM(dev_priv, INTEL_DG1)
>       |                                             ^~~~~~~~
> make[5]: *** [scripts/Makefile.build:252: drivers/gpu/drm/i915/gt/intel_workarounds.o] Error 1
> make[4]: *** [scripts/Makefile.build:494: drivers/gpu/drm/i915] Error 2
> make[3]: *** [scripts/Makefile.build:494: drivers/gpu/drm] Error 2
> make[2]: *** [scripts/Makefile.build:494: drivers/gpu] Error 2
> make[1]: *** [scripts/Makefile.build:494: drivers] Error 2
> make: *** [Makefile:2028: .] Error 2
> 

-- 
Ville Syrjälä
Intel
