Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0GbVByjupWlLHwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 02 Mar 2026 21:08:08 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B78A81DF207
	for <lists+intel-gfx@lfdr.de>; Mon, 02 Mar 2026 21:08:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CBB0210E373;
	Mon,  2 Mar 2026 20:08:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Rfb8xWEy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D366410E370;
 Mon,  2 Mar 2026 20:08:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772482084; x=1804018084;
 h=date:from:to:cc:subject:in-reply-to:message-id:
 references:mime-version:content-id;
 bh=QK8dhOvAVpVaPRpU3mxKsxqIE9B/0BE1QoewCJVnGn8=;
 b=Rfb8xWEyQp1WviG2Nx01mzYnwVOQZu3WRmhhkmHypgWhxBoMpV8T69t1
 LyjazkdCk4tR7NI0ylNKmMpcZtnQJu1ipfutl47H/PZVf9xk5ILIdg94c
 KMvc+lghh6EJB744PcFShFkZnWYBvs4QisEU0NbDrt4/K0TikhnMvo3ZQ
 jlfLX068/0C2g7r21XH/WDOxVb4te1y1riiwvMkefAOkJDGy2eiQ8jfqQ
 0BT/Uq9Gf18WnlPyCpxgah1TbZ1r8vp/Euol+Qg8PfhegunBiddfTNDna
 SJTCCZOXW/SpWDpX69rTCgOwQh0b9TBjngJHUIRXVf0/1la06vCLR0A7f w==;
X-CSE-ConnectionGUID: YQLFL3yxTTC2yE3TwtruVQ==
X-CSE-MsgGUID: EFym8ahRS/OsKWS73GuPXg==
X-IronPort-AV: E=McAfee;i="6800,10657,11717"; a="73371341"
X-IronPort-AV: E=Sophos;i="6.21,320,1763452800"; d="scan'208";a="73371341"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2026 12:08:04 -0800
X-CSE-ConnectionGUID: eSjdZvkpTgifKygnEOLW6A==
X-CSE-MsgGUID: kl6krIH8RNGyo0bIu2dDfQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,320,1763452800"; d="scan'208";a="244756726"
Received: from administrator-system-product-name.igk.intel.com
 ([10.91.214.181])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2026 12:08:02 -0800
Date: Mon, 2 Mar 2026 21:08:00 +0100 (CET)
From: =?ISO-8859-2?Q?Micha=B3_Grzelak?= <michal.grzelak@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org, 
 rodrigo.vivi@intel.com
Subject: Re: [PATCH 1/8] drm/i915/reg: make masked field helpers constexpr
In-Reply-To: <788f538cc71dec0db25e0c768e8945bef6f9701c.1772042022.git.jani.nikula@intel.com>
Message-ID: <82bec685-cad7-94dc-b8b1-ae4913dbce64@intel.com>
References: <cover.1772042022.git.jani.nikula@intel.com>
 <788f538cc71dec0db25e0c768e8945bef6f9701c.1772042022.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed;
 BOUNDARY="1527428566-2100778568-1772480497=:1836696"
Content-ID: <2b33c185-2278-c977-b59a-2bb900c2a3bc@intel.com>
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
X-Rspamd-Queue-Id: B78A81DF207
X-Rspamd-Server: lfdr
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
	RCPT_COUNT_THREE(0.00)[4];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:dkim,intel.com:email,intel.com:mid]
X-Rspamd-Action: no action

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--1527428566-2100778568-1772480497=:1836696
Content-Type: text/plain; CHARSET=ISO-8859-2; format=flowed
Content-Transfer-Encoding: 8BIT
Content-ID: <b14050ec-4f6e-30b4-205b-b7257eb343a9@intel.com>

On Wed, 25 Feb 2026, Jani Nikula wrote:
> Make it possible to use _MASKED_FIELD(), _MASKED_BIT_ENABLE() and
> _MASKED_BIT_DISABLE() in contexts that require integer constant
> expressions. This increases their usefulness at the small cost of making
> the warnings from build time checks less helpful.
>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Micha³ Grzelak <michal.grzelak@intel.com>

BR,
Micha³
--1527428566-2100778568-1772480497=:1836696--
