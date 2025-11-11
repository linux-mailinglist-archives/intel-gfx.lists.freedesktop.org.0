Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2291BC4C234
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Nov 2025 08:39:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E4A3E10E4F7;
	Tue, 11 Nov 2025 07:39:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="O4oUGYnG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9B83810E4F5;
 Tue, 11 Nov 2025 07:39:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762846760; x=1794382760;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=Dz/71WuzknrAYPLrJArYMfAy5l8TTtBrOYXlp+0qQGo=;
 b=O4oUGYnGAKWI/R8Xng0E/q7zT+KvRyQXui4IOB4ORiAwPW+dsE57AP9l
 rXyX0HH90k9kjtIvsXsbVeQqbsQ2VlaYCYu2xOwsBzqRHRM3e1cPyr2o6
 P323hnjI8+vu6HM6kTUY1w5KSjqqy49FarYU61NVXsvULcNvm0vP+0d9p
 bgTQlGkKXG7q7zxj9812uw0rwp7A/1OUqy1uv5VCYzD6OxLT9f4AyZqiy
 vRRm6w6p1xb9nCjhCKQV1IHghtdqimV9XpFgWDKlEZ+/scs2KubKjaN5e
 5CK1whBDyKhmHH2ihShuHCLRjzOiJST+YRVXum8ZjHlezXAGuqYG4RRM3 Q==;
X-CSE-ConnectionGUID: v/vRGhgFSdqJoBRPvNNnoA==
X-CSE-MsgGUID: MESU60dWTiiFHqeboyShrA==
X-IronPort-AV: E=McAfee;i="6800,10657,11609"; a="90374817"
X-IronPort-AV: E=Sophos;i="6.19,296,1754982000"; d="scan'208";a="90374817"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2025 23:39:19 -0800
X-CSE-ConnectionGUID: 1z49sreIRnG/j4pGBsbIhw==
X-CSE-MsgGUID: aFwt1QBOTvGSKd5UItaAGA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,296,1754982000"; d="scan'208";a="188733594"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.239])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2025 23:39:18 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 1/4] drm/{i915,xe}/display: move irq calls to parent
 interface
In-Reply-To: <aRJLn_9QFUdbkvgV@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1762803004.git.jani.nikula@intel.com>
 <9196bbef7c56ae3f0cc06d96ba5caa7eedd21344.1762803004.git.jani.nikula@intel.com>
 <aRJLn_9QFUdbkvgV@intel.com>
Date: Tue, 11 Nov 2025 09:39:15 +0200
Message-ID: <ee5830da79fe36f4e638b008c0e23fa15fabacce@intel.com>
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

On Mon, 10 Nov 2025, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Mon, Nov 10, 2025 at 09:31:36PM +0200, Jani Nikula wrote:
>> @@ -146,7 +145,7 @@ void ilk_update_display_irq(struct intel_display *di=
splay,
>>  	new_val |=3D (~enabled_irq_mask & interrupt_mask);
>>=20=20
>>  	if (new_val !=3D display->irq.ilk_de_imr_mask &&
>> -	    !drm_WARN_ON(display->drm, !intel_irqs_enabled(dev_priv))) {
>> +	    !drm_WARN_ON(display->drm, !display->parent->irq->enabled(display-=
>drm))) {
>
> Can't we keep intel_irqs_enabled()/etc. as wrapper functions instead of
> open coding all that pointer chasing everywhere?

I opted for a compromise in v2, keeping the static wrappers inside
intel_display_irq.c, the most common caller of the interface, and
pointer chasing everywhere else.

I'm still a bit undecided how to deal with this in general. Currently
intel_display_rpm.c wraps the calls for rpm. But should we have
dedicated file(s) for the wrappers, with uniform naming conventions for
both the files and the wrappers? And do they *all* need a wrapper, even
when there's just one caller?

BR,
Jani.


--=20
Jani Nikula, Intel
