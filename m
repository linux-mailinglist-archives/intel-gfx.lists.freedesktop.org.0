Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GJYKAYfjEGqOfAYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Sat, 23 May 2026 01:15:19 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BD6F5BB681
	for <lists+intel-gfx@lfdr.de>; Sat, 23 May 2026 01:15:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8694410E590;
	Fri, 22 May 2026 23:15:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kVfZu19G";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A75B110E590;
 Fri, 22 May 2026 23:15:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779491715; x=1811027715;
 h=date:from:to:cc:subject:in-reply-to:message-id:
 references:mime-version:content-id;
 bh=P6tOisLKTVm9Nme4i9b+tDhGcqStHTsNoXfRHuCVzA0=;
 b=kVfZu19GzstJOiYnI+CCCm+MVjNtFsdusvdME/Onxl6AJ4n6UvDq2mUO
 U4HoGZGk6tveN7UFPz+YPYYI/3jM2syC8kQ1Dtx0Z63wR95ezTeve0bYZ
 cnUWH5lzI+Bjl1k1QN3BAfOf2Vk8D8Iq8HDYAnI8q1upGeSk4Z2jT+r1T
 XgLdtGHMpLsiBbMhvOAanaplIdVfkfXw9ly74cAr3CsW+2iNRstx0T/lo
 IDqN1ofV5KmppKRr3bWK8/8N6by0GAXL6didKLrsqqqCuxxd3J1RydXgA
 JG6cvfhG/pLwFzGErkIP5fAzFe/SnXTvELyLX7H9AUXthCdBXQwc+jiV3 Q==;
X-CSE-ConnectionGUID: BS6Z+6toRMafbmrp/gpUlA==
X-CSE-MsgGUID: MscYTR7uRDSlITbderdWZw==
X-IronPort-AV: E=McAfee;i="6800,10657,11794"; a="84041294"
X-IronPort-AV: E=Sophos;i="6.24,163,1774335600"; d="scan'208";a="84041294"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2026 16:15:15 -0700
X-CSE-ConnectionGUID: nXI3XE8xReWbJcqGvU9gNw==
X-CSE-MsgGUID: Di4sODZMSjaCyHG3+4SlnA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,163,1774335600"; d="scan'208";a="236821210"
Received: from dev-417.igk.intel.com ([10.91.214.181])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2026 16:15:14 -0700
Date: Sat, 23 May 2026 01:15:12 +0200 (CEST)
From: =?ISO-8859-2?Q?Micha=B3_Grzelak?= <michal.grzelak@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 01/10] drm/i915/bw: Fix num_planes handling on TGL+
In-Reply-To: <20260522200346.17377-2-ville.syrjala@linux.intel.com>
Message-ID: <1a500c2b-e112-cc4b-8f76-dd94a3ad6478@intel.com>
References: <20260522200346.17377-1-ville.syrjala@linux.intel.com>
 <20260522200346.17377-2-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed;
 BOUNDARY="8323329-1254044371-1779491164=:1544314"
Content-ID: <9f358f9c-8a61-0348-9834-8daea5c00a95@intel.com>
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	CTYPE_MIXED_BOGUS(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[multipart/mixed,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[michal.grzelak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCPT_COUNT_THREE(0.00)[3];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Queue-Id: 0BD6F5BB681
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-1254044371-1779491164=:1544314
Content-Type: text/plain; CHARSET=ISO-8859-2; format=flowed
Content-Transfer-Encoding: 8BIT
Content-ID: <e00af2b3-acc6-53f8-46ba-0b732c90c4cb@intel.com>

On Fri, 22 May 2026, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>
> The TGL+ bw code has an off by one error on the num_planes
> calculation, and tgl_max_bw_index() incorrectly bumps
> the num_planes to 1 from 0.
>
> That approach made sense on ICL where num_planes is more or
> a less minimum number of planes to consider for the group,

Not entirely sure but sounds better to me when s/a less/less/.

Otherwise:
Reviewed-by: Micha³ Grzelak <michal.grzelak@intel.com>

BR,
Micha³

> but on TGL+ num_planes really is a maximum number of planes,
> so these adjustments no longer make any sense there.
>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
> drivers/gpu/drm/i915/display/intel_bw.c | 8 +-------
> 1 file changed, 1 insertion(+), 7 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
> index d7b2bc80f8e3..d10eebec196e 100644
> --- a/drivers/gpu/drm/i915/display/intel_bw.c
> +++ b/drivers/gpu/drm/i915/display/intel_bw.c
> @@ -636,8 +636,7 @@ static int tgl_get_bw_info(struct intel_display *display,
> 			bi_next = &display->bw.max[i + 1];
>
> 			if (clpchgroup < clperchgroup)
> -				bi_next->num_planes = (ipqdepth - clpchgroup) /
> -						       clpchgroup + 1;
> +				bi_next->num_planes = (ipqdepth - clpchgroup) / clpchgroup;
> 			else
> 				bi_next->num_planes = 0;
> 		}
> @@ -802,11 +801,6 @@ static unsigned int tgl_max_bw_index(struct intel_display *display,
> {
> 	int i;
>
> -	/*
> -	 * Let's return max bw for 0 planes
> -	 */
> -	num_planes = max(1, num_planes);
> -
> 	for (i = ARRAY_SIZE(display->bw.max) - 1; i >= 0; i--) {
> 		const struct intel_bw_info *bi =
> 			&display->bw.max[i];
> -- 
> 2.52.0
>
>
--8323329-1254044371-1779491164=:1544314--
