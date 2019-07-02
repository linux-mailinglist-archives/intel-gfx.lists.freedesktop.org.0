Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B3175D241
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Jul 2019 17:01:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A59689C9B;
	Tue,  2 Jul 2019 15:01:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E2BEC89C9B
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Jul 2019 15:01:08 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17101581-1500050 for multiple; Tue, 02 Jul 2019 16:01:07 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190701104442.9319-1-mika.kuoppala@linux.intel.com>
In-Reply-To: <20190701104442.9319-1-mika.kuoppala@linux.intel.com>
Message-ID: <156207966419.2466.10641031891000392906@skylake-alporthouse-com>
Date: Tue, 02 Jul 2019 16:01:04 +0100
Subject: Re: [Intel-gfx] [CI] drm/i915: Fix memleak in runtime wakeref
 tracking
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.23
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

UXVvdGluZyBNaWthIEt1b3BwYWxhICgyMDE5LTA3LTAxIDExOjQ0OjQyKQo+IElmIHdlIHVudHJh
Y2sgd2FrZXJlZnMsIHRoZSBhY3R1YWwgY291bnQgbWF5IHJlYWNoIHplcm8uCj4gSG93ZXZlciB0
aGUga3JlYWxsb2NlZCBvd25lcnMgYXJyYXkgaXMgc3RpbGwgdGhlcmUgYW5kCj4gbmVlZHMgdG8g
YmUgdGFrZW4gY2FyZSBvZi4gRnJlZSB0aGUgb3duZXJzIHVuY29uZGl0aW9uYWxseQo+IHRvIGZp
eCB0aGUgbGVhay4KPiAKPiBGaXhlczogYmQ3ODBmMzdhMzYxICgiZHJtL2k5MTU6IFRyYWNrIGFs
bCBoZWxkIHJwbSB3YWtlcmVmcyIpCj4gUmVwb3J0ZWQtYnk6IEp1aGEtUGVra2EgSGVpa2tpbGEg
PGp1aGFwZWtrYS5oZWlra2lsYUBnbWFpbC5jb20+Cj4gQ2M6IEp1aGEtUGVra2EgSGVpa2tpbGEg
PGp1aGFwZWtrYS5oZWlra2lsYUBnbWFpbC5jb20+Cj4gQ2M6IENocmlzIFdpbHNvbiA8Y2hyaXNA
Y2hyaXMtd2lsc29uLmNvLnVrPgo+IFNpZ25lZC1vZmYtYnk6IE1pa2EgS3VvcHBhbGEgPG1pa2Eu
a3VvcHBhbGFAbGludXguaW50ZWwuY29tPgo+IFJldmlld2VkLWJ5OiBDaHJpcyBXaWxzb24gPGNo
cmlzQGNocmlzLXdpbHNvbi5jby51az4KCkFuZCBwdXNoZWQgc28gdGhhdCB3ZSBjYW4gcnVsZSBv
dXQgYW55IHVuZHVlIGluZmx1ZW5jZSBlbHNld2hlcmUgaW4gQ0kuClRoYW5rcyBmb3IgY2F0Y2hp
bmcgbXkgbWlzdGFrZSwKLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeA==
