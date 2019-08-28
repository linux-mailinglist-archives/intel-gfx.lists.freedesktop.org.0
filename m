Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 624EAA0800
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Aug 2019 19:02:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B5DDE89C96;
	Wed, 28 Aug 2019 17:02:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E129189C96
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Aug 2019 17:02:43 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Aug 2019 10:02:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,441,1559545200"; d="scan'208";a="180618859"
Received: from sharmash-mobl3.gar.corp.intel.com (HELO [10.252.72.100])
 ([10.252.72.100])
 by fmsmga008.fm.intel.com with ESMTP; 28 Aug 2019 10:02:32 -0700
To: Animesh Manna <animesh.manna@intel.com>, intel-gfx@lists.freedesktop.org
References: <20190827191026.26175-1-animesh.manna@intel.com>
 <20190827191026.26175-6-animesh.manna@intel.com>
From: "Sharma, Shashank" <shashank.sharma@intel.com>
Message-ID: <55e0f2a6-08f3-2a63-ff83-c2129fd3e80f@intel.com>
Date: Wed, 28 Aug 2019 22:32:31 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190827191026.26175-6-animesh.manna@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v3 05/11] drm/i915/dsb: Register definition
 of DSB registers.
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
Cc: Jani Nikula <jani.nikula@intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDgvMjgvMjAxOSAxMjo0MCBBTSwgQW5pbWVzaCBNYW5uYSB3cm90ZToKPiBBZGRlZCBrZXkg
cmVnaXN0ZXIgZGVmaW5pdGlvbnMgb2YgRFNCLgo+Cj4gZHNiLWN0cmwgcmVnaXN0ZXIgaXMgcmVx
dWlyZWQgdG8gZW5hYmxlIGRzYi1lbmdpbmUuCj4KPiBoZWFkLXB0ciByZWdpc3RlciBob2xkIHRo
ZSBoZWFkIG9mIGJ1ZmZlciBhZGRyZXNzIGZyb20gd2hlcmUgdGhlCj4gZXhlY3V0aW9uIHdpbGwg
c3RhcnQuCj4KPiBQcm9ncmFtbWluZyB0YWlsLXB0ciByZWdpc3RlciBpcyBhIHRyaWdnZXIgcG9p
bnQgdG8gc3RhcnQgZXhlY3V0aW9uLgo+Cj4gQ2M6IFVtYSBTaGFua2FyIDx1bWEuc2hhbmthckBp
bnRlbC5jb20+Cj4gQ2M6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+Cj4gQ2M6
IFJvZHJpZ28gVml2aSA8cm9kcmlnby52aXZpQGludGVsLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBB
bmltZXNoIE1hbm5hIDxhbmltZXNoLm1hbm5hQGludGVsLmNvbT4KPiAtLS0KPiAgIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfcmVnLmggfCAxNSArKysrKysrKysrKysrKysKPiAgIDEgZmlsZSBj
aGFuZ2VkLCAxNSBpbnNlcnRpb25zKCspCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9yZWcuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKPiBpbmRl
eCAwMmUxZWYxMGM0N2UuLjcxYzZjMjM4MDQ0MyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X3JlZy5oCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcu
aAo+IEBAIC0xMTU2NCw0ICsxMTU2NCwxOSBAQCBlbnVtIHNrbF9wb3dlcl9nYXRlIHsKPiAgICNk
ZWZpbmUgUE9SVF9UWF9ERkxFWERQQ1NTUyhmaWEpCQlfTU1JT19GSUEoKGZpYSksIDB4MDA4OTQp
Cj4gICAjZGVmaW5lICAgRFBfUEhZX01PREVfU1RBVFVTX05PVF9TQUZFKHRjX3BvcnQpCQkoMSA8
PCAodGNfcG9ydCkpCj4gICAKPiArLyogVGhpcyByZWdpc3RlciBjb250cm9scyB0aGUgRGlzcGxh
eSBTdGF0ZSBCdWZmZXIgKERTQikgZW5naW5lcy4gKi8KPiArI2RlZmluZSBfRFNCU0xfSU5TVEFO
Q0VfQkFTRQkJMHg3MEIwMAo+ICsjZGVmaW5lIERTQlNMX0lOU1RBTkNFKHBpcGUsIGlkKQkoX0RT
QlNMX0lOU1RBTkNFX0JBU0UgKyBcCj4gKwkJCQkJIChwaXBlKSAqIDB4MTAwMCArIChpZCkgKiAx
MDApCj4gKyNkZWZpbmUgRFNCX0hFQUQocGlwZSwgaWQpCQlfTU1JTyhEU0JTTF9JTlNUQU5DRShw
aXBlLCBpZCkgKyAweDApCj4gKyNkZWZpbmUgRFNCX1RBSUwocGlwZSwgaWQpCQlfTU1JTyhEU0JT
TF9JTlNUQU5DRShwaXBlLCBpZCkgKyAweDQpCj4gKyNkZWZpbmUgRFNCX0NUUkwocGlwZSwgaWQp
CQlfTU1JTyhEU0JTTF9JTlNUQU5DRShwaXBlLCBpZCkgKyAweDgpCj4gKyNkZWZpbmUgICBEU0Jf
RU5BQkxFCQkJKDEgPDwgMzEpCj4gKyNkZWZpbmUgICBEU0JfQlVGRkVSX1JFSVRFUkFURQkJKDEg
PDwgMjkpCj4gKyNkZWZpbmUgICBEU0JfV0FJVF9GT1JfVkJMQU5LCQkoMSA8PCAyOCkKPiArI2Rl
ZmluZSAgIERTQl9XQUlUX0ZPUl9MSU5FX0lOX1JBTkdFCSgxIDw8IDI3KQo+ICsjZGVmaW5lICAg
RFNCX0hBTFQJCQkoMSA8PCAxNikKPiArI2RlZmluZSAgIERTQl9OT05fUE9TVEVEX0VOQUJMRQkJ
KDEgPDwgOCkKPiArI2RlZmluZSAgIERTQl9TVEFUVVMJCQkoMSA8PCAwKQo+ICsKCkFnYWluLCB0
aGlzIHBhdGNoIGlzIGp1c3QgYWRkaW5nIHRoZSBoZWFkZXIgZGVmaW5pdGlvbnMsIHBsZWFzZSBt
ZXJnZSAKdGhpcyBwYXRjaCBpbiB0aGUgcGF0Y2ggd2hlcmUgdGhlc2UgZGVmaW5pdGlvbnMgYXJl
IGJlaW5nIHVzZWQuCgotIFNoYXNoYW5rCgo+ICAgI2VuZGlmIC8qIF9JOTE1X1JFR19IXyAqLwpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
