Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 45E8BB2540
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Sep 2019 20:37:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C71C6F430;
	Fri, 13 Sep 2019 18:37:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CC8D36F430
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Sep 2019 18:37:06 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Sep 2019 11:37:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,492,1559545200"; d="scan'208";a="190391252"
Received: from dceraolo-linux.fm.intel.com (HELO [10.1.27.145]) ([10.1.27.145])
 by orsmga006.jf.intel.com with ESMTP; 13 Sep 2019 11:37:05 -0700
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190913141652.27958-1-mika.kuoppala@linux.intel.com>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <1bb7ea37-5ee5-b13c-2991-a57eadf55a3e@intel.com>
Date: Fri, 13 Sep 2019 11:36:54 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190913141652.27958-1-mika.kuoppala@linux.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915: Update Gen11 forcewake ranges
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

CgpPbiA5LzEzLzE5IDc6MTYgQU0sIE1pa2EgS3VvcHBhbGEgd3JvdGU6Cj4gRGFuaWVsZSBub3Rp
Y2VkIG5ldyByZW5kZXIgcmFuZ2VzIGluIEdlbjExIGZ3IHRhYmxlLgo+IAo+IEJzcGVjOiAxODMz
MQo+IENjOiBEYW5pZWxlIENlcmFvbG8gU3B1cmlvIDxkYW5pZWxlLmNlcmFvbG9zcHVyaW9AaW50
ZWwuY29tPgo+IFNpZ25lZC1vZmYtYnk6IE1pa2EgS3VvcHBhbGEgPG1pa2Eua3VvcHBhbGFAbGlu
dXguaW50ZWwuY29tPgoKUmV2aWV3ZWQtYnk6IERhbmllbGUgQ2VyYW9sbyBTcHVyaW8gPGRhbmll
bGUuY2VyYW9sb3NwdXJpb0BpbnRlbC5jb20+CgpEYW5pZWxlCgo+IC0tLQo+ICAgZHJpdmVycy9n
cHUvZHJtL2k5MTUvaW50ZWxfdW5jb3JlLmMgfCAyMyArKysrKysrKystLS0tLS0tLS0tLS0tLQo+
ICAgMSBmaWxlIGNoYW5nZWQsIDkgaW5zZXJ0aW9ucygrKSwgMTQgZGVsZXRpb25zKC0pCj4gCj4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3VuY29yZS5jIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaW50ZWxfdW5jb3JlLmMKPiBpbmRleCA5ZTU4M2YxM2E5ZTQuLjczMjA4
MmE3MjAyMiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF91bmNvcmUu
Ywo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3VuY29yZS5jCj4gQEAgLTgwNSw5
ICs4MDUsNiBAQCB2b2lkIGFzc2VydF9mb3JjZXdha2VzX2FjdGl2ZShzdHJ1Y3QgaW50ZWxfdW5j
b3JlICp1bmNvcmUsCj4gICAvKiBXZSBnaXZlIGZhc3QgcGF0aHMgZm9yIHRoZSByZWFsbHkgY29v
bCByZWdpc3RlcnMgKi8KPiAgICNkZWZpbmUgTkVFRFNfRk9SQ0VfV0FLRShyZWcpICgocmVnKSA8
IDB4NDAwMDApCj4gICAKPiAtI2RlZmluZSBHRU4xMV9ORUVEU19GT1JDRV9XQUtFKHJlZykgXAo+
IC0JKChyZWcpIDwgMHg0MDAwMCB8fCAoKHJlZykgPj0gMHgxYzAwMDAgJiYgKHJlZykgPCAweDFk
YzAwMCkpCj4gLQo+ICAgI2RlZmluZSBfX2dlbjZfcmVnX3JlYWRfZndfZG9tYWlucyh1bmNvcmUs
IG9mZnNldCkgXAo+ICAgKHsgXAo+ICAgCWVudW0gZm9yY2V3YWtlX2RvbWFpbnMgX19md2Q7IFwK
PiBAQCAtOTAzLDEyICs5MDAsNyBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGludGVsX2ZvcmNld2Fr
ZV9yYW5nZSBfX3Zsdl9md19yYW5nZXNbXSA9IHsKPiAgIH0pCj4gICAKPiAgICNkZWZpbmUgX19n
ZW4xMV9md3RhYmxlX3JlZ19yZWFkX2Z3X2RvbWFpbnModW5jb3JlLCBvZmZzZXQpIFwKPiAtKHsg
XAo+IC0JZW51bSBmb3JjZXdha2VfZG9tYWlucyBfX2Z3ZCA9IDA7IFwKPiAtCWlmIChHRU4xMV9O
RUVEU19GT1JDRV9XQUtFKChvZmZzZXQpKSkgXAo+IC0JCV9fZndkID0gZmluZF9md19kb21haW4o
dW5jb3JlLCBvZmZzZXQpOyBcCj4gLQlfX2Z3ZDsgXAo+IC19KQo+ICsJZmluZF9md19kb21haW4o
dW5jb3JlLCBvZmZzZXQpCj4gICAKPiAgIC8qICpNdXN0KiBiZSBzb3J0ZWQgYnkgb2Zmc2V0ISBT
ZWUgaW50ZWxfc2hhZG93X3RhYmxlX2NoZWNrKCkuICovCj4gICBzdGF0aWMgY29uc3QgaTkxNV9y
ZWdfdCBnZW44X3NoYWRvd2VkX3JlZ3NbXSA9IHsKPiBAQCAtMTAwNSw4ICs5OTcsOSBAQCBzdGF0
aWMgY29uc3Qgc3RydWN0IGludGVsX2ZvcmNld2FrZV9yYW5nZSBfX2Nodl9md19yYW5nZXNbXSA9
IHsKPiAgICNkZWZpbmUgX19nZW4xMV9md3RhYmxlX3JlZ193cml0ZV9md19kb21haW5zKHVuY29y
ZSwgb2Zmc2V0KSBcCj4gICAoeyBcCj4gICAJZW51bSBmb3JjZXdha2VfZG9tYWlucyBfX2Z3ZCA9
IDA7IFwKPiAtCWlmIChHRU4xMV9ORUVEU19GT1JDRV9XQUtFKChvZmZzZXQpKSAmJiAhaXNfZ2Vu
MTFfc2hhZG93ZWQob2Zmc2V0KSkgXAo+IC0JCV9fZndkID0gZmluZF9md19kb21haW4odW5jb3Jl
LCBvZmZzZXQpOyBcCj4gKwljb25zdCB1MzIgX19vZmZzZXQgPSAob2Zmc2V0KTsgXAo+ICsJaWYg
KCFpc19nZW4xMV9zaGFkb3dlZChfX29mZnNldCkpIFwKPiArCQlfX2Z3ZCA9IGZpbmRfZndfZG9t
YWluKHVuY29yZSwgX19vZmZzZXQpOyBcCj4gICAJX19md2Q7IFwKPiAgIH0pCj4gICAKPiBAQCAt
MTA2NSw5ICsxMDU4LDExIEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgaW50ZWxfZm9yY2V3YWtlX3Jh
bmdlIF9fZ2VuMTFfZndfcmFuZ2VzW10gPSB7Cj4gICAJR0VOX0ZXX1JBTkdFKDB4OTQwMCwgMHg5
N2ZmLCBGT1JDRVdBS0VfQUxMKSwKPiAgIAlHRU5fRldfUkFOR0UoMHg5ODAwLCAweGFmZmYsIEZP
UkNFV0FLRV9CTElUVEVSKSwKPiAgIAlHRU5fRldfUkFOR0UoMHhiMDAwLCAweGI0N2YsIEZPUkNF
V0FLRV9SRU5ERVIpLAo+IC0JR0VOX0ZXX1JBTkdFKDB4YjQ4MCwgMHhkZmZmLCBGT1JDRVdBS0Vf
QkxJVFRFUiksCj4gLQlHRU5fRldfUkFOR0UoMHhlMDAwLCAweGU4ZmYsIEZPUkNFV0FLRV9SRU5E
RVIpLAo+IC0JR0VOX0ZXX1JBTkdFKDB4ZTkwMCwgMHgyNDNmZiwgRk9SQ0VXQUtFX0JMSVRURVIp
LAo+ICsJR0VOX0ZXX1JBTkdFKDB4YjQ4MCwgMHhkZWZmLCBGT1JDRVdBS0VfQkxJVFRFUiksCj4g
KwlHRU5fRldfUkFOR0UoMHhkZjAwLCAweGU4ZmYsIEZPUkNFV0FLRV9SRU5ERVIpLAo+ICsJR0VO
X0ZXX1JBTkdFKDB4ZTkwMCwgMHgxNmRmZiwgRk9SQ0VXQUtFX0JMSVRURVIpLAo+ICsJR0VOX0ZX
X1JBTkdFKDB4MTZlMDAsIDB4MTlmZmYsIEZPUkNFV0FLRV9SRU5ERVIpLAo+ICsJR0VOX0ZXX1JB
TkdFKDB4MWEwMDAsIDB4MjQzZmYsIEZPUkNFV0FLRV9CTElUVEVSKSwKPiAgIAlHRU5fRldfUkFO
R0UoMHgyNDQwMCwgMHgyNDdmZiwgRk9SQ0VXQUtFX1JFTkRFUiksCj4gICAJR0VOX0ZXX1JBTkdF
KDB4MjQ4MDAsIDB4M2ZmZmYsIEZPUkNFV0FLRV9CTElUVEVSKSwKPiAgIAlHRU5fRldfUkFOR0Uo
MHg0MDAwMCwgMHgxYmZmZmYsIDApLAo+IApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZng=
