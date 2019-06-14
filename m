Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BC96B463DA
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2019 18:19:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EA2B8899BB;
	Fri, 14 Jun 2019 16:19:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D0E73899BB
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2019 16:19:03 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Jun 2019 09:19:03 -0700
X-ExtLoop1: 1
Received: from gaia.fi.intel.com ([10.237.72.169])
 by FMSMGA003.fm.intel.com with ESMTP; 14 Jun 2019 09:19:02 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 5F5885C1ECC; Fri, 14 Jun 2019 19:18:59 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <156052789225.7796.5111655254369629818@skylake-alporthouse-com>
References: <20190612093111.11684-1-chris@chris-wilson.co.uk>
 <20190612093111.11684-4-chris@chris-wilson.co.uk>
 <878su488ty.fsf@gaia.fi.intel.com>
 <156052789225.7796.5111655254369629818@skylake-alporthouse-com>
Date: Fri, 14 Jun 2019 19:18:59 +0300
Message-ID: <875zp887ik.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 3/8] drm/i915: Replace engine->timeline with
 a plain list
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

Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+IHdyaXRlczoKCj4gUXVvdGlu
ZyBNaWthIEt1b3BwYWxhICgyMDE5LTA2LTE0IDE2OjUwOjMzKQo+PiBDaHJpcyBXaWxzb24gPGNo
cmlzQGNocmlzLXdpbHNvbi5jby51az4gd3JpdGVzOgo+PiA+IEBAIC0yNTQsNiArMjU0LDcgQEAg
c3RhdGljIGJvb2wgaTkxNV9yZXF1ZXN0X3JldGlyZShzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpycSkK
Pj4gPiAgICAgICBpbnRlbF9jb250ZXh0X3VucGluKHJxLT5od19jb250ZXh0KTsKPj4gPiAgCj4+
ID4gICAgICAgaTkxNV9yZXF1ZXN0X3JlbW92ZV9mcm9tX2NsaWVudChycSk7Cj4+ID4gKyAgICAg
bGlzdF9kZWwoJnJxLT5saW5rKTsKPj4gCj4+IFRoaXMgaXMgbm93IHVuZ3VhcmRlZC4gYW5kIHRo
ZSB0aW1lbGluZSBtdXRleCBpcyBub3QgaGVyZQo+PiB0byBoZWxwIGVpdGhlci4KPgo+IEl0IGlz
IGd1YXJkZWQgYnkgdGhlIGNhbGxlciB0byBpOTE1X3JlcXVlc3RfcmV0aXJlLCB3ZSBjYW4gb25s
eSByZXRpcmUKPiB1bmRlciB0aGUgc2FtZSBsb2NrIGFzIHdlIGNvbnN0cnVjdCByZXF1ZXN0cy4g
Q3VycmVudGx5IHRoYXQgaXMKPiBzdHJ1Y3RfbXV0ZXggd2l0aCB0aGUgYmlnIHN3aXRjaGVyb28g
Y29taW5nIGF0IHRoZSBlbmQuCgpZdXAgZm91bmQgaXQuClJldmlld2VkLWJ5OiBNaWthIEt1b3Bw
YWxhIDxtaWthLmt1b3BwYWxhQGxpbnV4LmludGVsLmNvbT4KCj4gLUNocmlzCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
