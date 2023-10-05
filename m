Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D365B7B9D12
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Oct 2023 14:53:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0CA0B10E166;
	Thu,  5 Oct 2023 12:53:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E147E10E166
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Oct 2023 12:52:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696510377; x=1728046377;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=euRTp85O5pRXcQ0rgJnpuEAkphn4EJq0e9SsqYQJ3ng=;
 b=oCO2MIYHF8bgh96AB4J/ePp76fdItlopEERFyH0VLLQq3QhIo7Qc4NlT
 jVWOqtjMcKCd7+t4ruNhco3b5DdmY7jfFDMOHTIMdxs1LCUeaUnApnMzN
 6HWVbBCvh5FXWHwSfZqhs/KXBv2kGzpp2OedoaQ5CL0Iq9CAXzBGtEtKY
 MX6UTwExwhmbLuwRBbWuXmucDVVLk0DS7E7Ov4ikTjegMcYqZyD31PDTn
 lfjojRlTMvAK631BjpTYi9c5htxysicZMifZ5tMZuczMv5BzojlWeLfi2
 I4xz8WyEfoU4xOvV3LkVY6MQPDduNp3/9pdqXbsHPOhFMwT5q5tA89wvW g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10854"; a="449976555"
X-IronPort-AV: E=Sophos;i="6.03,203,1694761200"; d="scan'208";a="449976555"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Oct 2023 05:52:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10854"; a="755434654"
X-IronPort-AV: E=Sophos;i="6.03,203,1694761200"; d="scan'208";a="755434654"
Received: from jnikula-mobl4.fi.intel.com (HELO localhost) ([10.237.66.162])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Oct 2023 05:52:54 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Jouni =?utf-8?Q?H=C3=B6gander?= <jouni.hogander@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20231005054500.2053070-1-jouni.hogander@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20231005054500.2053070-1-jouni.hogander@intel.com>
Date: Thu, 05 Oct 2023 15:52:51 +0300
Message-ID: <87lechcjto.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [RFC PATCH 0/4] Framework for display parameters
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
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 05 Oct 2023, Jouni H=C3=B6gander <jouni.hogander@intel.com> wrote:
> Currently all module parameters are handled by i915_param.c/h. This
> is a problem for display parameters when Xe driver is used.
>
> This patch set adds a mechanism to add parameters specific to the
> display. This is mainly copied from existing i915 parameters
> implementation with some naming changes and taking into account
> varying driver name.
>
> Also fbc and psr related parameter are moved as an example.

Added some more Cc's as FYI.

It's not perfect, but I'm okay with the general approach. I've hoped for
a beautiful solution to the problem, but hopes don't turn into code.

I'll reply with some bikeshedding comments to the individual patches.

BR,
Jani.


>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Cc: Uma Shankar <uma.shankar@intel.com>
> Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
>
> Jouni H=C3=B6gander (4):
>   drm/i915/display: Add framework to add parameters specific to display
>   drm/i915/display: Dump also display parameters into GPU error dump
>   drm/i915/display: Move enable_fbc module parameter under display
>   drm/i915/display: Move psr related module parameters under display
>
>  drivers/gpu/drm/i915/Makefile                 |   2 +
>  drivers/gpu/drm/i915/display/i9xx_wm.c        |   2 +-
>  .../gpu/drm/i915/display/intel_display_core.h |   2 +
>  .../drm/i915/display/intel_display_debugfs.c  |   2 +
>  .../display/intel_display_debugfs_params.c    | 239 ++++++++++++++++++
>  .../display/intel_display_debugfs_params.h    |  14 +
>  .../drm/i915/display/intel_display_device.c   |   8 +
>  .../drm/i915/display/intel_display_device.h   |   1 +
>  .../drm/i915/display/intel_display_params.c   | 166 ++++++++++++
>  .../drm/i915/display/intel_display_params.h   |  65 +++++
>  drivers/gpu/drm/i915/display/intel_fbc.c      |  10 +-
>  drivers/gpu/drm/i915/display/intel_psr.c      |  14 +-
>  drivers/gpu/drm/i915/i915_driver.c            |   2 +
>  drivers/gpu/drm/i915/i915_gpu_error.c         |   3 +
>  drivers/gpu/drm/i915/i915_gpu_error.h         |   2 +
>  drivers/gpu/drm/i915/i915_params.c            |  19 --
>  drivers/gpu/drm/i915/i915_params.h            |   4 -
>  17 files changed, 519 insertions(+), 36 deletions(-)
>  create mode 100644 drivers/gpu/drm/i915/display/intel_display_debugfs_pa=
rams.c
>  create mode 100644 drivers/gpu/drm/i915/display/intel_display_debugfs_pa=
rams.h
>  create mode 100644 drivers/gpu/drm/i915/display/intel_display_params.c
>  create mode 100644 drivers/gpu/drm/i915/display/intel_display_params.h

--=20
Jani Nikula, Intel
