Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 60375A5D9E4
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Mar 2025 10:52:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EA3F610E73F;
	Wed, 12 Mar 2025 09:52:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="htIlOCc+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6FCDA10E73D;
 Wed, 12 Mar 2025 09:52:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741773159; x=1773309159;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=IEMUFVhtZ9q95rrSjAlmnpkMWysfXzaHuu5IJ05A5R4=;
 b=htIlOCc+cpNLqe0Ev8RuCgGZ2HLL3ruWI/6a9OieB0Zd564CzFBXygcj
 tWwkZb+mZ5r9Nh+xfey9d3ewFuHdLhUYVBhDzICnAydROh4PD+GqYh9ft
 nTmwlA52/8n7vmK77Z6QuznqkzyTfnzLI8BU2Z5MkWXZ3LhRTvJeoBc3Q
 N4EhXjBXmbB8nikyblY8bAQS+YcmlQuN5rJu52wQI80VE5M6gpvQ0GTae
 DvcPGekX8FdzrNEnmUpdp5f90EtgkTo+30yAvD+ZnMXsjlRhipxoPhkHW
 PgG2xHhPVsAS0PJ+mM/e5KKyXjsGPPQsdP0N4/gn8QbDIY7THQ5YZXQX3 w==;
X-CSE-ConnectionGUID: iDBzJausTwODnahH7CJvQg==
X-CSE-MsgGUID: wGDBf7jNT5yYl+R4EWg02g==
X-IronPort-AV: E=McAfee;i="6700,10204,11370"; a="42719132"
X-IronPort-AV: E=Sophos;i="6.14,241,1736841600"; d="scan'208";a="42719132"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2025 02:52:38 -0700
X-CSE-ConnectionGUID: 0FO8vmviT9q49WT1d8NH7g==
X-CSE-MsgGUID: uU4yokowR4iLjTURcngeYw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,241,1736841600"; d="scan'208";a="125231335"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.23])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2025 02:52:36 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 7/9] drm/i915/irq: convert intel_display_irq.[ch]
 interfaces to struct intel_display
In-Reply-To: <Z9CL3WH695G-j1w3@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1741715981.git.jani.nikula@intel.com>
 <df68cf79674a31bb55b641e29976052d380274a4.1741715981.git.jani.nikula@intel.com>
 <Z9CL3WH695G-j1w3@intel.com>
Date: Wed, 12 Mar 2025 11:52:33 +0200
Message-ID: <87r032fue6.fsf@intel.com>
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

On Tue, 11 Mar 2025, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Tue, Mar 11, 2025 at 08:00:41PM +0200, Jani Nikula wrote:
>>  static void
>>  ivb_primary_enable_flip_done(struct intel_plane *plane)
>>  {
>> +	struct intel_display *display =3D to_intel_display(plane);
>>  	struct drm_i915_private *i915 =3D to_i915(plane->base.dev);
>>=20=20
>>  	spin_lock_irq(&i915->irq_lock);
>> -	ilk_enable_display_irq(i915, DE_PLANE_FLIP_DONE_IVB(plane->i9xx_plane)=
);
>> +	ilk_enable_display_irq(display, DE_PLANE_FLIP_DONE_IVB(plane->i9xx_pla=
ne));
>>  	spin_unlock_irq(&i915->irq_lock);
>
> I was pondering if we could just suck the lock into these
> guys. But at least the fifo underrun reporting code is using
> some of these things and there there the lock is taken
> further out. So sadly not as trivial as I was hoping.

The whole i915->irq_lock (*) is a looming problem for display separation
from i915/xe core.

How do you abstract a spin lock? Is it okay to pass a spinlock_t * from
i915 core code to display, which would then store this pointer and use
it locally?

Wrapping it in a pair of function calls certainly sucks in a lot of
ways.


BR,
Jani.



*) xe->irq.lock on xe, with an ugly #define irq_lock irq.lock

--=20
Jani Nikula, Intel
