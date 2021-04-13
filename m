Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E69C35DC17
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Apr 2021 12:03:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6DDA189BAF;
	Tue, 13 Apr 2021 10:03:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9ACEB89BAF
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Apr 2021 10:03:17 +0000 (UTC)
IronPort-SDR: +0+hmUxVweDf4dni0bN6fVF/6NxM3RsV1US6O7/pjc2BnKNq6P+1vLyNVe2tetZ4uZTnR4eSct
 pkxlzbmTaKgg==
X-IronPort-AV: E=McAfee;i="6200,9189,9952"; a="191192769"
X-IronPort-AV: E=Sophos;i="5.82,219,1613462400"; d="scan'208";a="191192769"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2021 03:03:16 -0700
IronPort-SDR: i0pj8U4bIxlZ2UTdOSZ8tHQFgL6KdPB0rqqm+793xKDX2/5MPBY/oNx9MIEodI99RsJ7w5iLpy
 hNqTUyHzN1qQ==
X-IronPort-AV: E=Sophos;i="5.82,219,1613462400"; d="scan'208";a="424185312"
Received: from alinapar-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.249.36.253])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2021 03:03:13 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20210413051002.92589-1-lucas.demarchi@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210413051002.92589-1-lucas.demarchi@intel.com>
Date: Tue, 13 Apr 2021 13:03:11 +0300
Message-ID: <87a6q2h57k.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2 00/12] drm/i915: Extend GEN renames to
 the rest of the driver
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 12 Apr 2021, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
> Like was done for the display part that parted ways with INTEL_GEN(),
> replacing with DISPLAY_VER(), do a similar conversion for the rest of
> the driver.
>
> v1.1: Remove .ko that was incorrectly added as part of patch 11, making it
> very big and not going through the mailing list. Sorry for those in CC
> who received it.
>
> v2:
>   - Add "drm/i915/display: rename display version macros" to rename
>     macro and repurpose it: s/IS_DISPLAY_RANGE/IS_DISPLAY_VER/ and convert
>     the current users of IS_DISPLAY_VER to use direct comparison
>   - Group display patches to easily apply independently

I like the direction here. Even as the version checks diversify, we
manage to simplify and reduce the macros.

I think we're going to have to queueu this via a topic branch, and merge
that to both drm-intel-next and drm-intel-gt-next. The next time the
branches can sync up is just too far away at this point, and the
conflicts may be really nasty to solve later.

That does mean having to solve the conflict with 70bfb30743d5
("drm/i915/display: Eliminate IS_GEN9_{BC,LP}") which is in din but not
dign. The topic branch would be based on:

$ git merge-base drm-intel/drm-intel-next drm-intel/drm-intel-gt-next
9c0fed84d5750e1eea6c664e073ffa2534a17743

There are two (crappy?) ideas to make that easier. 1) revert
70bfb30743d5 from din and add it to the topic branch instead, 2) don't
revert it but cherry-pick it to the topic branch also.

Cc: Joonas and Daniel for their input on this as well.


BR,
Jani.

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
