Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2533927E96
	for <lists+intel-gfx@lfdr.de>; Thu, 23 May 2019 15:46:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7264889DF9;
	Thu, 23 May 2019 13:46:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B2B8989DF9
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 May 2019 13:46:44 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 May 2019 06:46:44 -0700
X-ExtLoop1: 1
Received: from delly.ld.intel.com (HELO [10.103.238.204]) ([10.103.238.204])
 by fmsmga008.fm.intel.com with ESMTP; 23 May 2019 06:46:43 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190523114620.19335-1-lionel.g.landwerlin@intel.com>
 <20190523114620.19335-3-lionel.g.landwerlin@intel.com>
 <155861233043.28319.5452168515708280707@skylake-alporthouse-com>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <52899af3-5f7a-b93a-8610-9054765d1f57@intel.com>
Date: Thu, 23 May 2019 14:46:42 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <155861233043.28319.5452168515708280707@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915: add syncobj timeline support
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
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gMjMvMDUvMjAxOSAxMjo1MiwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+IFF1b3RpbmcgTGlvbmVs
IExhbmR3ZXJsaW4gKDIwMTktMDUtMjMgMTI6NDY6MjApCj4+IC0gICAgICAgICAgICAgICBzeW5j
b2JqID0gZHJtX3N5bmNvYmpfZmluZChmaWxlLCBmZW5jZS5oYW5kbGUpOwo+PiAtICAgICAgICAg
ICAgICAgaWYgKCFzeW5jb2JqKSB7Cj4+IC0gICAgICAgICAgICAgICAgICAgICAgIERSTV9ERUJV
RygiSW52YWxpZCBzeW5jb2JqIGhhbmRsZSBwcm92aWRlZFxuIik7Cj4+IC0gICAgICAgICAgICAg
ICAgICAgICAgIGVyciA9IC1FTk9FTlQ7Cj4+IC0gICAgICAgICAgICAgICAgICAgICAgIGdvdG8g
ZXJyOwo+PiArICAgICAgICAgICAgICAgICAgICAgICBpZiAodXNlcl9mZW5jZS5mbGFncyAmIF9f
STkxNV9FWEVDX0ZFTkNFX1VOS05PV05fRkxBR1MpIHsKPj4gKyAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICBlcnIgPSAtRUlOVkFMOwo+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgIGdvdG8gZXJyOwo+PiArICAgICAgICAgICAgICAgICAgICAgICB9Cj4+ICsKPj4gKyAgICAg
ICAgICAgICAgICAgICAgICAgaWYgKHVzZXJfZmVuY2UuZmxhZ3MgJiBJOTE1X0VYRUNfRkVOQ0Vf
V0FJVCkgewo+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGVyciA9IGRybV9zeW5j
b2JqX2ZpbmRfZmVuY2UoCj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICBmaWxlLCB1c2VyX2ZlbmNlLmhhbmRsZSwgdXNlcl9mZW5jZS52YWx1ZSwKPj4gKyAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIERSTV9TWU5DT0JKX1dBSVRfRkxBR1NfV0FJ
VF9GT1JfU1VCTUlULAo+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
JnN5bmNvYmosICZmZW5jZSk7Cj4gSXMgdGhpcyBzdGlsbCBhIHN5bmNocm9ub3VzIHdhaXQ/IFRo
YXQgd291bGQgYmUgYW4gdW5mb3J0dW5hdGUgY2hhbmdlIGluCj4gYmVoYXZpb3VyIGFuZCBhbnRp
dGhlc2lzIHRvIGhhdmluZyBhIHNjaGVkdWxlci4KPiAtQ2hyaXMKPgpOb3Qgc3VyZSB3aGF0IHlv
dSBtZWFuIGJ5IHN5bmNocm9ub3VzIHdhaXQuCgpXZSBoYXZlIHRvIGJlIGFibGUgdG8gY2FsbCB0
aGUgc3VibWl0IGJlZm9yZSBhbGwgdGhlIGZlbmNlcyB3ZSBkZXBlbmQgb24gCmhhdmUgbWF0ZXJp
YWxpemVkLgoKCi1MaW9uZWwKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeA==
