Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8BOlEPHtpWlLHwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 02 Mar 2026 21:07:13 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C14851DF1D3
	for <lists+intel-gfx@lfdr.de>; Mon, 02 Mar 2026 21:07:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 08B7A10E307;
	Mon,  2 Mar 2026 20:07:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZUPELdns";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A5DF510E22A;
 Mon,  2 Mar 2026 20:07:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772482030; x=1804018030;
 h=date:from:to:cc:subject:in-reply-to:message-id:
 references:mime-version:content-id;
 bh=PvzY38PP/oLU/2GE/+nhYaUsJAeyOQQlHLOBQO9WnAM=;
 b=ZUPELdnsSvKMb7jPj0xVQ0m58BWTsG2juDvDi5oWxB650M440KC2tOGD
 BXo/6wdF2rc+8NYkXRYygUCEWIPHOxMxFT/WwoyW9ucFh8n+fbfWmJZ/q
 OXfIZqs41deQhrTQffVvH4F6cL0MmGmmZwnKy+dk+zQgIbPkwDONi9bCa
 tYFmNF8YXZlGfKzBSBNjxT33mgyZGrX4bmcrlc7YngxjJNTC90pgTguYS
 tgjVyxtiyjZOhByY5A+KAX8zcYo5EgstFRF2NSgxy+v5OWneQiXJx96JP
 VzGHhV/5UpEcd2MvC/Nj7MKSmq/BV+HCw8A2OEpC7hC0cNEv2ZXCFNHCQ w==;
X-CSE-ConnectionGUID: JeJqBMdzR6+Cex0Xc0KNjg==
X-CSE-MsgGUID: 1G11MwrlQW2aOxL27pg7Yg==
X-IronPort-AV: E=McAfee;i="6800,10657,11717"; a="72701856"
X-IronPort-AV: E=Sophos;i="6.21,320,1763452800"; d="scan'208";a="72701856"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2026 12:07:09 -0800
X-CSE-ConnectionGUID: 5YlwfULETsCn9JSO5F2i9g==
X-CSE-MsgGUID: XGUE+7KjQemYRP1TGGnZgw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,320,1763452800"; d="scan'208";a="217868990"
Received: from administrator-system-product-name.igk.intel.com
 ([10.91.214.181])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2026 12:07:08 -0800
Date: Mon, 2 Mar 2026 21:07:06 +0100 (CET)
From: =?ISO-8859-2?Q?Micha=B3_Grzelak?= <michal.grzelak@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 2/4] drm/i915: add VMA to parent interface
In-Reply-To: <036f4b2d20cc1b0a7ab814beb5bb914c53b6eb53.1772212579.git.jani.nikula@intel.com>
Message-ID: <a968ab18-de19-3f79-7e4d-eb18124007f8@intel.com>
References: <cover.1772212579.git.jani.nikula@intel.com>
 <036f4b2d20cc1b0a7ab814beb5bb914c53b6eb53.1772212579.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed;
 BOUNDARY="1527428566-86327068-1772476159=:1836696"
Content-ID: <9ac45630-e80c-4ecf-6389-dfb9efadc182@intel.com>
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
X-Rspamd-Queue-Id: C14851DF1D3
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

--1527428566-86327068-1772476159=:1836696
Content-Type: text/plain; CHARSET=ISO-8859-2; format=flowed
Content-Transfer-Encoding: 8BIT
Content-ID: <f030c528-5822-62b3-3414-08fee1c5417c@intel.com>

On Fri, 27 Feb 2026, Jani Nikula wrote:
> It's unclear what the direction of the VMA abstraction in the parent
> interface should be, but convert i915_vma_fence_id() to parent interface
> for starters. This paves the way for making struct i915_vma opaque
> towards display.
>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Micha³ Grzelak <michal.grzelak@intel.com>

BR,
Micha³
--1527428566-86327068-1772476159=:1836696--
