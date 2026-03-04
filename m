Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uNtZHLBdqGmZtgAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 04 Mar 2026 17:28:32 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C9E4620441B
	for <lists+intel-gfx@lfdr.de>; Wed, 04 Mar 2026 17:28:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5F56B10EA69;
	Wed,  4 Mar 2026 16:28:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="E+o/RcmQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C010110EA5D
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Mar 2026 16:28:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772641709; x=1804177709;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=zhc+NNlX0FV3XpzGZXlEzYrsakM6xQQRm5r7JCSJQoI=;
 b=E+o/RcmQdUpLh4PDL6qnlUSMfIPCqcZrsG2/gFJzSRlydqC2aqfK9Q2y
 QYrh8iiG6bosPI6ecBxRJqtLnBxAKyAUlsXt3tK1nOxkjRfgF2ApBssbd
 Bk6Iw7CJIZrak19AYBdyz617DH2BlaK5sJCdVfXOixSGZFqLmYrSR64W2
 HFH+4RukpLkzuFE3aEMiXLmp3FhKzfRPLAffqt3msmB6sYmodNQYbIcCN
 CevIE8CplviX9MzF8etrDGFOxIh/R3psMomK3trE9tIod6klB7c/M33Gj
 p+SIh55HI92pxM2pJV52oxLnp70Wlcsj1Wv1Kn7RV4KSoKlwr0b+ZeouT g==;
X-CSE-ConnectionGUID: eoD2w6dZQjOGPzzlZuODsw==
X-CSE-MsgGUID: wIUYEgrpRLK65KUq2IX6mw==
X-IronPort-AV: E=McAfee;i="6800,10657,11719"; a="76309442"
X-IronPort-AV: E=Sophos;i="6.21,324,1763452800"; d="scan'208";a="76309442"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2026 08:28:28 -0800
X-CSE-ConnectionGUID: gbngSoRBRIeJoQK6qBsQkw==
X-CSE-MsgGUID: gHVeylklSwy8Vbcnt4Uu6g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,324,1763452800"; d="scan'208";a="217553989"
Received: from krybak-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.84])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2026 08:28:26 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Christian =?utf-8?Q?K=C3=B6nig?= <christian.koenig@amd.com>, Sebastian
 Brzezinka <sebastian.brzezinka@intel.com>, intel-gfx@lists.freedesktop.org
Cc: andi.shyti@linux.intel.com
Subject: Re: [PATCH v2] drm/ttm: fix NULL deref in ttm_bo_flush_all_fences()
 after fence ops detach
In-Reply-To: <cda3a318-fed1-4779-9c83-b0d8a5178775@amd.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <1c2f34351b6fb70ab576aeac07987542a4d480b2.1772540459.git.sebastian.brzezinka@intel.com>
 <cda3a318-fed1-4779-9c83-b0d8a5178775@amd.com>
Date: Wed, 04 Mar 2026 18:28:23 +0200
Message-ID: <70936dccd9ed65e8175f6cb1a0ba1864d82d5a3a@intel.com>
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
X-Rspamd-Queue-Id: C9E4620441B
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.31 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:christian.koenig@amd.com,m:sebastian.brzezinka@intel.com,m:andi.shyti@linux.intel.com,s:lists@lfdr.de];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_SENDER(0.00)[jani.nikula@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,gitlab.freedesktop.org:url,intel.com:dkim,intel.com:email,intel.com:mid,amd.com:email]
X-Rspamd-Action: no action

On Tue, 03 Mar 2026, Christian K=C3=B6nig <christian.koenig@amd.com> wrote:
> On 3/3/26 13:26, Sebastian Brzezinka wrote:
>> Since commit 541c8f2468b9 ("dma-buf: detach fence ops on signal v3"),
>> fence->ops may be set to NULL via RCU when a fence signals and has no
>> release/wait ops. ttm_bo_flush_all_fences() was not updated to handle
>> this and directly dereferences fence->ops->signaled, leading to a NULL
>> pointer dereference crash:
>>=20
>> ```
>> BUG: kernel NULL pointer dereference, address: 0000000000000018
>> RIP: 0010:ttm_bo_release+0x1bc/0x330 [ttm]
>> ```
>>=20
>> Since dma_fence_enable_sw_signaling() already handles the signaled case
>> internally (it checks DMA_FENCE_FLAG_SIGNALED_BIT before doing anything),
>> the ops->signaled pre-check is redundant. Simply remove it and call
>> dma_fence_enable_sw_signaling() unconditionally for each fence.
>>=20
>> Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15759
>> Fixes: 541c8f2468b9 ("dma-buf: detach fence ops on signal v3")
>> Cc: Christian K=C3=B6nig <christian.koenig@amd.com>
>> Signed-off-by: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
>
> Reviewed-by: Christian K=C3=B6nig <christian.koenig@amd.com>
>
> Going to push that to drm-misc-next now.

Christian, did you forget to push or is there still something missing
here?

Sebastian, for future reference, drm/ttm patches need to be sent to the
dri-devel mailing list. I bounced the patch there now. See MAINTAINERS
and/or use scripts/get_maintainer.pl to see where you need to send the
patches. The intel-gfx list is sufficient for i915 changes only.

BR,
Jani.


>
> Thanks,
> Christian.
>
>> ---
>>  drivers/gpu/drm/ttm/ttm_bo.c | 6 ++----
>>  1 file changed, 2 insertions(+), 4 deletions(-)
>>=20
>> diff --git a/drivers/gpu/drm/ttm/ttm_bo.c b/drivers/gpu/drm/ttm/ttm_bo.c
>> index acb9197db879..0485ad00a3df 100644
>> --- a/drivers/gpu/drm/ttm/ttm_bo.c
>> +++ b/drivers/gpu/drm/ttm/ttm_bo.c
>> @@ -222,10 +222,8 @@ static void ttm_bo_flush_all_fences(struct ttm_buff=
er_object *bo)
>>         struct dma_fence *fence;
>>=20
>>         dma_resv_iter_begin(&cursor, resv, DMA_RESV_USAGE_BOOKKEEP);
>> -       dma_resv_for_each_fence_unlocked(&cursor, fence) {
>> -               if (!fence->ops->signaled)
>> -                       dma_fence_enable_sw_signaling(fence);
>> -       }
>> +       dma_resv_for_each_fence_unlocked(&cursor, fence)
>> +               dma_fence_enable_sw_signaling(fence);
>>         dma_resv_iter_end(&cursor);
>>  }
>>=20
>> --
>> 2.52.0
>>=20
>

--=20
Jani Nikula, Intel
