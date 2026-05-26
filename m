Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qCiNM+mbFWr9WgcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 26 May 2026 15:11:05 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 051F95D61CE
	for <lists+intel-gfx@lfdr.de>; Tue, 26 May 2026 15:11:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8097010E173;
	Tue, 26 May 2026 13:11:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PXZTyHH5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1445610E173
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 May 2026 13:11:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779801061; x=1811337061;
 h=date:from:to:cc:subject:in-reply-to:message-id:
 references:mime-version;
 bh=eEqaUk7OC5E6TAruqUfMbnkFvdOi4GXKt5/05lTwxbU=;
 b=PXZTyHH5XlRJbHy9bzMVm6H40TDoOkrkAtURtw84iv2fWnM3a0VQZ1E2
 9683ENX17r6I1/Zr8xYxv+ILOmi5zz4u0aDYNbHDD2afHfMQ3/DzWui1m
 XwWwc6VmtYkB+yzjN+pNp8go71wqTt1fX00jbQE6k8ri8+/fi5RQQjxhb
 geF7jIG/ksk9OdMXv8AzPkXXQYckgNim8O+GcJdgw357oI8dQatk2xtt2
 q1aQOfJg1JOUYNFpQLDMv1enVTuANaWdUM/7YHEpSt5kXdHedCzCIOdFu
 6zNbj2ViPPTpWBZPvNT+j7j9oo+vMcTu/w4PdZleKheexrYAZvPRXWwVJ Q==;
X-CSE-ConnectionGUID: Oc7BWOWoS2eCLApMrGdFhg==
X-CSE-MsgGUID: CWBclrIeTnqQJOVZJhsUrw==
X-IronPort-AV: E=McAfee;i="6800,10657,11797"; a="91182912"
X-IronPort-AV: E=Sophos;i="6.24,169,1774335600"; d="scan'208";a="91182912"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2026 06:11:00 -0700
X-CSE-ConnectionGUID: 8dHS1r6hSjqfjYiTc4yREw==
X-CSE-MsgGUID: vtzKGPoeSh6/8e8gttpcwg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,169,1774335600"; d="scan'208";a="245953742"
Received: from dev-417.igk.intel.com ([10.91.214.181])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2026 06:10:59 -0700
Date: Tue, 26 May 2026 15:10:57 +0200 (CEST)
From: =?ISO-8859-2?Q?Micha=B3_Grzelak?= <michal.grzelak@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH] drm/i915: relocate intel_hpd_cancel_work() call
In-Reply-To: <20260516101852.1373108-1-jani.nikula@intel.com>
Message-ID: <ad9f755c-7beb-c72f-a81c-8f4c624219c9@intel.com>
References: <20260516101852.1373108-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed;
 boundary="8323329-1630270024-1779801060=:1544314"
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
	MIME_GOOD(-0.10)[multipart/mixed,text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+,1:+];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	RCPT_COUNT_TWO(0.00)[2];
	FORGED_RECIPIENTS(0.00)[m:jani.nikula@intel.com,s:lists@lfdr.de];
	ARC_NA(0.00)[];
	URIBL_MULTI_FAIL(0.00)[gabe.freedesktop.org:server fail,intel.com:server fail];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[michal.grzelak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[michal.grzelak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	MID_RHS_MATCH_FROM(0.00)[];
	MISSING_XM_UA(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Queue-Id: 051F95D61CE
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-1630270024-1779801060=:1544314
Content-Type: text/plain; charset=ISO-8859-2; format=flowed
Content-Transfer-Encoding: 8BIT

On Sat, 16 May 2026, Jani Nikula wrote:
> The i915 and xe calls to display, in particular for
> probe/cleanup/suspend/resume, need to be unified. It does not help to
> have the related calls scattered around. As a small step forward,
> relocate the intel_hpd_cancel_work() call from intel_irq_uninstall() to
> i915_driver_remove().
>
> Note that the other intel_irq_uninstall() call sites don't need the
> call, as they're on error paths where hotplug hasn't been enabled yet.
>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Micha³ Grzelak <michal.grzelak@intel.com>

BR,
Micha³
--8323329-1630270024-1779801060=:1544314--
