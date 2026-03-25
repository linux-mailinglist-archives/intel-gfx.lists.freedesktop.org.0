Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mCmIEJVQxGljyAQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2026 22:16:05 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BC73132C4F1
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2026 22:16:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3807110E888;
	Wed, 25 Mar 2026 21:16:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EwJsl1tE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 875A810E1F6;
 Wed, 25 Mar 2026 21:16:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774473361; x=1806009361;
 h=date:from:to:cc:subject:in-reply-to:message-id:
 references:mime-version;
 bh=o8Pn2s3Y2TXnG+OyPod5JBFQDm/5Tc/RYb9ZxCMLKEU=;
 b=EwJsl1tEVMtFvLZMDXIyZQpupDSxg92Bk6DZMInUshzlGkPJgZXWVAtm
 TUpocB5xUMbfaSoRpXCWnPLzMZ5OKNJzvlsnWktfqNiP+PMv0mkKQIfHE
 cWHDPMxLw9w1Q8I+lqGT0BZILEcIVG2VntJ1QZGsmenaweEaGoXpVxJ2m
 tae1znEZQM6kfBjg0HU5HbctTkIjzG3jjbXG86K+Ohw4A02LxJdpaBhwU
 ZWYx5b0hv8s0PDIlZnU2gAueq62/IMGretTTdChozdimb02oilq64aVcL
 DSasm+rSsKSPHeBKacShNx4i5wvQ546GlNJXKa0PyqRFU7Inh4pjJWmat g==;
X-CSE-ConnectionGUID: RREb7tCMTCamu9lRvTwk8A==
X-CSE-MsgGUID: X8O76Y4fR0GrZKqgdh9xlw==
X-IronPort-AV: E=McAfee;i="6800,10657,11740"; a="63073151"
X-IronPort-AV: E=Sophos;i="6.23,140,1770624000"; d="scan'208";a="63073151"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2026 14:16:01 -0700
X-CSE-ConnectionGUID: 781YWnsVRoiO6a78Vf2RKw==
X-CSE-MsgGUID: Sty4gyH9RjG6b6ZkZRiYHQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,140,1770624000"; d="scan'208";a="220393921"
Received: from administrator-system-product-name.igk.intel.com
 ([10.91.214.181])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2026 14:16:00 -0700
Date: Wed, 25 Mar 2026 22:15:58 +0100 (CET)
From: =?ISO-8859-2?Q?Micha=B3_Grzelak?= <michal.grzelak@intel.com>
To: =?ISO-8859-2?Q?Micha=B3_Grzelak?= <michal.grzelak@intel.com>
cc: Ville Syrjala <ville.syrjala@linux.intel.com>, 
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 6/6] drm/i915: Move the sharness filter dump next to pfit
In-Reply-To: <e831d86f-5c0a-d882-6328-0845d5230bcf@intel.com>
Message-ID: <807ccc17-a2d7-aae4-216b-f2aa8719e2e8@intel.com>
References: <20260325135849.12603-1-ville.syrjala@linux.intel.com>
 <20260325135849.12603-7-ville.syrjala@linux.intel.com>
 <e831d86f-5c0a-d882-6328-0845d5230bcf@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-1363287711-1774473360=:317155"
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
X-Spamd-Result: default: False [0.29 / 15.00];
	CTYPE_MIXED_BOGUS(1.00)[];
	R_MIXED_CHARSET(0.60)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[multipart/mixed,text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[michal.grzelak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid]
X-Rspamd-Queue-Id: BC73132C4F1
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-1363287711-1774473360=:317155
Content-Type: text/plain; charset=ISO-8859-2; format=flowed
Content-Transfer-Encoding: 8BIT

On Wed, 25 Mar 2026, Micha³ Grzelak wrote:
> On Wed, 25 Mar 2026, Ville Syrjala wrote:
>> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>> 
>> Group the sharpness filter parameters next to all the other pfit
>> stuff in the state dump.
>> 
>> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
>
> Reviewed-by: Micha³ Grzelak <michal.grzelak@intel.com>
>

FWIW now I noticed a typo in the title: s/sharness/sharpness

BR,
Micha³
--8323329-1363287711-1774473360=:317155--
