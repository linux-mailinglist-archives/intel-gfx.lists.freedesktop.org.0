Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F722BE4468
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Oct 2025 17:36:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 24FCF10EA2A;
	Thu, 16 Oct 2025 15:36:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aKu9TgjH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2777910EA27;
 Thu, 16 Oct 2025 15:36:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760628994; x=1792164994;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=OEabgA42RR0hlXALoJ58lswcO68CzN11fK6cX8DTW80=;
 b=aKu9TgjHGtVTy5XMyBjJsSso4pW5Dp8Jt2ufgMBfaDk5M0O7T8a9lPjl
 A5uGGuoQS70xBJhCJ9H7TMRoA+iyAV1z65Bb+HhTiecwKxdNXll3rqJ/C
 g54M9tsaEzEFPatZVpLIUHkoa8P4Af/lUxf0zvnCr0CCFwsMP3jvHy+3a
 DSwwBoFVCLWfopAOyREAuWza4YXIspiS+AcVDRgfV6apaElSjgLkwrdcB
 vuw6sME7H4TT7Z0fAqYmQuP6mcVP4SsKmBoOS+sFILJi+ZANjUOIiPolY
 pIjigB6PjXQc/gjQMJL0VvPePoCZVw/PYtRLxnTcIQ9Bs5iJ4DZgz96/1 A==;
X-CSE-ConnectionGUID: 0W1vzFcjSqaBT10Ge9cdiw==
X-CSE-MsgGUID: OyOV27QvQ1i/Vfzxa/CVAw==
X-IronPort-AV: E=McAfee;i="6800,10657,11584"; a="74166798"
X-IronPort-AV: E=Sophos;i="6.19,234,1754982000"; d="scan'208";a="74166798"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2025 08:36:33 -0700
X-CSE-ConnectionGUID: tXqDh+8vRR6IGw+VYV/0mA==
X-CSE-MsgGUID: ObRj7CZ5SS+rHdqBlb3J4w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,234,1754982000"; d="scan'208";a="181696282"
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.155])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2025 08:36:31 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Maarten Lankhorst <maarten@lankhorst.se>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>, Jouni
 =?utf-8?Q?H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: Re: [PATCH] drm/{i915,xe}/fbdev: add intel_fbdev_fb_pitch_align()
In-Reply-To: <c7412925-3ea5-4541-9397-0d8c84f747c4@lankhorst.se>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20251015111922.2194539-1-jani.nikula@intel.com>
 <c7412925-3ea5-4541-9397-0d8c84f747c4@lankhorst.se>
Date: Thu, 16 Oct 2025 18:36:28 +0300
Message-ID: <dcf1a7429a0cc7b60cfc315ced367e814a38e45e@intel.com>
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

On Thu, 16 Oct 2025, Maarten Lankhorst <maarten@lankhorst.se> wrote:
> Seems to me like this should be fixed at the xe level, not worked
> around at the display level?

Completely agreed.

> It shouldn't be too hard to look at what's going wrong and fix it at
> the right level instead of not even attempting to look at it.

Who's going to do it? I'm frankly clueless about what's going on, and I
don't have the means to reproduce the issue.

At the same time the bisect points at my commit, so here we are. :/


BR,
Jani.


-- 
Jani Nikula, Intel
