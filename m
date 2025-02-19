Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 013F5A3C58B
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Feb 2025 17:57:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8B64110E347;
	Wed, 19 Feb 2025 16:57:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MkqJzfvE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DAC8310E347
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Feb 2025 16:57:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739984251; x=1771520251;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=/RYeSUSGRGchsepBdcQqu8et1hGNk8FxiXGS71+UAZA=;
 b=MkqJzfvEOLKvJyQWxf8IjDgFe4zxUlbiCIHsgOG3kymLvrAP7fTdWuYe
 qMIMXPixhac/7YRyrA1Uir0dr4P/6B03F3EaM43M3Ua9DNXKoeruUYfRO
 IHrLe00Fd7K9c/Zp14/M6y3ZXZET9Aq6QFw8tHGKNYeZy6qscoGryotPQ
 075KMQVjGmrqoUiZfDtebD/djsDiwv9FWg8wBUvekfMFkCUGSuqG3c520
 kuxqO3g8MkkNxvDoGojNYbVu99vv32Kro1Bjt8tQWbrBC35SMM+k5l2Ce
 U9+x4fg0T/3k/arC+1V4nzkhX8IcJWDDLGAo13CmnOALoOsrN6RhABOfF Q==;
X-CSE-ConnectionGUID: QKN7XpOpRJOF3Lojijvsag==
X-CSE-MsgGUID: k/HEdOnOSea+1BnWiBt4UA==
X-IronPort-AV: E=McAfee;i="6700,10204,11350"; a="40992057"
X-IronPort-AV: E=Sophos;i="6.13,299,1732608000"; d="scan'208";a="40992057"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Feb 2025 08:57:31 -0800
X-CSE-ConnectionGUID: XU75GCUIRWCQ782BpbIjAQ==
X-CSE-MsgGUID: yI7xEztvTXy6hYySMtNJ6A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,299,1732608000"; d="scan'208";a="114966854"
Received: from dprybysh-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.160])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Feb 2025 08:28:00 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: imre.deak@intel.com, Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: =?utf-8?Q?=E2=9C=97?= i915.CI.Full: failure for drm/i915/dp:
 Fix 128b/132b modeset issues
In-Reply-To: <Z7Xa3z7wdI_b7Fa0@ideak-desk.fi.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250217223828.1166093-1-imre.deak@intel.com>
 <173985337661.3442418.13852246095833779014@b555e5b46a47>
 <Z7Xa3z7wdI_b7Fa0@ideak-desk.fi.intel.com>
Date: Wed, 19 Feb 2025 18:27:44 +0200
Message-ID: <87tt8pnblr.fsf@intel.com>
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

On Wed, 19 Feb 2025, Imre Deak <imre.deak@intel.com> wrote:
> Thanks for the ack/review, patchset pushed to drm-intel-fixes, adding
> the bspec references to patch 1.

Uh, so you did, but committers aren't supposed to apply patches directly
to drm-intel-fixes, only drm-intel-next. Maintainers cherry-pick to
fixes.

Rodrigo's maintaining fixes now. Would it be the simplest to just remove
the commits from fixes, apply to drm-intel-next instead, and then
cherry-pick?


BR,
Jani.


-- 
Jani Nikula, Intel
