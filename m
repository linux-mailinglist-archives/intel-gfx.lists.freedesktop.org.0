Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BE6CF996D4
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Aug 2019 16:36:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1F9396EB66;
	Thu, 22 Aug 2019 14:36:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4C8646EB6F
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Aug 2019 14:36:27 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Aug 2019 05:06:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,416,1559545200"; d="scan'208";a="190561588"
Received: from amanna-mobl.gar.corp.intel.com (HELO [10.66.116.105])
 ([10.66.116.105])
 by orsmga002.jf.intel.com with ESMTP; 22 Aug 2019 05:06:29 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190821063236.19705-1-animesh.manna@intel.com>
 <20190821063236.19705-6-animesh.manna@intel.com>
 <156641206513.20466.17542600102889652839@skylake-alporthouse-com>
From: Animesh Manna <animesh.manna@intel.com>
Message-ID: <c5936a3e-4176-b01c-53e2-1f14f3a6d84c@intel.com>
Date: Thu, 22 Aug 2019 17:36:28 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.2.0
MIME-Version: 1.0
In-Reply-To: <156641206513.20466.17542600102889652839@skylake-alporthouse-com>
Subject: Re: [Intel-gfx] [PATCH v2 05/15] drm/i915/dsb: Indexed register
 write function for DSB.
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

SGksCgoKT24gOC8yMS8yMDE5IDExOjU3IFBNLCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gUXVvdGlu
ZyBBbmltZXNoIE1hbm5hICgyMDE5LTA4LTIxIDA3OjMyOjI1KQo+PiBEU0IgY2FuIHByb2dyYW0g
bGFyZ2Ugc2V0IG9mIGRhdGEgdGhyb3VnaCBpbmRleGVkIHJlZ2lzdGVyIHdyaXRlCj4+IChvcGNv
ZGUgMHg5KSBpbiBvbmUgc2hvdC4gV2lsbCBiZSB1c2luZyBmb3IgYnVsayByZWdpc3RlciBwcm9n
cmFtbWluZwo+PiBlLmcuIGdhbW1hIGx1dCBwcm9ncmFtbWluZywgSERSIG1ldGEgZGF0YSBwcm9n
cmFtbWluZy4KPj4KPj4gQ2M6IFNoYXNoYW5rIFNoYXJtYSA8c2hhc2hhbmsuc2hhcm1hQGludGVs
LmNvbT4KPj4gQ2M6IEltcmUgRGVhayA8aW1yZS5kZWFrQGludGVsLmNvbT4KPj4gQ2M6IEphbmkg
TmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+Cj4+IENjOiBSb2RyaWdvIFZpdmkgPHJvZHJp
Z28udml2aUBpbnRlbC5jb20+Cj4+IFNpZ25lZC1vZmYtYnk6IEFuaW1lc2ggTWFubmEgPGFuaW1l
c2gubWFubmFAaW50ZWwuY29tPgo+PiAtLS0KPj4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2RzYi5jIHwgNDIgKysrKysrKysrKysrKysrKysrKysrKysrCj4+ICAgZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2IuaCB8ICA2ICsrKysKPj4gICAyIGZpbGVz
IGNoYW5nZWQsIDQ4IGluc2VydGlvbnMoKykKPj4KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2RzYi5jCj4+IGluZGV4IDhhOWQwODJiMTYwMS4uNGZlOGNhYzYyNDZhIDEwMDY0
NAo+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzYi5jCj4+ICsr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmMKPj4gQEAgLTIyLDYg
KzIyLDcgQEAKPj4gICAjZGVmaW5lIERTQl9PUENPREVfSU5ERVhFRF9XUklURSAgICAgICAweDkK
Pj4gICAjZGVmaW5lIERTQl9PUENPREVfUE9MTCAgICAgICAgICAgICAgICAgICAgICAgIDB4QQo+
PiAgICNkZWZpbmUgRFNCX0JZVEVfRU4gICAgICAgICAgICAgICAgICAgICgweGYgPDwgMjApCj4+
ICsjZGVmaW5lIERTQl9SRUdfVkFMVUVfTUFTSyAgICAgICAgICAgICAweGZmZmZmCj4+ICAgCj4+
ICAgc3RydWN0IGludGVsX2RzYiAqCj4+ICAgaW50ZWxfZHNiX2dldChzdHJ1Y3QgaW50ZWxfY3J0
YyAqY3J0YykKPj4gQEAgLTc5LDYgKzgwLDQyIEBAIGludGVsX2RzYl9nZXQoc3RydWN0IGludGVs
X2NydGMgKmNydGMpCj4+ICAgICAgICAgIHJldHVybiBkc2I7Cj4+ICAgfQo+PiAgIAo+PiArc3Rh
dGljIHZvaWQgaW50ZWxfZHNiX2luZGV4ZWRfcmVnX3dyaXRlKHN0cnVjdCBpbnRlbF9kc2IgKmRz
YiwgaTkxNV9yZWdfdCByZWcsCj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICB1MzIgdmFsKQo+PiArewo+PiArICAgICAgIHUzMiAqYnVmID0gZHNiLT5jbWRfYnVmOwo+
PiArICAgICAgIHUzMiByZWdfdmFsOwo+PiArCj4+ICsgICAgICAgcmVnX3ZhbCA9IGJ1Zltkc2It
Pmluc19zdGFydF9vZmZzZXQgKyAxXSAmIERTQl9SRUdfVkFMVUVfTUFTSzsKPiBVbmNhY2hlZCBy
ZWFkLgo+Cj4+ICsgICAgICAgaWYgKHJlZ192YWwgIT0gaTkxNV9tbWlvX3JlZ19vZmZzZXQocmVn
KSkgewo+PiArICAgICAgICAgICAgICAgLyogRXZlcnkgaW5zdHJ1Y3Rpb24gc2hvdWxkIGJlIDgg
Ynl0ZSBhbGlnbmVkLiAqLwo+PiArICAgICAgICAgICAgICAgaWYgKGRzYi0+ZnJlZV9wb3MgJiAw
eDEpCj4+ICsgICAgICAgICAgICAgICAgICAgICAgIGRzYi0+ZnJlZV9wb3MrKzsKPiBkc2ItPmZy
ZWVfcG9zID0gQUxJR04oZHNiLT5mcmVlX3BvcywgMik7CgpPay4KPgo+PiArCj4+ICsgICAgICAg
ICAgICAgICAvKiBVcGRhdGUgdGhlIHNpemUuICovCj4+ICsgICAgICAgICAgICAgICBkc2ItPmlu
c19zdGFydF9vZmZzZXQgPSBkc2ItPmZyZWVfcG9zOwo+PiArICAgICAgICAgICAgICAgYnVmW2Rz
Yi0+ZnJlZV9wb3MrK10gPSAxOwo+PiArCj4+ICsgICAgICAgICAgICAgICAvKiBVcGRhdGUgdGhl
IG9wY29kZSBhbmQgcmVnLiAqLwo+PiArICAgICAgICAgICAgICAgYnVmW2RzYi0+ZnJlZV9wb3Mr
K10gPSAoRFNCX09QQ09ERV9JTkRFWEVEX1dSSVRFICA8PAo+PiArICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgRFNCX09QQ09ERV9TSElGVCkgfAo+PiArICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgaTkxNV9tbWlvX3JlZ19vZmZzZXQocmVnKTsKPj4g
Kwo+PiArICAgICAgICAgICAgICAgLyogVXBkYXRlIHRoZSB2YWx1ZS4gKi8KPj4gKyAgICAgICAg
ICAgICAgIGJ1Zltkc2ItPmZyZWVfcG9zKytdID0gdmFsOwo+PiArICAgICAgIH0gZWxzZSB7Cj4+
ICsgICAgICAgICAgICAgICAvKiBVcGRhdGUgdGhlIG5ldyB2YWx1ZS4gKi8KPj4gKyAgICAgICAg
ICAgICAgIGJ1Zltkc2ItPmZyZWVfcG9zKytdID0gdmFsOwo+PiArCj4+ICsgICAgICAgICAgICAg
ICAvKiBVcGRhdGUgdGhlIHNpemUuICovCj4+ICsgICAgICAgICAgICAgICBidWZbZHNiLT5pbnNf
c3RhcnRfb2Zmc2V0XSsrOwo+IFVuY2FjaGVkIHJlYWQgYW5kIHdyaXRlLiBTbyBmYXIgdGhpcyBp
cyB3b3JraW5nIG91dCB0byBiZSBfbW9yZV8KPiBleHBlbnNpdmUgdGhhbiBtbWlvLgoKVW5kZXJz
dG9vZCB5b3VyIGNvbmNlcm4sIGN1cnJlbnRseSB0cmllZCB0byBhbGlnbiB3aXRoIEk5MTVfV1JJ
VEUoKSBjYWxsIAphbmQgY29kZWQgYWNjb3JkaW5nbHkuCklmIHdlIGNhbiBpbnRyb2R1Y2UgYSBz
ZXBhcmF0ZSBjYWxsIGZvciBhdXRvLWluY3JlbWVudCByZWdpc3RlciBsaWtlIGJlbG93LgoKSTkx
NV9XUklURV9CVUxLKDxyZWctb2Zmc2V0PiwgPGJ1Zi1zdGFydC1hZGRyZXNzPiwgPGNvdW50Pik7
CgpUaGUgaW1wbGVtZW50YXRpb24gd2lsbCBiZSBzaW1wbGVyIGFuZCBtb3JlIG9wdGltaXplZC4K
R29vZCB0byBrbm93IHlvdXIgZmVlZGJhY2sgb3IgYW55IGJldHRlciB3YXkgY2FuIGJlIGRvbmUu
CgpSZWdhcmRzLApBbmltZXNoCj4gLUNocmlzCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZng=
