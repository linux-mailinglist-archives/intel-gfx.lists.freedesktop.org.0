Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 843F2EEA33
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Nov 2019 21:49:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF0D36E86A;
	Mon,  4 Nov 2019 20:49:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E509E6E868;
 Mon,  4 Nov 2019 20:49:14 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Nov 2019 12:49:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,268,1569308400"; d="scan'208";a="200594633"
Received: from vrkonda-desk.ra.intel.com ([134.134.244.70])
 by fmsmga007.fm.intel.com with ESMTP; 04 Nov 2019 12:49:13 -0800
Date: Mon, 4 Nov 2019 12:49:13 -0800
From: Vanshidhar Konda <vanshidhar.r.konda@intel.com>
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Message-ID: <20191104204913.7lrvnvjur7erp2xk@vrkonda-desk.ra.intel.com>
References: <20191104171330.24821-1-janusz.krzysztofik@linux.intel.com>
 <20191104171330.24821-5-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191104171330.24821-5-janusz.krzysztofik@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH i-g-t v5 4/4] tests/gem_ctx_shared: Align
 objects using minimum GTT alignment
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
Cc: intel-gfx@lists.freedesktop.org, igt-dev@lists.freedesktop.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCBOb3YgMDQsIDIwMTkgYXQgMDY6MTM6MzBQTSArMDEwMCwgSmFudXN6IEtyenlzenRv
ZmlrIHdyb3RlOgo+ZXhlYy1zaGFyZWQtZ3R0LSogc3VidGVzdHMgdXNlIGhhcmRjb2RlZCB2YWx1
ZXMgZm9yIG9iamVjdCBzaXplIGFuZAo+c29mdHBpbiBvZmZzZXQsIGJhc2VkIG9uIDRrQiBHVFQg
YWxpZ25tZW50IGFzc3VtcHRpb24uICBUaGF0IG1heSByZXN1bHQKPmluIHRob3NlIHN1YnRlc3Rz
IGZhaWxpbmcgd2hlbiBydW4gb24gZnV0dXJlIGJhY2tpbmcgc3RvcmVzIHdpdGgKPnBvc3NpYmx5
IGxhcmdlciBtaW5pbXVtIHBhZ2Ugc2l6ZXMuCj4KPlJlcGxhY2UgaGFyZGNvZGVkIGNvbnN0YW50
cyB3aXRoIHZhbHVlcyBjYWxjdWxhdGVkIGZyb20gbWluaW11bSBHVFQKPmFsaWdubWVudCBvZiBh
Y3R1YWwgYmFja2luZyBzdG9yZSB0aGUgdGVzdCBpcyBydW5uaW5nIG9uLgo+Cj52MjogVXBkYXRl
IGhlbHBlciBuYW1lLCB1c2UgJ21pbmltdW0gR1RUIGFsaWdubWVudCcgdGVybSBhY3Jvc3MgdGhl
Cj4gICAgY2hhbmdlLCBhZGp1c3QgdmFyaWFibGUgbmFtZS4KPnYzOiBOYW1lIHRoZSB2YXJpYWJs
ZSAnc3RyaWRlJywgbm90ICdhbGlnbm1lbnQnLCBpdCBiZXR0ZXIgcmVmbGVjdHMKPiAgICBpdHMg
cHVycG9zZSAoQ2hyaXMpLgo+Cj5TaWduZWQtb2ZmLWJ5OiBKYW51c3ogS3J6eXN6dG9maWsgPGph
bnVzei5rcnp5c3p0b2Zpa0BsaW51eC5pbnRlbC5jb20+Cj5SZXZpZXdlZC1ieTogQ2hyaXMgV2ls
c29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4tLS0KPiB0ZXN0cy9pOTE1L2dlbV9jdHhf
c2hhcmVkLmMgfCA3ICsrKysrLS0KPiAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspLCAy
IGRlbGV0aW9ucygtKQo+Cj5kaWZmIC0tZ2l0IGEvdGVzdHMvaTkxNS9nZW1fY3R4X3NoYXJlZC5j
IGIvdGVzdHMvaTkxNS9nZW1fY3R4X3NoYXJlZC5jCj5pbmRleCBmNzg1MjQ4Mi4uY2I3MjZiNGQg
MTAwNjQ0Cj4tLS0gYS90ZXN0cy9pOTE1L2dlbV9jdHhfc2hhcmVkLmMKPisrKyBiL3Rlc3RzL2k5
MTUvZ2VtX2N0eF9zaGFyZWQuYwo+QEAgLTQxLDYgKzQxLDcgQEAKPiAjaW5jbHVkZSAiaWd0X3Jh
bmQuaCIKPiAjaW5jbHVkZSAiaWd0X3ZnZW0uaCIKPiAjaW5jbHVkZSAic3luY19maWxlLmgiCj4r
I2luY2x1ZGUgImk5MTUvZ2VtX2d0dF90b3BvbG9neS5jIgo+Cj4gI2RlZmluZSBMTyAwCj4gI2Rl
ZmluZSBISSAxCj5AQCAtMTk1LDYgKzE5Niw3IEBAIHN0YXRpYyB2b2lkIGV4ZWNfc2hhcmVkX2d0
dChpbnQgaTkxNSwgdW5zaWduZWQgaW50IHJpbmcpCj4gCXVpbnQzMl90IHNjcmF0Y2gsICpzOwo+
IAl1aW50MzJfdCBiYXRjaCwgY3NbMTZdOwo+IAl1aW50NjRfdCBvZmZzZXQ7Cj4rCXVpbnQ2NF90
IHN0cmlkZTsKPiAJaW50IGk7Cj4KPiAJZ2VtX3JlcXVpcmVfcmluZyhpOTE1LCByaW5nKTsKPkBA
IC0yMDMsNyArMjA1LDggQEAgc3RhdGljIHZvaWQgZXhlY19zaGFyZWRfZ3R0KGludCBpOTE1LCB1
bnNpZ25lZCBpbnQgcmluZykKPiAJY2xvbmUgPSBnZW1fY29udGV4dF9jbG9uZShpOTE1LCAwLCBJ
OTE1X0NPTlRFWFRfQ0xPTkVfVk0sIDApOwo+Cj4gCS8qIEZpbmQgYSBob2xlIGJpZyBlbm91Z2gg
Zm9yIGJvdGggb2JqZWN0cyBsYXRlciAqLwo+LQlzY3JhdGNoID0gZ2VtX2NyZWF0ZShpOTE1LCAx
NjM4NCk7Cj4rCXN0cmlkZSA9IDIgKiBnZW1fZ3R0X21pbl9hbGlnbm1lbnQoaTkxNSk7Cj4rCXNj
cmF0Y2ggPSBnZW1fY3JlYXRlKGk5MTUsIDIgKiBzdHJpZGUpOwo+IAlnZW1fd3JpdGUoaTkxNSwg
c2NyYXRjaCwgMCwgJmJiZSwgc2l6ZW9mKGJiZSkpOwo+IAlvYmouaGFuZGxlID0gc2NyYXRjaDsK
PiAJZ2VtX2V4ZWNidWYoaTkxNSwgJmV4ZWNidWYpOwo+QEAgLTI0Niw3ICsyNDksNyBAQCBzdGF0
aWMgdm9pZCBleGVjX3NoYXJlZF9ndHQoaW50IGk5MTUsIHVuc2lnbmVkIGludCByaW5nKQo+IAln
ZW1fd3JpdGUoaTkxNSwgYmF0Y2gsIDAsIGNzLCBzaXplb2YoY3MpKTsKPgo+IAlvYmouaGFuZGxl
ID0gYmF0Y2g7Cj4tCW9iai5vZmZzZXQgKz0gODE5MjsgLyogbWFrZSBzdXJlIHdlIGRvbid0IGNh
dXNlIGFuIGV2aWN0aW9uISAqLwo+KwlvYmoub2Zmc2V0ICs9IHN0cmlkZTsgLyogbWFrZSBzdXJl
IHdlIGRvbid0IGNhdXNlIGFuIGV2aWN0aW9uISAqLwo+IAlleGVjYnVmLnJzdmQxID0gY2xvbmU7
Cj4gCWlmIChnZW4gPiAzICYmIGdlbiA8IDYpCj4gCQlleGVjYnVmLmZsYWdzIHw9IEk5MTVfRVhF
Q19TRUNVUkU7Cj4tLSAKPjIuMjEuMAoKUmV2aWV3ZWQtYnk6IFZhbnNoaWRoYXIgS29uZGEgPHZh
bnNoaWRoYXIuci5rb25kYUBpbnRlbC5jb20+Cgo+Cl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeA==
