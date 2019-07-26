Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9757F76716
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Jul 2019 15:15:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D8A796ED4E;
	Fri, 26 Jul 2019 13:15:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3FCBB6ED4E
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 Jul 2019 13:15:54 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Jul 2019 06:15:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,310,1559545200"; d="scan'208";a="345822121"
Received: from hinestho-mobl1.amr.corp.intel.com (HELO [10.252.1.47])
 ([10.252.1.47])
 by orsmga005.jf.intel.com with ESMTP; 26 Jul 2019 06:15:52 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>,
 Lucas De Marchi <lucas.demarchi@intel.com>, intel-gfx@lists.freedesktop.org
References: <20190726000226.26914-1-lucas.demarchi@intel.com>
 <20190726000226.26914-3-lucas.demarchi@intel.com>
 <156409982772.30723.16146937485087701539@skylake-alporthouse-com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <54eaffac-0d15-109d-6d9b-98eb6b2a604f@linux.intel.com>
Date: Fri, 26 Jul 2019 14:15:51 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <156409982772.30723.16146937485087701539@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915/tgl: Implement Wa_1604555607
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
Cc: Michel Thierry <michel.thierry@intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDI2LzA3LzIwMTkgMDE6MTAsIENocmlzIFdpbHNvbiB3cm90ZToKPiBRdW90aW5nIEx1Y2Fz
IERlIE1hcmNoaSAoMjAxOS0wNy0yNiAwMTowMjoyNSkKPj4gRnJvbTogTWljaGVsIFRoaWVycnkg
PG1pY2hlbC50aGllcnJ5QGludGVsLmNvbT4KPj4KPj4gSW1wbGVtZW50IFdhXzE2MDQ1NTU2MDcg
KHNldCB0aGUgRFMgcGFpcmluZyB0aW1lciB0byAxMjggY3ljbGVzKS4KPj4gRkZfTU9ERTIgaXMg
cGFydCBvZiB0aGUgcmVnaXN0ZXIgc3RhdGUgY29udGV4dCwgdGhhdCdzIHdoeSBpdCBpcwo+PiBp
bXBsZW1lbnRlZCBoZXJlLgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBNaWNoZWwgVGhpZXJyeSA8bWlj
aGVsLnRoaWVycnlAaW50ZWwuY29tPgo+PiBTaWduZWQtb2ZmLWJ5OiBMdWNhcyBEZSBNYXJjaGkg
PGx1Y2FzLmRlbWFyY2hpQGludGVsLmNvbT4KPj4gLS0tCj4+ICAgZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYyB8IDcgKysrKysrKwo+PiAgIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfcmVnLmggICAgICAgICAgICAgfCA1ICsrKysrCj4+ICAgMiBmaWxlcyBjaGFu
Z2VkLCAxMiBpbnNlcnRpb25zKCspCj4+Cj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50
ZWxfd29ya2Fyb3VuZHMuYwo+PiBpbmRleCBhNmViOWM2ZTg3ZWMuLjMyMzVlZjM1NWRmZCAxMDA2
NDQKPj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYwo+
PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jCj4+IEBA
IC01NzIsNiArNTcyLDEzIEBAIHN0YXRpYyB2b2lkIGljbF9jdHhfd29ya2Fyb3VuZHNfaW5pdChz
dHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUsCj4+ICAgc3RhdGljIHZvaWQgdGdsX2N0eF93
b3JrYXJvdW5kc19pbml0KHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSwKPj4gICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBzdHJ1Y3QgaTkxNV93YV9saXN0ICp3YWwp
Cj4+ICAgewo+PiArICAgICAgIHUzMiB2YWw7Cj4+ICsKPj4gKyAgICAgICAvKiBXYV8xNjA0NTU1
NjA3OnRnbCAqLwo+PiArICAgICAgIHZhbCA9IGludGVsX3VuY29yZV9yZWFkKGVuZ2luZS0+dW5j
b3JlLCBGRl9NT0RFMik7Cj4+ICsgICAgICAgdmFsICY9IH5GRl9NT0RFMl9URFNfVElNRVJfTUFT
SzsKPj4gKyAgICAgICB2YWwgfD0gRkZfTU9ERTJfVERTX1RJTUVSXzEyODsKPj4gKyAgICAgICB3
YV93cml0ZV9tYXNrZWRfb3Iod2FsLCBGRl9NT0RFMiwgRkZfTU9ERTJfVERTX1RJTUVSX01BU0ss
IHZhbCk7Cj4gCj4gSXQgd2lsbCBkbyBhIHJtdyBvbiBhcHBsaWNhdGlvbiwgc28geW91IGp1c3Qg
bmVlZAo+IAl3YV93cml0ZV9tYXNrZWRfb3Iod2FsLCBGRl9NT0RFMiwKPiAJCSAgICAgICAgICAg
RkZfTU9ERTJfVERTX1RJTUVSX01BU0ssIEZGX01PREUyX1REU19USU1FUl8xMjgpOwoKTm90IHdp
dGggY3R4IHdhcyB1bmZvcnR1bmF0ZWx5LCBubyBybXcgdGhlcmUsIGp1c3QgbHJpLgoKVG8gYmUg
bGVzcyBtaXNsZWFkaW5nIHBlcmhhcHM6CgogICB3YV93cml0ZSh3YWwsIEZGX01PREUyLCB2YWwp
OwoKPwoKSXQgb25seSBhZmZlY3RzIHZlcmlmaWNhdGlvbiwgZG8gd2Ugd2FudCB0byB2ZXJpZnkg
dGhlIHdob2xlIHJlZ2lzdGVyIG9yIApqdXN0IHRoZSBGRl9NT0RFMl9URFNfVElNRVJfTUFTSyBi
aXRzLiBTaW5jZSB0aGUgY29kZSByZWFkcyBpdCBhbmQgc2V0cyAKaXQsIGl0IG1heSB3YW50IHRv
IGNoZWNrIGl0IHdob2xlLgoKUmVnYXJkcywKClR2cnRrbwoKPiAKPj4gICB9Cj4+ICAgCj4+ICAg
c3RhdGljIHZvaWQKPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVn
LmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCj4+IGluZGV4IDU0ZWEyNTAwMDBi
ZS4uZmJiYjg5ZjZjYTJmIDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X3JlZy5oCj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKPj4gQEAgLTc3
NzEsNiArNzc3MSwxMSBAQCBlbnVtIHsKPj4gICAjZGVmaW5lICAgUElYRUxfUk9VTkRJTkdfVFJV
TkNfRkJfUEFTU1RIUlUgICAgICgxIDw8IDE1KQo+PiAgICNkZWZpbmUgICBQRVJfUElYRUxfQUxQ
SEFfQllQQVNTX0VOICAgICAgICAgICAgKDEgPDwgNykKPj4gICAKPj4gKyNkZWZpbmUgRkZfTU9E
RTIgICAgICAgICAgICAgICAgICAgICAgIF9NTUlPKDB4NjYwNCkKPj4gKyNkZWZpbmUgICBGRl9N
T0RFMl9URFNfVElNRVJfU0hJRlQgICAgICgxNikKPj4gKyNkZWZpbmUgICBGRl9NT0RFMl9URFNf
VElNRVJfMTI4ICAgICAgICg0IDw8IEZGX01PREUyX1REU19USU1FUl9TSElGVCkKPj4gKyNkZWZp
bmUgICBGRl9NT0RFMl9URFNfVElNRVJfTUFTSyAgICAgICgweGZmIDw8IEZGX01PREUyX1REU19U
SU1FUl9TSElGVCkKPiAKPiAjZGVmaW5lIEZGX01PREUyX1REU19USU1FUl9NQVNLIFJFR19HRU5N
QVNLKDIzLCAxNikKPiAjZGVmaW5lIEZGX01PREUyX1REU19USU1FUl8xMjggUkVHX0ZJRUxEX1BS
RVAoRkZfTU9ERTJfVERTX1RJTUVSX01BU0ssIDQpCj4gLUNocmlzCj4gX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBJbnRlbC1nZnggbWFpbGluZyBsaXN0
Cj4gSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+IGh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cj4gCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
