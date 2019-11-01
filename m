Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 63DE3EC400
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Nov 2019 14:47:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 967E76F7F3;
	Fri,  1 Nov 2019 13:47:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 579166F7F3
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Nov 2019 13:47:04 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 01 Nov 2019 06:47:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,255,1569308400"; d="scan'208";a="194663841"
Received: from aquilante.fi.intel.com (HELO intel.intel) ([10.237.72.186])
 by orsmga008.jf.intel.com with ESMTP; 01 Nov 2019 06:47:02 -0700
Date: Fri, 1 Nov 2019 15:47:01 +0200
From: Andi Shyti <andi.shyti@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20191101134701.GB4215@intel.intel>
References: <20191030103827.2413-1-chris@chris-wilson.co.uk>
 <20191030103827.2413-3-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191030103827.2413-3-chris@chris-wilson.co.uk>
User-Agent: Mutt/1.12.2 (2019-09-21)
Subject: Re: [Intel-gfx] [PATCH 3/5] drm/i915/gem: Leave reloading kernel
 context on resume to GT
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

SGkgQ2hyaXMsCgpPbiBXZWQsIE9jdCAzMCwgMjAxOSBhdCAxMDozODoyNUFNICswMDAwLCBDaHJp
cyBXaWxzb24gd3JvdGU6Cj4gQXMgd2UgYWxyZWFkeSBkbyByZWxvYWQgdGhlIGtlcm5lbCBjb250
ZXh0IGluIGludGVsX2d0X3Jlc3VtZSwgcmVwZWF0aW5nCj4gdGhhdCBhY3Rpb24gaW5zaWRlIGk5
MTVfZ2VtX3Jlc3VtZSgpIGFzIHdlbGwgaXMgcmVkdW5kYW50Lgo+IAo+IFNpZ25lZC1vZmYtYnk6
IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgoKcmV2aWV3ZWQtYnk6IEFu
ZGkgU2h5dGkgPGFuZGkuc2h5dGlAaW50ZWwuY29tPgoKVGhhbmtzLApBbmRpCgo+IC0tLQo+ICBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fcG0uYyB8IDMwIC0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCAzMCBkZWxldGlvbnMoLSkKPiAKPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3BtLmMgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fcG0uYwo+IGluZGV4IGUyZWU5YzA0ZWNlOC4uNjRk
ZDA0YWUzZDU3IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dl
bV9wbS5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3BtLmMKPiBA
QCAtMTEsMzIgKzExLDYgQEAKPiAgCj4gICNpbmNsdWRlICJpOTE1X2Rydi5oIgo+ICAKPiAtc3Rh
dGljIGJvb2wgc3dpdGNoX3RvX2tlcm5lbF9jb250ZXh0X3N5bmMoc3RydWN0IGludGVsX2d0ICpn
dCkKPiAtewo+IC0JYm9vbCByZXN1bHQgPSAhaW50ZWxfZ3RfaXNfd2VkZ2VkKGd0KTsKPiAtCj4g
LQlpZiAoaW50ZWxfZ3Rfd2FpdF9mb3JfaWRsZShndCwgSTkxNV9HRU1fSURMRV9USU1FT1VUKSA9
PSAtRVRJTUUpIHsKPiAtCQkvKiBYWFggaGlkZSB3YXJuaW5nIGZyb20gZ2VtX2VpbyAqLwo+IC0J
CWlmIChpOTE1X21vZHBhcmFtcy5yZXNldCkgewo+IC0JCQlkZXZfZXJyKGd0LT5pOTE1LT5kcm0u
ZGV2LAo+IC0JCQkJIkZhaWxlZCB0byBpZGxlIGVuZ2luZXMsIGRlY2xhcmluZyB3ZWRnZWQhXG4i
KTsKPiAtCQkJR0VNX1RSQUNFX0RVTVAoKTsKPiAtCQl9Cj4gLQo+IC0JCS8qCj4gLQkJICogRm9y
Y2libHkgY2FuY2VsIG91dHN0YW5kaW5nIHdvcmsgYW5kIGxlYXZlCj4gLQkJICogdGhlIGdwdSBx
dWlldC4KPiAtCQkgKi8KPiAtCQlpbnRlbF9ndF9zZXRfd2VkZ2VkKGd0KTsKPiAtCQlyZXN1bHQg
PSBmYWxzZTsKPiAtCX0KPiAtCj4gLQlpZiAoaW50ZWxfZ3RfcG1fd2FpdF9mb3JfaWRsZShndCkp
Cj4gLQkJcmVzdWx0ID0gZmFsc2U7Cj4gLQo+IC0JcmV0dXJuIHJlc3VsdDsKPiAtfQo+IC0KPiAg
c3RhdGljIHZvaWQgdXNlcl9mb3JjZXdha2Uoc3RydWN0IGludGVsX2d0ICpndCwgYm9vbCBzdXNw
ZW5kKQo+ICB7Cj4gIAlpbnQgY291bnQgPSBhdG9taWNfcmVhZCgmZ3QtPnVzZXJfd2FrZXJlZik7
Cj4gQEAgLTE1OCwxMCArMTMyLDYgQEAgdm9pZCBpOTE1X2dlbV9yZXN1bWUoc3RydWN0IGRybV9p
OTE1X3ByaXZhdGUgKmk5MTUpCj4gIAlpZiAoaW50ZWxfZ3RfcmVzdW1lKCZpOTE1LT5ndCkpCj4g
IAkJZ290byBlcnJfd2VkZ2VkOwo+ICAKPiAtCS8qIEFsd2F5cyByZWxvYWQgYSBjb250ZXh0IGZv
ciBwb3dlcnNhdmluZy4gKi8KPiAtCWlmICghc3dpdGNoX3RvX2tlcm5lbF9jb250ZXh0X3N5bmMo
Jmk5MTUtPmd0KSkKPiAtCQlnb3RvIGVycl93ZWRnZWQ7Cj4gLQo+ICAJdXNlcl9mb3JjZXdha2Uo
Jmk5MTUtPmd0LCBmYWxzZSk7Cj4gIAo+ICBvdXRfdW5sb2NrOgo+IC0tIAo+IDIuMjQuMC5yYzEK
PiAKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IElu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKPiBJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4g
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
