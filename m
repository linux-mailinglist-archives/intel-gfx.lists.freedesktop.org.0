Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F3842560C
	for <lists+intel-gfx@lfdr.de>; Tue, 21 May 2019 18:50:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E36FD89180;
	Tue, 21 May 2019 16:50:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5073089180
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 May 2019 16:50:32 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 May 2019 09:50:31 -0700
X-ExtLoop1: 1
Received: from delly.ld.intel.com (HELO [10.103.239.89]) ([10.103.239.89])
 by orsmga006.jf.intel.com with ESMTP; 21 May 2019 09:50:30 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190521140855.3957-1-lionel.g.landwerlin@intel.com>
 <20190521140855.3957-3-lionel.g.landwerlin@intel.com>
 <155845658360.23981.11195981062397484814@skylake-alporthouse-com>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <c90e9682-0ee6-5f4a-d4fd-177ee0789aea@intel.com>
Date: Tue, 21 May 2019 17:50:30 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <155845658360.23981.11195981062397484814@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 2/5] drm/i915/perf: allow holding preemption
 on filtered ctx
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

T24gMjEvMDUvMjAxOSAxNzozNiwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+IFF1b3RpbmcgTGlvbmVs
IExhbmR3ZXJsaW4gKDIwMTktMDUtMjEgMTU6MDg6NTIpCj4+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2lu
dGVsX2xyYy5jCj4+IGluZGV4IGYyNjNhODM3NDI3My4uMmFkOTU5NzdmN2E4IDEwMDY0NAo+PiAt
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYwo+PiArKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYwo+PiBAQCAtMjA4NSw3ICsyMDg1LDcgQEAgc3Rh
dGljIGludCBnZW45X2VtaXRfYmJfc3RhcnQoc3RydWN0IGk5MTVfcmVxdWVzdCAqcnEsCj4+ICAg
ICAgICAgIGlmIChJU19FUlIoY3MpKQo+PiAgICAgICAgICAgICAgICAgIHJldHVybiBQVFJfRVJS
KGNzKTsKPj4gICAKPj4gLSAgICAgICAqY3MrKyA9IE1JX0FSQl9PTl9PRkYgfCBNSV9BUkJfRU5B
QkxFOwo+PiArICAgICAgICpjcysrID0gTUlfQVJCX09OX09GRiB8IHJxLT5od19jb250ZXh0LT5h
cmJfZW5hYmxlOwo+IE15IHByZWRpY3Rpb24gaXMgdGhhdCB0aGlzIHdpbGwgcmVzdWx0IGluIHRo
aXMgY29udGV4dCBiZWluZyByZXNldCBkdWUgCj4gdG8gcHJlZW1wdGlvbiB0aW1lb3V0cyBhbmQg
dGhlIGNvbnRleHQgdW5kZXIgcHJvZmlsZSBiZWluZyBiYW5uZWQuIAo+IE5vdGUgdGhhdCBwcmVl
bXB0aW9uIHRpbWVvdXRzIHdpbGwgYmUgdGhlIHByaW1hcnkgbWVhbnMgZm9yIGhhbmcgCj4gZGV0
ZWN0aW9uIGZvciBlbmRsZXNzIGJhdGNoZXMuIC1DaHJpcwoKVGhhbmtzLAoKT25lIHF1ZXN0aW9u
IDogaG93IGlzIHRoYXQgZGVhbHQgd2l0aCB3aXRoIGNvbXB1dGUgd29ya2xvYWRzIGF0IHRoZSBt
b21lbnQ/CkkgdGhvdWdoIHRob3NlIHdoZXJlIHN0aWxsIG5vdCBmdWxseSBwcmVlbXB0YWJsZS4K
CkkgbmVlZCB0byByZXdvcmsgdGhpcyB3aXRoIGEgbW9yZSAic29mdHdhcmUiIGFwcHJvYWNoIGhv
bGRpbmcgb24gcHJlZW1wdGlvbi4KQWRkaW5nIGEgY29uZGl0aW9uIGluIGludGVsX2xyYy5jIG5l
ZWRfcHJlZW1wdCgpIGxvb2tzIGxpa2UgdGhlIHJpZ2h0IApkaXJlY3Rpb24/CgpDaGVlcnMsCgot
TGlvbmVsCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
