Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CAA292951A9
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Oct 2020 19:40:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4CA606F487;
	Wed, 21 Oct 2020 17:40:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 753076F487
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Oct 2020 17:40:52 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 22768340-1500050 for multiple; Wed, 21 Oct 2020 18:40:49 +0100
MIME-Version: 1.0
In-Reply-To: <20201021131443.25616-3-ville.syrjala@linux.intel.com>
References: <20201021131443.25616-1-ville.syrjala@linux.intel.com>
 <20201021131443.25616-3-ville.syrjala@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Wed, 21 Oct 2020 18:40:48 +0100
Message-ID: <160330204800.24927.9969663107068874544@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH 3/5] drm/i915: Fix potential overflows in
 ilk ips calculations
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

UXVvdGluZyBWaWxsZSBTeXJqYWxhICgyMDIwLTEwLTIxIDE0OjE0OjQxKQo+IEZyb206IFZpbGxl
IFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4gCj4gQSBidW5jaCBv
ZiB0aGUgaXBzIGNhbGN1bGF0aW9ucyByZXF1aXJlIDY0Yml0IG1hdGguIEluIHBhcnRpY3VsYXIK
PiAnY29ycicgYW5kICdjb3JyMicgbG9vayBsaWtlIHRoZXkgY2FuIG92ZXJmbG93IG9uIDMyYml0
IHN5c3RlbXMuCj4gU3dpdGNoIHRvIGV4cGxpY2l0IHU2NCBmb3IgdGhvc2UuCj4gCj4gU2lnbmVk
LW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4K
PiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcnBzLmMgfCAxMCArKysrKy0t
LS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKyksIDUgZGVsZXRpb25zKC0pCj4g
Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3Jwcy5jIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcnBzLmMKPiBpbmRleCBlMGRiNzU0MWRiZmEuLjFj
ZjQ4YzUxYTkzZSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9y
cHMuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3Jwcy5jCj4gQEAgLTEy
ODEsOCArMTI4MSw5IEBAIHN0YXRpYyB1bnNpZ25lZCBsb25nIF9faXBzX2dmeF92YWwoc3RydWN0
IGludGVsX2lwcyAqaXBzKQo+ICB7Cj4gICAgICAgICBzdHJ1Y3QgaW50ZWxfcnBzICpycHMgPSBj
b250YWluZXJfb2YoaXBzLCB0eXBlb2YoKnJwcyksIGlwcyk7Cj4gICAgICAgICBzdHJ1Y3QgaW50
ZWxfdW5jb3JlICp1bmNvcmUgPSBycHNfdG9fdW5jb3JlKHJwcyk7Cj4gLSAgICAgICB1bnNpZ25l
ZCBsb25nIHQsIGNvcnIsIHN0YXRlMSwgY29ycjIsIHN0YXRlMjsKPiArICAgICAgIHVuc2lnbmVk
IGludCB0LCBzdGF0ZTEsIHN0YXRlMjsKPiAgICAgICAgIHUzMiBweHZpZCwgZXh0X3Y7Cj4gKyAg
ICAgICB1NjQgY29yciwgY29ycjI7Cj4gIAo+ICAgICAgICAgbG9ja2RlcF9hc3NlcnRfaGVsZCgm
bWNoZGV2X2xvY2spOwo+ICAKPiBAQCAtMTMwMywxMSArMTMwNCwxMCBAQCBzdGF0aWMgdW5zaWdu
ZWQgbG9uZyBfX2lwc19nZnhfdmFsKHN0cnVjdCBpbnRlbF9pcHMgKmlwcykKPiAgICAgICAgIGVs
c2UgLyogPCA1MCAqLwo+ICAgICAgICAgICAgICAgICBjb3JyID0gdCAqIDMwMSArIDEwMDQ7Cj4g
IAo+IC0gICAgICAgY29yciA9IGNvcnIgKiAxNTAxNDIgKiBzdGF0ZTEgLyAxMDAwMCAtIDc4NjQy
Owo+IC0gICAgICAgY29yciAvPSAxMDAwMDA7Cj4gLSAgICAgICBjb3JyMiA9IGNvcnIgKiBpcHMt
PmNvcnI7Cj4gKyAgICAgICBjb3JyID0gZGl2X3U2NChjb3JyICogMTUwMTQyICogc3RhdGUxLCAx
MDAwMCkgLSA3ODY0MjsKdTY0ID0gKHU2NCAqIGludCAqIHVpbnQpIC8gdTMyIC0gaW50Cgo+ICsg
ICAgICAgY29ycjIgPSBkaXZfdTY0KGNvcnIsIDEwMDAwMCkgKiBpcHMtPmNvcnI7CnU2NCA9IHU2
NCAvIHUzMiAqIHU4Cj4gIAo+IC0gICAgICAgc3RhdGUyID0gY29ycjIgKiBzdGF0ZTEgLyAxMDAw
MDsKPiArICAgICAgIHN0YXRlMiA9IGRpdl91NjQoY29ycjIgKiBzdGF0ZTEsIDEwMDAwKTsKdWlu
dCA9ICh1NjQgKiB1aW50KSAvIHUzMgo+ICAgICAgICAgc3RhdGUyIC89IDEwMDsgLyogY29udmVy
dCB0byBtVyAqLwoKSSBzdGFyZWQgYXQgdGhpcyBhbmQgd29uZGVyZWQgaWYgdGhleSBjb3VsZCBi
ZSB0b28gYmlnLiBUaGUgdW5zaWduZWQKbG9uZyBpcyBhIGJpdCBvZiBhIGdpdmUgYXdheS4KCmRp
dl91NjQgPT0gdTY0L3UzMiwgY2hlY2suCgpSZXZpZXdlZC1ieTogQ2hyaXMgV2lsc29uIDxjaHJp
c0BjaHJpcy13aWxzb24uY28udWs+Ci1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZngK
