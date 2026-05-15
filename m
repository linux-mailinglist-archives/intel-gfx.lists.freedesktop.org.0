Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sBUeMMb7Bmp1qQIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 15 May 2026 12:56:06 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E380754DD87
	for <lists+intel-gfx@lfdr.de>; Fri, 15 May 2026 12:56:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E2CB410E0E3;
	Fri, 15 May 2026 10:56:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bdN1+sK3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5D25710E0DC;
 Fri, 15 May 2026 10:56:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778842562; x=1810378562;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=0hpQ3eqgVnYm1Kjk6SCVxZ0Ht7jUtmMfjjaA7kgdvfE=;
 b=bdN1+sK3YoW1HViep/HlulPBexRhgWL03WGp9kab5QlJY0Qrg/U7nSHG
 tEOrqDfxdAICwHF6JIET1xA09nVMd6n40ZWhThI0TYVimKVs3LqSFFUFJ
 QSYMMU1wMs5rmdLuWMd/j02L6Z2yHdqm2NMdX/Tu1hO6wDlQilY3IN5/d
 NPF+bflPnG2lAD4/X//HS0pm8v66NvmCCqR2wExs83iHqPbwYKREMguYP
 /k35bAcYHZ6cJW6252pFg1im6sS7FziuqX56rWEzy2Y07kjlmqtPzkT01
 RoWwlYsiDh4qBa0VoE0m9JYESPAp9IbnQ2yYKUSEw+Ve2Z5te/DUns+A1 w==;
X-CSE-ConnectionGUID: O/nS/jo0TYyKP4sDYIv+HQ==
X-CSE-MsgGUID: RtwQtaB6RCSyaMaF5xSzrA==
X-IronPort-AV: E=McAfee;i="6800,10657,11786"; a="79916249"
X-IronPort-AV: E=Sophos;i="6.23,236,1770624000"; d="scan'208";a="79916249"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2026 03:56:02 -0700
X-CSE-ConnectionGUID: VcJZBHhiSdquqChcLTZrxQ==
X-CSE-MsgGUID: 1+SiHZlqQjybL1jXwOOHGQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,236,1770624000"; d="scan'208";a="234228228"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.245.71])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2026 03:56:00 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: Re: [PATCH 0/4] drm/i915/dp: Adaptive Sync SDP readback fixes
In-Reply-To: <c914295e-fa39-41ca-8159-c134301fd234@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260511123218.1589830-1-ankit.k.nautiyal@intel.com>
 <c914295e-fa39-41ca-8159-c134301fd234@intel.com>
Date: Fri, 15 May 2026 13:55:57 +0300
Message-ID: <b66d66d4ff30865acbcb090cc28892f8b5bdef8e@intel.com>
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
X-Rspamd-Queue-Id: E380754DD87
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_RHS_MATCH_TO(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6]
X-Rspamd-Action: no action

On Thu, 14 May 2026, "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com> wrote:
> On 5/11/2026 6:02 PM, Ankit Nautiyal wrote:
>> This series is a spin-off from the original series [1] addressing AS SDP
>> handling for Panel Replay and VRR.
>>
>> It fixes target_rr readback and improves overall Adaptive Sync SDP
>> readback handling.
>>
>> Split out for easier review and merging.
>>
>> [1] https://patchwork.freedesktop.org/series/164512/
>
> Hi Jani,
>
> This series is reviewed and is ready to be merged, but one of the patch=20
> in the series depends on:
> 59e5e15fef9c ("drm/dp: Rename and relocate AS SDP payload field masks")
>
> which was recently merged in drm-next, so it doesn=E2=80=99t apply cleanl=
y on=20
> current drm-intel-next.
>
> Would it be possible to get a backmerge from drm-next into=20
> drm-intel-next to bring this in?

It's Rodrigo's turn this cycle. Cc'd.

> In hindsight, I realize that in such cases where there is a dependency=20
> on drm patches,
> I should have included them in a single series and asked for ack to=20
> merge via drm-intel-next.

Either way is fine, you just have to plan for the delay in this route.

BR,
Jani.



>
> I'll take care of this going forward.
>
> Thanks & Regards,
> Ankit
>
>
>
>>
>> Ankit Nautiyal (4):
>>    drm/i915/dp: Fix readback for target_rr in Adaptive Sync SDP
>>    drm/i915/dp: Use revision field of AS SDP data structure
>>    drm/i915/dp: Set sdp_type in AS SDP unpack
>>    drm/i915/dp: Include all relevant AS SDP fields in comparison
>>
>>   drivers/gpu/drm/i915/display/intel_display.c |  6 +++++-
>>   drivers/gpu/drm/i915/display/intel_dp.c      | 10 +++++-----
>>   2 files changed, 10 insertions(+), 6 deletions(-)
>>

--=20
Jani Nikula, Intel
