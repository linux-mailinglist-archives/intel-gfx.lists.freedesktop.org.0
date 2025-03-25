Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 45164A6EC73
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Mar 2025 10:27:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C6C6A10E52D;
	Tue, 25 Mar 2025 09:27:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="C4QeKt1z";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DB20B10E52C;
 Tue, 25 Mar 2025 09:27:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742894829; x=1774430829;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=/5gZ5VxCL8g0RJz4ODGPdjEBgLvzUrfvsCoCS39Cy1g=;
 b=C4QeKt1z7JxAyVOq5ec/Z7NCRiV9rnrucr4lvu0zz4XeICkhirgI3OQp
 EZ6am1dkneRA/+y0iQq+1VqPt7OA6O5knLOqzWBIGrXGYj+Y4ti3D7Nb9
 Moe9w1dFoPNZmsaQi4mbWKQMXsj1NGJeV+6Kvam04uibnHcV5R8BjHwD3
 6XjQKi2h7zu2YK+HLjGqPXh5FKiXpB77d4XzuJi/IGLvrZuXbXSwP1RKx
 Nep4feUXmtCwO5oUoWI4PJpJXM/NiT/plwBCLqHzcSOb3ZP/eYCa8xvY7
 QiB3a06YurQdZaPz2rKxxsQlukauJmb4l0C2i/CdLGUAcbFJgrsdL+e1I Q==;
X-CSE-ConnectionGUID: 3PYwjuliQe6QnlFxFUDFiA==
X-CSE-MsgGUID: wEb8eDlVTdiN61y/2/PQXg==
X-IronPort-AV: E=McAfee;i="6700,10204,11383"; a="31734446"
X-IronPort-AV: E=Sophos;i="6.14,274,1736841600"; d="scan'208";a="31734446"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2025 02:27:08 -0700
X-CSE-ConnectionGUID: H/1YEbWfQ2C3ddpS6no4gQ==
X-CSE-MsgGUID: 5o5coKVnSKWUczk4ACLQ1w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,274,1736841600"; d="scan'208";a="129417187"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.134])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2025 02:27:07 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Imre Deak <imre.deak@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Cc: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH v2 0/2] drm/i915: Fix DP MST DB message timeouts due to
 PPS delays
In-Reply-To: <20250324180145.142884-1-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250324180145.142884-1-imre.deak@intel.com>
Date: Tue, 25 Mar 2025 11:27:04 +0200
Message-ID: <8734f1a2af.fsf@intel.com>
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

On Mon, 24 Mar 2025, Imre Deak <imre.deak@intel.com> wrote:
> This is v2 of [1], dropping the change to lock PPS and enable VDD from a
> separate function, as requested by Jani.

Thanks for doing this!

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Cc: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> [1] https://lore.kernel.org/all/20250321145626.94101-1-imre.deak@intel.com
>
> Imre Deak (2):
>   drm/i915/pps: Let calling intel_pps_vdd_{on,off}_unlocked() w/o PPS
>     lock held
>   drm/i915/dp_mst: Fix side-band message timeouts due to long PPS delays
>
>  drivers/gpu/drm/i915/display/intel_dp_aux.c | 21 ++++++++++++++++++---
>  drivers/gpu/drm/i915/display/intel_pps.c    |  8 ++++----
>  2 files changed, 22 insertions(+), 7 deletions(-)

--=20
Jani Nikula, Intel
