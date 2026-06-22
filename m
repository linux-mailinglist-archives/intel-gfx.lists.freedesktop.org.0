Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id e+pfLQIZOWpFmwcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Jun 2026 13:14:10 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D9E466AEFA2
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Jun 2026 13:14:09 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=mHe1Iclp;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A0F7F10E618;
	Mon, 22 Jun 2026 11:14:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 63E7910E618;
 Mon, 22 Jun 2026 11:14:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782126845; x=1813662845;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=DAG+2ZBryXc21q2Gr3xUBfhaj0OLfi8OPvbrYwZsteQ=;
 b=mHe1IclpdtWxmaxY3ggRWYfbNYtqD51KwuqhPfKdfW4SU7uRVdMOMHrg
 UCF33DwETNlBWfnApGwfNBS66rAL150AMorlKg3yMc//JwH3e8toPy6kZ
 QXUC6/obGqCQNUZb5eZhBtDs4J5r/F1fh4xvPaFOOx3PNCeAWI76qEyEG
 5IxM6pa0anqtKxUMvnyDBRh/2Zp2mlwimQcyWqgm2zL/f0uTE3DNF5yNe
 1ev9jYebFzUraVxGFekHOpZW8uUy7ajGFxFPwLUbNCNsUK1ahfHOGN7ER
 M69wZ5P9CKqVYBpAJii3bsl1W4sx6gaBosaaNMN+TusFDbJGP4n0nHDkk Q==;
X-CSE-ConnectionGUID: kZu5lRxsQfCUexL/d+WwlA==
X-CSE-MsgGUID: RgwI98NOQF+VGDPnHKwakA==
X-IronPort-AV: E=McAfee;i="6800,10657,11824"; a="100281902"
X-IronPort-AV: E=Sophos;i="6.24,218,1774335600"; d="scan'208";a="100281902"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2026 04:14:04 -0700
X-CSE-ConnectionGUID: oBYmqMFTTEeyuclBxQj7Fg==
X-CSE-MsgGUID: qLCk5s9vQxy8vyGz3/3FQQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,218,1774335600"; d="scan'208";a="248318457"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.245.160])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2026 04:14:03 -0700
Date: Mon, 22 Jun 2026 14:13:59 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Michel =?iso-8859-1?Q?D=E4nzer?= <michel.daenzer@mailbox.org>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, wayland-devel@lists.freedesktop.org
Subject: Re: [PATCH 0/4] drm/i915: Work harder to enable VRR based refresh
 rate changes on eDP
Message-ID: <ajkY958UZbD1-5QQ@intel.com>
References: <20260612144203.31715-1-ville.syrjala@linux.intel.com>
 <3d441831-71bc-49fd-823f-3af443e55b20@mailbox.org>
 <31da350f-adfc-4b2c-a7c5-5ed884ffd9ca@mailbox.org>
 <ai_40qUa-MVdbOEf@intel.com>
 <18f0c14b-f973-4e1a-948b-5274cc36895c@mailbox.org>
 <ajQ7W44qv28-i6Pq@intel.com>
 <159d862f-f06d-4ed7-bf81-082220cdfdd6@mailbox.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <159d862f-f06d-4ed7-bf81-082220cdfdd6@mailbox.org>
X-Patchwork-Hint: comment
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.31 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D9E466AEFA2

On Fri, Jun 19, 2026 at 10:48:45AM +0200, Michel Dänzer wrote:
> On 6/18/26 20:39, Ville Syrjälä wrote:
> > On Tue, Jun 16, 2026 at 09:21:01AM +0200, Michel Dänzer wrote:
> >> On 6/15/26 15:06, Ville Syrjälä wrote:
> >>>
> >>> What we're doing here is selecting the actual timings to drive an internal laptop 
> >>> panel, given some random cooked up modeline from userspace.
> >>
> >> How can user space know what cooked-up modes it can (not) expect to work with this?
> > 
> > Without VRR support it can only expect modes that have the same refresh
> > rate as one of the modes on the connector's mode list to work.
> 
> This seems to contradict "For non-VRR panels we just pick the fixed mode whose refresh rate is closest to the user specified mode, and reject the commit if it's not close enough (<= 1 Hz)" below.
> 
> 
> >>> We pick the actual mode from the set of "fixed modes" (ie. the modes
> >>> that the panel/system itself has reported as supported via
> >>> EDID/VBT/ACPI/etc.). For non-VRR panels we just pick the fixed mode
> >>> whose refresh rate is closest to the user specified mode, and reject
> >>> the commit if it's not close enough (<= 1 Hz).
> >>
> >> Can't programming different mode timings result in the panel blanking intermittently?
> > 
> > Userspace can specify that a modeset is not allowed, thus if the
> > driver can't achieve the refresh rate change without blinks the
> > commit will be rejected.
> 
> How can the refresh rate change without a modeset (without VRR)?

Given a capable eDP panel we can reprogram the dotclock/Mvid/Nvid
atomically so that the refresh rate changes from one frame to another.

-- 
Ville Syrjälä
Intel
