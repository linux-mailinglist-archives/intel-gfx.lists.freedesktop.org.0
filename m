Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0KsqLAzupWlLHwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 02 Mar 2026 21:07:40 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 581001DF1F2
	for <lists+intel-gfx@lfdr.de>; Mon, 02 Mar 2026 21:07:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6268D10E371;
	Mon,  2 Mar 2026 20:07:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Zi4DYvf4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0FC4E10E370;
 Mon,  2 Mar 2026 20:07:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772482057; x=1804018057;
 h=date:from:to:cc:subject:in-reply-to:message-id:
 references:mime-version:content-id;
 bh=mE1w5Pi4OJFtZTLw0/VcxNy9WP4AHuQLne83/Nebxpk=;
 b=Zi4DYvf4cLVYWI+vM7ReCnC29pPtY45jComNlUtzGs2B7LjXZat5abjI
 xE/LZBMhyb8n2Zwf1H0ErIO6gmWz08jzkoTWlJ63j8vjWev04h/lO277+
 6FtrLb+bQK/B2sN29j6Zyq6gGDv5dBR1FL568AgHIa7O0LiEjPs0yM4Cz
 zTJd6AhNRHHBazcDHM0PYFTbPMGtp8xplzwdLa525qXGpCNT9OdeFhS9l
 tDDhoFDyTI96feuy648fMG18tWLTfBYOwu94Y/xKU1AXAP5+6JkWYRPIb
 ZOZGssQWyditSY7v8iWiPKoMJD3ED5zeloQoqLS4p5oW5N8Xz6vXn0XiE A==;
X-CSE-ConnectionGUID: Ndu6tKZFTzKlQkX1yhceYw==
X-CSE-MsgGUID: IFgMeWOqRHmTFVEMDFGDtg==
X-IronPort-AV: E=McAfee;i="6800,10657,11717"; a="73371312"
X-IronPort-AV: E=Sophos;i="6.21,320,1763452800"; d="scan'208";a="73371312"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2026 12:07:37 -0800
X-CSE-ConnectionGUID: j/ihIlk8STuIT/ERH1ciYg==
X-CSE-MsgGUID: yQzH7JWsReeDIpbm7N5UJg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,320,1763452800"; d="scan'208";a="244756654"
Received: from administrator-system-product-name.igk.intel.com
 ([10.91.214.181])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2026 12:07:35 -0800
Date: Mon, 2 Mar 2026 21:07:33 +0100 (CET)
From: =?ISO-8859-2?Q?Micha=B3_Grzelak?= <michal.grzelak@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 4/4] drm/xe/display: clean up xe_initial_plane.c includes
In-Reply-To: <637eab7df00a540df6b7ca1ca345302864b6342f.1772212579.git.jani.nikula@intel.com>
Message-ID: <ba0ec5b3-03ce-a6ff-4492-07aff9ca030c@intel.com>
References: <cover.1772212579.git.jani.nikula@intel.com>
 <637eab7df00a540df6b7ca1ca345302864b6342f.1772212579.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed;
 BOUNDARY="1527428566-1703035154-1772476328=:1836696"
Content-ID: <085694e6-9e52-f8f9-1808-36a35aefb743@intel.com>
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
X-Rspamd-Queue-Id: 581001DF1F2
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
	RCPT_COUNT_THREE(0.00)[3];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Action: no action

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--1527428566-1703035154-1772476328=:1836696
Content-Type: text/plain; CHARSET=ISO-8859-2; format=flowed
Content-Transfer-Encoding: 8BIT
Content-ID: <543dd1b4-0366-97ea-bcee-9d943b0e1e44@intel.com>

On Fri, 27 Feb 2026, Jani Nikula wrote:
> Remove excess includes, group and sort include directives.
>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Micha³ Grzelak <michal.grzelak@intel.com>

BR,
Micha³
--1527428566-1703035154-1772476328=:1836696--
