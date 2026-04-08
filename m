Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +CsAOyoT1mngAwgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Apr 2026 10:34:50 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BF7613B91DA
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Apr 2026 10:34:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DB83510E587;
	Wed,  8 Apr 2026 08:34:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="a/7N/lPh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E66EA10E587;
 Wed,  8 Apr 2026 08:34:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775637287; x=1807173287;
 h=mime-version:content-transfer-encoding:in-reply-to:
 references:subject:from:cc:to:date:message-id;
 bh=Z95CjdbwHS0pAgI2+9rZ0GmygT3N2HLDTmrehBn9p14=;
 b=a/7N/lPhapcnoXmL0pCpJvMrCkeQlmf68Hs03lRSJh8Pl6p55MFan3p3
 S3K7Xz+KlJ4i9tmTh9e3Z5E8XWrDZrTZPsUbFebOvUPFHBAxzT35SzbU9
 kAA2KmuTb1QbdImIfqidZUCKDa5kqFD12p4lgvXTjLGpdlGQvnELUhFJ3
 lrP0iM74fhl7r7WH2iohYk+Wntcl5jRgR7G8onu68M1Eib/dhOWRpy7ka
 3iLtOy3d3YZYSPHKedVlZc0KaYBnc+0ERiATcDSmLPcmDMU+DD9fsYq2P
 rsgbTFZ/w1+fa1UWJXEGjpm25G4CvSDYi1IUk5Ac92vLaS2Wh6QV+8OMu A==;
X-CSE-ConnectionGUID: R1A2SNX7QfC6O9kSNwOx9A==
X-CSE-MsgGUID: kvkk9ZY5Ry+Xo7rkON6r3g==
X-IronPort-AV: E=McAfee;i="6800,10657,11752"; a="99239265"
X-IronPort-AV: E=Sophos;i="6.23,167,1770624000"; d="scan'208";a="99239265"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2026 01:34:47 -0700
X-CSE-ConnectionGUID: pfhp5jv3RqObpRsbZUruKw==
X-CSE-MsgGUID: cfqGAIYsQ1yi2s9E6KjhQg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,167,1770624000"; d="scan'208";a="233286588"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.245.1])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2026 01:34:45 -0700
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20260408082859.69823-1-joonas.lahtinen@linux.intel.com>
References: <20260408082859.69823-1-joonas.lahtinen@linux.intel.com>
Subject: Re: [PATCH] drm/i915/gem: Don't use VMA from wrong VM in EXECBUF
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Direct Rendering Infrastructure - Development
 <dri-devel@lists.freedesktop.org>,
 Ville =?utf-8?b?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>,
 Linus Torvalds <torvalds@linuxfoundation.org>
To: Intel graphics driver community testing & development
 <intel-gfx@lists.freedesktop.org>
Date: Wed, 08 Apr 2026 11:34:41 +0300
Message-ID: <177563728194.70530.11694465930209500099@jlahtine-mobl>
User-Agent: alot/0.12.dev7+g16b50e5f
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
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[joonas.lahtinen@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_COUNT_THREE(0.00)[4];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_ALL(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: BF7613B91DA
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

There will be no CI results as Linus already has a temporary fix in his
tree which got to drm-tip via the various -fixes trees. But its the same
change suggested by Ville so effectively it's been tested already in
every CI run after incorporating -rc7 to -fixes trees this week.

Regards, Joonas
