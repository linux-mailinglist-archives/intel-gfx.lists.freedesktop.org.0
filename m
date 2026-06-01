Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SFpgApinHWpbcwkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Jun 2026 17:39:04 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0600E621E07
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Jun 2026 17:39:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 865EC1134D9;
	Mon,  1 Jun 2026 15:39:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PyMKU2lR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 091E21134D9;
 Mon,  1 Jun 2026 15:39:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780328340; x=1811864340;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=mGRPxwXourr31tDVClLWGqgPyAcgKKcJcmEM5iddfDw=;
 b=PyMKU2lR6kHmb/37R3RU+mzE23nO8/E3OpASobQXUcqxkHzU0rHfNUur
 U3cKjAsTaE2hLHSpMsciSrCxw9kR9Xi99CGSIGd+gvF/Dwq0w1JFMSbhB
 r/7DyFE08Vpoe/wdC/FbaPyEyAyn4nlk6RbwAfcPQszRT1h2GOVPCCb52
 vgX9Eua0ZMggcjj9bcWPuAY8ipaic9CCH7zt3SZs4ADAbs7zm884eqNUx
 ikFIBYlglVy7CPdJSO0BBrqjOzwGxdfosFgytbl4Jwu/FxhmGqYeCIWrj
 MUlVSI9w9NbrPQy1E18UkZKDiBrUS10fjD6hLowhS03mhtOKC5gWsW8gc Q==;
X-CSE-ConnectionGUID: oPJtHnxRQkKbr8isZOw55g==
X-CSE-MsgGUID: wI5QemV/Ra6WtEzypjs/VA==
X-IronPort-AV: E=McAfee;i="6800,10657,11804"; a="81119564"
X-IronPort-AV: E=Sophos;i="6.24,181,1774335600"; d="scan'208";a="81119564"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2026 08:38:59 -0700
X-CSE-ConnectionGUID: lEJQv2Q3TWa4cCxSUtpBsw==
X-CSE-MsgGUID: t3ldZQUwTZuEa6SjkoO42Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,181,1774335600"; d="scan'208";a="243428652"
Received: from amilburn-desk.amilburn-desk (HELO localhost) ([10.245.245.121])
 by orviesa008-auth.jf.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 01 Jun 2026 08:38:54 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Thomas Zimmermann <tzimmermann@suse.de>, Dave Airlie
 <airlied@gmail.com>, Simona Vetter <simona.vetter@ffwll.ch>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, Tvrtko Ursulin
 <tursulin@ursulin.net>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Thomas
 Zimmermann <tzimmermann@suse.de>, Maarten Lankhorst
 <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>,
 Matthew Brost <matthew.brost@intel.com>, Thomas =?utf-8?Q?Hellstr=C3=B6m?=
 <thomas.hellstrom@linux.intel.com>, Oded Gabbay <ogabbay@kernel.org>,
 dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, dim-tools@lists.freedesktop.org
Subject: Re: [PULL] drm-misc-fixes
In-Reply-To: <ddf0233e50044059c85279f928661563ef6a55bf@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260529070009.GA313534@linux.fritz.box>
 <ddf0233e50044059c85279f928661563ef6a55bf@intel.com>
Date: Mon, 01 Jun 2026 18:38:51 +0300
Message-ID: <e1a2cc27fb04a88be23973d3cb7868f3d4471d0d@intel.com>
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
X-Spamd-Result: default: False [-0.81 / 15.00];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[suse.de,gmail.com,ffwll.ch];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	HAS_ORG_HEADER(0.00)[];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Queue-Id: 0600E621E07
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Mon, 01 Jun 2026, Jani Nikula <jani.nikula@linux.intel.com> wrote:
> On Fri, 29 May 2026, Thomas Zimmermann <tzimmermann@suse.de> wrote:
>> Rajat Gupta (1):
>>       drm: prevent integer overflows in dumb buffer creation helpers
>
> Looks like this commit 5ab62dd3687b ("drm: prevent integer overflows in
> dumb buffer creation helpers") regressed in our CI, awaiting
> confirmation.

The IGT test kms_big_fb uses max width and height from GetResources, and
i915 and xe use max_width 16384 and max_height 16384 in mode config.

The regressing commit adds random hard limits not based on anything:

+       /* Reject unreasonable inputs early.  Dumb buffers are for software
+        * rendering; nothing legitimate needs more than 8192x8192 at 32bpp.
+        * This prevents overflows in downstream alignment helpers.
+        */
+       if (args->width >= 8192 || args->height >= 8192 || args->bpp > 32)
+               return -EINVAL;

This is now in v7.1-rc6. Please revert ASAP.


BR,
Jani.


>
> No matter what, it's immediately suspect because AFAICT it was not
> posted on the lists, and the commit doesn't have a Link: trailer
> pointing at the patch.
>
> This is not how we're supposed to roll. What's going on?
>
>
> BR,
> Jani.

-- 
Jani Nikula, Intel
