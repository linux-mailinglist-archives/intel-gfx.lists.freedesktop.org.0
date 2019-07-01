Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 358EF5BD3D
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Jul 2019 15:46:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 91AFE8982D;
	Mon,  1 Jul 2019 13:45:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 59C2C8982D
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Jul 2019 13:45:58 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 01 Jul 2019 06:45:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,439,1557212400"; d="scan'208";a="314889189"
Received: from unknown (HELO [10.249.141.63]) ([10.249.141.63])
 by orsmga004.jf.intel.com with ESMTP; 01 Jul 2019 06:45:55 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190701113437.4043-1-lionel.g.landwerlin@intel.com>
 <20190701113437.4043-4-lionel.g.landwerlin@intel.com>
 <156198640799.1583.11835497130419567618@skylake-alporthouse-com>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <9b53900f-a035-a3e1-1b77-6eae359c2ea1@intel.com>
Date: Mon, 1 Jul 2019 16:45:54 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <156198640799.1583.11835497130419567618@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v6 03/11] drm/i915/perf: allow for CS OA
 configs to be created lazily
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

T24gMDEvMDcvMjAxOSAxNjowNiwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+IFF1b3RpbmcgTGlvbmVs
IExhbmR3ZXJsaW4gKDIwMTktMDctMDEgMTI6MzQ6MjkpCj4+IEBAIC0yNTM1LDkgKzI2MzUsMjEg
QEAgc3RhdGljIGludCBpOTE1X3BlcmZfcmVsZWFzZShzdHJ1Y3QgaW5vZGUgKmlub2RlLCBzdHJ1
Y3QgZmlsZSAqZmlsZSkKPj4gICB7Cj4+ICAgICAgICAgIHN0cnVjdCBpOTE1X3BlcmZfc3RyZWFt
ICpzdHJlYW0gPSBmaWxlLT5wcml2YXRlX2RhdGE7Cj4+ICAgICAgICAgIHN0cnVjdCBkcm1faTkx
NV9wcml2YXRlICpkZXZfcHJpdiA9IHN0cmVhbS0+ZGV2X3ByaXY7Cj4+ICsgICAgICAgc3RydWN0
IGk5MTVfb2FfY29uZmlnICpvYV9jb25maWcsICpuZXh0Owo+PiAgIAo+PiAgICAgICAgICBtdXRl
eF9sb2NrKCZkZXZfcHJpdi0+cGVyZi5sb2NrKTsKPj4gKwo+PiAgICAgICAgICBpOTE1X3BlcmZf
ZGVzdHJveV9sb2NrZWQoc3RyZWFtKTsKPj4gKwo+PiArICAgICAgIC8qIERpc3Bvc2Ugb2YgYWxs
IG9hIGNvbmZpZyBiYXRjaCBidWZmZXJzLiAqLwo+PiArICAgICAgIG11dGV4X2xvY2soJmRldl9w
cml2LT5wZXJmLm1ldHJpY3NfbG9jayk7Cj4+ICsgICAgICAgbGlzdF9mb3JfZWFjaF9lbnRyeV9z
YWZlKG9hX2NvbmZpZywgbmV4dCwgJmRldl9wcml2LT5wZXJmLm1ldHJpY3NfYnVmZmVycywgdm1h
X2xpbmspIHsKPj4gKyAgICAgICAgICAgICAgIGxpc3RfZGVsKCZvYV9jb25maWctPnZtYV9saW5r
KTsKPj4gKyAgICAgICAgICAgICAgIGk5MTVfZ2VtX29iamVjdF9wdXQob2FfY29uZmlnLT5vYmop
Owo+PiArICAgICAgICAgICAgICAgb2FfY29uZmlnLT5vYmogPSBOVUxMOwo+PiArICAgICAgIH0K
Pj4gKyAgICAgICBtdXRleF91bmxvY2soJmRldl9wcml2LT5wZXJmLm1ldHJpY3NfbG9jayk7Cj4g
V2hhdCdzIHRoZSByZWZlcmVuY2UgY2hhaW4gZnJvbSB0aGUgaTkxNV9wZXJmIGZkIHRvIHRoZSBp
OTE1X2RldmljZT8KPiBXaGF0J3MgZXZlbiBrZWVwaW5nIHRoZSBtb2R1bGUgYWxpdmUhCj4KPiBT
aG91bGRuJ3QgYmUgYSBkcm1fZGV2X2dldCgpIGluIGk5MTVfcGVyZl9vcGVuX2lvY3RsKCkgYW5k
IGEKPiBkcm1fZGV2X3B1dCgpIGhlcmU/CgoKQXllIQoKTG9va3MgbGlrZSBhIGNhbmRpZGF0ZSBm
b3Igc3RhYmxlLi4uCgoKPgo+IFNvIHRoZXJlIG1heSBiZSBtb3JlIHRoYW4gb25lIHN0cmVhbSwg
c2hhcmluZyB0aGUgc2FtZSBvYV9jb25maWcuIElmIGEKPiBzdHJlYW0gY2xvc2VzLCB5b3UgbGV0
IGFsbCB0aGUgY3VycmVudCBzdHJlYW1zIGtlZXAgdGhlaXIgcmVmZXJlbmNlIGFuZAo+IHRoZSBu
ZXh0IGdldHMgYSBuZXcgb2JqZWN0LiBMb29rcyBsaWtlIHRoZXJlJ3Mgc29tZSBzY29wZSBmb3IK
PiBkdXBsaWNhdGlvbiwgYnV0IGxvb2tzIHNhZmUgZW5vdWdoLiBNeSBtYWluIHdvcnJ5IHdhcyBm
b3Igem9tYmllCj4gb2FfY29uZmlnLgoKClRoZSBnb2FsIG9mIHRoaXMgbG9vcCBpcyB0byBnYXJi
YWdlIGNvbGxlY3QgdGhlIGNvbmZpZyBCT3Mgb25jZSBPQSBpc24ndCAKdXNlZCBhbnltb3JlLgoK
UmlnaHQgbm93IHRoZXJlIGlzIG9ubHkgb25lIGVuZ2luZSB3aXRoIE9BIHN1cHBvcnQuCgpXZSBj
b3VsZCBwb3RlbnRpYWxseSBwdXQgdGhhdCBsaXN0IG9uIHRoZSBlbmdpbmUgdG8gYmUgc2FmZS4K
CgpUaGFua3MsCgoKLUxpb25lbAoKCj4gLUNocmlzCj4KCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
