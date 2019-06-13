Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 85DE343605
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jun 2019 14:45:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 95A7D89838;
	Thu, 13 Jun 2019 12:45:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B834E89838
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Jun 2019 12:45:34 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Jun 2019 05:45:34 -0700
X-ExtLoop1: 1
Received: from rdvivi-losangeles.jf.intel.com (HELO intel.com) ([10.7.196.65])
 by orsmga003.jf.intel.com with ESMTP; 13 Jun 2019 05:45:34 -0700
Date: Thu, 13 Jun 2019 05:46:05 -0700
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>,
 Martin Peres <martin.peres@linux.intel.com>,
 Tomi Sarvela <tomi.p.sarvela@intel.com>,
 Arkadiusz Hiler <arkadiusz.hiler@intel.com>
Message-ID: <20190613124605.GH29428@intel.com>
References: <20190613122842.4840-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190613122842.4840-1-chris@chris-wilson.co.uk>
User-Agent: Mutt/1.11.3 (2019-02-01)
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Enable refcount debugging for
 default debug levels
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

T24gVGh1LCBKdW4gMTMsIDIwMTkgYXQgMDE6Mjg6NDJQTSArMDEwMCwgQ2hyaXMgV2lsc29uIHdy
b3RlOgo+IHJlZmNvdW50X3QgaXMgb3VyIGZpcnN0IGxpbmUgb2YgZGVmZW5jZSBhZ2FpbnN0IHVz
ZS1hZnRlci1mcmVlLCBzbyBsZXQncwo+IGVuYWJsZSBpdCBmb3IgZGVidWdnaW5nLgoKSXQgc2Vl
bXMgYSBuaWNlIHRoaW5nIHRvIGhhdmUgb24gZGVidWcgYnkgZGVmYXVsdCBhbmQgdGhleSBwcm9t
aXNlIG5vCnBlcmZvcm1hbmNlIGltcGFjdC4KCkFja2VkLWJ5OiBSb2RyaWdvIFZpdmkgPHJvZHJp
Z28udml2aUBpbnRlbC5jb20+CgpXZWxsLCBJIGhvcGUgb3VyIENJIGRvZXNuJ3QgY29tcGxhaW4s
IGJ1dCBpZiBpdCBkb2VzIHdlIGNhbiByZW1vdmUgbGF0ZXIuCmFueXdheSwKQ2M6IE1hcnRpbgpD
YzogVG9taQpDYzogQXJlawoKPiAKPiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlz
QGNocmlzLXdpbHNvbi5jby51az4KPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvS2NvbmZp
Zy5kZWJ1ZyB8IDEgKwo+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKykKPiAKPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvS2NvbmZpZy5kZWJ1ZyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L0tjb25maWcuZGVidWcKPiBpbmRleCAwOWFhMGY0YzhiZjEuLjhkOTIyYmI0ZDk1
MyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9LY29uZmlnLmRlYnVnCj4gKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvS2NvbmZpZy5kZWJ1Zwo+IEBAIC0yMSw2ICsyMSw3IEBA
IGNvbmZpZyBEUk1fSTkxNV9ERUJVRwo+ICAgICAgICAgIGRlcGVuZHMgb24gRFJNX0k5MTUKPiAg
ICAgICAgICBzZWxlY3QgREVCVUdfRlMKPiAgICAgICAgICBzZWxlY3QgUFJFRU1QVF9DT1VOVAo+
ICsgICAgICAgIHNlbGVjdCBSRUZDT1VOVF9GVUxMCj4gICAgICAgICAgc2VsZWN0IEkyQ19DSEFS
REVWCj4gICAgICAgICAgc2VsZWN0IFNUQUNLREVQT1QKPiAgICAgICAgICBzZWxlY3QgRFJNX0RQ
X0FVWF9DSEFSREVWCj4gLS0gCj4gMi4yMC4xCj4gCj4gX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KPiBJbnRlbC1nZnggbWFpbGluZyBsaXN0Cj4gSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLWdmeA==
