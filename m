Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SJ9WIS5b72llAgEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Apr 2026 14:48:46 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F3F2472BB8
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Apr 2026 14:48:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C990510E724;
	Mon, 27 Apr 2026 12:48:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="C/yuP6WG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6054910E724
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Apr 2026 12:48:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777294123; x=1808830123;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=U2QW9rPB/uMKqOLZ2MFzoqqPjdB0CVfHun3O8NYdMtU=;
 b=C/yuP6WGDa0mYo97mZF+noNA3AsiuBXwwbAth/dJIGDr6vAmOQuW2Vra
 UbG4fgBPJsiFFbypWpeHzEF9QQBdFwTWYFoILFHTmYh/ZGl7WxBetOfxN
 aAHeN8q8VBNgeji7iGA193HxIHbT0VMEzqTLc6cFnf0RYVIKuRIkFVxyr
 0zSuzlg/IcbrsMfvjQiP/dMXefeZgLP21cWiF8M0gGDYuvai1bJs1ComN
 lS75ppeTivJbbNZCn1oQ7fQacp2tFi8gLBBowUkYcwloZo3Ys+deIBTo3
 jMCRfAc1M7awaM/bzyQDQuKm2sGjvfrgd+F9neE7KASZBSz30b/upVht2 g==;
X-CSE-ConnectionGUID: bOfVUReXTEW/WeBXM2AWLg==
X-CSE-MsgGUID: pXbMn3XvQBmUWTiWs6nWbA==
X-IronPort-AV: E=McAfee;i="6800,10657,11768"; a="95741021"
X-IronPort-AV: E=Sophos;i="6.23,202,1770624000"; d="scan'208";a="95741021"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2026 05:48:43 -0700
X-CSE-ConnectionGUID: C3Qye8ysSOqXRf9+KrnfiA==
X-CSE-MsgGUID: BoltTSEESTeZakOYm4YR4w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,202,1770624000"; d="scan'208";a="232642333"
Received: from fpallare-mobl4.ger.corp.intel.com (HELO localhost)
 ([10.245.244.53])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2026 05:48:41 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Sebastian Brzezinka <sebastian.brzezinka@intel.com>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>, intel-gfx@lists.freedesktop.org
Cc: andi.shyti@linux.intel.com, krzysztof.karas@intel.com
Subject: Re: [PATCH] drm/i915: replace fetch_and_zero() with kernel xchg()
In-Reply-To: <DI3XYF0I8YPD.336A8XEBGNCDT@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <75ba7e77fe28617f027ae49a620df8b580cd1000.1777291964.git.sebastian.brzezinka@intel.com>
 <7d18b591154516efd9be14c643bd576678b616bc@intel.com>
 <DI3XYF0I8YPD.336A8XEBGNCDT@intel.com>
Date: Mon, 27 Apr 2026 15:48:37 +0300
Message-ID: <b7e7bf8c2f0946763f992dc06342e0bfaba98c90@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
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
X-Rspamd-Queue-Id: 3F3F2472BB8
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_RHS_MATCH_TO(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:sebastian.brzezinka@intel.com,m:andi.shyti@linux.intel.com,m:krzysztof.karas@intel.com,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	HAS_ORG_HEADER(0.00)[];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER(0.00)[jani.nikula@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid]

On Mon, 27 Apr 2026, Sebastian Brzezinka <sebastian.brzezinka@intel.com> wr=
ote:
> This patch was initially sent to trybot and received Review-by: Krzysztof
> there. So I=E2=80=99ve copied it here.

In most cases, patches shouldn't be sent to trybot, and the trybot list
shouldn't be used for reviews.

Trybot is primarily for testing out an idea when you're not sure how
things would work on a bunch of real hardware. Or when the patch is not
intended for merging at all. It's not for a generic preliminary round of
testing. If trybot results pass, you'll still need to send the patch for
CI and review and merging on the actual list, and it just ends up
wasting a CI round.


BR,
Jani.

--=20
Jani Nikula, Intel
