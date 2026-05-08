Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4GxrJGmw/WmlhgAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 08 May 2026 11:44:09 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 05B2C4F4602
	for <lists+intel-gfx@lfdr.de>; Fri, 08 May 2026 11:44:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 17B2E10E09A;
	Fri,  8 May 2026 09:44:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Y0JdP/JJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1104410E09A
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 May 2026 09:44:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778233446; x=1809769446;
 h=date:from:to:cc:subject:in-reply-to:message-id:
 references:mime-version:content-id;
 bh=zFTUVA0y1jiQGFW5G05OCZCvO9QHEnVwzENQjlgVyX8=;
 b=Y0JdP/JJP/9NFf2+w4P+gFdGn9Yvq39YEz8R+SNe/F5Ecsn9Qp+goHid
 loeO4Rb/Vhq/PjLST+rbQPgxqSS56OWdll85a1zN0IoqRo/8yNxMWsfR9
 2oha5FgQDFFBeF81SBQPT9ogDKWApqU2Xsdn43pqb/DKcBZApHNxVpzmd
 WaXvtXe9lJrZ1nfkIzevY9HNfEoTDFQZiujs8VRRo8TNlGLSM7O2CwrQK
 5WqnB9wFwVUkWZcQqtD9rnZUsUyphuM90YfkiQVnlyBDdbeQ+2GLIkPFr
 uqGFnH9h93g03e7WgLJhJcQ7mZEiFzlsrNsdoIlPTte1JQa46ndd2QduM w==;
X-CSE-ConnectionGUID: tfsAKbPXSPylMpdPy9F/hg==
X-CSE-MsgGUID: Pd0CMyOOQZOEXK0onlTQRg==
X-IronPort-AV: E=McAfee;i="6800,10657,11779"; a="96623120"
X-IronPort-AV: E=Sophos;i="6.23,223,1770624000"; d="scan'208";a="96623120"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2026 02:44:06 -0700
X-CSE-ConnectionGUID: 8tutS5ZTS3Gm5I8aFiYuoQ==
X-CSE-MsgGUID: zQT7XmF/QaScgSkjYTQVPg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,223,1770624000"; d="scan'208";a="241069452"
Received: from dev-417.igk.intel.com ([10.91.214.181])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2026 02:44:05 -0700
Date: Fri, 8 May 2026 11:44:02 +0200 (CEST)
From: =?ISO-8859-2?Q?Micha=B3_Grzelak?= <michal.grzelak@intel.com>
To: Krzysztof Karas <krzysztof.karas@intel.com>
cc: intel-gfx@lists.freedesktop.org, Andi Shyti <andi.shyti@linux.intel.com>, 
 Sebastian Brzezinka <sebastian.brzezinka@intel.com>, 
 Krzysztof Niemiec <krzysztof.niemiec@intel.com>, 
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Subject: Re: [PATCH v10 2/2] drm/i915/selftests: Run vma tests only if
 current->mm is present
In-Reply-To: <20260508080214.1979686-3-krzysztof.karas@intel.com>
Message-ID: <f8ba662b-3722-da3e-985e-708da7104fbb@intel.com>
References: <20260508080214.1979686-1-krzysztof.karas@intel.com>
 <20260508080214.1979686-3-krzysztof.karas@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="8323329-522538504-1778233083=:541039"
Content-ID: <d9ef65bc-394c-fdf3-bfe5-be8288eb1033@intel.com>
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
X-Rspamd-Queue-Id: 05B2C4F4602
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	CTYPE_MIXED_BOGUS(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[multipart/mixed,text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:krzysztof.karas@intel.com,m:andi.shyti@linux.intel.com,m:sebastian.brzezinka@intel.com,m:krzysztof.niemiec@intel.com,m:janusz.krzysztofik@linux.intel.com,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER(0.00)[michal.grzelak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+,1:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[michal.grzelak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,intel.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Action: no action

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-522538504-1778233083=:541039
Content-Type: text/plain; CHARSET=ISO-8859-2; format=flowed
Content-Transfer-Encoding: 8BIT
Content-ID: <f91df982-1d48-8e11-6f80-1f5b50027329@intel.com>

On Fri, 8 May 2026, Krzysztof Karas wrote:
> This set of tests require userspace memory to map objects, so
> run them only if this that memory is available.

I think the word "this" can be dropped from the description.

Otherwise,
Reviewed-by: Micha³ Grzelak <michal.grzelak@intel.com>

>
> Reviewed-by: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
> Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>
> Reviewed-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
> Signed-off-by: Krzysztof Karas <krzysztof.karas@intel.com>
> ---
> .../gpu/drm/i915/gem/selftests/i915_gem_mman.c   | 16 ++++++++--------
> 1 file changed, 8 insertions(+), 8 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
> index 9d454d0b46f2..d01acfb7d93d 100644
> --- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
> +++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
> @@ -1847,11 +1847,12 @@ static int igt_mmap_revoke(void *arg)
> int i915_gem_mman_live_selftests(struct drm_i915_private *i915)
> {
> 	int ret;
> -	bool unuse_mm = false;
> 	static const struct i915_subtest tests[] = {
> 		SUBTEST(igt_partial_tiling),
> 		SUBTEST(igt_smoke_tiling),
> 		SUBTEST(igt_mmap_offset_exhaustion),
> +	};
> +	static const struct i915_subtest vma_tests[] = {
> 		SUBTEST(igt_mmap),
> 		SUBTEST(igt_mmap_migrate),
> 		SUBTEST(igt_mmap_access),
> @@ -1859,15 +1860,14 @@ int i915_gem_mman_live_selftests(struct drm_i915_private *i915)
> 		SUBTEST(igt_mmap_gpu),
> 	};
>
> -	if (!current->mm) {
> -		kthread_use_mm(current->active_mm);
> -		unuse_mm = true;
> -	}
> -
> 	ret = i915_live_subtests(tests, i915);
> +	if (ret)
> +		return ret;
>
> -	if (unuse_mm)
> -		kthread_unuse_mm(current->active_mm);
> +	if (current->mm)
> +		ret = i915_live_subtests(vma_tests, i915);
> +	else
> +		pr_warn("No current->mm to safely borrow userspace memory from. Skipping VMA tests.\n");
>
> 	return ret;
> }
> -- 
> 2.34.1
>
>
--8323329-522538504-1778233083=:541039--
