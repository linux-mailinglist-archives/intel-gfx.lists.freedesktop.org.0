Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F1F0B4068A
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Sep 2025 16:21:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A93C10E752;
	Tue,  2 Sep 2025 14:21:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fY9zMsv1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8C3F910E751;
 Tue,  2 Sep 2025 14:21:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756822899; x=1788358899;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=FDUUAA7bY2CUCs8cKXrs+PJtIOOZOo9zbomEr6pQgaw=;
 b=fY9zMsv1meFkSpwouAE0yE9R7jsiAb1qPn9JqN3uuOQBIGZz1ZfAxsyc
 meuF90lwpjYkRlb0YSh/3Rtzmwlv2Wrg8NVVWxlqvVdflb/1lg+IlX42p
 F9do/49TX/K35ozO3YG0Cgg25tzVZ/D9PpqQXA+J3CvZomyZlVjqLef7I
 +LBrHCzGeNZh9pxAwD3YLkgpe1wQICrnxZ0GU7nqZJXhv2l6vf/3xvgFl
 9ocEr89p1m4bPiN4Bt9MWvq9L805ioit3oGAHYupRhgD+LO5WBdm24RAU
 PyfvF9Bck68FCYy3nHhwdMIvOzEAut88v5jaPNNhPyMtB2pc4p0ZpmhrO w==;
X-CSE-ConnectionGUID: QRaDWtSWRE+x30IqgLWoCA==
X-CSE-MsgGUID: LnZvzm35SdCIWq1lNrOgBA==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="81681851"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="81681851"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2025 07:21:39 -0700
X-CSE-ConnectionGUID: aOLRbmUlRKSELGGncQ08Dg==
X-CSE-MsgGUID: kvQnG54yS+exhgCAoRXGsA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,230,1751266800"; d="scan'208";a="208482223"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.193])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2025 07:21:38 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 5/8] drm/i915/dram: Move 16Gb DIMM detection fully to
 the skl/icl codepaths
In-Reply-To: <aLb8z_qvltv07_wp@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250902133113.18778-1-ville.syrjala@linux.intel.com>
 <20250902133113.18778-6-ville.syrjala@linux.intel.com>
 <234b7892c94b7974e2281812825c85ae56b50aac@intel.com>
 <aLb8z_qvltv07_wp@intel.com>
Date: Tue, 02 Sep 2025 17:21:34 +0300
Message-ID: <b7de8deb14a992b486a0a8060d66295bc008e9a3@intel.com>
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

On Tue, 02 Sep 2025, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> Currently we don't seem to allocate dram_info at all for dg2. So we
> need some protection there to avoid oopsing. But I think I'll be
> changing that to explictily check for the skl/icl platforms instead
> since those are the only ones that need the w/a.

Right, forgot about that!

BR,
Jani.


--=20
Jani Nikula, Intel
