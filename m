Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DE1AD4401
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Oct 2019 17:18:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 629B66EC56;
	Fri, 11 Oct 2019 15:18:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BBE566EC56
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Oct 2019 15:17:58 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18806128-1500050 for multiple; Fri, 11 Oct 2019 16:17:56 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: "Summers, Stuart" <stuart.summers@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
References: <20191011113620.4671-1-chris@chris-wilson.co.uk>
 <a00580675e7831293c3553087f7cded368c05935.camel@intel.com>
In-Reply-To: <a00580675e7831293c3553087f7cded368c05935.camel@intel.com>
Message-ID: <157080707358.31572.11442733201828361017@skylake-alporthouse-com>
Date: Fri, 11 Oct 2019 16:17:53 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Expose engine properties via sysfs
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

UXVvdGluZyBTdW1tZXJzLCBTdHVhcnQgKDIwMTktMTAtMTEgMTY6MTQ6MDcpCj4gT24gRnJpLCAy
MDE5LTEwLTExIGF0IDEyOjM2ICswMTAwLCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiArdm9pZCBp
bnRlbF9lbmdpbmVzX2FkZF9zeXNmcyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkKPiA+
ICt7Cj4gPiArICAgICBzdGF0aWMgY29uc3Qgc3RydWN0IGF0dHJpYnV0ZSAqZmlsZXNbXSA9IHsK
PiA+ICsgICAgICAgICAgICAgJm5hbWVfYXR0ci5hdHRyLAo+ID4gKyAgICAgICAgICAgICAmY2xh
c3NfYXR0ci5hdHRyLAo+ID4gKyAgICAgICAgICAgICAmaW5zdF9hdHRyLmF0dHIsCj4gPiArICAg
ICAgICAgICAgICZjYXBzX2F0dHIuYXR0ciwKPiA+ICsgICAgICAgICAgICAgTlVMTAo+ID4gKyAg
ICAgfTsKPiA+ICsKPiA+ICsgICAgIHN0cnVjdCBkZXZpY2UgKmtkZXYgPSBpOTE1LT5kcm0ucHJp
bWFyeS0+a2RldjsKPiA+ICsgICAgIHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZTsKPiA+
ICsgICAgIHN0cnVjdCBrb2JqZWN0ICpkaXI7Cj4gPiArCj4gPiArICAgICBkaXIgPSBrb2JqZWN0
X2NyZWF0ZV9hbmRfYWRkKCJlbmdpbmUiLCAma2Rldi0+a29iaik7Cj4gPiArICAgICBpZiAoIWRp
cikKPiA+ICsgICAgICAgICAgICAgcmV0dXJuOwo+ID4gKwo+ID4gKyAgICAgZm9yX2VhY2hfdWFi
aV9lbmdpbmUoZW5naW5lLCBpOTE1KSB7Cj4gPiArICAgICAgICAgICAgIHN0cnVjdCBrb2JqZWN0
ICprb2JqOwo+ID4gKwo+ID4gKyAgICAgICAgICAgICBrb2JqID0ga29ial9lbmdpbmUoZGlyLCBl
bmdpbmUpOwo+ID4gKyAgICAgICAgICAgICBpZiAoIWtvYmopCj4gPiArICAgICAgICAgICAgICAg
ICAgICAgZ290byBlcnJfZW5naW5lOwo+ID4gKwo+ID4gKyAgICAgICAgICAgICBpZiAoc3lzZnNf
Y3JlYXRlX2ZpbGVzKGtvYmosIGZpbGVzKSkKPiA+ICsgICAgICAgICAgICAgICAgICAgICBnb3Rv
IGVycl9lbmdpbmU7Cj4gPiArCj4gPiArICAgICAgICAgICAgIGlmICgwKSB7Cj4gPiArZXJyX2Vu
Z2luZToKPiAKPiBDYW4geW91IGV4cGxhaW4gd2h5IHdlIG5lZWQgdGhpcyBnb3RvL2lmIDAgb3Zl
ciBhIHNpbXBsZSBwcmludC9icmVhawo+IHVuZGVyIHRoZSBpZihzeXNmc19jcmVhdGVfZmlsZXMo
KSkgY2FsbCBhYm92ZT8gQXQgYSBnbGFuY2UgdGhpcyBqdXN0Cj4gc2VlbXMgb3Zlcmx5IGNvbXBs
aWNhdGVkLgoKVGhlcmUncyBtb3JlIHRvIGNvbWUuCi1DaHJpcwpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
