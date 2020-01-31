Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E204F14ED11
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Jan 2020 14:15:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 23E556E998;
	Fri, 31 Jan 2020 13:15:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A92436E217
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 Jan 2020 13:15:29 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 31 Jan 2020 05:15:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,385,1574150400"; d="scan'208";a="230250552"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga003.jf.intel.com with ESMTP; 31 Jan 2020 05:15:27 -0800
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 7A1DF5C0D3B; Fri, 31 Jan 2020 15:14:38 +0200 (EET)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <158047170013.2430.15418748422936870751@skylake-alporthouse-com>
References: <20200131075716.2212299-1-chris@chris-wilson.co.uk>
 <87y2tn973j.fsf@gaia.fi.intel.com>
 <158047170013.2430.15418748422936870751@skylake-alporthouse-com>
Date: Fri, 31 Jan 2020 15:14:38 +0200
Message-ID: <87tv4b939d.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [CI 1/3] drm/i915/gt: Skip rmw for masked registers
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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
ZyBNaWthIEt1b3BwYWxhICgyMDIwLTAxLTMxIDExOjUxOjQ0KQo+PiBDaHJpcyBXaWxzb24gPGNo
cmlzQGNocmlzLXdpbHNvbi5jby51az4gd3JpdGVzOgo+PiAKPj4gPiBBIG1hc2tlZCByZWdpc3Rl
ciBkb2VzIG5vdCBuZWVkIHJtdyB0byB1cGRhdGUsIGFuZCBpdCBpcyBiZXN0IG5vdCB0byB1c2UK
Pj4gPiBzdWNoIGEgc2VxdWVuY2UuCj4+ID4KPj4gPiBSZXBvcnRlZC1ieTogVmlsbGUgU3lyasOk
bMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KPj4gPiBTaWduZWQtb2ZmLWJ5OiBD
aHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPj4gPiBDYzogVmlsbGUgU3ly
asOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KPj4gPiBDYzogVHZydGtvIFVy
c3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KPj4gPiAtLS0KPj4gPiAgZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYyB8IDMyICsrKysrKysrKysrKysrLS0t
LS0tLQo+PiA+ICAxIGZpbGUgY2hhbmdlZCwgMjEgaW5zZXJ0aW9ucygrKSwgMTEgZGVsZXRpb25z
KC0pCj4+ID4KPj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxf
d29ya2Fyb3VuZHMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRz
LmMKPj4gPiBpbmRleCA1YTdkYjI3OWY3MDIuLmU0YzJiNmQ0MmY0NiAxMDA2NDQKPj4gPiAtLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jCj4+ID4gKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYwo+PiA+IEBAIC0xMTYs
NyArMTE2LDggQEAgc3RhdGljIHZvaWQgX3dhX2FkZChzdHJ1Y3QgaTkxNV93YV9saXN0ICp3YWws
IGNvbnN0IHN0cnVjdCBpOTE1X3dhICp3YSkKPj4gPiAgICAgICAgICAgICAgIH0gZWxzZSB7Cj4+
ID4gICAgICAgICAgICAgICAgICAgICAgIHdhXyA9ICZ3YWwtPmxpc3RbbWlkXTsKPj4gPiAgCj4+
ID4gLSAgICAgICAgICAgICAgICAgICAgIGlmICgod2EtPm1hc2sgJiB+d2FfLT5tYXNrKSA9PSAw
KSB7Cj4+ID4gKyAgICAgICAgICAgICAgICAgICAgIGlmICgod2EtPm1hc2sgfCB3YV8tPm1hc2sp
ICYmCj4+IAo+PiBEb24ndCB3ZSB3YW50IHRvIGRpc2NhcmQgaWYgc29tZW9uZSB0cmllcyB0byBk
ZW1vdGUgYSBtYXNrZWQKPj4gb25lIGludG8gYSBwbGFpbj8KPgo+IFRoYXQgc2hvdWxkIHRocm93
IHRoZSBlcnJvciwgcmlnaHQ/Cj4KPiBJZiBlaXRoZXIgdXNlZCBhIG1hc2sgYW5kIG5vdyB3ZSBk
b24ndCwgdGhlbiAwICYgeCA9PSAwID0+IERSTV9FUlJPUi4KClllcywgaXQgd2lsbCB0aHJvdyB0
aGUgZXJyb3IuIE15IG1pc3Rha2UuCgpCdXQgaWYgd2UgaGF2ZSBhIG1hc2ssIHdlIHNob3VsZCBu
b3QgYWxsb3cgbm9ubWFza2VkIGFkZGl0aW9ucwphc3dlbGw/IFNvIG1hc2sgPT0gMCB3b3VsZCBh
bHdheXMgYmUgbWFza2VkIHJlZ2lzdGVyIGFuZCB5b3UKY2FuJ3QgbWl4LgoKLU1pa2EKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
