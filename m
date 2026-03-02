Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iI7COhzvpWlLHwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 02 Mar 2026 21:12:12 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 935CE1DF2E2
	for <lists+intel-gfx@lfdr.de>; Mon, 02 Mar 2026 21:12:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DDB5910E5B5;
	Mon,  2 Mar 2026 20:12:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Spk2JsJP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1318010E5B4;
 Mon,  2 Mar 2026 20:12:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772482330; x=1804018330;
 h=date:from:to:cc:subject:in-reply-to:message-id:
 references:mime-version:content-id;
 bh=TqVu6sUHUOinetDAEYDN8HahH/sXeoVjXA1gv1DAp+g=;
 b=Spk2JsJPCHY8kqMrwKQTPcRXKVMhjmoGELK4GEPe2WASXhRozihkFaA+
 IeblVBPlQCvPrXIT4YmLokYF3OL8FhCsUQ7uAiGHS0SI8s/IUBhtI0+2x
 D7JRD6bMbhcjHdUy8MifUO4H77ek5+ERd37r0eu2GpsUzipV1uYnDtZeK
 MFxfa++9FWH2aKj+4Gs92NtydpQApNRvUzCEaFOYNqkqBSaP5OXUTbGbP
 0UZCstYbtrVKtQUUooQWpQ7tKc987J7vwrvpyyY7qlSLGL9rU25w7vOgM
 DwSjfd2ewcvrPQGE1iFNmFd9p/flb2zlIYBq3S1BMg/N+3imJSIy/aJxF A==;
X-CSE-ConnectionGUID: iUTHnwn3S7KuMr8PGn+LIg==
X-CSE-MsgGUID: CIFOnLFDQ5egg2EijaIw7w==
X-IronPort-AV: E=McAfee;i="6800,10657,11717"; a="76105473"
X-IronPort-AV: E=Sophos;i="6.21,320,1763452800"; d="scan'208";a="76105473"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2026 12:12:09 -0800
X-CSE-ConnectionGUID: fcYxdbH/SOaGI+cu8GGGTQ==
X-CSE-MsgGUID: RF99rwohRy6pyyELl/QIcQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,320,1763452800"; d="scan'208";a="217768009"
Received: from administrator-system-product-name.igk.intel.com
 ([10.91.214.181])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2026 12:12:08 -0800
Date: Mon, 2 Mar 2026 21:12:06 +0100 (CET)
From: =?ISO-8859-2?Q?Micha=B3_Grzelak?= <michal.grzelak@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org, 
 rodrigo.vivi@intel.com
Subject: Re: [PATCH 8/8] drm/i915/gt: prefer _PICK_EVEN() over _PICK()
In-Reply-To: <f94272fb9e93afa51d9fdb006888b8ebe38580df.1772042022.git.jani.nikula@intel.com>
Message-ID: <04a36fc1-b19e-99c8-1da2-89c2a21c28fe@intel.com>
References: <cover.1772042022.git.jani.nikula@intel.com>
 <f94272fb9e93afa51d9fdb006888b8ebe38580df.1772042022.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed;
 BOUNDARY="1527428566-1768765617-1772481946=:1837396"
Content-ID: <3e292771-7864-8399-c7c8-7210df8f1608@intel.com>
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
X-Rspamd-Queue-Id: 935CE1DF2E2
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

--1527428566-1768765617-1772481946=:1837396
Content-Type: text/plain; CHARSET=ISO-8859-2; format=flowed
Content-Transfer-Encoding: 8BIT
Content-ID: <574b9b75-6fd7-019f-b362-4aa12b0cb969@intel.com>

On Wed, 25 Feb 2026, Jani Nikula wrote:
> There's no need to use _PICK() here. Use the simpler one instead.
>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Micha³ Grzelak <michal.grzelak@intel.com>

BR,
Micha³
--1527428566-1768765617-1772481946=:1837396--
