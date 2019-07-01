Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ED6745BB46
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Jul 2019 14:11:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 598F289CDF;
	Mon,  1 Jul 2019 12:11:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 32FD189CDF
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Jul 2019 12:10:59 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 01 Jul 2019 05:10:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,439,1557212400"; d="scan'208";a="314865040"
Received: from unknown (HELO [10.249.141.63]) ([10.249.141.63])
 by orsmga004.jf.intel.com with ESMTP; 01 Jul 2019 05:10:54 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190701113437.4043-1-lionel.g.landwerlin@intel.com>
 <20190701113437.4043-10-lionel.g.landwerlin@intel.com>
 <156198262577.1583.959905049922494081@skylake-alporthouse-com>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <603a0f73-e7b1-7f39-e194-439ab5bb6a2a@intel.com>
Date: Mon, 1 Jul 2019 15:10:53 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <156198262577.1583.959905049922494081@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v6 09/11] drm/i915/perf: allow holding
 preemption on filtered ctx
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

T24gMDEvMDcvMjAxOSAxNTowMywgQ2hyaXMgV2lsc29uIHdyb3RlOgo+IFF1b3RpbmcgTGlvbmVs
IExhbmR3ZXJsaW4gKDIwMTktMDctMDEgMTI6MzQ6MzUpCj4+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fZXhlY2J1ZmZlci5jIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ2VtL2k5MTVfZ2VtX2V4ZWNidWZmZXIuYwo+PiBpbmRleCBmOTJiYWNlOWNhZmYuLjAx
MmQ2ZDdmNTRlMiAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVf
Z2VtX2V4ZWNidWZmZXIuYwo+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9n
ZW1fZXhlY2J1ZmZlci5jCj4+IEBAIC0yMTA0LDYgKzIxMDQsMTQgQEAgc3RhdGljIGludCBlYl9v
YV9jb25maWcoc3RydWN0IGk5MTVfZXhlY2J1ZmZlciAqZWIpCj4+ICAgICAgICAgIGlmIChlcnIp
Cj4+ICAgICAgICAgICAgICAgICAgcmV0dXJuIGVycjsKPj4gICAKPj4gKyAgICAgICAvKgo+PiAr
ICAgICAgICAqIElmIHRoZSBwZXJmIHN0cmVhbSB3YXMgb3BlbmVkIHdpdGggaG9sZCBwcmVlbXB0
aW9uLCBmbGFnIHRoZQo+PiArICAgICAgICAqIHJlcXVlc3QgcHJvcGVybHkgc28gdGhhdCB0aGUg
cHJpb3JpdHkgb2YgdGhlIHJlcXVlc3QgaXMgYnVtcGVkIG9uY2UKPj4gKyAgICAgICAgKiBpdCBy
ZWFjaGVzIHRoZSBleGVjbGlzdCBwb3J0cy4KPj4gKyAgICAgICAgKi8KPj4gKyAgICAgICBpZiAo
ZWItPmk5MTUtPnBlcmYub2EuZXhjbHVzaXZlX3N0cmVhbS0+aG9sZF9wcmVlbXB0aW9uKQo+PiAr
ICAgICAgICAgICAgICAgZWItPnJlcXVlc3QtPmZsYWdzIHw9IEk5MTVfUkVRVUVTVF9GTEFHU19Q
RVJGOwo+IEp1c3QgdG8gcmVhc3N1cmUgbXlzZWxmIHRoYXQgdGhpcyBpcyB0aGUgYmVoYXZpb3Vy
IHlvdToKPgo+IElmIHRoZSBleGNsdXNpdmVfc3RyZWFtIGlzIGNoYW5nZWQgYmVmb3JlIHRoZSBy
ZXF1ZXN0IGlzIGV4ZWN1dGVkLCBpdCBpcwo+IGxpa2VseSB0aGF0IHdlIG5vIGxvbmdlciBub3Rp
Y2UgdGhlIGVhcmxpZXIgcHJlZW1wdGlvbi1wcm90ZWN0aW9uLiBUaGlzCj4gc2hvdWxkIG5vdCBt
YXR0ZXIgYmVjYXVzZSB0aGUgbGlzdGVuZXIgaXMgbm8gbG9uZ2VyIGludGVyZXN0ZWQgaW4gdGhv
c2UKPiBldmVudHM/Cj4gLUNocmlzCj4KClllYWgsIGRyb3BwaW5nIHRoZSBwZXJmIHN0cmVhbSBi
ZWZvcmUgeW91ciBxdWVyaWVzIGNvbXBsZXRlIGFuZCB5b3UncmUgCmluIHVuZGVmaW5lZCBiZWhh
dmlvciB0ZXJyaXRvcnkuCgoKLUxpb25lbAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4
