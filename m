Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F221819A1
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Aug 2019 14:43:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8B2926E44F;
	Mon,  5 Aug 2019 12:43:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 958606E42C;
 Mon,  5 Aug 2019 12:43:16 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 25D5E3082115;
 Mon,  5 Aug 2019 12:43:16 +0000 (UTC)
Received: from sirius.home.kraxel.org (ovpn-116-81.ams2.redhat.com
 [10.36.116.81])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 6BC8352EE;
 Mon,  5 Aug 2019 12:43:15 +0000 (UTC)
Received: by sirius.home.kraxel.org (Postfix, from userid 1000)
 id 5DDA39DBD; Mon,  5 Aug 2019 14:43:12 +0200 (CEST)
From: Gerd Hoffmann <kraxel@redhat.com>
To: dri-devel@lists.freedesktop.org
Date: Mon,  5 Aug 2019 14:42:58 +0200
Message-Id: <20190805124310.3275-7-kraxel@redhat.com>
In-Reply-To: <20190805124310.3275-1-kraxel@redhat.com>
References: <20190805124310.3275-1-kraxel@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.47]); Mon, 05 Aug 2019 12:43:16 +0000 (UTC)
Subject: [Intel-gfx] [PATCH v5 06/18] drm/nouveau: use embedded gem object
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
Cc: thomas@shipmail.org, tzimmermann@suse.de, David Airlie <airlied@linux.ie>,
 ckoenig.leichtzumerken@gmail.com, intel-gfx@lists.freedesktop.org,
 open list <linux-kernel@vger.kernel.org>, bskeggs@redhat.com,
 "open list:DRM DRIVER FOR NVIDIA GEFORCE/QUADRO GPUS"
 <nouveau@lists.freedesktop.org>, Gerd Hoffmann <kraxel@redhat.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RHJvcCBkcm1fZ2VtX29iamVjdCBmcm9tIG5vdXZlYXVfYm8sIHVzZSB0aGUKdHRtX2J1ZmZlcl9v
YmplY3QuYmFzZSBpbnN0ZWFkLgoKQnVpbGQgdGVzdGVkIG9ubHkuCgpTaWduZWQtb2ZmLWJ5OiBH
ZXJkIEhvZmZtYW5uIDxrcmF4ZWxAcmVkaGF0LmNvbT4KQWNrZWQtYnk6IENocmlzdGlhbiBLw7Zu
aWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vbm91dmVh
dS9ub3V2ZWF1X2JvLmggICAgICB8ICA1IC0tLS0tCiBkcml2ZXJzL2dwdS9kcm0vbm91dmVhdS9u
b3V2ZWF1X2dlbS5oICAgICB8ICAyICstCiBkcml2ZXJzL2dwdS9kcm0vbm91dmVhdS9ub3V2ZWF1
X2FiaTE2LmMgICB8ICA0ICsrLS0KIGRyaXZlcnMvZ3B1L2RybS9ub3V2ZWF1L25vdXZlYXVfYm8u
YyAgICAgIHwgIDYgKysrLS0tCiBkcml2ZXJzL2dwdS9kcm0vbm91dmVhdS9ub3V2ZWF1X2Rpc3Bs
YXkuYyB8ICA4ICsrKystLS0tCiBkcml2ZXJzL2dwdS9kcm0vbm91dmVhdS9ub3V2ZWF1X2dlbS5j
ICAgICB8IDE1ICsrKysrKysrLS0tLS0tLQogZHJpdmVycy9ncHUvZHJtL25vdXZlYXUvbm91dmVh
dV9wcmltZS5jICAgfCAgNCArKy0tCiA3IGZpbGVzIGNoYW5nZWQsIDIwIGluc2VydGlvbnMoKyks
IDI0IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9ub3V2ZWF1L25v
dXZlYXVfYm8uaCBiL2RyaXZlcnMvZ3B1L2RybS9ub3V2ZWF1L25vdXZlYXVfYm8uaAppbmRleCAz
ODNhYzM2ZDU4NjkuLmQ2NzVlZmU4ZTdmOSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL25v
dXZlYXUvbm91dmVhdV9iby5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9ub3V2ZWF1L25vdXZlYXVf
Ym8uaApAQCAtMzUsMTEgKzM1LDYgQEAgc3RydWN0IG5vdXZlYXVfYm8gewogCiAJc3RydWN0IG5v
dXZlYXVfZHJtX3RpbGUgKnRpbGU7CiAKLQkvKiBPbmx5IHZhbGlkIGlmIGFsbG9jYXRlZCB2aWEg
bm91dmVhdV9nZW1fbmV3KCkgYW5kIGlmZiB5b3UgaG9sZCBhCi0JICogZ2VtIHJlZmVyZW5jZSB0
byBpdCEgRm9yIGRlYnVnZ2luZywgdXNlIGdlbS5maWxwICE9IE5VTEwgdG8gdGVzdAotCSAqIHdo
ZXRoZXIgaXQgaXMgdmFsaWQuICovCi0Jc3RydWN0IGRybV9nZW1fb2JqZWN0IGdlbTsKLQogCS8q
IHByb3RlY3QgYnkgdGhlIHR0bSByZXNlcnZhdGlvbiBsb2NrICovCiAJaW50IHBpbl9yZWZjbnQ7
CiAKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9ub3V2ZWF1L25vdXZlYXVfZ2VtLmggYi9k
cml2ZXJzL2dwdS9kcm0vbm91dmVhdS9ub3V2ZWF1X2dlbS5oCmluZGV4IGQ2N2UyZjllYzU5Yy4u
NDBiYTBmMWJhNWFhIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vbm91dmVhdS9ub3V2ZWF1
X2dlbS5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9ub3V2ZWF1L25vdXZlYXVfZ2VtLmgKQEAgLTEw
LDcgKzEwLDcgQEAKIHN0YXRpYyBpbmxpbmUgc3RydWN0IG5vdXZlYXVfYm8gKgogbm91dmVhdV9n
ZW1fb2JqZWN0KHN0cnVjdCBkcm1fZ2VtX29iamVjdCAqZ2VtKQogewotCXJldHVybiBnZW0gPyBj
b250YWluZXJfb2YoZ2VtLCBzdHJ1Y3Qgbm91dmVhdV9ibywgZ2VtKSA6IE5VTEw7CisJcmV0dXJu
IGdlbSA/IGNvbnRhaW5lcl9vZihnZW0sIHN0cnVjdCBub3V2ZWF1X2JvLCBiby5iYXNlKSA6IE5V
TEw7CiB9CiAKIC8qIG5vdXZlYXVfZ2VtLmMgKi8KZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9ub3V2ZWF1L25vdXZlYXVfYWJpMTYuYyBiL2RyaXZlcnMvZ3B1L2RybS9ub3V2ZWF1L25vdXZl
YXVfYWJpMTYuYwppbmRleCAwYzU4NWRjNWY1YzMuLmUyYmFlMTQyNDUwMiAxMDA2NDQKLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL25vdXZlYXUvbm91dmVhdV9hYmkxNi5jCisrKyBiL2RyaXZlcnMvZ3B1
L2RybS9ub3V2ZWF1L25vdXZlYXVfYWJpMTYuYwpAQCAtMTM5LDcgKzEzOSw3IEBAIG5vdXZlYXVf
YWJpMTZfY2hhbl9maW5pKHN0cnVjdCBub3V2ZWF1X2FiaTE2ICphYmkxNiwKIAlpZiAoY2hhbi0+
bnRmeSkgewogCQlub3V2ZWF1X3ZtYV9kZWwoJmNoYW4tPm50Znlfdm1hKTsKIAkJbm91dmVhdV9i
b191bnBpbihjaGFuLT5udGZ5KTsKLQkJZHJtX2dlbV9vYmplY3RfcHV0X3VubG9ja2VkKCZjaGFu
LT5udGZ5LT5nZW0pOworCQlkcm1fZ2VtX29iamVjdF9wdXRfdW5sb2NrZWQoJmNoYW4tPm50Znkt
PmJvLmJhc2UpOwogCX0KIAogCWlmIChjaGFuLT5oZWFwLmJsb2NrX3NpemUpCkBAIC0zMzksNyAr
MzM5LDcgQEAgbm91dmVhdV9hYmkxNl9pb2N0bF9jaGFubmVsX2FsbG9jKEFCSTE2X0lPQ1RMX0FS
R1MpCiAJCQlnb3RvIGRvbmU7CiAJfQogCi0JcmV0ID0gZHJtX2dlbV9oYW5kbGVfY3JlYXRlKGZp
bGVfcHJpdiwgJmNoYW4tPm50ZnktPmdlbSwKKwlyZXQgPSBkcm1fZ2VtX2hhbmRsZV9jcmVhdGUo
ZmlsZV9wcml2LCAmY2hhbi0+bnRmeS0+Ym8uYmFzZSwKIAkJCQkgICAgJmluaXQtPm5vdGlmaWVy
X2hhbmRsZSk7CiAJaWYgKHJldCkKIAkJZ290byBkb25lOwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL25vdXZlYXUvbm91dmVhdV9iby5jIGIvZHJpdmVycy9ncHUvZHJtL25vdXZlYXUvbm91
dmVhdV9iby5jCmluZGV4IDZmMTIxN2IzZTZiOS4uYWJiYmFiZDEyMjQxIDEwMDY0NAotLS0gYS9k
cml2ZXJzL2dwdS9kcm0vbm91dmVhdS9ub3V2ZWF1X2JvLmMKKysrIGIvZHJpdmVycy9ncHUvZHJt
L25vdXZlYXUvbm91dmVhdV9iby5jCkBAIC0xMzYsNyArMTM2LDcgQEAgbm91dmVhdV9ib19kZWxf
dHRtKHN0cnVjdCB0dG1fYnVmZmVyX29iamVjdCAqYm8pCiAJc3RydWN0IGRybV9kZXZpY2UgKmRl
diA9IGRybS0+ZGV2OwogCXN0cnVjdCBub3V2ZWF1X2JvICpudmJvID0gbm91dmVhdV9ibyhibyk7
CiAKLQlpZiAodW5saWtlbHkobnZiby0+Z2VtLmZpbHApKQorCWlmICh1bmxpa2VseShudmJvLT5i
by5iYXNlLmZpbHApKQogCQlEUk1fRVJST1IoImJvICVwIHN0aWxsIGF0dGFjaGVkIHRvIEdFTSBv
YmplY3RcbiIsIGJvKTsKIAlXQVJOX09OKG52Ym8tPnBpbl9yZWZjbnQgPiAwKTsKIAludjEwX2Jv
X3B1dF90aWxlX3JlZ2lvbihkZXYsIG52Ym8tPnRpbGUsIE5VTEwpOwpAQCAtMjk5LDcgKzI5OSw3
IEBAIG5vdXZlYXVfYm9fbmV3KHN0cnVjdCBub3V2ZWF1X2NsaSAqY2xpLCB1NjQgc2l6ZSwgaW50
IGFsaWduLAogCQkJICB0eXBlLCAmbnZiby0+cGxhY2VtZW50LAogCQkJICBhbGlnbiA+PiBQQUdF
X1NISUZULCBmYWxzZSwgYWNjX3NpemUsIHNnLAogCQkJICByb2JqLCBub3V2ZWF1X2JvX2RlbF90
dG0pOwotCW52Ym8tPmdlbS5yZXN2ID0gbnZiby0+Ym8ucmVzdjsKKwludmJvLT5iby5iYXNlLnJl
c3YgPSBudmJvLT5iby5yZXN2OwogCiAJaWYgKHJldCkgewogCQkvKiB0dG0gd2lsbCBjYWxsIG5v
dXZlYXVfYm9fZGVsX3R0bSBpZiBpdCBmYWlscy4uICovCkBAIC0xNDAyLDcgKzE0MDIsNyBAQCBu
b3V2ZWF1X2JvX3ZlcmlmeV9hY2Nlc3Moc3RydWN0IHR0bV9idWZmZXJfb2JqZWN0ICpibywgc3Ry
dWN0IGZpbGUgKmZpbHApCiB7CiAJc3RydWN0IG5vdXZlYXVfYm8gKm52Ym8gPSBub3V2ZWF1X2Jv
KGJvKTsKIAotCXJldHVybiBkcm1fdm1hX25vZGVfdmVyaWZ5X2FjY2VzcygmbnZiby0+Z2VtLnZt
YV9ub2RlLAorCXJldHVybiBkcm1fdm1hX25vZGVfdmVyaWZ5X2FjY2VzcygmbnZiby0+Ym8uYmFz
ZS52bWFfbm9kZSwKIAkJCQkJICBmaWxwLT5wcml2YXRlX2RhdGEpOwogfQogCmRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vbm91dmVhdS9ub3V2ZWF1X2Rpc3BsYXkuYyBiL2RyaXZlcnMvZ3B1
L2RybS9ub3V2ZWF1L25vdXZlYXVfZGlzcGxheS5jCmluZGV4IDgzMmRhOGUwMDIwZC4uZmM4ZjVi
YjczY2E4IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vbm91dmVhdS9ub3V2ZWF1X2Rpc3Bs
YXkuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vbm91dmVhdS9ub3V2ZWF1X2Rpc3BsYXkuYwpAQCAt
MjAxLDcgKzIwMSw3IEBAIG5vdXZlYXVfdXNlcl9mcmFtZWJ1ZmZlcl9kZXN0cm95KHN0cnVjdCBk
cm1fZnJhbWVidWZmZXIgKmRybV9mYikKIAlzdHJ1Y3Qgbm91dmVhdV9mcmFtZWJ1ZmZlciAqZmIg
PSBub3V2ZWF1X2ZyYW1lYnVmZmVyKGRybV9mYik7CiAKIAlpZiAoZmItPm52Ym8pCi0JCWRybV9n
ZW1fb2JqZWN0X3B1dF91bmxvY2tlZCgmZmItPm52Ym8tPmdlbSk7CisJCWRybV9nZW1fb2JqZWN0
X3B1dF91bmxvY2tlZCgmZmItPm52Ym8tPmJvLmJhc2UpOwogCiAJZHJtX2ZyYW1lYnVmZmVyX2Ns
ZWFudXAoZHJtX2ZiKTsKIAlrZnJlZShmYik7CkBAIC0yMTQsNyArMjE0LDcgQEAgbm91dmVhdV91
c2VyX2ZyYW1lYnVmZmVyX2NyZWF0ZV9oYW5kbGUoc3RydWN0IGRybV9mcmFtZWJ1ZmZlciAqZHJt
X2ZiLAogewogCXN0cnVjdCBub3V2ZWF1X2ZyYW1lYnVmZmVyICpmYiA9IG5vdXZlYXVfZnJhbWVi
dWZmZXIoZHJtX2ZiKTsKIAotCXJldHVybiBkcm1fZ2VtX2hhbmRsZV9jcmVhdGUoZmlsZV9wcml2
LCAmZmItPm52Ym8tPmdlbSwgaGFuZGxlKTsKKwlyZXR1cm4gZHJtX2dlbV9oYW5kbGVfY3JlYXRl
KGZpbGVfcHJpdiwgJmZiLT5udmJvLT5iby5iYXNlLCBoYW5kbGUpOwogfQogCiBzdGF0aWMgY29u
c3Qgc3RydWN0IGRybV9mcmFtZWJ1ZmZlcl9mdW5jcyBub3V2ZWF1X2ZyYW1lYnVmZmVyX2Z1bmNz
ID0gewpAQCAtNjYwLDggKzY2MCw4IEBAIG5vdXZlYXVfZGlzcGxheV9kdW1iX2NyZWF0ZShzdHJ1
Y3QgZHJtX2ZpbGUgKmZpbGVfcHJpdiwgc3RydWN0IGRybV9kZXZpY2UgKmRldiwKIAlpZiAocmV0
KQogCQlyZXR1cm4gcmV0OwogCi0JcmV0ID0gZHJtX2dlbV9oYW5kbGVfY3JlYXRlKGZpbGVfcHJp
diwgJmJvLT5nZW0sICZhcmdzLT5oYW5kbGUpOwotCWRybV9nZW1fb2JqZWN0X3B1dF91bmxvY2tl
ZCgmYm8tPmdlbSk7CisJcmV0ID0gZHJtX2dlbV9oYW5kbGVfY3JlYXRlKGZpbGVfcHJpdiwgJmJv
LT5iby5iYXNlLCAmYXJncy0+aGFuZGxlKTsKKwlkcm1fZ2VtX29iamVjdF9wdXRfdW5sb2NrZWQo
JmJvLT5iby5iYXNlKTsKIAlyZXR1cm4gcmV0OwogfQogCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vbm91dmVhdS9ub3V2ZWF1X2dlbS5jIGIvZHJpdmVycy9ncHUvZHJtL25vdXZlYXUvbm91
dmVhdV9nZW0uYwppbmRleCBiNGJkYTcxNjU2NGQuLjJmNDg0YWI3ZGJjYSAxMDA2NDQKLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL25vdXZlYXUvbm91dmVhdV9nZW0uYworKysgYi9kcml2ZXJzL2dwdS9k
cm0vbm91dmVhdS9ub3V2ZWF1X2dlbS5jCkBAIC0yMDUsMTMgKzIwNSwxMyBAQCBub3V2ZWF1X2dl
bV9uZXcoc3RydWN0IG5vdXZlYXVfY2xpICpjbGksIHU2NCBzaXplLCBpbnQgYWxpZ24sIHVpbnQz
Ml90IGRvbWFpbiwKIAogCS8qIEluaXRpYWxpemUgdGhlIGVtYmVkZGVkIGdlbS1vYmplY3QuIFdl
IHJldHVybiBhIHNpbmdsZSBnZW0tcmVmZXJlbmNlCiAJICogdG8gdGhlIGNhbGxlciwgaW5zdGVh
ZCBvZiBhIG5vcm1hbCBub3V2ZWF1X2JvIHR0bSByZWZlcmVuY2UuICovCi0JcmV0ID0gZHJtX2dl
bV9vYmplY3RfaW5pdChkcm0tPmRldiwgJm52Ym8tPmdlbSwgbnZiby0+Ym8ubWVtLnNpemUpOwor
CXJldCA9IGRybV9nZW1fb2JqZWN0X2luaXQoZHJtLT5kZXYsICZudmJvLT5iby5iYXNlLCBudmJv
LT5iby5tZW0uc2l6ZSk7CiAJaWYgKHJldCkgewogCQlub3V2ZWF1X2JvX3JlZihOVUxMLCBwbnZi
byk7CiAJCXJldHVybiAtRU5PTUVNOwogCX0KIAotCW52Ym8tPmJvLnBlcnNpc3RlbnRfc3dhcF9z
dG9yYWdlID0gbnZiby0+Z2VtLmZpbHA7CisJbnZiby0+Ym8ucGVyc2lzdGVudF9zd2FwX3N0b3Jh
Z2UgPSBudmJvLT5iby5iYXNlLmZpbHA7CiAJcmV0dXJuIDA7CiB9CiAKQEAgLTI2OCwxNSArMjY4
LDE2IEBAIG5vdXZlYXVfZ2VtX2lvY3RsX25ldyhzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LCB2b2lk
ICpkYXRhLAogCWlmIChyZXQpCiAJCXJldHVybiByZXQ7CiAKLQlyZXQgPSBkcm1fZ2VtX2hhbmRs
ZV9jcmVhdGUoZmlsZV9wcml2LCAmbnZiby0+Z2VtLCAmcmVxLT5pbmZvLmhhbmRsZSk7CisJcmV0
ID0gZHJtX2dlbV9oYW5kbGVfY3JlYXRlKGZpbGVfcHJpdiwgJm52Ym8tPmJvLmJhc2UsCisJCQkJ
ICAgICZyZXEtPmluZm8uaGFuZGxlKTsKIAlpZiAocmV0ID09IDApIHsKLQkJcmV0ID0gbm91dmVh
dV9nZW1faW5mbyhmaWxlX3ByaXYsICZudmJvLT5nZW0sICZyZXEtPmluZm8pOworCQlyZXQgPSBu
b3V2ZWF1X2dlbV9pbmZvKGZpbGVfcHJpdiwgJm52Ym8tPmJvLmJhc2UsICZyZXEtPmluZm8pOwog
CQlpZiAocmV0KQogCQkJZHJtX2dlbV9oYW5kbGVfZGVsZXRlKGZpbGVfcHJpdiwgcmVxLT5pbmZv
LmhhbmRsZSk7CiAJfQogCiAJLyogZHJvcCByZWZlcmVuY2UgZnJvbSBhbGxvY2F0ZSAtIGhhbmRs
ZSBob2xkcyBpdCBub3cgKi8KLQlkcm1fZ2VtX29iamVjdF9wdXRfdW5sb2NrZWQoJm52Ym8tPmdl
bSk7CisJZHJtX2dlbV9vYmplY3RfcHV0X3VubG9ja2VkKCZudmJvLT5iby5iYXNlKTsKIAlyZXR1
cm4gcmV0OwogfQogCkBAIC0zNTUsNyArMzU2LDcgQEAgdmFsaWRhdGVfZmluaV9ub190aWNrZXQo
c3RydWN0IHZhbGlkYXRlX29wICpvcCwgc3RydWN0IG5vdXZlYXVfY2hhbm5lbCAqY2hhbiwKIAkJ
bGlzdF9kZWwoJm52Ym8tPmVudHJ5KTsKIAkJbnZiby0+cmVzZXJ2ZWRfYnkgPSBOVUxMOwogCQl0
dG1fYm9fdW5yZXNlcnZlKCZudmJvLT5ibyk7Ci0JCWRybV9nZW1fb2JqZWN0X3B1dF91bmxvY2tl
ZCgmbnZiby0+Z2VtKTsKKwkJZHJtX2dlbV9vYmplY3RfcHV0X3VubG9ja2VkKCZudmJvLT5iby5i
YXNlKTsKIAl9CiB9CiAKQEAgLTQ5Myw3ICs0OTQsNyBAQCB2YWxpZGF0ZV9saXN0KHN0cnVjdCBu
b3V2ZWF1X2NoYW5uZWwgKmNoYW4sIHN0cnVjdCBub3V2ZWF1X2NsaSAqY2xpLAogCWxpc3RfZm9y
X2VhY2hfZW50cnkobnZibywgbGlzdCwgZW50cnkpIHsKIAkJc3RydWN0IGRybV9ub3V2ZWF1X2dl
bV9wdXNoYnVmX2JvICpiID0gJnBiYm9bbnZiby0+cGJib19pbmRleF07CiAKLQkJcmV0ID0gbm91
dmVhdV9nZW1fc2V0X2RvbWFpbigmbnZiby0+Z2VtLCBiLT5yZWFkX2RvbWFpbnMsCisJCXJldCA9
IG5vdXZlYXVfZ2VtX3NldF9kb21haW4oJm52Ym8tPmJvLmJhc2UsIGItPnJlYWRfZG9tYWlucywK
IAkJCQkJICAgICBiLT53cml0ZV9kb21haW5zLAogCQkJCQkgICAgIGItPnZhbGlkX2RvbWFpbnMp
OwogCQlpZiAodW5saWtlbHkocmV0KSkgewpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL25v
dXZlYXUvbm91dmVhdV9wcmltZS5jIGIvZHJpdmVycy9ncHUvZHJtL25vdXZlYXUvbm91dmVhdV9w
cmltZS5jCmluZGV4IDg0NzhjM2M5ZmZjZC4uZTg2YWQ3YWU2MjJiIDEwMDY0NAotLS0gYS9kcml2
ZXJzL2dwdS9kcm0vbm91dmVhdS9ub3V2ZWF1X3ByaW1lLmMKKysrIGIvZHJpdmVycy9ncHUvZHJt
L25vdXZlYXUvbm91dmVhdV9wcmltZS5jCkBAIC03OSwxMyArNzksMTMgQEAgc3RydWN0IGRybV9n
ZW1fb2JqZWN0ICpub3V2ZWF1X2dlbV9wcmltZV9pbXBvcnRfc2dfdGFibGUoc3RydWN0IGRybV9k
ZXZpY2UgKmRldiwKIAogCS8qIEluaXRpYWxpemUgdGhlIGVtYmVkZGVkIGdlbS1vYmplY3QuIFdl
IHJldHVybiBhIHNpbmdsZSBnZW0tcmVmZXJlbmNlCiAJICogdG8gdGhlIGNhbGxlciwgaW5zdGVh
ZCBvZiBhIG5vcm1hbCBub3V2ZWF1X2JvIHR0bSByZWZlcmVuY2UuICovCi0JcmV0ID0gZHJtX2dl
bV9vYmplY3RfaW5pdChkZXYsICZudmJvLT5nZW0sIG52Ym8tPmJvLm1lbS5zaXplKTsKKwlyZXQg
PSBkcm1fZ2VtX29iamVjdF9pbml0KGRldiwgJm52Ym8tPmJvLmJhc2UsIG52Ym8tPmJvLm1lbS5z
aXplKTsKIAlpZiAocmV0KSB7CiAJCW5vdXZlYXVfYm9fcmVmKE5VTEwsICZudmJvKTsKIAkJcmV0
dXJuIEVSUl9QVFIoLUVOT01FTSk7CiAJfQogCi0JcmV0dXJuICZudmJvLT5nZW07CisJcmV0dXJu
ICZudmJvLT5iby5iYXNlOwogfQogCiBpbnQgbm91dmVhdV9nZW1fcHJpbWVfcGluKHN0cnVjdCBk
cm1fZ2VtX29iamVjdCAqb2JqKQotLSAKMi4xOC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZng=
