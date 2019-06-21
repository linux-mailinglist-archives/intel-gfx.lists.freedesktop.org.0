Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B4DD4ED5A
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Jun 2019 18:45:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E14F6E8F9;
	Fri, 21 Jun 2019 16:45:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E32B56E8F9;
 Fri, 21 Jun 2019 16:45:13 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16982124-1500050 for multiple; Fri, 21 Jun 2019 17:45:11 +0100
MIME-Version: 1.0
To: Patchwork <patchwork@emeril.freedesktop.org>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190621164258.9269.49395@emeril.freedesktop.org>
References: <20190621150011.16984-1-chris@chris-wilson.co.uk>
 <20190621164258.9269.49395@emeril.freedesktop.org>
Message-ID: <156113550926.2401.10844176818237728901@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 21 Jun 2019 17:45:09 +0100
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/execlists=3A_Disable_preemption_under_GVT?=
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

UXVvdGluZyBQYXRjaHdvcmsgKDIwMTktMDYtMjEgMTc6NDI6NTgpCj4gPT0gU2VyaWVzIERldGFp
bHMgPT0KPiAKPiBTZXJpZXM6IGRybS9pOTE1L2V4ZWNsaXN0czogRGlzYWJsZSBwcmVlbXB0aW9u
IHVuZGVyIEdWVAo+IFVSTCAgIDogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nl
cmllcy82MjUzMy8KPiBTdGF0ZSA6IHN1Y2Nlc3MKPiAKPiA9PSBTdW1tYXJ5ID09Cj4gCj4gQ0kg
QnVnIExvZyAtIGNoYW5nZXMgZnJvbSBDSV9EUk1fNjMyNCAtPiBQYXRjaHdvcmtfMTMzODgKPiA9
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09Cj4gCj4g
U3VtbWFyeQo+IC0tLS0tLS0KPiAKPiAgICoqU1VDQ0VTUyoqCj4gCj4gICBObyByZWdyZXNzaW9u
cyBmb3VuZC4KPiAKPiAgIEV4dGVybmFsIFVSTDogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3Jn
L3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTMzODgvCj4gCj4gS25vd24gaXNzdWVzCj4gLS0tLS0t
LS0tLS0tCj4gCj4gICBIZXJlIGFyZSB0aGUgY2hhbmdlcyBmb3VuZCBpbiBQYXRjaHdvcmtfMTMz
ODggdGhhdCBjb21lIGZyb20ga25vd24gaXNzdWVzOgo+IAo+ICMjIyBJR1QgY2hhbmdlcyAjIyMK
PiAKPiAjIyMjIElzc3VlcyBoaXQgIyMjIwo+IAo+ICAgKiBpZ3RAZ2VtX2ZsaW5rX2Jhc2ljQGJh
ZC1vcGVuOgo+ICAgICAtIGZpLWljbC1kc2k6ICAgICAgICAgW1BBU1NdWzFdIC0+IFtJTkNPTVBM
RVRFXVsyXSAoW2ZkbyMxMDc3MTNdKQo+ICAgIFsxXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEu
b3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjMyNC9maS1pY2wtZHNpL2lndEBnZW1fZmxpbmtfYmFz
aWNAYmFkLW9wZW4uaHRtbAo+ICAgIFsyXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3Ry
ZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTMzODgvZmktaWNsLWRzaS9pZ3RAZ2VtX2ZsaW5rX2Jhc2lj
QGJhZC1vcGVuLmh0bWwKPiAKPiAgIAo+ICMjIyMgUG9zc2libGUgZml4ZXMgIyMjIwo+IAo+ICAg
KiBpZ3RAZ2VtX2V4ZWNfY3JlYXRlQGJhc2ljOgo+ICAgICAtIGZpLWljbC1ndWM6ICAgICAgICAg
W0lOQ09NUExFVEVdWzNdIChbZmRvIzEwNzcxM10pIC0+IFtQQVNTXVs0XQo+ICAgIFszXTogaHR0
cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjMyNC9maS1pY2wt
Z3VjL2lndEBnZW1fZXhlY19jcmVhdGVAYmFzaWMuaHRtbAo+ICAgIFs0XTogaHR0cHM6Ly9pbnRl
bC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTMzODgvZmktaWNsLWd1Yy9p
Z3RAZ2VtX2V4ZWNfY3JlYXRlQGJhc2ljLmh0bWwKPiAKPiAgICogaWd0QGk5MTVfbW9kdWxlX2xv
YWRAcmVsb2FkLXdpdGgtZmF1bHQtaW5qZWN0aW9uOgo+ICAgICAtIGZpLWJzdy1rZWZrYTogICAg
ICAgW0RNRVNHLVdBUk5dWzVdIChbZmRvIzExMDkwMF0pIC0+IFtQQVNTXVs2XQo+ICAgIFs1XTog
aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjMyNC9maS1i
c3cta2Vma2EvaWd0QGk5MTVfbW9kdWxlX2xvYWRAcmVsb2FkLXdpdGgtZmF1bHQtaW5qZWN0aW9u
Lmh0bWwKPiAgICBbNl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAv
UGF0Y2h3b3JrXzEzMzg4L2ZpLWJzdy1rZWZrYS9pZ3RAaTkxNV9tb2R1bGVfbG9hZEByZWxvYWQt
d2l0aC1mYXVsdC1pbmplY3Rpb24uaHRtbAoKV2VsbCBzY3JhdGNoIHRoYXQgdGhlb3J5LiBUaGlz
IGRpZG4ndCBmaXggZmktYmR3LWd2dGRtLgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4
