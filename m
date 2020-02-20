Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2059F165DA6
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Feb 2020 13:36:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B7896ED59;
	Thu, 20 Feb 2020 12:36:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 00DAD6E202;
 Thu, 20 Feb 2020 12:36:34 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Feb 2020 04:36:34 -0800
X-IronPort-AV: E=Sophos;i="5.70,464,1574150400"; d="scan'208";a="240006259"
Received: from jkrzyszt-desk.igk.intel.com (HELO
 jkrzyszt-desk.ger.corp.intel.com) ([172.22.244.17])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Feb 2020 04:36:32 -0800
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Date: Thu, 20 Feb 2020 13:36:20 +0100
Message-ID: <1606396.cGsibyp3kr@jkrzyszt-desk.ger.corp.intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <158143949995.3635.18328569070749519341@skylake-alporthouse-com>
References: <20200211143048.12260-1-janusz.krzysztofik@linux.intel.com>
 <158143949995.3635.18328569070749519341@skylake-alporthouse-com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [RFC PATCH i-g-t v2] tests/gem_userptr_blits:
 Enhance invalid mapping exercise
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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
Cc: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGkgQ2hyaXMsCgpPbiBUdWVzZGF5LCBGZWJydWFyeSAxMSwgMjAyMCA1OjQ0OjU5IFBNIENFVCBD
aHJpcyBXaWxzb24gd3JvdGU6Cj4gUXVvdGluZyBKYW51c3ogS3J6eXN6dG9maWsgKDIwMjAtMDIt
MTEgMTQ6MzA6NDgpCj4gPiBAQCAtMjAwOSw4ICsyMDE2LDMxIEBAIGlndF9tYWluX2FyZ3MoImM6
IiwgTlVMTCwgaGVscF9zdHIsIG9wdF9oYW5kbGVyLCAKTlVMTCkKPiA+ICAgICAgICAgICAgICAg
ICBpZ3Rfc3VidGVzdCgiaW52YWxpZC1udWxsLXBvaW50ZXIiKQo+ID4gICAgICAgICAgICAgICAg
ICAgICAgICAgdGVzdF9pbnZhbGlkX251bGxfcG9pbnRlcihmZCk7Cj4gPiAgCj4gPiAtICAgICAg
ICAgICAgICAgaWd0X3N1YnRlc3QoImludmFsaWQtZ3R0LW1hcHBpbmciKQo+ID4gLSAgICAgICAg
ICAgICAgICAgICAgICAgdGVzdF9pbnZhbGlkX2d0dF9tYXBwaW5nKGZkKTsKPiA+ICsgICAgICAg
ICAgICAgICBpZ3RfZGVzY3JpYmUoIlZlcmlmeSB1c2VycHRyIG9uIHRvcCBvZiBHVFQgbWFwcGlu
ZyB0byBHRU0gCm9iamVjdCB3aWxsIGZhaWwiKTsKPiA+ICsgICAgICAgICAgICAgICBpZ3Rfc3Vi
dGVzdCgiaW52YWxpZC1ndHQtbWFwcGluZyIpIHsKPiA+ICsgICAgICAgICAgICAgICAgICAgICAg
IGdlbV9yZXF1aXJlX21hcHBhYmxlX2dndHQoZmQpOwo+ID4gKyAgICAgICAgICAgICAgICAgICAg
ICAgdGVzdF9pbnZhbGlkX21hcHBpbmcoZmQsIEk5MTVfTU1BUF9PRkZTRVRfR1RUKTsKPiA+ICsg
ICAgICAgICAgICAgICB9Cj4gCj4gI2luY2x1ZGUgImk5MTUvZ2VtX21tYW4uaCIKPiBpZ3Rfc3Vi
dGVzdF93aXRoX2R5bmFtaWMoImludmFsaWQtbW1hcC1vZmZzZXQiKSB7Cj4gCWZvcl9lYWNoX21t
YXBfb2Zmc2V0X3R5cGUodCkgewo+IAkJaWd0X2R5bmFtaWNfZigiJXMiLCB0LT5uYW1lKQo+IAkJ
CXRlc3RfaW52YWxpZF9tYXBwaW5nKGZkLCB0KTsKPiAKPiBJbiB0ZXN0X2ludmFsaWRfbWFwcGlu
ZywgaW5zdGVhZCBvZiBkb19pb2N0bChNTUFQX09GRlNFVCkgdXNlCj4gaWd0X3JlcXVpcmUoaWd0
X2lvY3RsKE1NQVBfT0ZGU0VULCAmYXJnKSA9PSAwKTsKCkluc3BpcmVkIGJ5IE1pY2hhxYIsIEkn
dmUgcmV2aXNpdGVkIHRoaXMgY29uc3RydWN0IGFuZCBub3cgSSB0aGluayBhIGNvbmZ1c2luZyAK
c2lkZSBlZmZlY3Qgb2YgaXQgbWF5IGJlIGV4cGVjdGVkLiAgV2hlbiBydW4gb24gYSBkcml2ZXIg
d2l0aCBubyBtbWFwLW9mZnNldCAKc3VwcG9ydCwgaWd0X2lvY3RsKE1NQVBfT0ZGU0VULCAmYXJn
KSB3b3VsZCBzdWNjZWVkIGZvciBlYWNoIHQtPnR5cGUgYW5kIHRoZSAKdGVzdCB3b3VsZCBjbGFp
bSBzdWNjZXNzIGZvciBldmVyeSBtYXBwaW5nIHR5cGUuCgpTb21ldGhpbmcgbGlrZSB0aGlzIHNo
b3VsZCBoZWxwOgoKCWlmICh0LT50eXBlICE9IEk5MTVfTU1BUF9PRkZTRVRfR1RUKQoJCWlndF9y
ZXF1aXJlKGdlbV9oYXNfbW1hcF9vZmZzZXQoZmQpOwoKSWYgbXkgZmluZGluZyBvY2N1cnMgY29y
cmVjdCwgSSdsbCB1cGRhdGUgbXkgcGF0Y2hlcyBhbmQgcmVzdWJtaXQuCgpUaGFua3MsCkphbnVz
egoKCj4gCj4gKE9yIGlndF9yZXF1aXJlX2YgaWYgeW91IGxpa2UgdG8ga2VlcCB0aGUgc3BpZWwu
KQo+IAo+IAkJfQo+IAl9Cj4gfQo+IAoKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4Cg==
