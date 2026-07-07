Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 1KGZDloITWqKtwEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Jul 2026 16:08:26 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AE30E71C57A
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Jul 2026 16:08:25 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=collabora.com header.s=zohomail header.b=dEeGEhcy;
	dmarc=pass (policy=none) header.from=collabora.com;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	arc=pass ("zohomail.com:s=zohoarc:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 40F5710ED48;
	Tue,  7 Jul 2026 14:08:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from sender4-op-o16.zoho.com (sender4-op-o16.zoho.com
 [136.143.188.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A70BD10ED48
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Jul 2026 14:08:23 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; t=1783433301; cv=none; 
 d=zohomail.com; s=zohoarc; 
 b=BHNzlP6llTKuoxFyplEZuqPXJeRkjp5Lh72P70HmZnQn+eVC5hoMt9nikO80oXI7By1xjtHBkExpXNZR01w+S5yXZ3GmkDt96nPfE++oJ3hJBYZUdet3MNg+Hv2R/jhGoI1lc4lNZUePJE7hiILH7f9Fw/0vcQUz2Owk4taVSdk=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com;
 s=zohoarc; t=1783433301;
 h=Content-Type:Content-Transfer-Encoding:Date:Date:From:From:MIME-Version:Message-ID:Subject:Subject:To:To:Message-Id:Reply-To:Cc;
 bh=VDjGIETYL0y6ZZkaqeo/QDZccyOoWwEqkZayrBln7W0=; 
 b=a+b8hD0afzTe4oT1yQrMZ3iXMXYT9EDQ9cK4954PxtfTYIy7Dd4gt71/r2kO7siiEpWS6BjcSw6Cm14qk3eNRjtWCGj991mDwoKmHZMl1u4qt0oSfZzSDcKMDb9UcU405bbxmbEk8yCb4C70nSkUwnPDbXwFvqLeu1BE6onBq1c=
ARC-Authentication-Results: i=1; mx.zohomail.com;
 dkim=pass  header.i=collabora.com;
 spf=pass  smtp.mailfrom=mark.filion@collabora.com;
 dmarc=pass header.from=<mark.filion@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1783433301; 
 s=zohomail; d=collabora.com; i=mark.filion@collabora.com;
 h=Message-ID:Subject:Subject:From:From:To:To:Date:Date:Content-Type:Content-Transfer-Encoding:MIME-Version:Message-Id:Reply-To:Cc;
 bh=VDjGIETYL0y6ZZkaqeo/QDZccyOoWwEqkZayrBln7W0=;
 b=dEeGEhcyqynzLsN/1h9Dk1ZMNU7Joww7PI/eLKzY3RE1MqvDqD3FXgY/YbU88rNk
 MSo9N0Z/tWr2Ta3wDXX36fcw4+KiTlxJLmZD5r9A93JWn7wYdPE1ZFbkVBgl3zIkL9p
 XtgoLlAZY3ig8gJvstctoSG3ttEE3K+0RN/kYn2I=
Received: by mx.zohomail.com with SMTPS id 1783433298840663.5030295178424;
 Tue, 7 Jul 2026 07:08:18 -0700 (PDT)
Message-ID: <710a388461edb83346bd1c57b16fef11e3ea9b2d.camel@collabora.com>
Subject: XDC 2026: CfP deadline extended to July 15. Submit your talk,
 workshop or demo!
From: Mark Filion <mark.filion@collabora.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 07 Jul 2026 10:08:17 -0400
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.60.2 (3.60.2-1.fc44app2) 
MIME-Version: 1.0
X-ZohoMailClient: External
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
X-Spamd-Result: default: False [-2.31 / 15.00];
	ARC_ALLOW(-1.00)[zohomail.com:s=zohoarc:i=1];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,none];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=zohomail];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_ONE(0.00)[1];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,floss.social:url,indico.freedesktop.org:url];
	SUBJECT_ENDS_EXCLAIM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mark.filion@collabora.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_NONE(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	ALIAS_RESOLVED(0.00)[];
	DKIM_TRACE(0.00)[collabora.com:+]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: AE30E71C57A

Hello!

The CfP deadline for talks, workshops and demos at XDC 2026 has been
extended to next Wednesday, 15 July 2026. You have one more week to
submit, don't wait!

https://indico.freedesktop.org/event/12/abstracts/

We're especially interested in talks across all layers of the graphics
stack, from the kernel to desktop environments and graphical
applications, and about how to make things better for the developers
who build them.=C2=A0

Worked on a cool project? Don't let the bar seem too high, you don't
need a polished, groundbreaking result to have something worth sharing.
If you're excited about it, chances are others will be too, so don't be
shy: submit your talk! Head to the CfP page to learn more.

As usual, the conference is free of charge and open to the general
public. If you plan on attending, please make sure to register as early
as possible!

And don't forget, you can follow us on Mastodon for all the latest
updates and to stay connected:

https://floss.social/@XOrgDevConf

Best,

Mark
