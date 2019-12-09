Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C0DA8116C30
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Dec 2019 12:18:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2AF176E0F5;
	Mon,  9 Dec 2019 11:18:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 77E5489FCA;
 Mon,  9 Dec 2019 11:18:35 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19511399-1500050 for multiple; Mon, 09 Dec 2019 11:18:20 +0000
MIME-Version: 1.0
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20191209110752.12610-1-janusz.krzysztofik@linux.intel.com>
References: <20191209110752.12610-1-janusz.krzysztofik@linux.intel.com>
Message-ID: <157589029931.2308.3802269187194993434@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Mon, 09 Dec 2019 11:18:19 +0000
Subject: Re: [Intel-gfx] [RFC PATCH i-g-t] test/prime_vgem: Examine blitter
 access path
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
Cc: =?utf-8?q?Micha=C5=82_Czapli=C5=84ski?= <michal.czaplinski@intel.com>,
 Jari Tahvanainen <jari.tahvanainen@intel.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBKYW51c3ogS3J6eXN6dG9maWsgKDIwMTktMTItMDkgMTE6MDc6NTIpCj4gT24gZnV0
dXJlIGhhcmR3YXJlIHdpdGggbWlzc2luZyBHR1RUIEJBUiB3ZSB3b24ndCBiZSBhYmxlIHRvIGV4
ZXJjaXNlCj4gZG1hLWJ1ZiBhY2Nlc3MgdmlhIHRoYXQgcGF0aC4gIEhvd2V2ZXIsIGFjY2VzcyB0
byB0aGUgZG1hIHNnIGxpc3QKPiBmZWF0dXJlIGV4cG9zZWQgYnkgZG1hLWJ1ZiBjYW4gc3RpbGwg
YmUgdGVzdGVkIHRocm91Z2ggYmxpdHRlci4KPiBVbmZvcnR1bmF0ZWx5IHdlIGRvbid0IGhhdmUg
YW55IGVxdWl2YWxlbnRseSBzaW1wbGUgdGVzdHMgdGhhdCB1c2UKPiBibGl0dGVyLiAgUHJvdmlk
ZSB0aGVtLgo+IAo+IFN1Z2dlc3RlZC1ieTogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBm
ZndsbC5jaD4KPiBTaWduZWQtb2ZmLWJ5OiBKYW51c3ogS3J6eXN6dG9maWsgPGphbnVzei5rcnp5
c3p0b2Zpa0BsaW51eC5pbnRlbC5jb20+Cj4gQ2M6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMt
d2lsc29uLmNvLnVrPgo+IC0tLQo+IEFjY29yZGluZyB0byBUcnlib3QsIHRoZXNlIHN1YnRlc3Rz
IGFyZSBmYWlsaW5nIG9uIFNhbmR5YnJpZGdlIChHZW42KQo+IGFuZCBIYXN3ZWxsIChHNzUpLCBj
YW4geW91IHBsZWFzZSBhZHZpY2UgaG93IHRob3NlIHBsYXRmb3JtcyBzaG91bGQgYmUKPiBoYW5k
bGVkPwoKImZhc3QgY29weSIgaXMgZ2VuOSsuIEp1c3QgdXNlIHJlZ3VsYXIgc2FtZS1zcGVlZCBY
WV9TUkNfQ09QWS4KLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeA==
