Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AA42224A6AB
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Aug 2020 21:16:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CDCA988284;
	Wed, 19 Aug 2020 19:16:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from casper.infradead.org (casper.infradead.org
 [IPv6:2001:8b0:10b:1236::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CC0696E7F1
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Aug 2020 19:16:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Transfer-Encoding:
 Content-Type:MIME-Version:References:Message-ID:Subject:To:From:Date:Sender:
 Reply-To:Cc:Content-ID:Content-Description;
 bh=8UHtPQm+Lq1bszCJ/qqE+kGya/1vUJVcxC9oAAx9dHM=; b=YgmkJ99f4CL7KXPuyv7XTfe+tA
 5nFclCWybwoTkFfWhjew/Vk4oBPhhGJpbJa2G20mUkhhQ9n57ChL50aRFgOIByfFr7DcoXqsX1qm3
 LJjIlYPKEgNjKx8r1YEFq4nW9EkRvsFMp6bjZX5SQB3iJPNAcy2xeG5sGB/8XgV5ZpcIIwW9Kalyb
 DKP6EHUwsvOi1ODdFiqZ06GZQq4cRgBGFHMpcfBOHfVjBc/fn1TgJiMV6E1A1EsQHZQr8JR5PT5Hd
 LunEB6F1Tt3goMXj3YSYCRfrFQYu020/NGLR03MPUUhBxGf8k7dxo31kq8K5Hudx6ru9ZSxoWwLbe
 OPHqGR2g==;
Received: from willy by casper.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1k8TZX-0000cY-Bf
 for intel-gfx@lists.freedesktop.org; Wed, 19 Aug 2020 19:16:31 +0000
Date: Wed, 19 Aug 2020 20:16:31 +0100
From: Matthew Wilcox <willy@infradead.org>
To: intel-gfx@lists.freedesktop.org
Message-ID: <20200819191631.GH17456@casper.infradead.org>
References: <20200819184850.24779-1-willy@infradead.org>
 <159786397788.23597.3955303702184593026@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <159786397788.23597.3955303702184593026@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBS?=
 =?utf-8?q?eturn_head_pages_from_find=5Fget=5Fentry_and_find=5Flock=5Fentr?=
 =?utf-8?q?y?=
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCBBdWcgMTksIDIwMjAgYXQgMDc6MDY6MTdQTSAtMDAwMCwgUGF0Y2h3b3JrIHdyb3Rl
Ogo+ID09IFNlcmllcyBEZXRhaWxzID09Cj4gCj4gU2VyaWVzOiBSZXR1cm4gaGVhZCBwYWdlcyBm
cm9tIGZpbmRfZ2V0X2VudHJ5IGFuZCBmaW5kX2xvY2tfZW50cnkKPiBVUkwgICA6IGh0dHBzOi8v
cGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvODA4MTgvCj4gU3RhdGUgOiBmYWlsdXJl
Cj4gCj4gPT0gU3VtbWFyeSA9PQo+IAo+IENBTEwgICAgc2NyaXB0cy9jaGVja3N5c2NhbGxzLnNo
Cj4gICBDQUxMICAgIHNjcmlwdHMvYXRvbWljL2NoZWNrLWF0b21pY3Muc2gKPiAgIERFU0NFTkQg
IG9ianRvb2wKPiAgIENISyAgICAgaW5jbHVkZS9nZW5lcmF0ZWQvY29tcGlsZS5oCj4gICBDQyAg
ICAgIG1tL3N3YXBfc3RhdGUubwo+IG1tL3N3YXBfc3RhdGUuYzogSW4gZnVuY3Rpb24g4oCYZmlu
ZF9nZXRfc3dhcF9wYWdl4oCZOgo+IG1tL3N3YXBfc3RhdGUuYzo0MzU6NzogZXJyb3I6IGltcGxp
Y2l0IGRlY2xhcmF0aW9uIG9mIGZ1bmN0aW9uIOKAmHNobWVtX21hcHBpbmfigJk7IGRpZCB5b3Ug
bWVhbiDigJhwYWdlX21hcHBpbmfigJk/IFstV2Vycm9yPWltcGxpY2l0LWZ1bmN0aW9uLWRlY2xh
cmF0aW9uXQo+ICAgaWYgKCFzaG1lbV9tYXBwaW5nKG1hcHBpbmcpKQo+ICAgICAgICBefn5+fn5+
fn5+fn5+Cj4gICAgICAgIHBhZ2VfbWFwcGluZwo+IGNjMTogc29tZSB3YXJuaW5ncyBiZWluZyB0
cmVhdGVkIGFzIGVycm9ycwo+IHNjcmlwdHMvTWFrZWZpbGUuYnVpbGQ6MjgzOiByZWNpcGUgZm9y
IHRhcmdldCAnbW0vc3dhcF9zdGF0ZS5vJyBmYWlsZWQKPiBtYWtlWzFdOiAqKiogW21tL3N3YXBf
c3RhdGUub10gRXJyb3IgMQo+IE1ha2VmaWxlOjE3ODk6IHJlY2lwZSBmb3IgdGFyZ2V0ICdtbScg
ZmFpbGVkCj4gbWFrZTogKioqIFttbV0gRXJyb3IgMgoKVGhhbmtzISAgRG8geW91IGhhdmUgdGhl
IC5jb25maWcgZm9yIHRoaXMgYnVpbGQ/Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeAo=
