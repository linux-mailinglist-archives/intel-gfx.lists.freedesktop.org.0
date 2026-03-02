Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qIS7DT7upWlLHwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 02 Mar 2026 21:08:30 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A78BB1DF216
	for <lists+intel-gfx@lfdr.de>; Mon, 02 Mar 2026 21:08:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0276B10E5AC;
	Mon,  2 Mar 2026 20:08:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Zx2GzMXY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 12C8610E5BA;
 Mon,  2 Mar 2026 20:08:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772482106; x=1804018106;
 h=date:from:to:cc:subject:in-reply-to:message-id:
 references:mime-version:content-id;
 bh=esrQdZ5zWdue2cSzmFix7aj1d45hcrAL3QHhWcWW4ZY=;
 b=Zx2GzMXY83cZMD8t4ItkMnwZ5rtewPF94gdspJrXUCTtAspa/8XNpv0s
 inZdAUHXwwUC1tPoBJittXlbNFZpeCVECY+rpbPzJcdyvfn9rHZboHrJ/
 sKSJuzjsh0p83/3tUkpBNSuqefgw1CGPp1oTo4ltQ0LYROrbvSf6i00KB
 5tdbynFYxUmHotlBgo5JgAVuwgqInBSDgDPbNMxIIlFwydomGwrVT60M3
 lmG0WFGRgny91FyX0ETYHUDcbzUeQpozCKJ0vjAJ2/D8dA50jyATBCcmi
 KY5GTnS+jd7iTmAeuLqQyHVg6XTyMtbCuqe0y+5U/j9mxaL7OP2Z5RRpj Q==;
X-CSE-ConnectionGUID: 2MD3RJqTS7ykp1PlFVFEFw==
X-CSE-MsgGUID: l4gv/Vg0Tn6go3YoEbTHTg==
X-IronPort-AV: E=McAfee;i="6800,10657,11717"; a="76105173"
X-IronPort-AV: E=Sophos;i="6.21,320,1763452800"; d="scan'208";a="76105173"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2026 12:08:25 -0800
X-CSE-ConnectionGUID: u5CbyDGbQJaktoBbUSRMaw==
X-CSE-MsgGUID: CX5EDRI2S4Wb1o/NYPVTKw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,320,1763452800"; d="scan'208";a="221921922"
Received: from administrator-system-product-name.igk.intel.com
 ([10.91.214.181])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2026 12:08:24 -0800
Date: Mon, 2 Mar 2026 21:08:22 +0100 (CET)
From: =?ISO-8859-2?Q?Micha=B3_Grzelak?= <michal.grzelak@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org, 
 rodrigo.vivi@intel.com
Subject: Re: [PATCH 2/8] drm/i915/lrc: switch to _MASKED_BIT_ENABLE() and
 _MASKED_BIT_DISABLE()
In-Reply-To: <733568f8a6155b6e2da1dcdce9d21d6aab881449.1772042022.git.jani.nikula@intel.com>
Message-ID: <ac75505a-be63-368c-c71a-780ff93d4999@intel.com>
References: <cover.1772042022.git.jani.nikula@intel.com>
 <733568f8a6155b6e2da1dcdce9d21d6aab881449.1772042022.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed;
 BOUNDARY="1527428566-878959048-1772480522=:1836696"
Content-ID: <92abeb92-6d8e-4e1e-ce9e-0b1d0c3bd12c@intel.com>
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
X-Rspamd-Queue-Id: A78BB1DF216
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Action: no action

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--1527428566-878959048-1772480522=:1836696
Content-Type: text/plain; CHARSET=ISO-8859-2; format=flowed
Content-Transfer-Encoding: 8BIT
Content-ID: <96885214-3c95-be22-99ed-2b15e5ab4777@intel.com>

On Wed, 25 Feb 2026, Jani Nikula wrote:
> Since it's now possible to use _MASKED_BIT_ENABLE() and
> _MASKED_BIT_DISABLE() in the array initializer, switch to them. This
> allows us to remove __MASKED_FIELD() macro.
>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Micha³ Grzelak <michal.grzelak@intel.com>

BR,
Micha³
--1527428566-878959048-1772480522=:1836696--
