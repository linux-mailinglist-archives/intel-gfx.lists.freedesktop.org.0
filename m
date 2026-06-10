Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id odxUEEvsKWq0fgMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jun 2026 00:59:23 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6952266D446
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jun 2026 00:59:22 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=NHm133za;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A5B910E5BD;
	Wed, 10 Jun 2026 22:59:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 024E110E275;
 Wed, 10 Jun 2026 22:59:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781132358; x=1812668358;
 h=date:from:to:cc:subject:in-reply-to:message-id:
 references:mime-version:content-id;
 bh=22z12FCqaC4O6kQcaoMZhiri5mvWgFDRmaeh9wYfM1U=;
 b=NHm133zaectnat28obXdv+BBAM9ytFQN0QQikjM44RFV0xPe1gKX9NUh
 5nMOy1H25yOB+EaXkSwkJXZElpZZW5OZNiKhgD5xGZHwaLXgE2h6RqDCx
 X7EVsFyPA2iFBodzaPL9iWkd1KxJ5kK3hMozEkymlm9hbewiQeBcs02CL
 Ju2TATNvgEVg3fAvin48GbndnwpMtqP2lSGk7Ul+AnKsUqHtKlN5oBX+W
 gXLgI+MqRMbLKLBELQLvdASzoBlEd9NHdSaBXZS8/57XGy2pU/G3NdJfo
 GVz0hLtbPnZJoWtqG7iZ5hhFQb2dGW6z4R0E7M4OHebz9rrh7lOyqaSE6 g==;
X-CSE-ConnectionGUID: NEp/GY+jR1mtd8k9xWGRyQ==
X-CSE-MsgGUID: wMW0mn2UQcC7I6WuuVWp7A==
X-IronPort-AV: E=McAfee;i="6800,10657,11813"; a="92614165"
X-IronPort-AV: E=Sophos;i="6.24,197,1774335600"; d="scan'208";a="92614165"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2026 15:59:17 -0700
X-CSE-ConnectionGUID: uqxM3epXSwGfpW9K7d1U4g==
X-CSE-MsgGUID: 3KgcIutETHSsj7lSX57iUQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,197,1774335600"; d="scan'208";a="269982114"
Received: from dev-417.igk.intel.com ([10.91.214.181])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2026 15:59:16 -0700
Date: Thu, 11 Jun 2026 00:59:14 +0200 (CEST)
From: =?ISO-8859-2?Q?Micha=B3_Grzelak?= <michal.grzelak@intel.com>
To: =?ISO-8859-15?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
cc: =?ISO-8859-2?Q?Micha=B3_Grzelak?= <michal.grzelak@intel.com>, 
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org, 
 Nemesa Garg <nemesa.garg@intel.com>
Subject: Re: [PATCH v1 0/9] drm/i915/scaler: allocation cleanup
In-Reply-To: <ailcPBpmqJ0wa7--@intel.com>
Message-ID: <0931bff3-d845-62e9-9299-9e182225fc56@intel.com>
References: <20260609231217.208357-1-michal.grzelak@intel.com>
 <ailcPBpmqJ0wa7--@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="8323329-803622898-1781130265=:1544314"
Content-ID: <c6832b7d-23a3-4372-2e70-0abff62f2fdf@intel.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[multipart/mixed,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+];
	DKIM_TRACE(0.00)[intel.com:+];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[michal.grzelak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 6952266D446

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-803622898-1781130265=:1544314
Content-Type: text/plain; CHARSET=ISO-8859-2; format=flowed
Content-Transfer-Encoding: 8BIT
Content-ID: <245b27a7-85d1-aea9-4737-f0b1345f7bfb@intel.com>

On Wed, 10 Jun 2026, Ville Syrjälä wrote:
> On Wed, Jun 10, 2026 at 01:12:08AM +0200, Micha³ Grzelak wrote:
>> Apparently during review of commit 17d70a0760f2 ("drm/i915/casf: Extract
>> scaler_has_casf()") I missed that argument plane_state isn't used
>> anymore. While at it couple other fixes included.
>>
>> This series will almost surely need a better splitting than currently
>> is, but I hope now it is slightly easier to review.
>>
>> BR,
>> Micha³
>>
>>
>> Micha³ Grzelak (9):
>>   drm/i915/scaler: remove unused plane_state argument
>>   drm/i915/scaler: s/i/scaler_id/
>
> Those seem fine.
>
>>   drm/i915/scaler: de-Morgan-ize !scaler_has_casf()
>>   drm/i915/scaler: move independent CASF check
>>   drm/i915/scaler: check CASF before allocation's loop
>>   drm/i915/scaler: inline CASF scaler allocation
>>   drm/i915/scaler: linearize scaler allocation
>>   drm/i915/scaler: move CASF alloc check into
>>     intel_atomic_setup_scaler()
>>   drm/i915/scaler: move CASF alloc check into setup_crtc_scaler()
>
> This looks like it's replacing a simple "does this scale have CASF?"
> check with some kind of more complicated special casing of the CASF
> scaler elsewhere. I don't like it.

Basically this part was my attempt at "remove `continue`s from
allocation loop" following [1], but no idea how to do it without moving
& obscuring the CASF check. Anyways can drop those.

BR,
Micha³

[1] https://lore.kernel.org/intel-gfx/acZezWKFo1QwLAci@intel.com/

>
>>
>>  drivers/gpu/drm/i915/display/skl_scaler.c | 43 ++++++++++++-----------
>>  1 file changed, 22 insertions(+), 21 deletions(-)
>>
>> --
>> 2.45.2
>
> -- 
> Ville Syrjälä
> Intel
>
--8323329-803622898-1781130265=:1544314--
