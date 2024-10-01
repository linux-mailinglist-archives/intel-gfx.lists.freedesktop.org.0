Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 33DBE98B929
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Oct 2024 12:20:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 696A810E27F;
	Tue,  1 Oct 2024 10:20:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MVyhQxxW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6EB7210E607;
 Tue,  1 Oct 2024 10:20:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727778020; x=1759314020;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=qyvk5UoMCVCT7KMuCWHzFB1psK6OUSTQ7pXeF4PRooo=;
 b=MVyhQxxWPDhJR4fC4Cb1FHCHIykL2+EW20oBvjC3WzzT5wgvo/eOoPdM
 Al4/PGV76pZhNP3hbi8tJhvcRGqGGk7BY3gOJtm2zkzX9YZSywS+bELEQ
 VMigI2vANX0hkd3Zf3Nj0YTajExoKFd1Pzzzf3uPPkhbjc1DQGIzKfEfy
 ernrE3FvbiKNEVJsim0wMG1j/z0tEeZ3j9yLBhGC6JcKI9FyYEtOEZLgX
 hHtSg5CdW4KFR9QUPV76s0IZ7RcdN789Yxh92WBCVVZXtIKT6aGHzoIs0
 eOpn4oiXmuGSt7vH/gtn2WWTT0oNWd+byikziohtBLrlIsskEVTZNnc29 A==;
X-CSE-ConnectionGUID: /7xWcbe/Q0q9GxTUIzPKnA==
X-CSE-MsgGUID: Kq/aC5hoQq61Nu47YANJqw==
X-IronPort-AV: E=McAfee;i="6700,10204,11211"; a="44366906"
X-IronPort-AV: E=Sophos;i="6.11,167,1725346800"; d="scan'208";a="44366906"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2024 03:20:13 -0700
X-CSE-ConnectionGUID: JiNWfKlJRuurvTNderixgQ==
X-CSE-MsgGUID: nQiA1PFWSsOOqbI6s9uCrw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,167,1725346800"; d="scan'208";a="111097086"
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.188])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2024 03:20:11 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: I915-ci-infra@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: =?utf-8?Q?=E2=9C=97?= Fi.CI.BUILD: failure for drm/i915: remove
 all IS_<PLATFORM>_GT<N>() macros
In-Reply-To: <172774919726.1140040.15154995908551792317@2413ebb6fbb6>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240930124948.3551980-1-jani.nikula@intel.com>
 <172774919726.1140040.15154995908551792317@2413ebb6fbb6>
Date: Tue, 01 Oct 2024 13:19:56 +0300
Message-ID: <87r090unub.fsf@intel.com>
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

On Tue, 01 Oct 2024, Patchwork <patchwork@emeril.freedesktop.org> wrote:
> == Series Details ==
>
> Series: drm/i915: remove all IS_<PLATFORM>_GT<N>() macros
> URL   : https://patchwork.freedesktop.org/series/139306/
> State : failure
>
> == Summary ==
>
> Error: patch https://patchwork.freedesktop.org/api/1.0/series/139306/revisions/1/mbox/ not found
> Build failed, no error log produced

I wonder what happened here. The kernel test robot built it just fine.

BR,
Jani.

-- 
Jani Nikula, Intel
