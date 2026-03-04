Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WN68OfgdqGnyoAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 04 Mar 2026 12:56:40 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C31AE1FF651
	for <lists+intel-gfx@lfdr.de>; Wed, 04 Mar 2026 12:56:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1151A10E9D3;
	Wed,  4 Mar 2026 11:56:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (unknown [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 873BF10E9D2;
 Wed,  4 Mar 2026 11:56:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772625383; x=1804161383;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=Ri3HsTSLDu3EZafDIHqGSqeqZsYKpo8/LFagdvZSA0g=;
 b=fpHntbrRAc1dC1jR9WAiXCz9AfcyVraiY4eybrikhCHYDS8I2XEcVs8v
 McETxBadX7TXoVr0FjjD/QiecKsDqIDIlQRclVZ3IhXQQ3fbluZtqDqhR
 4RyhePj0hgfyWOWPhoo+WXGoZtr2wkwIf0DMJflWxdhYTPCj/YYDwH61l
 mBxj4thJyPXccjeh5SSuyE+MMWNvg57LpJW9NhZVe0oqXnu+kgQkGIHWD
 5mxas2jocsRNnM5i9vN6Em589AqSswFWKUYGg54OBL2BUuP3cNZyZLjh0
 bDPfrqt8X9XtQAcLzZoUypm3AKdhNt4bY1YKVtoCsogv5QYL2lCBXzlyh Q==;
X-CSE-ConnectionGUID: 0irivKYGQ06efU8q3VjGvg==
X-CSE-MsgGUID: 8tZpDlEETB6KtlND87GqvA==
X-IronPort-AV: E=McAfee;i="6800,10657,11718"; a="73751387"
X-IronPort-AV: E=Sophos;i="6.21,323,1763452800"; d="scan'208";a="73751387"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2026 03:56:12 -0800
X-CSE-ConnectionGUID: XdvuEKH4ShC67VQuiXOGtQ==
X-CSE-MsgGUID: HwkgNmTuQUaOT4ZTtXbigg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,323,1763452800"; d="scan'208";a="217554542"
Received: from krybak-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.84])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2026 03:56:10 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 0/8] drm/{i915,xe}: refactor register helpers
In-Reply-To: <aab6Y_u1dZjWrwWj@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <cover.1772042022.git.jani.nikula@intel.com>
 <aab6Y_u1dZjWrwWj@intel.com>
Date: Wed, 04 Mar 2026 13:56:07 +0200
Message-ID: <18693734614df43572488ea293c9b9b6639119d4@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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
X-Rspamd-Queue-Id: C31AE1FF651
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.11 / 15.00];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	DKIM_TRACE(0.00)[intel.com:?];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_THREE(0.00)[3];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	DMARC_DNSFAIL(0.00)[intel.com : query timed out];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-0.919];
	R_DKIM_TEMPFAIL(0.00)[intel.com:s=Intel];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:email,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Action: no action

On Tue, 03 Mar 2026, Rodrigo Vivi <rodrigo.vivi@intel.com> wrote:
> On Wed, Feb 25, 2026 at 07:57:02PM +0200, Jani Nikula wrote:
>> I realized xe_reg_defs.h subtly pulls in i915_reg_defs.h from i915 via
>> the compat headers, which is ugly and wrong to say the least, and then
>> xe uses the macros all over the place.
>
> I also hadn't realized we had this mess o.O
>
>> 
>> Clean this up by creating two shared headers under include/drm/intel,
>> with some related cleanups on top.
>
> Nice idea on the common header and nice clean up.
>
> Either way is good but probably drm-intel-next is easier:
>
> Acked-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

Thanks, pushed the lot to drm-intel-next.

BR,
Jani.

-- 
Jani Nikula, Intel
