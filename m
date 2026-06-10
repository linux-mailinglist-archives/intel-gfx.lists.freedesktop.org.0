Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id JHkmI2FLKWo+UAMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jun 2026 13:32:49 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 173B3668D55
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jun 2026 13:32:49 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=il0Mo4dT;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0CFF010E5A2;
	Wed, 10 Jun 2026 11:32:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 142DA10E575;
 Wed, 10 Jun 2026 11:32:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781091166; x=1812627166;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=Te6obf/6wFQWXJ1Z31zqcs+ZGC4n7lCn9rO7pYOkNg0=;
 b=il0Mo4dTmvW5cZt/vEQTqyrUcidYlnBH4oX7Cj9/bLxfdtNxWXZk2xgH
 w/d3kH79Ban8rH+cvlZEtKfHxrwDeWAQ8WqUVXk5WIfLIoRMavX1mVcPv
 5NEe4mrWJKa+g9FBmYGujmglTTKjlQtUs993CYnllrqNA8Uu0PACCqHr1
 HnEKNp2xxBADpoUjg/i7TSPek3/gg6AzsqmW/Y5Ye4pK+1ba7r2vXl8xO
 zPF0k6D/Q/+3HSofeEJlJuhvmoQeYrLGz32M4o29fyaYeyEsg1Ic1sMDa
 JAIHRfHGj3ADdhVLyxVLLJ2ZzUbGOE2uTIbVvq4BPX/GbAPlpS5aGEFys w==;
X-CSE-ConnectionGUID: nRpx8fr2TlOKIZrsSTq+1g==
X-CSE-MsgGUID: HW7zGSaARVOYEy/lZSWVhA==
X-IronPort-AV: E=McAfee;i="6800,10657,11812"; a="92988477"
X-IronPort-AV: E=Sophos;i="6.24,197,1774335600"; d="scan'208";a="92988477"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2026 04:32:44 -0700
X-CSE-ConnectionGUID: s/X0VWy7R9q0YyvPZROOLA==
X-CSE-MsgGUID: Ze4TE5tBQ9qMJ+7DmbczxQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,197,1774335600"; d="scan'208";a="243683373"
Received: from fpallare-mobl4.ger.corp.intel.com (HELO localhost)
 ([10.245.244.3])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2026 04:32:41 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Animesh Manna <animesh.manna@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: uma.shankar@intel.com, dibin.moolakadan.subrahmanian@intel.com,
 ville.syrjala@linux.intel.com, Animesh Manna <animesh.manna@intel.com>
Subject: Re: [PATCH v8 08/20] drm/i915/vrr: Pass transcoder to
 intel_vrr_set_fixed_rr_timings()
In-Reply-To: <20260603195416.91639-9-animesh.manna@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260603195416.91639-1-animesh.manna@intel.com>
 <20260603195416.91639-9-animesh.manna@intel.com>
Date: Wed, 10 Jun 2026 14:32:38 +0300
Message-ID: <4f1a195b98fb31f4cca7fec1580e053966f3025d@intel.com>
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.81 / 15.00];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp,intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 173B3668D55

On Thu, 04 Jun 2026, Animesh Manna <animesh.manna@intel.com> wrote:
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.h b/drivers/gpu/drm/i915/display/intel_vrr.h
> index 4f16ca4af91f..2daba0c16162 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.h
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.h
> @@ -8,6 +8,8 @@
>  
>  #include <linux/types.h>
>  
> +#include "intel_display_limits.h"

Don't include headers from headers if it can be avoided.

> +
>  struct drm_connector_state;
>  struct intel_atomic_state;
>  struct intel_connector;
> @@ -42,7 +44,8 @@ int intel_vrr_vmin_vblank_start(const struct intel_crtc_state *crtc_state);
>  bool intel_vrr_is_fixed_rr(const struct intel_crtc_state *crtc_state);
>  void intel_vrr_transcoder_enable(const struct intel_crtc_state *crtc_state);
>  void intel_vrr_transcoder_disable(const struct intel_crtc_state *crtc_state);
> -void intel_vrr_set_fixed_rr_timings(const struct intel_crtc_state *crtc_state);
> +void intel_vrr_set_fixed_rr_timings(const struct intel_crtc_state *crtc_state,
> +				    enum transcoder transcoder);
>  void intel_vrr_dcb_reset(const struct intel_crtc_state *old_crtc_state,
>  			 struct intel_crtc *crtc);
>  bool intel_vrr_always_use_vrr_tg(struct intel_display *display);

-- 
Jani Nikula, Intel
