Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 15A657E73D
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Aug 2019 02:41:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE25F6E852;
	Fri,  2 Aug 2019 00:41:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D1C236E852
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Aug 2019 00:41:07 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 01 Aug 2019 17:41:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,336,1559545200"; d="scan'208";a="163783515"
Received: from ldmartin-desk1.jf.intel.com (HELO ldmartin-desk1)
 ([10.24.9.111])
 by orsmga007.jf.intel.com with ESMTP; 01 Aug 2019 17:41:06 -0700
Date: Thu, 1 Aug 2019 17:41:06 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: =?utf-8?B?Sm9zw6k=?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <20190802004106.qgsdwbjz7k4yqg2v@ldmartin-desk1>
References: <20190801232812.28375-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190801232812.28375-1-jose.souza@intel.com>
X-Patchwork-Hint: ignore
User-Agent: NeoMutt/20180716
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: Get transcoder power domain
 before reading its register
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
Cc: intel-gfx@lists.freedesktop.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCBBdWcgMDEsIDIwMTkgYXQgMDQ6Mjg6MTFQTSAtMDcwMCwgSm9zZSBTb3V6YSB3cm90
ZToKPldoZW4gZ2V0dGluZyB0aGUgcGlwZXMgYXR0YWNoZWQgdG8gZW5jb2RlciBpZiBpdCBpcyBu
b3QgYSBlRFAgZW5jb2Rlcgo+aXQgaXRlcmF0ZXMgb3ZlciBhbGwgcGlwZXMgYW5kIHJlYWQgYSB0
cmFuc2NvZGVyIHJlZ2lzdGVyLgo+QnV0IGl0IHNob3VsZCBub3QgcmVhZCBhIHRyYW5zY29kZXIg
cmVnaXN0ZXIgYmVmb3JlIGdldCBpdHMgcG93ZXIKPmRvbWFpbi4KPgo+SXQgd2FzIG5vdCBhIGlz
c3VlIGluIGdlbnMgb2xkZXIgdGhhbiAxMiBiZWNhdXNlIGlmIGl0IG9ubHkgaGFkCj5wb3J0IEEg
Y29ubmVjdGVkIGl0IHdvdWxkIGJlIGF0dGFjaGVkIHRvIEVEUCBhbmQgaXQgd291bGQgc2tpcCBh
bGwKPnRoZSB0cmFuc2NvZGVycyByZWFkb3V0LCBpZiBpdCBoYWQgbW9yZSB0aGFuIG9uZSBwb3J0
IGNvbm5lY3RlZCwKPnBpcGUgQiB3b3VsZCBjYXVzZSBQRzMgdG8gYmUgb24gYW5kIGl0IGNvbnRh
aW5zIGFsbCBvdGhlcgo+dHJhbnNjb2RlcnMuCj4KPkJ1dCBvbiBnZW4gMTIgdGhlcmUgaXMgbm8g
RURQIHRyYW5zY29kZXIgc28gaXQgaXMgYWx3YXlzIGl0ZXJhdGluZwo+b3ZlciBhbGwgcGlwZXMg
YW5kIGlmIG9ubHkgb25lIHNpbmsgaXMgY29ubmVjdGVkLCBQRzMgaXMga2VwdCBvZmYKPmFuZCBy
ZWFkaW5nIG90aGVyIHRyYW5zY29kZXJzIHJlZ2lzdGVycyB3b3VsZCBjYXVzZSBhCj51bmNsYWlt
ZWQgcmVhZCB3YXJuaW5nLgo+Cj5TbyBoZXJlIGdldHRpbmcgdGhlIHBvd2VyIGRvbWFpbiBvZiB0
aGUgdHJhbnNjb2RlciBvbmx5IGlmIGl0IGlzCj5lbmFibGVkLCBvdGhlcndpc2UgaXQgaXMgbm90
IGNvbm5lY3RlZCB0byB0aGUgRERJLgo+Cj5DYzogTHVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1h
cmNoaUBpbnRlbC5jb20+Cj5TaWduZWQtb2ZmLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxq
b3NlLnNvdXphQGludGVsLmNvbT4KPi0tLQo+IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZGRpLmMgfCA4ICsrKysrKysrCj4gMSBmaWxlIGNoYW5nZWQsIDggaW5zZXJ0aW9ucygr
KQo+Cj5kaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGku
YyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMKPmluZGV4IGZiNTg4
NDUwMjBkYy4uNjYwYmIwMDFiZTM1IDEwMDY0NAo+LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kZGkuYwo+KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kZGkuYwo+QEAgLTIwMTUsNiArMjAxNSwxMiBAQCBzdGF0aWMgdm9pZCBpbnRlbF9kZGlf
Z2V0X2VuY29kZXJfcGlwZXMoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsCj4gCWZvcl9l
YWNoX3BpcGUoZGV2X3ByaXYsIHApIHsKPiAJCWVudW0gdHJhbnNjb2RlciBjcHVfdHJhbnNjb2Rl
ciA9IChlbnVtIHRyYW5zY29kZXIpcDsKPiAJCXVuc2lnbmVkIGludCBwb3J0X21hc2ssIGRkaV9z
ZWxlY3Q7Cj4rCQlpbnRlbF93YWtlcmVmX3QgdHJhbnNfd2FrZXJlZjsKPisKPisJCXRyYW5zX3dh
a2VyZWYgPSBpbnRlbF9kaXNwbGF5X3Bvd2VyX2dldF9pZl9lbmFibGVkKGRldl9wcml2LAo+KwkJ
CQkJCQkJICAgUE9XRVJfRE9NQUlOX1RSQU5TQ09ERVIoY3B1X3RyYW5zY29kZXIpKTsKCkFuZCBv
biBUaWdlciBMYWtlIFBPV0VSX0RPTUFJTl9UUkFOU0NPREVSX0IsIFBPV0VSX0RPTUFJTl9UUkFO
U0NPREVSX0MKYW5kIFBPV0VSX0RPTUFJTl9UUkFOU0NPREVSX0QgYXJlIG9uIFBXMy4gUE9XRVJf
RE9NQUlOX1RSQU5TQ09ERVJfQSBpcwpvbiBQVzEuCgpMb29rcyBjb3JyZWN0LiAKClJldmlld2Vk
LWJ5OiBMdWNhcyBEZSBNYXJjaGkgPGx1Y2FzLmRlbWFyY2hpQGludGVsLmNvbT4KCkFyZSB0aGUg
d2FybmluZ3Mgbm93IGZpeGVkPwoKdGhhbmtzCkx1Y2FzIERlIE1hcmNoaQoKCgoKPisJCWlmICgh
dHJhbnNfd2FrZXJlZikKPisJCQljb250aW51ZTsKPgo+IAkJaWYgKElOVEVMX0dFTihkZXZfcHJp
dikgPj0gMTIpIHsKPiAJCQlwb3J0X21hc2sgPSBUR0xfVFJBTlNfRERJX1BPUlRfTUFTSzsKPkBA
IC0yMDI1LDYgKzIwMzEsOCBAQCBzdGF0aWMgdm9pZCBpbnRlbF9kZGlfZ2V0X2VuY29kZXJfcGlw
ZXMoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsCj4gCQl9Cj4KPiAJCXRtcCA9IEk5MTVf
UkVBRChUUkFOU19ERElfRlVOQ19DVEwoY3B1X3RyYW5zY29kZXIpKTsKPisJCWludGVsX2Rpc3Bs
YXlfcG93ZXJfcHV0KGRldl9wcml2LCBQT1dFUl9ET01BSU5fVFJBTlNDT0RFUihjcHVfdHJhbnNj
b2RlciksCj4rCQkJCQl0cmFuc193YWtlcmVmKTsKPgo+IAkJaWYgKCh0bXAgJiBwb3J0X21hc2sp
ICE9IGRkaV9zZWxlY3QpCj4gCQkJY29udGludWU7Cj4tLSAKPjIuMjIuMAo+Cl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
