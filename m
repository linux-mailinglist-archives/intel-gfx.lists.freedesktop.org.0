Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 27A7D4EED93
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Apr 2022 14:57:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 721F510E2B8;
	Fri,  1 Apr 2022 12:57:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5E05310E2B8
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Apr 2022 12:57:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648817847; x=1680353847;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=QK1sRolPSwZWZF9NpdB6OIoAUBkmPV/pq03rMcQVuZw=;
 b=DBYi7t3JgFZ9XbaGAHa03RThVF24fcj57ZtP+nDj1Vl2WMJqXxSWuNKs
 ItdqexlY8BZSJDuBPVtoWfTfMJ2LRzly+yJ3OKl0rYmogXVs3oIlsTX2W
 cGCbJWSnm9wqPUSQHmPHwmC72sMZAHYSxN9qshseg80F2n+mxrmnrhwJC
 kIKDeMwdbAEwZpIw9FFii76j2iKYhMTWLNFlYCx54OWkUg00jSFjN0kVL
 Z7Jcp78QruHtR7bYcOEdUNU/+QXAw7lUjQJXe/L0jNCFooBVDZqE0kgS/
 4/ELOAWZ1vTSW+YHOCV8G3QBdli7v9cYXLq+pir+FzZ7YLHau/KGPv59e A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10303"; a="260310199"
X-IronPort-AV: E=Sophos;i="5.90,227,1643702400"; d="scan'208";a="260310199"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2022 05:57:26 -0700
X-IronPort-AV: E=Sophos;i="5.90,227,1643702400"; d="scan'208";a="547792050"
Received: from kohnenth-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.62.214])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2022 05:57:25 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220321195006.775-1-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220321195006.775-1-ville.syrjala@linux.intel.com>
Date: Fri, 01 Apr 2022 15:57:22 +0300
Message-ID: <87y20p6jwt.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 0/3] drm/i915: Random cleanups
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

On Mon, 21 Mar 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Clean up a few random things that caught my eye.

Dunno if this got reviewed and merged already, but anyway, on the
series,

Reviewed-by: Jani Nikula <jani.nikula@intel.com>



>
> Ville Syrj=C3=A4l=C3=A4 (3):
>   drm/i915: Program i830 DPLL FP register later
>   drm/i915: Use drm_connector_attach_hdr_output_metadata_property()
>   drm/i915: Remove dead members from dev_priv
>
>  drivers/gpu/drm/i915/display/intel_display.c | 6 +++---
>  drivers/gpu/drm/i915/display/intel_dp.c      | 8 ++------
>  drivers/gpu/drm/i915/i915_drv.h              | 9 ---------
>  3 files changed, 5 insertions(+), 18 deletions(-)

--=20
Jani Nikula, Intel Open Source Graphics Center
