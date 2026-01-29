Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +AjhE+bve2keJgIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Jan 2026 00:40:22 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DD28B5BD9
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Jan 2026 00:40:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E74C310E144;
	Thu, 29 Jan 2026 23:40:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OOUAUFch";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5F8A910E144;
 Thu, 29 Jan 2026 23:40:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769730017; x=1801266017;
 h=date:from:to:cc:subject:in-reply-to:message-id:
 references:mime-version;
 bh=EeJHdXLpUbXmfjf7GoXb4csH9iYFb2OQHF5cIIK7b34=;
 b=OOUAUFchlSl9fMrQukZehbkhWitt96XCRm5apHwaOhJ6tW/nTE7m4J3A
 NNb9OSEcpmQGT2iShzJfC/3m+D9F+mLjKvanGT5sLenmmA9H7X7GjnzcX
 LdkMhZAWabt8pQxp1hGhpY9f6cjp8BZ9PkhCpYS5CcTHuhxp7S245Btej
 0PNgdxnpMgrdaq4JwblfEDYWNbf9/4fL0NY4tOOs+e3X6gMjpOJQg/MDq
 CvjpEyfYmhnomToZ31ZyzArmqzQhQz86qcwR2HBZR7DoprZUfpbQECIJO
 kBDqjNWqFbKawSB3h6QyeEExmrGtN1EkSxRzkdseM7BlJlkgafF0rfhcw w==;
X-CSE-ConnectionGUID: FZdYx4jGQZmuiVeGo2mzmg==
X-CSE-MsgGUID: Df8Esat4RuKCNxSM/prGaw==
X-IronPort-AV: E=McAfee;i="6800,10657,11686"; a="82350832"
X-IronPort-AV: E=Sophos;i="6.21,261,1763452800"; d="scan'208";a="82350832"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2026 15:40:17 -0800
X-CSE-ConnectionGUID: hLdrIAV9TamdsE1+FL3JSw==
X-CSE-MsgGUID: Fumg6Ek2QO2BmLZDWdgvBA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,261,1763452800"; d="scan'208";a="213615588"
Received: from administrator-system-product-name.igk.intel.com
 ([10.91.214.181])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2026 15:40:15 -0800
Date: Fri, 30 Jan 2026 00:40:13 +0100 (CET)
From: =?ISO-8859-2?Q?Micha=B3_Grzelak?= <michal.grzelak@intel.com>
To: Andi Shyti <andi.shyti@linux.intel.com>
cc: =?ISO-8859-2?Q?Micha=B3_Grzelak?= <michal.grzelak@intel.com>, 
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org, 
 Jani Nikula <jani.nikula@intel.com>, 
 Krzysztof Karas <krzysztof.karas@intel.com>, 
 Sebastian Brzezinka <sebastian.brzezinka@intel.com>, 
 Krzysztof Niemiec <krzysztof.niemiec@intel.com>, 
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Subject: Re: [PATCH v2 1/1] i915/i915_driver: move intel_gvt_init() level
 higher
In-Reply-To: <aXtasNhZFdaqbnAm@ashyti-mobl2.lan>
Message-ID: <0a6b4d7e-4eb2-c81a-6f49-209d67eeaaf7@intel.com>
References: <20260129090129.2601661-1-michal.grzelak@intel.com>
 <20260129090129.2601661-2-michal.grzelak@intel.com>
 <aXtasNhZFdaqbnAm@ashyti-mobl2.lan>
MIME-Version: 1.0
Content-Type: multipart/mixed;
 boundary="8323329-1256697926-1769730016=:2616878"
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	CTYPE_MIXED_BOGUS(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[multipart/mixed,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+,1:+];
	DKIM_TRACE(0.00)[intel.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[michal.grzelak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[9];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	ARC_NA(0.00)[]
X-Rspamd-Queue-Id: 6DD28B5BD9
X-Rspamd-Action: no action

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-1256697926-1769730016=:2616878
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8BIT

On Thu, 29 Jan 2026, Andi Shyti wrote:
> Hi Michal,
>
> On Thu, Jan 29, 2026 at 10:01:29AM +0100, Michał Grzelak wrote:
>> Both initialisation and removal of GVT happen at different abstraction
>> levels. Hence caller of i915_driver_hw_probe() has no way of knowing
>> status of intel_gvt_init(). This can lead to an unbalanced number of
>> calls of intel_gvt_init() and intel_gvt_driver_remove() since GVT error
>> path is currently handled in i915_driver_probe(). One such scenario has
>> been seen with i915_driver_hw_probe() fault injection, which caused
>> double entry deletion and list corruption.
>>
>> Move intel_gvt_init() up to i915_driver_probe(). Add out_cleanup_gvt
>> error path for removing gvt. Trigger it only after intel_gvt_init()
>> succeeded.
>>
>> In case intel_gvt_init() failed, theoretically we should follow err_msi
>> error path. That is actually impossible since call to intel_gvt_init()
>> unconditionally returns 0, although it claims to return negative error
>> code on failure. Thus follow standard out_cleanup_hw error path on a
>> hypothetical future intel_gvt_init() failure. Remove err_msi label from
>> i915_driver_hw_probe() since intel_gvt_init() was the only user of it.
>>
>> Changelog:
>> v1->v2
>> - don't move err_msi error path from i915_driver_hw_probe (Jani)
>> - rewrite commit message
>>
>> Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15481
>> Signed-off-by: Michał Grzelak <michal.grzelak@intel.com>
>
> Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Thank you Andi for the review. Do you have any suggestion via which tree
should the patch be merged? Asking since I don't have commit right to
any of drm-* repositories.

BR,
Michał
--8323329-1256697926-1769730016=:2616878--
