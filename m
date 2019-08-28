Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ACBE1A022E
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Aug 2019 14:50:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A492589A9F;
	Wed, 28 Aug 2019 12:50:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7A53089A9F
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Aug 2019 12:49:59 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Aug 2019 05:49:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,441,1559545200"; d="scan'208";a="264636383"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga001.jf.intel.com with ESMTP; 28 Aug 2019 05:49:57 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id C1F535C1E58; Wed, 28 Aug 2019 15:49:55 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20190827120615.31390-1-chris@chris-wilson.co.uk>
References: <20190827120615.31390-1-chris@chris-wilson.co.uk>
Date: Wed, 28 Aug 2019 15:49:55 +0300
Message-ID: <877e6xxxn0.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/execlists: Flush the post-sync
 breadcrumb write harder
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

Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+IHdyaXRlczoKCj4gUXVpdGUg
cmFyZWx5IHdlIHNlZSB0aGF0IHRoZSBDUyBjb21wbGV0aW9uIGV2ZW50IGZpcmVzIGJlZm9yZSB0
aGUKPiBicmVhZGNydW1iIGlzIGNvaGVyZW50LCB3aGljaCBwcmVzdW1hYmx5IGlzIGEgcmVzdWx0
IG9mIHRoZSBDU19TVEFMTCBub3QKPiB3YWl0aW5nIGZvciB0aGUgcG9zdC1zeW5jIG9wZXJhdGlv
bi4gVHJ5IGZvbGxvd2luZyBpbiBhIERDX0ZMVVNIIGludG8KPiB0aGUgZm9sbG93aW5nIHBpcGVj
b250cm9sIHRvIHNlZSBpZiB0aGF0IG1ha2VzIGFueSBkaWZmZXJlbmNlLgo+Cj4gU2lnbmVkLW9m
Zi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gQ2M6IE1pa2Eg
S3VvcHBhbGEgPG1pa2Eua3VvcHBhbGFAbGludXguaW50ZWwuY29tPgoKQWNrZWQtYnk6IE1pa2Eg
S3VvcHBhbGEgPG1pa2Eua3VvcHBhbGFAbGludXguaW50ZWwuY29tPgoKPiAtLS0KPiAgZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMgfCAxICsKPiAgMSBmaWxlIGNoYW5nZWQsIDEg
aW5zZXJ0aW9uKCspCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50
ZWxfbHJjLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYwo+IGluZGV4IDgw
YTNmMWRiYjQ1Ni4uNDgwNDZkNDQ1NzMzIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L2ludGVsX2xyYy5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxf
bHJjLmMKPiBAQCAtMjk3MSw2ICsyOTcxLDcgQEAgc3RhdGljIHUzMiAqZ2VuOF9lbWl0X2Zpbmlf
YnJlYWRjcnVtYl9yY3Moc3RydWN0IGk5MTVfcmVxdWVzdCAqcmVxdWVzdCwgdTMyICpjcykKPiAg
CS8qIFhYWCBmbHVzaCt3cml0ZStDU19TVEFMTCBhbGwgaW4gb25lIHVwc2V0cyBnZW1fY29uY3Vy
cmVudF9ibHQ6a2JsICovCj4gIAljcyA9IGdlbjhfZW1pdF9waXBlX2NvbnRyb2woY3MsCj4gIAkJ
CQkgICAgUElQRV9DT05UUk9MX0ZMVVNIX0VOQUJMRSB8Cj4gKwkJCQkgICAgUElQRV9DT05UUk9M
X0RDX0ZMVVNIX0VOQUJMRSB8Cj4gIAkJCQkgICAgUElQRV9DT05UUk9MX0NTX1NUQUxMLAo+ICAJ
CQkJICAgIDApOwo+ICAKPiAtLSAKPiAyLjIzLjAKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4
