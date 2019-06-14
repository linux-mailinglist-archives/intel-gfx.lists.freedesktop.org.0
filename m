Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5ECB14623B
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2019 17:11:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A52F8892B0;
	Fri, 14 Jun 2019 15:11:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7DE14892A6
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2019 15:11:52 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Jun 2019 08:11:52 -0700
X-ExtLoop1: 1
Received: from gaia.fi.intel.com ([10.237.72.169])
 by fmsmga007.fm.intel.com with ESMTP; 14 Jun 2019 08:11:51 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id A5CAD5C1ECC; Fri, 14 Jun 2019 18:11:48 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20190614071023.17929-5-chris@chris-wilson.co.uk>
References: <20190614071023.17929-1-chris@chris-wilson.co.uk>
 <20190614071023.17929-5-chris@chris-wilson.co.uk>
Date: Fri, 14 Jun 2019 18:11:48 +0300
Message-ID: <87blz08amj.fsf@gaia.fi.intel.com>
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
IHNvIGxldCdzCj4gZW5hYmxlIGl0IGZvciBkZWJ1Z2dpbmcuCj4KPiBTaWduZWQtb2ZmLWJ5OiBD
aHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KClJlcGxpZWQgYnV0IGZvcmdv
dCB0byBzdGFtcC4KUmV2aWV3ZWQtYnk6IE1pa2EgS3VvcHBhbGEgPG1pa2Eua3VvcHBhbGFAbGlu
dXguaW50ZWwuY29tPgoKPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvS2NvbmZpZy5kZWJ1
ZyB8IDEgKwo+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKykKPgo+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9LY29uZmlnLmRlYnVnIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvS2NvbmZpZy5kZWJ1Zwo+IGluZGV4IDA5YWEwZjRjOGJmMS4uOGQ5MjJiYjRkOTUzIDEwMDY0
NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L0tjb25maWcuZGVidWcKPiArKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9LY29uZmlnLmRlYnVnCj4gQEAgLTIxLDYgKzIxLDcgQEAgY29uZmln
IERSTV9JOTE1X0RFQlVHCj4gICAgICAgICAgZGVwZW5kcyBvbiBEUk1fSTkxNQo+ICAgICAgICAg
IHNlbGVjdCBERUJVR19GUwo+ICAgICAgICAgIHNlbGVjdCBQUkVFTVBUX0NPVU5UCj4gKyAgICAg
ICAgc2VsZWN0IFJFRkNPVU5UX0ZVTEwKPiAgICAgICAgICBzZWxlY3QgSTJDX0NIQVJERVYKPiAg
ICAgICAgICBzZWxlY3QgU1RBQ0tERVBPVAo+ICAgICAgICAgIHNlbGVjdCBEUk1fRFBfQVVYX0NI
QVJERVYKPiAtLSAKPiAyLjIwLjEKPgo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCj4gSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdAo+IEludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKPiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZng=
