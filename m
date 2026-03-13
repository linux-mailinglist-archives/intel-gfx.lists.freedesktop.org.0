Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gK15CAcjtGl7hwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Mar 2026 15:45:27 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 30E182853CF
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Mar 2026 15:45:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A789410EC6B;
	Fri, 13 Mar 2026 14:45:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="e6XJA3mi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 864C410EC6B;
 Fri, 13 Mar 2026 14:45:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773413124; x=1804949124;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=fg6z950eaeS0hI1K5P1TJOznHBb1w8F8HU4LZiGgtgw=;
 b=e6XJA3mil56YcsOKfBTJqrDSpZ0OAwp46pTuNU7c5xNi1KZJxC4knhKZ
 h0VckJk3RhLVbflrfjScGCQ4iohIayTGaT5bykGjctIIlABYi7rF86SHd
 zYm+OUK52wO+7lPVCMhdEeGHKnqC9VkM2NlG6rwAIEcmtYOV9v0VAmHvV
 8B8mNDJMqikDvumE9wBXj/z2CJXblw6xVOkoUv0VUcJ7/+rXMKii6nfv+
 xNbuntgrueRKRZnkzfENOfC+522AmPhkxsGBSQY9TpHAyDFEgljkHXhAV
 vNQdmWoqNvR1XxIA4v5JUS0XNT9UP/tfrkP4cBtuaxdxLq9gd4ohIhsRM A==;
X-CSE-ConnectionGUID: rD6PVNmLTeK3JPVKaok4xA==
X-CSE-MsgGUID: bI6dG1otR8613U0TamwaqQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11728"; a="85606264"
X-IronPort-AV: E=Sophos;i="6.23,118,1770624000"; d="scan'208";a="85606264"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2026 07:45:23 -0700
X-CSE-ConnectionGUID: DRbED+X1RKOsZzwLF5kNVQ==
X-CSE-MsgGUID: CG5JpfutS6OUsYDt43Ww5g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,118,1770624000"; d="scan'208";a="259077842"
Received: from kamilkon-desk.igk.intel.com (HELO localhost) ([10.211.136.201])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2026 07:45:21 -0700
Date: Fri, 13 Mar 2026 15:45:18 +0100
From: Kamil Konieczny <kamil.konieczny@linux.intel.com>
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Cc: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 Zbigniew =?utf-8?Q?Kempczy=C5=84ski?= <zbigniew.kempczynski@intel.com>,
 Thomas =?utf-8?Q?Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 Andi Shyti <andi.shyti@linux.intel.com>,
 Krzysztof Karas <krzysztof.karas@intel.com>,
 Krzysztof Niemiec <krzysztof.niemiec@intel.com>,
 Sebastian Brzezinka <sebastian.brzezinka@intel.com>
Subject: Re: [PATCH i-g-t v2 2/3] tests/intel/gem_lmem_swapping: Be more
 clear about subprocesses role
Message-ID: <20260313144518.wxvamh4avi4ggyas@kamilkon-DESK.igk.intel.com>
Mail-Followup-To: Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 Zbigniew =?utf-8?Q?Kempczy=C5=84ski?= <zbigniew.kempczynski@intel.com>,
 Thomas =?utf-8?Q?Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 Andi Shyti <andi.shyti@linux.intel.com>,
 Krzysztof Karas <krzysztof.karas@intel.com>,
 Krzysztof Niemiec <krzysztof.niemiec@intel.com>,
 Sebastian Brzezinka <sebastian.brzezinka@intel.com>
References: <20260312181032.20485-5-janusz.krzysztofik@linux.intel.com>
 <20260312181032.20485-7-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260312181032.20485-7-janusz.krzysztofik@linux.intel.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TO_DN_SOME(0.00)[];
	MISSING_XM_UA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[9];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kamil.konieczny@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 30E182853CF
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Janusz,
On 2026-03-12 at 19:07:34 +0100, Janusz Krzysztofik wrote:
> In the smem-oom subtest, helper processes are now spawn with igt_fork(),
> not with igt_fork_helper() as one might expect.  That unfortunate use
> of igt_fork() may introduce uncertainty about the role of those
> subprocesses, whether their failures should count or not.
> 
> Use igt_fork_helper() for clarity.
> 
> Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>

LGTM
Reviewed-by: Kamil Konieczny <kamil.konieczny@linux.intel.com>

Regards,
Kamil

> ---
>  tests/intel/gem_lmem_swapping.c | 12 ++++++++----
>  1 file changed, 8 insertions(+), 4 deletions(-)
> 
> diff --git a/tests/intel/gem_lmem_swapping.c b/tests/intel/gem_lmem_swapping.c
> index 3a35318a74..f790dc66e9 100644
> --- a/tests/intel/gem_lmem_swapping.c
> +++ b/tests/intel/gem_lmem_swapping.c
> @@ -737,7 +737,9 @@ static void test_smem_oom(int i915,
>  	/* smem memory hog processes, respawn till the lmem process completes */
>  	igt_fork_helper(&smem_loop[0]) {
>  		while (!READ_ONCE(*lmem_done)) {
> -			igt_fork(child, 1) {
> +			struct igt_helper_process smem_proc = {};
> +
> +			igt_fork_helper(&smem_proc) {
>  				for (int pass = 0; pass < num_alloc; pass++) {
>  					if (READ_ONCE(*lmem_done))
>  						break;
> @@ -749,12 +751,14 @@ static void test_smem_oom(int i915,
>  			 * killed by the oom killer, don't call
>  			 * igt_waitchildren because of the noise
>  			 */
> -			wait(NULL);
> +			igt_wait_helper(&smem_proc);
>  		}
>  	}
>  	igt_fork_helper(&smem_loop[1]) {
>  		while (!READ_ONCE(*lmem_done)) {
> -			igt_fork(child, 1) {
> +			struct igt_helper_process smem_proc = {};
> +
> +			igt_fork_helper(&smem_proc) {
>  				int fd = drm_reopen_driver(i915);
>  
>  				for (int pass = 0; pass < num_alloc; pass++) {
> @@ -764,7 +768,7 @@ static void test_smem_oom(int i915,
>  				}
>  				drm_close_driver(fd);
>  			}
> -			wait(NULL);
> +			igt_wait_helper(&smem_proc);
>  		}
>  	}
>  
> -- 
> 2.53.0
> 
