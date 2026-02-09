Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ONZxDPz4iWn5FAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 09 Feb 2026 16:10:52 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2455D111AAC
	for <lists+intel-gfx@lfdr.de>; Mon, 09 Feb 2026 16:10:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D5DA210E413;
	Mon,  9 Feb 2026 15:10:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="I0KbLPit";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 991C510E413;
 Mon,  9 Feb 2026 15:10:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770649847; x=1802185847;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=ms/Begmy9LjHPEoUJcIXW9BvtoJA723LWVNNWyWTaxc=;
 b=I0KbLPitcJhey2Kq1zXUk0QLrmPxtXxWQsZAuJ97XQLEgxKPtjXneIth
 176V+piw6nB/dUbwFD6zGLelVCBI+0grtBHngd/TlpZxoi95Z3h7eTLeV
 yjQFW5TKOsgMplr6vc7PN2/QArbgzWokEnkATAo34cGAkTrQBUAEqbd2w
 DBFUbkKIXLawyxpb+nJe+YM30cLvn2OcSSTRd+qwE9k3McPBk5snEkkNT
 XsfeyCkI2KlHkTkCEe4ymHdkAVBIL2XjCiHaiUcQda/6Kmm+JNCfIf7U6
 YjhreyWUXXhZurcW9zuVEqmNSv85m9o5tevt793TMzQLzbpWBiv89cLIW w==;
X-CSE-ConnectionGUID: lJDxVOd9SwyX4PUAR+W8ng==
X-CSE-MsgGUID: pz1dmJqKQ2GrmOfCSXhvlA==
X-IronPort-AV: E=McAfee;i="6800,10657,11696"; a="82869054"
X-IronPort-AV: E=Sophos;i="6.21,282,1763452800"; d="scan'208";a="82869054"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2026 07:10:47 -0800
X-CSE-ConnectionGUID: P4EsfdI8Qa2enyYoop9WVg==
X-CSE-MsgGUID: LdUC4nBzT2aX6ZkxFd4dtw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,282,1763452800"; d="scan'208";a="216580321"
Received: from ettammin-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.186])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2026 07:10:46 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [CI] drm/i915/display: change pipe allocation order for
 discrete platforms
In-Reply-To: <20260206123715.234245-1-jani.nikula@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260206123715.234245-1-jani.nikula@intel.com>
Date: Mon, 09 Feb 2026 17:10:42 +0200
Message-ID: <cf64c6a82c6ee7275b6e4099c6717c0039367cbe@intel.com>
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
X-Spamd-Result: default: False [-0.81 / 15.00];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	RCVD_COUNT_THREE(0.00)[4];
	DKIM_TRACE(0.00)[intel.com:+];
	MISSING_XM_UA(0.00)[];
	ARC_NA(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:dkim,intel.com:email]
X-Rspamd-Queue-Id: 2455D111AAC
X-Rspamd-Action: no action

On Fri, 06 Feb 2026, Jani Nikula <jani.nikula@intel.com> wrote:
> @@ -415,6 +438,8 @@ int intel_crtc_init(struct intel_display *display)
>  		    INTEL_NUM_PIPES(display), str_plural(INTEL_NUM_PIPES(display)));
>  
>  	for_each_pipe(display, pipe) {
> +		pipe = reorder_pipe(display, pipe);
> +

This assignment screws up the loop variable and everything
breaks. *facepalm*.

See [1] instead.


[1] https://lore.kernel.org/r/20260209141657.629872-1-jani.nikula@intel.com


-- 
Jani Nikula, Intel
