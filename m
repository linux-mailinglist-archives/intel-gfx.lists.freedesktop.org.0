Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id QdqwNv9RH2oakQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 02 Jun 2026 23:58:23 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D3C10632401
	for <lists+intel-gfx@lfdr.de>; Tue, 02 Jun 2026 23:58:22 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=VPXyvy+e;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 60824113B40;
	Tue,  2 Jun 2026 21:58:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3209F113B40;
 Tue,  2 Jun 2026 21:58:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780437500; x=1811973500;
 h=date:from:to:cc:subject:in-reply-to:message-id:
 references:mime-version;
 bh=MfkKPtXQcB8aUW3HP/zdBEUmEP6RpNmrG8kxLpJOJ2o=;
 b=VPXyvy+ekPz9+LjTiD8Wod93P9zfGghZZ9uUFqLbepXVaI2Mrmxpq3eX
 y+F1wGfLodgC0hNHQzDv1MktyECGXhU6o0GZY1hTdcTDXmt2WOxBK+gL/
 /s1L5LJ/c71wNG8v6GEW8VbQKdxcHKDh8qXx1w2MpoDQ7udUjEQchLxCh
 gL8WtALaAZMNAuMj5p8zixodyFOCmLbW4knnKPqVS185YfEx/m4SzvZjy
 PYNsjfdukE8yVua7V8+SdJE23ZhWSlZeDrCroh84ZnYTl//7cYa4YuwbJ
 EIjU9SEHOeI1ljqPOJKjqgfl8Y+P/VoLi7C4lYuzpCmbGv70xc5VHDgoH w==;
X-CSE-ConnectionGUID: fUbyu5dzRt6AOmw1XOCfwg==
X-CSE-MsgGUID: opy6VB8qSOe1UzZbddZ9KA==
X-IronPort-AV: E=McAfee;i="6800,10657,11805"; a="91547644"
X-IronPort-AV: E=Sophos;i="6.24,183,1774335600"; d="scan'208";a="91547644"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2026 14:58:19 -0700
X-CSE-ConnectionGUID: vIF6VZFiQcy0HsyxwYX7oA==
X-CSE-MsgGUID: Ll/EKqWaSNeDih+M8w0nBQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,183,1774335600"; d="scan'208";a="248318077"
Received: from dev-417.igk.intel.com ([10.91.214.181])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2026 14:58:16 -0700
Date: Tue, 2 Jun 2026 23:58:14 +0200 (CEST)
From: =?ISO-8859-2?Q?Micha=B3_Grzelak?= <michal.grzelak@intel.com>
To: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
cc: =?ISO-8859-2?Q?Micha=B3_Grzelak?= <michal.grzelak@intel.com>, 
 dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, 
 intel-xe@lists.freedesktop.org, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, 
 Thomas Zimmermann <tzimmermann@suse.de>
Subject: Re: [PATCH v2 2/2] drm/managed: fix drmm_add_action() kernel-doc
In-Reply-To: <e645a8cf-45a2-423c-81c5-cdb9f6c57faf@intel.com>
Message-ID: <423f5568-0cc6-8e28-8886-9178d78847c8@intel.com>
References: <20260522135520.1862848-1-michal.grzelak@intel.com>
 <20260522135520.1862848-3-michal.grzelak@intel.com>
 <e645a8cf-45a2-423c-81c5-cdb9f6c57faf@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-18171511-1780437498=:1544314"
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
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
	RCPT_COUNT_SEVEN(0.00)[8];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[michal.grzelak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:dkim,intel.com:from_mime,intel.com:email,lists.freedesktop.org:from_smtp,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D3C10632401

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-18171511-1780437498=:1544314
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8BIT

On Tue, 26 May 2026, Borah, Chaitanya Kumar wrote:
> On 5/22/2026 7:25 PM, Michał Grzelak wrote:
>> Kernel-doc of drmm_add_action() references @releases which is not
>> on argument list. Swap '@' between 'releases' and 'action' words to fix
>> the documentation.
>> 
>
> LGTM
> Reviewed-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
>

Thank you Chaitanya for the review. Do you think this series can be
merged via drm-misc-next branch from drm-misc [1]? Asking because I
don't have commiter right to any of drm-* repositories.

BR,
Michał

[1] https://drm.pages.freedesktop.org/maintainer-tools/repositories/drm-misc.html

>> Signed-off-by: Michał Grzelak <michal.grzelak@intel.com>
>> ---
>>   include/drm/drm_managed.h | 2 +-
>>   1 file changed, 1 insertion(+), 1 deletion(-)
>> 
>> diff --git a/include/drm/drm_managed.h b/include/drm/drm_managed.h
>> index 72bfac002c06..72d0d68be226 100644
>> --- a/include/drm/drm_managed.h
>> +++ b/include/drm/drm_managed.h
>> @@ -18,7 +18,7 @@ typedef void (*drmres_release_t)(struct drm_device *dev, 
>> void *res);
>>    * @action: function which should be called when @dev is released
>>    * @data: opaque pointer, passed to @action
>>    *
>> - * This function adds the @release action with optional parameter @data to 
>> the
>> + * This function adds the release @action with optional parameter @data to 
>> the
>>    * list of cleanup actions for @dev. The cleanup actions will be run in 
>> reverse
>>    * order in the final drm_dev_put() call for @dev.
>>    */
>
>
--8323329-18171511-1780437498=:1544314--
