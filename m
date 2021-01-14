Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E42E72F5CCD
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Jan 2021 10:05:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8045A6E0BA;
	Thu, 14 Jan 2021 09:05:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-44.mimecast.com
 (us-smtp-delivery-44.mimecast.com [207.211.30.44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4B3606E09F
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Jan 2021 09:05:45 +0000 (UTC)
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-345-h1t-Aj1AMKasbsvrM4cTBA-1; Thu, 14 Jan 2021 04:05:42 -0500
X-MC-Unique: h1t-Aj1AMKasbsvrM4cTBA-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 101C3BBEE0;
 Thu, 14 Jan 2021 09:05:41 +0000 (UTC)
Received: from dreadlord-bne-redhat-com.bne.redhat.com (unknown [10.64.32.209])
 by smtp.corp.redhat.com (Postfix) with ESMTP id DD91410016FE;
 Thu, 14 Jan 2021 09:05:39 +0000 (UTC)
From: Dave Airlie <airlied@gmail.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 14 Jan 2021 19:05:19 +1000
Message-Id: <20210114090522.22750-9-airlied@gmail.com>
In-Reply-To: <20210114090522.22750-1-airlied@gmail.com>
References: <20210114090522.22750-1-airlied@gmail.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmail.com
Subject: [Intel-gfx] [PATCH 08/11] drm/i915: split fb scalable checks into
 g4x and skl versions
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

RnJvbTogRGF2ZSBBaXJsaWUgPGFpcmxpZWRAcmVkaGF0LmNvbT4KClRoaXMganVzdCBjbGVhbnMg
dGhlc2UgdXAgYSBiaXQuCgpTaWduZWQtb2ZmLWJ5OiBEYXZlIEFpcmxpZSA8YWlybGllZEByZWRo
YXQuY29tPgpTaWduZWQtb2ZmLWJ5OiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29t
PgpSZXZpZXdlZC1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVs
LmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Nwcml0ZS5jICAg
ICAgICB8IDcgKysrLS0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9za2xfdW5pdmVy
c2FsX3BsYW5lLmMgfCA0ICsrLS0KIDIgZmlsZXMgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspLCA2
IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfc3ByaXRlLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Nwcml0
ZS5jCmluZGV4IDdkNzc5NDAyY2VmNy4uOTk5NWJmNmMzOWI5IDEwMDY0NAotLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Nwcml0ZS5jCisrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfc3ByaXRlLmMKQEAgLTEzNDUsMTkgKzEzNDUsMTggQEAgZzR4
X3BsYW5lX2dldF9od19zdGF0ZShzdHJ1Y3QgaW50ZWxfcGxhbmUgKnBsYW5lLAogCXJldHVybiBy
ZXQ7CiB9CiAKLXN0YXRpYyBib29sIGludGVsX2ZiX3NjYWxhYmxlKGNvbnN0IHN0cnVjdCBkcm1f
ZnJhbWVidWZmZXIgKmZiKQorc3RhdGljIGJvb2wgZzR4X2ZiX3NjYWxhYmxlKGNvbnN0IHN0cnVj
dCBkcm1fZnJhbWVidWZmZXIgKmZiKQogewogCWlmICghZmIpCiAJCXJldHVybiBmYWxzZTsKIAog
CXN3aXRjaCAoZmItPmZvcm1hdC0+Zm9ybWF0KSB7CiAJY2FzZSBEUk1fRk9STUFUX0M4OgotCQly
ZXR1cm4gZmFsc2U7CiAJY2FzZSBEUk1fRk9STUFUX1hSR0IxNjE2MTYxNkY6CiAJY2FzZSBEUk1f
Rk9STUFUX0FSR0IxNjE2MTYxNkY6CiAJY2FzZSBEUk1fRk9STUFUX1hCR1IxNjE2MTYxNkY6CiAJ
Y2FzZSBEUk1fRk9STUFUX0FCR1IxNjE2MTYxNkY6Ci0JCXJldHVybiBJTlRFTF9HRU4odG9faTkx
NShmYi0+ZGV2KSkgPj0gMTE7CisJCXJldHVybiBmYWxzZTsKIAlkZWZhdWx0OgogCQlyZXR1cm4g
dHJ1ZTsKIAl9CkBAIC0xNDM0LDcgKzE0MzMsNyBAQCBnNHhfc3ByaXRlX2NoZWNrKHN0cnVjdCBp
bnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlLAogCWludCBtYXhfc2NhbGUgPSBEUk1fUExBTkVf
SEVMUEVSX05PX1NDQUxJTkc7CiAJaW50IHJldDsKIAotCWlmIChpbnRlbF9mYl9zY2FsYWJsZShw
bGFuZV9zdGF0ZS0+aHcuZmIpKSB7CisJaWYgKGc0eF9mYl9zY2FsYWJsZShwbGFuZV9zdGF0ZS0+
aHcuZmIpKSB7CiAJCWlmIChJTlRFTF9HRU4oZGV2X3ByaXYpIDwgNykgewogCQkJbWluX3NjYWxl
ID0gMTsKIAkJCW1heF9zY2FsZSA9IDE2IDw8IDE2OwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9za2xfdW5pdmVyc2FsX3BsYW5lLmMgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L3NrbF91bml2ZXJzYWxfcGxhbmUuYwppbmRleCBmOTY1OTA3OWFjMTguLmZi
NTkwNTgwMjIzZSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9za2xf
dW5pdmVyc2FsX3BsYW5lLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9za2xf
dW5pdmVyc2FsX3BsYW5lLmMKQEAgLTE2NDUsNyArMTY0NSw3IEBAIHN0YXRpYyBpbnQgc2tsX2No
ZWNrX3BsYW5lX3N1cmZhY2Uoc3RydWN0IGludGVsX3BsYW5lX3N0YXRlICpwbGFuZV9zdGF0ZSkK
IAlyZXR1cm4gMDsKIH0KIAotc3RhdGljIGJvb2wgaW50ZWxfZmJfc2NhbGFibGUoY29uc3Qgc3Ry
dWN0IGRybV9mcmFtZWJ1ZmZlciAqZmIpCitzdGF0aWMgYm9vbCBza2xfZmJfc2NhbGFibGUoY29u
c3Qgc3RydWN0IGRybV9mcmFtZWJ1ZmZlciAqZmIpCiB7CiAJaWYgKCFmYikKIAkJcmV0dXJuIGZh
bHNlOwpAQCAtMTY3OCw3ICsxNjc4LDcgQEAgc3RhdGljIGludCBza2xfcGxhbmVfY2hlY2soc3Ry
dWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUsCiAJCXJldHVybiByZXQ7CiAKIAkvKiB1
c2Ugc2NhbGVyIHdoZW4gY29sb3JrZXkgaXMgbm90IHJlcXVpcmVkICovCi0JaWYgKCFwbGFuZV9z
dGF0ZS0+Y2tleS5mbGFncyAmJiBpbnRlbF9mYl9zY2FsYWJsZShmYikpIHsKKwlpZiAoIXBsYW5l
X3N0YXRlLT5ja2V5LmZsYWdzICYmIHNrbF9mYl9zY2FsYWJsZShmYikpIHsKIAkJbWluX3NjYWxl
ID0gMTsKIAkJbWF4X3NjYWxlID0gc2tsX3BsYW5lX21heF9zY2FsZShkZXZfcHJpdiwgZmIpOwog
CX0KLS0gCjIuMjcuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4Cg==
