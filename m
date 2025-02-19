Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A7EBBA3C688
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Feb 2025 18:48:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EFBA310E0C8;
	Wed, 19 Feb 2025 17:48:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="L4CmpVi5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C10BB10E0C8
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Feb 2025 17:48:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739987302; x=1771523302;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=41wZNE6Ja4wxv9TLuRxUNQprTm8YbA5gCGH9Pz4Speg=;
 b=L4CmpVi5kSsUdhsSZm7kmAvjENCWDrdCJaI9zWRqS5Wuf/aD3Cv2vCYO
 jEqDczFHZj/Tw6XArv/wcC3dUzsICqGWV9KZIU1cMJF2wLQbYjJBJtN6A
 h86sfP+IUVooPrhOb1Xlrlh84HD4ePn/zTubhFt9rTZJ80fy9aWrEQmDO
 UuxnWgqcPyL0RVmurpHbFmllfdlwxpcQnr79Mk4/LkSa8T5aLWTE2HA/7
 vgYszynTt9pa0WmZMUcfF8kIHCUQrwoSCtL+Gbfr5IpLG1l64KWIWwio4
 imF0oEC3mN68QlhF9m3kikJEl5KVfGv+MumFQukAYz0pTJGRAqfWZ+Mo6 Q==;
X-CSE-ConnectionGUID: 46MIaagxTE6Krg2hF1y5Yg==
X-CSE-MsgGUID: 8GksEGRMSgatCK5XXZmurQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11314"; a="40945602"
X-IronPort-AV: E=Sophos;i="6.12,310,1728975600"; d="scan'208";a="40945602"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Feb 2025 09:48:22 -0800
X-CSE-ConnectionGUID: CMEW/qBCSbaf9OL8MZlfAw==
X-CSE-MsgGUID: cCRBzBMBRfe+8EORx3l7Jw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,299,1732608000"; d="scan'208";a="114721497"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Feb 2025 09:48:20 -0800
Date: Wed, 19 Feb 2025 19:49:10 +0200
From: Imre Deak <imre.deak@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
Subject: Re: =?utf-8?B?4pyXIGk5MTUuQ0kuRnVsbA==?= =?utf-8?Q?=3A?= failure for
 drm/i915/dp: Fix 128b/132b modeset issues
Message-ID: <Z7YZliQpcNQyBVD7@ideak-desk.fi.intel.com>
References: <20250217223828.1166093-1-imre.deak@intel.com>
 <173985337661.3442418.13852246095833779014@b555e5b46a47>
 <Z7Xa3z7wdI_b7Fa0@ideak-desk.fi.intel.com>
 <87tt8pnblr.fsf@intel.com> <Z7YQSHKtJ5yk74B-@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Z7YQSHKtJ5yk74B-@intel.com>
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

On Wed, Feb 19, 2025 at 12:09:28PM -0500, Rodrigo Vivi wrote:
> On Wed, Feb 19, 2025 at 06:27:44PM +0200, Jani Nikula wrote:
> > On Wed, 19 Feb 2025, Imre Deak <imre.deak@intel.com> wrote:
> > > Thanks for the ack/review, patchset pushed to drm-intel-fixes, adding
> > > the bspec references to patch 1.
> > 
> > Uh, so you did, but committers aren't supposed to apply patches directly
> > to drm-intel-fixes, only drm-intel-next. Maintainers cherry-pick to
> > fixes.
> > 
> > Rodrigo's maintaining fixes now. Would it be the simplest to just remove
> > the commits from fixes, apply to drm-intel-next instead, and then
> > cherry-pick?
> 
> Yeap, I'm going to do exactly this.
> Thanks for the heads up.

Arg, sorry for that and thanks for fixing it up. (I probably
misremembered this, since I commited recently to drm-misc-fixes, which
is the correct way there.)
