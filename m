Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D3D2CD7AE2
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Oct 2019 18:11:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 37CC56E846;
	Tue, 15 Oct 2019 16:11:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 26D066E846
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Oct 2019 16:11:30 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18846673-1500050 for multiple; Tue, 15 Oct 2019 17:11:27 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20191015154449.10338-1-mika.kuoppala@linux.intel.com>
In-Reply-To: <20191015154449.10338-1-mika.kuoppala@linux.intel.com>
Message-ID: <157115588550.22469.5703943455669088605@skylake-alporthouse-com>
Date: Tue, 15 Oct 2019 17:11:25 +0100
Subject: Re: [Intel-gfx] [PATCH 01/11] drm/i915/tgl: Add IS_TGL_REVID
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

UXVvdGluZyBNaWthIEt1b3BwYWxhICgyMDE5LTEwLTE1IDE2OjQ0OjM5KQo+IFdlIGFyZSBnb2lu
ZyB0byBuZWVkIHRoaXMgbWFjcm8gb24gbGltaXRpbmcKPiB0aGUgd29ya2Fyb3VuZCBzY29wZS4K
PiAKPiBTaWduZWQtb2ZmLWJ5OiBNaWthIEt1b3BwYWxhIDxtaWthLmt1b3BwYWxhQGxpbnV4Lmlu
dGVsLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaCB8IDUgKysr
KysKPiAgMSBmaWxlIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKQo+IAo+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9kcnYuaAo+IGluZGV4IGM0NmIzMzkwNjRjMC4uZjZhZWUxZTAxYTdmIDEwMDY0NAo+IC0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X2Rydi5oCj4gQEAgLTE2ODYsNiArMTY4NiwxMSBAQCBJU19TVUJQTEFURk9STShj
b25zdCBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwKPiAgI2RlZmluZSBJU19JQ0xfUkVW
SUQocCwgc2luY2UsIHVudGlsKSBcCj4gICAgICAgICAoSVNfSUNFTEFLRShwKSAmJiBJU19SRVZJ
RChwLCBzaW5jZSwgdW50aWwpKQo+ICAKPiArI2RlZmluZSBUR0xfUkVWSURfQTAgICAgICAgICAg
IDB4MAo+ICsKPiArI2RlZmluZSBJU19UR0xfUkVWSUQocCwgc2luY2UsIHVudGlsKSBcCj4gKyAg
ICAgICAoSVNfVElHRVJMQUtFKHApICYmIElTX1JFVklEKHAsIHNpbmNlLCB1bnRpbCkpCgpSZXZp
ZXdlZC1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Ci1DaHJpcwpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
