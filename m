Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EFE16E83F
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Jul 2019 17:55:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 10BEC6E847;
	Fri, 19 Jul 2019 15:55:05 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 849D16E847
 for <Intel-gfx@lists.freedesktop.org>; Fri, 19 Jul 2019 15:55:03 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Jul 2019 08:55:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,283,1559545200"; d="scan'208";a="159138069"
Received: from dceraolo-linux.fm.intel.com (HELO [10.1.27.145]) ([10.1.27.145])
 by orsmga007.jf.intel.com with ESMTP; 19 Jul 2019 08:55:02 -0700
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 Intel-gfx@lists.freedesktop.org
References: <20190719094845.6242-1-tvrtko.ursulin@linux.intel.com>
 <20190719094845.6242-2-tvrtko.ursulin@linux.intel.com>
 <cf84d009-9f0f-80a1-7919-23b369f37998@intel.com>
Message-ID: <af924d44-9729-1208-6f11-5b3c9cabd406@intel.com>
Date: Fri, 19 Jul 2019 08:54:44 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <cf84d009-9f0f-80a1-7919-23b369f37998@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 1/2] Revert "drm/i915/guc: Turn on GuC/HuC
 auto mode"
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

CgpPbiA3LzE5LzE5IDg6NTAgQU0sIERhbmllbGUgQ2VyYW9sbyBTcHVyaW8gd3JvdGU6Cj4gCj4g
Cj4gT24gNy8xOS8xOSAyOjQ4IEFNLCBUdnJ0a28gVXJzdWxpbiB3cm90ZToKPj4gRnJvbTogVHZy
dGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KPj4KPj4gVGhpcyByZXZlcnRz
IGNvbW1pdCBmNzc0ZjA5NjQ5MTkyZjMyNmZhMDMwNTY0YWZkM2Y4ZjVkODJjMWU0Lgo+Pgo+PiBJ
ZiBHdUMgZmlybXdhcmUgaXMgbm90IHByZXNlbnQgb24gdGhlIGZpbGVzeXN0ZW0gZHJpdmVyIGNy
YXNoZXMgdGhlCj4+IG1hY2hpbmUgb24gYm9vdC4KPj4KPiAKPiBEbyB5b3UgaGF2ZSBhIGxvZz8g
SSBjYW4ndCByZXByb2R1Y2UgdGhpcyBvbiBhIFNLTCwgSSdtIGp1c3QgZ2V0dGluZzoKPiAKPiBb
NTU2NjcuMDI2NzA3XSBpOTE1IDAwMDA6MDA6MDIuMDogRGlyZWN0IGZpcm13YXJlIGxvYWQgZm9y
IAo+IGk5MTUvc2tsX2d1Y18zMy4wLjAuYmluIGZhaWxlZCB3aXRoIGVycm9yIC0yCj4gWzU1NjY3
LjAyNjcxNF0gW2RybV0gR3VDOiBGYWlsZWQgdG8gZmV0Y2ggZmlybXdhcmUgCj4gaTkxNS9za2xf
Z3VjXzMzLjAuMC5iaW4gKGVycm9yIC0yKQo+IFs1NTY2Ny4wMjY3MTddIFtkcm1dIEd1QzogRmly
bXdhcmUgY2FuIGJlIGRvd25sb2FkZWQgZnJvbSAKPiBodHRwczovL2dpdC5rZXJuZWwub3JnL3B1
Yi9zY20vbGludXgva2VybmVsL2dpdC9maXJtd2FyZS9saW51eC1maXJtd2FyZS5naXQvdHJlZS9p
OTE1IAo+IAo+IFs1NTY2Ny4wODE4ODVdIGk5MTUgMDAwMDowMDowMi4wOiBEZXZpY2UgaW5pdGlh
bGl6YXRpb24gZmFpbGVkICgtOCkKPiBbNTU2NjcuMDgxOTQ5XSBpOTE1OiBwcm9iZSBvZiAwMDAw
OjAwOjAyLjAgZmFpbGVkIHdpdGggZXJyb3IgLTgKPiAKPiAKPiBUaGlzIGlzIG9uIHRoZSBsYXRl
c3QgdGlwIChqdXN0IGZldGNoZWQpLgo+IAo+IERhbmllbGUKPiAKCkZvdW5kIHlvdXIgY292ZXIg
bGV0dGVyIHdpdGggdGhlIGxpbmtzIHRvIHRoZSBsb2dzIGluICBteSBzcGFtIGZvbGRlciAKKGRh
bW4gZmlsdGVyISksIHBsZWFzZSBpZ25vcmUgdGhlIGFib3ZlIHJlcXVlc3QuCgpEYW5pZWxlCgo+
PiBGaXhlczogZjc3NGYwOTY0OTE5ICgiZHJtL2k5MTUvZ3VjOiBUdXJuIG9uIEd1Qy9IdUMgYXV0
byBtb2RlIikKPj4gQ2M6IE1pY2hhbCBXYWpkZWN6a28gPG1pY2hhbC53YWpkZWN6a29AaW50ZWwu
Y29tPgo+PiBDYzogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4KPj4gQ2M6IEpv
b25hcyBMYWh0aW5lbiA8am9vbmFzLmxhaHRpbmVuQGxpbnV4LmludGVsLmNvbT4KPj4gQ2M6IFJv
ZHJpZ28gVml2aSA8cm9kcmlnby52aXZpQGludGVsLmNvbT4KPj4gQ2M6IENocmlzIFdpbHNvbiA8
Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+PiBDYzogRGFuaWVsZSBDZXJhb2xvIFNwdXJpbyA8
ZGFuaWVsZS5jZXJhb2xvc3B1cmlvQGludGVsLmNvbT4KPj4gQ2M6IEphbmkgTmlrdWxhIDxqYW5p
Lm5pa3VsYUBsaW51eC5pbnRlbC5jb20+Cj4+IENjOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCj4+IC0tLQo+PiDCoCBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BhcmFtcy5oIHwg
MiArLQo+PiDCoCAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkK
Pj4KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGFyYW1zLmggCj4+
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wYXJhbXMuaAo+PiBpbmRleCA1NzM2YzU1Njk0
ZmUuLmQyOWFkZTNiN2RlNiAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9wYXJhbXMuaAo+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BhcmFtcy5oCj4+
IEBAIC01NCw3ICs1NCw3IEBAIHN0cnVjdCBkcm1fcHJpbnRlcjsKPj4gwqDCoMKgwqDCoCBwYXJh
bShpbnQsIGRpc2FibGVfcG93ZXJfd2VsbCwgLTEpIFwKPj4gwqDCoMKgwqDCoCBwYXJhbShpbnQs
IGVuYWJsZV9pcHMsIDEpIFwKPj4gwqDCoMKgwqDCoCBwYXJhbShpbnQsIGludmVydF9icmlnaHRu
ZXNzLCAwKSBcCj4+IC3CoMKgwqAgcGFyYW0oaW50LCBlbmFibGVfZ3VjLCAtMSkgXAo+PiArwqDC
oMKgIHBhcmFtKGludCwgZW5hYmxlX2d1YywgMCkgXAo+PiDCoMKgwqDCoMKgIHBhcmFtKGludCwg
Z3VjX2xvZ19sZXZlbCwgLTEpIFwKPj4gwqDCoMKgwqDCoCBwYXJhbShjaGFyICosIGd1Y19maXJt
d2FyZV9wYXRoLCBOVUxMKSBcCj4+IMKgwqDCoMKgwqAgcGFyYW0oY2hhciAqLCBodWNfZmlybXdh
cmVfcGF0aCwgTlVMTCkgXAo+Pgo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCj4gSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdAo+IEludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKPiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLWdmeApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZng=
