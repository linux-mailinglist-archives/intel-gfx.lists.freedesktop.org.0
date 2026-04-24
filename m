Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YBS9HpEt62mBJgAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Apr 2026 10:45:05 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 34FB645BAA7
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Apr 2026 10:45:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 564AC10F433;
	Fri, 24 Apr 2026 08:45:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="V6syd4k4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3EBB410F433;
 Fri, 24 Apr 2026 08:45:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777020302; x=1808556302;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=cZvEbggjbPZeYWZ/aFLsclmbJZceWnJ/7CRUiqlzOxk=;
 b=V6syd4k4ehj3Rp20I+/XKyRsmX7JP0PsCmYRZJuviTfuY7TT1hOOX1Hv
 TlcmVzH5Jp8II5GLbiWnEKyZQjBmGINh9FGgcOCz1xG1m7wkfYcdZtf5r
 GCbnwbvh45h5GbjTIdoTCdcS2+qS4THvyV86wjUhOgsZAnA3AP+dUlpPL
 kgzz/v5hU8wBDBU2Lb/KMP0IvOWumo8HAUPDUEFqy16n7RPJPZ201isov
 Fs6f2G9e131Y1Knhm2I41C8cg1QXvbOOx3rKjnk7pc/6x+lDuNLQvuufO
 8Wk7Y4Du6YEfGI7DyZJxi8fCZw1PJYd3N+pj9BaCYQ5pKgnAwy0Y/mzaB g==;
X-CSE-ConnectionGUID: 9n8br+TVTg+s7Ob5+wKikA==
X-CSE-MsgGUID: UguR9n0eTkq/xpEDZsvZpQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11765"; a="89381495"
X-IronPort-AV: E=Sophos;i="6.23,196,1770624000"; d="scan'208";a="89381495"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2026 01:45:02 -0700
X-CSE-ConnectionGUID: V5dybjsTSESpw8XcfVRs3g==
X-CSE-MsgGUID: ZaW30ywUT3GM865MPqK90Q==
X-ExtLoop1: 1
Received: from smoticic-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.245.89])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2026 01:45:00 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>,
 intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Cc: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>, Tvrtko Ursulin
 <tvrtko.ursulin@igalia.com>, Ville =?utf-8?B?U3lyasOkbMOk?=
 <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH v2] drm/i915/display: enable ccs modifiers on dg2
In-Reply-To: <20260423141148.3145665-1-juhapekka.heikkila@gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260423141148.3145665-1-juhapekka.heikkila@gmail.com>
Date: Fri, 24 Apr 2026 11:44:57 +0300
Message-ID: <92d121173a3e42ef91274f9fa810e47d71b8dd70@intel.com>
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
X-Rspamd-Queue-Id: 34FB645BAA7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.69 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com,lists.freedesktop.org];
	HAS_ORG_HEADER(0.00)[];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,igalia.com,linux.intel.com];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	DKIM_TRACE(0.00)[intel.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:mid]

On Thu, 23 Apr 2026, Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com> wrote:
> Since Xe driver aux ccs enablement dg2 ccs modifiers have been
> disabled on both Xe and i915 drivers. Here allow dg2 to use
> ccs again for framebuffers.
>
> Fixes: 6a99e91a6ca8fec5882450128fb128265f86b32a ("drm/i915/display: Detect AuxCCS support via display parent interface")

In kernel, there should be 12 characters of sha1.

'dim fixes <sha1>' gives you the correct format, and suggests Cc's
(though you probably shouldn't actually Cc all of them).

For referencing commits in general, I have this handy alias in my
.gitconfig:

[alias]
	cite = log -1 --abbrev=12 '--format=%h (\"%s\")'

$ git cite 6a99e91a6ca8fec5882450128fb128265f86b32a
6a99e91a6ca8 ("drm/i915/display: Detect AuxCCS support via display parent interface")

BR,
Jani.

> Signed-off-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
> ---
>  drivers/gpu/drm/i915/i915_driver.c | 5 ++---
>  1 file changed, 2 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> index d31819758f3d..a4bd4f8e18b2 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -750,9 +750,8 @@ static bool has_auxccs(struct drm_device *drm)
>  {
>  	struct drm_i915_private *i915 = to_i915(drm);
>  
> -	return IS_GRAPHICS_VER(i915, 9, 12) ||
> -	       IS_ALDERLAKE_P(i915) ||
> -	       IS_METEORLAKE(i915);
> +	return IS_GRAPHICS_VER(i915, 9, 12) &&
> +		!HAS_FLAT_CCS(i915);
>  }
>  
>  static bool has_fenced_regions(struct drm_device *drm)

-- 
Jani Nikula, Intel
