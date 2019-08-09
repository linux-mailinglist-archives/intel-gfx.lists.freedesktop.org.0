Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D1B128804F
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Aug 2019 18:38:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7EDED6EE60;
	Fri,  9 Aug 2019 16:38:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtp180.sjtu.edu.cn (smtp180.sjtu.edu.cn [202.120.2.180])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6B3D06EE01
 for <intel-gfx@lists.freedesktop.org>; Fri,  9 Aug 2019 12:42:43 +0000 (UTC)
Received: from mta04.sjtu.edu.cn (mta04.sjtu.edu.cn [202.121.179.8])
 by smtp180.sjtu.edu.cn (Postfix) with ESMTPS id 795331008CBC3;
 Fri,  9 Aug 2019 20:42:39 +0800 (CST)
Received: from localhost (localhost [127.0.0.1])
 by mta04.sjtu.edu.cn (Postfix) with ESMTP id 64E3F180610FC;
 Fri,  9 Aug 2019 20:42:39 +0800 (CST)
X-Virus-Scanned: amavisd-new at 
Received: from mta04.sjtu.edu.cn ([127.0.0.1])
 by localhost (mta04.sjtu.edu.cn [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id TguYWv_liOXU; Fri,  9 Aug 2019 20:42:39 +0800 (CST)
Received: from mailstore19.sjtu.edu.cn (mailstore19.sjtu.edu.cn
 [202.121.179.19])
 by mta04.sjtu.edu.cn (Postfix) with ESMTP id 466E4180610F0;
 Fri,  9 Aug 2019 20:42:39 +0800 (CST)
Date: Fri, 9 Aug 2019 20:42:38 +0800 (CST)
From: Wang Xiayang <xywang.sjtu@sjtu.edu.cn>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <546207462.3672371.1565354558399.JavaMail.zimbra@sjtu.edu.cn>
In-Reply-To: <156534257532.29113.15976967389463657767@skylake-alporthouse-com>
References: <20190807145437.5580-1-xywang.sjtu@sjtu.edu.cn>
 <156534257532.29113.15976967389463657767@skylake-alporthouse-com>
MIME-Version: 1.0
X-Originating-IP: [202.120.40.82]
X-Mailer: Zimbra 8.8.9_GA_3798 (zclient/8.8.9_GA_3798)
Thread-Topic: gpu/drm/i915: disable interrupt when holding spinlock
Thread-Index: zYWIzcGjqsZfwQVCUbyVMCd3Qj4rJg==
X-Mailman-Approved-At: Fri, 09 Aug 2019 16:38:27 +0000
Subject: Re: [Intel-gfx] [PATCH] gpu/drm/i915: disable interrupt when
 holding spinlock
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ci0tLS0tIENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPiB3cm90ZToKPiBR
dW90aW5nIFdhbmcgWGlheWFuZyAoMjAxOS0wOC0wNyAxNTo1NDozNykKPiA+IFRoZSBpcnFfbG9j
ayBpcyBhY3F1aXJlZCBpbiBtdWx0aXBsZSBmdW5jdGlvbnM6Cj4gPiAKPiA+IDEpIGk5MTVfcmVx
dWVzdF9jYW5jZWxfYnJlYWRjcnVtYgo+ID4gIDwtIC4uLiA8LSBwYW5mcm9zdF9ncHVfaXJxX2hh
bmRsZXIKPiA+IDIpIGludGVsX2VuZ2luZV9icmVhZGNydW1ic19pcnEKPiA+ICA8LSAuLi4gPC0g
Y2hlcnJ5dmlld19pcnFfaGFuZGxlcgo+ID4gMykgaTkxNV9yZXF1ZXN0X2VuYWJsZV9icmVhZGNy
dW1iCj4gPiA0KSB2aXJ0dWFsX3hmZXJfYnJlYWRjcnVtYnMKPiA+IAo+ID4gVGhlIGZvcm1lciB0
d28gZnVuY3Rpb25zIGFyZSByZWFjaGFibGUgZnJvbSBJUlEgaGFuZGxlcnMgd2hpbGUKPiA+IHRo
ZSBsYXR0ZXIgdHdvIGZ1bmN0aW9ucyBhcmUgbm90LCBhbmQgdGhleSBjYWxsIHNwaW5fbG9jaygp
Cj4gPiB3aGljaCBkbyBub3QgZGlzYWJsZSBpbnRlcnJ1cHQuIEJlaW5nIHByZWVtcHRlZCBieSBh
biBpbnRlcnJ1cHQKPiA+IGFjcXVpcmluZyB0aGUgc2FtZSBsb2NrIG1heSBsZWFkIHRvIGRlYWRs
b2NrLgo+ID4gT3RoZXIgZnVuY3Rpb25zIGFjcXVpcmUgaXJxX2xvY2sgYnkgc3Bpbl9sb2NrX2ly
cS9pcnFzYXZlKCkuCj4gPiAKPiA+IFRoaXMgcGF0Y2ggc3dpdGNoZXMgc3Bpbl9sb2NrKCkgdG8g
c3Bpbl9sb2NrX2lycSBpbiB0aGUgdHdvCj4gPiBwcm9jZXNzLWNvbnRleHQgZnVuY3Rpb25zLgo+
ID4gCj4gPiBUaGUgaXNzdWUgaXMgaWRlbnRpZmllZCBieSBhIHN0YXRpYyBhbmFseXplciBiYXNl
ZCBvbiBDb2NjaW5lbGxlLgo+ID4gCj4gPiBTaWduZWQtb2ZmLWJ5OiBXYW5nIFhpYXlhbmcgPHh5
d2FuZy5zanR1QHNqdHUuZWR1LmNuPgo+ID4gLS0tCj4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvaW50ZWxfYnJlYWRjcnVtYnMuYyB8IDQgKystLQo+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L2ludGVsX2xyYy5jICAgICAgICAgfCA0ICsrLS0KPiA+ICAyIGZpbGVzIGNoYW5nZWQsIDQg
aW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKPiA+IAo+ID4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2JyZWFkY3J1bWJzLmMgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC9pbnRlbF9icmVhZGNydW1icy5jCj4gPiBpbmRleCBjMDkyYmRmNWYwYmYuLmUwYjQ2
NDUwYzJmNSAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2Jy
ZWFkY3J1bWJzLmMKPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2JyZWFk
Y3J1bWJzLmMKPiA+IEBAIC0zMDEsNyArMzAxLDcgQEAgYm9vbCBpOTE1X3JlcXVlc3RfZW5hYmxl
X2JyZWFkY3J1bWIoc3RydWN0IGk5MTVfcmVxdWVzdCAqcnEpCj4gPiAgICAgICAgICAgICAgICAg
c3RydWN0IGludGVsX2NvbnRleHQgKmNlID0gcnEtPmh3X2NvbnRleHQ7Cj4gPiAgICAgICAgICAg
ICAgICAgc3RydWN0IGxpc3RfaGVhZCAqcG9zOwo+ID4gIAo+ID4gLSAgICAgICAgICAgICAgIHNw
aW5fbG9jaygmYi0+aXJxX2xvY2spOwo+ID4gKyAgICAgICAgICAgICAgIHNwaW5fbG9ja19pcnEo
JmItPmlycV9sb2NrKTsKPiA+ICAgICAgICAgICAgICAgICBHRU1fQlVHX09OKHRlc3RfYml0KEk5
MTVfRkVOQ0VfRkxBR19TSUdOQUwsICZycS0+ZmVuY2UuZmxhZ3MpKTsKPiA+ICAKPiA+ICAgICAg
ICAgICAgICAgICBfX2ludGVsX2JyZWFkY3J1bWJzX2FybV9pcnEoYik7Cj4gPiBAQCAtMzMzLDcg
KzMzMyw3IEBAIGJvb2wgaTkxNV9yZXF1ZXN0X2VuYWJsZV9icmVhZGNydW1iKHN0cnVjdCBpOTE1
X3JlcXVlc3QgKnJxKQo+ID4gICAgICAgICAgICAgICAgIEdFTV9CVUdfT04oIWNoZWNrX3NpZ25h
bF9vcmRlcihjZSwgcnEpKTsKPiA+ICAKPiA+ICAgICAgICAgICAgICAgICBzZXRfYml0KEk5MTVf
RkVOQ0VfRkxBR19TSUdOQUwsICZycS0+ZmVuY2UuZmxhZ3MpOwo+ID4gLSAgICAgICAgICAgICAg
IHNwaW5fdW5sb2NrKCZiLT5pcnFfbG9jayk7Cj4gPiArICAgICAgICAgICAgICAgc3Bpbl91bmxv
Y2tfaXJxKCZiLT5pcnFfbG9jayk7Cj4gCj4gVGhpcyBpcyB2ZXJ5IGJyb2tlbiwgaXJxcyBhcmUg
ZGlzYWJsZWQgYnkgdGhlIGNhbGxlciBhbmQgeW91IGNhbid0Cj4gdW5jb25kaXRpb25hbGx5IGVu
YWJsZSB0aGVtIGFnYWluIGhlcmUuLi4KPiAKPiA+ICAgICAgICAgcmV0dXJuICFfX3JlcXVlc3Rf
Y29tcGxldGVkKHJxKTsKPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9p
bnRlbF9scmMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jCj4gPiBpbmRl
eCA4MmI3YWNlNjJkOTcuLjQyMzY3YWVlZmNjZSAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC9pbnRlbF9scmMuYwo+ID4gQEAgLTgwNiwxMyArODA2LDEzIEBAIHN0YXRpYyB2b2lkIHZpcnR1
YWxfeGZlcl9icmVhZGNydW1icyhzdHJ1Y3QgdmlydHVhbF9lbmdpbmUgKnZlLAo+ID4gIAo+ID4g
ICAgICAgICAvKiBBbGwgdW5hdHRhY2hlZCAocnEtPmVuZ2luZSA9PSBvbGQpIG11c3QgYWxyZWFk
eSBiZSBjb21wbGV0ZWQgKi8KPiA+ICAKPiA+IC0gICAgICAgc3Bpbl9sb2NrKCZvbGQtPmJyZWFk
Y3J1bWJzLmlycV9sb2NrKTsKPiA+ICsgICAgICAgc3Bpbl9sb2NrX2lycSgmb2xkLT5icmVhZGNy
dW1icy5pcnFfbG9jayk7Cj4gPiAgICAgICAgIGlmICghbGlzdF9lbXB0eSgmdmUtPmNvbnRleHQu
c2lnbmFsX2xpbmspKSB7Cj4gPiAgICAgICAgICAgICAgICAgbGlzdF9tb3ZlX3RhaWwoJnZlLT5j
b250ZXh0LnNpZ25hbF9saW5rLAo+ID4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICZl
bmdpbmUtPmJyZWFkY3J1bWJzLnNpZ25hbGVycyk7Cj4gPiAgICAgICAgICAgICAgICAgaW50ZWxf
ZW5naW5lX3F1ZXVlX2JyZWFkY3J1bWJzKGVuZ2luZSk7Cj4gPiAgICAgICAgIH0KPiA+IC0gICAg
ICAgc3Bpbl91bmxvY2soJm9sZC0+YnJlYWRjcnVtYnMuaXJxX2xvY2spOwo+ID4gKyAgICAgICBz
cGluX3VubG9ja19pcnEoJm9sZC0+YnJlYWRjcnVtYnMuaXJxX2xvY2spOwo+IAo+IE9yIGhlcmUu
CgpJIHNlZS4gRGVlcGx5IHNvcnJ5IGZvciB0aGUgZmFsc2UgYWxhcm1pbmcuCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
