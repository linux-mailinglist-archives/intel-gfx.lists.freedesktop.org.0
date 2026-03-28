Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4JaVBxn8x2mIfwUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Sat, 28 Mar 2026 17:04:41 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A0EB934F17B
	for <lists+intel-gfx@lfdr.de>; Sat, 28 Mar 2026 17:04:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A450E10E2EB;
	Sat, 28 Mar 2026 16:04:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jCNXjvpT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0BB2010E488;
 Sat, 28 Mar 2026 16:04:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774713877; x=1806249877;
 h=date:from:to:cc:subject:in-reply-to:message-id:
 references:mime-version;
 bh=v3byWBcwS2L6U3ZSnqbpXRmpCDFtUvWoyGEte0N/RxU=;
 b=jCNXjvpT4Nk0JYnaa/uG3XijOAfnrW+fV87+m5Ai/7PekDm14UoWR0wK
 H2cF8kCTceK182Y47JPyfT7FofcfYGbq6luP4XJH8wTiXYabfK5APIb2b
 YahWS9TqlFabp12EUDixzYPrjAV7BPTth9B9TDiFAmGKuCRnJRFAFll/s
 FbB5SLfkyewXKcYIjV1Nm++hmK2Pm9SbpLQYz+4ik4JPGkirvihJL+BGk
 a9AeK6/a7VuSFWQ6YjW0sTDVY8sbzGiIl+9TNnHLM6ky8P19U05JWpj+E
 3uy3/s/g3l08os4LoBET0TQjF7mnMukN/nPtwClroOjhVqPXGkTrhYYZ8 g==;
X-CSE-ConnectionGUID: E1oiY66vQKOsSqZIcIAeMg==
X-CSE-MsgGUID: 7fxJloJ6QXOkpd+qsbGszg==
X-IronPort-AV: E=McAfee;i="6800,10657,11742"; a="75785592"
X-IronPort-AV: E=Sophos;i="6.23,146,1770624000"; d="scan'208";a="75785592"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2026 09:04:37 -0700
X-CSE-ConnectionGUID: 6lOroB/4Q8Cm41tNwPLA6Q==
X-CSE-MsgGUID: 28wa6Eg0QX6UpGlHk1mWWA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,146,1770624000"; d="scan'208";a="227206085"
Received: from administrator-system-product-name.igk.intel.com
 ([10.91.214.181])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2026 09:04:35 -0700
Date: Sat, 28 Mar 2026 17:04:33 +0100 (CET)
From: =?ISO-8859-2?Q?Micha=B3_Grzelak?= <michal.grzelak@intel.com>
To: =?ISO-8859-2?Q?Micha=B3_Grzelak?= <michal.grzelak@intel.com>
cc: Ville Syrjala <ville.syrjala@linux.intel.com>, 
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org, 
 Nemesa Garg <nemesa.garg@intel.com>
Subject: Re: [PATCH 7/9] drn/i915/casf: Remove redundant argument from
 intel_casf_filter_lut_load()
In-Reply-To: <6fb36f40-3ab8-fc68-b065-778ea51790e9@intel.com>
Message-ID: <71ea53e3-b7bc-a400-500b-16f56a0e8c08@intel.com>
References: <20260326223139.19116-1-ville.syrjala@linux.intel.com>
 <20260326223139.19116-8-ville.syrjala@linux.intel.com>
 <6fb36f40-3ab8-fc68-b065-778ea51790e9@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-1270047851-1774713876=:601923"
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
X-Spamd-Result: default: False [0.33 / 15.00];
	CTYPE_MIXED_BOGUS(1.00)[];
	R_MIXED_CHARSET(0.64)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[multipart/mixed,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[michal.grzelak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCPT_COUNT_FIVE(0.00)[5];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: A0EB934F17B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-1270047851-1774713876=:601923
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8BIT

On Fri, 27 Mar 2026, Michał Grzelak wrote:
> On Thu, 26 Mar 2026, Ville Syrjala wrote:
>> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>> 
>> intel_casf_filter_lut_load() can find the crtc from the crtc_state.
>> No need to pass in both.
>> 
>> Cc: Nemesa Garg <nemesa.garg@intel.com>
>> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
>
> Reviewed-by: Michał Grzelak <michal.grzelak@intel.com>
>

Late nit: s/drn/drm in the title :)

BR,
Michał
--8323329-1270047851-1774713876=:601923--
