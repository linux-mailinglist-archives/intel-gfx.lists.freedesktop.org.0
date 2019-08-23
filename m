Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CE74B9AA2E
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Aug 2019 10:20:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A56F86EC12;
	Fri, 23 Aug 2019 08:20:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5009C6EC18
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Aug 2019 08:20:02 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Aug 2019 01:20:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,420,1559545200"; d="scan'208";a="196435676"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by fmsmga001.fm.intel.com with ESMTP; 23 Aug 2019 01:20:01 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 7B4C55C1F09; Fri, 23 Aug 2019 11:19:12 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <156639752599.1374.7223177553009431491@skylake-alporthouse-com>
References: <20190821142336.21609-1-chris@chris-wilson.co.uk>
 <156639752599.1374.7223177553009431491@skylake-alporthouse-com>
Date: Fri, 23 Aug 2019 11:19:12 +0300
Message-ID: <87v9uothtr.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/execlists: Set priority hint prior
 to submission
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+IHdyaXRlczoKCj4gUXVvdGlu
ZyBDaHJpcyBXaWxzb24gKDIwMTktMDgtMjEgMTU6MjM6MzYpCj4+IFNpbmNlIHdlIG5vdyBydW4g
cHJvY2Vzc19jc2IoKSBvdXRzaWRlIG9mIHRoZSBlbmdpbmUtPmFjdGl2ZS5sb2NrLCB3ZQo+PiBj
YW4gcHJvY2VzcyBhIENTLWV2ZW50IGltbWVkaWF0ZWx5IHVwb24gb3VyIEVMU1Agd3JpdGUuIEFz
IHdlIGN1cnJlbnRseQo+PiBpbnNwZWN0IHRoZSBwZW5kaW5nIHF1ZXVlICphZnRlciogdGhlIEVM
U1Agd3JpdGUsIHRoZXJlIGlzIGFuCj4+IG9wcG9ydHVuaXR5IGZvciBhIENTLWV2ZW50IHRvIHVw
ZGF0ZSB0aGUgcGVuZGluZyBxdWV1ZSBiZWZvcmUgd2UgY2FuCj4+IHJlYWQgaXQsIG1ha2luZyBv
dXJzZWx2ZXMgY2hhc2VzIGFuIGludmFsaWQgcG9pbnRlci4KPj4gCj4KPiBCdWd6aWxsYTogaHR0
cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTExNDI3CgpFbm91Z2gg
dG8gbWFrZSBtZSBjb252aW5jZWQsClJldmlld2VkLWJ5OiBNaWthIEt1b3BwYWxhIDxtaWthLmt1
b3BwYWxhQGxpbnV4LmludGVsLmNvbT4KCj4+IEZpeGVzOiBkZjQwMzA2OTAyOWQgKCJkcm0vaTkx
NS9leGVjbGlzdHM6IExpZnQgcHJvY2Vzc19jc2IoKSBvdXQgb2YgdGhlIGlycS1vZmYgc3Bpbmxv
Y2siKQo+PiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5j
by51az4KPj4gQ2M6IE1pa2EgS3VvcHBhbGEgPG1pa2Eua3VvcHBhbGFAbGludXguaW50ZWwuY29t
Pgo+PiAtLS0KPj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jIHwgMiArLQo+
PiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCj4+IAo+PiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYwo+PiBpbmRleCA0NDc4MGU3ZmFmZWMuLmQ0MjU4
NDQzOWY1MSAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJj
LmMKPj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMKPj4gQEAgLTEz
MzUsOSArMTMzNSw5IEBAIHN0YXRpYyB2b2lkIGV4ZWNsaXN0c19kZXF1ZXVlKHN0cnVjdCBpbnRl
bF9lbmdpbmVfY3MgKmVuZ2luZSkKPj4gICAgICAgICBpZiAoc3VibWl0KSB7Cj4+ICAgICAgICAg
ICAgICAgICAqcG9ydCA9IGV4ZWNsaXN0c19zY2hlZHVsZV9pbihsYXN0LCBwb3J0IC0gZXhlY2xp
c3RzLT5wZW5kaW5nKTsKPj4gICAgICAgICAgICAgICAgIG1lbXNldChwb3J0ICsgMSwgMCwgKGxh
c3RfcG9ydCAtIHBvcnQpICogc2l6ZW9mKCpwb3J0KSk7Cj4+IC0gICAgICAgICAgICAgICBleGVj
bGlzdHNfc3VibWl0X3BvcnRzKGVuZ2luZSk7Cj4+ICAgICAgICAgICAgICAgICBleGVjbGlzdHMt
PnN3aXRjaF9wcmlvcml0eV9oaW50ID0KPj4gICAgICAgICAgICAgICAgICAgICAgICAgc3dpdGNo
X3ByaW8oZW5naW5lLCAqZXhlY2xpc3RzLT5wZW5kaW5nKTsKPj4gKyAgICAgICAgICAgICAgIGV4
ZWNsaXN0c19zdWJtaXRfcG9ydHMoZW5naW5lKTsKPj4gICAgICAgICB9IGVsc2Ugewo+PiAgICAg
ICAgICAgICAgICAgcmluZ19zZXRfcGF1c2VkKGVuZ2luZSwgMCk7Cj4+ICAgICAgICAgfQo+PiAt
LSAKPj4gMi4yMy4wLnJjMQo+PiAKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtZ2Z4
