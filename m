Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AEB0458D5
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2019 11:36:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 582D7893A8;
	Fri, 14 Jun 2019 09:36:01 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8CB83894C5
 for <Intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2019 09:35:59 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Jun 2019 02:35:59 -0700
X-ExtLoop1: 1
Received: from yyosef-mobl.ger.corp.intel.com (HELO [10.252.23.42])
 ([10.252.23.42])
 by orsmga003.jf.intel.com with ESMTP; 14 Jun 2019 02:35:58 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, Intel-gfx@lists.freedesktop.org
References: <20190613133539.12620-1-tvrtko.ursulin@linux.intel.com>
 <20190613133539.12620-17-tvrtko.ursulin@linux.intel.com>
 <156043460670.17012.7120509194419771135@skylake-alporthouse-com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <15623051-38a0-88a6-a1d2-578abb0117ea@linux.intel.com>
Date: Fri, 14 Jun 2019 10:35:57 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <156043460670.17012.7120509194419771135@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [RFC 16/28] drm/i915: Compartmentalize
 i915_ggtt_probe_hw
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

Ck9uIDEzLzA2LzIwMTkgMTU6MDMsIENocmlzIFdpbHNvbiB3cm90ZToKPiBRdW90aW5nIFR2cnRr
byBVcnN1bGluICgyMDE5LTA2LTEzIDE0OjM1OjI3KQo+PiBGcm9tOiBUdnJ0a28gVXJzdWxpbiA8
dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+Pgo+PiBIYXZpbmcgbWFkZSBzdGFydCB0byBiZXR0
ZXIgY29kZSBjb21wYXJ0bWVudGFsaXphdGlvbiBieSBpbnRyb2R1Y2luZwo+PiBzdHJ1Y3QgaW50
ZWxfZ3QsIGNvbnRpbnVlIHRoZSB0aGVtZSBlbHNld2hlcmUgaW4gY29kZSBieSBtYWtpbmcgZnVu
Y3Rpb25zCj4+IHRha2UgcGFyYW1ldGVycyB0YWtlIHdoYXQgbG9naWNhbGx5IG1ha2VzIG1vc3Qg
c2Vuc2UgZm9yIHRoZW0gaW5zdGVhZCBvZgo+PiB0aGUgZ2xvYmFsIHN0cnVjdCBkcm1faTkxNV9w
cml2YXRlLgo+IAo+IElzIHRoYXQgYSBjYW4gb2Ygd29ybXMgSSBzZWU/IDopCj4gCj4gV2hpbGUg
eW91IGFyZSBoZXJlLCBjYXJlIHRvIHB1bGwgaW4gdGhlIGdtY2ggcHJvYmUgc28gd2UgY2FuIGRy
b3AgdGhlCj4gZnJhbmtlbnN0ZWluIGFwcHJvYWNoLgoKV2hhdCBleGFjdGx5IGRvIHlvdSBtZWFu
PyBQdWxsIGluIHdoYXQgZnJvbSB3aGVyZSB0byB3aGVyZT8KClJlZ2FyZHMsCgpUdnJ0a28KCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
