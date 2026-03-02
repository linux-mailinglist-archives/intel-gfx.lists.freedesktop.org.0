Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SFHfNl/upWlLHwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 02 Mar 2026 21:09:03 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A9001DF22B
	for <lists+intel-gfx@lfdr.de>; Mon, 02 Mar 2026 21:09:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8CEA310E370;
	Mon,  2 Mar 2026 20:09:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IHgJMrAX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0B0A510E370;
 Mon,  2 Mar 2026 20:08:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772482139; x=1804018139;
 h=date:from:to:cc:subject:in-reply-to:message-id:
 references:mime-version:content-id;
 bh=6hXPHfI5UC9lcjJIOSuidtiO2TZOECAwl7dlEutGNcY=;
 b=IHgJMrAXixn0iXli5PhVTyUXdpX3UdRbn6Pm6KUPcSrUhbBum9ZBOYg0
 9gLiHYq23mZp5v2ZnRLZuj6990/OSqdsaAc85RrhpCJ+LbV97Zl0zp1ve
 JJtMGK/Hw5pBdNWdZsNs+xSThFK5rps1J4jg88NMApdRJxMBJdesTLh9d
 fX9bNV2bhDwbU3eFhixsLja9tvvnBte7mDAWDRNPuvIP2WbCL373m8H++
 WgipRoVFv3wTuq8VI0O0GE54QJ9U1UqAkgWJYO7PQbo8Z14IITyvYVwjZ
 RtowDhymTJbPjefG4GRShTFSUQu3dBo2oRYuKVIfBLmQGTfww1izNTNO9 A==;
X-CSE-ConnectionGUID: ZPSw/YAHTf+Yqb/6zxoJ+w==
X-CSE-MsgGUID: cTI7WpU9QwaELn5QnZef7w==
X-IronPort-AV: E=McAfee;i="6800,10657,11717"; a="90896943"
X-IronPort-AV: E=Sophos;i="6.21,320,1763452800"; d="scan'208";a="90896943"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2026 12:08:59 -0800
X-CSE-ConnectionGUID: tjLYl5kHQ36A2k3mBKQfLg==
X-CSE-MsgGUID: hCJ6bzHLQUaw8Lg3JpnhDA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,320,1763452800"; d="scan'208";a="214935653"
Received: from administrator-system-product-name.igk.intel.com
 ([10.91.214.181])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2026 12:08:57 -0800
Date: Mon, 2 Mar 2026 21:08:55 +0100 (CET)
From: =?ISO-8859-2?Q?Micha=B3_Grzelak?= <michal.grzelak@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org, 
 rodrigo.vivi@intel.com
Subject: Re: [PATCH 4/8] drm/i915/perf: prefer REG_MASKED_FIELD_ENABLE() and
 REG_MASKED_FIELD_DISABLE()
In-Reply-To: <93caec439ad10ef8b163162c52407abf36df69f5.1772042022.git.jani.nikula@intel.com>
Message-ID: <fdec40df-6021-8b2e-bf87-5cfedbba9c27@intel.com>
References: <cover.1772042022.git.jani.nikula@intel.com>
 <93caec439ad10ef8b163162c52407abf36df69f5.1772042022.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed;
 BOUNDARY="1527428566-460606139-1772480614=:1836696"
Content-ID: <dee300f2-7565-a0f4-f563-58316d33c4aa@intel.com>
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
X-Rspamd-Queue-Id: 3A9001DF22B
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

--1527428566-460606139-1772480614=:1836696
Content-Type: text/plain; CHARSET=ISO-8859-2; format=flowed
Content-Transfer-Encoding: 8BIT
Content-ID: <171aa852-5334-827a-6db3-c92411d8e2ef@intel.com>

On Wed, 25 Feb 2026, Jani Nikula wrote:
> Using REG_MASKED_FIELD_ENABLE() and REG_MASKED_FIELD_DISABLE() is more
> obvious to the reader than having the ternary expression inside
> REG_MASKED_FIELD().
>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Micha³ Grzelak <michal.grzelak@intel.com>

BR,
Micha³
--1527428566-460606139-1772480614=:1836696--
