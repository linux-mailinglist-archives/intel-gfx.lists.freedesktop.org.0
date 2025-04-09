Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C2D3A81FB2
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Apr 2025 10:26:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E463910E80C;
	Wed,  9 Apr 2025 08:26:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="clvJh3aq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B711210E80B;
 Wed,  9 Apr 2025 08:26:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744187212; x=1775723212;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=mhs6n4Jbdg/HQ+yaYc/f9MnfYaklD9RT6xLMNMNTMhY=;
 b=clvJh3aqSLypj4uu1p78ykHEESPykhZv8ghMl/X6wCVZSrpM5pqL7Gd/
 IYwi6cxIoMi4gf3s1B8Oe11RN+xURN3gMR2TH4HEBl3DSnfwvNB7UeFvl
 egVpUQY1FtekuqR7RWN49p+c46bshaz6tfLCewzjaisjiKf7OcLNJRSKP
 jlMPEMF9bdxignKPJo9g2UGP/gOvk0LPpp+fQifpjzd+hwL0zlqgW9yIt
 h2bs7sW/q+CPoHeSioHsfmkippc/5OonC68AzeeWeAr5h+55Wh+a5ndnQ
 mmB0njrqd64iX7fXS6otpEeD2TuzE+gThBlUd3CxUonPWRdsxI4g3nHq0 w==;
X-CSE-ConnectionGUID: S8sJDvonQEadd7rX91XQ2A==
X-CSE-MsgGUID: NLy7ZIY7QMeU0262iJcOUQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11397"; a="48353827"
X-IronPort-AV: E=Sophos;i="6.15,200,1739865600"; d="scan'208";a="48353827"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2025 01:26:51 -0700
X-CSE-ConnectionGUID: lMJFwvFQRj2UWmdIMUvIQg==
X-CSE-MsgGUID: TcSKDbGvSmyvYL4vexjixA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,200,1739865600"; d="scan'208";a="133728293"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.201])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2025 01:26:49 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 07/10] drm/i915/dp: Use an intel_connector pointer
 everywhere
In-Reply-To: <20250408214342.1953197-8-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250408214342.1953197-1-imre.deak@intel.com>
 <20250408214342.1953197-8-imre.deak@intel.com>
Date: Wed, 09 Apr 2025 11:26:46 +0300
Message-ID: <87wmbtwxix.fsf@intel.com>
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
> Following the convention, convert intel_dp.c to use an intel_connector
> pointer everywhere, calling this pointer connector. If the intel
> connector must be casted from a drm_connector, call this pointer
> _connector and use this pointer only for the casting.
>
> Signed-off-by: Imre Deak <imre.deak@intel.com>


> @@ -5979,21 +5982,22 @@ static int intel_modeset_tile_group(struct intel_atomic_state *state,
>  {
>  	struct intel_display *display = to_intel_display(state);
>  	struct drm_connector_list_iter conn_iter;
> -	struct drm_connector *connector;
> +	struct drm_connector *_connector;
>  	int ret = 0;
>  
>  	drm_connector_list_iter_begin(display->drm, &conn_iter);
> -	drm_for_each_connector_iter(connector, &conn_iter) {
> +	drm_for_each_connector_iter(_connector, &conn_iter) {

for_each_intel_connector_iter()


-- 
Jani Nikula, Intel
