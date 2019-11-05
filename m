Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D18BAEFC75
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Nov 2019 12:34:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 096046E9EC;
	Tue,  5 Nov 2019 11:34:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 20BE66E9E8;
 Tue,  5 Nov 2019 11:34:29 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Nov 2019 03:34:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,271,1569308400"; d="scan'208";a="227068701"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by fmsmga004.fm.intel.com with ESMTP; 05 Nov 2019 03:34:27 -0800
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 7F13A5C1E04; Tue,  5 Nov 2019 13:34:23 +0200 (EET)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20191104201710.3778-1-chris@chris-wilson.co.uk>
References: <20191104201710.3778-1-chris@chris-wilson.co.uk>
Date: Tue, 05 Nov 2019 13:34:23 +0200
Message-ID: <87imnyo8u8.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH i-g-t] i915/gem_exec_balancer: Wait for both
 engines to complete before resubmitting
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
Cc: igt-dev@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+IHdyaXRlczoKCj4gQXMgdGhl
IHNjcmF0Y2ggYnVmIGlzIHNoYXJlZCBiZXR3ZWVuIHRoZSB0d28gcmVxdWVzdHMgb24gYm90aCBl
bmdpbmVzLAo+IHdlIG5lZWQgdG8gd2FpdCBmb3IgYm90aCB0byBmaW5pc2ggdXNpbmcgdGhlIGJ1
ZmZlciBiZWZvcmUgd2UgcmVzZXQgaXQuCj4KPiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24g
PGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiBDYzogTWlrYSBLdW9wcGFsYSA8bWlrYS5rdW9w
cGFsYUBsaW51eC5pbnRlbC5jb20+Cj4gQ2M6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxp
bkBpbnRlbC5jb20+Cj4gLS0tCj4gIHRlc3RzL2k5MTUvZ2VtX2V4ZWNfYmFsYW5jZXIuYyB8IDIg
Ky0KPiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCj4KPiBk
aWZmIC0tZ2l0IGEvdGVzdHMvaTkxNS9nZW1fZXhlY19iYWxhbmNlci5jIGIvdGVzdHMvaTkxNS9n
ZW1fZXhlY19iYWxhbmNlci5jCj4gaW5kZXggZTUyZjVkZjk1Li43MGM0NTI5YjQgMTAwNjQ0Cj4g
LS0tIGEvdGVzdHMvaTkxNS9nZW1fZXhlY19iYWxhbmNlci5jCj4gKysrIGIvdGVzdHMvaTkxNS9n
ZW1fZXhlY19iYWxhbmNlci5jCj4gQEAgLTg0MCw3ICs4NDAsNyBAQCBzdGF0aWMgdm9pZCBib25k
ZWRfc2xpY2UoaW50IGk5MTUpCj4gIAkJCWdlbV9leGVjYnVmKGk5MTUsICZlYik7Cj4gIAkJCWNs
b3NlKGViLnJzdmQyKTsKPiAgCj4gLQkJCWdlbV9zeW5jKGk5MTUsIG9ialsyXS5oYW5kbGUpOwo+
ICsJCQlnZW1fc3luYyhpOTE1LCBvYmpbMF0uaGFuZGxlKTsKCk9rLCBsZXQgbWUgdHJ5IHRvIG1h
a2Ugc2Vuc2Ugb2YgaXQgYWxsLiBGaXJzdCBvZmYsIHRoZSBuZWVkIGZvcgpvYmpbSUdUX1NQSU5f
U0NSQVRDSF0uaGFuZGxlIGdyb3dzLgoKQnV0IGFzIHRoZSBzZW1hcGhvcmUgd2lsbCB3YWl0IHRo
ZSBzcGlubmVyIHRvIHN0YXJ0IGFuZCB0aGVuIGVuZCBpdC4KSXQgaXMgbm90IGVub3VnaCB0byB3
YWl0IHRoZSBzZW1hcGhvcmUgYmF0Y2ggdG8gc3luYy4gVGhhdCBpcyBjbGVhci4KCkJ1dCBvbiBz
eW5jaW5nIHRoZSBzY3JhdGNoOiB0aGUgb2JqWzFdLmhhbmRsZSBpcyBjYXVzaW5nIHdyaXRlCmhh
emFyZCB0byBvYmpbMF0gc28gaWYgd2Ugd2FpdCBvYmpbMF0sIHRoZW4gaXQgaXMgaW1wbGllZCB0
aGF0Cm9ialsxXS5oYW5kbGUgaGFzIGZpbmlzaGVkPwoKLU1pa2EKCj4gIAkJfQo+ICAKPiAgCQkq
c3RvcCA9IDE7Cj4gLS0gCj4gMi4yNC4wCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeA==
