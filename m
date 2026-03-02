Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eN9XCt7tpWlLHwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 02 Mar 2026 21:06:54 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A82411DF1CC
	for <lists+intel-gfx@lfdr.de>; Mon, 02 Mar 2026 21:06:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BF86B10E174;
	Mon,  2 Mar 2026 20:06:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KMpfROGd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AE45310E174;
 Mon,  2 Mar 2026 20:06:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772482011; x=1804018011;
 h=date:from:to:cc:subject:in-reply-to:message-id:
 references:mime-version:content-id;
 bh=YY9nQy5+E0s0hvmnDOeAqfNuds0L+Z4mBpgL7w7LWUY=;
 b=KMpfROGdi0jwp7GwY88u9bNtsWyIN1x83TJceNk0PTY7ViABz+xhLB1E
 OybuAFysVpnfOQUap5RBRzi4rz5FJjiy1U+Fo8io7EBVsFt7nhX4kTk/N
 gH+KiAg5q4QOdoK6S6TOB37cNGqz3ncvEMkG5Nn9jdv1EWfij1dcgA/WM
 2uOZJETpUss5lrrHAXJsNUnZ89ME6y/z0QEERhuRwNBN2wlzlUraPOn7N
 TBi45lttmoSl259J1oqYLdmPF/vXUTR/Fm5CR0oOUN3C8I+URc0okB7xX
 8DVgea9wAdAxT0xSCC8YZzrFXxv06IoWTgxZ+6i2npz9gWC0LZMau6ZsX Q==;
X-CSE-ConnectionGUID: UC7aP3iqTRe6MG9E7cz8wg==
X-CSE-MsgGUID: nr6MCwqWQjSkb23cJC939Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11717"; a="98975262"
X-IronPort-AV: E=Sophos;i="6.21,320,1763452800"; d="scan'208";a="98975262"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2026 12:06:50 -0800
X-CSE-ConnectionGUID: IPiORz4zRQePXrjthXqCeA==
X-CSE-MsgGUID: C+HhBcNZTf69jh47DU1bsg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,320,1763452800"; d="scan'208";a="222262856"
Received: from administrator-system-product-name.igk.intel.com
 ([10.91.214.181])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2026 12:06:48 -0800
Date: Mon, 2 Mar 2026 21:06:46 +0100 (CET)
From: =?ISO-8859-2?Q?Micha=B3_Grzelak?= <michal.grzelak@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 1/4] drm/i915/fbdev: stop debug logging i915_ggtt_offset()
In-Reply-To: <c3b84cb572c7ee94389e702aba4dcacb26c41673.1772212579.git.jani.nikula@intel.com>
Message-ID: <81365e1b-889e-a631-1227-6f766e279a65@intel.com>
References: <cover.1772212579.git.jani.nikula@intel.com>
 <c3b84cb572c7ee94389e702aba4dcacb26c41673.1772212579.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed;
 BOUNDARY="1527428566-1943976602-1772476125=:1836696"
Content-ID: <0232b478-f9b8-1b68-79cd-07139524b51e@intel.com>
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
X-Rspamd-Queue-Id: A82411DF1CC
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
	NEURAL_HAM(-0.00)[-0.999];
	FROM_NEQ_ENVFROM(0.00)[michal.grzelak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCPT_COUNT_THREE(0.00)[3];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Action: no action

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--1527428566-1943976602-1772476125=:1836696
Content-Type: text/plain; CHARSET=ISO-8859-2; format=flowed
Content-Transfer-Encoding: 8BIT
Content-ID: <e7573b0f-5666-ce07-9343-6f4337285d3a@intel.com>

On Fri, 27 Feb 2026, Jani Nikula wrote:
> The debug logging in fbdev is the only user of i915_ggtt_offset() in
> display code. Just stop doing it to drop a dependency on i915_vma.h.
>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Micha³ Grzelak <michal.grzelak@intel.com>

BR,
Micha³
--1527428566-1943976602-1772476125=:1836696--
