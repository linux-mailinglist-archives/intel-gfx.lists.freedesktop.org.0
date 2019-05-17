Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D29821D01
	for <lists+intel-gfx@lfdr.de>; Fri, 17 May 2019 20:01:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0FE578986D;
	Fri, 17 May 2019 18:01:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 210708986D
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 May 2019 18:01:12 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 May 2019 11:01:11 -0700
X-ExtLoop1: 1
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by orsmga005.jf.intel.com with ESMTP; 17 May 2019 11:01:09 -0700
Received: from mwajdecz-mobl1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [172.28.174.50])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 x4HI18UD005988; Fri, 17 May 2019 19:01:08 +0100
To: intel-gfx@lists.freedesktop.org, "Chris Wilson" <chris@chris-wilson.co.uk>
References: <20190517162227.6436-1-michal.wajdeczko@intel.com>
 <20190517162227.6436-6-michal.wajdeczko@intel.com>
 <155811069162.826.12709617970282077850@skylake-alporthouse-com>
 <op.z1x10tx6xaggs7@mwajdecz-mobl1.ger.corp.intel.com>
 <155811324114.1890.9192023953163702697@skylake-alporthouse-com>
Date: Fri, 17 May 2019 20:01:06 +0200
MIME-Version: 1.0
From: "Michal Wajdeczko" <michal.wajdeczko@intel.com>
Message-ID: <op.z1x4b4p0xaggs7@mwajdecz-mobl1.ger.corp.intel.com>
In-Reply-To: <155811324114.1890.9192023953163702697@skylake-alporthouse-com>
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

T24gRnJpLCAxNyBNYXkgMjAxOSAxOToxNDowMSArMDIwMCwgQ2hyaXMgV2lsc29uICAKPGNocmlz
QGNocmlzLXdpbHNvbi5jby51az4gd3JvdGU6Cgo+IFF1b3RpbmcgTWljaGFsIFdhamRlY3prbyAo
MjAxOS0wNS0xNyAxODoxMTowNykKPj4gT24gRnJpLCAxNyBNYXkgMjAxOSAxODozMTozMSArMDIw
MCwgQ2hyaXMgV2lsc29uCj4+IDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+IHdyb3RlOgo+Pgo+
PiA+IFF1b3RpbmcgTWljaGFsIFdhamRlY3prbyAoMjAxOS0wNS0xNyAxNzoyMjoyNSkKPj4gPj4g
V2UgbWF5IHNraXAgcmVzZXQgcHJlcGFyYXRpb24gc3RlcHMgaWYgR3VDIGlzIGFscmVhZHkgc2Fu
aXRpemVkLgo+PiA+Pgo+PiA+PiBTaWduZWQtb2ZmLWJ5OiBNaWNoYWwgV2FqZGVjemtvIDxtaWNo
YWwud2FqZGVjemtvQGludGVsLmNvbT4KPj4gPj4gQ2M6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hy
aXMtd2lsc29uLmNvLnVrPgo+PiA+PiBDYzogRGFuaWVsZSBDZXJhb2xvIFNwdXJpbyA8ZGFuaWVs
ZS5jZXJhb2xvc3B1cmlvQGludGVsLmNvbT4KPj4gPj4gLS0tCj4+ID4+ICBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9pbnRlbF91Yy5jIHwgMyArKysKPj4gPj4gIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2Vy
dGlvbnMoKykKPj4gPj4KPj4gPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2lu
dGVsX3VjLmMKPj4gPj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF91Yy5jCj4+ID4+IGlu
ZGV4IDg2ZWRmYTVhZDcyZS4uMzZjNTNhNDI5MjdjIDEwMDY0NAo+PiA+PiAtLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pbnRlbF91Yy5jCj4+ID4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2ludGVsX3VjLmMKPj4gPj4gQEAgLTQ5OSw2ICs0OTksOSBAQCB2b2lkIGludGVsX3VjX3Jlc2V0
X3ByZXBhcmUoc3RydWN0ICAKPj4gZHJtX2k5MTVfcHJpdmF0ZQo+PiA+PiAqaTkxNSkKPj4gPj4g
ICAgICAgICBpZiAoIVVTRVNfR1VDKGk5MTUpKQo+PiA+PiAgICAgICAgICAgICAgICAgcmV0dXJu
Owo+PiA+Pgo+PiA+PiArICAgICAgIGlmICghaW50ZWxfZ3VjX2lzX2FsaXZlKGd1YykpCj4+ID4+
ICsgICAgICAgICAgICAgICByZXR1cm47Cj4+ID4KPj4gPiBEb2VzIGl0IG5vdCByZXBsYWNlICJp
ZiAoIVVTRVNfR1VDKGk5MTUpKSI/Cj4+Cj4+IFllcyBpdCBjYW4sIGFzIHdlIHdpbGwgbmV2ZXIg
ZmV0Y2gvdXBsb2FkIGZ3IGlmIHdlIGRvbid0IHBsYW4gdG8gdXNlIGl0ICAKPj4gOykKPj4KPj4g
QnR3LCBJJ20gdGhpbmtpbmcgb2YgcmVuYW1pbmcgaW50ZWxfZ3VjX2lzX2FsaXZlIHRvIGludGVs
X2d1Y19pc19sb2FkZWQKPj4gb3IgaW50ZWxfZ3VjX2lzX3N0YXJ0ZWQgdG8gYmV0dGVyIGRlc2Ny
aWJlIHdoYXQgdGhpcyBmdW5jdGlvbiBpcyAgCj4+IHJlcG9ydGluZywKPj4gYXMgb25lIGNhbiB0
aGluayB0aGF0IGludGVsX2d1Y19pc19hbGl2ZSBpcyBhY3R1YWxseSBjaGVja2luZyB0aGF0IEd1
QyAgCj4+IGZ3Cj4+IGlzIHJlc3BvbnNpdmUsIHdoaWNoIGluIGdlbmVyYWwgbWlnaHQgbm90IGJl
IHRoZSBzYW1lIGFzICJsb2FkZWQiCj4KPiBFaXRoZXIgc2VlbXMgcmVhc29uYWJsZSwgdGhvdWdo
IHRoZXJlIG1pZ2h0IGJlIGdvb2QgcmVhc29uIHRvIGhhdmUgYm90aAo+IDopCj4KPiBpbnRlbF9n
dWNfaXNfbG9hZGVkCj4gaW50ZWxfZ3VjX2hhc19zdGFydGVkIC8gaW50ZWxfZ3VjX2lzX2FjdGl2
ZQoKT24gR3VDIGxvYWQgZmFpbHVyZSwgb3Igb24gcmVzZXQsIHdlIGltbWVkaWF0ZWx5IHNhbml0
aXplIGZ3IGxvYWQgc3RhdHVzLApzbyB1bnRpbCB3ZSBwcm92aWRlIHJlYWwgcnVudGltZSBjb25u
ZWN0aXZpdHkgY2hlY2ssIGlmIGV2ZXIgYmUgcmVxdWlyZWQsCkkgYXNzdW1lIHdlIGNhbiBzdGF5
IHdpdGgganVzdCBvbmUgZnVuY3Rpb246IGludGVsX2d1Y19pc19sb2FkZWQsIG9rPwoKTWljaGFs
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
