Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A429BB59580
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Sep 2025 13:45:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BB53810E0E8;
	Tue, 16 Sep 2025 11:45:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nuYY0sHg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2922C10E0E8;
 Tue, 16 Sep 2025 11:45:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758023114; x=1789559114;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=nLoNJysuhCAv/g8YzFtjD3bE1WQgjdfKKL6jdpoFGRs=;
 b=nuYY0sHgz6auiN5yOeiOoqOsJxMTkxPpYbFstJUDd8Outxb/3w4MrCtR
 mX3ZerWsThqNssvtKjUFfNjH5d1Z7ujLDI8KVWK7q/GY+zQ2yCXM8EoAN
 juzDYoWP/olRrlkQuz+TuMwvpa0ecOnzjyoq5HxmL3Um2NIA4jkVYnYaK
 trrYuxpn74a92mprv24WN4617niHXsIvKJJcWnLLL1D+gmUN+7T696ubB
 89SWl9cXO6NCNX7UDbw5/CPHaE99cf/NxUhkPvUUiVHKzFJ7Bismu7Iq/
 Qd8nEFQjTO4LEUk0W9VXt9Dpsq4urHPbFkEhSRQ5fWpeAyQIHcFq/yF6a w==;
X-CSE-ConnectionGUID: 2GvmsYNJTyKW8QLWYPrr3g==
X-CSE-MsgGUID: 5U4CDuqyTfKcSATuia07BQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="60218798"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="60218798"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2025 04:45:14 -0700
X-CSE-ConnectionGUID: M2x/gXLeTQqheKzbfj7crw==
X-CSE-MsgGUID: AePdSuXDSzeReJkCHDre7w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,269,1751266800"; d="scan'208";a="198604546"
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.81])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2025 04:45:00 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>, Maarten
 Lankhorst <dev@lankhorst.se>
Cc: Lucas De Marchi <lucas.demarchi@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org, Jouni
 =?utf-8?Q?H=C3=B6gander?= <jouni.hogander@intel.com>, Vinod Govindapillai
 <vinod.govindapillai@intel.com>, "Saarinen, Jani" <jani.saarinen@intel.com>
Subject: Re: [PATCH 2/9] drm/{i915, xe}/fbdev: add intel_fbdev_fb_pitch_align()
In-Reply-To: <aL8D_dRE5nslOAUi@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1756931441.git.jani.nikula@intel.com>
 <ae51d1e224048bdc87bf7a56d8f5ebd0fbb6a383.1756931441.git.jani.nikula@intel.com>
 <aLqsC87Ol_zCXOkN@intel.com>
 <48e0a14d67ba84d64f6589bbdd0090e86be4fd4f@intel.com>
 <7cs3dirtgrypn7xjzmv7rxmkgbrtfxxjmtth576kfwerlydcgx@6zelewdmaukb>
 <fdcc32f2-c36b-439f-8d15-14b3fb7bd5dc@lankhorst.se>
 <aL8D_dRE5nslOAUi@intel.com>
Date: Tue, 16 Sep 2025 14:44:53 +0300
Message-ID: <86c6dd41fba3bc78b82a0f0343c7be770126a4e4@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
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

On Mon, 08 Sep 2025, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> It's aligning stride, not the size. So doesn't make sense. The only
> time you need page alignment for stride is for remapping, which is
> handled correctly by i915 in the dumb bo codepath and not handled at all
> by xe as usual.
>
> I suspect what we really should do for the fbdev allocation is to use
> the dump bo code, and make sure that code works the same way for i915
> and xe.

So what does it mean in practise and who's going to do this?

I'm trying to a) clarify what's i915/xe specific, b) minimize those
parts by pulling in common code to display, and c) finally making the
remaining i915/xe core specific parts independent of display. I'm trying
to make incremental forward progress.

But I just can't sign up for fixing up absolutely everything. Some of it
is technical debt going all the way back to 44e694958b95
("drm/xe/display: Implement display support"). I think many of the
interfaces between i915 and xe around bo's are way too high level, but
there's clear "impedance mismatch" between a lot of i915 and xe specific
things, and they just don't map 1:1 nicely.


BR,
Jani.


--=20
Jani Nikula, Intel
