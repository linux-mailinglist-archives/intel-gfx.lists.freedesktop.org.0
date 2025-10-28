Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BF4DC16D5E
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Oct 2025 21:59:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 876D210E1B1;
	Tue, 28 Oct 2025 20:59:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KUfDP0Oq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 74CDD10E1B1;
 Tue, 28 Oct 2025 20:59:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761685144; x=1793221144;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=EY+uTU9djT95NKQ7wL0J3k16d5r1sh4TMJ/WihO6kvk=;
 b=KUfDP0OqcMjD5zKQ1JdOs/0oopbxHWhKVZRSX2ypUekbykObe/IdTXb2
 yIdroEkKNda7T50tM0Ox7BtK/ywZCQwGl5KyNAhsZqUuq3d2SImqtPZy5
 kVniSggIlNfxGDXFhjrTJqKUav8TDtaxPsVIIxI7DjkJU8b+Pn79eNkMN
 YnRAhnzrAIJXQx3/pXa5yMybSIW+7J18cFRZXcbKmaGko1v2WTWGWEMeb
 V3FF3H0gmGL0tXR5SZt4N3MUTfuzKctaTwqLutbCgeXK+6pGU81/5fPCy
 fv4oikYbt2VLPlZjOKSfNoGiOp1fJsT/kxNGrPsCOi8FiJQpKVg4Cqy+j w==;
X-CSE-ConnectionGUID: hrCvhdpKTemU+f7nJplfIQ==
X-CSE-MsgGUID: rPFPdV/NQv2ZbrmjpytZhQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="66412863"
X-IronPort-AV: E=Sophos;i="6.19,262,1754982000"; d="scan'208";a="66412863"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2025 13:59:04 -0700
X-CSE-ConnectionGUID: 2h5xV0I/RWq/5lNG/UPWAA==
X-CSE-MsgGUID: 4nouBB7MQ32ynLZ+7oaA3Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,262,1754982000"; d="scan'208";a="222681206"
Received: from egrumbac-mobl6.ger.corp.intel.com (HELO localhost)
 ([10.245.244.169])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2025 13:59:02 -0700
Date: Tue, 28 Oct 2025 22:58:59 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Juha-Pekka =?iso-8859-1?Q?Heikkil=E4?= <juhapekka.heikkila@gmail.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 0/8] drm/i915: Some universal plane fixes and cleanups
Message-ID: <aQEuk8vuRdYV6ZRF@intel.com>
References: <20251009211313.30234-1-ville.syrjala@linux.intel.com>
 <CAJ=qYWTASBWWFCDpL4pWkjyMhN9ZUCqEHYdb+hBy8bmXMhLBLQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAJ=qYWTASBWWFCDpL4pWkjyMhN9ZUCqEHYdb+hBy8bmXMhLBLQ@mail.gmail.com>
X-Patchwork-Hint: comment
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

On Tue, Oct 28, 2025 at 11:36:18AM +0200, Juha-Pekka Heikkilä wrote:
> Set is
> 
> Reviewed-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
> 
> Only thing I was wondering about is that cbcr handling with that plane
> min width but I assume you've tested it works as we're not getting
> much of ci results for these.

The actual limits aren't changing here so not much to test in that
sense. I've never actually tested to see what happens if the plane is
below that w/a min width, but IIRC from reading the hsd the problem
was more along the linds of extra power draw rather than underrun/etc.

> 
> /Juha-Pekka
> 
> On Fri, Oct 10, 2025 at 12:13 AM Ville Syrjala
> <ville.syrjala@linux.intel.com> wrote:
> >
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >
> > Fix up some of the universal plane min size handling, and do
> > a bit of random cleanup.
> >
> > Ville Syrjälä (8):
> >   drm/i915: Rewrite icl_min_plane_width()
> >   drm/i915: Drop the min plane width w/a adl+
> >   drm/i915: Implement .min_plane_width() for PTL+
> >   drm/i915: Start checking plane min size for the chroma plane
> >   drm/i915: Introduce intel_plane_min_height()
> >   drm/i915: Remove pointless crtc hw.enable check
> >   drm/i915: Extract glk_plane_has_planar()
> >   drm/i915: Unify the logic in {skl,glk}_plane_has_*()
> >
> >  .../drm/i915/display/skl_universal_plane.c    | 94 +++++++++----------
> >  1 file changed, 44 insertions(+), 50 deletions(-)
> >
> > --
> > 2.49.1
> >

-- 
Ville Syrjälä
Intel
