Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BB005BB4F
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Jul 2019 14:14:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF29D89CDF;
	Mon,  1 Jul 2019 12:14:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 254C189CDF
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Jul 2019 12:14:54 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 01 Jul 2019 05:14:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,439,1557212400"; d="scan'208";a="314865937"
Received: from unknown (HELO [10.249.141.63]) ([10.249.141.63])
 by orsmga004.jf.intel.com with ESMTP; 01 Jul 2019 05:14:52 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190701113437.4043-1-lionel.g.landwerlin@intel.com>
 <20190701113437.4043-9-lionel.g.landwerlin@intel.com>
 <156198272652.1583.5781402206923683541@skylake-alporthouse-com>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <dd7bb59f-6790-9ad6-3e14-006a446f2af6@intel.com>
Date: Mon, 1 Jul 2019 15:14:51 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <156198272652.1583.5781402206923683541@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v6 08/11] drm/i915: add a new perf
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

T24gMDEvMDcvMjAxOSAxNTowNSwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+IFF1b3RpbmcgTGlvbmVs
IExhbmR3ZXJsaW4gKDIwMTktMDctMDEgMTI6MzQ6MzQpCj4+ICtzdGF0aWMgaW50IGViX29hX2Nv
bmZpZyhzdHJ1Y3QgaTkxNV9leGVjYnVmZmVyICplYikKPj4gK3sKPj4gKyAgICAgICBpbnQgZXJy
Owo+PiArCj4+ICsgICAgICAgaWYgKCFlYi0+b2FfY29uZmlnKQo+PiArICAgICAgICAgICAgICAg
cmV0dXJuIDA7Cj4+ICsKPj4gKyAgICAgICBlcnIgPSBpOTE1X2FjdGl2ZV9yZXF1ZXN0X3NldCgm
ZWItPmVuZ2luZS0+bGFzdF9vYV9jb25maWcsCj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgZWItPnJlcXVlc3QpOwo+PiArICAgICAgIGlmIChlcnIpCj4+ICsgICAgICAg
ICAgICAgICByZXR1cm4gZXJyOwo+PiArCj4+ICsgICAgICAgLyoKPj4gKyAgICAgICAgKiBJZiB0
aGUgY29uZmlnIGhhc24ndCBjaGFuZ2VkLCBza2lwIHJlY29uZmlndXJpbmcgdGhlIEhXICh0aGlz
IGlzCj4+ICsgICAgICAgICogc3ViamVjdCB0byBhIGRlbGF5IHdlIHdhbnQgdG8gYXZvaWQgaGFz
IG11Y2ggYXMgcG9zc2libGUpLgo+PiArICAgICAgICAqLwo+PiArICAgICAgIGlmIChlYi0+b2Ff
Y29uZmlnID09IGViLT5pOTE1LT5wZXJmLm9hLmV4Y2x1c2l2ZV9zdHJlYW0tPm9hX2NvbmZpZykK
Pj4gKyAgICAgICAgICAgICAgIHJldHVybiAwOwo+IFNvIHdoYXQncyB0aGUgc3RvcnkgZm9yIHJl
c2V0cz8gSSBwcmVzdW1lIHRoZSBPQSBjb25maWcgaXMgbG9zdCBvbiBhCj4gZGV2aWNlIHJlc2V0
LCBhbmQgcG9zc2libGUgYW4gZW5naW5lIHJlc2V0PyBJZiBzbywgdGhlbiBpZiB3ZSByZXNldCwg
d2UKPiBsb3NlIHRoZSBjb25maWcgYW5kIGRvIG5vdCBub3RpY2UuCj4gLUNocmlzCj4KVGhlIGN1
cnJlbnQgc3RvcnkgKGJlZm9yZSB0aG9zZSBwYXRjaGVzKSBmb3IgcmVzZXRzIGFuZCBPQSBpcyBh
bHJlYWR5IApwcmV0dHkgdW5kZWZpbmVkLgoKSSBoYXZlbid0IGFjdHVhbGx5IGdvbmUgdG8gbG9v
ayBhdCBhbGwgdGhlIE9BIHJlZ2lzdGVyIHNlZSB3aGF0IHRoZXkgCnJlc2V0IHZhbHVlIHdvdWxk
IGJlLgoKCkF0IHRoZSBtb21lbnQgd2Ugc2hvdWxkIGNvbnNpZGVyIGEgcmVzZXQgdG8gbWFrZSB5
b3VyIHJlc3VsdHMgaW52YWxpZC4KCkknbGwgdHJ5IHRvIGRpZyBhIGJpdCBvbiB0aGlzLgoKCi1M
aW9uZWwKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
