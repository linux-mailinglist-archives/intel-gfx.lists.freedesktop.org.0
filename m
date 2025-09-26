Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 99D4CBA4E8B
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Sep 2025 20:41:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0D02410E0DE;
	Fri, 26 Sep 2025 18:41:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ItH4UqUD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9394910E0DE;
 Fri, 26 Sep 2025 18:41:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758912082; x=1790448082;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=vFaroZ6cV2XNs8B2OtpHPEszh16Eolalcwd3VfkK8hk=;
 b=ItH4UqUD1IcQbdB8gvJNaY1n2RrBakO0boZaT/0bH7pqJofspX+72wXG
 HbNOtp6ryZpj8602AkGjY/T7o63ei68bkoa0J8OCgaOlIGDFFqBsPk7IT
 STo5nxk/GsbqIYL1iObvkpBbi95z1hIf9va0XSZbhO6jZa0Q5bf0klDFl
 MuheFNDL+yKX934mCA7Rm3l3NKuUqOIdSIZepNdKO9f+KKSHvSSWZAx8G
 B5noQFxYSg4PS+EC23PD8y5v2Mey5/qJ1SnSvmFeZyhtBzmSYHe7biU0Z
 ftCr9jQO2XWfA3gxKKHVd3CRJylwHmzw9mwnnu/75r3HsMo+EKeyZJuIC Q==;
X-CSE-ConnectionGUID: ls/g4F29Q6GNLigJyPSLdQ==
X-CSE-MsgGUID: Zpao8LgVQjeGwJ6xzNfttA==
X-IronPort-AV: E=McAfee;i="6800,10657,11565"; a="71935584"
X-IronPort-AV: E=Sophos;i="6.18,295,1751266800"; d="scan'208";a="71935584"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2025 11:41:21 -0700
X-CSE-ConnectionGUID: xzusAhuMReK7FGI4wBZUAw==
X-CSE-MsgGUID: UxcbuXbXQRyRE6wKlbofJw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,295,1751266800"; d="scan'208";a="208432475"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.245.11])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2025 11:41:19 -0700
Date: Fri, 26 Sep 2025 21:41:16 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 00/11] drm/{i915, xe}/stolen: refactor and unify interfaces
Message-ID: <aNbeTOg51r9puj4i@intel.com>
References: <cover.1758732183.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <cover.1758732183.git.jani.nikula@intel.com>
X-Patchwork-Hint: comment
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

On Wed, Sep 24, 2025 at 07:43:29PM +0300, Jani Nikula wrote:
> 
> Jani Nikula (11):
>   drm/{i915,xe}/stolen: rename i915_stolen_fb to intel_stolen_node
>   drm/xe/stolen: rename fb to node in stolen compat header
>   drm/xe/stolen: convert compat stolen macros to inline functions
>   drm/xe/stolen: switch from BUG_ON() to WARN_ON() in compat
>   drm/i915/stolen: convert intel_stolen_node into a real struct of its
>     own
>   drm/xe/stolen: convert compat static inlines to proper functions
>   drm/{i915,xe}/stolen: make struct intel_stolen_node opaque
>   drm/{i915,xe}/stolen: add device pointer to struct intel_stolen_node
>   drm/{i915,xe}/stolen: use the stored i915/xe device pointer
>   drm/{i915,xe}/stolen: convert stolen interface to struct drm_device
>   drm/xe/stolen: use the same types as i915 interface

Looks fine by me. Series is
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Side note: I have branch somewhere that replaces the raw
drm_mm_node FBC stuff with a real i915_gem_object. I used
that as a way to easily expose the CFB and LLB as files in
debugfs so that I could observe/modify the actual CFB contents.
I should look into making that official to help future FBC
debugging. With the abstraction layer I shouldn't even need
to touch the FBC code itself anymore...

-- 
Ville Syrjälä
Intel
