Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AAohFihFe2l+DAIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Jan 2026 12:31:52 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A927AFA64
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Jan 2026 12:31:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F040B10E85E;
	Thu, 29 Jan 2026 11:31:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TL6S0qNc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A76A210E846
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Jan 2026 11:31:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769686307; x=1801222307;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=XGiYL0IdY1B9qHXVNgF5GtpE9q3m7lIZmv3EbhdOJW8=;
 b=TL6S0qNcp6ZrKDneH/sTVT1iv/R5NG5u2DB3pwiIMavISqebJV7gLUD8
 UVN2jt50o8alVsBWZqXMj5pK8esmPVYrD4sz4M0z4E4YvosNFTEeBPNU9
 lnzmox2DVzIa/kDizZK/0Qx/CMcNJqSp5Q7AVWwYHJZg3hcmYPif49Q3t
 pYVq/wWXg4ccplCjpruD1nlEGm+XXiA9QCzPsvoyGKOeyDkDzfzNzDG3J
 6dPLPEvdDFd884dkRCbSSmHFCs/fvv7GKl4F5X2MjgC5qYbpkuS42XVyd
 Ycaq2YRzd4qa4Vlj7FJ3hNrnslkf8HSre1eOCoiycy4+GxPToltvLCVJi w==;
X-CSE-ConnectionGUID: v1qXm02tT1qvy3K5AqYOGg==
X-CSE-MsgGUID: cAH8EoORQL+1PzVFMqedzQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11685"; a="82291042"
X-IronPort-AV: E=Sophos;i="6.21,260,1763452800"; d="scan'208";a="82291042"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2026 03:31:47 -0800
X-CSE-ConnectionGUID: gISJwUItTBamqHWf5VL5tA==
X-CSE-MsgGUID: ECFgE5x2RTKMTC1SrRNm8g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,260,1763452800"; d="scan'208";a="246180320"
Received: from dalessan-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.245.160])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2026 03:31:45 -0800
Date: Thu, 29 Jan 2026 12:31:42 +0100
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Krzysztof Karas <krzysztof.karas@intel.com>
Cc: intel-gfx@lists.freedesktop.org, Andi Shyti <andi.shyti@linux.intel.com>,
 Sebastian Brzezinka <sebastian.brzezinka@intel.com>,
 Krzysztof Niemiec <krzysztof.niemiec@intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>
Subject: Re: [PATCH v6 0/2] Miscellaneous fixes in drm code
Message-ID: <aXtFHm4Y94jf0YXd@ashyti-mobl2.lan>
References: <20260120154824.1864085-1-krzysztof.karas@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260120154824.1864085-1-krzysztof.karas@intel.com>
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
X-Spamd-Result: default: False [-1.31 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:krzysztof.karas@intel.com,m:andi.shyti@linux.intel.com,m:sebastian.brzezinka@intel.com,m:krzysztof.niemiec@intel.com,m:jani.nikula@linux.intel.com,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[andi.shyti@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andi.shyti@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCPT_COUNT_FIVE(0.00)[6];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 7A927AFA64
X-Rspamd-Action: no action

Hi Krzysztof,

> Krzysztof Karas (2):
>   drm: Warn before division by 0 would occur
>   drm: Avoid suspicious operations in drm_fb_dma_get_gem_addr()
> 
>  drivers/gpu/drm/drm_fb_dma_helper.c | 7 +++++--
>  1 file changed, 5 insertions(+), 2 deletions(-)

merged to drm-intel-gt-next.

Thank you!
Andi
