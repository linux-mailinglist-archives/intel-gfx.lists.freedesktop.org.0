Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C54E914F3D5
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Jan 2020 22:35:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EBE6D6FBF3;
	Fri, 31 Jan 2020 21:35:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 314 seconds by postgrey-1.36 at gabe;
 Fri, 31 Jan 2020 15:11:31 UTC
Received: from forward105o.mail.yandex.net (forward105o.mail.yandex.net
 [37.140.190.183])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A4D6E6E9BB
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 Jan 2020 15:11:31 +0000 (UTC)
Received: from mxback28g.mail.yandex.net (mxback28g.mail.yandex.net
 [IPv6:2a02:6b8:0:1472:2741:0:8b7:328])
 by forward105o.mail.yandex.net (Yandex) with ESMTP id C8E474200DED
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 Jan 2020 18:06:12 +0300 (MSK)
Received: from localhost (localhost [::1])
 by mxback28g.mail.yandex.net (mxback/Yandex) with ESMTP id ZTnaPMYRrd-6Cf4tG2b;
 Fri, 31 Jan 2020 18:06:12 +0300
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yandex.com; s=mail;
 t=1580483172; bh=U+EbfvRFDILsQ8GCbH1kd7qWP0FtTeufjvs2/oR83Ho=;
 h=Message-Id:Date:Subject:To:From;
 b=jXHwV1LkNEiH141YslK/oZroTEuPXJo3VOaDwXqFn+vV3zchJbNHX6zc7DtYc6DL9
 YdSXRVeFfDI7OWePvlaDG0S2ecKzbIAiQGD/H/RWREEbtskQLJtZLGGcWoJjrxabjZ
 42vJaiw6uvTdsuWRnYXOo0xWZO1ROb/Ty/ZGtG5I=
Authentication-Results: mxback28g.mail.yandex.net;
 dkim=pass header.i=@yandex.com
Received: by sas2-4fe1bb3c0a49.qloud-c.yandex.net with HTTP;
 Fri, 31 Jan 2020 18:06:12 +0300
From: ##### ##### <rd3tap@yandex.com>
Envelope-From: rd3tap@yandex.ru
To: intel-gfx@lists.freedesktop.org
MIME-Version: 1.0
X-Mailer: Yamail [ http://yandex.ru ] 5.0
Date: Fri, 31 Jan 2020 18:06:12 +0300
Message-Id: <760391580483172@sas2-4fe1bb3c0a49.qloud-c.yandex.net>
X-Mailman-Approved-At: Fri, 31 Jan 2020 21:35:26 +0000
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/tracepoints: Don't
	compile-out	 low-level tracepoints
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
Content-Type: multipart/mixed; boundary="===============0179623364=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0179623364==
Content-Transfer-Encoding: base64
Content-Type: text/html; charset=utf-8

PGRpdj48ZGl2PkhpITwvZGl2PjxkaXY+SSB1c2UgR1BVVmlzIGFuZCBub3cgSW50ZWwgVnR1bmUg
UHJvZmlsZXIuIFRoZXNlIHRvb2xzIGRvbid0IHdvcmsgb3V0LW9mLXRoZS1ib3ggb24gYWxsIExp
bnV4IGJhc2VkIHN5c3RlbXMgZm9yIEludGVsIGludGVncmF0ZWQgZ3JhcGhpY3MuPC9kaXY+PGRp
dj5JdCBpcyBuZWVkZWQgdG8gcmVidWlsZCBhdCBsZWFzdCBpOTE1IG1vZHVsZS4gQW5kIGVhY2gg
dGltZSB3aGVuIHRoZSBrZXJuZWwgaXMgdXBkYXRlZCBpdCBpcyBuZWVkZWQgdG8gcmVidWlsZCBp
OTE1IG1vZHVsZSBhZ2Fpbi48L2Rpdj48ZGl2PsKgPC9kaXY+PGRpdj4mZ3Q7IE5vIG51bWJlcnMg
ZnJvbSAobWljcm8tKWJlY2htYXJrcyBzaG93aW5nIGhvdyBzbWFsbCB0aGUgaW1wYWN0IG9mIGRv
aW5nPC9kaXY+PGRpdj4mZ3Q7IHRoaXMgaXM/IEkgdGhvdWdodCBKb2huIHdhcyBjb21waWxpbmcg
dGhpcyBkYXRhLiBJdCB3aWxsIGJlIGp1c3QgYSBuby1vcDwvZGl2PjxkaXY+Jmd0OyBvbiB0aGUg
ZmFzdCBwYXRoLCBidXQgYSBiaXQgbW9yZSBnZW5lcmF0ZWQgY29kZS48L2Rpdj48ZGl2PkhhdmUg
eW91IGNvbGxlY3RlZCB0aGUgcmVzdWx0cz8gSWYgbm90LCBJJ3ZlIGRvbmUgaXQgZm9yIHlvdTo8
L2Rpdj48ZGl2PkJlbmNobWFyayBmb3IgTWV0cm8gMjAzMyBMYXN0IExpZ2h0IFJlZHV4OjwvZGl2
PjxkaXY+dy9vIGV2ZW50czo8L2Rpdj48ZGl2PjFzdCBydW4gYXZlci4gZnBzOiAzNi4wNjwvZGl2
PjxkaXY+Mm5kIHJ1biBhdmVyLiBmcHM6IDM1Ljg3PC9kaXY+PGRpdj53IGV2ZW50czo8L2Rpdj48
ZGl2PjxkaXY+MXN0IHJ1biBhdmVyLiBmcHM6IDM2LjA1PC9kaXY+PGRpdj4ybmQgcnVuIGF2ZXIu
IGZwczogMzUuOTI8L2Rpdj48ZGl2PsKgPC9kaXY+PGRpdj5UaGVyZSBpcyBubyBkaWZmZXJlbmNl
LiBJdCB3YXMgcnVuIG9uIEludGVsIENvcmUgaTktOTkwMEsgQ1BVIEAgMy42MEdIeiBvbiBpbnRl
Z3JhdGVkIGdyYXBoaWNzLjwvZGl2PjxkaXY+wqA8L2Rpdj48ZGl2PiZndDsgQXNzdW1pbmcgdGhh
dCB3aWxsIGJlIGZpbmUsIHRoZSBvbmx5IHBvdGVudGlhbGx5IHByb2JsZW1hdGljIGFzcGVjdCB0
aGF0PC9kaXY+PGRpdj4mZ3Q7IGNvbWVzIHRvIG1pbmQgaXMgdGhlIGZhY3QgbWVhbmluZyBvZiB0
aGVzZSB0cmFjZXBvaW50cyBpcyBhIGJpdDwvZGl2PjxkaXY+Jmd0OyBkaWZmZXJlbnQgYmV0d2Vl
biBleGVjbGlzdHMgYW5kIGd1Yy4gQnV0IG1heWJlIHRoYXQgaXMgdGhpbmtpbmcgdG8gbG93PC9k
aXY+PGRpdj4mZ3Q7IGxldmVsICghKSAtIGluIGZhY3QgdGhleSBhcmUgaW4gYm90aCBjYXNlcyBh
dCBwb2ludHMgd2hlcmUgaTkxNSBpczwvZGl2PjxkaXY+Jmd0O3Bhc3NpbmcvcmVjZWl2aW5nIHJl
cXVlc3RzIHRvL2Zyb20gaGFyZHdhcmUgc28gbm90IGFuIGlzc3VlPzwvZGl2PjxkaXY+SW4gbXkg
dmlldywgaXQgaXMgbm90IGFuIGlzc3VlLiBUaGUgcmVhbCBpc3N1ZSBub3cgdGhhdCB5b3UgY2Fu
bm90IGNvbGxlY3QgcGVyZm9ybWFuY2UgcmVzdWx0cyBmb3IgSW50ZWwgR1BVPC9kaXY+PGRpdj5v
biBMaW51eCBzeXN0ZW1zIHdpdGhvdXQgcmVidWlsZGluZyB0aGUgaTkxNSBtb2R1bGUuIFlvdSBj
YW5ub3QgZGVidWcgcGVyZm9ybWFuY2UgcHJvYmxlbXM8L2Rpdj48ZGl2Pm9uIHRoZSBzeXN0ZW0g
ZXZlbiBpZiB5b3UgdXNlIHRvb2xzIGZyb20gSW50ZWwuIERvIHlvdSBoYXZlIEVUQSB0byBhY2Nl
cHQgdGhpcyBwYXRjaD88L2Rpdj48ZGl2PsKgPC9kaXY+PGRpdj5UaGFua3MsPC9kaXY+PGRpdj5F
Z29yPC9kaXY+PC9kaXY+PC9kaXY+

--===============0179623364==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0179623364==--
