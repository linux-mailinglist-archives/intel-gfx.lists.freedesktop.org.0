Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E87B9A7818D
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Apr 2025 19:34:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E03F10E12D;
	Tue,  1 Apr 2025 17:34:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jkT6hc3P";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7E9CB10E12D
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Apr 2025 17:34:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743528856; x=1775064856;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=271T6Tt2WB/NC5oosgLSmUTNNvXmvPhHIC6gsMI1SOo=;
 b=jkT6hc3PCs9CyuO2i4C7V/mxNYj4YCI3cx45cRGwSLWSc+bOblO/dcSa
 pcCzqVvPWTlmMKPtkgtyMuLVTOH0dmA3XABzJGVaaVyh1favEbsYX5PSP
 n7Bb10NfmNmkCFZlJON8WuCdPKI8j8v+JG2Bw0N9mSbQVFhv08H2+PD//
 2qxT3qdvyPAoiwGneHDnGm9bEKN8QH8nGiUk7ZLokbbr5/MsdSk3A6WkH
 33JO5oIAF6e+M+UIsyohf3dELdHJ+k4WTUnhAdyA8aqOKKW9JGR9+0b2n
 SCGTPhUOkvQb6UcZo++uw2xoynHDdzBGR/7BEkok87wDaVprEdty5owxj g==;
X-CSE-ConnectionGUID: 8A6vKGJUS/G8Id/PCpHnxw==
X-CSE-MsgGUID: eun5SkIJRMaeBOHgB8NHcA==
X-IronPort-AV: E=McAfee;i="6700,10204,11391"; a="44118631"
X-IronPort-AV: E=Sophos;i="6.14,293,1736841600"; d="scan'208";a="44118631"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2025 10:34:16 -0700
X-CSE-ConnectionGUID: I91eMb71SBWDaDgI1ZYf+g==
X-CSE-MsgGUID: ek8a9ItnTUaq4mmxORw5zg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,293,1736841600"; d="scan'208";a="127358999"
Received: from ettammin-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.245.184])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2025 10:34:13 -0700
Date: Tue, 1 Apr 2025 19:34:11 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, stable@vger.kernel.org,
 Matthew Auld <matthew.auld@intel.com>,
 Thomas =?iso-8859-15?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>
Subject: Re: [PATCH 3/4] drm/i915/gem: Allow EXEC_CAPTURE on recoverable
 contexts on DG1
Message-ID: <Z-wjk-9ZVEpBVw0G@ashyti-mobl2.lan>
References: <20250401163752.6412-1-ville.syrjala@linux.intel.com>
 <20250401163752.6412-4-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250401163752.6412-4-ville.syrjala@linux.intel.com>
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

Hi Ville,

On Tue, Apr 01, 2025 at 07:37:51PM +0300, Ville Syrjala wrote:
> The intel-media-driver is currently broken on DG1 because
> it uses EXEC_CAPTURE with recovarable contexts. Relax the
> check to allow that.
> 
> I've also submitted a fix for the intel-media-driver:
> https://github.com/intel/media-driver/pull/1920

...

>  		if (i915_gem_context_is_recoverable(eb->gem_context) &&
> -		    (IS_DGFX(eb->i915) || GRAPHICS_VER_FULL(eb->i915) > IP_VER(12, 0)))
> +		    GRAPHICS_VER_FULL(eb->i915) > IP_VER(12, 10))

How is this is more relaxed than the old version?

Andi
