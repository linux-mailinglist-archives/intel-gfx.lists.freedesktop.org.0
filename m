Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GIrbHfjZBmoGogIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 15 May 2026 10:31:52 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B9D154B54F
	for <lists+intel-gfx@lfdr.de>; Fri, 15 May 2026 10:31:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B7FC10F47F;
	Fri, 15 May 2026 08:31:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="O4ABvMfs";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8FB8E10F47F
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 May 2026 08:31:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778833909; x=1810369909;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=/QXe8Fz7eUf5Y2mXXOejvLhu2WfyzpNBlbcvLtJc/Sc=;
 b=O4ABvMfsXLyRq49LkX8MQszCV7g8vLqOj1zEJR02FNTPtaHqjAFqAEEt
 TcyYZeyN/QDW0GgEB5YqDZ9TA729oaxmIPiO2E51+TPstmP7FHwvXB9Kc
 AWSC3d2xx4G3Lkk8ORuwUi5kps8uMBYubQKw2R3v+/aD8A3//XmmFisiu
 bcIyzAuTuSPJvOvUfzpmYSvpepACKxGoV3vGbjdIXsa3ItpmrhzxjLO+S
 uRCS+2eidd8FXWNpl0jJ8R6uWs+y2Czmw+hAP8H+TRHXb0tW7FT/ZuXNI
 4NSqrWE67JGg0aN3jk53ETAhtSQp/EODdSJFU9ua7idr1/DCEU5TPcADP A==;
X-CSE-ConnectionGUID: B+l6VWQJTe+OQDcQNEKEqQ==
X-CSE-MsgGUID: S+y6QMyBTPCGxGVFumBdWg==
X-IronPort-AV: E=McAfee;i="6800,10657,11786"; a="79907521"
X-IronPort-AV: E=Sophos;i="6.23,236,1770624000"; d="scan'208";a="79907521"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2026 01:31:49 -0700
X-CSE-ConnectionGUID: 4nnrcWeKSX2CC34QorKnHQ==
X-CSE-MsgGUID: 1lEvKwGWTEyRh4Ah0LYCYg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,236,1770624000"; d="scan'208";a="234381754"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.245.71])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2026 01:31:48 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: reconicreferenssse <reconicpreferensse@proton.me>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: Re: Kernel panic in xe_display_flush_cleanup_work (NULL pointer
 dereference Alder Lake + Arc A370M)
In-Reply-To: <sdiBHig2vClGj4J4dEEkXxWHsF6SBPX9B2vSkScXXRR9XKzYpv5WxsxcdbRwAjPfkqulToypH9qwndGaVqbOH6HLNbCNfvVzVpfTno2IqbQ=@proton.me>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <sdiBHig2vClGj4J4dEEkXxWHsF6SBPX9B2vSkScXXRR9XKzYpv5WxsxcdbRwAjPfkqulToypH9qwndGaVqbOH6HLNbCNfvVzVpfTno2IqbQ=@proton.me>
Date: Fri, 15 May 2026 11:31:45 +0300
Message-ID: <4f9f30384c24683925e88d266b943d2102c442e3@intel.com>
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
X-Rspamd-Queue-Id: 0B9D154B54F
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.81 / 15.00];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:reconicpreferensse@proton.me,m:rodrigo.vivi@intel.com,s:lists@lfdr.de];
	HAS_ORG_HEADER(0.00)[];
	FORGED_SENDER(0.00)[jani.nikula@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCPT_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	TO_DN_EQ_ADDR_SOME(0.00)[]
X-Rspamd-Action: no action

On Wed, 13 May 2026, reconicreferenssse <reconicpreferensse@proton.me> wrote:
> I am reporting a fatal NULL pointer dereference (address:
> 00000000000005d8) in the 'xe' driver. This is a critical boot-blocker
> on hybrid Alder Lake-P + DG2 platforms, causing a Kernel Panic during
> early KMS initialization (initramfs) before the LUKS password prompt.

...

> Steps to Reproduce:
> 1. Boot with: xe.force_probe=46a6,5693 i915.force_probe=!46a6,!5693

The xe driver does not properly support ADL-P or DG2. As you know, since
you're forcing the probe, and it taints the kernel.

We might have a look if this is generic and unrelated to the platform,
but otherwise you should use the i915 driver with ADL-P and DG2.

BR,
Jani.

-- 
Jani Nikula, Intel
