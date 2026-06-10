Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 50TpCw4sKWrERwMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jun 2026 11:19:10 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A9518667BF9
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jun 2026 11:19:09 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=V8DCx0xN;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4014110E832;
	Wed, 10 Jun 2026 09:19:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A922410E832;
 Wed, 10 Jun 2026 09:19:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781083147; x=1812619147;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=dwapQEy2n2Hj9nMMfGh69aztzW/1dF/qDd9o71ii/VE=;
 b=V8DCx0xNIWLXJP0jZYtWhaZoBR5u846vXdEcuhnH3EZzzIxVk0C3ZCOs
 +G/0LikrTjmgFMVCEXnLBjszpD34q7i3vMiel0UuqqXzyQoDlUdMGh5hR
 gId9Hkle6YZnRST5FklOWYVBRA75E5VYAC17IcZ5Zae96H8GoIvkgdFwa
 kiZsORqHHEk4Ivtr+P2/S2ArmTZNYy3yp1Emg5HDdDxEfHlNW1EUbP44T
 WZbqDz9uREjDHLZ60H2oI+8CbXwsmasbDgnVkRS8c4B7JeNJqquaAxLt3
 OkkpnlzwUHrSehw7hfjzTbEDjAuA1cui9oxiLWZBIaCM/w8dH2asQfTnv A==;
X-CSE-ConnectionGUID: awMHQn2vSqGoq4dzyX7vxg==
X-CSE-MsgGUID: hxUjKWbxQS2b0ZkJ0TPjSQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11812"; a="104536219"
X-IronPort-AV: E=Sophos;i="6.24,197,1774335600"; d="scan'208";a="104536219"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2026 02:19:07 -0700
X-CSE-ConnectionGUID: /Ei/dYc+Q5mNZdrcQARsGA==
X-CSE-MsgGUID: 5N8B1EWkQjC0HlKZrilCnQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,197,1774335600"; d="scan'208";a="245974140"
Received: from fpallare-mobl4.ger.corp.intel.com (HELO localhost)
 ([10.245.244.3])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2026 02:19:06 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 0/8] drm/i915/color: cleanup plane pre/post csc lut code
In-Reply-To: <3592f764-7e02-49ed-995b-f3c55c315df0@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <cover.1780499355.git.jani.nikula@intel.com>
 <3592f764-7e02-49ed-995b-f3c55c315df0@intel.com>
Date: Wed, 10 Jun 2026 12:19:02 +0300
Message-ID: <501ed863d5f1c34e0392cddfb5c20b6f4811c551@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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
X-Spamd-Result: default: False [-0.81 / 15.00];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp,intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A9518667BF9

On Mon, 08 Jun 2026, "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com> wrote:
> On 6/3/2026 8:44 PM, Jani Nikula wrote:
>> While reviewing some patches I noticed the
>> xelpd_program_plane_pre_csc_lut() and xelpd_program_plane_post_csc_lut()
>> functions were a bit convoluted. Reduce the number of loops in each from
>> four to one, among other things.
>
>
> Other than the nit in patch 7, LGTM.
>
> Reviewed-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>

Thanks for the review, pushed to din, fixed the whitespace while
applying.

BR,
Jani.

>
>> 
>> BR,
>> Jani.
>> 
>> 
>> Jani Nikula (8):
>>    drm/i915/color: clean up variables in
>>      xelpd_program_plane_pre_csc_lut()
>>    drm/i915/color: clean up variables in
>>      xelpd_program_plane_post_csc_lut()
>>    drm/i915/color: reduce indent in xelpd_program_plane_pre_csc_lut()
>>    drm/i915/color: reduce indent in xelpd_program_plane_post_csc_lut()
>>    drm/i915/color: join loops in xelpd_program_plane_pre_csc_lut()
>>    drm/i915/color: join loops in xelpd_program_plane_post_csc_lut()
>>    drm/i915/color: deduplicate loops in xelpd_program_plane_pre_csc_lut()
>>    drm/i915/color: deduplicate loops in
>>      xelpd_program_plane_post_csc_lut()
>> 
>>   drivers/gpu/drm/i915/display/intel_color.c | 117 ++++++++-------------
>>   1 file changed, 45 insertions(+), 72 deletions(-)
>> 
>

-- 
Jani Nikula, Intel
