Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F31BA81FD8
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Apr 2025 10:29:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E32510E805;
	Wed,  9 Apr 2025 08:29:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="W3+FVNa8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8C95E10E047;
 Wed,  9 Apr 2025 08:29:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744187376; x=1775723376;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=UKt5tRY7ThNljbQkWWwd+5INIze53uv33QlxVAp3WFE=;
 b=W3+FVNa8G2NJFWeua4f5q8rX7uOqnRz/7hldTWT2qkMmLBILXptlzSYV
 Lx8J5e9Ic93N4EPayXkJXthJIhs3WuDwYJuFwKNIWCCgx/kfNZKWvm7x0
 jhsHQJaktD39zJHs1uCO5TplO0+p48ZqXCeDY5WrYZl0l5a1Lg/8c1VQy
 lvNkeU2sPl/1PPb8e1B6CZGE1TTdb1EU0zxjbdT4xlwutRfLEdk/Nnk2h
 +CltCjJxg5aajIVdJ5A2iZaWBjlybIRvsuG0/ahkgZpbc3I9Wlyoq6YXC
 2kJ9n0MLAycTjzhAiD1UYspGyDMVPNRT1QlkCvzCbPOeUHKBCEellD6ZH g==;
X-CSE-ConnectionGUID: N+xmTKqxRu6nXd9VhqRRlA==
X-CSE-MsgGUID: 1KTABw7bRYy9f/S8Xh+H4g==
X-IronPort-AV: E=McAfee;i="6700,10204,11397"; a="45366108"
X-IronPort-AV: E=Sophos;i="6.15,200,1739865600"; d="scan'208";a="45366108"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2025 01:29:36 -0700
X-CSE-ConnectionGUID: raNhD/QNT3iaGqqZrCnXNQ==
X-CSE-MsgGUID: OgaSgtclSfKEt1dO6q0k3w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,200,1739865600"; d="scan'208";a="129061788"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.201])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2025 01:29:33 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 08/10] drm/i915/hdmi: Use an intel_connector pointer
 everywhere
In-Reply-To: <20250408214342.1953197-9-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250408214342.1953197-1-imre.deak@intel.com>
 <20250408214342.1953197-9-imre.deak@intel.com>
Date: Wed, 09 Apr 2025 11:29:30 +0300
Message-ID: <87tt6xwxed.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Wed, 09 Apr 2025, Imre Deak <imre.deak@intel.com> wrote:
> Following the convention, convert intel_hdmi.c to use an intel_connector
> pointer everywhere, calling this pointer connector. If the intel
> connector must be casted from a drm_connector, call this pointer
> _connector and use this pointer only for the casting.
>
> Signed-off-by: Imre Deak <imre.deak@intel.com>

> @@ -2076,14 +2081,16 @@ bool intel_hdmi_bpc_possible(const struct intel_crtc_state *crtc_state,
>  {
>  	struct drm_atomic_state *state = crtc_state->uapi.state;
>  	struct drm_connector_state *connector_state;
> -	struct drm_connector *connector;
> +	struct drm_connector *_connector;
>  	int i;
>  
> -	for_each_new_connector_in_state(state, connector, connector_state, i) {
> +	for_each_new_connector_in_state(state, _connector, connector_state, i) {

Can we use for_each_new_intel_connector_in_state() here?

BR,
Jani.


-- 
Jani Nikula, Intel
