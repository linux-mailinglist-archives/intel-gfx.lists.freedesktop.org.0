Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F84E21C28
	for <lists+intel-gfx@lfdr.de>; Fri, 17 May 2019 19:03:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D23D489933;
	Fri, 17 May 2019 17:03:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 90EEA89933
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 May 2019 17:03:13 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 May 2019 10:03:12 -0700
X-ExtLoop1: 1
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by orsmga004.jf.intel.com with ESMTP; 17 May 2019 10:03:11 -0700
Received: from mwajdecz-mobl1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [172.28.174.50])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 x4HH3AuD024634; Fri, 17 May 2019 18:03:10 +0100
To: intel-gfx@lists.freedesktop.org, "Chris Wilson" <chris@chris-wilson.co.uk>
References: <20190517162227.6436-1-michal.wajdeczko@intel.com>
 <20190517162227.6436-5-michal.wajdeczko@intel.com>
 <155811064044.826.1853035905910280677@skylake-alporthouse-com>
Date: Fri, 17 May 2019 19:03:10 +0200
MIME-Version: 1.0
From: "Michal Wajdeczko" <michal.wajdeczko@intel.com>
Message-ID: <op.z1x1nkxgxaggs7@mwajdecz-mobl1.ger.corp.intel.com>
In-Reply-To: <155811064044.826.1853035905910280677@skylake-alporthouse-com>
User-Agent: Opera Mail/1.0 (Win32)
Subject: Re: [Intel-gfx] [PATCH 4/7] drm/i915/uc: Stop talking with GuC when
 resetting
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
Content-Type: text/plain; charset="utf-8"; Format="flowed"; DelSp="yes"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCAxNyBNYXkgMjAxOSAxODozMDo0MCArMDIwMCwgQ2hyaXMgV2lsc29uICAKPGNocmlz
QGNocmlzLXdpbHNvbi5jby51az4gd3JvdGU6Cgo+IFF1b3RpbmcgTWljaGFsIFdhamRlY3prbyAo
MjAxOS0wNS0xNyAxNzoyMjoyNCkKPj4gS25vd2luZyB0aGF0IEd1QyB3aWxsIGJlIHJlc2V0IHNv
b24sIHdlIG1heSBzdG9wIGFsbCBjb21tdW5pY2F0aW9uCj4+IGltbWVkaWF0ZWx5IHdpdGhvdXQg
ZG9pbmcgZ3JhY2VmdWwgY2xlYW51cCBhcyBpdCBpcyBub3QgbmVlZGVkLgo+Pgo+PiBTaWduZWQt
b2ZmLWJ5OiBNaWNoYWwgV2FqZGVjemtvIDxtaWNoYWwud2FqZGVjemtvQGludGVsLmNvbT4KPj4g
Q2M6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+PiBDYzogRGFuaWVs
ZSBDZXJhb2xvIFNwdXJpbyA8ZGFuaWVsZS5jZXJhb2xvc3B1cmlvQGludGVsLmNvbT4KPj4gLS0t
Cj4+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9ndWNfY3QuaCB8ICA1ICsrKysrCj4+ICBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF91Yy5jICAgICB8IDEzICsrKysrKysrKysrKy0KPj4g
IDIgZmlsZXMgY2hhbmdlZCwgMTcgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+Pgo+PiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZ3VjX2N0LmggIAo+PiBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2d1Y19jdC5oCj4+IGluZGV4IGY1ZTdmMDY2MzMwNC4u
NDFiYTU5M2E0ZGY3IDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9n
dWNfY3QuaAo+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9ndWNfY3QuaAo+PiBA
QCAtOTYsNCArOTYsOSBAQCB2b2lkIGludGVsX2d1Y19jdF9maW5pKHN0cnVjdCBpbnRlbF9ndWNf
Y3QgKmN0KTsKPj4gIGludCBpbnRlbF9ndWNfY3RfZW5hYmxlKHN0cnVjdCBpbnRlbF9ndWNfY3Qg
KmN0KTsKPj4gIHZvaWQgaW50ZWxfZ3VjX2N0X2Rpc2FibGUoc3RydWN0IGludGVsX2d1Y19jdCAq
Y3QpOwo+Pgo+PiArc3RhdGljIGlubGluZSB2b2lkIGludGVsX2d1Y19jdF9zdG9wKHN0cnVjdCBp
bnRlbF9ndWNfY3QgKmN0KQo+PiArewo+PiArICAgICAgIGN0LT5ob3N0X2NoYW5uZWwuZW5hYmxl
ZCA9IGZhbHNlOwo+PiArfQo+PiArCj4+ICAjZW5kaWYgLyogX0lOVEVMX0dVQ19DVF9IXyAqLwo+
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfdWMuYyAgCj4+IGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfdWMuYwo+PiBpbmRleCA5ZDg2Y2Q4MzFlYTcuLjg2ZWRm
YTVhZDcyZSAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfdWMuYwo+
PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF91Yy5jCj4+IEBAIC0yMjQsNiArMjI0
LDE3IEBAIHN0YXRpYyBpbnQgZ3VjX2VuYWJsZV9jb21tdW5pY2F0aW9uKHN0cnVjdCAgCj4+IGlu
dGVsX2d1YyAqZ3VjKQo+PiAgICAgICAgIHJldHVybiAwOwo+PiAgfQo+Pgo+PiArc3RhdGljIHZv
aWQgZ3VjX3N0b3BfY29tbXVuaWNhdGlvbihzdHJ1Y3QgaW50ZWxfZ3VjICpndWMpCj4+ICt7Cj4+
ICsgICAgICAgc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSBndWNfdG9faTkxNShndWMp
Owo+PiArCj4+ICsgICAgICAgaWYgKEhBU19HVUNfQ1QoaTkxNSkpCj4KPiBEb2VzIHRoaXMgbm90
IGZhbGwgb3V0IG9mIHNvbWUgbG9jYWwga25vd2xlZGdlPyBUaG91Z2ggZm9yIHRoZSBtb21lbnQg
aXQKPiBpcyBoYXJtbGVzcyB0byBzdG9wIGEgbm9uLWV4aXN0ZW50IGludGVsX2d1Y19jdC4KCldl
IGRvIGhhdmUgQ1QgaW5pdC9lbmFibGUvZGlzYWJsZS9maW5pIGZ1bmN0aW9ucyAoYWxsIGd1YXJk
ZWQgYnkgIApIQVNfR1VDX0NUKQpzbyBhdCB0aGUgbW9tZW50IHdlIGFyZSBoZXJlLCB3ZSBrbm93
IHRoYXQgQ1Qgd2FzIGFscmVhZHkgZW5hYmxlZC4KCj4KPj4gKyAgICAgICAgICAgICAgIGludGVs
X2d1Y19jdF9zdG9wKCZndWMtPmN0KTsKPgo+IEFueSBzZXJpYWxpc2F0aW9uIHJlcXVpcmVkIGhl
cmU/CgpUaGlzIGZ1bmN0aW9uIG1pZ2h0IGJlIGNhbGxlZCBmcm9tIGF0b21pYyBjb250ZXh0LCBz
byByYXRoZXIgbm90LgoKPiBPciBjYXZlYXRzIGZvciBjYWxsZXJzIHRvIG9ic2VydmU/CgpBcyB3
ZSBhcmUgcmVzZXR0aW5nIHRoZSBHdUMsIHdlIHNpbXBseSBkb2VzIG5vdCBhbGxvdyBhbnkgZnVy
dGhlcgpjb21tdW5pY2F0aW9uIHdpdGggaXQsIGFueSBhYnVzZXJzIHdpbGwgc2VlIHNvbWV0aGlu
ZyBsaWtlIHRoaXM6Cgo8ND4gWzMyMi40MDE2MTRdIFVuZXhwZWN0ZWQgc2VuZDogYWN0aW9uPTB4
NDAwMAo8ND4gWzMyMi40MDE2NDhdIFdBUk5JTkc6IENQVTogMyBQSUQ6IDEzNTcgYXQgIApkcml2
ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9ndWMuYzo0MDUgaW50ZWxfZ3VjX3NlbmRfbm9wKzB4ZS8w
eDIwIFtpOTE1XQoKPgo+PiArICAgICAgIGd1Yy0+c2VuZCA9IGludGVsX2d1Y19zZW5kX25vcDsK
Pj4gKyAgICAgICBndWMtPmhhbmRsZXIgPSBpbnRlbF9ndWNfdG9faG9zdF9ldmVudF9oYW5kbGVy
X25vcDsKPj4gK30KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
