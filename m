Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B01350929
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Jun 2019 12:46:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4A1E189AC3;
	Mon, 24 Jun 2019 10:46:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 95D8789AC3;
 Mon, 24 Jun 2019 10:46:00 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17003778-1500050 for multiple; Mon, 24 Jun 2019 11:45:59 +0100
MIME-Version: 1.0
To: Patchwork <patchwork@emeril.freedesktop.org>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <156137262662.15678.4588953173736249469@skylake-alporthouse-com>
References: <20190624090214.2888-1-chris@chris-wilson.co.uk>
 <20190624103047.1473.69238@emeril.freedesktop.org>
 <156137262662.15678.4588953173736249469@skylake-alporthouse-com>
Message-ID: <156137315572.15678.11096251940495855424@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Mon, 24 Jun 2019 11:45:55 +0100
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/execlists=3A_Disable_preemption_under_GVT_=28rev5=29?=
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMDYtMjQgMTE6Mzc6MDYpCj4gUXVvdGluZyBQYXRj
aHdvcmsgKDIwMTktMDYtMjQgMTE6MzA6NDcpCj4gPiA9PSBTZXJpZXMgRGV0YWlscyA9PQo+ID4g
Cj4gPiBTZXJpZXM6IGRybS9pOTE1L2V4ZWNsaXN0czogRGlzYWJsZSBwcmVlbXB0aW9uIHVuZGVy
IEdWVCAocmV2NSkKPiA+IFVSTCAgIDogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3Jn
L3Nlcmllcy82MjUzMy8KPiA+IFN0YXRlIDogZmFpbHVyZQo+ID4gCj4gPiA9PSBTdW1tYXJ5ID09
Cj4gPiAKPiA+IENJIEJ1ZyBMb2cgLSBjaGFuZ2VzIGZyb20gQ0lfRFJNXzYzMzEgLT4gUGF0Y2h3
b3JrXzEzNDA0Cj4gPiA9PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09Cj4gPiAKPiA+IFN1bW1hcnkKPiA+IC0tLS0tLS0KPiA+IAo+ID4gICAqKkZBSUxV
UkUqKgo+ID4gCj4gPiAgIFNlcmlvdXMgdW5rbm93biBjaGFuZ2VzIGNvbWluZyB3aXRoIFBhdGNo
d29ya18xMzQwNCBhYnNvbHV0ZWx5IG5lZWQgdG8gYmUKPiA+ICAgdmVyaWZpZWQgbWFudWFsbHku
Cj4gPiAgIAo+ID4gICBJZiB5b3UgdGhpbmsgdGhlIHJlcG9ydGVkIGNoYW5nZXMgaGF2ZSBub3Ro
aW5nIHRvIGRvIHdpdGggdGhlIGNoYW5nZXMKPiA+ICAgaW50cm9kdWNlZCBpbiBQYXRjaHdvcmtf
MTM0MDQsIHBsZWFzZSBub3RpZnkgeW91ciBidWcgdGVhbSB0byBhbGxvdyB0aGVtCj4gPiAgIHRv
IGRvY3VtZW50IHRoaXMgbmV3IGZhaWx1cmUgbW9kZSwgd2hpY2ggd2lsbCByZWR1Y2UgZmFsc2Ug
cG9zaXRpdmVzIGluIENJLgo+ID4gCj4gPiAgIEV4dGVybmFsIFVSTDogaHR0cHM6Ly9pbnRlbC1n
ZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTM0MDQvCj4gPiAKPiA+IFBvc3Np
YmxlIG5ldyBpc3N1ZXMKPiA+IC0tLS0tLS0tLS0tLS0tLS0tLS0KPiA+IAo+ID4gICBIZXJlIGFy
ZSB0aGUgdW5rbm93biBjaGFuZ2VzIHRoYXQgbWF5IGhhdmUgYmVlbiBpbnRyb2R1Y2VkIGluIFBh
dGNod29ya18xMzQwNDoKPiA+IAo+ID4gIyMjIElHVCBjaGFuZ2VzICMjIwo+ID4gCj4gPiAjIyMj
IFBvc3NpYmxlIHJlZ3Jlc3Npb25zICMjIyMKPiA+IAo+ID4gICAqIGlndEBpOTE1X3NlbGZ0ZXN0
QGxpdmVfZXhlY2xpc3RzOgo+ID4gICAgIC0gZmkta2JsLTc1Njd1OiAgICAgICBbUEFTU11bMV0g
LT4gW0lOQ09NUExFVEVdWzJdCj4gPiAgICBbMV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9y
Zy90cmVlL2RybS10aXAvQ0lfRFJNXzYzMzEvZmkta2JsLTc1Njd1L2lndEBpOTE1X3NlbGZ0ZXN0
QGxpdmVfZXhlY2xpc3RzLmh0bWwKPiA+ICAgIFsyXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEu
b3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTM0MDQvZmkta2JsLTc1Njd1L2lndEBpOTE1X3Nl
bGZ0ZXN0QGxpdmVfZXhlY2xpc3RzLmh0bWwKPiA+ICAgICAtIGZpLWJzdy1uMzA1MDogICAgICAg
W1BBU1NdWzNdIC0+IFtETUVTRy1GQUlMXVs0XQo+ID4gICAgWzNdOiBodHRwczovL2ludGVsLWdm
eC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82MzMxL2ZpLWJzdy1uMzA1MC9pZ3RAaTkx
NV9zZWxmdGVzdEBsaXZlX2V4ZWNsaXN0cy5odG1sCj4gPiAgICBbNF06IGh0dHBzOi8vaW50ZWwt
Z2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzNDA0L2ZpLWJzdy1uMzA1MC9p
Z3RAaTkxNV9zZWxmdGVzdEBsaXZlX2V4ZWNsaXN0cy5odG1sCj4gPiAgICAgLSBmaS1ic3cta2Vm
a2E6ICAgICAgIFtQQVNTXVs1XSAtPiBbRE1FU0ctRkFJTF1bNl0KPiA+ICAgIFs1XTogaHR0cHM6
Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjMzMS9maS1ic3cta2Vm
a2EvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV9leGVjbGlzdHMuaHRtbAo+ID4gICAgWzZdOiBodHRw
czovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzQwNC9maS1i
c3cta2Vma2EvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV9leGVjbGlzdHMuaHRtbAo+ID4gICAgIC0g
Zmktc2tsLTYyNjB1OiAgICAgICBbUEFTU11bN10gLT4gW0lOQ09NUExFVEVdWzhdCj4gPiAgICBb
N106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzYzMzEv
Zmktc2tsLTYyNjB1L2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfZXhlY2xpc3RzLmh0bWwKPiA+ICAg
IFs4XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtf
MTM0MDQvZmktc2tsLTYyNjB1L2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfZXhlY2xpc3RzLmh0bWwK
PiA+ICAgICAtIGZpLXNrbC02NzcwaHE6ICAgICAgW1BBU1NdWzldIC0+IFtJTkNPTVBMRVRFXVsx
MF0KPiA+ICAgIFs5XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9D
SV9EUk1fNjMzMS9maS1za2wtNjc3MGhxL2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfZXhlY2xpc3Rz
Lmh0bWwKPiA+ICAgIFsxMF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10
aXAvUGF0Y2h3b3JrXzEzNDA0L2ZpLXNrbC02NzcwaHEvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV9l
eGVjbGlzdHMuaHRtbAo+ID4gICAgIC0gZmktYmR3LTU1NTd1OiAgICAgICBbUEFTU11bMTFdIC0+
IFtETUVTRy1GQUlMXVsxMl0KPiA+ICAgIFsxMV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9y
Zy90cmVlL2RybS10aXAvQ0lfRFJNXzYzMzEvZmktYmR3LTU1NTd1L2lndEBpOTE1X3NlbGZ0ZXN0
QGxpdmVfZXhlY2xpc3RzLmh0bWwKPiA+ICAgIFsxMl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAx
Lm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzNDA0L2ZpLWJkdy01NTU3dS9pZ3RAaTkxNV9z
ZWxmdGVzdEBsaXZlX2V4ZWNsaXN0cy5odG1sCj4gPiAgICAgLSBmaS1za2wtbG1lbTogICAgICAg
IFtQQVNTXVsxM10gLT4gW0lOQ09NUExFVEVdWzE0XQo+ID4gICAgWzEzXTogaHR0cHM6Ly9pbnRl
bC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjMzMS9maS1za2wtbG1lbS9pZ3RA
aTkxNV9zZWxmdGVzdEBsaXZlX2V4ZWNsaXN0cy5odG1sCj4gPiAgICBbMTRdOiBodHRwczovL2lu
dGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzQwNC9maS1za2wtbG1l
bS9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX2V4ZWNsaXN0cy5odG1sCj4gCj4gU2lnaC4gSW5jb21w
YXRpYmxlIGZsYWdzLgoKSG93ZXZlciwgZ2l2ZW4gdGhhdCB3ZSBrbm93IGhhdmUgcmVndWxhciBi
ZHcgY29tcGxhaW5pbmcgYmVjYXVzZQpwcmVlbXB0aW9uIHdhcyBkaXNhYmxlZCwgd2UgY2FuIGNv
bmNsdWRlIHRoYXQgYmR3Z3Z0ZHZtIGlzIG5vdCBzaW1wbHkKZnJlZXppbmcgYmVjYXVzZSBvZiB0
aGUgZW1pdF9wcmVlbXB0X2J1c3l3YWl0LgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4
