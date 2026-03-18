Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mHyaI9g/umlqTQIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Mar 2026 07:02:00 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 143B22B61D4
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Mar 2026 07:01:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E453D10E049;
	Wed, 18 Mar 2026 06:01:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=sony.com header.i=@sony.com header.b="tNx0spfx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 603 seconds by postgrey-1.36 at gabe;
 Wed, 18 Mar 2026 06:01:56 UTC
Received: from jpms-ob02.noc.sony.co.jp (jpms-ob02.noc.sony.co.jp
 [211.125.140.165])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 45BBD10E049;
 Wed, 18 Mar 2026 06:01:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sony.com; s=s1jp; t=1773813717; x=1805349717;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=eoMupIu5zVSqyOQhuq6iQarD8KxsCTZiio2rS8ELzNI=;
 b=tNx0spfxqRHlsXiUAIUNgPc6Ph9DDvCdZ1TkdUv2B91Sv854/teXRGNl
 pVAIIQBOjH4VLPNxHUs4WDG+XbRUasUlF00PeTcvoTOYTUDVlxX+tydlQ
 s5b8P8MKkgGP+WExZ2kb+6CAT5MCDRDOVMcnbaL0iJRbQL5vbHoN1uu0J
 3NV/rji/k6cfHBkk1XaOeNx6/g9IwM4VGYsPjRxqroyQq96mS+foaT0pt
 D2+hwZBZcQszkxjdKDR2uQmWW38LHwV1sBxAuKCSjheLVy1SwCMyLX1fK
 dMNozQE3+Aq4qfn80tVKNz+Uu8TjYj4jEQ+Rr4G/ElA7VKv88kIyrqI0n Q==;
Received: from unknown (HELO jpmta-ob02.noc.sony.co.jp)
 ([IPv6:2001:cf8:0:6e7::7])
 by jpms-ob02.noc.sony.co.jp with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2026 14:51:51 +0900
X-CSE-ConnectionGUID: rLxGr/LJTuiBO7S+Ph9nTg==
X-CSE-MsgGUID: gh60nqK7RPO5TcdDQeuduQ==
X-IronPort-AV: E=Sophos;i="6.23,126,1770562800"; d="scan'208";a="592821526"
Received: from unknown (HELO rahul-Z690-S01) ([43.11.34.175])
 by jpmta-ob02.noc.sony.co.jp with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2026 14:51:51 +0900
Date: Wed, 18 Mar 2026 14:51:42 +0900
From: Rahul Bukte <rahul.bukte@sony.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Suraj Kandpal <suraj.kandpal@intel.com>, intel-xe@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] drm/i915/gt: Check set_default_submission() before
 deferencing
Message-ID: <abo9bv1oz_5S66zE@rahul-Z690-S01>
References: <20260203044839.1555147-1-suraj.kandpal@intel.com>
 <864065cfcd3baaff212135beb781b0a5990728d8@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <864065cfcd3baaff212135beb781b0a5990728d8@intel.com>
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
	DMARC_POLICY_ALLOW(-0.50)[sony.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[sony.com:s=s1jp];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[sony.com:+];
	RCPT_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[rahul.bukte@sony.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email]
X-Rspamd-Queue-Id: 143B22B61D4
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi,

On Fri, Mar 13, 2026 at 06:34:22PM +0200, Jani Nikula wrote:
> On Tue, 03 Feb 2026, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> > From: Rahul Bukte <rahul.bukte@sony.com>
> >
> > When the i915 driver firmware binaries are not present, the
> > set_default_submission pointer is not set. This pointer is
> > dereferenced during suspend anyways.
> 
> Which kernel vesions did this happen with? Should this have had Fixes:
> or Cc: stable?

Fixes: ff44ad51ebf8 ("drm/i915: Move engine->submit_request selection to a vfunc")
Cc: stable@vger.kernel.org

Suraj, you mentioned that you have commited this to din [1]. Can we add
this fixes and cc tags to that please?

[1]: https://lore.kernel.org/all/DM3PPF208195D8D000253F905FADCA379F9E36DA@DM3PPF208195D8D.namprd11.prod.outlook.com/

Best regards,
Rahul

