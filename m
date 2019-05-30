Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 62AEE30218
	for <lists+intel-gfx@lfdr.de>; Thu, 30 May 2019 20:41:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BD41589DB8;
	Thu, 30 May 2019 18:41:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 41D5689DB8
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 May 2019 18:41:33 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 May 2019 11:41:33 -0700
X-ExtLoop1: 1
Received: from fskirtun-mobl.ger.corp.intel.com (HELO [10.249.139.246])
 ([10.249.139.246])
 by FMSMGA003.fm.intel.com with ESMTP; 30 May 2019 11:41:31 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190521140855.3957-1-lionel.g.landwerlin@intel.com>
 <20190521140855.3957-5-lionel.g.landwerlin@intel.com>
 <155904075684.2403.5714344721936400318@skylake-alporthouse-com>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <5bcef263-a773-d070-442a-ef4c586c9156@intel.com>
Date: Thu, 30 May 2019 19:41:26 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <155904075684.2403.5714344721936400318@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 4/5] drm/i915: add a new perf configuration
 execbuf parameter
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

T24gMjgvMDUvMjAxOSAxMTo1MiwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+IFF1b3RpbmcgTGlvbmVs
IExhbmR3ZXJsaW4gKDIwMTktMDUtMjEgMTU6MDg6NTQpCj4+IEBAIC0yMDQ4LDYgKzIwODEsNDIg
QEAgc3RhdGljIGludCBlYl9zdWJtaXQoc3RydWN0IGk5MTVfZXhlY2J1ZmZlciAqZWIpCj4+ICAg
ICAgICAgICAgICAgICAgICAgICAgICByZXR1cm4gZXJyOwo+PiAgICAgICAgICB9Cj4gaWYgKGVi
LT5vYV9jb25maWcpIHsKPiAJZXJyID0gaTkxNV9hY3RpdmVfcmVxdWVzdF9zZXQoJmViLT5pOTE1
LT5wZXJmLm9hLm9hX2NvbmZpZ19hY3RpdmUsCj4gCQkJCSAgICAgIGViLT5yZXF1ZXN0KTsKPiAJ
aWYgKGVycikKPiAJCXJldHVybiBlcnI7Cj4gfQo+Cj4gd2l0aCB0aGUgYWRkaXRpb24gb2YKPiAJ
c3RydWN0IGk5MTVfYWN0aXZlX3JlcXVlc3Qgb2FfY29uZmlnX2FjdGl2ZTsKPiB0byBpOTE1LT5w
ZXJmLm9hLCBhbmQgaTkxNV9hY3RpdmVfaW5pdDsgVGhhdCB3aWxsIGVuc3VyZSB0aGF0IHRoZQo+
IG9hX2NvbmZpZyBjYW4ndCBiZSBjaGFuZ2VkIGJlZm9yZSBleGVjdXRpb24gKGFuZCB0aGUgb3Jk
ZXJpbmcgcmVzdHJpY3Rpb24KPiBpcyBlc3NlbnRpYWxseSBhIG5vLW9wIGlmIG9ubHkgb25lIGNv
bnRleHQgaGFzIGEgc3BlY2lmaWVkIG9hX2NvbmZpZykuCj4KPj4gKyAgICAgICBpZiAoZWItPm9h
X2NvbmZpZyAmJgo+PiArICAgICAgICAgICBlYi0+b2FfY29uZmlnICE9IGViLT5pOTE1LT5wZXJm
Lm9hLmV4Y2x1c2l2ZV9zdHJlYW0tPm9hX2NvbmZpZykgewo+IEZ3aXcsIEkgd291bGQgbW92ZSB0
aGVzZSB0byBlYl9vYV9jb25maWcoKS4KPgo+IGlmIChlYi0+b2FfY29uZmlnKSB7Cj4gCWVyciA9
IGViX29hX2NvbmZpZyhlYik7Cj4gCWlmIChlcnIpCj4gCQlyZXR1cm4gZXJyOwo+IH0KPgo+IEhv
dyBkb2VzIGViX29hX2NvbmZpZyBtaXggd2l0aCB0aGUgZ2xvYmFsIGdlbjhfY29uZmlndXJlX2Fs
bF9jb250ZXh0cygpPwoKCkV4Y2VsbGVudCBwb2ludCwgSSBzaG91bGQgZG9jdW1lbnQgdGhpcy4K
CgpIVyBjb25maWd1cmF0aW9ucyBoYXZlIHJvdWdobHkgMyBwYXJ0cyA6CgogwqDCoCAtIE5PQSBj
b25maWd1cmF0aW9uLCBuZXR3b3JrIGNvbmZpZ3VyYXRpb24gdG8gc291cmNlIHNwZWNpZmljIGRh
dGEgCmZyb20gYW55d2hlcmUgKGdsb2JhbCwgbm9uIHBvd2VyIHNhdmVkL3Jlc3RvcmVkKQoKIMKg
wqAgLSBCb29sZWFuIGNvdW50ZXJzLCBmaWx0ZXJzIHNpZ25hbHMgYnJvdWdodCBieSBOT0EgKGds
b2JhbCwgY2FuJ3QgCnJlbWVtYmVyIHdoZXRoZXIgc2F2ZWQvcmVzdG9yZWQpCgogwqDCoCAtIEZs
ZXggY291bnRlcnMsIGZpbHRlcnMgb24gZXZlbnRzIGhhcHBlbmluZyB3aXRoaW4gdGhlIEVVcyAo
cGVyIApjb250ZXh0LCBzYXZlZC9yZXN0b3JlZCkKCgpGaXJzdCB0d28gd2lsbCBhZmZlY3QgYWxs
IHJ1bm5pbmcgY29udGV4dHMgKGJlY2F1c2UgZ2xvYmFsKSwgbGFzdCBvbmUgCndpbGwgb25seSBi
ZSBhcHBsaWVkIHRvIHRoZSBjb250ZXh0IHRoYXQgdHJpZ2dlcmVkIHRoZSBleGVjYnVmLgoKVGhh
dCBzaG91bGQgYmUgZmluZSBiZWNhdXNlIG9mIHRoZSBvdGhlciByZXF1aXJlbWVudCB3ZSBuZWVk
IChkb24ndCAKcHJlZW1wdCB0aGUgY29udGV4dCBydW5uaW5nIGEgcGVyZm9ybWFuY2UgcXVlcnkp
LgoKCi1MaW9uZWwKCgo+IC1DaHJpcwo+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZng=
