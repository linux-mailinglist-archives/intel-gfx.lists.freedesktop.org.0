Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 417D6155AA9
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Feb 2020 16:24:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9E6C76E0AD;
	Fri,  7 Feb 2020 15:24:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 993E4883A9
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Feb 2020 15:24:48 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20150201-1500050 for multiple; Fri, 07 Feb 2020 15:24:45 +0000
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20200207152228.1054-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20200207152228.1054-1-ville.syrjala@linux.intel.com>
Message-ID: <158108908379.16098.5889567296316411853@skylake-alporthouse-com>
Date: Fri, 07 Feb 2020 15:24:43 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Don't use uninitialized 'ret'
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

UXVvdGluZyBWaWxsZSBTeXJqYWxhICgyMDIwLTAyLTA3IDE1OjIyOjI4KQo+IEZyb206IFZpbGxl
IFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4gCj4gQWNjaWRlbnRh
bGx5IHJlbW92ZWQgdGhlICdyZXQ9MCcgaW5pdGlhbGl6YXRpb24sIGFuZCB0aHVzCj4gd2UncmUg
cG90ZW50aWFsbHkgbG9va2luZyBhdCBzb21lIHN0YWNrIGdhcmJhZ2UgaGVyZS4KPiAKPiBUaGUg
d2hvbGUgJ3JldCA9IGRvX3N0dWZmOyBpZiAoIXJldCkgZG9fb3RoZXJfc3R1ZmY7JyBwYXR0ZXJu
Cj4gY29uZnVzZXMgbXkgYnJhaW4gc28gbGV0J3MgcmVwbGFjZSBpdCB3aXRoIHRoZSBzdGFuZGFy
ZAo+IGltbWVkaWF0ZSByZXR1cm4gdGhpbmcuCj4gCj4gUmVwb3J0ZWQtYnk6IENocmlzIFdpbHNv
biA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+IEZpeGVzOiAyOGEzMGI0NWY1ZTkgKCJkcm0v
aTkxNTogQ29udmVydCBjZGNsayB0byBnbG9iYWwgc3RhdGUiKQo+IFNpZ25lZC1vZmYtYnk6IFZp
bGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4gLS0tCj4gIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIHwgMTAgKysrKysrLS0t
LQo+ICAxIGZpbGUgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQo+IAo+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXku
YyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCj4gaW5kZXgg
ODBlZWJkYzRjNjcwLi42MWJhMWYyMjU2YTAgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwo+IEBAIC0xMjg0MywxMSArMTI4NDMsMTMgQEAgc3Rh
dGljIGludCBpbnRlbF9jcnRjX2F0b21pY19jaGVjayhzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRl
ICpzdGF0ZSwKPiAgICAgICAgIH0KPiAgCj4gICAgICAgICBpZiAoSU5URUxfR0VOKGRldl9wcml2
KSA+PSA5KSB7Cj4gLSAgICAgICAgICAgICAgIGlmIChtb2RlX2NoYW5nZWQgfHwgY3J0Y19zdGF0
ZS0+dXBkYXRlX3BpcGUpCj4gKyAgICAgICAgICAgICAgIGlmIChtb2RlX2NoYW5nZWQgfHwgY3J0
Y19zdGF0ZS0+dXBkYXRlX3BpcGUpIHsKPiAgICAgICAgICAgICAgICAgICAgICAgICByZXQgPSBz
a2xfdXBkYXRlX3NjYWxlcl9jcnRjKGNydGNfc3RhdGUpOwo+IC0gICAgICAgICAgICAgICBpZiAo
IXJldCkKPiAtICAgICAgICAgICAgICAgICAgICAgICByZXQgPSBpbnRlbF9hdG9taWNfc2V0dXBf
c2NhbGVycyhkZXZfcHJpdiwgY3J0YywKPiAtICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICBjcnRjX3N0YXRlKTsKPiArICAgICAgICAgICAgICAg
ICAgICAgICBpZiAocmV0KQo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgcmV0dXJu
IHJldDsKPiArICAgICAgICAgICAgICAgfQo+ICsKPiArICAgICAgICAgICAgICAgcmV0ID0gaW50
ZWxfYXRvbWljX3NldHVwX3NjYWxlcnMoZGV2X3ByaXYsIGNydGMsIGNydGNfc3RhdGUpOwo+ICAg
ICAgICAgICAgICAgICBpZiAocmV0KQo+ICAgICAgICAgICAgICAgICAgICAgICAgIHJldHVybiBy
ZXQ7CgpTdG9yeSBjaGVja3Mgb3V0LgpSZXZpZXdlZC1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0Bj
aHJpcy13aWxzb24uY28udWs+Ci1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZngK
