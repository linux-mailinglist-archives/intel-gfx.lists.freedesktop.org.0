Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EC13AAA08B5
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Apr 2025 12:36:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5432E10E434;
	Tue, 29 Apr 2025 10:36:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bqhWmMdm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E194010E434;
 Tue, 29 Apr 2025 10:36:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745923007; x=1777459007;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=3J/wKIr+5Tv3E8rfUPOes1b4d7FvStWNovrWkSuQhEM=;
 b=bqhWmMdmaTSxmGuGLQCWPoj0q4Vz9M1d5uUc7dNG5pAqx2T/2BuWl0LA
 TFv4jlHs8zjYkMb6/z5DmK11h1alJ9Dv9Cths0BXqipKRKt5YAJj9D/UO
 eT4R2YCG+vy/XPuRcoEJRi4EfZ67kCqkz4G+Dyy9WqDcy1Po4nldBNoQz
 z0JHuhf0jcSCVE9fNZzHuKJRD13RW5Ue36nWDJRWAOWmdxjBXxvSBg9Z/
 fm/zGof//9pU+winQES5zHJUm6rwSWurvPtDvNYPGjy4Q+fyPo+xMLHIq
 EZa94ercWjDsSeYV6LegDR5WNZhFYTMQxX3A3CQxJPpC0NbWeUOIWBix6 g==;
X-CSE-ConnectionGUID: ix2ougfeS4yCHLYrRnUvUA==
X-CSE-MsgGUID: FiL/pHTFTuOU7i2tOBikYQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11417"; a="47548778"
X-IronPort-AV: E=Sophos;i="6.15,248,1739865600"; d="scan'208";a="47548778"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2025 03:36:47 -0700
X-CSE-ConnectionGUID: bPIr7BDmQ6+8xWWTO6WyZg==
X-CSE-MsgGUID: tnw6bjV1SiCh9bfERvlzAw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,248,1739865600"; d="scan'208";a="157013497"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.9])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2025 03:36:44 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Imre Deak <imre.deak@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 2/2] drm/i915/hdmi: Use an intel_connector pointer
 everywhere
In-Reply-To: <20250428134716.3396802-3-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250428134716.3396802-1-imre.deak@intel.com>
 <20250428134716.3396802-3-imre.deak@intel.com>
Date: Tue, 29 Apr 2025 13:36:41 +0300
Message-ID: <87a57zw8xy.fsf@intel.com>
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

On Mon, 28 Apr 2025, Imre Deak <imre.deak@intel.com> wrote:
>  static void
> -intel_hdmi_add_properties(struct intel_hdmi *intel_hdmi, struct drm_connector *connector)
> +intel_hdmi_add_properties(struct intel_hdmi *intel_hdmi, struct drm_connector *_connector)
>  {
> +	struct intel_connector *connector = to_intel_connector(_connector);
>  	struct intel_display *display = to_intel_display(intel_hdmi);
>  
> -	intel_attach_force_audio_property(connector);
> -	intel_attach_broadcast_rgb_property(connector);
> -	intel_attach_aspect_ratio_property(connector);
> +	intel_attach_force_audio_property(&connector->base);
> +	intel_attach_broadcast_rgb_property(&connector->base);
> +	intel_attach_aspect_ratio_property(&connector->base);

A guess a follow-up could convert all of these and more to accept
intel_connector as parameter.

BR,
Jani.


-- 
Jani Nikula, Intel
