Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4B0dDSgtwWmbRAQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2026 13:08:08 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 703102F1AAE
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2026 13:08:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F0E0110E350;
	Mon, 23 Mar 2026 12:08:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="S+33yZl2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 171E410E3C6
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Mar 2026 12:08:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774267685; x=1805803685;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=w2gYlZN8Jq9RKo0RchZT5zMwk6qzrlhwaKrinBAiZDA=;
 b=S+33yZl2bJXsRb0gkiaCFlcfTky3HjUnnr6DakKBNQ0YBAIf+DakszPT
 Oy8toPYrSX1/3Q3AzF52r5IPZIVjUq93rh9dbAIGcCh/OULDrLLnU+XS2
 oZX8GiOfGgSluxPJP2SGIOA7h3goaHbgwllRKB+I2PC9ZHqJhNNi2zNgu
 szqKC/Jm4NnxK9jVyBzI5OJnkpshjTcUtYxt5exWFnip/nvPudlCfuwqO
 2MCoS4lDuWMRpstwIrgKfKVWUPZzY0nEcv1fKVgMlnIKktwytusFqZ913
 oOZZqqIND5wDkBFhZljki7D3qI4lJRLmKEZBTl6pgsGePQzZUkU6G/keH Q==;
X-CSE-ConnectionGUID: /7bm9PRwR4SNDt4n5V+FDA==
X-CSE-MsgGUID: HoW/JIzwR0Ko2MieOF24Aw==
X-IronPort-AV: E=McAfee;i="6800,10657,11737"; a="86736366"
X-IronPort-AV: E=Sophos;i="6.23,137,1770624000"; d="scan'208";a="86736366"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2026 05:08:05 -0700
X-CSE-ConnectionGUID: qjbSWjFvSSarMp9mjqMpzQ==
X-CSE-MsgGUID: 27vjtlcfRnen6thGA4VrGA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,137,1770624000"; d="scan'208";a="254482133"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.8])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2026 05:08:03 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 1/2] drm/i915/selftests: Nuke live_forcewake_domains
 selftest
In-Reply-To: <20260323101609.8391-2-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260323101609.8391-1-ville.syrjala@linux.intel.com>
 <20260323101609.8391-2-ville.syrjala@linux.intel.com>
Date: Mon, 23 Mar 2026 14:08:00 +0200
Message-ID: <9012f715a09ce730a81295f44e3ef7c45a7fe0a6@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
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
X-Spamd-Result: default: False [-1.31 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:ville.syrjala@linux.intel.com,s:lists@lfdr.de];
	RCPT_COUNT_TWO(0.00)[2];
	FORGED_SENDER(0.00)[jani.nikula@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,intel.com:mid]
X-Rspamd-Queue-Id: 703102F1AAE
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Mon, 23 Mar 2026, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> The live_forcewake_domains selftest doesn't really test anything
> particularly sensible. It only runs on platforms that have RMbus
> unclaimer error detection, but that only catches display registers
> which the test doesn't even access.
>
> I suppose if we really wanted to we might try to make the test
> exercise the GT FIFO instead by writing GT registers as fast
> as possible, and then checking GTFIFODBG to see if the FIFO has
> overflowed. But dunno if there's much point in that. I think a
> GT FIFO overflow might even be fatal to the machine.
>
> So in its current for the test doesn't really make sense,

*form

Acked-by: Jani Nikula <jani.nikula@intel.com>

> and it's in the way of moving all the RMbus noclaim stuff
> to the display driver side. So let's just get rid of it.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/selftests/intel_uncore.c | 62 -------------------
>  1 file changed, 62 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/selftests/intel_uncore.c b/drivers/gpu/=
drm/i915/selftests/intel_uncore.c
> index 507bf42a1aaf..514d2200751b 100644
> --- a/drivers/gpu/drm/i915/selftests/intel_uncore.c
> +++ b/drivers/gpu/drm/i915/selftests/intel_uncore.c
> @@ -272,67 +272,6 @@ static int live_forcewake_ops(void *arg)
>  	return err;
>  }
>=20=20
> -static int live_forcewake_domains(void *arg)
> -{
> -#define FW_RANGE 0x40000
> -	struct intel_gt *gt =3D arg;
> -	struct intel_uncore *uncore =3D gt->uncore;
> -	struct drm_i915_private *i915 =3D gt->i915;
> -	struct intel_display *display =3D i915->display;
> -	unsigned long *valid;
> -	u32 offset;
> -	int err;
> -
> -	if (!HAS_FPGA_DBG_UNCLAIMED(display) &&
> -	    !IS_VALLEYVIEW(i915) &&
> -	    !IS_CHERRYVIEW(i915))
> -		return 0;
> -
> -	/*
> -	 * This test may lockup the machine or cause GPU hangs afterwards.
> -	 */
> -	if (!IS_ENABLED(CONFIG_DRM_I915_SELFTEST_BROKEN))
> -		return 0;
> -
> -	valid =3D bitmap_zalloc(FW_RANGE, GFP_KERNEL);
> -	if (!valid)
> -		return -ENOMEM;
> -
> -	intel_uncore_forcewake_get(uncore, FORCEWAKE_ALL);
> -
> -	check_for_unclaimed_mmio(uncore);
> -	for (offset =3D 0; offset < FW_RANGE; offset +=3D 4) {
> -		i915_reg_t reg =3D { offset };
> -
> -		intel_uncore_posting_read_fw(uncore, reg);
> -		if (!check_for_unclaimed_mmio(uncore))
> -			set_bit(offset, valid);
> -	}
> -
> -	intel_uncore_forcewake_put(uncore, FORCEWAKE_ALL);
> -
> -	err =3D 0;
> -	for_each_set_bit(offset, valid, FW_RANGE) {
> -		i915_reg_t reg =3D { offset };
> -
> -		iosf_mbi_punit_acquire();
> -		intel_uncore_forcewake_reset(uncore);
> -		iosf_mbi_punit_release();
> -
> -		check_for_unclaimed_mmio(uncore);
> -
> -		intel_uncore_posting_read_fw(uncore, reg);
> -		if (check_for_unclaimed_mmio(uncore)) {
> -			pr_err("Unclaimed mmio read to register 0x%04x\n",
> -			       offset);
> -			err =3D -EINVAL;
> -		}
> -	}
> -
> -	bitmap_free(valid);
> -	return err;
> -}
> -
>  static int live_fw_table(void *arg)
>  {
>  	struct intel_gt *gt =3D arg;
> @@ -348,7 +287,6 @@ int intel_uncore_live_selftests(struct drm_i915_priva=
te *i915)
>  	static const struct i915_subtest tests[] =3D {
>  		SUBTEST(live_fw_table),
>  		SUBTEST(live_forcewake_ops),
> -		SUBTEST(live_forcewake_domains),
>  	};
>=20=20
>  	return intel_gt_live_subtests(tests, to_gt(i915));

--=20
Jani Nikula, Intel
