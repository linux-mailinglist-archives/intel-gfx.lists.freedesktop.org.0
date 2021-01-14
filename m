Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4ED552F5CC6
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Jan 2021 10:05:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 93C2F6E095;
	Thu, 14 Jan 2021 09:05:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-44.mimecast.com
 (us-smtp-delivery-44.mimecast.com [205.139.111.44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 11DD16E095
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Jan 2021 09:05:34 +0000 (UTC)
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-150-dwl8WCw9MIG7K6wdFdytmQ-1; Thu, 14 Jan 2021 04:05:29 -0500
X-MC-Unique: dwl8WCw9MIG7K6wdFdytmQ-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 4928C1936B60;
 Thu, 14 Jan 2021 09:05:28 +0000 (UTC)
Received: from dreadlord-bne-redhat-com.bne.redhat.com (unknown [10.64.32.209])
 by smtp.corp.redhat.com (Postfix) with ESMTP id E0C0B10016FE;
 Thu, 14 Jan 2021 09:05:26 +0000 (UTC)
From: Dave Airlie <airlied@gmail.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 14 Jan 2021 19:05:12 +1000
Message-Id: <20210114090522.22750-2-airlied@gmail.com>
In-Reply-To: <20210114090522.22750-1-airlied@gmail.com>
References: <20210114090522.22750-1-airlied@gmail.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmail.com
Subject: [Intel-gfx] [PATCH 01/11] drm/i915: refactor some crtc code out of
 intel display. (v2)
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
Cc: Jani Nikula <jani.nikula@intel.com>, Dave Airlie <airlied@redhat.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogRGF2ZSBBaXJsaWUgPGFpcmxpZWRAcmVkaGF0LmNvbT4KClRoZXJlIG1heSBiZSBtb3Jl
IGNydGMgY29kZSB0aGF0IGNhbiBiZSBwdWxsZWQgb3V0LCBidXQgdGhpcwppcyBhIGdvb2Qgc3Rh
cnQuCgp2MjogbW92ZSBwbGFuZSBiZWZvcmUgdGhpcy4KClNpZ25lZC1vZmYtYnk6IERhdmUgQWly
bGllIDxhaXJsaWVkQHJlZGhhdC5jb20+CltKYW5pOiBjbGVhbmVkIHVwIGludGVsX2NydGMuaCBh
IGJpdC5dClNpZ25lZC1vZmYtYnk6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+
ClJldmlld2VkLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwu
Y29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L01ha2VmaWxlICAgICAgICAgICAgICAgIHwg
ICAxICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3J0Yy5jICAgIHwgMzI1
ICsrKysrKysrKysrKysrKysrKysKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
Y3J0Yy5oICAgIHwgIDIyICsrCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rp
c3BsYXkuYyB8IDMwNSArLS0tLS0tLS0tLS0tLS0tLQogNCBmaWxlcyBjaGFuZ2VkLCAzNDkgaW5z
ZXJ0aW9ucygrKSwgMzA0IGRlbGV0aW9ucygtKQogY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3J0Yy5jCiBjcmVhdGUgbW9kZSAxMDA2NDQgZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jcnRjLmgKCmRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9NYWtlZmlsZSBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L01ha2VmaWxl
CmluZGV4IGViMGQ3MTBjZmY4Yy4uYzBlZGI2MTBjYTk3IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9NYWtlZmlsZQorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9NYWtlZmlsZQpA
QCAtMTk2LDYgKzE5Niw3IEBAIGk5MTUteSArPSBcCiAJZGlzcGxheS9pbnRlbF9jb2xvci5vIFwK
IAlkaXNwbGF5L2ludGVsX2NvbWJvX3BoeS5vIFwKIAlkaXNwbGF5L2ludGVsX2Nvbm5lY3Rvci5v
IFwKKwlkaXNwbGF5L2ludGVsX2NydGMubyBcCiAJZGlzcGxheS9pbnRlbF9jc3IubyBcCiAJZGlz
cGxheS9pbnRlbF9jdXJzb3IubyBcCiAJZGlzcGxheS9pbnRlbF9kaXNwbGF5Lm8gXApkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jcnRjLmMgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NydGMuYwpuZXcgZmlsZSBtb2RlIDEwMDY0NApp
bmRleCAwMDAwMDAwMDAwMDAuLjU3YjBhM2ViZTkwOAotLS0gL2Rldi9udWxsCisrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3J0Yy5jCkBAIC0wLDAgKzEsMzI1IEBACisv
LyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogTUlUCisvKgorICogQ29weXJpZ2h0IMKpIDIwMjAg
SW50ZWwgQ29ycG9yYXRpb24KKyAqLworI2luY2x1ZGUgPGxpbnV4L2tlcm5lbC5oPgorI2luY2x1
ZGUgPGxpbnV4L3NsYWIuaD4KKworI2luY2x1ZGUgPGRybS9kcm1fYXRvbWljX2hlbHBlci5oPgor
I2luY2x1ZGUgPGRybS9kcm1fZm91cmNjLmg+CisjaW5jbHVkZSA8ZHJtL2RybV9wbGFuZS5oPgor
I2luY2x1ZGUgPGRybS9kcm1fcGxhbmVfaGVscGVyLmg+CisKKyNpbmNsdWRlICJpbnRlbF9hdG9t
aWMuaCIKKyNpbmNsdWRlICJpbnRlbF9hdG9taWNfcGxhbmUuaCIKKyNpbmNsdWRlICJpbnRlbF9j
b2xvci5oIgorI2luY2x1ZGUgImludGVsX2NydGMuaCIKKyNpbmNsdWRlICJpbnRlbF9jdXJzb3Iu
aCIKKyNpbmNsdWRlICJpbnRlbF9kaXNwbGF5X2RlYnVnZnMuaCIKKyNpbmNsdWRlICJpbnRlbF9k
aXNwbGF5X3R5cGVzLmgiCisjaW5jbHVkZSAiaW50ZWxfcGlwZV9jcmMuaCIKKyNpbmNsdWRlICJp
bnRlbF9zcHJpdGUuaCIKKyNpbmNsdWRlICJpOXh4X3BsYW5lLmgiCisKK3N0YXRpYyB2b2lkIGFz
c2VydF92YmxhbmtfZGlzYWJsZWQoc3RydWN0IGRybV9jcnRjICpjcnRjKQoreworCWlmIChJOTE1
X1NUQVRFX1dBUk5fT04oZHJtX2NydGNfdmJsYW5rX2dldChjcnRjKSA9PSAwKSkKKwkJZHJtX2Ny
dGNfdmJsYW5rX3B1dChjcnRjKTsKK30KKwordTMyIGludGVsX2NydGNfZ2V0X3ZibGFua19jb3Vu
dGVyKHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjKQoreworCXN0cnVjdCBkcm1fZGV2aWNlICpkZXYg
PSBjcnRjLT5iYXNlLmRldjsKKwlzdHJ1Y3QgZHJtX3ZibGFua19jcnRjICp2YmxhbmsgPSAmZGV2
LT52YmxhbmtbZHJtX2NydGNfaW5kZXgoJmNydGMtPmJhc2UpXTsKKworCWlmICghdmJsYW5rLT5t
YXhfdmJsYW5rX2NvdW50KQorCQlyZXR1cm4gKHUzMilkcm1fY3J0Y19hY2N1cmF0ZV92Ymxhbmtf
Y291bnQoJmNydGMtPmJhc2UpOworCisJcmV0dXJuIGNydGMtPmJhc2UuZnVuY3MtPmdldF92Ymxh
bmtfY291bnRlcigmY3J0Yy0+YmFzZSk7Cit9CisKK3UzMiBpbnRlbF9jcnRjX21heF92Ymxhbmtf
Y291bnQoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpCit7CisJc3Ry
dWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShjcnRjX3N0YXRlLT51YXBp
LmNydGMtPmRldik7CisJc3RydWN0IGludGVsX2NydGMgKmNydGMgPSB0b19pbnRlbF9jcnRjKGNy
dGNfc3RhdGUtPnVhcGkuY3J0Yyk7CisJdTMyIG1vZGVfZmxhZ3MgPSBjcnRjLT5tb2RlX2ZsYWdz
OworCisJLyoKKwkgKiBGcm9tIEdlbiAxMSwgSW4gY2FzZSBvZiBkc2kgY21kIG1vZGUsIGZyYW1l
IGNvdW50ZXIgd291bGRudAorCSAqIGhhdmUgdXBkYXRlZCBhdCB0aGUgYmVnaW5uaW5nIG9mIFRF
LCBpZiB3ZSB3YW50IHRvIHVzZQorCSAqIHRoZSBodyBjb3VudGVyLCB0aGVuIHdlIHdvdWxkIGZp
bmQgaXQgdXBkYXRlZCBpbiBvbmx5CisJICogdGhlIG5leHQgVEUsIGhlbmNlIHN3aXRjaGluZyB0
byBzdyBjb3VudGVyLgorCSAqLworCWlmIChtb2RlX2ZsYWdzICYgKEk5MTVfTU9ERV9GTEFHX0RT
SV9VU0VfVEUwIHwgSTkxNV9NT0RFX0ZMQUdfRFNJX1VTRV9URTEpKQorCQlyZXR1cm4gMDsKKwor
CS8qCisJICogT24gaTk2NWdtIHRoZSBoYXJkd2FyZSBmcmFtZSBjb3VudGVyIHJlYWRzCisJICog
emVybyB3aGVuIHRoZSBUViBlbmNvZGVyIGlzIGVuYWJsZWQgOigKKwkgKi8KKwlpZiAoSVNfSTk2
NUdNKGRldl9wcml2KSAmJgorCSAgICAoY3J0Y19zdGF0ZS0+b3V0cHV0X3R5cGVzICYgQklUKElO
VEVMX09VVFBVVF9UVk9VVCkpKQorCQlyZXR1cm4gMDsKKworCWlmIChJTlRFTF9HRU4oZGV2X3By
aXYpID49IDUgfHwgSVNfRzRYKGRldl9wcml2KSkKKwkJcmV0dXJuIDB4ZmZmZmZmZmY7IC8qIGZ1
bGwgMzIgYml0IGNvdW50ZXIgKi8KKwllbHNlIGlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDMp
CisJCXJldHVybiAweGZmZmZmZjsgLyogb25seSAyNCBiaXRzIG9mIGZyYW1lIGNvdW50ICovCisJ
ZWxzZQorCQlyZXR1cm4gMDsgLyogR2VuMiBkb2Vzbid0IGhhdmUgYSBoYXJkd2FyZSBmcmFtZSBj
b3VudGVyICovCit9CisKK3ZvaWQgaW50ZWxfY3J0Y192Ymxhbmtfb24oY29uc3Qgc3RydWN0IGlu
dGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpCit7CisJc3RydWN0IGludGVsX2NydGMgKmNydGMg
PSB0b19pbnRlbF9jcnRjKGNydGNfc3RhdGUtPnVhcGkuY3J0Yyk7CisKKwlhc3NlcnRfdmJsYW5r
X2Rpc2FibGVkKCZjcnRjLT5iYXNlKTsKKwlkcm1fY3J0Y19zZXRfbWF4X3ZibGFua19jb3VudCgm
Y3J0Yy0+YmFzZSwKKwkJCQkgICAgICBpbnRlbF9jcnRjX21heF92YmxhbmtfY291bnQoY3J0Y19z
dGF0ZSkpOworCWRybV9jcnRjX3ZibGFua19vbigmY3J0Yy0+YmFzZSk7Cit9CisKK3ZvaWQgaW50
ZWxfY3J0Y192Ymxhbmtfb2ZmKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0
YXRlKQoreworCXN0cnVjdCBpbnRlbF9jcnRjICpjcnRjID0gdG9faW50ZWxfY3J0YyhjcnRjX3N0
YXRlLT51YXBpLmNydGMpOworCisJZHJtX2NydGNfdmJsYW5rX29mZigmY3J0Yy0+YmFzZSk7CisJ
YXNzZXJ0X3ZibGFua19kaXNhYmxlZCgmY3J0Yy0+YmFzZSk7Cit9CisKK3N0cnVjdCBpbnRlbF9j
cnRjX3N0YXRlICppbnRlbF9jcnRjX3N0YXRlX2FsbG9jKHN0cnVjdCBpbnRlbF9jcnRjICpjcnRj
KQoreworCXN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlOworCisJY3J0Y19zdGF0
ZSA9IGttYWxsb2Moc2l6ZW9mKCpjcnRjX3N0YXRlKSwgR0ZQX0tFUk5FTCk7CisKKwlpZiAoY3J0
Y19zdGF0ZSkKKwkJaW50ZWxfY3J0Y19zdGF0ZV9yZXNldChjcnRjX3N0YXRlLCBjcnRjKTsKKwor
CXJldHVybiBjcnRjX3N0YXRlOworfQorCit2b2lkIGludGVsX2NydGNfc3RhdGVfcmVzZXQoc3Ry
dWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUsCisJCQkgICAgc3RydWN0IGludGVsX2Ny
dGMgKmNydGMpCit7CisJbWVtc2V0KGNydGNfc3RhdGUsIDAsIHNpemVvZigqY3J0Y19zdGF0ZSkp
OworCisJX19kcm1fYXRvbWljX2hlbHBlcl9jcnRjX3N0YXRlX3Jlc2V0KCZjcnRjX3N0YXRlLT51
YXBpLCAmY3J0Yy0+YmFzZSk7CisKKwljcnRjX3N0YXRlLT5jcHVfdHJhbnNjb2RlciA9IElOVkFM
SURfVFJBTlNDT0RFUjsKKwljcnRjX3N0YXRlLT5tYXN0ZXJfdHJhbnNjb2RlciA9IElOVkFMSURf
VFJBTlNDT0RFUjsKKwljcnRjX3N0YXRlLT5oc3dfd29ya2Fyb3VuZF9waXBlID0gSU5WQUxJRF9Q
SVBFOworCWNydGNfc3RhdGUtPm91dHB1dF9mb3JtYXQgPSBJTlRFTF9PVVRQVVRfRk9STUFUX0lO
VkFMSUQ7CisJY3J0Y19zdGF0ZS0+c2NhbGVyX3N0YXRlLnNjYWxlcl9pZCA9IC0xOworCWNydGNf
c3RhdGUtPm1zdF9tYXN0ZXJfdHJhbnNjb2RlciA9IElOVkFMSURfVFJBTlNDT0RFUjsKK30KKwor
c3RhdGljIHN0cnVjdCBpbnRlbF9jcnRjICppbnRlbF9jcnRjX2FsbG9jKHZvaWQpCit7CisJc3Ry
dWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGU7CisJc3RydWN0IGludGVsX2NydGMgKmNy
dGM7CisKKwljcnRjID0ga3phbGxvYyhzaXplb2YoKmNydGMpLCBHRlBfS0VSTkVMKTsKKwlpZiAo
IWNydGMpCisJCXJldHVybiBFUlJfUFRSKC1FTk9NRU0pOworCisJY3J0Y19zdGF0ZSA9IGludGVs
X2NydGNfc3RhdGVfYWxsb2MoY3J0Yyk7CisJaWYgKCFjcnRjX3N0YXRlKSB7CisJCWtmcmVlKGNy
dGMpOworCQlyZXR1cm4gRVJSX1BUUigtRU5PTUVNKTsKKwl9CisKKwljcnRjLT5iYXNlLnN0YXRl
ID0gJmNydGNfc3RhdGUtPnVhcGk7CisJY3J0Yy0+Y29uZmlnID0gY3J0Y19zdGF0ZTsKKworCXJl
dHVybiBjcnRjOworfQorCitzdGF0aWMgdm9pZCBpbnRlbF9jcnRjX2ZyZWUoc3RydWN0IGludGVs
X2NydGMgKmNydGMpCit7CisJaW50ZWxfY3J0Y19kZXN0cm95X3N0YXRlKCZjcnRjLT5iYXNlLCBj
cnRjLT5iYXNlLnN0YXRlKTsKKwlrZnJlZShjcnRjKTsKK30KKworc3RhdGljIHZvaWQgaW50ZWxf
Y3J0Y19kZXN0cm95KHN0cnVjdCBkcm1fY3J0YyAqY3J0YykKK3sKKwlzdHJ1Y3QgaW50ZWxfY3J0
YyAqaW50ZWxfY3J0YyA9IHRvX2ludGVsX2NydGMoY3J0Yyk7CisKKwlkcm1fY3J0Y19jbGVhbnVw
KGNydGMpOworCWtmcmVlKGludGVsX2NydGMpOworfQorCitzdGF0aWMgaW50IGludGVsX2NydGNf
bGF0ZV9yZWdpc3RlcihzdHJ1Y3QgZHJtX2NydGMgKmNydGMpCit7CisJaW50ZWxfY3J0Y19kZWJ1
Z2ZzX2FkZChjcnRjKTsKKwlyZXR1cm4gMDsKK30KKworI2RlZmluZSBJTlRFTF9DUlRDX0ZVTkNT
IFwKKwkuc2V0X2NvbmZpZyA9IGRybV9hdG9taWNfaGVscGVyX3NldF9jb25maWcsIFwKKwkuZGVz
dHJveSA9IGludGVsX2NydGNfZGVzdHJveSwgXAorCS5wYWdlX2ZsaXAgPSBkcm1fYXRvbWljX2hl
bHBlcl9wYWdlX2ZsaXAsIFwKKwkuYXRvbWljX2R1cGxpY2F0ZV9zdGF0ZSA9IGludGVsX2NydGNf
ZHVwbGljYXRlX3N0YXRlLCBcCisJLmF0b21pY19kZXN0cm95X3N0YXRlID0gaW50ZWxfY3J0Y19k
ZXN0cm95X3N0YXRlLCBcCisJLnNldF9jcmNfc291cmNlID0gaW50ZWxfY3J0Y19zZXRfY3JjX3Nv
dXJjZSwgXAorCS52ZXJpZnlfY3JjX3NvdXJjZSA9IGludGVsX2NydGNfdmVyaWZ5X2NyY19zb3Vy
Y2UsIFwKKwkuZ2V0X2NyY19zb3VyY2VzID0gaW50ZWxfY3J0Y19nZXRfY3JjX3NvdXJjZXMsIFwK
KwkubGF0ZV9yZWdpc3RlciA9IGludGVsX2NydGNfbGF0ZV9yZWdpc3RlcgorCitzdGF0aWMgY29u
c3Qgc3RydWN0IGRybV9jcnRjX2Z1bmNzIGJkd19jcnRjX2Z1bmNzID0geworCUlOVEVMX0NSVENf
RlVOQ1MsCisKKwkuZ2V0X3ZibGFua19jb3VudGVyID0gZzR4X2dldF92YmxhbmtfY291bnRlciwK
KwkuZW5hYmxlX3ZibGFuayA9IGJkd19lbmFibGVfdmJsYW5rLAorCS5kaXNhYmxlX3ZibGFuayA9
IGJkd19kaXNhYmxlX3ZibGFuaywKKwkuZ2V0X3ZibGFua190aW1lc3RhbXAgPSBpbnRlbF9jcnRj
X2dldF92YmxhbmtfdGltZXN0YW1wLAorfTsKKworc3RhdGljIGNvbnN0IHN0cnVjdCBkcm1fY3J0
Y19mdW5jcyBpbGtfY3J0Y19mdW5jcyA9IHsKKwlJTlRFTF9DUlRDX0ZVTkNTLAorCisJLmdldF92
YmxhbmtfY291bnRlciA9IGc0eF9nZXRfdmJsYW5rX2NvdW50ZXIsCisJLmVuYWJsZV92Ymxhbmsg
PSBpbGtfZW5hYmxlX3ZibGFuaywKKwkuZGlzYWJsZV92YmxhbmsgPSBpbGtfZGlzYWJsZV92Ymxh
bmssCisJLmdldF92YmxhbmtfdGltZXN0YW1wID0gaW50ZWxfY3J0Y19nZXRfdmJsYW5rX3RpbWVz
dGFtcCwKK307CisKK3N0YXRpYyBjb25zdCBzdHJ1Y3QgZHJtX2NydGNfZnVuY3MgZzR4X2NydGNf
ZnVuY3MgPSB7CisJSU5URUxfQ1JUQ19GVU5DUywKKworCS5nZXRfdmJsYW5rX2NvdW50ZXIgPSBn
NHhfZ2V0X3ZibGFua19jb3VudGVyLAorCS5lbmFibGVfdmJsYW5rID0gaTk2NV9lbmFibGVfdmJs
YW5rLAorCS5kaXNhYmxlX3ZibGFuayA9IGk5NjVfZGlzYWJsZV92YmxhbmssCisJLmdldF92Ymxh
bmtfdGltZXN0YW1wID0gaW50ZWxfY3J0Y19nZXRfdmJsYW5rX3RpbWVzdGFtcCwKK307CisKK3N0
YXRpYyBjb25zdCBzdHJ1Y3QgZHJtX2NydGNfZnVuY3MgaTk2NV9jcnRjX2Z1bmNzID0geworCUlO
VEVMX0NSVENfRlVOQ1MsCisKKwkuZ2V0X3ZibGFua19jb3VudGVyID0gaTkxNV9nZXRfdmJsYW5r
X2NvdW50ZXIsCisJLmVuYWJsZV92YmxhbmsgPSBpOTY1X2VuYWJsZV92YmxhbmssCisJLmRpc2Fi
bGVfdmJsYW5rID0gaTk2NV9kaXNhYmxlX3ZibGFuaywKKwkuZ2V0X3ZibGFua190aW1lc3RhbXAg
PSBpbnRlbF9jcnRjX2dldF92YmxhbmtfdGltZXN0YW1wLAorfTsKKworc3RhdGljIGNvbnN0IHN0
cnVjdCBkcm1fY3J0Y19mdW5jcyBpOTE1Z21fY3J0Y19mdW5jcyA9IHsKKwlJTlRFTF9DUlRDX0ZV
TkNTLAorCisJLmdldF92YmxhbmtfY291bnRlciA9IGk5MTVfZ2V0X3ZibGFua19jb3VudGVyLAor
CS5lbmFibGVfdmJsYW5rID0gaTkxNWdtX2VuYWJsZV92YmxhbmssCisJLmRpc2FibGVfdmJsYW5r
ID0gaTkxNWdtX2Rpc2FibGVfdmJsYW5rLAorCS5nZXRfdmJsYW5rX3RpbWVzdGFtcCA9IGludGVs
X2NydGNfZ2V0X3ZibGFua190aW1lc3RhbXAsCit9OworCitzdGF0aWMgY29uc3Qgc3RydWN0IGRy
bV9jcnRjX2Z1bmNzIGk5MTVfY3J0Y19mdW5jcyA9IHsKKwlJTlRFTF9DUlRDX0ZVTkNTLAorCisJ
LmdldF92YmxhbmtfY291bnRlciA9IGk5MTVfZ2V0X3ZibGFua19jb3VudGVyLAorCS5lbmFibGVf
dmJsYW5rID0gaTh4eF9lbmFibGVfdmJsYW5rLAorCS5kaXNhYmxlX3ZibGFuayA9IGk4eHhfZGlz
YWJsZV92YmxhbmssCisJLmdldF92YmxhbmtfdGltZXN0YW1wID0gaW50ZWxfY3J0Y19nZXRfdmJs
YW5rX3RpbWVzdGFtcCwKK307CisKK3N0YXRpYyBjb25zdCBzdHJ1Y3QgZHJtX2NydGNfZnVuY3Mg
aTh4eF9jcnRjX2Z1bmNzID0geworCUlOVEVMX0NSVENfRlVOQ1MsCisKKwkvKiBubyBodyB2Ymxh
bmsgY291bnRlciAqLworCS5lbmFibGVfdmJsYW5rID0gaTh4eF9lbmFibGVfdmJsYW5rLAorCS5k
aXNhYmxlX3ZibGFuayA9IGk4eHhfZGlzYWJsZV92YmxhbmssCisJLmdldF92YmxhbmtfdGltZXN0
YW1wID0gaW50ZWxfY3J0Y19nZXRfdmJsYW5rX3RpbWVzdGFtcCwKK307CisKK2ludCBpbnRlbF9j
cnRjX2luaXQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LCBlbnVtIHBpcGUgcGlw
ZSkKK3sKKwlzdHJ1Y3QgaW50ZWxfcGxhbmUgKnByaW1hcnksICpjdXJzb3I7CisJY29uc3Qgc3Ry
dWN0IGRybV9jcnRjX2Z1bmNzICpmdW5jczsKKwlzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YzsKKwlp
bnQgc3ByaXRlLCByZXQ7CisKKwljcnRjID0gaW50ZWxfY3J0Y19hbGxvYygpOworCWlmIChJU19F
UlIoY3J0YykpCisJCXJldHVybiBQVFJfRVJSKGNydGMpOworCisJY3J0Yy0+cGlwZSA9IHBpcGU7
CisJY3J0Yy0+bnVtX3NjYWxlcnMgPSBSVU5USU1FX0lORk8oZGV2X3ByaXYpLT5udW1fc2NhbGVy
c1twaXBlXTsKKworCXByaW1hcnkgPSBpbnRlbF9wcmltYXJ5X3BsYW5lX2NyZWF0ZShkZXZfcHJp
diwgcGlwZSk7CisJaWYgKElTX0VSUihwcmltYXJ5KSkgeworCQlyZXQgPSBQVFJfRVJSKHByaW1h
cnkpOworCQlnb3RvIGZhaWw7CisJfQorCWNydGMtPnBsYW5lX2lkc19tYXNrIHw9IEJJVChwcmlt
YXJ5LT5pZCk7CisKKwlmb3JfZWFjaF9zcHJpdGUoZGV2X3ByaXYsIHBpcGUsIHNwcml0ZSkgewor
CQlzdHJ1Y3QgaW50ZWxfcGxhbmUgKnBsYW5lOworCisJCXBsYW5lID0gaW50ZWxfc3ByaXRlX3Bs
YW5lX2NyZWF0ZShkZXZfcHJpdiwgcGlwZSwgc3ByaXRlKTsKKwkJaWYgKElTX0VSUihwbGFuZSkp
IHsKKwkJCXJldCA9IFBUUl9FUlIocGxhbmUpOworCQkJZ290byBmYWlsOworCQl9CisJCWNydGMt
PnBsYW5lX2lkc19tYXNrIHw9IEJJVChwbGFuZS0+aWQpOworCX0KKworCWN1cnNvciA9IGludGVs
X2N1cnNvcl9wbGFuZV9jcmVhdGUoZGV2X3ByaXYsIHBpcGUpOworCWlmIChJU19FUlIoY3Vyc29y
KSkgeworCQlyZXQgPSBQVFJfRVJSKGN1cnNvcik7CisJCWdvdG8gZmFpbDsKKwl9CisJY3J0Yy0+
cGxhbmVfaWRzX21hc2sgfD0gQklUKGN1cnNvci0+aWQpOworCisJaWYgKEhBU19HTUNIKGRldl9w
cml2KSkgeworCQlpZiAoSVNfQ0hFUlJZVklFVyhkZXZfcHJpdikgfHwKKwkJICAgIElTX1ZBTExF
WVZJRVcoZGV2X3ByaXYpIHx8IElTX0c0WChkZXZfcHJpdikpCisJCQlmdW5jcyA9ICZnNHhfY3J0
Y19mdW5jczsKKwkJZWxzZSBpZiAoSVNfR0VOKGRldl9wcml2LCA0KSkKKwkJCWZ1bmNzID0gJmk5
NjVfY3J0Y19mdW5jczsKKwkJZWxzZSBpZiAoSVNfSTk0NUdNKGRldl9wcml2KSB8fCBJU19JOTE1
R00oZGV2X3ByaXYpKQorCQkJZnVuY3MgPSAmaTkxNWdtX2NydGNfZnVuY3M7CisJCWVsc2UgaWYg
KElTX0dFTihkZXZfcHJpdiwgMykpCisJCQlmdW5jcyA9ICZpOTE1X2NydGNfZnVuY3M7CisJCWVs
c2UKKwkJCWZ1bmNzID0gJmk4eHhfY3J0Y19mdW5jczsKKwl9IGVsc2UgeworCQlpZiAoSU5URUxf
R0VOKGRldl9wcml2KSA+PSA4KQorCQkJZnVuY3MgPSAmYmR3X2NydGNfZnVuY3M7CisJCWVsc2UK
KwkJCWZ1bmNzID0gJmlsa19jcnRjX2Z1bmNzOworCX0KKworCXJldCA9IGRybV9jcnRjX2luaXRf
d2l0aF9wbGFuZXMoJmRldl9wcml2LT5kcm0sICZjcnRjLT5iYXNlLAorCQkJCQkmcHJpbWFyeS0+
YmFzZSwgJmN1cnNvci0+YmFzZSwKKwkJCQkJZnVuY3MsICJwaXBlICVjIiwgcGlwZV9uYW1lKHBp
cGUpKTsKKwlpZiAocmV0KQorCQlnb3RvIGZhaWw7CisKKwlCVUdfT04ocGlwZSA+PSBBUlJBWV9T
SVpFKGRldl9wcml2LT5waXBlX3RvX2NydGNfbWFwcGluZykgfHwKKwkgICAgICAgZGV2X3ByaXYt
PnBpcGVfdG9fY3J0Y19tYXBwaW5nW3BpcGVdICE9IE5VTEwpOworCWRldl9wcml2LT5waXBlX3Rv
X2NydGNfbWFwcGluZ1twaXBlXSA9IGNydGM7CisKKwlpZiAoSU5URUxfR0VOKGRldl9wcml2KSA8
IDkpIHsKKwkJZW51bSBpOXh4X3BsYW5lX2lkIGk5eHhfcGxhbmUgPSBwcmltYXJ5LT5pOXh4X3Bs
YW5lOworCisJCUJVR19PTihpOXh4X3BsYW5lID49IEFSUkFZX1NJWkUoZGV2X3ByaXYtPnBsYW5l
X3RvX2NydGNfbWFwcGluZykgfHwKKwkJICAgICAgIGRldl9wcml2LT5wbGFuZV90b19jcnRjX21h
cHBpbmdbaTl4eF9wbGFuZV0gIT0gTlVMTCk7CisJCWRldl9wcml2LT5wbGFuZV90b19jcnRjX21h
cHBpbmdbaTl4eF9wbGFuZV0gPSBjcnRjOworCX0KKworCWlmIChJTlRFTF9HRU4oZGV2X3ByaXYp
ID49IDEwKQorCQlkcm1fY3J0Y19jcmVhdGVfc2NhbGluZ19maWx0ZXJfcHJvcGVydHkoJmNydGMt
PmJhc2UsCisJCQkJCQlCSVQoRFJNX1NDQUxJTkdfRklMVEVSX0RFRkFVTFQpIHwKKwkJCQkJCUJJ
VChEUk1fU0NBTElOR19GSUxURVJfTkVBUkVTVF9ORUlHSEJPUikpOworCisJaW50ZWxfY29sb3Jf
aW5pdChjcnRjKTsKKworCWludGVsX2NydGNfY3JjX2luaXQoY3J0Yyk7CisKKwlkcm1fV0FSTl9P
TigmZGV2X3ByaXYtPmRybSwgZHJtX2NydGNfaW5kZXgoJmNydGMtPmJhc2UpICE9IGNydGMtPnBp
cGUpOworCisJcmV0dXJuIDA7CisKK2ZhaWw6CisJaW50ZWxfY3J0Y19mcmVlKGNydGMpOworCisJ
cmV0dXJuIHJldDsKK30KZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfY3J0Yy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jcnRjLmgK
bmV3IGZpbGUgbW9kZSAxMDA2NDQKaW5kZXggMDAwMDAwMDAwMDAwLi4wODExMmQ1NTc0MTEKLS0t
IC9kZXYvbnVsbAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NydGMu
aApAQCAtMCwwICsxLDIyIEBACisvKiBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogTUlUICovCisv
KgorICogQ29weXJpZ2h0IMKpIDIwMjAgSW50ZWwgQ29ycG9yYXRpb24KKyAqLworCisjaWZuZGVm
IF9JTlRFTF9DUlRDX0hfCisjZGVmaW5lIF9JTlRFTF9DUlRDX0hfCisKKyNpbmNsdWRlIDxsaW51
eC90eXBlcy5oPgorCitlbnVtIHBpcGU7CitzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZTsKK3N0cnVj
dCBpbnRlbF9jcnRjOworc3RydWN0IGludGVsX2NydGNfc3RhdGU7CisKK3UzMiBpbnRlbF9jcnRj
X21heF92YmxhbmtfY291bnQoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3Rh
dGUpOworaW50IGludGVsX2NydGNfaW5pdChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3By
aXYsIGVudW0gcGlwZSBwaXBlKTsKK3N0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICppbnRlbF9jcnRj
X3N0YXRlX2FsbG9jKHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjKTsKK3ZvaWQgaW50ZWxfY3J0Y19z
dGF0ZV9yZXNldChzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwKKwkJCSAgICBz
dHJ1Y3QgaW50ZWxfY3J0YyAqY3J0Yyk7CisKKyNlbmRpZgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwppbmRleCAwMTg5ZDM3OWE1NWUuLjM1NjVhYjE0OTI5
YSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5
LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKQEAg
LTY4LDggKzY4LDggQEAKICNpbmNsdWRlICJpbnRlbF9idy5oIgogI2luY2x1ZGUgImludGVsX2Nk
Y2xrLmgiCiAjaW5jbHVkZSAiaW50ZWxfY29sb3IuaCIKKyNpbmNsdWRlICJpbnRlbF9jcnRjLmgi
CiAjaW5jbHVkZSAiaW50ZWxfY3NyLmgiCi0jaW5jbHVkZSAiaW50ZWxfY3Vyc29yLmgiCiAjaW5j
bHVkZSAiaW50ZWxfZGlzcGxheV90eXBlcy5oIgogI2luY2x1ZGUgImludGVsX2RwX2xpbmtfdHJh
aW5pbmcuaCIKICNpbmNsdWRlICJpbnRlbF9mYmMuaCIKQEAgLTExNCw3ICsxMTQsNiBAQCBzdGF0
aWMgdm9pZCBza2xfcGZpdF9lbmFibGUoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNy
dGNfc3RhdGUpOwogc3RhdGljIHZvaWQgaWxrX3BmaXRfZW5hYmxlKGNvbnN0IHN0cnVjdCBpbnRl
bF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKTsKIHN0YXRpYyB2b2lkIGludGVsX21vZGVzZXRfc2V0
dXBfaHdfc3RhdGUoc3RydWN0IGRybV9kZXZpY2UgKmRldiwKIAkJCQkJIHN0cnVjdCBkcm1fbW9k
ZXNldF9hY3F1aXJlX2N0eCAqY3R4KTsKLXN0YXRpYyBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAq
aW50ZWxfY3J0Y19zdGF0ZV9hbGxvYyhzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0Yyk7CiAKIHN0cnVj
dCBpbnRlbF9saW1pdCB7CiAJc3RydWN0IHsKQEAgLTEyNTMsMTIgKzEyNTIsNiBAQCBzdGF0aWMg
dm9pZCBhc3NlcnRfcGxhbmVzX2Rpc2FibGVkKHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjKQogCQlh
c3NlcnRfcGxhbmVfZGlzYWJsZWQocGxhbmUpOwogfQogCi1zdGF0aWMgdm9pZCBhc3NlcnRfdmJs
YW5rX2Rpc2FibGVkKHN0cnVjdCBkcm1fY3J0YyAqY3J0YykKLXsKLQlpZiAoSTkxNV9TVEFURV9X
QVJOX09OKGRybV9jcnRjX3ZibGFua19nZXQoY3J0YykgPT0gMCkpCi0JCWRybV9jcnRjX3ZibGFu
a19wdXQoY3J0Yyk7Ci19Ci0KIHZvaWQgYXNzZXJ0X3BjaF90cmFuc2NvZGVyX2Rpc2FibGVkKHN0
cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKIAkJCQkgICAgZW51bSBwaXBlIHBpcGUp
CiB7CkBAIC0xNzQzLDU1ICsxNzM2LDYgQEAgZW51bSBwaXBlIGludGVsX2NydGNfcGNoX3RyYW5z
Y29kZXIoc3RydWN0IGludGVsX2NydGMgKmNydGMpCiAJCXJldHVybiBjcnRjLT5waXBlOwogfQog
Ci1zdGF0aWMgdTMyIGludGVsX2NydGNfbWF4X3ZibGFua19jb3VudChjb25zdCBzdHJ1Y3QgaW50
ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkKLXsKLQlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAq
ZGV2X3ByaXYgPSB0b19pOTE1KGNydGNfc3RhdGUtPnVhcGkuY3J0Yy0+ZGV2KTsKLQlzdHJ1Y3Qg
aW50ZWxfY3J0YyAqY3J0YyA9IHRvX2ludGVsX2NydGMoY3J0Y19zdGF0ZS0+dWFwaS5jcnRjKTsK
LQl1MzIgbW9kZV9mbGFncyA9IGNydGMtPm1vZGVfZmxhZ3M7Ci0KLQkvKgotCSAqIEZyb20gR2Vu
IDExLCBJbiBjYXNlIG9mIGRzaSBjbWQgbW9kZSwgZnJhbWUgY291bnRlciB3b3VsZG50Ci0JICog
aGF2ZSB1cGRhdGVkIGF0IHRoZSBiZWdpbm5pbmcgb2YgVEUsIGlmIHdlIHdhbnQgdG8gdXNlCi0J
ICogdGhlIGh3IGNvdW50ZXIsIHRoZW4gd2Ugd291bGQgZmluZCBpdCB1cGRhdGVkIGluIG9ubHkK
LQkgKiB0aGUgbmV4dCBURSwgaGVuY2Ugc3dpdGNoaW5nIHRvIHN3IGNvdW50ZXIuCi0JICovCi0J
aWYgKG1vZGVfZmxhZ3MgJiAoSTkxNV9NT0RFX0ZMQUdfRFNJX1VTRV9URTAgfCBJOTE1X01PREVf
RkxBR19EU0lfVVNFX1RFMSkpCi0JCXJldHVybiAwOwotCi0JLyoKLQkgKiBPbiBpOTY1Z20gdGhl
IGhhcmR3YXJlIGZyYW1lIGNvdW50ZXIgcmVhZHMKLQkgKiB6ZXJvIHdoZW4gdGhlIFRWIGVuY29k
ZXIgaXMgZW5hYmxlZCA6KAotCSAqLwotCWlmIChJU19JOTY1R00oZGV2X3ByaXYpICYmCi0JICAg
IChjcnRjX3N0YXRlLT5vdXRwdXRfdHlwZXMgJiBCSVQoSU5URUxfT1VUUFVUX1RWT1VUKSkpCi0J
CXJldHVybiAwOwotCi0JaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0gNSB8fCBJU19HNFgoZGV2
X3ByaXYpKQotCQlyZXR1cm4gMHhmZmZmZmZmZjsgLyogZnVsbCAzMiBiaXQgY291bnRlciAqLwot
CWVsc2UgaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0gMykKLQkJcmV0dXJuIDB4ZmZmZmZmOyAv
KiBvbmx5IDI0IGJpdHMgb2YgZnJhbWUgY291bnQgKi8KLQllbHNlCi0JCXJldHVybiAwOyAvKiBH
ZW4yIGRvZXNuJ3QgaGF2ZSBhIGhhcmR3YXJlIGZyYW1lIGNvdW50ZXIgKi8KLX0KLQotdm9pZCBp
bnRlbF9jcnRjX3ZibGFua19vbihjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19z
dGF0ZSkKLXsKLQlzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YyA9IHRvX2ludGVsX2NydGMoY3J0Y19z
dGF0ZS0+dWFwaS5jcnRjKTsKLQotCWFzc2VydF92YmxhbmtfZGlzYWJsZWQoJmNydGMtPmJhc2Up
OwotCWRybV9jcnRjX3NldF9tYXhfdmJsYW5rX2NvdW50KCZjcnRjLT5iYXNlLAotCQkJCSAgICAg
IGludGVsX2NydGNfbWF4X3ZibGFua19jb3VudChjcnRjX3N0YXRlKSk7Ci0JZHJtX2NydGNfdmJs
YW5rX29uKCZjcnRjLT5iYXNlKTsKLX0KLQotdm9pZCBpbnRlbF9jcnRjX3ZibGFua19vZmYoY29u
c3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpCi17Ci0Jc3RydWN0IGludGVs
X2NydGMgKmNydGMgPSB0b19pbnRlbF9jcnRjKGNydGNfc3RhdGUtPnVhcGkuY3J0Yyk7Ci0KLQlk
cm1fY3J0Y192Ymxhbmtfb2ZmKCZjcnRjLT5iYXNlKTsKLQlhc3NlcnRfdmJsYW5rX2Rpc2FibGVk
KCZjcnRjLT5iYXNlKTsKLX0KLQogdm9pZCBpbnRlbF9lbmFibGVfcGlwZShjb25zdCBzdHJ1Y3Qg
aW50ZWxfY3J0Y19zdGF0ZSAqbmV3X2NydGNfc3RhdGUpCiB7CiAJc3RydWN0IGludGVsX2NydGMg
KmNydGMgPSB0b19pbnRlbF9jcnRjKG5ld19jcnRjX3N0YXRlLT51YXBpLmNydGMpOwpAQCAtMTE0
NjQsMzMgKzExNDA4LDYgQEAgc3RhdGljIHZvaWQgaWxrX3BjaF9jbG9ja19nZXQoc3RydWN0IGlu
dGVsX2NydGMgKmNydGMsCiAJCQkJCSAmcGlwZV9jb25maWctPmZkaV9tX24pOwogfQogCi1zdGF0
aWMgdm9pZCBpbnRlbF9jcnRjX3N0YXRlX3Jlc2V0KHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpj
cnRjX3N0YXRlLAotCQkJCSAgIHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjKQotewotCW1lbXNldChj
cnRjX3N0YXRlLCAwLCBzaXplb2YoKmNydGNfc3RhdGUpKTsKLQotCV9fZHJtX2F0b21pY19oZWxw
ZXJfY3J0Y19zdGF0ZV9yZXNldCgmY3J0Y19zdGF0ZS0+dWFwaSwgJmNydGMtPmJhc2UpOwotCi0J
Y3J0Y19zdGF0ZS0+Y3B1X3RyYW5zY29kZXIgPSBJTlZBTElEX1RSQU5TQ09ERVI7Ci0JY3J0Y19z
dGF0ZS0+bWFzdGVyX3RyYW5zY29kZXIgPSBJTlZBTElEX1RSQU5TQ09ERVI7Ci0JY3J0Y19zdGF0
ZS0+aHN3X3dvcmthcm91bmRfcGlwZSA9IElOVkFMSURfUElQRTsKLQljcnRjX3N0YXRlLT5vdXRw
dXRfZm9ybWF0ID0gSU5URUxfT1VUUFVUX0ZPUk1BVF9JTlZBTElEOwotCWNydGNfc3RhdGUtPnNj
YWxlcl9zdGF0ZS5zY2FsZXJfaWQgPSAtMTsKLQljcnRjX3N0YXRlLT5tc3RfbWFzdGVyX3RyYW5z
Y29kZXIgPSBJTlZBTElEX1RSQU5TQ09ERVI7Ci19Ci0KLXN0YXRpYyBzdHJ1Y3QgaW50ZWxfY3J0
Y19zdGF0ZSAqaW50ZWxfY3J0Y19zdGF0ZV9hbGxvYyhzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YykK
LXsKLQlzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZTsKLQotCWNydGNfc3RhdGUg
PSBrbWFsbG9jKHNpemVvZigqY3J0Y19zdGF0ZSksIEdGUF9LRVJORUwpOwotCi0JaWYgKGNydGNf
c3RhdGUpCi0JCWludGVsX2NydGNfc3RhdGVfcmVzZXQoY3J0Y19zdGF0ZSwgY3J0Yyk7Ci0KLQly
ZXR1cm4gY3J0Y19zdGF0ZTsKLX0KLQogLyogUmV0dXJucyB0aGUgY3VycmVudGx5IHByb2dyYW1t
ZWQgbW9kZSBvZiB0aGUgZ2l2ZW4gZW5jb2Rlci4gKi8KIHN0cnVjdCBkcm1fZGlzcGxheV9tb2Rl
ICoKIGludGVsX2VuY29kZXJfY3VycmVudF9tb2RlKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNv
ZGVyKQpAQCAtMTE1MzEsMTQgKzExNDQ4LDYgQEAgaW50ZWxfZW5jb2Rlcl9jdXJyZW50X21vZGUo
c3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIpCiAJcmV0dXJuIG1vZGU7CiB9CiAKLXN0YXRp
YyB2b2lkIGludGVsX2NydGNfZGVzdHJveShzdHJ1Y3QgZHJtX2NydGMgKmNydGMpCi17Ci0Jc3Ry
dWN0IGludGVsX2NydGMgKmludGVsX2NydGMgPSB0b19pbnRlbF9jcnRjKGNydGMpOwotCi0JZHJt
X2NydGNfY2xlYW51cChjcnRjKTsKLQlrZnJlZShpbnRlbF9jcnRjKTsKLX0KLQogLyoqCiAgKiBp
bnRlbF93bV9uZWVkX3VwZGF0ZSAtIENoZWNrIHdoZXRoZXIgd2F0ZXJtYXJrcyBuZWVkIHVwZGF0
aW5nCiAgKiBAY3VyOiBjdXJyZW50IHBsYW5lIHN0YXRlCkBAIC0xNDc0MiwxNyArMTQ2NTEsNiBA
QCBzdGF0aWMgaW50IGludGVsX2F0b21pY19wcmVwYXJlX2NvbW1pdChzdHJ1Y3QgaW50ZWxfYXRv
bWljX3N0YXRlICpzdGF0ZSkKIAlyZXR1cm4gMDsKIH0KIAotdTMyIGludGVsX2NydGNfZ2V0X3Zi
bGFua19jb3VudGVyKHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjKQotewotCXN0cnVjdCBkcm1fZGV2
aWNlICpkZXYgPSBjcnRjLT5iYXNlLmRldjsKLQlzdHJ1Y3QgZHJtX3ZibGFua19jcnRjICp2Ymxh
bmsgPSAmZGV2LT52YmxhbmtbZHJtX2NydGNfaW5kZXgoJmNydGMtPmJhc2UpXTsKLQotCWlmICgh
dmJsYW5rLT5tYXhfdmJsYW5rX2NvdW50KQotCQlyZXR1cm4gKHUzMilkcm1fY3J0Y19hY2N1cmF0
ZV92YmxhbmtfY291bnQoJmNydGMtPmJhc2UpOwotCi0JcmV0dXJuIGNydGMtPmJhc2UuZnVuY3Mt
PmdldF92YmxhbmtfY291bnRlcigmY3J0Yy0+YmFzZSk7Ci19Ci0KIHZvaWQgaW50ZWxfY3J0Y19h
cm1fZmlmb191bmRlcnJ1bihzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YywKIAkJCQkgIHN0cnVjdCBp
bnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQogewpAQCAtMTU4MDUsMTEzICsxNTcwMyw2IEBA
IHZvaWQgaW50ZWxfcGxhbmVfZGVzdHJveShzdHJ1Y3QgZHJtX3BsYW5lICpwbGFuZSkKIAlrZnJl
ZSh0b19pbnRlbF9wbGFuZShwbGFuZSkpOwogfQogCi1zdGF0aWMgaW50IGludGVsX2NydGNfbGF0
ZV9yZWdpc3RlcihzdHJ1Y3QgZHJtX2NydGMgKmNydGMpCi17Ci0JaW50ZWxfY3J0Y19kZWJ1Z2Zz
X2FkZChjcnRjKTsKLQlyZXR1cm4gMDsKLX0KLQotI2RlZmluZSBJTlRFTF9DUlRDX0ZVTkNTIFwK
LQkuc2V0X2NvbmZpZyA9IGRybV9hdG9taWNfaGVscGVyX3NldF9jb25maWcsIFwKLQkuZGVzdHJv
eSA9IGludGVsX2NydGNfZGVzdHJveSwgXAotCS5wYWdlX2ZsaXAgPSBkcm1fYXRvbWljX2hlbHBl
cl9wYWdlX2ZsaXAsIFwKLQkuYXRvbWljX2R1cGxpY2F0ZV9zdGF0ZSA9IGludGVsX2NydGNfZHVw
bGljYXRlX3N0YXRlLCBcCi0JLmF0b21pY19kZXN0cm95X3N0YXRlID0gaW50ZWxfY3J0Y19kZXN0
cm95X3N0YXRlLCBcCi0JLnNldF9jcmNfc291cmNlID0gaW50ZWxfY3J0Y19zZXRfY3JjX3NvdXJj
ZSwgXAotCS52ZXJpZnlfY3JjX3NvdXJjZSA9IGludGVsX2NydGNfdmVyaWZ5X2NyY19zb3VyY2Us
IFwKLQkuZ2V0X2NyY19zb3VyY2VzID0gaW50ZWxfY3J0Y19nZXRfY3JjX3NvdXJjZXMsIFwKLQku
bGF0ZV9yZWdpc3RlciA9IGludGVsX2NydGNfbGF0ZV9yZWdpc3RlcgotCi1zdGF0aWMgY29uc3Qg
c3RydWN0IGRybV9jcnRjX2Z1bmNzIGJkd19jcnRjX2Z1bmNzID0gewotCUlOVEVMX0NSVENfRlVO
Q1MsCi0KLQkuZ2V0X3ZibGFua19jb3VudGVyID0gZzR4X2dldF92YmxhbmtfY291bnRlciwKLQku
ZW5hYmxlX3ZibGFuayA9IGJkd19lbmFibGVfdmJsYW5rLAotCS5kaXNhYmxlX3ZibGFuayA9IGJk
d19kaXNhYmxlX3ZibGFuaywKLQkuZ2V0X3ZibGFua190aW1lc3RhbXAgPSBpbnRlbF9jcnRjX2dl
dF92YmxhbmtfdGltZXN0YW1wLAotfTsKLQotc3RhdGljIGNvbnN0IHN0cnVjdCBkcm1fY3J0Y19m
dW5jcyBpbGtfY3J0Y19mdW5jcyA9IHsKLQlJTlRFTF9DUlRDX0ZVTkNTLAotCi0JLmdldF92Ymxh
bmtfY291bnRlciA9IGc0eF9nZXRfdmJsYW5rX2NvdW50ZXIsCi0JLmVuYWJsZV92YmxhbmsgPSBp
bGtfZW5hYmxlX3ZibGFuaywKLQkuZGlzYWJsZV92YmxhbmsgPSBpbGtfZGlzYWJsZV92Ymxhbmss
Ci0JLmdldF92YmxhbmtfdGltZXN0YW1wID0gaW50ZWxfY3J0Y19nZXRfdmJsYW5rX3RpbWVzdGFt
cCwKLX07Ci0KLXN0YXRpYyBjb25zdCBzdHJ1Y3QgZHJtX2NydGNfZnVuY3MgZzR4X2NydGNfZnVu
Y3MgPSB7Ci0JSU5URUxfQ1JUQ19GVU5DUywKLQotCS5nZXRfdmJsYW5rX2NvdW50ZXIgPSBnNHhf
Z2V0X3ZibGFua19jb3VudGVyLAotCS5lbmFibGVfdmJsYW5rID0gaTk2NV9lbmFibGVfdmJsYW5r
LAotCS5kaXNhYmxlX3ZibGFuayA9IGk5NjVfZGlzYWJsZV92YmxhbmssCi0JLmdldF92Ymxhbmtf
dGltZXN0YW1wID0gaW50ZWxfY3J0Y19nZXRfdmJsYW5rX3RpbWVzdGFtcCwKLX07Ci0KLXN0YXRp
YyBjb25zdCBzdHJ1Y3QgZHJtX2NydGNfZnVuY3MgaTk2NV9jcnRjX2Z1bmNzID0gewotCUlOVEVM
X0NSVENfRlVOQ1MsCi0KLQkuZ2V0X3ZibGFua19jb3VudGVyID0gaTkxNV9nZXRfdmJsYW5rX2Nv
dW50ZXIsCi0JLmVuYWJsZV92YmxhbmsgPSBpOTY1X2VuYWJsZV92YmxhbmssCi0JLmRpc2FibGVf
dmJsYW5rID0gaTk2NV9kaXNhYmxlX3ZibGFuaywKLQkuZ2V0X3ZibGFua190aW1lc3RhbXAgPSBp
bnRlbF9jcnRjX2dldF92YmxhbmtfdGltZXN0YW1wLAotfTsKLQotc3RhdGljIGNvbnN0IHN0cnVj
dCBkcm1fY3J0Y19mdW5jcyBpOTE1Z21fY3J0Y19mdW5jcyA9IHsKLQlJTlRFTF9DUlRDX0ZVTkNT
LAotCi0JLmdldF92YmxhbmtfY291bnRlciA9IGk5MTVfZ2V0X3ZibGFua19jb3VudGVyLAotCS5l
bmFibGVfdmJsYW5rID0gaTkxNWdtX2VuYWJsZV92YmxhbmssCi0JLmRpc2FibGVfdmJsYW5rID0g
aTkxNWdtX2Rpc2FibGVfdmJsYW5rLAotCS5nZXRfdmJsYW5rX3RpbWVzdGFtcCA9IGludGVsX2Ny
dGNfZ2V0X3ZibGFua190aW1lc3RhbXAsCi19OwotCi1zdGF0aWMgY29uc3Qgc3RydWN0IGRybV9j
cnRjX2Z1bmNzIGk5MTVfY3J0Y19mdW5jcyA9IHsKLQlJTlRFTF9DUlRDX0ZVTkNTLAotCi0JLmdl
dF92YmxhbmtfY291bnRlciA9IGk5MTVfZ2V0X3ZibGFua19jb3VudGVyLAotCS5lbmFibGVfdmJs
YW5rID0gaTh4eF9lbmFibGVfdmJsYW5rLAotCS5kaXNhYmxlX3ZibGFuayA9IGk4eHhfZGlzYWJs
ZV92YmxhbmssCi0JLmdldF92YmxhbmtfdGltZXN0YW1wID0gaW50ZWxfY3J0Y19nZXRfdmJsYW5r
X3RpbWVzdGFtcCwKLX07Ci0KLXN0YXRpYyBjb25zdCBzdHJ1Y3QgZHJtX2NydGNfZnVuY3MgaTh4
eF9jcnRjX2Z1bmNzID0gewotCUlOVEVMX0NSVENfRlVOQ1MsCi0KLQkvKiBubyBodyB2Ymxhbmsg
Y291bnRlciAqLwotCS5lbmFibGVfdmJsYW5rID0gaTh4eF9lbmFibGVfdmJsYW5rLAotCS5kaXNh
YmxlX3ZibGFuayA9IGk4eHhfZGlzYWJsZV92YmxhbmssCi0JLmdldF92YmxhbmtfdGltZXN0YW1w
ID0gaW50ZWxfY3J0Y19nZXRfdmJsYW5rX3RpbWVzdGFtcCwKLX07Ci0KLXN0YXRpYyBzdHJ1Y3Qg
aW50ZWxfY3J0YyAqaW50ZWxfY3J0Y19hbGxvYyh2b2lkKQotewotCXN0cnVjdCBpbnRlbF9jcnRj
X3N0YXRlICpjcnRjX3N0YXRlOwotCXN0cnVjdCBpbnRlbF9jcnRjICpjcnRjOwotCi0JY3J0YyA9
IGt6YWxsb2Moc2l6ZW9mKCpjcnRjKSwgR0ZQX0tFUk5FTCk7Ci0JaWYgKCFjcnRjKQotCQlyZXR1
cm4gRVJSX1BUUigtRU5PTUVNKTsKLQotCWNydGNfc3RhdGUgPSBpbnRlbF9jcnRjX3N0YXRlX2Fs
bG9jKGNydGMpOwotCWlmICghY3J0Y19zdGF0ZSkgewotCQlrZnJlZShjcnRjKTsKLQkJcmV0dXJu
IEVSUl9QVFIoLUVOT01FTSk7Ci0JfQotCi0JY3J0Yy0+YmFzZS5zdGF0ZSA9ICZjcnRjX3N0YXRl
LT51YXBpOwotCWNydGMtPmNvbmZpZyA9IGNydGNfc3RhdGU7Ci0KLQlyZXR1cm4gY3J0YzsKLX0K
LQotc3RhdGljIHZvaWQgaW50ZWxfY3J0Y19mcmVlKHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjKQot
ewotCWludGVsX2NydGNfZGVzdHJveV9zdGF0ZSgmY3J0Yy0+YmFzZSwgY3J0Yy0+YmFzZS5zdGF0
ZSk7Ci0Ja2ZyZWUoY3J0Yyk7Ci19Ci0KIHN0YXRpYyB2b2lkIGludGVsX3BsYW5lX3Bvc3NpYmxl
X2NydGNzX2luaXQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQogewogCXN0cnVj
dCBpbnRlbF9wbGFuZSAqcGxhbmU7CkBAIC0xNTkyNCwxMDAgKzE1NzE1LDYgQEAgc3RhdGljIHZv
aWQgaW50ZWxfcGxhbmVfcG9zc2libGVfY3J0Y3NfaW5pdChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0
ZSAqZGV2X3ByaXYpCiAJfQogfQogCi1zdGF0aWMgaW50IGludGVsX2NydGNfaW5pdChzdHJ1Y3Qg
ZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsIGVudW0gcGlwZSBwaXBlKQotewotCXN0cnVjdCBp
bnRlbF9wbGFuZSAqcHJpbWFyeSwgKmN1cnNvcjsKLQljb25zdCBzdHJ1Y3QgZHJtX2NydGNfZnVu
Y3MgKmZ1bmNzOwotCXN0cnVjdCBpbnRlbF9jcnRjICpjcnRjOwotCWludCBzcHJpdGUsIHJldDsK
LQotCWNydGMgPSBpbnRlbF9jcnRjX2FsbG9jKCk7Ci0JaWYgKElTX0VSUihjcnRjKSkKLQkJcmV0
dXJuIFBUUl9FUlIoY3J0Yyk7Ci0KLQljcnRjLT5waXBlID0gcGlwZTsKLQljcnRjLT5udW1fc2Nh
bGVycyA9IFJVTlRJTUVfSU5GTyhkZXZfcHJpdiktPm51bV9zY2FsZXJzW3BpcGVdOwotCi0JcHJp
bWFyeSA9IGludGVsX3ByaW1hcnlfcGxhbmVfY3JlYXRlKGRldl9wcml2LCBwaXBlKTsKLQlpZiAo
SVNfRVJSKHByaW1hcnkpKSB7Ci0JCXJldCA9IFBUUl9FUlIocHJpbWFyeSk7Ci0JCWdvdG8gZmFp
bDsKLQl9Ci0JY3J0Yy0+cGxhbmVfaWRzX21hc2sgfD0gQklUKHByaW1hcnktPmlkKTsKLQotCWZv
cl9lYWNoX3Nwcml0ZShkZXZfcHJpdiwgcGlwZSwgc3ByaXRlKSB7Ci0JCXN0cnVjdCBpbnRlbF9w
bGFuZSAqcGxhbmU7Ci0KLQkJcGxhbmUgPSBpbnRlbF9zcHJpdGVfcGxhbmVfY3JlYXRlKGRldl9w
cml2LCBwaXBlLCBzcHJpdGUpOwotCQlpZiAoSVNfRVJSKHBsYW5lKSkgewotCQkJcmV0ID0gUFRS
X0VSUihwbGFuZSk7Ci0JCQlnb3RvIGZhaWw7Ci0JCX0KLQkJY3J0Yy0+cGxhbmVfaWRzX21hc2sg
fD0gQklUKHBsYW5lLT5pZCk7Ci0JfQotCi0JY3Vyc29yID0gaW50ZWxfY3Vyc29yX3BsYW5lX2Ny
ZWF0ZShkZXZfcHJpdiwgcGlwZSk7Ci0JaWYgKElTX0VSUihjdXJzb3IpKSB7Ci0JCXJldCA9IFBU
Ul9FUlIoY3Vyc29yKTsKLQkJZ290byBmYWlsOwotCX0KLQljcnRjLT5wbGFuZV9pZHNfbWFzayB8
PSBCSVQoY3Vyc29yLT5pZCk7Ci0KLQlpZiAoSEFTX0dNQ0goZGV2X3ByaXYpKSB7Ci0JCWlmIChJ
U19DSEVSUllWSUVXKGRldl9wcml2KSB8fAotCQkgICAgSVNfVkFMTEVZVklFVyhkZXZfcHJpdikg
fHwgSVNfRzRYKGRldl9wcml2KSkKLQkJCWZ1bmNzID0gJmc0eF9jcnRjX2Z1bmNzOwotCQllbHNl
IGlmIChJU19HRU4oZGV2X3ByaXYsIDQpKQotCQkJZnVuY3MgPSAmaTk2NV9jcnRjX2Z1bmNzOwot
CQllbHNlIGlmIChJU19JOTQ1R00oZGV2X3ByaXYpIHx8IElTX0k5MTVHTShkZXZfcHJpdikpCi0J
CQlmdW5jcyA9ICZpOTE1Z21fY3J0Y19mdW5jczsKLQkJZWxzZSBpZiAoSVNfR0VOKGRldl9wcml2
LCAzKSkKLQkJCWZ1bmNzID0gJmk5MTVfY3J0Y19mdW5jczsKLQkJZWxzZQotCQkJZnVuY3MgPSAm
aTh4eF9jcnRjX2Z1bmNzOwotCX0gZWxzZSB7Ci0JCWlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49
IDgpCi0JCQlmdW5jcyA9ICZiZHdfY3J0Y19mdW5jczsKLQkJZWxzZQotCQkJZnVuY3MgPSAmaWxr
X2NydGNfZnVuY3M7Ci0JfQotCi0JcmV0ID0gZHJtX2NydGNfaW5pdF93aXRoX3BsYW5lcygmZGV2
X3ByaXYtPmRybSwgJmNydGMtPmJhc2UsCi0JCQkJCSZwcmltYXJ5LT5iYXNlLCAmY3Vyc29yLT5i
YXNlLAotCQkJCQlmdW5jcywgInBpcGUgJWMiLCBwaXBlX25hbWUocGlwZSkpOwotCWlmIChyZXQp
Ci0JCWdvdG8gZmFpbDsKLQotCUJVR19PTihwaXBlID49IEFSUkFZX1NJWkUoZGV2X3ByaXYtPnBp
cGVfdG9fY3J0Y19tYXBwaW5nKSB8fAotCSAgICAgICBkZXZfcHJpdi0+cGlwZV90b19jcnRjX21h
cHBpbmdbcGlwZV0gIT0gTlVMTCk7Ci0JZGV2X3ByaXYtPnBpcGVfdG9fY3J0Y19tYXBwaW5nW3Bp
cGVdID0gY3J0YzsKLQotCWlmIChJTlRFTF9HRU4oZGV2X3ByaXYpIDwgOSkgewotCQllbnVtIGk5
eHhfcGxhbmVfaWQgaTl4eF9wbGFuZSA9IHByaW1hcnktPmk5eHhfcGxhbmU7Ci0KLQkJQlVHX09O
KGk5eHhfcGxhbmUgPj0gQVJSQVlfU0laRShkZXZfcHJpdi0+cGxhbmVfdG9fY3J0Y19tYXBwaW5n
KSB8fAotCQkgICAgICAgZGV2X3ByaXYtPnBsYW5lX3RvX2NydGNfbWFwcGluZ1tpOXh4X3BsYW5l
XSAhPSBOVUxMKTsKLQkJZGV2X3ByaXYtPnBsYW5lX3RvX2NydGNfbWFwcGluZ1tpOXh4X3BsYW5l
XSA9IGNydGM7Ci0JfQotCi0JaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0gMTApCi0JCWRybV9j
cnRjX2NyZWF0ZV9zY2FsaW5nX2ZpbHRlcl9wcm9wZXJ0eSgmY3J0Yy0+YmFzZSwKLQkJCQkJCUJJ
VChEUk1fU0NBTElOR19GSUxURVJfREVGQVVMVCkgfAotCQkJCQkJQklUKERSTV9TQ0FMSU5HX0ZJ
TFRFUl9ORUFSRVNUX05FSUdIQk9SKSk7Ci0KLQlpbnRlbF9jb2xvcl9pbml0KGNydGMpOwotCi0J
aW50ZWxfY3J0Y19jcmNfaW5pdChjcnRjKTsKLQotCWRybV9XQVJOX09OKCZkZXZfcHJpdi0+ZHJt
LCBkcm1fY3J0Y19pbmRleCgmY3J0Yy0+YmFzZSkgIT0gY3J0Yy0+cGlwZSk7Ci0KLQlyZXR1cm4g
MDsKLQotZmFpbDoKLQlpbnRlbF9jcnRjX2ZyZWUoY3J0Yyk7Ci0KLQlyZXR1cm4gcmV0OwotfQog
CiBpbnQgaW50ZWxfZ2V0X3BpcGVfZnJvbV9jcnRjX2lkX2lvY3RsKHN0cnVjdCBkcm1fZGV2aWNl
ICpkZXYsIHZvaWQgKmRhdGEsCiAJCQkJICAgICAgc3RydWN0IGRybV9maWxlICpmaWxlKQotLSAK
Mi4yNy4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
