Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A4E25840C
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Jun 2019 16:01:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB01B6E41D;
	Thu, 27 Jun 2019 14:01:40 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BD05D6E415;
 Thu, 27 Jun 2019 14:01:39 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Jun 2019 07:01:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,423,1557212400"; d="scan'208";a="156247425"
Received: from czwolak-mobl2.ger.corp.intel.com (HELO [10.252.4.8])
 ([10.252.4.8])
 by orsmga008.jf.intel.com with ESMTP; 27 Jun 2019 07:01:36 -0700
To: Jani Nikula <jani.nikula@linux.intel.com>, igt-dev@lists.freedesktop.org
References: <20190627125521.10782-1-tvrtko.ursulin@linux.intel.com>
 <87v9wrp1rb.fsf@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <6022f7b9-1c5c-f5cc-63ae-c7b144e52638@linux.intel.com>
Date: Thu, 27 Jun 2019 15:01:35 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <87v9wrp1rb.fsf@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t] lib: Silence Valgrind
 warning in synce_fence_status
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
Cc: Intel-gfx@lists.freedesktop.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDI3LzA2LzIwMTkgMTQ6NTksIEphbmkgTmlrdWxhIHdyb3RlOgo+IE9uIFRodSwgMjcgSnVu
IDIwMTksIFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBsaW51eC5pbnRlbC5jb20+IHdy
b3RlOgo+PiBGcm9tOiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+
Pgo+PiBMZXQgVmFsZ3JpbmQga25vdyB0aGUgaW9jdGwgaW5pdGlhbGl6ZXMgdGhlIHBhc3NlZCBp
biBpbmZvIGJsb2NrIHRvIHJlZHVjZQo+PiB0aGUgbm9pc2Ugd2hpbGUgZGVidWdnaW5nLgo+Pgo+
PiBTaWduZWQtb2ZmLWJ5OiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29t
Pgo+PiAtLS0KPj4gICBsaWIvc3dfc3luYy5jIHwgMTEgKysrKysrKysrKysKPj4gICAxIGZpbGUg
Y2hhbmdlZCwgMTEgaW5zZXJ0aW9ucygrKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvbGliL3N3X3N5bmMu
YyBiL2xpYi9zd19zeW5jLmMKPj4gaW5kZXggZjIwODYwMzMxMmMyLi43M2YzZjcwMTVkOWQgMTAw
NjQ0Cj4+IC0tLSBhL2xpYi9zd19zeW5jLmMKPj4gKysrIGIvbGliL3N3X3N5bmMuYwo+PiBAQCAt
NDEsNiArNDEsMTUgQEAKPj4gICAjaW5jbHVkZSAiZHJtdGVzdC5oIgo+PiAgICNpbmNsdWRlICJp
b2N0bF93cmFwcGVycy5oIgo+PiAgIAo+PiArI2lmZGVmIEhBVkVfVkFMR1JJTkQKPj4gKyNpbmNs
dWRlIDx2YWxncmluZC92YWxncmluZC5oPgo+PiArI2luY2x1ZGUgPHZhbGdyaW5kL21lbWNoZWNr
Lmg+Cj4+ICsKPj4gKyNkZWZpbmUgVkcoeCkgeAo+PiArI2Vsc2UKPj4gKyNkZWZpbmUgVkcoeCkg
ZG8ge30gd2hpbGUgKDApCj4gCj4gT09DLCB3aHkgbm90IGp1c3QKPiAKPiAjZGVmaW5lIFZBTEdS
SU5EX01BS0VfTUVNX0RFRklORUQoLi4uKQoKQ29weSBhbmQgcGFzdGUgaXNuJ3QgYW4gZXN0YWJs
aXNoZWQgcHJhY3RpY2U/IDopKQoKUmVnYXJkcywKClR2cnRrbwpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
