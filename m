Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id /p/nAS+6Mmp84gUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jun 2026 17:15:59 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 94E5269ADFC
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jun 2026 17:15:58 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=linuxfoundation.org header.s=korg header.b=SnQCGLuL;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=linuxfoundation.org
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 094CA10F027;
	Wed, 17 Jun 2026 15:15:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A37D110F027;
 Wed, 17 Jun 2026 15:15:55 +0000 (UTC)
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
 by tor.source.kernel.org (Postfix) with ESMTP id 06DD160122;
 Wed, 17 Jun 2026 15:15:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 368EC1F00A3A;
 Wed, 17 Jun 2026 15:15:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linuxfoundation.org;
 s=korg; t=1781709354;
 bh=PRtwX9XZuKeOePBQ1eaXIZKRl+06gjsxGdVK1OpTJto=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To;
 b=SnQCGLuLG6CoDNtPjBGeifYyw4Q5oqmW4Wje3sAiyfVUKH81TG114bc1QrLiGivRX
 i6osstjx2OzdrQH8fZuKZEq+j38LZCpiO8ePbHj3Ix+jcdKUkIgDtQ+ydapMv7Qx61
 EpwcnJkvHen2ne2XtH2K5R3ZYJwJDYy1xnBteMsI=
Date: Wed, 17 Jun 2026 11:15:52 -0400
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Ville Syrjala <ville.syrjala@linux.intel.com>, 
 intel-gfx@lists.freedesktop.org, tools@kernel.org,
 intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 01/14] drm/i915/cdclk: Don't bail if pcode post nofify
 fails
Message-ID: <20260617-horned-orthodox-zebu-625bcb@meerkat>
References: <20260610170652.5320-1-ville.syrjala@linux.intel.com>
 <20260610170652.5320-2-ville.syrjala@linux.intel.com>
 <511da82834da302ac50a326c082c45f6134b2556@intel.com>
 <8c18eca330bd63182319a18f238e78f1c451ede2@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <8c18eca330bd63182319a18f238e78f1c451ede2@intel.com>
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
X-Spamd-Result: default: False [-0.81 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[linuxfoundation.org,none];
	MID_RHS_NOT_FQDN(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[linuxfoundation.org:s=korg];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[linuxfoundation.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konstantin@linuxfoundation.org,intel-gfx-bounces@lists.freedesktop.org];
	RCPT_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linuxfoundation.org:dkim,linuxfoundation.org:from_mime,lists.freedesktop.org:from_smtp,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,meerkat:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 94E5269ADFC

On Wed, Jun 17, 2026 at 04:29:16PM +0300, Jani Nikula wrote:
> >> We already changed the actual cdclk frequency by the time we do
> >> the pcode post notify. So skipping the subsequent readout is plain
> >> wrong.
> >
> > Fixes: ?
> 
> Turns out posing the question about Fixes: trailer like that leads to b4
> shazam literally adding that trailer. Please clean them up before
> pushing!
> 
> Cc: tools@k.o and Konstantin, FYI

We now recognize this and properly change this to:

| Fixes: ¯\_(ツ)_/¯

(Just kidding... I'll see if I can clean this up to be more discerning of the
actual Fixes: format.)

Thanks,
-K
