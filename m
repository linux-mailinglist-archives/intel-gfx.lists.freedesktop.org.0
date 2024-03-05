Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DBD00872220
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Mar 2024 15:57:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 47C4B112B8A;
	Tue,  5 Mar 2024 14:57:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="a3UN4uEq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 74E29112B8A
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Mar 2024 14:57:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709650639; x=1741186639;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=vFXIMj4wF3pIZ+9urcejMHkj52JOqX7oDQE7cqCBDGc=;
 b=a3UN4uEqsEEZQLucGLQRc+/tliXP1iJRts0jkCg5TWYEAGIAfmJqF1n8
 uu5ksgeF23VL5Mm+8vFs8XU6HlOaGPxDgrfIb4A2+arWxQmeZELhKjVMn
 DKqkgdBMcP3jzGv0GgAdjF9RL/42cCyfoNUlNIyBoy3Q8jfliYzYBtYD/
 dev3c2gjjgyMSXRrm/ZuFDc3W8/Isx910CJhOM1weFer9ZTXG4ZSwLp6G
 iihloWoAX69T25dis2g91j9HWz6oa1rrO6OSj0OBUmlEw9lReI8Iol7Sv
 mEIoSCSwGkcGDZGnda0ENRGGdf3viL4dpAm6hYnMvzgZ0Jg4zQM7vOn/F w==;
X-IronPort-AV: E=McAfee;i="6600,9927,11003"; a="14787311"
X-IronPort-AV: E=Sophos;i="6.06,205,1705392000"; d="scan'208";a="14787311"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2024 06:57:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,205,1705392000"; d="scan'208";a="14076992"
Received: from omakhlou-mobl4.amr.corp.intel.com (HELO localhost)
 ([10.252.51.143])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2024 06:57:17 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 1/8] drm/i915: Rename the crtc/crtc_states in the top
 level DDI hooks/etc
In-Reply-To: <ZectbJLgYMWGARU0@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240301143600.1334-1-ville.syrjala@linux.intel.com>
 <20240301143600.1334-2-ville.syrjala@linux.intel.com>
 <ZebazalH8c1j1GGH@intel.com> <Zebcuecv8QHwm4AE@intel.com>
 <87sf1422mm.fsf@intel.com> <ZectbJLgYMWGARU0@intel.com>
Date: Tue, 05 Mar 2024 16:57:12 +0200
Message-ID: <87msrc20c7.fsf@intel.com>
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

On Tue, 05 Mar 2024, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> If the spec got updated then we should probably just do a full rename
> pass over the whole codebase instead of confusing things more by
> mixing up the terminology.

For example:

Bspec 54142 for display version 12+ has some mixed old/new terminology.

Bspec 68847 for xe2lpd+ only has new terminology.

> Also we should probably s/bigjoiner/joiner/ to make it clear that
> all of it also applies to uncompressed joiner as well.

Ack.

BR,
Jani.

--=20
Jani Nikula, Intel
