Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BCB691BE6D1
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Apr 2020 21:00:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 123C66F37F;
	Wed, 29 Apr 2020 19:00:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 688DA6F37F
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Apr 2020 19:00:17 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21062388-1500050 for multiple; Wed, 29 Apr 2020 20:00:14 +0100
MIME-Version: 1.0
In-Reply-To: <20200429185457.26235-1-ville.syrjala@linux.intel.com>
References: <20200429185457.26235-1-ville.syrjala@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <158818681313.7361.3601920727210957828@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Wed, 29 Apr 2020 20:00:13 +0100
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915: Nuke mode.vrefresh usage
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

UXVvdGluZyBWaWxsZSBTeXJqYWxhICgyMDIwLTA0LTI5IDE5OjU0OjU1KQo+IEZyb206IFZpbGxl
IFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4gCj4gbW9kZS52cmVm
cmVzaCBpcyByb3VuZGVkIHRvIHRoZSBuZWFyZXN0IGludGVnZXIuIFlvdSBkb24ndCB3YW50IHRv
IHVzZQo+IGl0IGFueXdoZXJlIHRoYXQgcmVxdWlyZXMgcHJlY2lzaW9uLiBBbHNvIEkgd2FudCB0
byBudWtlIGl0Lgo+IHZ0b3RhbCp2cmVmcmVzaCA9PSAxMDAwKmNsb2NrL2h0b3RhbCwgc28gbGV0
J3MgdXNlIHRoZSBsYXR0ZXIuCj4gCj4gQ2M6IEFuc2h1bWFuIEd1cHRhIDxhbnNodW1hbi5ndXB0
YUBpbnRlbC5jb20+Cj4gQ2M6IFVtYSBTaGFua2FyIDx1bWEuc2hhbmthckBpbnRlbC5jb20+Cj4g
U2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVs
LmNvbT4KPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hdWRpby5j
IHwgMTAgKysrLS0tLS0tLQo+ICAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCA3IGRl
bGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2F1ZGlvLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2F1ZGlv
LmMKPiBpbmRleCAzNmFhZWU4NTM2ZjEuLmY1Njg2ZTUwODMzZiAxMDA2NDQKPiAtLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2F1ZGlvLmMKPiArKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2F1ZGlvLmMKPiBAQCAtNTI0LDE0ICs1MjQsMTIgQEAg
c3RhdGljIHVuc2lnbmVkIGludCBnZXRfaGJsYW5rX2Vhcmx5X2VuYWJsZV9jb25maWcoc3RydWN0
IGludGVsX2VuY29kZXIgKmVuY29kZXIKPiAgICAgICAgIHVuc2lnbmVkIGludCBsaW5rX2Nsa3Nf
YXZhaWxhYmxlLCBsaW5rX2Nsa3NfcmVxdWlyZWQ7Cj4gICAgICAgICB1bnNpZ25lZCBpbnQgdHVf
ZGF0YSwgdHVfbGluZSwgbGlua19jbGtzX2FjdGl2ZTsKPiAgICAgICAgIHVuc2lnbmVkIGludCBo
YmxhbmtfcmlzZSwgaGJsYW5rX2Vhcmx5X3Byb2c7Cj4gLSAgICAgICB1bnNpZ25lZCBpbnQgaF9h
Y3RpdmUsIGhfdG90YWwsIGhibGFua19kZWx0YSwgcGl4ZWxfY2xrLCB2X3RvdGFsOwo+IC0gICAg
ICAgdW5zaWduZWQgaW50IGZlY19jb2VmZiwgcmVmcmVzaF9yYXRlLCBjZGNsaywgdmRzY19icHA7
Cj4gKyAgICAgICB1bnNpZ25lZCBpbnQgaF9hY3RpdmUsIGhfdG90YWwsIGhibGFua19kZWx0YSwg
cGl4ZWxfY2xrOwo+ICsgICAgICAgdW5zaWduZWQgaW50IGZlY19jb2VmZiwgY2RjbGssIHZkc2Nf
YnBwOwo+ICAKPiAgICAgICAgIGhfYWN0aXZlID0gY3J0Y19zdGF0ZS0+aHcuYWRqdXN0ZWRfbW9k
ZS5jcnRjX2hkaXNwbGF5Owo+ICAgICAgICAgaF90b3RhbCA9IGNydGNfc3RhdGUtPmh3LmFkanVz
dGVkX21vZGUuY3J0Y19odG90YWw7Cj4gLSAgICAgICB2X3RvdGFsID0gY3J0Y19zdGF0ZS0+aHcu
YWRqdXN0ZWRfbW9kZS5jcnRjX3Z0b3RhbDsKPiAgICAgICAgIHBpeGVsX2NsayA9IGNydGNfc3Rh
dGUtPmh3LmFkanVzdGVkX21vZGUuY3J0Y19jbG9jazsKPiAtICAgICAgIHJlZnJlc2hfcmF0ZSA9
IGNydGNfc3RhdGUtPmh3LmFkanVzdGVkX21vZGUudnJlZnJlc2g7Cj4gICAgICAgICB2ZHNjX2Jw
cCA9IGNydGNfc3RhdGUtPmRzYy5jb21wcmVzc2VkX2JwcDsKPiAgICAgICAgIGNkY2xrID0gaTkx
NS0+Y2RjbGsuaHcuY2RjbGs7Cj4gICAgICAgICAvKiBmZWM9IDAuOTcyMjYxLCB1c2luZyByb3Vu
ZGluZyBtdWx0aXBsaWVyIG9mIDEwMDAwMDAgKi8KPiBAQCAtNTQ5LDkgKzU0Nyw3IEBAIHN0YXRp
YyB1bnNpZ25lZCBpbnQgZ2V0X2hibGFua19lYXJseV9lbmFibGVfY29uZmlnKHN0cnVjdCBpbnRl
bF9lbmNvZGVyICplbmNvZGVyCj4gICAgICAgICBsaW5rX2Nsa3NfYXZhaWxhYmxlID0gKCgoKGhf
dG90YWwgLSBoX2FjdGl2ZSkgKgo+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAoKGNy
dGNfc3RhdGUtPnBvcnRfY2xvY2sgKiBST1VORElOR19GQUNUT1IpIC8KPiAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIHBpeGVsX2NsaykpIC8gUk9VTkRJTkdfRkFDVE9SKSAtIDI4KTsK
PiAtCj4gLSAgICAgICBsaW5rX2Nsa3NfcmVxdWlyZWQgPSBESVZfUk9VTkRfVVAoMTkyMDAwLCAo
cmVmcmVzaF9yYXRlICoKPiAtICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICB2X3RvdGFsKSkgKiAoKDQ4IC8KPiArICAgICAgIGxpbmtfY2xrc19yZXF1aXJlZCA9IERJVl9S
T1VORF9VUCgxOTIwMDAsICgxMDAwICogcGl4ZWxfY2xrIC8gaF90b3RhbCkpICogKCg0OCAvCgpZ
b3UgZG9uJ3QgbmVlZCB0byBrZWVwIHRoZSAoYWJ1c2UpLgoKUmV2aWV3ZWQtYnk6IENocmlzIFdp
bHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgotQ2hyaXMKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
