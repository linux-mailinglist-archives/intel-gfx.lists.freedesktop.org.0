Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6670346238
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2019 17:11:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CCB81892AC;
	Fri, 14 Jun 2019 15:11:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2DA3C892AC
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2019 15:11:17 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Jun 2019 08:11:16 -0700
X-ExtLoop1: 1
Received: from gaia.fi.intel.com ([10.237.72.169])
 by fmsmga004.fm.intel.com with ESMTP; 14 Jun 2019 08:11:15 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 89F695C1ECC; Fri, 14 Jun 2019 18:11:12 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20190614071023.17929-5-chris@chris-wilson.co.uk>
References: <20190614071023.17929-1-chris@chris-wilson.co.uk>
 <20190614071023.17929-5-chris@chris-wilson.co.uk>
Date: Fri, 14 Jun 2019 18:11:12 +0300
Message-ID: <87ef3w8anj.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 04/39] drm/i915: Enable refcount debugging
 for default debug levels
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

Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+IHdyaXRlczoKCj4gcmVmY291
bnRfdCBpcyBvdXIgZmlyc3QgbGluZSBvZiBkZWZlbmNlIGFnYWluc3QgdXNlLWFmdGVyLWZyZWUs
IHNvIGxldCdzCj4gZW5hYmxlIGl0IGZvciBkZWJ1Z2dpbmcuCgpTdXJlLiBPbmx5IHdha2VyZWZz
IGN1cnJlbnRseSBzZWVtcyB0byB1c2UgdGhpcyB0aG8uCgpTaG91bGQgd2UgY29uc2lkZXIgY2hh
bmdpbmcgc29tZSBhdG9taWNfdCdzIHRvIHJlZmNvdW50cz8KCkFuZCBhZGQgb3VyIG93biBhc3Nl
cnRpb25zPyBXZSBtaWdodCBmaW5kIHBsYWNlcyB3aGVyZSB3ZQpjb3VsZCB3YXJuIGJlZm9yZSBo
aXR0aW5nIFVJTlRfTUFYIG9uIHJlZmNvdW50LgoKLU1pa2EKCj4KPiBTaWduZWQtb2ZmLWJ5OiBD
aHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiAtLS0KPiAgZHJpdmVycy9n
cHUvZHJtL2k5MTUvS2NvbmZpZy5kZWJ1ZyB8IDEgKwo+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNl
cnRpb24oKykKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9LY29uZmlnLmRl
YnVnIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvS2NvbmZpZy5kZWJ1Zwo+IGluZGV4IDA5YWEwZjRj
OGJmMS4uOGQ5MjJiYjRkOTUzIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L0tj
b25maWcuZGVidWcKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9LY29uZmlnLmRlYnVnCj4g
QEAgLTIxLDYgKzIxLDcgQEAgY29uZmlnIERSTV9JOTE1X0RFQlVHCj4gICAgICAgICAgZGVwZW5k
cyBvbiBEUk1fSTkxNQo+ICAgICAgICAgIHNlbGVjdCBERUJVR19GUwo+ICAgICAgICAgIHNlbGVj
dCBQUkVFTVBUX0NPVU5UCj4gKyAgICAgICAgc2VsZWN0IFJFRkNPVU5UX0ZVTEwKPiAgICAgICAg
ICBzZWxlY3QgSTJDX0NIQVJERVYKPiAgICAgICAgICBzZWxlY3QgU1RBQ0tERVBPVAo+ICAgICAg
ICAgIHNlbGVjdCBEUk1fRFBfQVVYX0NIQVJERVYKPiAtLSAKPiAyLjIwLjEKPgo+IF9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdAo+IEludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiBodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeApfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
