Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 12B1997C9E3
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Sep 2024 15:14:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A22AF10E6EB;
	Thu, 19 Sep 2024 13:14:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="H8TtET5/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5541110E6E6;
 Thu, 19 Sep 2024 13:14:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726751696; x=1758287696;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=8tb8E/HZJh3lN0tdbYFMometfJxdCwoudWJFkr8QJKk=;
 b=H8TtET5/zTVkaesnHcO5zFYJjQMzX676zQod0+6sNim23sKf5lr2JSLS
 Fk81MZ1Gxxc9/3BULxhpyQLId/JRqe57sxOagYnK+6JM+C2DVfJKq3cJg
 2mNLGMYRLvsjXVKyYCS5zXqYbSz061qXeZGn0xWb4P9eZg4ZKcBQhfimg
 q6BuXZYzihT9mVNQtNVz4f2S6A5nZ5ThpLGm6RrAQyw73eYeXHpn0E9vh
 i+h6WemAxpPhOyDPaKaDUrUJPMM5UlcIiQIUnXHVfWQp+tQj9y9ROWQeM
 F/96an3ep7SV+3l8jTjGedZ7SWWctDvuPQWXsx5KsaD5MH80irjxk1Y1X Q==;
X-CSE-ConnectionGUID: hK9q6xhKSRO2YXbb4L3MMA==
X-CSE-MsgGUID: Ctwqv9ITQQWPy45OOf3vFw==
X-IronPort-AV: E=McAfee;i="6700,10204,11199"; a="29453742"
X-IronPort-AV: E=Sophos;i="6.10,241,1719903600"; d="scan'208";a="29453742"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2024 06:14:42 -0700
X-CSE-ConnectionGUID: qaKruCHQQgyEFqFUhjg6sQ==
X-CSE-MsgGUID: JHWkrYVCSHSnvlqRWz7l7Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,241,1719903600"; d="scan'208";a="93223568"
Received: from jnikula-mobl4.fi.intel.com (HELO localhost) ([10.237.66.160])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2024 06:14:40 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>, Rodrigo
 Vivi <rodrigo.vivi@intel.com>
Cc: Tvrtko Ursulin <tursulin@ursulin.net>, Lucas De Marchi
 <lucas.demarchi@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 1/2] drm/i915/display: remove small micro-optimizations
 in irq handling
In-Reply-To: <ZumWvdwTNqfIZuk6@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240408125445.3227678-1-jani.nikula@intel.com>
 <lh5rutbeu54tjlp2o477nb4xuqyblgjh7nemgecizqrceidabc@hcuihs4fxh6n>
 <875xwfxapf.fsf@intel.com>
 <52605aa7-7067-4ba2-aed8-feeb7aa67032@ursulin.net>
 <877cbaczsk.fsf@intel.com> <ZumL60VMIs2Jf0w7@intel.com>
 <ZumWvdwTNqfIZuk6@intel.com>
Date: Thu, 19 Sep 2024 16:14:37 +0300
Message-ID: <87y13n945e.fsf@intel.com>
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

On Tue, 17 Sep 2024, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> Anyways, IMO plow ahead for now.
> Acked-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Thanks for the ack and review, pushed to din.

BR,
Jani.

--=20
Jani Nikula, Intel
