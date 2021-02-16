Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A2F531CEF2
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Feb 2021 18:25:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CABBA6E0B9;
	Tue, 16 Feb 2021 17:25:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 609ED6E0B9
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Feb 2021 17:25:31 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.69.177; 
Received: from localhost (unverified [78.156.69.177]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23883713-1500050 for multiple; Tue, 16 Feb 2021 17:25:29 +0000
MIME-Version: 1.0
In-Reply-To: <20210216160035.4780-1-ville.syrjala@linux.intel.com>
References: <20210216160035.4780-1-ville.syrjala@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Tue, 16 Feb 2021 17:25:27 +0000
Message-ID: <161349632758.8311.6775260061918956330@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Readout conn_state->max_bpc
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

UXVvdGluZyBWaWxsZSBTeXJqYWxhICgyMDIxLTAyLTE2IDE2OjAwOjM1KQo+IEZyb206IFZpbGxl
IFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4gCj4gUG9wdWxhdGUg
Y29ubl9zdGF0ZS0+bWF4X2JwYyB3aXRoIHNvbWV0aGluZyBzZW5zaWJsZSBmcm9tIHRoZSBzdGFy
dC4KPiBPdGhlcndpc2UgaXQncyBwb3NzaWJsZSB0aGF0IHdlIGdldCB0byBjb21wdXRlX3Npbmtf
cGlwZV9icHAoKSB3aXRoCj4gbWF4X2JwYz09MC4KPiAKPiBUaGUgc3BlY2lmaWMgc2NlbmFyaW8g
Z29lcyBhcyBmb2xsb3dzOgo+IDEuIEluaXRpYWwgY29ubmVjdG9yIHN0YXRlIGFsbG9jYXRlZCB3
aXRoIG1heF9icGM9PTAKPiAyLiBUcmlnZ2VyIGEgbW9kZXNldCBvbiB0aGUgY3J0YyBmZWVkaW5n
IHRoZSBjb25uZWN0b3IsIHdpdGhvdXQKPiAgICBhY3R1YWxseSBhZGRpbmcgdGhlIGNvbm5lY3Rv
ciB0byB0aGUgY29tbWl0Cj4gMy4gZHJtX2F0b21pY19jb25uZWN0b3JfY2hlY2soKSBpcyBza2lw
cGVkIGJlY2F1c2UgdGhlCj4gICAgY29ubmVjdG9yIGhhcyBub3QgeWV0IGJlZW4gYWRkZWQsIGhl
bmNlIGNvbm5fc3RhdGUtPm1heF9icGMKPiAgICByZXRhaW5zIGl0cyBjdXJyZW50IHZhbHVlCj4g
NC4gZHJtX2F0b21pY19oZWxwZXJfY2hlY2tfbW9kZXNldCgpIC0+Cj4gICAgZHJtX2F0b21pY19h
ZGRfYWZmZWN0ZWRfY29ubmVjdG9ycygpIC0+IHRoZSBjb25uZWN0b3IKPiAgICBpcyBub3cgcGFy
dCBvZiB0aGUgY29tbWl0Cj4gNS4gY29tcHV0ZV9iYXNlbGluZV9waXBlX2JwcCgpIC0+IE1JU1NJ
TkdfQ0FTRShtYXhfYnBjPT0wKQo+IAo+IE5vdGUgdGhhdCBwaXBlX2JwcCBpdHNlbGYgbWF5IG5v
dCBiZSBwb3B1bGF0ZWQgb24gcHJlLWc0eCBtYWNoaW5lcywKPiBpbiB3aGljaCBjYXNlIHdlIGp1
c3QgZmFsbCBiYWNrIHRvIG1heF9icGM9PTggYW5kIGxldCAuY29tcHV0ZV9jb25maWcoKQo+IGxp
bWl0IHRoZSByZXN1bHRpbmcgcGlwZV9icHAgZnVydGhlciBpZiBuZWNlc3NhcnkuCj4gCj4gQ2M6
IERhbmllbCBWZXR0ZXIgPGRhbmllbEBmZndsbC5jaD4KPiBSZXBvcnRlZC1ieTogQ2hyaXMgV2ls
c29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gU2lnbmVkLW9mZi1ieTogVmlsbGUgU3ly
asOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KVGVzdGVkLWJ5OiBDaHJpcyBX
aWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KLUNocmlzCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
