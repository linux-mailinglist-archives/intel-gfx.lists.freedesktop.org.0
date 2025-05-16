Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A9C9BAB9B76
	for <lists+intel-gfx@lfdr.de>; Fri, 16 May 2025 13:49:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3F54410E071;
	Fri, 16 May 2025 11:49:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LcZK6geW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E27CF10E071;
 Fri, 16 May 2025 11:49:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747396172; x=1778932172;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=57vnmoNMK3MYdRzuPeg7/si6zEZ/QxgnqBO9YPeeT9w=;
 b=LcZK6geWO9bjYFFmWtAE3ajqmXQz03ZMHxPstNOqq9KXCWlR1vGCBjtM
 XATDG59miXret+pFgijSbzbpcXTOphzBiFgBdhYh9nq1dwU6Xr7fl8qDS
 bhWFULznW4bFijb9xgqdHmwltDEbT9S5no5CK/0CHpwY8j62uiA3Z8PMD
 iI17Pv4jXscj7W3AsMycJZXi576K0IuOJc9bUX9tFjENC0LPvrI72eIV4
 5pCjYMEDlpTUgXzWdozJFjNPEn0YUH8MAAFvV26KEMGx53QEngZBC+crk
 oGWqBbEsBLRNVj18/mC59oGoJlg5iilTR/gsW7u9o+SiHnD+QWXhzWjPl Q==;
X-CSE-ConnectionGUID: lb8cAdkySwaTLqDeniy9Fw==
X-CSE-MsgGUID: b0DIwrmFQVqKZHNI1Jyo0w==
X-IronPort-AV: E=McAfee;i="6700,10204,11434"; a="60756500"
X-IronPort-AV: E=Sophos;i="6.15,293,1739865600"; d="scan'208";a="60756500"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2025 04:48:48 -0700
X-CSE-ConnectionGUID: uaIy6ghcQmGLRD0EHSWYhg==
X-CSE-MsgGUID: J44L2smdRFK41ndqIlGlyA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,293,1739865600"; d="scan'208";a="143915418"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.245.133])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2025 04:48:46 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 07/12] drm/i915/flipq: Provide the nuts and bolts code
 for flip queue
In-Reply-To: <20250516113408.11689-8-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250516113408.11689-1-ville.syrjala@linux.intel.com>
 <20250516113408.11689-8-ville.syrjala@linux.intel.com>
Date: Fri, 16 May 2025 14:48:43 +0300
Message-ID: <87ikm0wzc4.fsf@intel.com>
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

On Fri, 16 May 2025, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> diff --git a/drivers/gpu/drm/i915/display/intel_flipq.c b/drivers/gpu/drm=
/i915/display/intel_flipq.c
> new file mode 100644
> index 000000000000..8677929b7ece
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/display/intel_flipq.c
> @@ -0,0 +1,306 @@
> +// SPDX-License-Identifier: MIT
> +/*
> + * Copyright =C2=A9 2025 Intel Corporation
> + */
> +

I'd really appreciate adding a high level comment about what flip queue
is, and maybe some words about how it's implemented, right around
here. Doesn't need to be a special DOC comment, nor does it need to be
exhaustive, and can come as a follow-up patch.

BR,
Jani.


--=20
Jani Nikula, Intel
