Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F33EC1976
	for <lists+intel-gfx@lfdr.de>; Sun, 29 Sep 2019 22:26:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C46476E332;
	Sun, 29 Sep 2019 20:25:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 75E826E332
 for <intel-gfx@lists.freedesktop.org>; Sun, 29 Sep 2019 20:25:57 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Sep 2019 13:25:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,564,1559545200"; d="scan'208";a="197353370"
Received: from dhanyapr-mobl.gar.corp.intel.com (HELO intel.intel)
 ([10.252.3.91])
 by FMSMGA003.fm.intel.com with ESMTP; 29 Sep 2019 13:25:55 -0700
Date: Sun, 29 Sep 2019 23:25:54 +0300
From: Andi Shyti <andi.shyti@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20190929202554.GF2902@intel.intel>
References: <20190928100145.13165-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190928100145.13165-1-chris@chris-wilson.co.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/tgl: Magic udelay to relieve the
 random lockups with multiple engines
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

SGkgQ2hyaXMsCgo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jCj4g
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMKPiBAQCAtMTE4Niw2ICsx
MTg2LDIxIEBAIHN0YXRpYyB2b2lkIGV4ZWNsaXN0c19zdWJtaXRfcG9ydHMoc3RydWN0IGludGVs
X2VuZ2luZV9jcyAqZW5naW5lKQo+ICAJLyogd2UgbmVlZCB0byBtYW51YWxseSBsb2FkIHRoZSBz
dWJtaXQgcXVldWUgKi8KPiAgCWlmIChleGVjbGlzdHMtPmN0cmxfcmVnKQo+ICAJCXdyaXRlbChF
TF9DVFJMX0xPQUQsIGV4ZWNsaXN0cy0+Y3RybF9yZWcpOwo+ICsKPiArCS8qCj4gKwkgKiBOb3cg
dGhpcyBpcyBldmlsIG1hZ2ljLgo+ICsJICoKPiArCSAqIEFkZGluZyB0aGUgc2FtZSB1ZGVsYXko
KSB0byBwcm9jZXNzX2NzYiBiZWZvcmUgd2UgY2xlYXIKPiArCSAqIGV4ZWNsaXN0cy0+cGVuZGlu
ZyAodGhhdCBpcyBhZnRlciB3ZSByZWNlaXZlIHRoZSBIVyBhY2sgZm9yIHRoaXMKPiArCSAqIHN1
Ym1pdCBhbmQgYmVmb3JlIHdlIGNhbiBzdWJtaXQgYWdhaW4pIGRvZXMgbm90IHJlbGlldmUgdGhl
IHN5bXB0b21zCj4gKwkgKiAobWFjaGluZSBsb2NrdXApLiBTbyBpcyB0aGUgYWN0aXZlIGRpZmZl
cmVuY2UgaGVyZSB0aGUgd2FpdCB1bmRlcgo+ICsJICogdGhlIGlycS1vZmYgc3BpbmxvY2s/IFRo
YXQgZ2l2ZXMgbW9yZSBjcmVkYW5jZSB0byB0aGUgdGhlb3J5IHRoYXQKPiArCSAqIHRoZSBpc3N1
ZSBpcyBpbnRlcnJ1cHQgZGVsaXZlcnkuIEFsc28gbm90ZSB0aGF0IHdlIHN0aWxsIHJlbHkgb24K
PiArCSAqIGRpc2FibGluZyBSUFMsIGFnYWluIHRoYXQgc2VlbXMgbGlrZSBhbiBpc3N1ZSB3aXRo
IHNpbXVsdGFuZW91cwo+ICsJICogR1QgaW50ZXJydXB0cyBiZWluZyBkZWxpdmVyZWQgdG8gdGhl
IHNhbWUgQ1BVLgo+ICsJICovCj4gKwlpZiAoSVNfVElHRVJMQUtFKGVuZ2luZS0+aTkxNSkpCj4g
KwkJdWRlbGF5KDI1MCk7Cgp5b3Ugd2FudCBhIGRlbGF5IG9mIDI1MHVzLiBUd28gcXVlc3Rpb25z
OgoKMS4gd2h5IDI1MD8KCjIuIGlzIHRoZXJlIGFueSBnb29kIHJlYXNvbiBmb3IgdXNpbmcgJ3Vk
ZWxheScgZm9yIHNsZWVwaW5nIDI1MHVzCiAgICh0aGF0IGlzIHF1aXRlIGEgbG9uZyB0aW1lKSBh
bmQgbm90ICd1c2xlZXAnPwoKVGhhbmtzLApBbmRpCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeA==
