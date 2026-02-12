Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0JriNNz6jWnz9wAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Feb 2026 17:07:56 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5919212F3C1
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Feb 2026 17:07:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4F51410E776;
	Thu, 12 Feb 2026 16:07:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DBloByU5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 876C310E782
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Feb 2026 16:07:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770912473; x=1802448473;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=GkKTGO+t5/Z6XXyLmiwOt2JjAp0F/JHcxtVIESLLmzs=;
 b=DBloByU5gSAdVaAzzPJQ0hSSRO98Z0FfxGTitNC8NQOHTyHk/s30Jx+M
 v8x9AhQNsy5y5vA8q6JV05LakwDAqoP4SAvuXGPo3i4En+ksBekJKdiWd
 GbQ7AXztV8my2fx0dbsB1Z3kL2fb7TU1I+61YR9OMHXzEiAwo4Oziz6YF
 v7Mt4WD4yOGVS75lUH+gvkeqGOLBvt2d8+CFyGgIH91r5nCbHlMMupBam
 lZjqQ7WmjGMe5tbhXuZRveFjcGgi1S/84hf1n2aph+WMu6c8SRP90OP5a
 +mabnzK0UOMpK/f+xUJWkLl+32SmOhGc5D4fUvuvOUhs8+RPr4/B2spzN A==;
X-CSE-ConnectionGUID: +TZlq+/LS1ue3qUkBfR/HA==
X-CSE-MsgGUID: cdWwIKqDS62FiTB2H+PzPw==
X-IronPort-AV: E=McAfee;i="6800,10657,11699"; a="71113681"
X-IronPort-AV: E=Sophos;i="6.21,287,1763452800"; d="scan'208";a="71113681"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2026 08:07:47 -0800
X-CSE-ConnectionGUID: VHFiTaQ9RK63BUhbIyHJjQ==
X-CSE-MsgGUID: RfcbzPqORt2tQ29CA4qAdQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,287,1763452800"; d="scan'208";a="216796484"
Received: from ettammin-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.140])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2026 08:07:46 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Luca Coelho <luciano.coelho@intel.com>, intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 00/16] drm/i915/display: convert a bunch of W/A checks
 to the new framework
In-Reply-To: <20260212125526.344401-1-luciano.coelho@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260212125526.344401-1-luciano.coelho@intel.com>
Date: Thu, 12 Feb 2026 18:07:42 +0200
Message-ID: <ac5d13a15dfb4474f3c62289f9996d5e33e7c2fd@intel.com>
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_RHS_MATCH_TO(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:luciano.coelho@intel.com,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWO(0.00)[2];
	FORGED_SENDER_FORWARDING(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER(0.00)[jani.nikula@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:dkim,intel.com:email]
X-Rspamd-Queue-Id: 5919212F3C1
X-Rspamd-Action: no action

On Thu, 12 Feb 2026, Luca Coelho <luciano.coelho@intel.com> wrote:
> Hi,
>
> This series convert the "low hanging fruits" of workaround checks to
> the new framework.  Some of the workarounds check other values that
> are not in the intel_display structure, so they don't directly fit in
> the workaround framework and will be left for later.

This series needs to be sent to intel-xe too for xe CI.

I did not do a detailed review, but I approve of the direction here.

Acked-by: Jani Nikula <jani.nikula@intel.com>


-- 
Jani Nikula, Intel
