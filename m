Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id yIKDJVTlSGpQvAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Sat, 04 Jul 2026 12:49:56 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 11A677075CE
	for <lists+intel-gfx@lfdr.de>; Sat, 04 Jul 2026 12:49:56 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=eoSJ2xnc;
	dmarc=pass (policy=none) header.from=intel.com;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 91F7210E6AB;
	Sat,  4 Jul 2026 10:49:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 38B0610E6A3;
 Sat,  4 Jul 2026 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783162193; x=1814698193;
 h=date:from:to:cc:subject:in-reply-to:message-id:
 references:mime-version:content-id;
 bh=OvlpBuyF90McYUgrPnhkRgtA01r29rfl9tPj4ld5RnA=;
 b=eoSJ2xnctzeaR7cn9qe+/mh6ugVFJnygT8DxG7RYi9K80Jy3vMtud2Cs
 ZA1bpTT/biUUD1zf2RKDJ2g3eZ0A9OmoXrxElcn8/pNGxb3mgiLON6+Pq
 u7hlstwNTqsfPyERbe5rLMr41/aYgQzXAmlfbXukb+1PM6SzDF8RHOFY6
 XkNksDf+aYZHBQACmKLvEZydb5Fu6+dCSsdBh0bxcBIi5jtzJme1ezFb/
 c5JvyTUHz4DxZRGEnZxjDEUn6mrFInFJK2qNISzv1+WKtzlYpbH0LWWsQ
 ei6FosHLTS/Oeyc0Q4jhYM3IlkLqPz7xRlanjiPfF4n1DKVgkpN5LsdX8 w==;
X-CSE-ConnectionGUID: w1sOxAkSQNKJ6IupJ6P+cQ==
X-CSE-MsgGUID: senvFb6YRaG0BuMxVs+URg==
X-IronPort-AV: E=McAfee;i="6800,10657,11836"; a="95382520"
X-IronPort-AV: E=Sophos;i="6.25,147,1779174000"; d="scan'208";a="95382520"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jul 2026 03:49:53 -0700
X-CSE-ConnectionGUID: OsVSMu88Ql6QLYHnsZAIEA==
X-CSE-MsgGUID: SL4Aqed3SFipq6BsA2tjcA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,147,1779174000"; d="scan'208";a="257172115"
Received: from dev-417.igk.intel.com ([10.91.214.181])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jul 2026 03:49:52 -0700
Date: Sat, 4 Jul 2026 12:49:49 +0200 (CEST)
From: =?ISO-8859-2?Q?Micha=B3_Grzelak?= <michal.grzelak@intel.com>
To: Imre Deak <imre.deak@intel.com>
cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH v2 29/34] drm/xe/kunit: Build DP link display tests
In-Reply-To: <20260701153204.4124150-30-imre.deak@intel.com>
Message-ID: <b651cf45-e19f-f509-fa21-e17c026f003b@intel.com>
References: <20260701153204.4124150-1-imre.deak@intel.com>
 <20260701153204.4124150-30-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="8323329-346222691-1783117240=:605841"
Content-ID: <0089ecbd-0590-a9cc-7499-b873a7c377fa@intel.com>
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	CTYPE_MIXED_BOGUS(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[multipart/mixed,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[michal.grzelak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:from_mime,intel.com:email,intel.com:mid,intel.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lists.freedesktop.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 11A677075CE

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-346222691-1783117240=:605841
Content-Type: text/plain; CHARSET=ISO-8859-2; format=flowed
Content-Transfer-Encoding: 8BIT
Content-ID: <1e587008-e2bb-2531-e411-c52df0aacbf0@intel.com>

On Wed, 1 Jul 2026, Imre Deak wrote:
> Hook the shared i915 display DP link KUnit tests into the xe display
> test build.
>
> Build the shared display test source from the i915 display test directory
> when xe display support is enabled.
>
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
> drivers/gpu/drm/xe/Makefile               |  3 +++
> drivers/gpu/drm/xe/display/tests/Makefile | 11 +++++++++++
> 2 files changed, 14 insertions(+)
> create mode 100644 drivers/gpu/drm/xe/display/tests/Makefile
>
> diff --git a/drivers/gpu/drm/xe/Makefile b/drivers/gpu/drm/xe/Makefile
> index e5a04253e73bf..3ff58186c7678 100644
> --- a/drivers/gpu/drm/xe/Makefile
> +++ b/drivers/gpu/drm/xe/Makefile
> @@ -373,6 +373,9 @@ xe-$(CONFIG_DRM_XE_DP_TUNNEL) += \
>
> obj-$(CONFIG_DRM_XE) += xe.o
> obj-$(CONFIG_DRM_XE_KUNIT_TEST) += tests/
> +ifeq ($(CONFIG_DRM_XE_DISPLAY),y)
> +	obj-$(CONFIG_DRM_XE_KUNIT_TEST) += display/tests/
> +endif
>
> # header test
> hdrtest_find_args := -not -path xe_rtp_helpers.h
> diff --git a/drivers/gpu/drm/xe/display/tests/Makefile b/drivers/gpu/drm/xe/display/tests/Makefile
> new file mode 100644
> index 0000000000000..1a582febe17a6
> --- /dev/null
> +++ b/drivers/gpu/drm/xe/display/tests/Makefile
> @@ -0,0 +1,11 @@

Not sure but I think # SPDX ... boilterplate is missing.

Otherwise or if does not apply:

Reviewed-by: Micha³ Grzelak <michal.grzelak@intel.com>

BR,
Micha³

> +subdir-ccflags-$(CONFIG_DRM_XE_DISPLAY) += \
> +	-I$(srctree)/drivers/gpu/drm/i915/display/
> +
> +# Rule to build display code shared with i915
> +$(obj)/i915-display/tests/%.o: $(srctree)/drivers/gpu/drm/i915/display/tests/%.c FORCE
> +	$(call cmd,force_checksrc)
> +	$(call if_changed_rule,cc_o_c)
> +
> +obj-$(CONFIG_DRM_XE_KUNIT_TEST) += xe_display_test.o
> +xe_display_test-y = \
> +		i915-display/tests/intel_dp_link_test.o
> -- 
> 2.49.1
>
>
--8323329-346222691-1783117240=:605841--
