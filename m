Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gCoVBAPbfGlbOwIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Jan 2026 17:23:31 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D69F8BC7E4
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Jan 2026 17:23:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1AF6F10EA11;
	Fri, 30 Jan 2026 16:23:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=collabora.com header.i=mark.filion@collabora.com header.b="D6GkDgMH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from sender4-pp-f112.zoho.com (sender4-pp-f112.zoho.com
 [136.143.188.112])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 786EF10EA10
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Jan 2026 16:23:27 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; t=1769790204; cv=none; 
 d=zohomail.com; s=zohoarc; 
 b=Ae7FH5fFtD1hyAXw1eYfHp2YC7dPvbUNRQ03IbOTZh1cQxfvhpUw2DWIALAec9Du9CjRSpK1brZFrFC2XIFVREA7qall/ELxZaGTzgiNTJhgX780qHX9nTy2o4n2jj0Xh2w0YqCwyGaYXSD0U0AA/FAr2ofUNKA4KAH1LT9lMJI=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com;
 s=zohoarc; t=1769790204;
 h=Content-Type:Date:Date:From:From:MIME-Version:Message-ID:Subject:Subject:To:To:Message-Id:Reply-To:Cc;
 bh=cjr+9XLdgyZSdPIJtLKrJOx3LH5b17ZXWsQTvmJJAs8=; 
 b=dZSLu1g+C4HblMmACc6NW2UNDmZ1eOJ5aOA1sEpcruNCXqXAlBQNvUL/7j2qT2a69/yWlM97h3DYV+0lNVyim3Z/4Q9yV1VLtQh04u+MBaYxVEvd9hNj15NGwMFCO7HxFNJP57KFpn6wGVWW1kDsBClM6ORdr37K573xtSyyWyk=
ARC-Authentication-Results: i=1; mx.zohomail.com;
 dkim=pass  header.i=collabora.com;
 spf=pass  smtp.mailfrom=mark.filion@collabora.com;
 dmarc=pass header.from=<mark.filion@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1769790204; 
 s=zohomail; d=collabora.com; i=mark.filion@collabora.com;
 h=Message-ID:Subject:Subject:From:From:To:To:Date:Date:Content-Type:MIME-Version:Message-Id:Reply-To:Cc;
 bh=cjr+9XLdgyZSdPIJtLKrJOx3LH5b17ZXWsQTvmJJAs8=;
 b=D6GkDgMHQAeQb9kMJ78NfypyQJniH705J4mf1tOTOvR9sZJgysmw0H0o6hmq4+lX
 eKJCihmhj8kvLCU8+Q86MVgjSOagpDZmWqXt61EkRy/P/UxX+cwAfpHvsEeOk4LXgIH
 ATotUGN/3vsv+/916W4gD+35aDDIrLcUYGKpz5d0=
Received: by mx.zohomail.com with SMTPS id 1769790202838687.8320273851765;
 Fri, 30 Jan 2026 08:23:22 -0800 (PST)
Message-ID: <486aeee241aade707acde3aa9aef5f4216504c96.camel@collabora.com>
Subject: Save the Date! XDC 2026 comes to Toronto
From: Mark Filion <mark.filion@collabora.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 30 Jan 2026 11:23:20 -0500
Content-Type: multipart/alternative; boundary="=-21Eku0Xj2OWMu3+V1mA6"
User-Agent: Evolution 3.58.2 (3.58.2-1.fc43app1) 
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.31 / 15.00];
	ARC_ALLOW(-1.00)[zohomail.com:s=zohoarc:i=1];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,none];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=zohomail];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[multipart/alternative,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.861];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,floss.social:url];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_THREE(0.00)[3];
	RCPT_COUNT_ONE(0.00)[1];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mark.filion@collabora.com,intel-gfx-bounces@lists.freedesktop.org];
	MID_RHS_MATCH_FROM(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	SUBJECT_HAS_EXCLAIM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[collabora.com:+]
X-Rspamd-Queue-Id: D69F8BC7E4
X-Rspamd-Action: no action

--=-21Eku0Xj2OWMu3+V1mA6
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello!

We=E2=80=99re excited to announce that XDC 2026 will take place September 2=
8=E2=80=9330
in Toronto, Canada =E2=80=94 mark your calendars!

The conference will be held in person at Daniels Spectrum, a vibrant
community cultural hub in the heart of Toronto=E2=80=99s Regent Park
neighbourhood, just minutes from Yonge=E2=80=93Dundas Square.

A big thank you to Arm for organizing this year=E2=80=99s conference and
helping make XDC another great success.

Registration and the Call for Proposals will be opening soon, so stay
tuned!

Until then, be sure to follow us on Mastodon for the latest news and
updates:
https://floss.social/@XOrgDevConf

Best,

Mark

--=-21Eku0Xj2OWMu3+V1mA6
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<html><head><style>pre,code,address {
  margin: 0px;
}
h1,h2,h3,h4,h5,h6 {
  margin-top: 0.2em;
  margin-bottom: 0.2em;
}
ol,ul {
  margin-top: 0em;
  margin-bottom: 0em;
}
blockquote {
  margin-top: 0em;
  margin-bottom: 0em;
}
</style></head><body><div>Hello!</div><div><br></div><div>We=E2=80=99re exc=
ited to announce that XDC 2026 will take place September 28=E2=80=9330 in T=
oronto, Canada =E2=80=94 mark your calendars!</div><div><br></div><div>The =
conference will be held in person at Daniels Spectrum, a vibrant community =
cultural hub in the heart of Toronto=E2=80=99s Regent Park neighbourhood, j=
ust minutes from Yonge=E2=80=93Dundas Square.</div><div><br></div><div>A bi=
g thank you to Arm for organizing this year=E2=80=99s conference and helpin=
g make XDC another great success.</div><div><br></div><div>Registration and=
 the Call for Proposals will be opening soon, so stay tuned!</div><div><br>=
</div><div>Until then, be sure to follow us on Mastodon for the latest news=
 and updates:</div><div><a href=3D"https://floss.social/@XOrgDevConf">https=
://floss.social/@XOrgDevConf</a></div><div><br></div><div>Best,</div><div><=
br></div><div>Mark</div><div><span></span></div></body></html>

--=-21Eku0Xj2OWMu3+V1mA6--
