Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FA49FCA60
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Nov 2019 16:57:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B0326EBCE;
	Thu, 14 Nov 2019 15:57:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9528B6EBCE
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Nov 2019 15:57:14 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Nov 2019 07:57:13 -0800
X-IronPort-AV: E=Sophos;i="5.68,304,1569308400"; d="scan'208";a="198862353"
Received: from ideak-desk.fi.intel.com ([10.237.68.142])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Nov 2019 07:57:12 -0800
Date: Thu, 14 Nov 2019 17:55:23 +0200
From: Imre Deak <imre.deak@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20191114155523.GA12910@ideak-desk.fi.intel.com>
References: <20191114152621.7235-1-imre.deak@intel.com>
 <157374618729.6809.14253763679058335383@skylake-alporthouse-com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <157374618729.6809.14253763679058335383@skylake-alporthouse-com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Restore GT coarse power gating
 workaround
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
Reply-To: imre.deak@intel.com
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCBOb3YgMTQsIDIwMTkgYXQgMDM6NDM6MDdQTSArMDAwMCwgQ2hyaXMgV2lsc29uIHdy
b3RlOgo+IFF1b3RpbmcgSW1yZSBEZWFrICgyMDE5LTExLTE0IDE1OjI2OjIxKQo+ID4gVGhlIHdv
cmthcm91bmQgdG8gZGlzYWJsZSBjb2Fyc2UgcG93ZXIgZ2F0aW5nIGlzIHN0aWxsIG5lZWRlZCBv
biBTS0wKPiA+IEdUMy9HVDQgbWFjaGluZXMgYW5kIHNpbmNlIHRoZSBSQzYgY29udGV4dCBjb3Jy
dXB0aW9uIHdhcyBkaXNjb3ZlcmVkIGJ5Cj4gPiB0aGUgaGFyZHdhcmUgdGVhbSBhbHNvIG9uIGFs
bCBHRU45IG1hY2hpbmVzLiBSZXN0b3JlIGFwcGx5aW5nIHRoZQo+ID4gd29ya2Fyb3VuZC4KPiA+
IAo+ID4gRml4ZXM6IGMxMTMyMzY3MThlOCAoImRybS9pOTE1OiBFeHRyYWN0IEdUIHJlbmRlciBz
bGVlcCAocmM2KSBtYW5hZ2VtZW50IikKPiA+IFRlc3RjYXNlOiBpZ3QvaW50ZWxfZ3RfcG1fbGF0
ZV9zZWxmdGVzdHMvbGl2ZV9yYzZfY3R4Cj4gPiBDYzogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJp
cy13aWxzb24uY28udWs+Cj4gPiBDYzogQW5kaSBTaHl0aSA8YW5kaS5zaHl0aUBpbnRlbC5jb20+
Cj4gPiBTaWduZWQtb2ZmLWJ5OiBJbXJlIERlYWsgPGltcmUuZGVha0BpbnRlbC5jb20+Cj4gPiAt
LS0KPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9yYzYuYyB8IDYgKysrKy0tCj4g
PiAgMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPiA+IAo+
ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3JjNi5jIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmM2LmMKPiA+IGluZGV4IGY3YzBiYWViMzc5My4u
ZGUyZDMwMmU4ZDU1IDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50
ZWxfcmM2LmMKPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3JjNi5jCj4g
PiBAQCAtMTc1LDggKzE3NSwxMCBAQCBzdGF0aWMgdm9pZCBnZW45X3JjNl9lbmFibGUoc3RydWN0
IGludGVsX3JjNiAqcmM2KQo+ID4gICAgICAgICAgICAgR0VONl9SQ19DVExfUkM2X0VOQUJMRSB8
Cj4gPiAgICAgICAgICAgICByYzZfbW9kZSk7Cj4gPiAgCj4gPiAtICAgICAgIHNldCh1bmNvcmUs
IEdFTjlfUEdfRU5BQkxFLAo+ID4gLSAgICAgICAgICAgR0VOOV9SRU5ERVJfUEdfRU5BQkxFIHwg
R0VOOV9NRURJQV9QR19FTkFCTEUpOwo+ID4gKyAgICAgICAvKiBXYVJzRGlzYWJsZUNvYXJzZVBv
d2VyR2F0aW5nOnNrbCxjbmwgLSBSZW5kZXIvTWVkaWEgUEcgbmVlZCB0byBiZSBkaXNhYmxlZCB3
aXRoIFJDNi4gKi8KPiA+ICsgICAgICAgaWYgKCFORUVEU19XYVJzRGlzYWJsZUNvYXJzZVBvd2Vy
R2F0aW5nKHJjNl90b19pOTE1KHJjNikpKQo+ID4gKyAgICAgICAgICAgICAgIHNldCh1bmNvcmUs
IEdFTjlfUEdfRU5BQkxFLAo+ID4gKyAgICAgICAgICAgICAgICAgICBHRU45X1JFTkRFUl9QR19F
TkFCTEUgfCBHRU45X01FRElBX1BHX0VOQUJMRSk7Cj4gCj4gRWVlaywgSSBkb24ndCBldmVuIHJl
Y2FsbCBub3RpY2luZyBpdCBnb3QgZHJvcHBlZC4KPiAKPiBSZXZpZXdlZC1ieTogQ2hyaXMgV2ls
c29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gCj4gSXQgbWlnaHQgYmUgbW9yZSBzZW5z
aWJsZSBhcyBpZiAoMCkgc2luY2UgZ2VuOSBpcyBmb3JldmVyIGJhcnJlZC4KCkhtLCByaWdodC4K
ClRoZSBvbmx5IHRyYWNlIG9mIHRoaXMgaXNzdWUgSSBmb3VuZCBub3cgaW4gQlNwZWMgaXMgV0Ej
MDkxNgooSW5kZXgvMTQwOTEpLiBUaGF0IG9uZSBoYXMgYSBkaWZmZXJlbnQgV0EgKGRpc2FibGUg
R0FGUyBjbG9jayBnYXRpbmcpLApzbyBub3Qgc3VyZSBpZiBpdCdzIHRoZSBzYW1lIGlzc3VlLiBJ
J2xsIHRyeSB0byBmaW5kIHRoZSBvbmUgdGhlIGFib3ZlCndhcyBhZGRlZCBmb3IuCgpTb21lb25l
IG1heSBhbHNvIHdhbnQgdG8gaWdub3JlIHRoZSBjaGFuY2UgZm9yIFJDNiBDVFggY29ycnVwdGlv
biBhbmQKKGNob29zaW5nIGJldHRlciBwb3dlcnNhdmluZyBpbnN0ZWFkKSwgc28gd2UgbWF5IHN0
aWxsIHdhbnQgdGhlIGFib3ZlIFdBCnRvIGJlIG9wdGlvbmFsIChJJ2QgbmVlZCB0byBhZGQgdGhl
biBhIGtjb25maWcgb3B0aW9uIGZvciB0aGUgQ1RYCmNvcnJ1cHRpb24gV0EpLgoKU28gZm9yIG5v
dyBJJ2QganVzdCBrZWVwIHRoZSBhYm92ZSBmb3JtLgoKPiAtQ2hyaXMKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
