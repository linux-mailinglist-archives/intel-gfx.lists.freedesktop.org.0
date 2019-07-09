Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 69B2A634A6
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Jul 2019 12:59:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C475989C3B;
	Tue,  9 Jul 2019 10:59:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C531089C3B
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Jul 2019 10:59:33 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Jul 2019 03:59:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,470,1557212400"; d="scan'208";a="170560848"
Received: from unknown (HELO [10.252.37.9]) ([10.252.37.9])
 by orsmga006.jf.intel.com with ESMTP; 09 Jul 2019 03:59:32 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190709093208.20470-1-lionel.g.landwerlin@intel.com>
 <20190709093208.20470-10-lionel.g.landwerlin@intel.com>
 <156266630516.9375.14447795535063304479@skylake-alporthouse-com>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <e6c65a05-69f4-310c-b17a-dedf92dfed72@intel.com>
Date: Tue, 9 Jul 2019 13:59:31 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <156266630516.9375.14447795535063304479@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v7 09/12] drm/i915: add a new perf
 configuration execbuf parameter
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

T24gMDkvMDcvMjAxOSAxMjo1OCwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+IFF1b3RpbmcgTGlvbmVs
IExhbmR3ZXJsaW4gKDIwMTktMDctMDkgMTA6MzI6MDUpCj4+ICtzdGF0aWMgaW50IGViX29hX2Nv
bmZpZyhzdHJ1Y3QgaTkxNV9leGVjYnVmZmVyICplYikKPj4gK3sKPj4gKyAgICAgICBpbnQgZXJy
Owo+PiArCj4+ICsgICAgICAgaWYgKCFlYi0+b2FfY29uZmlnKQo+PiArICAgICAgICAgICAgICAg
cmV0dXJuIDA7Cj4+ICsKPj4gKyAgICAgICBlcnIgPSBpOTE1X2FjdGl2ZV9yZXF1ZXN0X3NldCgm
ZWItPmVuZ2luZS0+bGFzdF9vYV9jb25maWcsCj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgZWItPnJlcXVlc3QpOwo+IFRoaXMgaXMgb3V0c2lkZSBvZiB0aGUgZWItPnJl
cXVlc3QtPnRpbWVsaW5lLT5tdXRleCBhbmQgbmVlZHMgYSBtdXRleC4KCgpDYW4gSSBkbyB0aGlz
IGluc2lkZSBpOTE1X3JlcXVlc3RfYWRkKCkgd2hlbiBycS0+ZmxhZ3MgJiAKSTkxNV9SRVFVRVNU
X0ZMQUdTX1BFUkYgPwoKCj4KPj4gKyAgICAgICBpZiAoZXJyKQo+PiArICAgICAgICAgICAgICAg
cmV0dXJuIGVycjsKPj4gKwo+PiArICAgICAgIC8qCj4+ICsgICAgICAgICogSWYgdGhlIGNvbmZp
ZyBoYXNuJ3QgY2hhbmdlZCwgc2tpcCByZWNvbmZpZ3VyaW5nIHRoZSBIVyAodGhpcyBpcwo+PiAr
ICAgICAgICAqIHN1YmplY3QgdG8gYSBkZWxheSB3ZSB3YW50IHRvIGF2b2lkIGhhcyBtdWNoIGFz
IHBvc3NpYmxlKS4KPj4gKyAgICAgICAgKi8KPj4gKyAgICAgICBpZiAoZWItPm9hX2NvbmZpZyA9
PSBlYi0+aTkxNS0+cGVyZi5vYS5leGNsdXNpdmVfc3RyZWFtLT5vYV9jb25maWcpCj4+ICsgICAg
ICAgICAgICAgICByZXR1cm4gMDsKPj4gKwo+PiArICAgICAgIGVyciA9IGk5MTVfdm1hX21vdmVf
dG9fYWN0aXZlKGViLT5vYV92bWEsIGViLT5yZXF1ZXN0LCAwKTsKPj4gKyAgICAgICBpZiAoZXJy
KQo+PiArICAgICAgICAgICAgICAgcmV0dXJuIGVycjsKPj4gKwo+PiArICAgICAgIGVyciA9IGVi
LT5lbmdpbmUtPmVtaXRfYmJfc3RhcnQoZWItPnJlcXVlc3QsCj4+ICsgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICBlYi0+b2Ffdm1hLT5ub2RlLnN0YXJ0LAo+PiArICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgMCwgSTkxNV9ESVNQQVRDSF9TRUNVUkUp
Owo+PiArICAgICAgIGlmIChlcnIpCj4+ICsgICAgICAgICAgICAgICByZXR1cm4gZXJyOwo+PiAr
Cj4+ICsgICAgICAgc3dhcChlYi0+b2FfY29uZmlnLCBlYi0+aTkxNS0+cGVyZi5vYS5leGNsdXNp
dmVfc3RyZWFtLT5vYV9jb25maWcpOwo+IEFzIGRvZXMgdGhpcyB0aGlzLiBTbyB3aGljaCBtdXRl
eCBpcyB0byBndWFyZAo+IGk5MTUtPnBlcmYub2EuZXhjbHVzaXZlX3N0cmVhbS0+b2FfY29uZmln
ID8KPgo+IElzIGk5MTUtPnBlcmYubWV0cmljc19sb2NrcyBzZW5zaWJsZSB0byBndWFyZCBbZGF0
YSB3aXRoaW5dIHRoaXMgZnVuY3Rpb24/Cj4gLUNocmlzCj4KT2ggc29ycnksIEkgbWlzc2VkIHRo
YXQgYWdhaW4uLi4KCkF0IHRoZSBtb21lbnQgaXQgd291bGQgYmUgaTkxNS0+ZHJtLnN0cnVjdF9t
dXRleCBidXQgdGhpcyBjb3VsZCBiZSBhIGJpdCAKZmluZXIgb24gdGhlIGVuZ2luZS4KCgotTGlv
bmVsCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
