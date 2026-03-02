Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UNIwAt/upWlLHwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 02 Mar 2026 21:11:11 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 88A761DF290
	for <lists+intel-gfx@lfdr.de>; Mon, 02 Mar 2026 21:11:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A892810E5B9;
	Mon,  2 Mar 2026 20:11:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GDGBhHZJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7EEAF10E5C9;
 Mon,  2 Mar 2026 20:11:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772482267; x=1804018267;
 h=date:from:to:cc:subject:in-reply-to:message-id:
 references:mime-version:content-id;
 bh=TXTwfTEE73XE9rOyTwqLKYl6tw0cOoyIhbnTBumNT8o=;
 b=GDGBhHZJ8/6zqj7o/WZnljliu7p45LxJrmS3UldFsOHcMr56TdinVzge
 9zB6xV+BlmSBMjiE6FkMJMYD25Fq0vBJIG0Pn5eaTQTW20pIebv0v3Kry
 DrOnAceVgCQa1KcD9xt8HJOHnQ5yiL/xqLGPbmcIGDP6hMJWdyiW8rOJp
 u4Pmm7vC43LCRiLtv6IvAgJSh55f7RzBsJEQuF1MkeuwbyJaoo51BFIvC
 LEy30gZ1KhRQNYPhhNp2fLz3rN0Hzl4yxEOJlDS/OsSXPR3CRQr5jje1f
 K8euFY3E5K1ZiLXQrW7gKZjVH2yiugpkO6JX2m0fDpHk75v/N+WgWyogi Q==;
X-CSE-ConnectionGUID: BHDEPBYhSteRtpp2VWkApQ==
X-CSE-MsgGUID: rmuXAmnCTsCxJTHrjA6g2Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11717"; a="76105394"
X-IronPort-AV: E=Sophos;i="6.21,320,1763452800"; d="scan'208";a="76105394"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2026 12:11:07 -0800
X-CSE-ConnectionGUID: Ay1SEXhfTB60Tue/QqiEBQ==
X-CSE-MsgGUID: 2YQWjME6ScSP5GueXerPug==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,320,1763452800"; d="scan'208";a="217767906"
Received: from administrator-system-product-name.igk.intel.com
 ([10.91.214.181])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2026 12:11:06 -0800
Date: Mon, 2 Mar 2026 21:11:04 +0100 (CET)
From: =?ISO-8859-2?Q?Micha=B3_Grzelak?= <michal.grzelak@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org, 
 rodrigo.vivi@intel.com
Subject: Re: [PATCH 5/8] drm/xe/oa: prefer REG_MASKED_FIELD_ENABLE() and
 REG_MASKED_FIELD_DISABLE()
In-Reply-To: <a9b0151d82b1622daa0625fc8ea2c41d233e4318.1772042022.git.jani.nikula@intel.com>
Message-ID: <ecf87748-f652-0293-7af6-a1355ab22e9c@intel.com>
References: <cover.1772042022.git.jani.nikula@intel.com>
 <a9b0151d82b1622daa0625fc8ea2c41d233e4318.1772042022.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed;
 BOUNDARY="1527428566-2452289-1772481710=:1836696"
Content-ID: <e57c6e52-af32-fdc6-4ca5-18a0d99a1a47@intel.com>
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
X-Rspamd-Queue-Id: 88A761DF290
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
	RCPT_COUNT_THREE(0.00)[4];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:dkim,intel.com:email,intel.com:mid]
X-Rspamd-Action: no action

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--1527428566-2452289-1772481710=:1836696
Content-Type: text/plain; CHARSET=ISO-8859-2; format=flowed
Content-Transfer-Encoding: 8BIT
Content-ID: <4de36b5f-bc4d-4e77-2f30-a876b2ccb397@intel.com>

On Wed, 25 Feb 2026, Jani Nikula wrote:
> Using REG_MASKED_FIELD_ENABLE() and REG_MASKED_FIELD_DISABLE() is more
> obvious to the reader than having the ternary expression inside
> REG_MASKED_FIELD().
>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Micha³ Grzelak <michal.grzelak@intel.com>

Not relevant to the code but this patch instead of subject is shown with
quotation mark when going on lore [1] to thread overview from any patch
from the series. And it cannot be an abbreviation of too long subject
since previous patch has it longer and is still shown properly. Weird.

[1] https://lore.kernel.org/all/cover.1772042022.git.jani.nikula@intel.com

BR,
Micha³
--1527428566-2452289-1772481710=:1836696--
