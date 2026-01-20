Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6MA8EOoJcGlyUwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Jan 2026 00:04:10 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D83244D738
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Jan 2026 00:04:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 662DA10E669;
	Tue, 20 Jan 2026 23:04:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nSK+TPGh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2B9E310E669;
 Tue, 20 Jan 2026 23:04:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768950247; x=1800486247;
 h=date:from:to:cc:subject:in-reply-to:message-id:
 references:mime-version:content-id;
 bh=xfOAHI/TGNZi6ffuWcDBArFWSRli6KJ1IL9YJx+4dms=;
 b=nSK+TPGh6tO84TGJvLwcRHg451upjmhbx4Npiju0UWJkxLfuwvQGFW9I
 ZTJ54KUNh9GAf0RoOwyhhL9/W0lKTebAS6pbFvZfX/CxyiThOQsWXer7q
 fgCX9w1II2YSYkc8NpZ49Iw5FuXg4qZai4pXMp/uycOQWeYHfN1EaI48+
 w/xLdsSrviETw+Y/xi/RhrhgOJSEWmvTmJwLlwqPkfBYk9pSGxwRxpwsq
 JY11EPIm6iq/Xo6sFHF3yQqrVGqsmrVuEF5OTavRSL92yzyCEfpkox4Bt
 BEVBJCxIQ9TM0znwfvMivUKu2+dBz5uDgbzWs5FoCkPcuGQ7HIRbMtRw9 Q==;
X-CSE-ConnectionGUID: 5AepnhreTUeplV0JdzD+5A==
X-CSE-MsgGUID: peECODpVRlSKTPqJeketKQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11677"; a="70082541"
X-IronPort-AV: E=Sophos;i="6.21,241,1763452800"; d="scan'208";a="70082541"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2026 15:04:06 -0800
X-CSE-ConnectionGUID: 2jOLw/vmSh2HcYpi8+ETWQ==
X-CSE-MsgGUID: NEav9xK2SP6V9563FWVvrA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,241,1763452800"; d="scan'208";a="205388581"
Received: from administrator-system-product-name.igk.intel.com
 ([10.91.214.181])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2026 15:04:05 -0800
Date: Wed, 21 Jan 2026 00:04:03 +0100 (CET)
From: =?ISO-8859-2?Q?Micha=B3_Grzelak?= <michal.grzelak@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH v2 2/2] drm/{i915, xe}/dsb: move DSB buffer to parent
 interface
In-Reply-To: <df117c862a6d34dae340e4a85c2482b4e29c8884.1768923917.git.jani.nikula@intel.com>
Message-ID: <fa3f1073-b24c-9b2f-85a9-fd0aba801069@intel.com>
References: <cover.1768923917.git.jani.nikula@intel.com>
 <df117c862a6d34dae340e4a85c2482b4e29c8884.1768923917.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed;
 BOUNDARY="8323329-1954757119-1768925435=:3959841"
Content-ID: <de78c688-88a1-f5bd-9b89-4f4bce201c63@intel.com>
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
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[michal.grzelak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCPT_COUNT_THREE(0.00)[3];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:email,intel.com:dkim,intel.com:mid]
X-Rspamd-Queue-Id: D83244D738
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-1954757119-1768925435=:3959841
Content-Type: text/plain; CHARSET=ISO-8859-2; format=flowed
Content-Transfer-Encoding: 8BIT
Content-ID: <227e5ac4-3a4d-6624-b7e0-122e1712d2f5@intel.com>

On Tue, 20 Jan 2026, Jani Nikula wrote:
> Move the DSB buffer handling to the display parent interface, making
> display more independent of i915 and xe driver implementations.
>
> Since the DSB parent interface is only called from intel_dsb.c, add the
> wrappers there with smaller visibility instead of the usual
> intel_parent.[ch], and using struct intel_dsb as the context parameter
> for convenience.
>
> Unfortunately, memset() being a macro in linux/fortify-string.h, we
> can't use that as the function pointer name. dsb->memset() would be
> using the macro and leading to build failures. Therefore, use .fill()
> for the memset() functionality.
>
> v2: s/memset/fill/
>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Micha³ Grzelak <michal.grzelak@intel.com>

BR,
Micha³
--8323329-1954757119-1768925435=:3959841--
