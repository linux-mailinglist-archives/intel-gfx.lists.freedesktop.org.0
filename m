Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 663361042B1
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Nov 2019 18:58:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 896AB6E9DC;
	Wed, 20 Nov 2019 17:58:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7DC4E6E9CE
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Nov 2019 17:58:46 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Nov 2019 09:58:46 -0800
X-IronPort-AV: E=Sophos;i="5.69,222,1571727600"; d="scan'208";a="209825561"
Received: from ldmartin-desk1.jf.intel.com (HELO ldmartin-desk1)
 ([10.24.11.38])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Nov 2019 09:58:45 -0800
Date: Wed, 20 Nov 2019 09:58:39 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <20191120175839.hnw6tic22tzky545@ldmartin-desk1>
X-Patchwork-Hint: ignore
References: <20191120173155.20168-1-ramalingam.c@intel.com>
 <20191120173155.20168-3-ramalingam.c@intel.com>
 <395fa41c-89d4-5c7d-8260-6ca2198a5e2a@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <395fa41c-89d4-5c7d-8260-6ca2198a5e2a@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915: Skip the Wa_1604555607
 verification
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
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCBOb3YgMjAsIDIwMTkgYXQgMDU6NTA6NTFQTSArMDAwMCwgVHZydGtvIFVyc3VsaW4g
d3JvdGU6Cj4KPk9uIDIwLzExLzIwMTkgMTc6MzEsIFJhbWFsaW5nYW0gQyB3cm90ZToKPj5BdCBU
R0wgQTAgc3RlcHBpbmcsIEZGX01PREUyIHJlZ2lzdGVyIHJlYWQgYmFjayBpcyBicm9rZW4sIGhl
bmNlCj4+ZGlzYWJsaW5nIHRoZSBXQSB2ZXJpZmljYXRpb24uCj4+Cj4+SGVscGVyIGZ1bmN0aW9u
IGNhbGxlZCB3YV93cml0ZV9tYXNrZWRfb3Jfbm9fdmVyaWZ5IGlzIGRlZmluZWQgZm9yIHRoZQo+
PnNhbWUgcHVycG9zZS4KPj4KPj5TaWduZWQtb2ZmLWJ5OiBSYW1hbGluZ2FtIEMgPHJhbWFsaW5n
YW0uY0BpbnRlbC5jb20+Cj4+Y2M6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBsaW51
eC5pbnRlbC5jb20+Cj4+LS0tCj4+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3Jr
YXJvdW5kcy5jIHwgMjAgKysrKysrKysrKysrKysrKysrKy0KPj4gIDEgZmlsZSBjaGFuZ2VkLCAx
OSBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4+Cj4+ZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jCj4+aW5kZXggOTNlZmVmYTIwNWQ2Li4xNjk4MzMwYzZm
MjMgMTAwNjQ0Cj4+LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3Vu
ZHMuYwo+PisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMK
Pj5AQCAtMTYwLDYgKzE2MCwyMCBAQCB3YV93cml0ZV9tYXNrZWRfb3Ioc3RydWN0IGk5MTVfd2Ff
bGlzdCAqd2FsLCBpOTE1X3JlZ190IHJlZywgdTMyIG1hc2ssCj4+ICAJX3dhX2FkZCh3YWwsICZ3
YSk7Cj4+ICB9Cj4+K3N0YXRpYyB2b2lkCj4+K3dhX3dyaXRlX21hc2tlZF9vcl9ub192ZXJpZnko
c3RydWN0IGk5MTVfd2FfbGlzdCAqd2FsLCBpOTE1X3JlZ190IHJlZywgdTMyIG1hc2ssCj4+KwkJ
ICAgdTMyIHZhbCkKPj4rewo+PisJc3RydWN0IGk5MTVfd2Egd2EgPSB7Cj4+KwkJLnJlZyAgPSBy
ZWcsCj4+KwkJLm1hc2sgPSBtYXNrLAo+PisJCS52YWwgID0gdmFsLAo+PisJCS5yZWFkID0gMCwK
Pj4rCX07Cj4+Kwo+PisJX3dhX2FkZCh3YWwsICZ3YSk7Cj4+K30KPj4rCj4+ICBzdGF0aWMgdm9p
ZAo+PiAgd2FfbWFza2VkX2VuKHN0cnVjdCBpOTE1X3dhX2xpc3QgKndhbCwgaTkxNV9yZWdfdCBy
ZWcsIHUzMiB2YWwpCj4+ICB7Cj4+QEAgLTU3OCw3ICs1OTIsMTEgQEAgc3RhdGljIHZvaWQgdGds
X2N0eF93b3JrYXJvdW5kc19pbml0KHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSwKPj4g
IAl2YWwgPSBpbnRlbF91bmNvcmVfcmVhZChlbmdpbmUtPnVuY29yZSwgRkZfTU9ERTIpOwo+PiAg
CXZhbCAmPSB+RkZfTU9ERTJfVERTX1RJTUVSX01BU0s7Cj4+ICAJdmFsIHw9IEZGX01PREUyX1RE
U19USU1FUl8xMjg7Cj4+LQl3YV93cml0ZV9tYXNrZWRfb3Iod2FsLCBGRl9NT0RFMiwgRkZfTU9E
RTJfVERTX1RJTUVSX01BU0ssIHZhbCk7Cj4+KwlpZiAoSVNfVEdMX1JFVklEKGVuZ2luZS0+dW5j
b3JlLT5pOTE1LCAwLCBUR0xfUkVWSURfQTApKQo+Cj5UaGVyZSBpcyBlbmdpbmUtPmk5MTUuCj4K
Pj4rCQl3YV93cml0ZV9tYXNrZWRfb3Jfbm9fdmVyaWZ5KHdhbCwgRkZfTU9ERTIsCj4+KwkJCQkJ
ICAgICBGRl9NT0RFMl9URFNfVElNRVJfTUFTSywgdmFsKTsKPj4rCWVsc2UKPj4rCQl3YV93cml0
ZV9tYXNrZWRfb3Iod2FsLCBGRl9NT0RFMiwgRkZfTU9ERTJfVERTX1RJTUVSX01BU0ssIHZhbCk7
Cj4KPllvdSBkaWQgbm90IHRoaW5rIHN1Z2dlc3RlZCBhbHRlcm5hdGl2ZSB3aGVyZSByZWFkIG1h
c2sgaXMgZGlyZWN0bHkgCj5wYXNzZWQgaW4gd291bGQgd29yayBiZXR0ZXI/IEl0IHdvdWxkIHJl
YWQgYSBiaXQgbW9yZSBjb21wYWN0Ogo+Cj4gIF9fd2Ffd3JpdGVfbWFza2VkX29yKC4uLiwgSVNf
VEdMX1JFVklEKC4uKSA/IDAgOiB2YWwpCj4KPlVwIHRvIHlvdSB3aGF0IHlvdSBwcmVmZXIsIEkg
Z3Vlc3MgdGhlIGV4cGxpY2l0IF9ub192ZXJpZnkgYnJpbmdzIHNvbWUgCj5zZWxmLWRvY3VtZW50
aW5nIGJlbmVmaXRzLgo+Cj5BbHNvLCBkbyB5b3UgdGhpbmsgdGhlcmUgaXMgdmFsdWUgaW4gaGF2
aW5nIHR3byBwYXRjaGVzIGluc3RlYWQgb2YgCj5qdXN0IHNxdWFzaGluZyBpbnRvIG9uZT8gSSB3
b3VsZCBiZSB0ZW1wdGVkIHRvIHNxdWFzaC4KCnllcCwgZWl0aGVyIHNxdWFzaCBvciByZW9yZGVy
IHRoZSBwYXRjaGVzICh0aGUgZmlyc3Qgb25lIGJlaW5nIGFib3V0IHRoZQpoZWxwZXIgb25seSkg
c28gd2UgZG9uJ3QgaGF2ZSBhIGJyb2tlbiBiZWhhdmlvciBpbiB0aGlzIHBvaW50IG9mIHRoZQpi
cmFuY2guCgpMdWNhcyBEZSBNYXJjaGkKCj4KPlJlZ2FyZHMsCj4KPlR2cnRrbwo+Cj4+ICB9Cj4+
ICBzdGF0aWMgdm9pZAo+Pgo+X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KPkludGVsLWdmeCBtYWlsaW5nIGxpc3QKPkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKPmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtZ2Z4Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
