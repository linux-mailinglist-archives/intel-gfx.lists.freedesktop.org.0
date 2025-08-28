Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 79308B398C6
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Aug 2025 11:51:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D545910E976;
	Thu, 28 Aug 2025 09:51:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZDC1/eHA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1F7B910E976;
 Thu, 28 Aug 2025 09:51:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756374703; x=1787910703;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=KBVgzYFp4o1xKDTa2u5bq3VPLI9X1xG7F0PGV3+qckQ=;
 b=ZDC1/eHA2Ynap7vVdPZTquB/rVhQ+BoEUJFrBCjzH4HPJbT+dgnmpPxC
 mZlYYe3M4i3LxYSSIC0haFbX4YsKcV70nhX6yTS1czGqtPZ70t/3UHcfI
 DgyYJTUCHrpalVfnmOIpvYNp/plq7jxSJf0oLQnaZ9lYF2bROjjLeVQcQ
 dvbt7kH2Csph2RJprtJ63OZuRGQCqLLv/qxFWpnQNt6O2Va9Z5LUjN0N3
 5Ju9hPt1KEB7Vc7bgjLxp11WalD9ZviOOQW9iZJPk5B2LDax6SCe46z51
 JeXERqWUNc8GyJCV8fP3/t66TSiD85HlLisW7x2tk0WLqj8pqSh14Q0j0 A==;
X-CSE-ConnectionGUID: cpsJLDdhT9CCTs6eXnLAIQ==
X-CSE-MsgGUID: v4ozUD1XSAa6st99bLvMRQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11535"; a="69231698"
X-IronPort-AV: E=Sophos;i="6.18,217,1751266800"; d="scan'208";a="69231698"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2025 02:51:43 -0700
X-CSE-ConnectionGUID: RDkHFOboSUKLvNYzjmhKPA==
X-CSE-MsgGUID: 1JlfaReGS9O9kIb+GM7EYQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,217,1751266800"; d="scan'208";a="170877253"
Received: from carterle-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.10])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2025 02:51:38 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>, linux-kernel@vger.kernel.org
Cc: Lucas De Marchi <lucas.demarchi@intel.com>, Dibin Moolakadan
 Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>, Imre Deak
 <imre.deak@intel.com>, David Laight <david.laight.linux@gmail.com>, Geert
 Uytterhoeven <geert+renesas@glider.be>, Matt Wagantall
 <mattw@codeaurora.org>, Dejin Zheng <zhengdejin5@gmail.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org, Ville
 =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>, Simona Vetter
 <simona.vetter@ffwll.ch>
Subject: Re: [PATCH v2 1/3] iopoll: Generalize read_poll_timeout() into
 poll_timeout_us()
In-Reply-To: <20250826121859.15497-1-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250826121859.15497-1-ville.syrjala@linux.intel.com>
Date: Thu, 28 Aug 2025 12:51:35 +0300
Message-ID: <c34ce332183d24ed29ed23852238fd5ca948d4f1@intel.com>
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

On Tue, 26 Aug 2025, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> While read_poll_timeout() & co. were originally introduced just
> for simple I/O usage scenarios they have since been generalized to
> be useful in more cases.
>
> However the interface is very cumbersome to use in the general case.
> Attempt to make it more flexible by combining the 'op', 'var' and
> 'args' parameter into just a single 'op' that the caller can fully
> specify.

Thanks for the patches!

Since there was no opposition now or the last time these were posted
[1], iopoll.h is not in MAINTAINERS, and the previous changes to the
file have gone in through various trees, I've gone ahead and merged the
lot to drm-intel-next with Simona's IRC ack.

I'll be rebasing and posting my follow-up i915 changes on top of this
shortly.


BR,
Jani.


[1] https://lore.kernel.org/r/20250702223439.19752-1-ville.syrjala@linux.in=
tel.com


--=20
Jani Nikula, Intel
