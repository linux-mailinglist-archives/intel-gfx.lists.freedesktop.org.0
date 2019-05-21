Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 38E942498B
	for <lists+intel-gfx@lfdr.de>; Tue, 21 May 2019 09:58:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4BCCC89229;
	Tue, 21 May 2019 07:58:01 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B43108922A;
 Tue, 21 May 2019 07:57:58 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16623890-1500050 for multiple; Tue, 21 May 2019 08:57:47 +0100
MIME-Version: 1.0
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 igt-dev@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190520144739.13111-3-tvrtko.ursulin@linux.intel.com>
References: <20190520144739.13111-1-tvrtko.ursulin@linux.intel.com>
 <20190520144739.13111-3-tvrtko.ursulin@linux.intel.com>
Message-ID: <155842546526.23981.5722257697980402246@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Tue, 21 May 2019 08:57:45 +0100
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t 02/27] trace.pl: Ignore
 signaling on non i915 fences
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
Cc: Intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wNS0yMCAxNTo0NzoxNCkKPiBGcm9tOiBUdnJ0
a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+IAo+IGdlbV93c2ltIHVzZXMg
dGhlIHN3X2ZlbmNlIHRpbWVsaW5lIGFuZCBjb25mdXNlcyB0aGUgc2NyaXB0Lgo+IAo+IHYyOgo+
ICAqIENoZWNrIHRoZSBjb3JyZWN0IHRpbWVsaW5lIGFzIHdlbGwuIChDaHJpcykKPiAKPiBTaWdu
ZWQtb2ZmLWJ5OiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+IC0t
LQo+ICBzY3JpcHRzL3RyYWNlLnBsIHwgMyArKysKPiAgMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0
aW9ucygrKQo+IAo+IGRpZmYgLS1naXQgYS9zY3JpcHRzL3RyYWNlLnBsIGIvc2NyaXB0cy90cmFj
ZS5wbAo+IGluZGV4IDhjODk2Y2ZkZTZiMC4uYWMxNDFhNTE0MDU1IDEwMDc1NQo+IC0tLSBhL3Nj
cmlwdHMvdHJhY2UucGwKPiArKysgYi9zY3JpcHRzL3RyYWNlLnBsCj4gQEAgLTQ0Myw2ICs0NDMs
OSBAQCB3aGlsZSAoPD4pIHsKPiAgICAgICAgIH0gZWxzaWYgKCR0cF9uYW1lIGVxICdkbWFfZmVu
Y2U6ZG1hX2ZlbmNlX3NpZ25hbGVkOicpIHsKPiAgICAgICAgICAgICAgICAgbXkgJG5rZXk7Cj4g
IAo+ICsgICAgICAgICAgICAgICBuZXh0IHVubGVzcyAkdHB7J2RyaXZlcid9IGVxICdpOTE1JyBh
bmQKPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgJHRweyd0aW1lbGluZSd9IGVxICdzaWdu
YWxlZCc7CgpIb3BlZnVsbHkgdGhhdCByZW1haW5zIHVuaXF1ZS4uLgpSZXZpZXdlZC1ieTogQ2hy
aXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+CgpJIGRvIHJlY2FsbCB3YW50aW5n
IHRvIHJlbW92ZSB0aGUgc3RyaW5ncyBmcm9tIGFsbCB0aGUgdHJhY2Vwb2ludHMgOi1wCi1DaHJp
cwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
