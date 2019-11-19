Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C7DE51028BD
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Nov 2019 16:59:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1E1D46E11C;
	Tue, 19 Nov 2019 15:59:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AEBC46E8DC
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Nov 2019 15:59:00 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Nov 2019 07:59:00 -0800
X-IronPort-AV: E=Sophos;i="5.69,324,1571727600"; d="scan'208";a="200393642"
Received: from unknown (HELO [10.252.30.240]) ([10.252.30.240])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 19 Nov 2019 07:58:59 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20191118230254.2615942-1-chris@chris-wilson.co.uk>
 <20191118230254.2615942-13-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <ad14a97b-4536-3175-2362-9f6573fc2145@linux.intel.com>
Date: Tue, 19 Nov 2019 15:58:57 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191118230254.2615942-13-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 12/19] drm/i915/gt: Declare timeline.lock to
 be irq-free
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDE4LzExLzIwMTkgMjM6MDIsIENocmlzIFdpbHNvbiB3cm90ZToKPiBOb3cgdGhhdCB3ZSBu
ZXZlciBhbGxvdyB0aGUgaW50ZWxfd2FrZXJlZiBjYWxsYmFja3MgdG8gYmUgaW52b2tlZCBmcm9t
Cj4gaW50ZXJydXB0IGNvbnRleHQsIHdlIGRvIG5vdCBuZWVkIHRoZSBpcnFzYWZlIHNwaW5sb2Nr
IGZvciB0aGUgdGltZWxpbmUuCj4gCj4gU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJp
c0BjaHJpcy13aWxzb24uY28udWs+Cj4gLS0tCj4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9p
bnRlbF9ndF9yZXF1ZXN0cy5jIHwgIDkgKysrKy0tLS0tCj4gICBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC9pbnRlbF9yZXNldC5jICAgICAgIHwgIDkgKysrKy0tLS0tCj4gICBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9ndC9pbnRlbF90aW1lbGluZS5jICAgIHwgMTAgKysrKy0tLS0tLQo+ICAgMyBmaWxl
cyBjaGFuZ2VkLCAxMiBpbnNlcnRpb25zKCspLCAxNiBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3RfcmVxdWVzdHMuYyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0X3JlcXVlc3RzLmMKPiBpbmRleCA3NTU5ZDYzNzNm
NDkuLjc0MzU2ZGI0MzMyNSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9p
bnRlbF9ndF9yZXF1ZXN0cy5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxf
Z3RfcmVxdWVzdHMuYwo+IEBAIC0zMyw3ICszMyw2IEBAIGxvbmcgaW50ZWxfZ3RfcmV0aXJlX3Jl
cXVlc3RzX3RpbWVvdXQoc3RydWN0IGludGVsX2d0ICpndCwgbG9uZyB0aW1lb3V0KQo+ICAgewo+
ICAgCXN0cnVjdCBpbnRlbF9ndF90aW1lbGluZXMgKnRpbWVsaW5lcyA9ICZndC0+dGltZWxpbmVz
Owo+ICAgCXN0cnVjdCBpbnRlbF90aW1lbGluZSAqdGwsICp0bjsKPiAtCXVuc2lnbmVkIGxvbmcg
ZmxhZ3M7Cj4gICAJYm9vbCBpbnRlcnJ1cHRpYmxlOwo+ICAgCUxJU1RfSEVBRChmcmVlKTsKPiAg
IAo+IEBAIC00Myw3ICs0Miw3IEBAIGxvbmcgaW50ZWxfZ3RfcmV0aXJlX3JlcXVlc3RzX3RpbWVv
dXQoc3RydWN0IGludGVsX2d0ICpndCwgbG9uZyB0aW1lb3V0KQo+ICAgCj4gICAJZmx1c2hfc3Vi
bWlzc2lvbihndCk7IC8qIGtpY2sgdGhlIGtzb2Z0aXJxZCB0YXNrbGV0cyAqLwo+ICAgCj4gLQlz
cGluX2xvY2tfaXJxc2F2ZSgmdGltZWxpbmVzLT5sb2NrLCBmbGFncyk7Cj4gKwlzcGluX2xvY2so
JnRpbWVsaW5lcy0+bG9jayk7Cj4gICAJbGlzdF9mb3JfZWFjaF9lbnRyeV9zYWZlKHRsLCB0biwg
JnRpbWVsaW5lcy0+YWN0aXZlX2xpc3QsIGxpbmspIHsKPiAgIAkJaWYgKCFtdXRleF90cnlsb2Nr
KCZ0bC0+bXV0ZXgpKQo+ICAgCQkJY29udGludWU7Cj4gQEAgLTUxLDcgKzUwLDcgQEAgbG9uZyBp
bnRlbF9ndF9yZXRpcmVfcmVxdWVzdHNfdGltZW91dChzdHJ1Y3QgaW50ZWxfZ3QgKmd0LCBsb25n
IHRpbWVvdXQpCj4gICAJCWludGVsX3RpbWVsaW5lX2dldCh0bCk7Cj4gICAJCUdFTV9CVUdfT04o
IWF0b21pY19yZWFkKCZ0bC0+YWN0aXZlX2NvdW50KSk7Cj4gICAJCWF0b21pY19pbmMoJnRsLT5h
Y3RpdmVfY291bnQpOyAvKiBwaW4gdGhlIGxpc3QgZWxlbWVudCAqLwo+IC0JCXNwaW5fdW5sb2Nr
X2lycXJlc3RvcmUoJnRpbWVsaW5lcy0+bG9jaywgZmxhZ3MpOwo+ICsJCXNwaW5fdW5sb2NrKCZ0
aW1lbGluZXMtPmxvY2spOwo+ICAgCj4gICAJCWlmICh0aW1lb3V0ID4gMCkgewo+ICAgCQkJc3Ry
dWN0IGRtYV9mZW5jZSAqZmVuY2U7Cj4gQEAgLTY3LDcgKzY2LDcgQEAgbG9uZyBpbnRlbF9ndF9y
ZXRpcmVfcmVxdWVzdHNfdGltZW91dChzdHJ1Y3QgaW50ZWxfZ3QgKmd0LCBsb25nIHRpbWVvdXQp
Cj4gICAKPiAgIAkJcmV0aXJlX3JlcXVlc3RzKHRsKTsKPiAgIAo+IC0JCXNwaW5fbG9ja19pcnFz
YXZlKCZ0aW1lbGluZXMtPmxvY2ssIGZsYWdzKTsKPiArCQlzcGluX2xvY2soJnRpbWVsaW5lcy0+
bG9jayk7Cj4gICAKPiAgIAkJLyogUmVzdW1lIGl0ZXJhdGlvbiBhZnRlciBkcm9wcGluZyBsb2Nr
ICovCj4gICAJCWxpc3Rfc2FmZV9yZXNldF9uZXh0KHRsLCB0biwgbGluayk7Cj4gQEAgLTgyLDcg
KzgxLDcgQEAgbG9uZyBpbnRlbF9ndF9yZXRpcmVfcmVxdWVzdHNfdGltZW91dChzdHJ1Y3QgaW50
ZWxfZ3QgKmd0LCBsb25nIHRpbWVvdXQpCj4gICAJCQlsaXN0X2FkZCgmdGwtPmxpbmssICZmcmVl
KTsKPiAgIAkJfQo+ICAgCX0KPiAtCXNwaW5fdW5sb2NrX2lycXJlc3RvcmUoJnRpbWVsaW5lcy0+
bG9jaywgZmxhZ3MpOwo+ICsJc3Bpbl91bmxvY2soJnRpbWVsaW5lcy0+bG9jayk7Cj4gICAKPiAg
IAlsaXN0X2Zvcl9lYWNoX2VudHJ5X3NhZmUodGwsIHRuLCAmZnJlZSwgbGluaykKPiAgIAkJX19p
bnRlbF90aW1lbGluZV9mcmVlKCZ0bC0+a3JlZik7Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L2ludGVsX3Jlc2V0LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRl
bF9yZXNldC5jCj4gaW5kZXggMDM4OGY5Mzc1MzY2Li4zNjE4OTIzOGUxM2MgMTAwNjQ0Cj4gLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmVzZXQuYwo+ICsrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L2ludGVsX3Jlc2V0LmMKPiBAQCAtODMxLDcgKzgzMSw2IEBAIHN0YXRp
YyBib29sIF9faW50ZWxfZ3RfdW5zZXRfd2VkZ2VkKHN0cnVjdCBpbnRlbF9ndCAqZ3QpCj4gICB7
Cj4gICAJc3RydWN0IGludGVsX2d0X3RpbWVsaW5lcyAqdGltZWxpbmVzID0gJmd0LT50aW1lbGlu
ZXM7Cj4gICAJc3RydWN0IGludGVsX3RpbWVsaW5lICp0bDsKPiAtCXVuc2lnbmVkIGxvbmcgZmxh
Z3M7Cj4gICAJYm9vbCBvazsKPiAgIAo+ICAgCWlmICghdGVzdF9iaXQoSTkxNV9XRURHRUQsICZn
dC0+cmVzZXQuZmxhZ3MpKQo+IEBAIC04NTMsNyArODUyLDcgQEAgc3RhdGljIGJvb2wgX19pbnRl
bF9ndF91bnNldF93ZWRnZWQoc3RydWN0IGludGVsX2d0ICpndCkKPiAgIAkgKgo+ICAgCSAqIE5v
IG1vcmUgY2FuIGJlIHN1Ym1pdHRlZCB1bnRpbCB3ZSByZXNldCB0aGUgd2VkZ2VkIGJpdC4KPiAg
IAkgKi8KPiAtCXNwaW5fbG9ja19pcnFzYXZlKCZ0aW1lbGluZXMtPmxvY2ssIGZsYWdzKTsKPiAr
CXNwaW5fbG9jaygmdGltZWxpbmVzLT5sb2NrKTsKPiAgIAlsaXN0X2Zvcl9lYWNoX2VudHJ5KHRs
LCAmdGltZWxpbmVzLT5hY3RpdmVfbGlzdCwgbGluaykgewo+ICAgCQlzdHJ1Y3QgZG1hX2ZlbmNl
ICpmZW5jZTsKPiAgIAo+IEBAIC04NjEsNyArODYwLDcgQEAgc3RhdGljIGJvb2wgX19pbnRlbF9n
dF91bnNldF93ZWRnZWQoc3RydWN0IGludGVsX2d0ICpndCkKPiAgIAkJaWYgKCFmZW5jZSkKPiAg
IAkJCWNvbnRpbnVlOwo+ICAgCj4gLQkJc3Bpbl91bmxvY2tfaXJxcmVzdG9yZSgmdGltZWxpbmVz
LT5sb2NrLCBmbGFncyk7Cj4gKwkJc3Bpbl91bmxvY2soJnRpbWVsaW5lcy0+bG9jayk7Cj4gICAK
PiAgIAkJLyoKPiAgIAkJICogQWxsIGludGVybmFsIGRlcGVuZGVuY2llcyAoaTkxNV9yZXF1ZXN0
cykgd2lsbCBoYXZlCj4gQEAgLTg3NCwxMCArODczLDEwIEBAIHN0YXRpYyBib29sIF9faW50ZWxf
Z3RfdW5zZXRfd2VkZ2VkKHN0cnVjdCBpbnRlbF9ndCAqZ3QpCj4gICAJCWRtYV9mZW5jZV9wdXQo
ZmVuY2UpOwo+ICAgCj4gICAJCS8qIFJlc3RhcnQgaXRlcmF0aW9uIGFmdGVyIGRyb3BpbmcgbG9j
ayAqLwo+IC0JCXNwaW5fbG9ja19pcnFzYXZlKCZ0aW1lbGluZXMtPmxvY2ssIGZsYWdzKTsKPiAr
CQlzcGluX2xvY2soJnRpbWVsaW5lcy0+bG9jayk7Cj4gICAJCXRsID0gbGlzdF9lbnRyeSgmdGlt
ZWxpbmVzLT5hY3RpdmVfbGlzdCwgdHlwZW9mKCp0bCksIGxpbmspOwo+ICAgCX0KPiAtCXNwaW5f
dW5sb2NrX2lycXJlc3RvcmUoJnRpbWVsaW5lcy0+bG9jaywgZmxhZ3MpOwo+ICsJc3Bpbl91bmxv
Y2soJnRpbWVsaW5lcy0+bG9jayk7Cj4gICAKPiAgIAkvKiBXZSBtdXN0IHJlc2V0IHBlbmRpbmcg
R1BVIGV2ZW50cyBiZWZvcmUgcmVzdG9yaW5nIG91ciBzdWJtaXNzaW9uICovCj4gICAJb2sgPSAh
SEFTX0VYRUNMSVNUUyhndC0+aTkxNSk7IC8qIFhYWCBiZXR0ZXIgYWdub3N0aWNpc20gZGVzaXJl
ZCAqLwo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF90aW1lbGlu
ZS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfdGltZWxpbmUuYwo+IGluZGV4IDRm
OTE0ZjBkNWVhYi4uYmQ5NzNkOTUwMDY0IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L2ludGVsX3RpbWVsaW5lLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9p
bnRlbF90aW1lbGluZS5jCj4gQEAgLTMzMiw3ICszMzIsNiBAQCBpbnQgaW50ZWxfdGltZWxpbmVf
cGluKHN0cnVjdCBpbnRlbF90aW1lbGluZSAqdGwpCj4gICB2b2lkIGludGVsX3RpbWVsaW5lX2Vu
dGVyKHN0cnVjdCBpbnRlbF90aW1lbGluZSAqdGwpCj4gICB7Cj4gICAJc3RydWN0IGludGVsX2d0
X3RpbWVsaW5lcyAqdGltZWxpbmVzID0gJnRsLT5ndC0+dGltZWxpbmVzOwo+IC0JdW5zaWduZWQg
bG9uZyBmbGFnczsKPiAgIAo+ICAgCS8qCj4gICAJICogUHJldGVuZCB3ZSBhcmUgc2VyaWFsaXNl
ZCBieSB0aGUgdGltZWxpbmUtPm11dGV4Lgo+IEBAIC0zNTgsMTYgKzM1NywxNSBAQCB2b2lkIGlu
dGVsX3RpbWVsaW5lX2VudGVyKHN0cnVjdCBpbnRlbF90aW1lbGluZSAqdGwpCj4gICAJaWYgKGF0
b21pY19hZGRfdW5sZXNzKCZ0bC0+YWN0aXZlX2NvdW50LCAxLCAwKSkKPiAgIAkJcmV0dXJuOwo+
ICAgCj4gLQlzcGluX2xvY2tfaXJxc2F2ZSgmdGltZWxpbmVzLT5sb2NrLCBmbGFncyk7Cj4gKwlz
cGluX2xvY2soJnRpbWVsaW5lcy0+bG9jayk7Cj4gICAJaWYgKCFhdG9taWNfZmV0Y2hfaW5jKCZ0
bC0+YWN0aXZlX2NvdW50KSkKPiAgIAkJbGlzdF9hZGQoJnRsLT5saW5rLCAmdGltZWxpbmVzLT5h
Y3RpdmVfbGlzdCk7Cj4gLQlzcGluX3VubG9ja19pcnFyZXN0b3JlKCZ0aW1lbGluZXMtPmxvY2ss
IGZsYWdzKTsKPiArCXNwaW5fdW5sb2NrKCZ0aW1lbGluZXMtPmxvY2spOwo+ICAgfQo+ICAgCj4g
ICB2b2lkIGludGVsX3RpbWVsaW5lX2V4aXQoc3RydWN0IGludGVsX3RpbWVsaW5lICp0bCkKPiAg
IHsKPiAgIAlzdHJ1Y3QgaW50ZWxfZ3RfdGltZWxpbmVzICp0aW1lbGluZXMgPSAmdGwtPmd0LT50
aW1lbGluZXM7Cj4gLQl1bnNpZ25lZCBsb25nIGZsYWdzOwo+ICAgCj4gICAJLyogU2VlIGludGVs
X3RpbWVsaW5lX2VudGVyKCkgKi8KPiAgIAlsb2NrZGVwX2Fzc2VydF9oZWxkKCZ0bC0+bXV0ZXgp
Owo+IEBAIC0zNzYsMTAgKzM3NCwxMCBAQCB2b2lkIGludGVsX3RpbWVsaW5lX2V4aXQoc3RydWN0
IGludGVsX3RpbWVsaW5lICp0bCkKPiAgIAlpZiAoYXRvbWljX2FkZF91bmxlc3MoJnRsLT5hY3Rp
dmVfY291bnQsIC0xLCAxKSkKPiAgIAkJcmV0dXJuOwo+ICAgCj4gLQlzcGluX2xvY2tfaXJxc2F2
ZSgmdGltZWxpbmVzLT5sb2NrLCBmbGFncyk7Cj4gKwlzcGluX2xvY2soJnRpbWVsaW5lcy0+bG9j
ayk7Cj4gICAJaWYgKGF0b21pY19kZWNfYW5kX3Rlc3QoJnRsLT5hY3RpdmVfY291bnQpKQo+ICAg
CQlsaXN0X2RlbCgmdGwtPmxpbmspOwo+IC0Jc3Bpbl91bmxvY2tfaXJxcmVzdG9yZSgmdGltZWxp
bmVzLT5sb2NrLCBmbGFncyk7Cj4gKwlzcGluX3VubG9jaygmdGltZWxpbmVzLT5sb2NrKTsKPiAg
IAo+ICAgCS8qCj4gICAJICogU2luY2UgdGhpcyB0aW1lbGluZSBpcyBpZGxlLCBhbGwgYmFyaWVy
cyB1cG9uIHdoaWNoIHdlIHdlcmUgd2FpdGluZwo+IAoKUmV2aWV3ZWQtYnk6IFR2cnRrbyBVcnN1
bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+CgpSZWdhcmRzLAoKVHZydGtvCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5n
IGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
