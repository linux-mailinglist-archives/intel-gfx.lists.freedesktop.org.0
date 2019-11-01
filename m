Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B072DEC914
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Nov 2019 20:31:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 93A956E095;
	Fri,  1 Nov 2019 19:31:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E71896E095
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Nov 2019 19:31:49 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 01 Nov 2019 12:31:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,256,1569308400"; d="scan'208";a="231337582"
Received: from orsosgc001.ra.intel.com (HELO orsosgc001.amr.corp.intel.com)
 ([10.23.184.150])
 by fmsmga002.fm.intel.com with ESMTP; 01 Nov 2019 12:31:49 -0700
Date: Fri, 1 Nov 2019 12:31:49 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20191101193149.GB56205@orsosgc001.amr.corp.intel.com>
References: <20191101181820.12932-1-chris@chris-wilson.co.uk>
 <20191101192116.12647-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191101192116.12647-1-chris@chris-wilson.co.uk>
User-Agent: Mutt/1.12.0 (2019-05-25)
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/perf: Reverse a ternary to make
 sparse happy
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

T24gRnJpLCBOb3YgMDEsIDIwMTkgYXQgMDc6MjE6MTZQTSArMDAwMCwgQ2hyaXMgV2lsc29uIHdy
b3RlOgo+QXZvaWQKPgo+ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wZXJmLmM6MjQ0Mjo4NTog
d2FybmluZzogZHViaW91czogeCB8ICF5Cj4KPnNpbXBseSBieSBpbnZlcnRpbmcgdGhlIHByZWRp
Y2F0ZSBhbmQgcmV2ZXJzaW5nIHRoZSB0ZXJuYXJ5Lgo+Cj52MjogTW9yZSB0aGUgbG9uZyBsaW5l
cyBpbnRvIHRoZWlyIG93biBmdW5jdGlvbiBzbyB0aGVyZSBpcyBubyBjb25mdXNpb24KPm9uIG9w
ZXJhdG9yIHByZWNlZGVuY2UuCj4KPlNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNA
Y2hyaXMtd2lsc29uLmNvLnVrPgo+Q2M6IFVtZXNoIE5lcmxpZ2UgUmFtYXBwYSA8dW1lc2gubmVy
bGlnZS5yYW1hcHBhQGludGVsLmNvbT4KPkNjOiBMaW9uZWwgTGFuZHdlcmxpbiA8bGlvbmVsLmcu
bGFuZHdlcmxpbkBpbnRlbC5jb20+CgpSZXZpZXdlZC1ieTogVW1lc2ggTmVybGlnZSBSYW1hcHBh
IDx1bWVzaC5uZXJsaWdlLnJhbWFwcGFAaW50ZWwuY29tPgoKVGhhbmtzLApVbWVzaAoKPi0tLQo+
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGVyZi5jIHwgMTUgKysrKysrKysrKy0tLS0tCj4g
MSBmaWxlIGNoYW5nZWQsIDEwIGluc2VydGlvbnMoKyksIDUgZGVsZXRpb25zKC0pCj4KPmRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BlcmYuYyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfcGVyZi5jCj5pbmRleCBhOGMyMzE4ZDNkNWUuLjFmZDZiYWM4YTRmZSAxMDA2
NDQKPi0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGVyZi5jCj4rKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X3BlcmYuYwo+QEAgLTI0MjgsNiArMjQyOCwxMyBAQCBzdGF0aWMg
aW50IGdlbjhfZW5hYmxlX21ldHJpY19zZXQoc3RydWN0IGk5MTVfcGVyZl9zdHJlYW0gKnN0cmVh
bSkKPiAJcmV0dXJuIGVtaXRfb2FfY29uZmlnKHN0cmVhbSwgb2FfY29uZmlnLCBvYV9jb250ZXh0
KHN0cmVhbSkpOwo+IH0KPgo+K3N0YXRpYyB1MzIgcmVwb3J0X2N0eF9zd2l0Y2hlcyhjb25zdCBz
dHJ1Y3QgaTkxNV9wZXJmX3N0cmVhbSAqc3RyZWFtKQo+K3sKPisJcmV0dXJuIF9NQVNLRURfRklF
TEQoR0VOMTJfT0FHX09BX0RFQlVHX0RJU0FCTEVfQ1RYX1NXSVRDSF9SRVBPUlRTLAo+KwkJCSAg
ICAgKHN0cmVhbS0+c2FtcGxlX2ZsYWdzICYgU0FNUExFX09BX1JFUE9SVCkgPwo+KwkJCSAgICAg
MCA6IEdFTjEyX09BR19PQV9ERUJVR19ESVNBQkxFX0NUWF9TV0lUQ0hfUkVQT1JUUyk7Cj4rfQo+
Kwo+IHN0YXRpYyBpbnQgZ2VuMTJfZW5hYmxlX21ldHJpY19zZXQoc3RydWN0IGk5MTVfcGVyZl9z
dHJlYW0gKnN0cmVhbSkKPiB7Cj4gCXN0cnVjdCBpbnRlbF91bmNvcmUgKnVuY29yZSA9IHN0cmVh
bS0+dW5jb3JlOwo+QEAgLTI0NDEsMTIgKzI0NDgsMTAgQEAgc3RhdGljIGludCBnZW4xMl9lbmFi
bGVfbWV0cmljX3NldChzdHJ1Y3QgaTkxNV9wZXJmX3N0cmVhbSAqc3RyZWFtKQo+IAkJCSAgIF9N
QVNLRURfQklUX0VOQUJMRShHRU4xMl9PQUdfT0FfREVCVUdfRElTQUJMRV9DTEtfUkFUSU9fUkVQ
T1JUUyB8Cj4gCQkJCQkgICAgICBHRU4xMl9PQUdfT0FfREVCVUdfSU5DTFVERV9DTEtfUkFUSU8p
IHwKPiAJCQkgICAvKgo+LQkJCSAgICAqIElmIHRoZSB1c2VyIGRpZG4ndCByZXF1aXJlIE9BIHJl
cG9ydHMsIGluc3RydWN0IHRoZQo+LQkJCSAgICAqIGhhcmR3YXJlIG5vdCB0byBlbWl0IGN0eCBz
d2l0Y2ggcmVwb3J0cy4KPisJCQkgICAgKiBJZiB0aGUgdXNlciBkaWRuJ3QgcmVxdWlyZSBPQSBy
ZXBvcnRzLCBpbnN0cnVjdAo+KwkJCSAgICAqIHRoZSBoYXJkd2FyZSBub3QgdG8gZW1pdCBjdHgg
c3dpdGNoIHJlcG9ydHMuCj4gCQkJICAgICovCj4tCQkJICAgIShzdHJlYW0tPnNhbXBsZV9mbGFn
cyAmIFNBTVBMRV9PQV9SRVBPUlQpID8KPi0JCQkgICBfTUFTS0VEX0JJVF9FTkFCTEUoR0VOMTJf
T0FHX09BX0RFQlVHX0RJU0FCTEVfQ1RYX1NXSVRDSF9SRVBPUlRTKSA6Cj4tCQkJICAgX01BU0tF
RF9CSVRfRElTQUJMRShHRU4xMl9PQUdfT0FfREVCVUdfRElTQUJMRV9DVFhfU1dJVENIX1JFUE9S
VFMpKTsKPisJCQkgICByZXBvcnRfY3R4X3N3aXRjaGVzKHN0cmVhbSkpOwo+Cj4gCWludGVsX3Vu
Y29yZV93cml0ZSh1bmNvcmUsIEdFTjEyX09BR19PQUdMQkNUWENUUkwsIHBlcmlvZGljID8KPiAJ
CQkgICAoR0VOMTJfT0FHX09BR0xCQ1RYQ1RSTF9DT1VOVEVSX1JFU1VNRSB8Cj4tLSAKPjIuMjQu
MC5yYzIKPgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
