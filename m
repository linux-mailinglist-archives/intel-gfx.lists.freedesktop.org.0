Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id G2+nGojSHmr7VQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 02 Jun 2026 14:54:32 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C94A962E306
	for <lists+intel-gfx@lfdr.de>; Tue, 02 Jun 2026 14:54:31 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=HySsc9Dv;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 127B910F070;
	Tue,  2 Jun 2026 12:46:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7A32010F06F;
 Tue,  2 Jun 2026 12:46:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780404389; x=1811940389;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=TZgAIYaorL+I96i1474hiEofnH+gH+yQUuWL6JGsIfA=;
 b=HySsc9DvZjc37FclJaoJCHXPSi4bu9z7KDtMb4o1/1x7hUu9YzfIdPc7
 suEUAisxFergRxGg4XeAby+oPkOQ1CSYGdofdx9nbz9+8wjNNpLaRAJ+d
 hrTTWGNalmznHg4oBCywcnNLrC7ZmenoD+DymPXo//bi9a28mImX8kMrK
 LUy5kGr9YbjWuy3kJnCBKA7X0iFLR/HuocztyN0XfN4T0UoSFDMuY0vow
 nhPZgXiHSljqq5dBLfZx9cXLtZFjqeB/V5YjM9uUpeQVZHifRFZLN4yBo
 Y0UADFPlsskmiLAy9R4kPi1Zno6KLV93WQeK5vBR4TsAZWRKvyCTfHTCR A==;
X-CSE-ConnectionGUID: ldoJZAsiRQuBVGS4V7Yl4w==
X-CSE-MsgGUID: c2aJfN2CQdOOsBJKvFg2ug==
X-IronPort-AV: E=McAfee;i="6800,10657,11804"; a="81088953"
X-IronPort-AV: E=Sophos;i="6.24,183,1774335600"; d="scan'208";a="81088953"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2026 05:46:28 -0700
X-CSE-ConnectionGUID: ytMiIm4/Tw2G56+ptDSBbg==
X-CSE-MsgGUID: 4qHCUkF9TbS1ak7hZkFxJA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,183,1774335600"; d="scan'208";a="239727499"
Received: from vpanait-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.245.253])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2026 05:46:26 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, imre.deak@intel.com
Subject: Re: =?utf-8?Q?=E2=9C=97?= i915.CI.BAT: failure for drm/{i915, xe}:
 display (runtime) suspend/resume/shutdown unification, part 2
In-Reply-To: <178039485806.35116.2101469529268890207@6beec6c84f66>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <cover.1780389001.git.jani.nikula@intel.com>
 <178039485806.35116.2101469529268890207@6beec6c84f66>
Date: Tue, 02 Jun 2026 15:46:23 +0300
Message-ID: <9299478799ad973d4e1f9467fedfec2d2e8e92ef@intel.com>
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
X-Spamd-Result: default: False [5.19 / 15.00];
	URL_MULTIPLE_AT_SIGNS(6.00)[3];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	GREYLIST(0.00)[pass,body];
	RCVD_COUNT_THREE(0.00)[4];
	HAS_ORG_HEADER(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[intel.com:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	MISSING_XM_UA(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:from_mime,intel.com:dkim,01.org:url,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C94A962E306

On Tue, 02 Jun 2026, Patchwork <patchwork@emeril.freedesktop.org> wrote:
> #### Possible regressions ####
>
>   * igt@i915_selftest@live:
>     - fi-bsw-n3050:       [PASS][1] -> [ABORT][2] +1 other test abort
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18602/fi-bsw-n3050/igt@i915_selftest@live.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167725v1/fi-bsw-n3050/igt@i915_selftest@live.html
>
>   * igt@i915_selftest@live@hangcheck:
>     - bat-arlh-2:         [PASS][3] -> [INCOMPLETE][4]
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18602/bat-arlh-2/igt@i915_selftest@live@hangcheck.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167725v1/bat-arlh-2/igt@i915_selftest@live@hangcheck.html

Imre, Ville, any idea what in this series could cause this? Feels like
it could be a real regression, but I can't figure it out. :(

BR,
Jani.


-- 
Jani Nikula, Intel
