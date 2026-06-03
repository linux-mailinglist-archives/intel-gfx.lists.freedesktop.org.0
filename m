Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 0O7OJjYsIGqnyAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 03 Jun 2026 15:29:26 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 238706380EB
	for <lists+intel-gfx@lfdr.de>; Wed, 03 Jun 2026 15:29:26 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=NXhKisAb;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B02C810FE36;
	Wed,  3 Jun 2026 13:29:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D643F10FE36;
 Wed,  3 Jun 2026 13:29:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780493364; x=1812029364;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=1ZLTfEfZqzyDxSIvrRfGzwlrVEQFRNVDDDGxcyMgi8c=;
 b=NXhKisAb1B2yzbizVDEeaM55srLhIOK6Rn14RMkmaFHOoYr5NQysvIP6
 8117MGqyEfPy6Zu2ue9YURAyyijz8hDR2m9riFOWVG/aPkXAsIqUTHjvo
 METnOQecwZDC/znAXR7VP7iC3y5HzpNERowZ9Fe04vEnrxl2iJgeUTAaZ
 mizhg1ARKflJOk7g0efpVA8QeG2XkUCNYRdACJQ5PKwb6lxleC+88zf0m
 UIJvxdtcnd/gK82CHOrvuyRza81yzhI7uw3LuEgTelxmdYs84b/SYe2md
 d1TNo9l0aHYBIX7fumQySzRcTW3mUxoru+fnYuFXyzqfiqdGYZym2gdX/ Q==;
X-CSE-ConnectionGUID: 7rof/IyNQUu3+IRlxtF5mA==
X-CSE-MsgGUID: oYG6YHTfRxKUHipBii/hvw==
X-IronPort-AV: E=McAfee;i="6800,10657,11805"; a="106753943"
X-IronPort-AV: E=Sophos;i="6.24,185,1774335600"; d="scan'208";a="106753943"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2026 06:29:23 -0700
X-CSE-ConnectionGUID: yh6LlhrpSieUZRFG3BZV1Q==
X-CSE-MsgGUID: 5dzggJ8DQdi6pdzNXhp5CQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,185,1774335600"; d="scan'208";a="244353791"
Received: from abityuts-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.244.189])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2026 06:29:21 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, imre.deak@intel.com
Subject: Re: =?utf-8?Q?=E2=9C=97?= i915.CI.BAT: failure for drm/{i915, xe}:
 display (runtime) suspend/resume/shutdown unification, part 2
In-Reply-To: <9299478799ad973d4e1f9467fedfec2d2e8e92ef@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <cover.1780389001.git.jani.nikula@intel.com>
 <178039485806.35116.2101469529268890207@6beec6c84f66>
 <9299478799ad973d4e1f9467fedfec2d2e8e92ef@intel.com>
Date: Wed, 03 Jun 2026 16:29:19 +0300
Message-ID: <05a8062a90d7746e9c4d693601a407b157ce1d22@intel.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	GREYLIST(0.00)[pass,meta];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
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
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,01.org:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 238706380EB

On Tue, 02 Jun 2026, Jani Nikula <jani.nikula@intel.com> wrote:
> On Tue, 02 Jun 2026, Patchwork <patchwork@emeril.freedesktop.org> wrote:
>> #### Possible regressions ####
>>
>>   * igt@i915_selftest@live:
>>     - fi-bsw-n3050:       [PASS][1] -> [ABORT][2] +1 other test abort
>>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18602/fi-bsw-n3050/igt@i915_selftest@live.html
>>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167725v1/fi-bsw-n3050/igt@i915_selftest@live.html
>>
>>   * igt@i915_selftest@live@hangcheck:
>>     - bat-arlh-2:         [PASS][3] -> [INCOMPLETE][4]
>>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18602/bat-arlh-2/igt@i915_selftest@live@hangcheck.html
>>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167725v1/bat-arlh-2/igt@i915_selftest@live@hangcheck.html
>
> Imre, Ville, any idea what in this series could cause this? Feels like
> it could be a real regression, but I can't figure it out. :(

Passed on the next try. I'll optimistically think the first try was a
fluke. ;)

BR,
Jani.

-- 
Jani Nikula, Intel
