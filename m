Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AF950E8236
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Oct 2019 08:22:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D2566E0F3;
	Tue, 29 Oct 2019 07:22:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7743F6E0F4
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Oct 2019 07:22:36 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 29 Oct 2019 08:22:24 +0100
Message-Id: <20191029072229.27092-7-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191029072229.27092-1-maarten.lankhorst@linux.intel.com>
References: <20191029072229.27092-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 07/12] drm/i915: Complete crtc hw/uapi split, v4.
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
cl9pbnRlbF9jcnRjX3N0YXRlKCkuCkNoYW5nZXMgc2luY2UgdjI6Ci0gVXNlIGludGVsX2NydGNf
ZnJlZV9od19zdGF0ZSArIGNsZWFyIGluIGludGVsX2NydGNfZGlzYWJsZV9ub2F0b21pYygpLgot
IE1ha2UgYSBpbnRlbF9jcnRjX3ByZXBhcmVfc3RhdGUoKSBmdW5jdGlvbiB0aGF0IGNsZWFycyB0
aGUgY3J0Y19zdGF0ZQogIGFuZCBjb3BpZXMgaHcgbWVtYmVycy4KLSBSZW1vdmUgc2V0dGluZyB1
YXBpLmFkanVzdGVkX21vZGUsIHdlIG5vdyBoYXZlIGEgZGlyZWN0IGNhbGwgdG8KICBkcm1fY2Fs
Y190aW1lc3RhbXBpbmdfY29uc3RhbnRzKCkuCkNoYW5nZXMgc2luY2UgdjM6Ci0gUmVuYW1lIHBy
ZWZpeCBjb3B5X2h3X3RvX3VhcGlfc3RhdGUoKSB3aXRoIGludGVsX2NydGMuCi0gQ29weSBjb2xv
ciBibG9icyB0byB1YXBpIGFzIHdlbGwuCi0gQWRkIGEgaW50ZWxfY3J0Y19jb3B5X3VhcGlfdG9f
aHdfc3RhdGVfbm9tb2Rlc2V0KCkgZnVuY3Rpb24gZm9yIGNsYXJpdHkuCgpTaWduZWQtb2ZmLWJ5
OiBNYWFydGVuIExhbmtob3JzdCA8bWFhcnRlbi5sYW5raG9yc3RAbGludXguaW50ZWwuY29tPgot
LS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYXRvbWljLmMgICB8IDQ0ICsr
KysrKysrKysKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYXRvbWljLmggICB8
ICAyICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jICB8IDgw
ICsrKysrKysrKysrKysrKystLS0KIC4uLi9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlf
dHlwZXMuaCAgICB8ICA5ICsrLQogNCBmaWxlcyBjaGFuZ2VkLCAxMTggaW5zZXJ0aW9ucygrKSwg
MTcgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9hdG9taWMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYXRv
bWljLmMKaW5kZXggMzY2Mjc1ZGMxMTNkLi41NTcxNzg5MDZjY2YgMTAwNjQ0Ci0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYXRvbWljLmMKKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hdG9taWMuYwpAQCAtMTk1LDYgKzE5NSwxNCBAQCBpbnRl
bF9jcnRjX2R1cGxpY2F0ZV9zdGF0ZShzdHJ1Y3QgZHJtX2NydGMgKmNydGMpCiAKIAlfX2RybV9h
dG9taWNfaGVscGVyX2NydGNfZHVwbGljYXRlX3N0YXRlKGNydGMsICZjcnRjX3N0YXRlLT51YXBp
KTsKIAorCS8qIGNvcHkgY29sb3IgYmxvYnMgKi8KKwlpZiAoY3J0Y19zdGF0ZS0+aHcuZGVnYW1t
YV9sdXQpCisJCWRybV9wcm9wZXJ0eV9ibG9iX2dldChjcnRjX3N0YXRlLT5ody5kZWdhbW1hX2x1
dCk7CisJaWYgKGNydGNfc3RhdGUtPmh3LmN0bSkKKwkJZHJtX3Byb3BlcnR5X2Jsb2JfZ2V0KGNy
dGNfc3RhdGUtPmh3LmN0bSk7CisJaWYgKGNydGNfc3RhdGUtPmh3LmdhbW1hX2x1dCkKKwkJZHJt
X3Byb3BlcnR5X2Jsb2JfZ2V0KGNydGNfc3RhdGUtPmh3LmdhbW1hX2x1dCk7CisKIAljcnRjX3N0
YXRlLT51cGRhdGVfcGlwZSA9IGZhbHNlOwogCWNydGNfc3RhdGUtPmRpc2FibGVfbHBfd20gPSBm
YWxzZTsKIAljcnRjX3N0YXRlLT5kaXNhYmxlX2N4c3IgPSBmYWxzZTsKQEAgLTIwOCw2ICsyMTYs
NDEgQEAgaW50ZWxfY3J0Y19kdXBsaWNhdGVfc3RhdGUoc3RydWN0IGRybV9jcnRjICpjcnRjKQog
CXJldHVybiAmY3J0Y19zdGF0ZS0+dWFwaTsKIH0KIAorc3RhdGljIHZvaWQgaW50ZWxfY3J0Y19w
dXRfY29sb3JfYmxvYnMoc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpCit7CisJ
ZHJtX3Byb3BlcnR5X2Jsb2JfcHV0KGNydGNfc3RhdGUtPmh3LmRlZ2FtbWFfbHV0KTsKKwlkcm1f
cHJvcGVydHlfYmxvYl9wdXQoY3J0Y19zdGF0ZS0+aHcuZ2FtbWFfbHV0KTsKKwlkcm1fcHJvcGVy
dHlfYmxvYl9wdXQoY3J0Y19zdGF0ZS0+aHcuY3RtKTsKK30KKwordm9pZCBpbnRlbF9jcnRjX2Zy
ZWVfaHdfc3RhdGUoc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpCit7CisJaW50
ZWxfY3J0Y19wdXRfY29sb3JfYmxvYnMoY3J0Y19zdGF0ZSk7Cit9CisKK3ZvaWQgaW50ZWxfY3J0
Y19jb3B5X2NvbG9yX2Jsb2JzKHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQor
eworCWludGVsX2NydGNfcHV0X2NvbG9yX2Jsb2JzKGNydGNfc3RhdGUpOworCisJaWYgKGNydGNf
c3RhdGUtPnVhcGkuZGVnYW1tYV9sdXQpCisJCWNydGNfc3RhdGUtPmh3LmRlZ2FtbWFfbHV0ID0K
KwkJCWRybV9wcm9wZXJ0eV9ibG9iX2dldChjcnRjX3N0YXRlLT51YXBpLmRlZ2FtbWFfbHV0KTsK
KwllbHNlCisJCWNydGNfc3RhdGUtPmh3LmRlZ2FtbWFfbHV0ID0gTlVMTDsKKworCWlmIChjcnRj
X3N0YXRlLT51YXBpLmdhbW1hX2x1dCkKKwkJY3J0Y19zdGF0ZS0+aHcuZ2FtbWFfbHV0ID0KKwkJ
CWRybV9wcm9wZXJ0eV9ibG9iX2dldChjcnRjX3N0YXRlLT51YXBpLmdhbW1hX2x1dCk7CisJZWxz
ZQorCQljcnRjX3N0YXRlLT5ody5nYW1tYV9sdXQgPSBOVUxMOworCisJaWYgKGNydGNfc3RhdGUt
PnVhcGkuY3RtKQorCQljcnRjX3N0YXRlLT5ody5jdG0gPQorCQkJZHJtX3Byb3BlcnR5X2Jsb2Jf
Z2V0KGNydGNfc3RhdGUtPnVhcGkuY3RtKTsKKwllbHNlCisJCWNydGNfc3RhdGUtPmh3LmN0bSA9
IE5VTEw7Cit9CisKIC8qKgogICogaW50ZWxfY3J0Y19kZXN0cm95X3N0YXRlIC0gZGVzdHJveSBj
cnRjIHN0YXRlCiAgKiBAY3J0YzogZHJtIGNydGMKQEAgLTIyMyw2ICsyNjYsNyBAQCBpbnRlbF9j
cnRjX2Rlc3Ryb3lfc3RhdGUoc3RydWN0IGRybV9jcnRjICpjcnRjLAogCXN0cnVjdCBpbnRlbF9j
cnRjX3N0YXRlICpjcnRjX3N0YXRlID0gdG9faW50ZWxfY3J0Y19zdGF0ZShzdGF0ZSk7CiAKIAlf
X2RybV9hdG9taWNfaGVscGVyX2NydGNfZGVzdHJveV9zdGF0ZSgmY3J0Y19zdGF0ZS0+dWFwaSk7
CisJaW50ZWxfY3J0Y19mcmVlX2h3X3N0YXRlKGNydGNfc3RhdGUpOwogCWtmcmVlKGNydGNfc3Rh
dGUpOwogfQogCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2F0b21pYy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hdG9taWMuaApp
bmRleCA0OWQ1Y2IxYjllMGEuLjdiNDk2MjM0MTliYSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hdG9taWMuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2F0b21pYy5oCkBAIC0zNiw2ICszNiw4IEBAIGludGVsX2RpZ2l0YWxf
Y29ubmVjdG9yX2R1cGxpY2F0ZV9zdGF0ZShzdHJ1Y3QgZHJtX2Nvbm5lY3RvciAqY29ubmVjdG9y
KTsKIHN0cnVjdCBkcm1fY3J0Y19zdGF0ZSAqaW50ZWxfY3J0Y19kdXBsaWNhdGVfc3RhdGUoc3Ry
dWN0IGRybV9jcnRjICpjcnRjKTsKIHZvaWQgaW50ZWxfY3J0Y19kZXN0cm95X3N0YXRlKHN0cnVj
dCBkcm1fY3J0YyAqY3J0YywKIAkJCSAgICAgICBzdHJ1Y3QgZHJtX2NydGNfc3RhdGUgKnN0YXRl
KTsKK3ZvaWQgaW50ZWxfY3J0Y19mcmVlX2h3X3N0YXRlKHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRl
ICpjcnRjX3N0YXRlKTsKK3ZvaWQgaW50ZWxfY3J0Y19jb3B5X2NvbG9yX2Jsb2JzKHN0cnVjdCBp
bnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKTsKIHN0cnVjdCBkcm1fYXRvbWljX3N0YXRlICpp
bnRlbF9hdG9taWNfc3RhdGVfYWxsb2Moc3RydWN0IGRybV9kZXZpY2UgKmRldik7CiB2b2lkIGlu
dGVsX2F0b21pY19zdGF0ZV9jbGVhcihzdHJ1Y3QgZHJtX2F0b21pY19zdGF0ZSAqc3RhdGUpOwog
CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXku
YyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCmluZGV4IDFi
YzAwOGMwOTRlNC4uYTc2NTc5NDU5N2VkIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2Rpc3BsYXkuYwpAQCAtNzE4NSw2ICs3MTg1LDggQEAgc3RhdGljIHZvaWQgaW50
ZWxfY3J0Y19kaXNhYmxlX25vYXRvbWljKHN0cnVjdCBkcm1fY3J0YyAqY3J0YywKIAljcnRjLT5l
bmFibGVkID0gZmFsc2U7CiAJY3J0Yy0+c3RhdGUtPmNvbm5lY3Rvcl9tYXNrID0gMDsKIAljcnRj
LT5zdGF0ZS0+ZW5jb2Rlcl9tYXNrID0gMDsKKwlpbnRlbF9jcnRjX2ZyZWVfaHdfc3RhdGUoY3J0
Y19zdGF0ZSk7CisJbWVtc2V0KCZjcnRjX3N0YXRlLT5odywgMCwgc2l6ZW9mKGNydGNfc3RhdGUt
Pmh3KSk7CiAKIAlmb3JfZWFjaF9lbmNvZGVyX29uX2NydGMoY3J0Yy0+ZGV2LCBjcnRjLCBlbmNv
ZGVyKQogCQllbmNvZGVyLT5iYXNlLmNydGMgPSBOVUxMOwpAQCAtMTI1NjAsOCArMTI1NjIsNDgg
QEAgc3RhdGljIGJvb2wgY2hlY2tfZGlnaXRhbF9wb3J0X2NvbmZsaWN0cyhzdHJ1Y3QgaW50ZWxf
YXRvbWljX3N0YXRlICpzdGF0ZSkKIAlyZXR1cm4gcmV0OwogfQogCitzdGF0aWMgdm9pZAoraW50
ZWxfY3J0Y19jb3B5X3VhcGlfdG9faHdfc3RhdGVfbm9tb2Rlc2V0KHN0cnVjdCBpbnRlbF9jcnRj
X3N0YXRlICpjcnRjX3N0YXRlKQoreworCWludGVsX2NydGNfY29weV9jb2xvcl9ibG9icyhjcnRj
X3N0YXRlKTsKK30KKworc3RhdGljIHZvaWQKK2ludGVsX2NydGNfY29weV91YXBpX3RvX2h3X3N0
YXRlKHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQoreworCWNydGNfc3RhdGUt
Pmh3LmVuYWJsZSA9IGNydGNfc3RhdGUtPnVhcGkuZW5hYmxlOworCWNydGNfc3RhdGUtPmh3LmFj
dGl2ZSA9IGNydGNfc3RhdGUtPnVhcGkuYWN0aXZlOworCWNydGNfc3RhdGUtPmh3Lm1vZGUgPSBj
cnRjX3N0YXRlLT51YXBpLm1vZGU7CisJY3J0Y19zdGF0ZS0+aHcuYWRqdXN0ZWRfbW9kZSA9IGNy
dGNfc3RhdGUtPnVhcGkuYWRqdXN0ZWRfbW9kZTsKKwlpbnRlbF9jcnRjX2NvcHlfdWFwaV90b19o
d19zdGF0ZV9ub21vZGVzZXQoY3J0Y19zdGF0ZSk7Cit9CisKK3N0YXRpYyB2b2lkIGludGVsX2Ny
dGNfY29weV9od190b191YXBpX3N0YXRlKHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0
YXRlKQoreworCWNydGNfc3RhdGUtPnVhcGkuZW5hYmxlID0gY3J0Y19zdGF0ZS0+aHcuZW5hYmxl
OworCWNydGNfc3RhdGUtPnVhcGkuYWN0aXZlID0gY3J0Y19zdGF0ZS0+aHcuYWN0aXZlOworCWNy
dGNfc3RhdGUtPnVhcGkubW9kZSA9IGNydGNfc3RhdGUtPmh3Lm1vZGU7CisJY3J0Y19zdGF0ZS0+
dWFwaS5hZGp1c3RlZF9tb2RlID0gY3J0Y19zdGF0ZS0+aHcuYWRqdXN0ZWRfbW9kZTsKKworCS8q
IGNvcHkgY29sb3IgYmxvYnMgdG8gdWFwaSAqLworCWRybV9wcm9wZXJ0eV9ibG9iX3B1dChjcnRj
X3N0YXRlLT5ody5kZWdhbW1hX2x1dCk7CisJY3J0Y19zdGF0ZS0+dWFwaS5kZWdhbW1hX2x1dCA9
IGNydGNfc3RhdGUtPmh3LmRlZ2FtbWFfbHV0OworCWlmIChjcnRjX3N0YXRlLT51YXBpLmRlZ2Ft
bWFfbHV0KQorCQlkcm1fcHJvcGVydHlfYmxvYl9nZXQoY3J0Y19zdGF0ZS0+dWFwaS5kZWdhbW1h
X2x1dCk7CisKKwlkcm1fcHJvcGVydHlfYmxvYl9wdXQoY3J0Y19zdGF0ZS0+dWFwaS5jdG0pOwor
CWNydGNfc3RhdGUtPnVhcGkuY3RtID0gY3J0Y19zdGF0ZS0+aHcuY3RtOworCWlmIChjcnRjX3N0
YXRlLT51YXBpLmN0bSkKKwkJZHJtX3Byb3BlcnR5X2Jsb2JfZ2V0KGNydGNfc3RhdGUtPnVhcGku
Y3RtKTsKKworCWRybV9wcm9wZXJ0eV9ibG9iX3B1dChjcnRjX3N0YXRlLT51YXBpLmdhbW1hX2x1
dCk7CisJY3J0Y19zdGF0ZS0+dWFwaS5nYW1tYV9sdXQgPSBjcnRjX3N0YXRlLT5ody5nYW1tYV9s
dXQ7CisJaWYgKGNydGNfc3RhdGUtPnVhcGkuZ2FtbWFfbHV0KQorCQlkcm1fcHJvcGVydHlfYmxv
Yl9nZXQoY3J0Y19zdGF0ZS0+dWFwaS5nYW1tYV9sdXQpOworfQorCiBzdGF0aWMgaW50Ci1jbGVh
cl9pbnRlbF9jcnRjX3N0YXRlKHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQor
aW50ZWxfY3J0Y19wcmVwYXJlX2NsZWFyZWRfc3RhdGUoc3RydWN0IGludGVsX2NydGNfc3RhdGUg
KmNydGNfc3RhdGUpCiB7CiAJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0KIAkJ
dG9faTkxNShjcnRjX3N0YXRlLT51YXBpLmNydGMtPmRldik7CkBAIC0xMjU3MSwxMSArMTI2MTMs
MTUgQEAgY2xlYXJfaW50ZWxfY3J0Y19zdGF0ZShzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0
Y19zdGF0ZSkKIAlpZiAoIXNhdmVkX3N0YXRlKQogCQlyZXR1cm4gLUVOT01FTTsKIAorCS8qIGZy
ZWUgdGhlIG9sZCBjcnRjX3N0YXRlLT5odyBtZW1iZXJzICovCisJaW50ZWxfY3J0Y19mcmVlX2h3
X3N0YXRlKGNydGNfc3RhdGUpOworCiAJLyogRklYTUU6IGJlZm9yZSB0aGUgc3dpdGNoIHRvIGF0
b21pYyBzdGFydGVkLCBhIG5ldyBwaXBlX2NvbmZpZyB3YXMKIAkgKiBremFsbG9jJ2QuIENvZGUg
dGhhdCBkZXBlbmRzIG9uIGFueSBmaWVsZCBiZWluZyB6ZXJvIHNob3VsZCBiZQogCSAqIGZpeGVk
LCBzbyB0aGF0IHRoZSBjcnRjX3N0YXRlIGNhbiBiZSBzYWZlbHkgZHVwbGljYXRlZC4gRm9yIG5v
dywKIAkgKiBvbmx5IGZpZWxkcyB0aGF0IGFyZSBrbm93IHRvIG5vdCBjYXVzZSBwcm9ibGVtcyBh
cmUgcHJlc2VydmVkLiAqLwogCisJc2F2ZWRfc3RhdGUtPnVhcGkgPSBjcnRjX3N0YXRlLT51YXBp
OwogCXNhdmVkX3N0YXRlLT5zY2FsZXJfc3RhdGUgPSBjcnRjX3N0YXRlLT5zY2FsZXJfc3RhdGU7
CiAJc2F2ZWRfc3RhdGUtPnNoYXJlZF9kcGxsID0gY3J0Y19zdGF0ZS0+c2hhcmVkX2RwbGw7CiAJ
c2F2ZWRfc3RhdGUtPmRwbGxfaHdfc3RhdGUgPSBjcnRjX3N0YXRlLT5kcGxsX2h3X3N0YXRlOwpA
QCAtMTI1OTMsMTQgKzEyNjM5LDExIEBAIGNsZWFyX2ludGVsX2NydGNfc3RhdGUoc3RydWN0IGlu
dGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpCiAJCXNhdmVkX3N0YXRlLT5zeW5jX21vZGVfc2xh
dmVzX21hc2sgPQogCQkJY3J0Y19zdGF0ZS0+c3luY19tb2RlX3NsYXZlc19tYXNrOwogCi0JLyog
S2VlcCBiYXNlIGRybV9jcnRjX3N0YXRlIGludGFjdCwgb25seSBjbGVhciBvdXIgZXh0ZW5kZWQg
c3RydWN0ICovCi0JQlVJTERfQlVHX09OKG9mZnNldG9mKHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRl
LCBiYXNlKSk7Ci0JQlVJTERfQlVHX09OKG9mZnNldG9mKHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRl
LCB1YXBpKSk7Ci0JQlVJTERfQlVHX09OKG9mZnNldG9mKHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRl
LCBodykpOwotCW1lbWNweSgmY3J0Y19zdGF0ZS0+dWFwaSArIDEsICZzYXZlZF9zdGF0ZS0+dWFw
aSArIDEsCi0JICAgICAgIHNpemVvZigqY3J0Y19zdGF0ZSkgLSBzaXplb2YoY3J0Y19zdGF0ZS0+
dWFwaSkpOwotCisJbWVtY3B5KGNydGNfc3RhdGUsIHNhdmVkX3N0YXRlLCBzaXplb2YoKmNydGNf
c3RhdGUpKTsKIAlrZnJlZShzYXZlZF9zdGF0ZSk7CisKKwlpbnRlbF9jcnRjX2NvcHlfdWFwaV90
b19od19zdGF0ZShjcnRjX3N0YXRlKTsKKwogCXJldHVybiAwOwogfQogCkBAIC0xMjYxNiwxMCAr
MTI2NTksNiBAQCBpbnRlbF9tb2Rlc2V0X3BpcGVfY29uZmlnKHN0cnVjdCBpbnRlbF9jcnRjX3N0
YXRlICpwaXBlX2NvbmZpZykKIAlpbnQgaTsKIAlib29sIHJldHJ5ID0gdHJ1ZTsKIAotCXJldCA9
IGNsZWFyX2ludGVsX2NydGNfc3RhdGUocGlwZV9jb25maWcpOwotCWlmIChyZXQpCi0JCXJldHVy
biByZXQ7Ci0KIAlwaXBlX2NvbmZpZy0+Y3B1X3RyYW5zY29kZXIgPQogCQkoZW51bSB0cmFuc2Nv
ZGVyKSB0b19pbnRlbF9jcnRjKGNydGMpLT5waXBlOwogCkBAIC0xMzQ3Niw2ICsxMzUxNSw4IEBA
IHZlcmlmeV9jcnRjX3N0YXRlKHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjLAogCiAJc3RhdGUgPSBv
bGRfY3J0Y19zdGF0ZS0+dWFwaS5zdGF0ZTsKIAlfX2RybV9hdG9taWNfaGVscGVyX2NydGNfZGVz
dHJveV9zdGF0ZSgmb2xkX2NydGNfc3RhdGUtPnVhcGkpOworCWludGVsX2NydGNfZnJlZV9od19z
dGF0ZShvbGRfY3J0Y19zdGF0ZSk7CisKIAlwaXBlX2NvbmZpZyA9IG9sZF9jcnRjX3N0YXRlOwog
CW1lbXNldChwaXBlX2NvbmZpZywgMCwgc2l6ZW9mKCpwaXBlX2NvbmZpZykpOwogCXBpcGVfY29u
ZmlnLT51YXBpLmNydGMgPSAmY3J0Yy0+YmFzZTsKQEAgLTE0MDEwLDE0ICsxNDA1MSwyNCBAQCBz
dGF0aWMgaW50IGludGVsX2F0b21pY19jaGVjayhzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LAogCiAJ
Zm9yX2VhY2hfb2xkbmV3X2ludGVsX2NydGNfaW5fc3RhdGUoc3RhdGUsIGNydGMsIG9sZF9jcnRj
X3N0YXRlLAogCQkJCQkgICAgbmV3X2NydGNfc3RhdGUsIGkpIHsKLQkJaWYgKCFuZWVkc19tb2Rl
c2V0KG5ld19jcnRjX3N0YXRlKSkKKwkJaWYgKCFuZWVkc19tb2Rlc2V0KG5ld19jcnRjX3N0YXRl
KSkgeworCQkJLyogTGlnaHQgY29weSAqLworCQkJaW50ZWxfY3J0Y19jb3B5X3VhcGlfdG9faHdf
c3RhdGVfbm9tb2Rlc2V0KG5ld19jcnRjX3N0YXRlKTsKKwogCQkJY29udGludWU7CisJCX0KIAog
CQlpZiAoIW5ld19jcnRjX3N0YXRlLT51YXBpLmVuYWJsZSkgeworCQkJaW50ZWxfY3J0Y19jb3B5
X3VhcGlfdG9faHdfc3RhdGUobmV3X2NydGNfc3RhdGUpOworCiAJCQlhbnlfbXMgPSB0cnVlOwog
CQkJY29udGludWU7CiAJCX0KIAorCQlyZXQgPSBpbnRlbF9jcnRjX3ByZXBhcmVfY2xlYXJlZF9z
dGF0ZShuZXdfY3J0Y19zdGF0ZSk7CisJCWlmIChyZXQpCisJCQlnb3RvIGZhaWw7CisKIAkJcmV0
ID0gaW50ZWxfbW9kZXNldF9waXBlX2NvbmZpZyhuZXdfY3J0Y19zdGF0ZSk7CiAJCWlmIChyZXQp
CiAJCQlnb3RvIGZhaWw7CkBAIC0xNzI5MSw2ICsxNzM0Miw3IEBAIHN0YXRpYyB2b2lkIGludGVs
X21vZGVzZXRfcmVhZG91dF9od19zdGF0ZShzdHJ1Y3QgZHJtX2RldmljZSAqZGV2KQogCQkJdG9f
aW50ZWxfY3J0Y19zdGF0ZShjcnRjLT5iYXNlLnN0YXRlKTsKIAogCQlfX2RybV9hdG9taWNfaGVs
cGVyX2NydGNfZGVzdHJveV9zdGF0ZSgmY3J0Y19zdGF0ZS0+dWFwaSk7CisJCWludGVsX2NydGNf
ZnJlZV9od19zdGF0ZShjcnRjX3N0YXRlKTsKIAkJbWVtc2V0KGNydGNfc3RhdGUsIDAsIHNpemVv
ZigqY3J0Y19zdGF0ZSkpOwogCQlfX2RybV9hdG9taWNfaGVscGVyX2NydGNfcmVzZXQoJmNydGMt
PmJhc2UsICZjcnRjX3N0YXRlLT51YXBpKTsKIApAQCAtMTc0MTksNiArMTc0NzEsNyBAQCBzdGF0
aWMgdm9pZCBpbnRlbF9tb2Rlc2V0X3JlYWRvdXRfaHdfc3RhdGUoc3RydWN0IGRybV9kZXZpY2Ug
KmRldikKIAkJCSAqIHNldCBhIGZsYWcgdG8gaW5kaWNhdGUgdGhhdCBhIGZ1bGwgcmVjYWxjdWxh
dGlvbiBpcwogCQkJICogbmVlZGVkIG9uIHRoZSBuZXh0IGNvbW1pdC4KIAkJCSAqLworCQkJY3J0
Y19zdGF0ZS0+aHcubW9kZSA9IGNydGMtPmJhc2UubW9kZTsKIAkJCWNydGNfc3RhdGUtPmh3Lm1v
ZGUucHJpdmF0ZV9mbGFncyA9IEk5MTVfTU9ERV9GTEFHX0lOSEVSSVRFRDsKIAogCQkJaW50ZWxf
Y3J0Y19jb21wdXRlX3BpeGVsX3JhdGUoY3J0Y19zdGF0ZSk7CkBAIC0xNzQ2Nyw2ICsxNzUyMCw3
IEBAIHN0YXRpYyB2b2lkIGludGVsX21vZGVzZXRfcmVhZG91dF9od19zdGF0ZShzdHJ1Y3QgZHJt
X2RldmljZSAqZGV2KQogCiAJCWludGVsX2J3X2NydGNfdXBkYXRlKGJ3X3N0YXRlLCBjcnRjX3N0
YXRlKTsKIAorCQlpbnRlbF9jcnRjX2NvcHlfaHdfdG9fdWFwaV9zdGF0ZShjcnRjX3N0YXRlKTsK
IAkJaW50ZWxfcGlwZV9jb25maWdfc2FuaXR5X2NoZWNrKGRldl9wcml2LCBjcnRjX3N0YXRlKTsK
IAl9CiB9CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rp
c3BsYXlfdHlwZXMuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxh
eV90eXBlcy5oCmluZGV4IDU3M2NlZDlkYzkwOS4uYmNmNWY3NjQwMzA3IDEwMDY0NAotLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaAorKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaApAQCAtNzU3
LDggKzc1Nyw2IEBAIGVudW0gaW50ZWxfb3V0cHV0X2Zvcm1hdCB7CiB9OwogCiBzdHJ1Y3QgaW50
ZWxfY3J0Y19zdGF0ZSB7Ci0JdW5pb24gewotCXN0cnVjdCBkcm1fY3J0Y19zdGF0ZSBiYXNlOwog
CS8qCiAJICogdWFwaSAoZHJtKSBzdGF0ZS4gVGhpcyBpcyB0aGUgc29mdHdhcmUgc3RhdGUgc2hv
d24gdG8gdXNlcnNwYWNlLgogCSAqIEluIHBhcnRpY3VsYXIsIHRoZSBmb2xsb3dpbmcgbWVtYmVy
cyBhcmUgdXNlZCBmb3IgYm9va2tlZXBpbmc6CkBAIC03ODEsOCArNzc5LDExIEBAIHN0cnVjdCBp
bnRlbF9jcnRjX3N0YXRlIHsKIAkgKgogCSAqIER1cmluZyBpbml0aWFsIGh3IHJlYWRvdXQsIHRo
ZXkgbmVlZCB0byBiZSBjb3BpZWQgdG8gdWFwaS4KIAkgKi8KLQlzdHJ1Y3QgZHJtX2NydGNfc3Rh
dGUgaHc7Ci0JfTsKKwlzdHJ1Y3QgeworCQlib29sIGFjdGl2ZSwgZW5hYmxlOworCQlzdHJ1Y3Qg
ZHJtX3Byb3BlcnR5X2Jsb2IgKmRlZ2FtbWFfbHV0LCAqZ2FtbWFfbHV0LCAqY3RtOworCQlzdHJ1
Y3QgZHJtX2Rpc3BsYXlfbW9kZSBtb2RlLCBhZGp1c3RlZF9tb2RlOworCX0gaHc7CiAKIAkvKioK
IAkgKiBxdWlya3MgLSBiaXRmaWVsZCB3aXRoIGh3IHN0YXRlIHJlYWRvdXQgcXVpcmtzCi0tIAoy
LjIzLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
