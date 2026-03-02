Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4KJpDvDupWlLHwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 02 Mar 2026 21:11:28 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C1EE31DF298
	for <lists+intel-gfx@lfdr.de>; Mon, 02 Mar 2026 21:11:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 30C2110E5B0;
	Mon,  2 Mar 2026 20:11:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GYrJ2i+h";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7696C10E5B1;
 Mon,  2 Mar 2026 20:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772482286; x=1804018286;
 h=date:from:to:cc:subject:in-reply-to:message-id:
 references:mime-version:content-id;
 bh=I3AdwyhKSGoW5lQFv4faV1IAcqFSg5LYQQcRywJysnc=;
 b=GYrJ2i+h0jTzggYHLwkfODh9NSENpowrVwYbRJXENJQkISYEmCNhO78z
 GnBVJln/WT/0+aEsS1NHZ9/PMcwJNDEM5rBG+wiSpJxfJ0JfobT5ue3sn
 HQV5Wpud+lpeUmKq5/TXBKEjTlnFPQkOQQHsPk77eto7XbCGwDFOaoD4N
 xxhYoH88lLqfZezE1HmQ4E0SHoDdZZLUjaPRCgFeTHv34bHvn0rWAGK+t
 /PFM7g90/07AowHeIen1fjvzblqGz7IA8tWTO3A4AV8KEbAsFBXPTxUBZ
 Dcn+izvdCBGTja0tHO6YwKsu6MtmHr8pBeadhifTZQTYPRMIwjflzihBe g==;
X-CSE-ConnectionGUID: M/b0jBuYTxS8A2YvM+RZ3Q==
X-CSE-MsgGUID: qS2K+MYeStCdrHeWJqLbqg==
X-IronPort-AV: E=McAfee;i="6800,10657,11717"; a="90897235"
X-IronPort-AV: E=Sophos;i="6.21,320,1763452800"; d="scan'208";a="90897235"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2026 12:11:25 -0800
X-CSE-ConnectionGUID: YmYsZ/kvSEWnRDXdmB9E5w==
X-CSE-MsgGUID: v3Oki26iRdqnqSd/ME6G/A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,320,1763452800"; d="scan'208";a="214936064"
Received: from administrator-system-product-name.igk.intel.com
 ([10.91.214.181])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2026 12:11:24 -0800
Date: Mon, 2 Mar 2026 21:11:22 +0100 (CET)
From: =?ISO-8859-2?Q?Micha=B3_Grzelak?= <michal.grzelak@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org, 
 rodrigo.vivi@intel.com
Subject: Re: [PATCH 6/8] drm/intel: add reg_bits.h for the various register
 content helpers
In-Reply-To: <e641fe6dcecef92367471f3e0d150f9f47ae4edc.1772042022.git.jani.nikula@intel.com>
Message-ID: <6ff978f1-ac8d-a699-66c8-8b49d72739c7@intel.com>
References: <cover.1772042022.git.jani.nikula@intel.com>
 <e641fe6dcecef92367471f3e0d150f9f47ae4edc.1772042022.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed;
 BOUNDARY="1527428566-759392480-1772481884=:1837396"
Content-ID: <8cd73f65-7259-acbf-3d18-1ef9656d7095@intel.com>
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
X-Rspamd-Queue-Id: C1EE31DF298
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

--1527428566-759392480-1772481884=:1837396
Content-Type: text/plain; CHARSET=ISO-8859-2; format=flowed
Content-Transfer-Encoding: 8BIT
Content-ID: <9d180b50-e5be-e72e-dfd1-2632b8e5d244@intel.com>

On Wed, 25 Feb 2026, Jani Nikula wrote:
> Add a shared header that's used by i915, xe, and i915 display.
>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Micha³ Grzelak <michal.grzelak@intel.com>

BR,
Micha³
--1527428566-759392480-1772481884=:1837396--
