Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eFiBJrtg+GlJtgIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 04 May 2026 11:02:51 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2ECAC4BAB67
	for <lists+intel-gfx@lfdr.de>; Mon, 04 May 2026 11:02:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 91A1E10E0EE;
	Mon,  4 May 2026 09:02:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="g//sEGC6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8324210E0EE
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 May 2026 09:02:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777885369; x=1809421369;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=YEAKfeHKZH0HnNFOznpFbulXQ7uyO/xl21TND3LzRh0=;
 b=g//sEGC6VOd6ZQJP9nDbm09+/VIA7NYALobGHGWQr0BFelDArqLshioU
 ztdJXlfJDltH8w1FlbudhJgn4j1IPQipIuF0EGZroTNzg2aZ3zjxT9VlZ
 6i3SBNnCsR5YPaT03pn9gER+HbuD/vRM8rpVixwNIUpLLC3vjPOAAAPpA
 zbKBW9X2fiVh/2Dg+UcQcqll8gA5CDcTU1mE/qJCDUDzTZ4/rUrs6UE7p
 PWQi6M04PSBmYIyufV3N7RtZfSIReVgG2TEOD32WipprmDqgImC8zftAQ
 Z2VsWoBB1btV+x8DgqyevwnRfzoIx1cNtZtweU/9kGM2a6le9yN4UkAE8 Q==;
X-CSE-ConnectionGUID: yYA2wnH9RSGVFcAstwWLjA==
X-CSE-MsgGUID: yJ/nZRT9Touk8uY2v8TBSA==
X-IronPort-AV: E=McAfee;i="6800,10657,11775"; a="101406726"
X-IronPort-AV: E=Sophos;i="6.23,215,1770624000"; d="scan'208";a="101406726"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2026 02:02:49 -0700
X-CSE-ConnectionGUID: hZCpxrlUT4aWAPUHaLfhxQ==
X-CSE-MsgGUID: ktwlsYUcTpO64SlmPOvwCQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,215,1770624000"; d="scan'208";a="237239820"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.245.157])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2026 02:02:46 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
Cc: Matt Roper <matthew.d.roper@intel.com>, intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 1/4] drm/i915/bw: Extract platform-specific parameters
In-Reply-To: <87mrz5wmjn.fsf@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260408-separate-platform-from-diplay-ip-specific-bw-params-v1-0-23c53afa7db0@intel.com>
 <20260408-separate-platform-from-diplay-ip-specific-bw-params-v1-1-23c53afa7db0@intel.com>
 <5a2fefe3f3d7ee92d3cc1bca1ffe88370d54c822@intel.com>
 <20260409231256.GB6301@mdroper-desk1.amr.corp.intel.com>
 <87ik9yx4kx.fsf@intel.com>
 <20260410173355.GE6301@mdroper-desk1.amr.corp.intel.com>
 <87cy06wm89.fsf@intel.com> <87mrz5wmjn.fsf@intel.com>
Date: Mon, 04 May 2026 12:02:44 +0300
Message-ID: <412a9f41484be1b93d330b835622e46e34cec6cd@intel.com>
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
X-Rspamd-Queue-Id: 2ECAC4BAB67
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_RHS_MATCH_TO(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:gustavo.sousa@intel.com,m:matthew.d.roper@intel.com,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER(0.00)[jani.nikula@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	HAS_ORG_HEADER(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	TO_DN_SOME(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]

On Tue, 14 Apr 2026, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
> In general, if this function is called and a platform check is missing
> here, it should be considered a bug anyway, which should be caught early
> on during the initial enabling for the platform.
>
> So I'm inclined to raise a warning and let the null-pointer dereference
> happen.

Ack.

BR,
Jani.


-- 
Jani Nikula, Intel
