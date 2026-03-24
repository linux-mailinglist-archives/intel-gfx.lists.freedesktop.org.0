Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eHZlFYQiw2l6ogQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2026 00:47:16 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 10B4E31DCAF
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2026 00:47:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8C1DD10E629;
	Tue, 24 Mar 2026 23:47:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TfdACUmX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F370C10E626;
 Tue, 24 Mar 2026 23:47:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774396033; x=1805932033;
 h=date:from:to:cc:subject:in-reply-to:message-id:
 references:mime-version:content-id;
 bh=mI1bh5gqbfORhnPDUGfJfmXAI97DqCJEXlmH5wzPQOI=;
 b=TfdACUmXUSE2zegyydh3tjAzITqrIMphcWHGrcmNPDI8VjoVDoQQ+XWo
 J7welHvpw84bleb8yWk2HQtD9uxfmN76ka0I6ljVkPTxfThNoev7/Du5p
 J8mwAKnC21/9H/ZV6g1Wx57drmjB0Bn+T4fpJTL5BMrryxQ5Y8PB7Moij
 InzHOmHAfAxCYsPyo/tijrRDWAdD9CS6kn8O6yuub1/Aw9Q3jvVI54G+W
 /8PKhJjYzNFjnty9gwXG6esNvyN3YWbxVYSvnwSAt7DvI2E/5YToteqkC
 cmMnXtHjPoEQWBIWozCfS/jsLdkaA0LMtm1cuq/FowfDwGoncjYRIeKWj w==;
X-CSE-ConnectionGUID: sEpsuefTSOGt1CZIj87Lbw==
X-CSE-MsgGUID: UfKHlTTIRbafTbZzuk0PrA==
X-IronPort-AV: E=McAfee;i="6800,10657,11739"; a="86120618"
X-IronPort-AV: E=Sophos;i="6.23,139,1770624000"; d="scan'208";a="86120618"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2026 16:47:12 -0700
X-CSE-ConnectionGUID: 7uuaKlEXQG+skvuuAei51Q==
X-CSE-MsgGUID: fhnFyqVMTKikzF6G36ZZvw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,139,1770624000"; d="scan'208";a="223712256"
Received: from administrator-system-product-name.igk.intel.com
 ([10.91.214.181])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2026 16:47:09 -0700
Date: Wed, 25 Mar 2026 00:47:07 +0100 (CET)
From: =?ISO-8859-2?Q?Micha=B3_Grzelak?= <michal.grzelak@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, 
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 5/5] drm/xe: pass struct xe_device to
 xe_display_bo_fbdev_prefer_stolen()
In-Reply-To: <6cfa029f052a1e7638b09545b04de0991b5f3416.1773840563.git.jani.nikula@intel.com>
Message-ID: <2e528438-2235-3488-bff5-95d83d9025e9@intel.com>
References: <cover.1773840563.git.jani.nikula@intel.com>
 <6cfa029f052a1e7638b09545b04de0991b5f3416.1773840563.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="8323329-1172233498-1774395179=:294587"
Content-ID: <e3c5b289-0db8-cb32-0f88-cad0b80c7cf6@intel.com>
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
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[multipart/mixed,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MIME_TRACE(0.00)[0:+,1:+];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[michal.grzelak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[]
X-Rspamd-Queue-Id: 10B4E31DCAF
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-1172233498-1774395179=:294587
Content-Type: text/plain; CHARSET=ISO-8859-2; format=flowed
Content-Transfer-Encoding: 8BIT
Content-ID: <d5cc9dd7-7338-63ee-6b96-2a10b460c397@intel.com>

On Wed, 18 Mar 2026, Jani Nikula wrote:
> This is xe core code, use struct xe_device for simplicity.
>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Same comment as from patch [3/5], if it applies at all. With it being
addressed:

Reviewed-by: Micha³ Grzelak <michal.grzelak@intel.com>

BR,
Micha³
--8323329-1172233498-1774395179=:294587--
