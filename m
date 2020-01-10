Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 139C41377C2
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jan 2020 21:12:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 620FA6EA96;
	Fri, 10 Jan 2020 20:12:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C585D6EA96
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Jan 2020 20:12:47 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19839380-1500050 for multiple; Fri, 10 Jan 2020 20:12:43 +0000
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20200110183228.8199-1-ville.syrjala@linux.intel.com>
 <20200110183228.8199-4-ville.syrjala@linux.intel.com>
In-Reply-To: <20200110183228.8199-4-ville.syrjala@linux.intel.com>
Message-ID: <157868716326.10140.12049961506310501147@skylake-alporthouse-com>
Date: Fri, 10 Jan 2020 20:12:43 +0000
Subject: Re: [Intel-gfx] [PATCH 4/6] drm/i915: s/intel_state/state/ in
 intel_{prepare, cleanup}_plane_fb()
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

UXVvdGluZyBWaWxsZSBTeXJqYWxhICgyMDIwLTAxLTEwIDE4OjMyOjI2KQo+IEZyb206IFZpbGxl
IFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4gCj4gRHJvcCB0aGUg
cmVkdW5kYW50IGludGVsXyBwcmVmaXggZnJvbSBvdXIgYXRvbWljIHN0YXRlIHZhcmlhYmxlLgo+
IAo+IFNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5p
bnRlbC5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlz
cGxheS5jIHwgMjIgKysrKysrKysrKy0tLS0tLS0tLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDExIGlu
c2VydGlvbnMoKyksIDExIGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCj4gaW5kZXggMGRmMDcxOWIwYWMzLi4yN2I0MzgyMjM0
NGIgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNw
bGF5LmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXku
Ywo+IEBAIC0xNTc1NSwxOCArMTU3NTUsMTggQEAgaW50ZWxfcHJlcGFyZV9wbGFuZV9mYihzdHJ1
Y3QgZHJtX3BsYW5lICpfcGxhbmUsCj4gICAgICAgICBzdHJ1Y3QgaW50ZWxfcGxhbmUgKnBsYW5l
ID0gdG9faW50ZWxfcGxhbmUoX3BsYW5lKTsKPiAgICAgICAgIHN0cnVjdCBpbnRlbF9wbGFuZV9z
dGF0ZSAqbmV3X3BsYW5lX3N0YXRlID0KPiAgICAgICAgICAgICAgICAgdG9faW50ZWxfcGxhbmVf
c3RhdGUoX25ld19wbGFuZV9zdGF0ZSk7Cj4gLSAgICAgICBzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0
YXRlICppbnRlbF9zdGF0ZSA9Cj4gKyAgICAgICBzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpz
dGF0ZSA9CgpBaCwgMyY0ClJldmlld2VkLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdp
bHNvbi5jby51az4KLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeAo=
