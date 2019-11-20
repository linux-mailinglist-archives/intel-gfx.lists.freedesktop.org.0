Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C770104077
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Nov 2019 17:14:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D50656E80B;
	Wed, 20 Nov 2019 16:14:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8FDCD6E80B
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Nov 2019 16:14:43 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Nov 2019 08:14:42 -0800
X-IronPort-AV: E=Sophos;i="5.69,222,1571727600"; d="scan'208";a="200768430"
Received: from unknown (HELO [10.252.30.240]) ([10.252.30.240])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 20 Nov 2019 08:14:42 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20191120134113.3777499-1-chris@chris-wilson.co.uk>
 <0635e1d3-79c5-621a-faa5-b850386297eb@linux.intel.com>
 <157426575648.13839.14923384484472849836@skylake-alporthouse-com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <d132f808-7a5a-016a-9111-59da21d984b3@linux.intel.com>
Date: Wed, 20 Nov 2019 16:14:40 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <157426575648.13839.14923384484472849836@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gem: Reduce flush_ggtt() from a
 wait-for-idle to a mere barrier flush
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

Ck9uIDIwLzExLzIwMTkgMTY6MDIsIENocmlzIFdpbHNvbiB3cm90ZToKPiBRdW90aW5nIFR2cnRr
byBVcnN1bGluICgyMDE5LTExLTIwIDE1OjU4OjQ5KQo+Pgo+PiBPbiAyMC8xMS8yMDE5IDEzOjQx
LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4+PiBTaW5jZSB3ZSB1c2UgYmFycmllcnMsIHdlIG5lZWQg
b25seSBleHBsaWNpdGx5IGZsdXNoIHRob3NlIGJhcnJpZXJzIHRvCj4+PiBlbnN1cmUgdGhhIHdl
IGNhbiByZWNsYWltIHRoZSBhdmFpbGFibGUgZ2d0dCBmb3Igb3Vyc2VsdmVzLiBUaGUgYmFycmll
cgo+Pj4gZmx1c2ggd2FzIGltcGxpY2l0IGluc2lkZSB0aGUgaW50ZWxfZ3Rfd2FpdF9mb3JfaWRs
ZSgpIC0tIGV4Y2VwdCBiZWNhdXNlCj4+PiB3ZSB1c2UgaTkxNV9nZW1fZXZpY3QgZnJvbSBpbnNp
ZGUgYW4gYWN0aXZlIHRpbWVsaW5lIGR1cmluZyBleGVjYnVmLCB3ZQo+Pj4gY291bGQgZWFzaWx5
IGVuZCB1cCB3YWl0aW5nIHVwb24gb3Vyc2VsdmVzLgo+Pj4KPj4+IEZpeGVzOiA3OTM2YTIyZGQ0
NjYgKCJkcm0vaTkxNS9ndDogV2FpdCBmb3IgbmV3IHJlcXVlc3RzIGluIGludGVsX2d0X3JldGly
ZV9yZXF1ZXN0cygpIikKPj4+IEZpeGVzOiBhNDZiZmRjODNmZWUgKCJkcm0vaTkxNS9ndDogV2Fp
dCBmb3IgbmV3IHJlcXVlc3RzIGluIGludGVsX2d0X3JldGlyZV9yZXF1ZXN0cygpIikKPj4+IFRl
c3RjYXNlOiBpZ3QvZ2VtX2V4ZWNfcmVsb2MvYmFzaWMtcmFuZ2UKPj4KPj4gQnVnemlsbGE6ID8K
PiAKPiBJdCdzIGJlZW4gaW4gQ0kgc2luY2UgYmVmb3JlIHRoZSB3L2UgKHRoZSB0ZXN0IGl0c2Vs
ZiBpcyBtdWNoLCBtdWNoCj4gb2xkZXIpLCBJIGd1ZXNzIGl0IGhhc24ndCBiZWVuIHZldHRlZCB5
ZXQgYXMgbm8gYnVnIGhhcyBiZWVuIGZpbGVkLgo+ICAgCj4+IFRoaXMgdGVzdCBnZXRzIHBlcm1h
bmVudGx5IHN0dWNrIG9uIHNvbWUgcGxhdGZvcm1zPwo+IAo+IEFsbCAhZnVsbC1wcGd0dCBwbGF0
Zm9ybXMuCgpIb3cgaXQgd2lsbCBjb3BlIHdpdGggYWN0dWFsIGdndHQgcHJlc3N1cmU/IFdhaXQg
Zm9yIHByZXN1bWFibHkgdGhlcmUgCmZvciBhIHJlYXNvbiBhbmQgbm93IGl0IHdpbGwgb25seSBy
ZXRpcmUgd2hhdCdzIGFscmVhZHkgZG9uZSBhbmQgc2VuZCBhbiAKaWRsZSBwdWxzZSBkb3duIHRo
ZSBlbmdpbmVzLgoKUmVnYXJkcywKClR2cnRrbwoKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeA==
