Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CF5F921F13
	for <lists+intel-gfx@lfdr.de>; Fri, 17 May 2019 22:30:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A8E0B8991A;
	Fri, 17 May 2019 20:30:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 872D18991A
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 May 2019 20:30:41 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 May 2019 13:30:41 -0700
X-ExtLoop1: 1
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by orsmga001.jf.intel.com with ESMTP; 17 May 2019 13:30:39 -0700
Received: from mwajdecz-mobl1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [172.28.174.50])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 x4HKUctJ011378; Fri, 17 May 2019 21:30:39 +0100
To: intel-gfx@lists.freedesktop.org, "Chris Wilson" <chris@chris-wilson.co.uk>
References: <20190517162227.6436-1-michal.wajdeczko@intel.com>
 <20190517162227.6436-6-michal.wajdeczko@intel.com>
 <155811069162.826.12709617970282077850@skylake-alporthouse-com>
 <op.z1x10tx6xaggs7@mwajdecz-mobl1.ger.corp.intel.com>
 <155811324114.1890.9192023953163702697@skylake-alporthouse-com>
 <op.z1x4b4p0xaggs7@mwajdecz-mobl1.ger.corp.intel.com>
 <155812373692.1890.6640785065464112472@skylake-alporthouse-com>
Date: Fri, 17 May 2019 22:30:38 +0200
MIME-Version: 1.0
From: "Michal Wajdeczko" <michal.wajdeczko@intel.com>
Message-ID: <op.z1ya9cfzxaggs7@mwajdecz-mobl1.ger.corp.intel.com>
In-Reply-To: <155812373692.1890.6640785065464112472@skylake-alporthouse-com>
User-Agent: Opera Mail/1.0 (Win32)
Subject: Re: [Intel-gfx] [PATCH 5/7] drm/i915/uc: Skip reset preparation if
 GuC is already dead
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"; DelSp="yes"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCAxNyBNYXkgMjAxOSAyMjowODo1NiArMDIwMCwgQ2hyaXMgV2lsc29uICAKPGNocmlz
QGNocmlzLXdpbHNvbi5jby51az4gd3JvdGU6Cgo+IFF1b3RpbmcgTWljaGFsIFdhamRlY3prbyAo
MjAxOS0wNS0xNyAxOTowMTowNikKPj4gT24gRnJpLCAxNyBNYXkgMjAxOSAxOToxNDowMSArMDIw
MCwgQ2hyaXMgV2lsc29uCj4+IDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+IHdyb3RlOgo+Pgo+
PiA+IFF1b3RpbmcgTWljaGFsIFdhamRlY3prbyAoMjAxOS0wNS0xNyAxODoxMTowNykKPj4gPj4g
T24gRnJpLCAxNyBNYXkgMjAxOSAxODozMTozMSArMDIwMCwgQ2hyaXMgV2lsc29uCj4+ID4+IDxj
aHJpc0BjaHJpcy13aWxzb24uY28udWs+IHdyb3RlOgo+PiA+Pgo+PiA+PiA+IFF1b3RpbmcgTWlj
aGFsIFdhamRlY3prbyAoMjAxOS0wNS0xNyAxNzoyMjoyNSkKPj4gPj4gPj4gV2UgbWF5IHNraXAg
cmVzZXQgcHJlcGFyYXRpb24gc3RlcHMgaWYgR3VDIGlzIGFscmVhZHkgc2FuaXRpemVkLgo+PiA+
PiA+Pgo+PiA+PiA+PiBTaWduZWQtb2ZmLWJ5OiBNaWNoYWwgV2FqZGVjemtvIDxtaWNoYWwud2Fq
ZGVjemtvQGludGVsLmNvbT4KPj4gPj4gPj4gQ2M6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMt
d2lsc29uLmNvLnVrPgo+PiA+PiA+PiBDYzogRGFuaWVsZSBDZXJhb2xvIFNwdXJpbyA8ZGFuaWVs
ZS5jZXJhb2xvc3B1cmlvQGludGVsLmNvbT4KPj4gPj4gPj4gLS0tCj4+ID4+ID4+ICBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9pbnRlbF91Yy5jIHwgMyArKysKPj4gPj4gPj4gIDEgZmlsZSBjaGFuZ2Vk
LCAzIGluc2VydGlvbnMoKykKPj4gPj4gPj4KPj4gPj4gPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2ludGVsX3VjLmMKPj4gPj4gPj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
bnRlbF91Yy5jCj4+ID4+ID4+IGluZGV4IDg2ZWRmYTVhZDcyZS4uMzZjNTNhNDI5MjdjIDEwMDY0
NAo+PiA+PiA+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF91Yy5jCj4+ID4+ID4+
ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3VjLmMKPj4gPj4gPj4gQEAgLTQ5OSw2
ICs0OTksOSBAQCB2b2lkIGludGVsX3VjX3Jlc2V0X3ByZXBhcmUoc3RydWN0Cj4+ID4+IGRybV9p
OTE1X3ByaXZhdGUKPj4gPj4gPj4gKmk5MTUpCj4+ID4+ID4+ICAgICAgICAgaWYgKCFVU0VTX0dV
QyhpOTE1KSkKPj4gPj4gPj4gICAgICAgICAgICAgICAgIHJldHVybjsKPj4gPj4gPj4KPj4gPj4g
Pj4gKyAgICAgICBpZiAoIWludGVsX2d1Y19pc19hbGl2ZShndWMpKQo+PiA+PiA+PiArICAgICAg
ICAgICAgICAgcmV0dXJuOwo+PiA+PiA+Cj4+ID4+ID4gRG9lcyBpdCBub3QgcmVwbGFjZSAiaWYg
KCFVU0VTX0dVQyhpOTE1KSkiPwo+PiA+Pgo+PiA+PiBZZXMgaXQgY2FuLCBhcyB3ZSB3aWxsIG5l
dmVyIGZldGNoL3VwbG9hZCBmdyBpZiB3ZSBkb24ndCBwbGFuIHRvIHVzZSAgCj4+IGl0Cj4+ID4+
IDspCj4+ID4+Cj4+ID4+IEJ0dywgSSdtIHRoaW5raW5nIG9mIHJlbmFtaW5nIGludGVsX2d1Y19p
c19hbGl2ZSB0byAgCj4+IGludGVsX2d1Y19pc19sb2FkZWQKPj4gPj4gb3IgaW50ZWxfZ3VjX2lz
X3N0YXJ0ZWQgdG8gYmV0dGVyIGRlc2NyaWJlIHdoYXQgdGhpcyBmdW5jdGlvbiBpcwo+PiA+PiBy
ZXBvcnRpbmcsCj4+ID4+IGFzIG9uZSBjYW4gdGhpbmsgdGhhdCBpbnRlbF9ndWNfaXNfYWxpdmUg
aXMgYWN0dWFsbHkgY2hlY2tpbmcgdGhhdCAgCj4+IEd1Qwo+PiA+PiBmdwo+PiA+PiBpcyByZXNw
b25zaXZlLCB3aGljaCBpbiBnZW5lcmFsIG1pZ2h0IG5vdCBiZSB0aGUgc2FtZSBhcyAibG9hZGVk
Igo+PiA+Cj4+ID4gRWl0aGVyIHNlZW1zIHJlYXNvbmFibGUsIHRob3VnaCB0aGVyZSBtaWdodCBi
ZSBnb29kIHJlYXNvbiB0byBoYXZlICAKPj4gYm90aAo+PiA+IDopCj4+ID4KPj4gPiBpbnRlbF9n
dWNfaXNfbG9hZGVkCj4+ID4gaW50ZWxfZ3VjX2hhc19zdGFydGVkIC8gaW50ZWxfZ3VjX2lzX2Fj
dGl2ZQo+Pgo+PiBPbiBHdUMgbG9hZCBmYWlsdXJlLCBvciBvbiByZXNldCwgd2UgaW1tZWRpYXRl
bHkgc2FuaXRpemUgZncgbG9hZCAgCj4+IHN0YXR1cywKPj4gc28gdW50aWwgd2UgcHJvdmlkZSBy
ZWFsIHJ1bnRpbWUgY29ubmVjdGl2aXR5IGNoZWNrLCBpZiBldmVyIGJlICAKPj4gcmVxdWlyZWQs
Cj4+IEkgYXNzdW1lIHdlIGNhbiBzdGF5IHdpdGgganVzdCBvbmUgZnVuY3Rpb246IGludGVsX2d1
Y19pc19sb2FkZWQsIG9rPwo+Cj4gV291bGQgYSBzaW1pbGFyIG9uZSBmb3IgaHVjIGFsc28gd29y
az8gV291bGQgaXQgYmUgcmVsaWFibGUgZW5vdWdoIHRvCj4gcmVwbGFjZSBIVUNfU1RBVFVTIHF1
ZXJ5PyAoU2VlbXMgc2lsbHkgdG8gd2FrZSB0aGUgZGV2aWNlIHVwIGp1c3QgdG8KPiBhbnN3ZXIg
aWYgd2UndmUgbG9hZGVkIHRoZSBmaXJtd2FyZSBzdWNjZXNzZnVsbHkuKQoKSSdtIG5vdCBzdXJl
IHRoYXQgd2UgY2FuIGRyb3AgSFVDX1NUQVRVUyBxdWVyeSBhcyBtYXliZSB0aGlzIGJpdCBjYW4K
Z28gb2ZmICh3aG8gY2FuIGNvbmZpcm0gdGhhdD8pIGJ1dCB3ZSBkZWZpbml0ZWx5IGNhbiByZXBs
YWNlIEhBU19IVUMKKGJ0dyBpdCBzaG91bGQgYmUgVVNFU19IVUMpIHdpdGggbmV3IGludGVsX2h1
Y19pc19sb2FkZWQKCk1pY2hhbApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZng=
