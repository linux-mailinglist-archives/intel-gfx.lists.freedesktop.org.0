Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id C1TsCpRZJ2ozvAIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 09 Jun 2026 02:08:52 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C659465B46E
	for <lists+intel-gfx@lfdr.de>; Tue, 09 Jun 2026 02:08:51 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=RCzEA1XY;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB0FE10E00C;
	Tue,  9 Jun 2026 00:08:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3BE8E10E002;
 Tue,  9 Jun 2026 00:08:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780963727; x=1812499727;
 h=date:from:to:cc:subject:in-reply-to:message-id:
 references:mime-version;
 bh=HjNCLKaSFoUeCYJx8BWxkyPNo9GgvwdwHzcyNfqgvYg=;
 b=RCzEA1XYg/8bEj36dDeUbEOu9pE2Hf7rHg3jyus/oZj6ZF4gdI/k11D8
 prlEQ8p+SJuAQsR7bIJROhGTO4xck70nw9yOZFhOQyR1imdn+yVdPVRtM
 1JL6YQZ0Ul2VyzyejVJAo2KQXjXaxhuqPmdWxtGY0LzuPhdWJmwKcChO5
 dcAfUH5pfSK5Zlpjt0HI86PI+DcqxU/FToisQaLRrCWIhkOUhCed0BA6r
 +sPdZa4R3azIAfKbkJwn76gYAosN9ilJQGQcB1oAKdLvtlComE71VCd24
 yRk3dUOaMl1WX6kaLi2QLz6LO7nJeE/NrXNA9IyfMGAGxMg1hJ+SUEYeX g==;
X-CSE-ConnectionGUID: zGYAa2O/Sz2DeithMsi6YA==
X-CSE-MsgGUID: iiyGtY0HT9CVdpWQwaPDFw==
X-IronPort-AV: E=McAfee;i="6800,10657,11811"; a="81899639"
X-IronPort-AV: E=Sophos;i="6.24,195,1774335600"; d="scan'208";a="81899639"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2026 17:08:46 -0700
X-CSE-ConnectionGUID: NsxhP8phRVi1/a3xO/1q9w==
X-CSE-MsgGUID: pnERySuGSY+H3GT5PuL8HQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,195,1774335600"; d="scan'208";a="241254775"
Received: from dev-417.igk.intel.com ([10.91.214.181])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2026 17:08:44 -0700
Date: Tue, 9 Jun 2026 02:08:41 +0200 (CEST)
From: =?ISO-8859-2?Q?Micha=B3_Grzelak?= <michal.grzelak@intel.com>
To: =?ISO-8859-15?Q?Christian_K=F6nig?= <christian.koenig@amd.com>
cc: =?ISO-8859-2?Q?Micha=B3_Grzelak?= <michal.grzelak@intel.com>, 
 dri-devel@lists.freedesktop.org, amd-gfx@lists.freedesktop.org, 
 intel-gfx@lists.freedesktop.org, Vitaly Prosyak <vitaly.prosyak@amd.com>, 
 Alex Deucher <alexander.deucher@amd.com>
Subject: Re: [PATCH 1/1] drm/amdgpu: check individual moved list instead of
 invalidated
In-Reply-To: <bb2adbe0-5962-4b33-a245-02a11c8cf64b@amd.com>
Message-ID: <413a738c-2f24-571a-b3bd-4be2131d2261@intel.com>
References: <20260512162711.51118-4-christian.koenig@amd.com>
 <20260608122316.3131299-1-michal.grzelak@intel.com>
 <20260608122316.3131299-2-michal.grzelak@intel.com>
 <bb2adbe0-5962-4b33-a245-02a11c8cf64b@amd.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-669222198-1780963725=:1544314"
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
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[multipart/mixed,text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[michal.grzelak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,gitlab.freedesktop.org:url,intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C659465B46E

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-669222198-1780963725=:1544314
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8BIT

On Mon, 8 Jun 2026, Christian König wrote:
> On 6/8/26 14:23, Michał Grzelak wrote:
>> Checking `invalidated` field causes build to fail since it is absent in
>> struct amdgpu_vm. Replace it with &vm->individual.moved identically
>> as did commit 59720bfd8c6d ("drm/amdgpu: restart the CS if some parts of
>> the VM are still invalidated").
>>
>> Cc: Vitaly Prosyak <vitaly.prosyak@amd.com>
>> Cc: Christian König <christian.koenig@amd.com>
>> Cc: Alex Deucher <alexander.deucher@amd.com>
>> Fixes: 40396ffdf612 ("drm/amdgpu: restart the CS if some parts of the VM are still invalidated")
>> Signed-off-by: Michał Grzelak <michal.grzelak@intel.com>
>
> The field is renamed by a different patch so looks like a rebase/merge issue to me, could be that the Fixes tag needs double checking.

My poor understanding is that commit 40396ffdf612 ("drm/amdgpu: restart
the CS if some parts of the VM are still invalidated") got introduced
into drm-tip after amd-drm-fixes-7.1-2026-06-04 got merged into drm-tip
at commit 2aaaf5931b16 ("Merge tag 'amd-drm-fixes-7.1-2026-06-04' of
https://gitlab.freedesktop.org/agd5f/linux into drm-fixes") which I
assume caused this build to fail. Meanwhile the commit should be a
backport of commit 59720bfd8c6d ("drm/amdgpu: restart the CS if some
parts of the VM are still invalidated") from amd-drm-next-7.2-2026-06-04
tag.

Thus I marked commit 40396ffdf612 ("drm/amdgpu: restart the CS if some
parts of the VM are still invalidated") in Fixes: tag from drm-tip
perspective, but I'm not sure if the description above applies nor have
clue how to properly tag it :(. Could you give any hints on which commit
should be actually put in Fixes:?

>
> But either way Reviewed-by: Christian König <christian.koenig@amd.com>

Thank you Christian for the review. Assuming Fixes: is corrected, do you
think this could be applied via drm-misc/drm-misc-fixes? Asking since I
don't have commit right to any of drm-* repositories.

BR,
Michał

>
> Thanks,
> Christian.
>
>> ---
>>  drivers/gpu/drm/amd/amdgpu/amdgpu_cs.c | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_cs.c b/drivers/gpu/drm/amd/amdgpu/amdgpu_cs.c
>> index 548a4f14a9f8..5d8f5848bc0e 100644
>> --- a/drivers/gpu/drm/amd/amdgpu/amdgpu_cs.c
>> +++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_cs.c
>> @@ -1323,7 +1323,7 @@ static int amdgpu_cs_submit(struct amdgpu_cs_parser *p,
>>  		e->range = NULL;
>>  	}
>>
>> -	if (r || !list_empty(&vm->invalidated)) {
>> +	if (r || !list_empty(&vm->individual.moved)) {
>>  		r = -EAGAIN;
>>  		mutex_unlock(&p->adev->notifier_lock);
>>  		return r;
>
>
--8323329-669222198-1780963725=:1544314--
