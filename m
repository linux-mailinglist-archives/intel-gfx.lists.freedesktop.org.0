Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E7BBDAE2B
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Oct 2019 15:21:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 76EDE6EA82;
	Thu, 17 Oct 2019 13:21:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4FE166EA8B
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Oct 2019 13:21:10 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 17 Oct 2019 15:20:59 +0200
Message-Id: <20191017132105.15528-8-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191017132105.15528-1-maarten.lankhorst@linux.intel.com>
References: <20191017132105.15528-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 08/14] drm/i915: Complete crtc hw/uapi split, v2.
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

Tm93IHRoYXQgd2Ugc2VwYXJhdGVkIGV2ZXJ5dGhpbmcgaW50byB1YXBpIGFuZCBodywgaXQncwp0
aW1lIHRvIG1ha2UgdGhlIHNwbGl0IGRlZmluaXRpdmUuIFJlbW92ZSB0aGUgdW5pb24gYW5kCm1h
a2UgYSBjb3B5IG9mIHRoZSBodyBzdGF0ZSBvbiBtb2Rlc2V0IGFuZCBmYXN0c2V0LgoKQ29sb3Ig
YmxvYnMgYXJlIGNvcGllZCBpbiBjcnRjIGF0b21pY19jaGVjaygpLCByaWdodApiZWZvcmUgY29s
b3IgbWFuYWdlbWVudCBpcyBjaGVja2VkLgoKQ2hhbmdlcyBzaW5jZSB2MToKLSBDb3B5IGFsbCBi
bG9icyBpbW1lZGlhdGVseSBhZnRlciBkcm1fYXRvbWljX2hlbHBlcl9jaGVja19tb2Rlc2V0KCku
Ci0gQ2xlYXIgY3J0Y19zdGF0ZS0+aHcgb24gZGlzYWJsZSwgaW5zdGVhZCBvZiB1c2luZyBjbGVh
cl9pbnRlbF9jcnRjX3N0YXRlKCkuCgpTaWduZWQtb2ZmLWJ5OiBNYWFydGVuIExhbmtob3JzdCA8
bWFhcnRlbi5sYW5raG9yc3RAbGludXguaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfYXRvbWljLmMgICB8IDQ0ICsrKysrKysrKysrKysrKysrKwogZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hdG9taWMuaCAgIHwgIDIgKwogZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgIHwgNDUgKysrKysrKysrKysr
KysrKy0tLQogLi4uL2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oICAgIHwg
IDkgKystLQogNCBmaWxlcyBjaGFuZ2VkLCA4OSBpbnNlcnRpb25zKCspLCAxMSBkZWxldGlvbnMo
LSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2F0b21p
Yy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hdG9taWMuYwppbmRleCA3
Y2YxM2I5YzdkMzguLjI2NmQwY2U5ZDAzZCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9hdG9taWMuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2F0b21pYy5jCkBAIC0xOTUsNiArMTk1LDE0IEBAIGludGVsX2NydGNfZHVwbGlj
YXRlX3N0YXRlKHN0cnVjdCBkcm1fY3J0YyAqY3J0YykKIAogCV9fZHJtX2F0b21pY19oZWxwZXJf
Y3J0Y19kdXBsaWNhdGVfc3RhdGUoY3J0YywgJmNydGNfc3RhdGUtPnVhcGkpOwogCisJLyogY29w
eSBjb2xvciBibG9icyAqLworCWlmIChjcnRjX3N0YXRlLT5ody5kZWdhbW1hX2x1dCkKKwkJZHJt
X3Byb3BlcnR5X2Jsb2JfZ2V0KGNydGNfc3RhdGUtPmh3LmRlZ2FtbWFfbHV0KTsKKwlpZiAoY3J0
Y19zdGF0ZS0+aHcuY3RtKQorCQlkcm1fcHJvcGVydHlfYmxvYl9nZXQoY3J0Y19zdGF0ZS0+aHcu
Y3RtKTsKKwlpZiAoY3J0Y19zdGF0ZS0+aHcuZ2FtbWFfbHV0KQorCQlkcm1fcHJvcGVydHlfYmxv
Yl9nZXQoY3J0Y19zdGF0ZS0+aHcuZ2FtbWFfbHV0KTsKKwogCWNydGNfc3RhdGUtPnVwZGF0ZV9w
aXBlID0gZmFsc2U7CiAJY3J0Y19zdGF0ZS0+ZGlzYWJsZV9scF93bSA9IGZhbHNlOwogCWNydGNf
c3RhdGUtPmRpc2FibGVfY3hzciA9IGZhbHNlOwpAQCAtMjA4LDYgKzIxNiw0MSBAQCBpbnRlbF9j
cnRjX2R1cGxpY2F0ZV9zdGF0ZShzdHJ1Y3QgZHJtX2NydGMgKmNydGMpCiAJcmV0dXJuICZjcnRj
X3N0YXRlLT51YXBpOwogfQogCitzdGF0aWMgdm9pZCBpbnRlbF9jcnRjX3B1dF9jb2xvcl9ibG9i
cyhzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkKK3sKKwlkcm1fcHJvcGVydHlf
YmxvYl9wdXQoY3J0Y19zdGF0ZS0+aHcuZGVnYW1tYV9sdXQpOworCWRybV9wcm9wZXJ0eV9ibG9i
X3B1dChjcnRjX3N0YXRlLT5ody5nYW1tYV9sdXQpOworCWRybV9wcm9wZXJ0eV9ibG9iX3B1dChj
cnRjX3N0YXRlLT5ody5jdG0pOworfQorCit2b2lkIGludGVsX2NydGNfZnJlZV9od19zdGF0ZShz
dHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkKK3sKKwlpbnRlbF9jcnRjX3B1dF9j
b2xvcl9ibG9icyhjcnRjX3N0YXRlKTsKK30KKwordm9pZCBpbnRlbF9jcnRjX2NvcHlfY29sb3Jf
YmxvYnMoc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpCit7CisJaW50ZWxfY3J0
Y19wdXRfY29sb3JfYmxvYnMoY3J0Y19zdGF0ZSk7CisKKwlpZiAoY3J0Y19zdGF0ZS0+dWFwaS5k
ZWdhbW1hX2x1dCkKKwkJY3J0Y19zdGF0ZS0+aHcuZGVnYW1tYV9sdXQgPQorCQkJZHJtX3Byb3Bl
cnR5X2Jsb2JfZ2V0KGNydGNfc3RhdGUtPnVhcGkuZGVnYW1tYV9sdXQpOworCWVsc2UKKwkJY3J0
Y19zdGF0ZS0+aHcuZGVnYW1tYV9sdXQgPSBOVUxMOworCisJaWYgKGNydGNfc3RhdGUtPnVhcGku
Z2FtbWFfbHV0KQorCQljcnRjX3N0YXRlLT5ody5nYW1tYV9sdXQgPQorCQkJZHJtX3Byb3BlcnR5
X2Jsb2JfZ2V0KGNydGNfc3RhdGUtPnVhcGkuZ2FtbWFfbHV0KTsKKwllbHNlCisJCWNydGNfc3Rh
dGUtPmh3LmdhbW1hX2x1dCA9IE5VTEw7CisKKwlpZiAoY3J0Y19zdGF0ZS0+dWFwaS5jdG0pCisJ
CWNydGNfc3RhdGUtPmh3LmN0bSA9CisJCQlkcm1fcHJvcGVydHlfYmxvYl9nZXQoY3J0Y19zdGF0
ZS0+dWFwaS5jdG0pOworCWVsc2UKKwkJY3J0Y19zdGF0ZS0+aHcuY3RtID0gTlVMTDsKK30KKwog
LyoqCiAgKiBpbnRlbF9jcnRjX2Rlc3Ryb3lfc3RhdGUgLSBkZXN0cm95IGNydGMgc3RhdGUKICAq
IEBjcnRjOiBkcm0gY3J0YwpAQCAtMjIzLDYgKzI2Niw3IEBAIGludGVsX2NydGNfZGVzdHJveV9z
dGF0ZShzdHJ1Y3QgZHJtX2NydGMgKmNydGMsCiAJc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNy
dGNfc3RhdGUgPSB0b19pbnRlbF9jcnRjX3N0YXRlKHN0YXRlKTsKIAogCV9fZHJtX2F0b21pY19o
ZWxwZXJfY3J0Y19kZXN0cm95X3N0YXRlKCZjcnRjX3N0YXRlLT51YXBpKTsKKwlpbnRlbF9jcnRj
X2ZyZWVfaHdfc3RhdGUoY3J0Y19zdGF0ZSk7CiAJa2ZyZWUoY3J0Y19zdGF0ZSk7CiB9CiAKZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYXRvbWljLmggYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2F0b21pYy5oCmluZGV4IDU4MDY1ZDMx
NjFhMy4uNDJiZTkxZTA3NzJhIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2F0b21pYy5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfYXRvbWljLmgKQEAgLTM1LDYgKzM1LDggQEAgaW50ZWxfZGlnaXRhbF9jb25uZWN0b3JfZHVw
bGljYXRlX3N0YXRlKHN0cnVjdCBkcm1fY29ubmVjdG9yICpjb25uZWN0b3IpOwogc3RydWN0IGRy
bV9jcnRjX3N0YXRlICppbnRlbF9jcnRjX2R1cGxpY2F0ZV9zdGF0ZShzdHJ1Y3QgZHJtX2NydGMg
KmNydGMpOwogdm9pZCBpbnRlbF9jcnRjX2Rlc3Ryb3lfc3RhdGUoc3RydWN0IGRybV9jcnRjICpj
cnRjLAogCQkJICAgICAgIHN0cnVjdCBkcm1fY3J0Y19zdGF0ZSAqc3RhdGUpOwordm9pZCBpbnRl
bF9jcnRjX2ZyZWVfaHdfc3RhdGUoc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUp
Owordm9pZCBpbnRlbF9jcnRjX2NvcHlfY29sb3JfYmxvYnMoc3RydWN0IGludGVsX2NydGNfc3Rh
dGUgKmNydGNfc3RhdGUpOwogc3RydWN0IGRybV9hdG9taWNfc3RhdGUgKmludGVsX2F0b21pY19z
dGF0ZV9hbGxvYyhzdHJ1Y3QgZHJtX2RldmljZSAqZGV2KTsKIHZvaWQgaW50ZWxfYXRvbWljX3N0
YXRlX2NsZWFyKHN0cnVjdCBkcm1fYXRvbWljX3N0YXRlICpzdGF0ZSk7CiAKZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKaW5kZXggMDZjNTkzZDU2ZDkyLi5j
MDA5NDg5NjQxYmQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGlzcGxheS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlz
cGxheS5jCkBAIC0xMTQsNiArMTE0LDcgQEAgc3RhdGljIGNvbnN0IHU2NCBjdXJzb3JfZm9ybWF0
X21vZGlmaWVyc1tdID0gewogCURSTV9GT1JNQVRfTU9EX0lOVkFMSUQKIH07CiAKK3N0YXRpYyB2
b2lkIGNvcHlfdWFwaV90b19od19zdGF0ZShzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19z
dGF0ZSk7CiBzdGF0aWMgdm9pZCBpOXh4X2NydGNfY2xvY2tfZ2V0KHN0cnVjdCBpbnRlbF9jcnRj
ICpjcnRjLAogCQkJCXN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpwaXBlX2NvbmZpZyk7CiBzdGF0
aWMgdm9pZCBpcm9ubGFrZV9wY2hfY2xvY2tfZ2V0KHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjLApA
QCAtNzA0MSw2ICs3MDQyLDcgQEAgc3RhdGljIHZvaWQgaW50ZWxfY3J0Y19kaXNhYmxlX25vYXRv
bWljKHN0cnVjdCBkcm1fY3J0YyAqY3J0YywKIAljcnRjLT5lbmFibGVkID0gZmFsc2U7CiAJY3J0
Yy0+c3RhdGUtPmNvbm5lY3Rvcl9tYXNrID0gMDsKIAljcnRjLT5zdGF0ZS0+ZW5jb2Rlcl9tYXNr
ID0gMDsKKwljb3B5X3VhcGlfdG9faHdfc3RhdGUodG9faW50ZWxfY3J0Y19zdGF0ZShjcnRjLT5z
dGF0ZSkpOwogCiAJZm9yX2VhY2hfZW5jb2Rlcl9vbl9jcnRjKGNydGMtPmRldiwgY3J0YywgZW5j
b2RlcikKIAkJZW5jb2Rlci0+YmFzZS5jcnRjID0gTlVMTDsKQEAgLTEyMjU0LDYgKzEyMjU2LDIz
IEBAIHN0YXRpYyBib29sIGNoZWNrX2RpZ2l0YWxfcG9ydF9jb25mbGljdHMoc3RydWN0IGludGVs
X2F0b21pY19zdGF0ZSAqc3RhdGUpCiAJcmV0dXJuIHJldDsKIH0KIAorc3RhdGljIHZvaWQgY29w
eV91YXBpX3RvX2h3X3N0YXRlKHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQor
eworCWNydGNfc3RhdGUtPmh3LmVuYWJsZSA9IGNydGNfc3RhdGUtPnVhcGkuZW5hYmxlOworCWNy
dGNfc3RhdGUtPmh3LmFjdGl2ZSA9IGNydGNfc3RhdGUtPnVhcGkuYWN0aXZlOworCWNydGNfc3Rh
dGUtPmh3Lm1vZGUgPSBjcnRjX3N0YXRlLT51YXBpLm1vZGU7CisJY3J0Y19zdGF0ZS0+aHcuYWRq
dXN0ZWRfbW9kZSA9IGNydGNfc3RhdGUtPnVhcGkuYWRqdXN0ZWRfbW9kZTsKKwlpbnRlbF9jcnRj
X2NvcHlfY29sb3JfYmxvYnMoY3J0Y19zdGF0ZSk7Cit9CisKK3N0YXRpYyB2b2lkIGNvcHlfaHdf
dG9fdWFwaV9zdGF0ZShzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkKK3sKKwlj
cnRjX3N0YXRlLT51YXBpLmVuYWJsZSA9IGNydGNfc3RhdGUtPmh3LmVuYWJsZTsKKwljcnRjX3N0
YXRlLT51YXBpLmFjdGl2ZSA9IGNydGNfc3RhdGUtPmh3LmFjdGl2ZTsKKwljcnRjX3N0YXRlLT51
YXBpLm1vZGUgPSBjcnRjX3N0YXRlLT5ody5tb2RlOworCWNydGNfc3RhdGUtPnVhcGkuYWRqdXN0
ZWRfbW9kZSA9IGNydGNfc3RhdGUtPmh3LmFkanVzdGVkX21vZGU7Cit9CisKIHN0YXRpYyBpbnQK
IGNsZWFyX2ludGVsX2NydGNfc3RhdGUoc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3Rh
dGUpCiB7CkBAIC0xMjI3MCw2ICsxMjI4OSw3IEBAIGNsZWFyX2ludGVsX2NydGNfc3RhdGUoc3Ry
dWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpCiAJICogZml4ZWQsIHNvIHRoYXQgdGhl
IGNydGNfc3RhdGUgY2FuIGJlIHNhZmVseSBkdXBsaWNhdGVkLiBGb3Igbm93LAogCSAqIG9ubHkg
ZmllbGRzIHRoYXQgYXJlIGtub3cgdG8gbm90IGNhdXNlIHByb2JsZW1zIGFyZSBwcmVzZXJ2ZWQu
ICovCiAKKwlzYXZlZF9zdGF0ZS0+dWFwaSA9IGNydGNfc3RhdGUtPnVhcGk7CiAJc2F2ZWRfc3Rh
dGUtPnNjYWxlcl9zdGF0ZSA9IGNydGNfc3RhdGUtPnNjYWxlcl9zdGF0ZTsKIAlzYXZlZF9zdGF0
ZS0+c2hhcmVkX2RwbGwgPSBjcnRjX3N0YXRlLT5zaGFyZWRfZHBsbDsKIAlzYXZlZF9zdGF0ZS0+
ZHBsbF9od19zdGF0ZSA9IGNydGNfc3RhdGUtPmRwbGxfaHdfc3RhdGU7CkBAIC0xMjI4MCwxMiAr
MTIzMDAsOSBAQCBjbGVhcl9pbnRlbF9jcnRjX3N0YXRlKHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRl
ICpjcnRjX3N0YXRlKQogCSAgICBJU19WQUxMRVlWSUVXKGRldl9wcml2KSB8fCBJU19DSEVSUllW
SUVXKGRldl9wcml2KSkKIAkJc2F2ZWRfc3RhdGUtPndtID0gY3J0Y19zdGF0ZS0+d207CiAKLQkv
KiBLZWVwIGJhc2UgZHJtX2NydGNfc3RhdGUgaW50YWN0LCBvbmx5IGNsZWFyIG91ciBleHRlbmRl
ZCBzdHJ1Y3QgKi8KLQlCVUlMRF9CVUdfT04ob2Zmc2V0b2Yoc3RydWN0IGludGVsX2NydGNfc3Rh
dGUsIGJhc2UpKTsKLQlCVUlMRF9CVUdfT04ob2Zmc2V0b2Yoc3RydWN0IGludGVsX2NydGNfc3Rh
dGUsIHVhcGkpKTsKLQlCVUlMRF9CVUdfT04ob2Zmc2V0b2Yoc3RydWN0IGludGVsX2NydGNfc3Rh
dGUsIGh3KSk7Ci0JbWVtY3B5KCZjcnRjX3N0YXRlLT51YXBpICsgMSwgJnNhdmVkX3N0YXRlLT51
YXBpICsgMSwKLQkgICAgICAgc2l6ZW9mKCpjcnRjX3N0YXRlKSAtIHNpemVvZihjcnRjX3N0YXRl
LT51YXBpKSk7CisJaW50ZWxfY3J0Y19mcmVlX2h3X3N0YXRlKGNydGNfc3RhdGUpOworCW1lbWNw
eShjcnRjX3N0YXRlLCBzYXZlZF9zdGF0ZSwgc2l6ZW9mKCpjcnRjX3N0YXRlKSk7CisJY29weV91
YXBpX3RvX2h3X3N0YXRlKGNydGNfc3RhdGUpOwogCiAJa2ZyZWUoc2F2ZWRfc3RhdGUpOwogCXJl
dHVybiAwOwpAQCAtMTI0MjUsNiArMTI0NDIsOSBAQCBpbnRlbF9tb2Rlc2V0X3BpcGVfY29uZmln
KHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpwaXBlX2NvbmZpZykKIAlEUk1fREVCVUdfS01TKCJo
dyBtYXggYnBwOiAlaSwgcGlwZSBicHA6ICVpLCBkaXRoZXJpbmc6ICVpXG4iLAogCQkgICAgICBi
YXNlX2JwcCwgcGlwZV9jb25maWctPnBpcGVfYnBwLCBwaXBlX2NvbmZpZy0+ZGl0aGVyKTsKIAor
CS8qIHVhcGkgd2FudHMgYSBjb3B5IG9mIHRoZSBhZGp1c3RlZF9tb2RlIGZvciB2YmxhbmsgYm9v
a2tlZXBpbmcgKi8KKwlwaXBlX2NvbmZpZy0+dWFwaS5hZGp1c3RlZF9tb2RlID0gcGlwZV9jb25m
aWctPmh3LmFkanVzdGVkX21vZGU7CisKIAlyZXR1cm4gMDsKIH0KIApAQCAtMTMxMTAsNiArMTMx
MzAsOCBAQCB2ZXJpZnlfY3J0Y19zdGF0ZShzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YywKIAogCXN0
YXRlID0gb2xkX2NydGNfc3RhdGUtPnVhcGkuc3RhdGU7CiAJX19kcm1fYXRvbWljX2hlbHBlcl9j
cnRjX2Rlc3Ryb3lfc3RhdGUoJm9sZF9jcnRjX3N0YXRlLT51YXBpKTsKKwlpbnRlbF9jcnRjX2Zy
ZWVfaHdfc3RhdGUob2xkX2NydGNfc3RhdGUpOworCiAJcGlwZV9jb25maWcgPSBvbGRfY3J0Y19z
dGF0ZTsKIAltZW1zZXQocGlwZV9jb25maWcsIDAsIHNpemVvZigqcGlwZV9jb25maWcpKTsKIAlw
aXBlX2NvbmZpZy0+dWFwaS5jcnRjID0gJmNydGMtPmJhc2U7CkBAIC0xMzU3MiwxMSArMTM1OTQs
MTcgQEAgc3RhdGljIGludCBpbnRlbF9hdG9taWNfY2hlY2soc3RydWN0IGRybV9kZXZpY2UgKmRl
diwKIAogCWZvcl9lYWNoX29sZG5ld19pbnRlbF9jcnRjX2luX3N0YXRlKHN0YXRlLCBjcnRjLCBv
bGRfY3J0Y19zdGF0ZSwKIAkJCQkJICAgIG5ld19jcnRjX3N0YXRlLCBpKSB7Ci0JCWlmICghbmVl
ZHNfbW9kZXNldChuZXdfY3J0Y19zdGF0ZSkpCisJCWlmICghbmVlZHNfbW9kZXNldChuZXdfY3J0
Y19zdGF0ZSkpIHsKKwkJCWlmIChuZXdfY3J0Y19zdGF0ZS0+dWFwaS5jb2xvcl9tZ210X2NoYW5n
ZWQpCisJCQkJaW50ZWxfY3J0Y19jb3B5X2NvbG9yX2Jsb2JzKG5ld19jcnRjX3N0YXRlKTsKIAkJ
CWNvbnRpbnVlOworCQl9CiAKIAkJaWYgKCFuZXdfY3J0Y19zdGF0ZS0+dWFwaS5lbmFibGUpIHsK
IAkJCWFueV9tcyA9IHRydWU7CisJCQlpbnRlbF9jcnRjX2ZyZWVfaHdfc3RhdGUobmV3X2NydGNf
c3RhdGUpOworCQkJbWVtc2V0KCZuZXdfY3J0Y19zdGF0ZS0+aHcsIDAsCisJCQkgICAgICAgc2l6
ZW9mKG5ld19jcnRjX3N0YXRlLT5odykpOwogCQkJY29udGludWU7CiAJCX0KIApAQCAtMTY2NjIs
NiArMTY2OTAsNyBAQCBzdGF0aWMgdm9pZCBpbnRlbF9tb2Rlc2V0X3JlYWRvdXRfaHdfc3RhdGUo
c3RydWN0IGRybV9kZXZpY2UgKmRldikKIAkJCXRvX2ludGVsX2NydGNfc3RhdGUoY3J0Yy0+YmFz
ZS5zdGF0ZSk7CiAKIAkJX19kcm1fYXRvbWljX2hlbHBlcl9jcnRjX2Rlc3Ryb3lfc3RhdGUoJmNy
dGNfc3RhdGUtPnVhcGkpOworCQlpbnRlbF9jcnRjX2ZyZWVfaHdfc3RhdGUoY3J0Y19zdGF0ZSk7
CiAJCW1lbXNldChjcnRjX3N0YXRlLCAwLCBzaXplb2YoKmNydGNfc3RhdGUpKTsKIAkJX19kcm1f
YXRvbWljX2hlbHBlcl9jcnRjX3Jlc2V0KCZjcnRjLT5iYXNlLCAmY3J0Y19zdGF0ZS0+dWFwaSk7
CiAKQEAgLTE2NzkwLDYgKzE2ODE5LDcgQEAgc3RhdGljIHZvaWQgaW50ZWxfbW9kZXNldF9yZWFk
b3V0X2h3X3N0YXRlKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYpCiAJCQkgKiBzZXQgYSBmbGFnIHRv
IGluZGljYXRlIHRoYXQgYSBmdWxsIHJlY2FsY3VsYXRpb24gaXMKIAkJCSAqIG5lZWRlZCBvbiB0
aGUgbmV4dCBjb21taXQuCiAJCQkgKi8KKwkJCWNydGNfc3RhdGUtPmh3Lm1vZGUgPSBjcnRjLT5i
YXNlLm1vZGU7CiAJCQljcnRjX3N0YXRlLT5ody5tb2RlLnByaXZhdGVfZmxhZ3MgPSBJOTE1X01P
REVfRkxBR19JTkhFUklURUQ7CiAKIAkJCWludGVsX2NydGNfY29tcHV0ZV9waXhlbF9yYXRlKGNy
dGNfc3RhdGUpOwpAQCAtMTY4MjAsNiArMTY4NTAsNyBAQCBzdGF0aWMgdm9pZCBpbnRlbF9tb2Rl
c2V0X3JlYWRvdXRfaHdfc3RhdGUoc3RydWN0IGRybV9kZXZpY2UgKmRldikKIAogCQlpbnRlbF9i
d19jcnRjX3VwZGF0ZShid19zdGF0ZSwgY3J0Y19zdGF0ZSk7CiAKKwkJY29weV9od190b191YXBp
X3N0YXRlKGNydGNfc3RhdGUpOwogCQlpbnRlbF9waXBlX2NvbmZpZ19zYW5pdHlfY2hlY2soZGV2
X3ByaXYsIGNydGNfc3RhdGUpOwogCX0KIH0KZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgKaW5kZXggNGQ4NWVhNTgzMmQ3Li40MWQ0NzFh
YjlhNjQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlz
cGxheV90eXBlcy5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlz
cGxheV90eXBlcy5oCkBAIC03NDksOCArNzQ5LDYgQEAgZW51bSBpbnRlbF9vdXRwdXRfZm9ybWF0
IHsKIH07CiAKIHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlIHsKLQl1bmlvbiB7Ci0Jc3RydWN0IGRy
bV9jcnRjX3N0YXRlIGJhc2U7CiAJLyoKIAkgKiB1YXBpIChkcm0pIHN0YXRlLiBUaGlzIGlzIHRo
ZSBzb2Z0d2FyZSBzdGF0ZSBzaG93biB0byB1c2Vyc3BhY2UuCiAJICogSW4gcGFydGljdWxhciwg
dGhlIGZvbGxvd2luZyBtZW1iZXJzIGFyZSB1c2VkIGZvciBib29ra2VlcGluZzoKQEAgLTc3Myw4
ICs3NzEsMTEgQEAgc3RydWN0IGludGVsX2NydGNfc3RhdGUgewogCSAqCiAJICogRHVyaW5nIGlu
aXRpYWwgaHcgcmVhZG91dCwgdGhleSBuZWVkIHRvIGJlIGNvcGllZCB0byB1YXBpLgogCSAqLwot
CXN0cnVjdCBkcm1fY3J0Y19zdGF0ZSBodzsKLQl9OworCXN0cnVjdCB7CisJCWJvb2wgYWN0aXZl
LCBlbmFibGU7CisJCXN0cnVjdCBkcm1fcHJvcGVydHlfYmxvYiAqZGVnYW1tYV9sdXQsICpnYW1t
YV9sdXQsICpjdG07CisJCXN0cnVjdCBkcm1fZGlzcGxheV9tb2RlIG1vZGUsIGFkanVzdGVkX21v
ZGU7CisJfSBodzsKIAogCS8qKgogCSAqIHF1aXJrcyAtIGJpdGZpZWxkIHdpdGggaHcgc3RhdGUg
cmVhZG91dCBxdWlya3MKLS0gCjIuMjMuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4
