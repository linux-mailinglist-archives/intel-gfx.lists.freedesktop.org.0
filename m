Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qDSRMiWlHWr5cgkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Jun 2026 17:28:37 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 54BC4621B45
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Jun 2026 17:28:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 054C11134C3;
	Mon,  1 Jun 2026 15:28:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="INae7iy1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D3321134C1;
 Mon,  1 Jun 2026 15:28:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780327714; x=1811863714;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=3S42FX/eeqsZqTnlxB/zu3fYzUgrTMnuEf21k85uzOc=;
 b=INae7iy11U+pAABGMUKIGmlrgqLf+cmRhsZqAxYv0egAJzB5lEUZnsXT
 IsKJU7HJE2vCDwHTkeud6oQx8uotI64iv3XuykBxuWCwJUQ3AfBAnMiac
 VOqk8FcQm9wP0PIxh4d3q93kI2wvP2pd8teHKkPwT5TP7CzC+jE5jLJ4Z
 Iu6nFERs6Pj8/28H7Oe9DeAb/bDQrSbErPVdHT3kHg6c8uxRUcRKSFmkU
 mwLvfCkVlRL48F/HJDetDwhyQD3zTIyOaH45geLGUw9mZ2pyMAIYBPbp3
 sbcpRIbaEJhPEdFHpMavjKsS7D6/C1w/S3rrIBY3+sBg9aB/phLqI4y4H w==;
X-CSE-ConnectionGUID: 3JSoOqCmSv20nHpxxB/pfg==
X-CSE-MsgGUID: hdugLGWxTTSRKTu8jiKDgQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11804"; a="81201938"
X-IronPort-AV: E=Sophos;i="6.24,181,1774335600"; d="scan'208";a="81201938"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2026 08:28:33 -0700
X-CSE-ConnectionGUID: 6QI3/huuTtqMLTVecconEQ==
X-CSE-MsgGUID: sMaxWqyNRpOTqRp2du+d5Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,181,1774335600"; d="scan'208";a="241093420"
Received: from amilburn-desk.amilburn-desk (HELO localhost) ([10.245.245.121])
 by fmviesa008-auth.fm.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 01 Jun 2026 08:28:30 -0700
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
In-Reply-To: <20260529070009.GA313534@linux.fritz.box>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260529070009.GA313534@linux.fritz.box>
Date: Mon, 01 Jun 2026 18:28:27 +0300
Message-ID: <ddf0233e50044059c85279f928661563ef6a55bf@intel.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
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
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:mid,intel.com:dkim]
X-Rspamd-Queue-Id: 54BC4621B45
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, 29 May 2026, Thomas Zimmermann <tzimmermann@suse.de> wrote:
> Rajat Gupta (1):
>       drm: prevent integer overflows in dumb buffer creation helpers

Looks like this commit 5ab62dd3687b ("drm: prevent integer overflows in
dumb buffer creation helpers") regressed in our CI, awaiting
confirmation.

No matter what, it's immediately suspect because AFAICT it was not
posted on the lists, and the commit doesn't have a Link: trailer
pointing at the patch.

This is not how we're supposed to roll. What's going on?


BR,
Jani.

-- 
Jani Nikula, Intel
