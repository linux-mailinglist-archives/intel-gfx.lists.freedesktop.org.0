Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 48F2343632
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jun 2019 15:03:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8CEC58985A;
	Thu, 13 Jun 2019 13:03:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk
 [IPv6:2a00:1098:0:82:1000:25:2eeb:e3e3])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C82E4882DF;
 Thu, 13 Jun 2019 13:03:20 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: gtucker) with ESMTPSA id 647AD260D60
To: "Ser, Simon" <simon.ser@intel.com>,
 "Hiler, Arkadiusz" <arkadiusz.hiler@intel.com>,
 "Latvala, Petri" <petri.latvala@intel.com>
References: <73773a5061681c502db373df698d2d24b4ad267a.1559562608.git.guillaume.tucker@collabora.com>
 <af5b9b35eb142b53fb7cb4684b494bc6ccb047f1.1559562608.git.guillaume.tucker@collabora.com>
 <facd43d06d2f0f2060163727ba1bcd17a871ca84.camel@intel.com>
From: Guillaume Tucker <guillaume.tucker@collabora.com>
Message-ID: <163b867c-7234-1c98-a63e-cd3b69570533@collabora.com>
Date: Thu, 13 Jun 2019 14:03:17 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <facd43d06d2f0f2060163727ba1bcd17a871ca84.camel@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t 3/4] i915/gem_create: use
 __atomic_* instead of __sync_*
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
Cc: "igt-dev@lists.freedesktop.org" <igt-dev@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gMDYvMDYvMjAxOSAwODoyMCwgU2VyLCBTaW1vbiB3cm90ZToKPiBPbiBNb24sIDIwMTktMDYt
MDMgYXQgMTI6NTQgKzAxMDAsIEd1aWxsYXVtZSBUdWNrZXIgd3JvdGU6Cj4+IFJlcGxhY2UgY2Fs
bHMgdG8gdGhlIG9sZGVyIF9fc3luY18qIGZ1bmN0aW9ucyB3aXRoIHRoZSBuZXcgX19hdG9taWNf
Kgo+PiBzdGFuZGFyZCBvbmVzLiAgVGhpcyBmaXhlcyBidWlsZHMgb24gc29tZSBhcmNoaXRlY3R1
cmVzLCBpbiBwYXJ0aWN1bGFyCj4+IE1JUFMgd2hpY2ggZG9lc24ndCBoYXZlIF9fc3luY19hZGRf
YW5kX2ZldGNoXzggYW5kCj4+IF9fc3luY192YWxfY29tcGFyZV9hbmRfc3dhcF84IGZvciA2NC1i
aXQgdmFyaWFibGUgaGFuZGxpbmcuCj4gCj4gQ2FuJ3Qgd2UgdXNlIHRoZSBDMTEgYXRvbWljcyBm
cm9tIHN0ZGF0b21pYy5oIGluc3RlYWQ/Cj4gCj4gRm9yIGluc3RhbmNlOgo+IGh0dHBzOi8vZW4u
Y3BwcmVmZXJlbmNlLmNvbS93L2MvYXRvbWljL2F0b21pY19jb21wYXJlX2V4Y2hhbmdlCgpZZXMs
IHRoYW5rcyBmb3IgcG9pbnRpbmcgdGhpcyBvdXQuICBUaGUgc3RkYXRvbWljLmggbWFjcm9zIGFs
c28KdXNlIHRoZSBfX2F0b21pY18qIGZ1bmN0aW9ucyBzbyB0aGUgbGliYXRvbWljIGRlcGVuZGVu
Y3kgcmVtYWlucwp0aGUgc2FtZSwgYnV0IGl0J3MgYSBiaXQgYmV0dGVyIHRoYW4gdXNpbmcgdGhl
IF9fYXRvbWljXyoKZnVuY3Rpb25zIGRpcmVjdGx5LiAgSW4gcGFydGljdWxhciwgc3RkYXRvbWlj
LmggZW5mb3JjZXMgdGhlIHVzZQpvZiB0aGUgX0F0b21pYyB0eXBlIG1vZGlmaWVyIHdoaWNoIHNl
ZW1zIHZlcnkgaW1wb3J0YW50IGVzcCBmb3IKcG9pbnRlcnMgdG8gYXRvbWljIHZhcmlhYmxlcy4g
IFRoYXQncyBhbHNvIGJlaW5nIGZpeGVkIGluIHRoZSB2Mi4KCkd1aWxsYXVtZQoKPj4gU2lnbmVk
LW9mZi1ieTogR3VpbGxhdW1lIFR1Y2tlciA8Z3VpbGxhdW1lLnR1Y2tlckBjb2xsYWJvcmEuY29t
Pgo+PiAtLS0KPj4gIHRlc3RzL01ha2VmaWxlLmFtICAgICAgIHwgIDIgKy0KPj4gIHRlc3RzL2k5
MTUvZ2VtX2NyZWF0ZS5jIHwgMTIgKysrKysrKysrKy0tCj4+ICAyIGZpbGVzIGNoYW5nZWQsIDEx
IGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCj4+Cj4+IGRpZmYgLS1naXQgYS90ZXN0cy9N
YWtlZmlsZS5hbSBiL3Rlc3RzL01ha2VmaWxlLmFtCj4+IGluZGV4IDUwOTdkZWJmNjI5Yy4uMThh
MGYxZjIwNTkyIDEwMDY0NAo+PiAtLS0gYS90ZXN0cy9NYWtlZmlsZS5hbQo+PiArKysgYi90ZXN0
cy9NYWtlZmlsZS5hbQo+PiBAQCAtOTAsNyArOTAsNyBAQCBBTV9MREZMQUdTID0gLVdsLC0tYXMt
bmVlZGVkCj4+ICBkcm1faW1wb3J0X2V4cG9ydF9DRkxBR1MgPSAkKEFNX0NGTEFHUykgJChUSFJF
QURfQ0ZMQUdTKQo+PiAgZHJtX2ltcG9ydF9leHBvcnRfTERBREQgPSAkKExEQUREKSAtbHB0aHJl
YWQKPj4gIGdlbV9jcmVhdGVfQ0ZMQUdTID0gJChBTV9DRkxBR1MpICQoVEhSRUFEX0NGTEFHUykK
Pj4gLWdlbV9jcmVhdGVfTERBREQgPSAkKExEQUREKSAtbHB0aHJlYWQKPj4gK2dlbV9jcmVhdGVf
TERBREQgPSAkKExEQUREKSAtbHB0aHJlYWQgLWxhdG9taWMKPj4gIGdlbV9jbG9zZV9yYWNlX0NG
TEFHUyA9ICQoQU1fQ0ZMQUdTKSAkKFRIUkVBRF9DRkxBR1MpCj4+ICBnZW1fY2xvc2VfcmFjZV9M
REFERCA9ICQoTERBREQpIC1scHRocmVhZAo+PiAgZ2VtX2N0eF90aHJhc2hfQ0ZMQUdTID0gJChB
TV9DRkxBR1MpICQoVEhSRUFEX0NGTEFHUykKPj4gZGlmZiAtLWdpdCBhL3Rlc3RzL2k5MTUvZ2Vt
X2NyZWF0ZS5jIGIvdGVzdHMvaTkxNS9nZW1fY3JlYXRlLmMKPj4gaW5kZXggNDNjYmY0NWYyODli
Li5hNGFlYjk0YjNmOTMgMTAwNjQ0Cj4+IC0tLSBhL3Rlc3RzL2k5MTUvZ2VtX2NyZWF0ZS5jCj4+
ICsrKyBiL3Rlc3RzL2k5MTUvZ2VtX2NyZWF0ZS5jCj4+IEBAIC0xNTYsNiArMTU2LDE0IEBAIHN0
YXRpYyB2b2lkIGludmFsaWRfbm9uYWxpZ25lZF9zaXplKGludCBmZCkKPj4gIAlnZW1fY2xvc2Uo
ZmQsIGNyZWF0ZS5oYW5kbGUpOwo+PiAgfQo+PiAgCj4+ICtzdGF0aWMgdWludDY0X3QgYXRvbWlj
X2NvbXBhcmVfc3dhcF91NjQodWludDY0X3QgKnB0ciwgdWludDY0X3Qgb2xkdmFsLAo+PiArCQkJ
CQl1aW50NjRfdCBuZXd2YWwpCj4+ICt7Cj4+ICsJX19hdG9taWNfY29tcGFyZV9leGNoYW5nZV9u
KHB0ciwgJm9sZHZhbCwgbmV3dmFsLCAwLAo+PiArCQkJCSAgICBfX0FUT01JQ19TRVFfQ1NULCBf
X0FUT01JQ19TRVFfQ1NUKTsKPj4gKwlyZXR1cm4gb2xkdmFsOwo+PiArfQo+PiArCj4+ICBzdGF0
aWMgdWludDY0X3QgZ2V0X25wYWdlcyh1aW50NjRfdCAqZ2xvYmFsLCB1aW50NjRfdCBucGFnZXMp
Cj4+ICB7Cj4+ICAJdWludDY0X3QgdHJ5LCBvbGQsIG1heDsKPj4gQEAgLTE2NSw3ICsxNzMsNyBA
QCBzdGF0aWMgdWludDY0X3QgZ2V0X25wYWdlcyh1aW50NjRfdCAqZ2xvYmFsLCB1aW50NjRfdCBu
cGFnZXMpCj4+ICAJCW9sZCA9IG1heDsKPj4gIAkJdHJ5ID0gMSArIG5wYWdlcyAlIChtYXggLyAy
KTsKPj4gIAkJbWF4IC09IHRyeTsKPj4gLQl9IHdoaWxlICgobWF4ID0gX19zeW5jX3ZhbF9jb21w
YXJlX2FuZF9zd2FwKGdsb2JhbCwgb2xkLCBtYXgpKSAhPSBvbGQpOwo+PiArCX0gd2hpbGUgKCht
YXggPSBhdG9taWNfY29tcGFyZV9zd2FwX3U2NChnbG9iYWwsIG9sZCwgbWF4KSkgIT0gb2xkKTsK
Pj4gIAo+PiAgCXJldHVybiB0cnk7Cj4+ICB9Cj4+IEBAIC0yMDIsNyArMjEwLDcgQEAgc3RhdGlj
IHZvaWQgKnRocmVhZF9jbGVhcih2b2lkICpkYXRhKQo+PiAgCQl9Cj4+ICAJCWdlbV9jbG9zZShp
OTE1LCBjcmVhdGUuaGFuZGxlKTsKPj4gIAo+PiAtCQlfX3N5bmNfYWRkX2FuZF9mZXRjaCgmYXJn
LT5tYXgsIG5wYWdlcyk7Cj4+ICsJCV9fYXRvbWljX2FkZF9mZXRjaCgmYXJnLT5tYXgsIG5wYWdl
cywgX19BVE9NSUNfU0VRX0NTVCk7Cj4+ICAJfQo+PiAgCj4+ICAJcmV0dXJuIE5VTEw7CgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
