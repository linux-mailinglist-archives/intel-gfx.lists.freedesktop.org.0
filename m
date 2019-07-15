Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 29C2F689F1
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Jul 2019 14:49:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 84C04895C3;
	Mon, 15 Jul 2019 12:49:45 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2FF7D895C3
 for <Intel-GFX@lists.freedesktop.org>; Mon, 15 Jul 2019 12:49:44 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Jul 2019 05:49:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,493,1557212400"; d="scan'208";a="169599170"
Received: from jfstewar-mobl1.amr.corp.intel.com (HELO [10.249.35.110])
 ([10.249.35.110])
 by orsmga003.jf.intel.com with ESMTP; 15 Jul 2019 05:49:42 -0700
To: John Harrison <John.C.Harrison@Intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 Intel-GFX@Lists.FreeDesktop.Org
References: <20190712070745.35239-1-John.C.Harrison@Intel.com>
 <20190712070745.35239-3-John.C.Harrison@Intel.com>
 <3d25fc6c-9ce4-61f3-dae6-ed30e61fd80c@linux.intel.com>
 <66c5c79b-692a-23e0-213b-e1eeb02e81c2@Intel.com>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <be181d00-8bd7-52c4-1644-3e82b17dd1e4@intel.com>
Date: Mon, 15 Jul 2019 15:49:40 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <66c5c79b-692a-23e0-213b-e1eeb02e81c2@Intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v2 2/3] drm/i915: Implement read-only
 support in whitelist selftest
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

T24gMTIvMDcvMjAxOSAxOToyMywgSm9obiBIYXJyaXNvbiB3cm90ZToKPiBPbiA3LzEyLzIwMTkg
MDE6NTMsIFR2cnRrbyBVcnN1bGluIHdyb3RlOgo+PiBPbiAxMi8wNy8yMDE5IDA4OjA3LCBKb2hu
LkMuSGFycmlzb25ASW50ZWwuY29tIHdyb3RlOgo+Pj4gRnJvbTogSm9obiBIYXJyaXNvbiA8Sm9o
bi5DLkhhcnJpc29uQEludGVsLmNvbT4KPj4+Cj4+PiBOZXdlciBoYXJkd2FyZSBzdXBwb3J0cyBl
eHRyYSBmZWF0dXJlIGluIHRoZSB3aGl0ZWxpc3QgcmVnaXN0ZXJzLiBUaGlzCj4+PiBwYXRjaCB1
cGRhdGVzIHRoZSBzZWxmdGVzdCB0byB0ZXN0IHRoYXQgZW50cmllcyBtYXJrZWQgYXMgcmVhZCBv
bmx5Cj4+PiBhcmUgYWN0dWFsbHkgcmVhZCBvbmx5Lgo+Pj4KPj4+IHYyOiBSZW1vdmVkIGFsbCB1
c2Ugb2YgJ3JzdmQnIGZvciByZWFkLW9ubHkgcmVnaXN0ZXJzIHRvIGF2b2lkCj4+PiBhbWJpZ3Vv
dXMgY29kZSBvciBlcnJvciBtZXNzYWdlcy4KPj4gV29yaydzIG5ldmVyIGRvbmUuIDopIFlvdSBj
YW4gZm9sbG93IHVwIHdpdGggYSBwYXRjaCB3aGljaCBhZGRzIAo+PiBlbmdpbmUgbG9vcGluZyB0
byBsaXZlX3Jlc2V0X3doaXRlbGlzdC4KPgo+IFRoZXJlIGlzIF9hbHdheXNfIHNvbWV0aGluZyBt
b3JlIHRvIGJlIGRvbmUhCj4KPiBJIG5vdGljZWQgdGhhdCBMaW9uZWwgYWRkZWQgdXNhZ2Ugb2Yg
dGhlIFJBTkdFIGZpZWxkIHRvby4gVGhlcmUgbmVlZHMgCj4gdG8gYmUgbG9vcGluZyBzdXBwb3J0
IGFkZGVkIGZvciB0aGF0LiBBdCB0aGUgbW9tZW50LCB0aGUgc2VsZi10ZXN0IAo+IHNpbXBseSBt
YXNrcyBvZmYgdGhlIHJhbmdlIGJpdHMgYW5kIGlnbm9yZXMgdGhlbS4gSXQgcmVhbGx5IHNob3Vs
ZCBiZSAKPiB1cGRhdGVkIHRvIHRlc3QgdGhlIGVudGlyZSByYW5nZS4KPgo+IExpb25lbCwgYW55
IGNoYW5jZSB5b3Ugd291bGQgaGF2ZSB0aW1lIHRvIHBpY2sgdXAgdGhlc2UgZXh0cmEgY2hhbmdl
cz8KCgpVbmxpa2VseSBpbiB0aGUgbmV4dCB3ZWVrIG9yIDIgOigKCgotTGlvbmVsCgoKPgo+IFRo
YW5rcywKPiBKb2huLgo+Cj4+Cj4+IEkgd2FzIGxvb2tpbmcgYXQgeW91ciB0ZXN0IHJlc3VsdHMg
YW5kIHdvbmRlcmluZyB3aHkgbm8gbmV3IHdoaXRlbGlzdHM6Cj4+Cj4+IDw2PiBbNDg2LjY2NTcw
MF0gaTkxNTogUnVubmluZyAKPj4gaW50ZWxfd29ya2Fyb3VuZHNfbGl2ZV9zZWxmdGVzdHMvbGl2
ZV9yZXNldF93aGl0ZWxpc3QKPj4gPDY+IFs0ODYuNjY1NzA2XSBDaGVja2luZyA0IHdoaXRlbGlz
dGVkIHJlZ2lzdGVycyBvbiByY3MwIAo+PiAoUklOR19OT05QUklWKSBbZW5naW5lXQo+PiA8Nz4g
WzQ4Ni42NjYyODFdIFtkcm06aW50ZWxfcG93ZXJfd2VsbF9lbmFibGUgW2k5MTVdXSBlbmFibGlu
ZyBhbHdheXMtb24KPj4gPDU+IFs0ODYuNjY4Nzc3XSBpOTE1IDAwMDA6MDA6MDIuMDogUmVzZXR0
aW5nIHJjczAgZm9yIGxpdmVfd29ya2Fyb3VuZHMKPj4gPDY+IFs0ODYuNjY5OTAwXSBDaGVja2lu
ZyA0IHdoaXRlbGlzdGVkIHJlZ2lzdGVycyBvbiByY3MwIAo+PiAoUklOR19OT05QUklWKSBbZGV2
aWNlXQo+PiA8NT4gWzQ4Ni42NzEwNDJdIGk5MTUgMDAwMDowMDowMi4wOiBSZXNldHRpbmcgY2hp
cCBmb3IgbGl2ZV93b3JrYXJvdW5kcwo+Pgo+PiBSZWdhcmRzLAo+Pgo+PiBUdnJ0a28KPj4KPgo+
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
