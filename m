Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FB8171918
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jul 2019 15:22:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BDFE06E1D6;
	Tue, 23 Jul 2019 13:22:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DB2A36E1D6
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Jul 2019 13:22:53 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Jul 2019 06:22:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,299,1559545200"; d="scan'208";a="171952853"
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by orsmga003.jf.intel.com with ESMTP; 23 Jul 2019 06:22:52 -0700
Received: from mwajdecz-mobl1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [172.28.174.50])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 x6NDMpRn000827; Tue, 23 Jul 2019 14:22:51 +0100
To: intel-gfx@lists.freedesktop.org, "Daniele Ceraolo Spurio"
 <daniele.ceraolospurio@intel.com>
References: <20190722232048.9970-1-daniele.ceraolospurio@intel.com>
 <20190722232048.9970-4-daniele.ceraolospurio@intel.com>
Date: Tue, 23 Jul 2019 15:22:51 +0200
MIME-Version: 1.0
From: "Michal Wajdeczko" <michal.wajdeczko@intel.com>
Message-ID: <op.z5dt4dbwxaggs7@mwajdecz-mobl1.ger.corp.intel.com>
In-Reply-To: <20190722232048.9970-4-daniele.ceraolospurio@intel.com>
User-Agent: Opera Mail/1.0 (Win32)
Subject: Re: [Intel-gfx] [PATCH 3/9] drm/i915/uc: Unify uC FW selection
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

T24gVHVlLCAyMyBKdWwgMjAxOSAwMToyMDo0MiArMDIwMCwgRGFuaWVsZSBDZXJhb2xvIFNwdXJp
byAgCjxkYW5pZWxlLmNlcmFvbG9zcHVyaW9AaW50ZWwuY29tPiB3cm90ZToKCj4gKwo+ICsjZGVm
aW5lIEdVQ19GV19CTE9CKHByZWZpeF8sIG1ham9yXywgbWlub3JfLCBwYXRjaF8pIFwKPiArVUNf
RldfQkxPQihwcmVmaXhfIyNfZ3VjLCBtYWpvcl8sIG1pbm9yXywgXAo+ICsJICAgX19NQUtFX0dV
Q19GV19QQVRIKHByZWZpeF8sIG1ham9yXywgbWlub3JfLCBwYXRjaF8pKQo+ICsKPiArR1VDX0ZX
X0JMT0Ioc2tsLCAzMywgMCwgMCk7Cj4gK0dVQ19GV19CTE9CKGJ4dCwgMzMsIDAsIDApOwo+ICtH
VUNfRldfQkxPQihrYmwsIDMzLCAwLCAwKTsKPiArR1VDX0ZXX0JMT0IoZ2xrLCAzMywgMCwgMCk7
Cj4gK0dVQ19GV19CTE9CKGljbCwgMzMsIDAsIDApOwo+ICsKPiArLyogbXVzdCBiZSBvcmRlcmVk
IGJhc2Ugb24gcGxhdGZvcm0gKyByZXZpZCwgZnJvbSBuZXdlciB0byBvbGRlciAqLwo+ICtzdGF0
aWMgY29uc3Qgc3RydWN0IGludGVsX3VjX3BsYXRmb3JtX3JlcXVpcmVtZW50IGd1Y19md19ibG9i
c1tdID0gewo+ICsJeyBJTlRFTF9JQ0VMQUtFLAkwLAkmaWNsX2d1Y19md19ibG9iIH0sCj4gKwl7
IElOVEVMX0NPRkZFRUxBS0UsCTAsCSZrYmxfZ3VjX2Z3X2Jsb2IgfSwKPiArCXsgSU5URUxfR0VN
SU5JTEFLRSwJMCwJJmdsa19ndWNfZndfYmxvYiB9LAo+ICsJeyBJTlRFTF9LQUJZTEFLRSwJMCwJ
JmtibF9ndWNfZndfYmxvYiB9LAo+ICsJeyBJTlRFTF9CUk9YVE9OLAkwLAkmYnh0X2d1Y19md19i
bG9iIH0sCj4gKwl7IElOVEVMX1NLWUxBS0UsCTAsCSZza2xfZ3VjX2Z3X2Jsb2IgfSwKPiArfTsK
CkNhbiB3ZSBhdm9pZCBwb2ludGVycyB0byBzZXBhcmF0ZSBibG9iIGRlZmluaXRpb25zID8KV2hh
dCBhYm91dCBkZWZpbmluZyBlYWNoIGZ3IGluIHNpbmdsZSBsaW5lIGxpa2UgYmVsb3cKCiNkZWZp
bmUgSU5URUxfR1VDX0ZJUk1XQVJFX0RFRlMoZndfZGVmKSBcCglmd19kZWYoSUNFTEFLRSwgMCwg
MzMsIDAsIDAsIGljbCwgR1VDKSBcCglmd19kZWYoQ09GRkVFTEFLRSwgMCwgMzMsIDAsIDAsIGti
bCwgR1VDKSBcCglmd19kZWYoR0VNSU5JTEFLRSwgMCwgMzMsIDAsIDAsIGdsaywgR1VDKSBcCglm
d19kZWYoS0FCWUxBS0UsIDAsIDMzLCAwLCAwLCBrYmwsIEdVQykgXAoJZndfZGVmKEJST1hUT04s
IDAsIDMzLCAwLCAwLCBieHQsIEdVQykgXAoJZndfZGVmKFNLWUxBS0UsIDAsIDMzLCAwLCAwLCBz
a2wsIEdVQykgXAoJLyogZW5kICovCgp3aXRoIHNvbWUgZXh0cmEgY29tbW9uIGhlbHBlcnMKCiNk
ZWZpbmUgVE9fTU9EVUxFX0ZJUk1XQVJFKF9wbGF0Zm9ybSwgX3JldiwgX21ham9yLCBfbWlub3Is
IF9wYXRjaCwgIApfcHJlZml4LCBfYnVpbGRlcikgXAoJTU9EVUxFX0ZJUk1XQVJFKF9idWlsZGVy
IyNfRldfUEFUSF9CVUlMREVSKF9wcmVmaXgsIF9tYWpvciwgX21pbm9yLCAgCl9wYXRjaCkpOwoK
I2RlZmluZSBUT19CTE9CX0VOVFJZKF9wbGF0Zm9ybSwgX3JldiwgX21ham9yLCBfbWlub3IsIF9w
YXRjaCwgX3ByZWZpeCwgIApfYnVpbGRlcikgXAp7IFwKCS5wbGF0Zm9ybSA9IElOVEVMXyMjX3Bs
YXRmb3JtLCBcCgkucmV2ID0gKF9yZXYpLCBcCgkubWFqb3IgPSAoX21ham9yKSwgXAoJLm1pbm9y
ID0gKF9taW5vciksIFwKCS5wYXRjaCA9IChfcGF0Y2gpLCBcCgkuYmxvYiA9IF9idWlsZGVyIyNf
RldfUEFUSF9CVUlMREVSKF9wcmVmaXgsIF9tYWpvciwgX21pbm9yLCBfcGF0Y2gpLCBcCn0sCgp0
aGVuIHdlIGNhbiBoYXZlIGltbXV0YWJsZQoKc3RhdGljIGNvbnN0IHN0cnVjdCBpbnRlbF91Y19i
bG9iIGd1Y19md19ibG9ic1tdID0gewpJTlRFTF9HVUNfRklSTVdBUkVfREVGUyhUT19CTE9CX0VO
VFJZKQp9OwpJTlRFTF9HVUNfRklSTVdBUkVfREVGUyhUT19NT0RVTEVfRklSTVdBUkUpCgoodGVz
dGVkIGxvY2FsbHkgZm9yIGZlYXNpYmlsaXR5KQoKTWljaGFsCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
