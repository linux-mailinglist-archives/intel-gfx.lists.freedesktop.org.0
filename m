Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A34AB66E36C
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Jan 2023 17:23:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1C99E10E586;
	Tue, 17 Jan 2023 16:23:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 724C910E585
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Jan 2023 16:23:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673972598; x=1705508598;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=kp43M/MJgY9z5i4EXBFMvh5s2y8+a4qHsuEl9C6c5II=;
 b=IEpGlffUOg04ypgk+HVVG6kNebdIdZn4nlKn8CBs3aaDr+rX5L4NMdEO
 Yc/XcOnV/YirHsALzGatDH4kPbE+NnayT+qWFYp0eI0cW2T4AmE77gTd2
 q4PpUIxd3S/ycUh+RGlP5jvCDwpa1updumcgl90TXoyvp8ya0xe2Daw3H
 fY0k17G9XGVNsGKZjV1rmGBoP1CZW2F2HFnyn3MN4z0h+1q6RWAaefdhI
 d/FXv45EAcP1GuVNiK/t7q26lI3NC1Nm7BN7buQBCoITtOL9yHkUzehEC
 hvJv9nqMhBgj9bRP5kveCZML7KYYOglwNWrUJx3HVXQd8hettsP0ofEHV g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10592"; a="323434201"
X-IronPort-AV: E=Sophos;i="5.97,224,1669104000"; d="scan'208";a="323434201"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jan 2023 08:23:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10592"; a="748092924"
X-IronPort-AV: E=Sophos;i="5.97,224,1669104000"; d="scan'208";a="748092924"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.55])
 by FMSMGA003.fm.intel.com with SMTP; 17 Jan 2023 08:23:15 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 17 Jan 2023 18:23:15 +0200
Date: Tue, 17 Jan 2023 18:23:15 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <Y8bLc6dPqp8topmi@intel.com>
References: <cover.1673958757.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <cover.1673958757.git.jani.nikula@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 0/4] drm/i915: GMCH refactoring
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Jan 17, 2023 at 02:33:05PM +0200, Jani Nikula wrote:
> Let's see if this sticks.
> 
> Jani Nikula (4):
>   drm/i915: add gmch substruct to struct drm_i915_private
>   drm/i915/gmch: split out soc/intel_gmch
>   drm/i915/gmch: mass rename dev_priv to i915
>   drm/i915/gmch: move VGA set state to GMCH code

My main worry with this name would be confusion with HAS_GMCH().

> 
>  drivers/gpu/drm/i915/Makefile             |   1 +
>  drivers/gpu/drm/i915/display/intel_vga.c  |  32 +---
>  drivers/gpu/drm/i915/gt/intel_ggtt_gmch.c |   2 +-
>  drivers/gpu/drm/i915/i915_driver.c        | 145 +-----------------
>  drivers/gpu/drm/i915/i915_drv.h           |  10 +-
>  drivers/gpu/drm/i915/soc/intel_gmch.c     | 171 ++++++++++++++++++++++
>  drivers/gpu/drm/i915/soc/intel_gmch.h     |  18 +++
>  7 files changed, 204 insertions(+), 175 deletions(-)
>  create mode 100644 drivers/gpu/drm/i915/soc/intel_gmch.c
>  create mode 100644 drivers/gpu/drm/i915/soc/intel_gmch.h
> 
> -- 
> 2.34.1

-- 
Ville Syrjälä
Intel
