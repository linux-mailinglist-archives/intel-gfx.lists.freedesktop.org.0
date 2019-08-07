Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 72F268521F
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Aug 2019 19:32:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CDE626E742;
	Wed,  7 Aug 2019 17:32:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DDBAE6E742
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Aug 2019 17:32:07 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17922032-1500050 for multiple; Wed, 07 Aug 2019 18:32:02 +0100
MIME-Version: 1.0
To: Michal Wajdeczko <michal.wajdeczko@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190807170034.8440-5-michal.wajdeczko@intel.com>
References: <20190807170034.8440-1-michal.wajdeczko@intel.com>
 <20190807170034.8440-5-michal.wajdeczko@intel.com>
Message-ID: <156519911945.6198.13711947654484594460@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Wed, 07 Aug 2019 18:31:59 +0100
Subject: Re: [Intel-gfx] [PATCH 4/7] drm/i915: Don't try to partition WOPCM
 without GuC firmware
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

UXVvdGluZyBNaWNoYWwgV2FqZGVjemtvICgyMDE5LTA4LTA3IDE4OjAwOjMxKQo+IEZvciBtZWFu
aW5nZnVsIFdPUENNIHBhcnRpdGlvbmluZyB3ZSBuZWVkIEd1QyAoYW5kIG9wdGlvbmFsbHkgSHVD
KQo+IGZpcm13YXJlIHNpemUocykgYW5kIHdlIHNob3VsZG4ndCBqdXN0IHJlbHkgb24gR3VDIHN1
cHBvcnQgZmxhZywKPiBhcyB3ZSBtaWdodCBmYWlsIHRvIGZldGNoIEd1QyBmaXJtd2FyZSBhbmQg
aXQncyBzaXplIHdpbGwgYmUgMAo+IGFuZCBhbGwgY2FsY3VsYXRpb25zIHdpbGwgYmUganVzdCB3
cm9uZy91c2VsZXNzLgo+IAo+IFNpZ25lZC1vZmYtYnk6IE1pY2hhbCBXYWpkZWN6a28gPG1pY2hh
bC53YWpkZWN6a29AaW50ZWwuY29tPgo+IENjOiBEYW5pZWxlIENlcmFvbG8gU3B1cmlvIDxkYW5p
ZWxlLmNlcmFvbG9zcHVyaW9AaW50ZWwuY29tPgo+IENjOiBDaHJpcyBXaWxzb24gPGNocmlzQGNo
cmlzLXdpbHNvbi5jby51az4KPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfd29w
Y20uYyB8IDIgKy0KPiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9u
KC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3dvcGNtLmMg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF93b3BjbS5jCj4gaW5kZXggNGMyMjE0M2VlODRm
Li41ZTVjM2ZkMzQ3MmQgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxf
d29wY20uYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3dvcGNtLmMKPiBAQCAt
MTcwLDcgKzE3MCw3IEBAIHZvaWQgaW50ZWxfd29wY21faW5pdChzdHJ1Y3QgaW50ZWxfd29wY20g
KndvcGNtKQo+ICAgICAgICAgdTMyIGd1Y193b3BjbV9yc3ZkOwo+ICAgICAgICAgaW50IGVycjsK
PiAgCj4gLSAgICAgICBpZiAoIVVTRVNfR1VDKGk5MTUpKQo+ICsgICAgICAgaWYgKCFndWNfZndf
c2l6ZSkKPiAgICAgICAgICAgICAgICAgcmV0dXJuOwoKSXQgbG9va3MgbGlrZSB0aGUgY2FsY3Vs
YXRpb25zIHdpdGggaHVjX2Z3X3NpemU9MCBhcmUgZmluZSwganVzdCBob3BlCnRoZSBmdyBhZ3Jl
ZXMuCgpSZXZpZXdlZC1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+
Ci1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
