Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 85DB92C6947
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Nov 2020 17:19:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BCD956EE4E;
	Fri, 27 Nov 2020 16:19:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AF3186EE4E
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Nov 2020 16:19:14 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23135807-1500050 
 for multiple; Fri, 27 Nov 2020 16:18:41 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 27 Nov 2020 16:18:41 +0000
Message-Id: <20201127161841.24806-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20201126211317.15291-1-chris@chris-wilson.co.uk>
References: <20201126211317.15291-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2] drm/i915/display: Record the plane update
 times for debugging
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

U2luY2Ugd2UgdHJ5IGFuZCBlc3RpbWF0ZSBob3cgbG9uZyB3ZSByZXF1aXJlIHRvIHVwZGF0ZSB0
aGUgcmVnaXN0ZXJzIHRvCnBlcmZvcm0gYSBwbGFuZSB1cGRhdGUsIGl0IGlzIG9mIHZpdGFsIGlt
cG9ydGFuY2UgdGhhdCB3ZSBtZWFzdXJlIHRoZQpkaXN0cmlidXRpb24gb2YgcGxhbmUgdXBkYXRl
cyB0byBiZXR0ZXIgZ3VpZGUgb3VyIGVzdGltYXRlLiBJZiB3ZQp1bmRlcmVzdGltYXRlIGhvdyBs
b25nIGl0IHRha2VzIHRvIHBlcmZvcm0gdGhlIHBsYW5lIHVwZGF0ZSwgd2UgbWF5CnNsaXAgaW50
byB0aGUgbmV4dCBzY2Fub3V0IGZyYW1lIGNhdXNpbmcgYSB0ZWFyLiBJZiB3ZSBvdmVyZXN0aW1h
dGUsIHdlCm1heSB1bm5lY2Vzc2FyaWx5IGRlbGF5IHRoZSB1cGRhdGUgdG8gdGhlIG5leHQgZnJh
bWUsIGNhdXNpbmcgdmlzaWJsZQpqaXR0ZXIuCgpSZXBsYWNlIHRoZSB3YXJuaW5nIHRoYXQgd2Ug
ZXhjZWVkIHNvbWUgYXJiaXRyYXJ5IHRocmVzaG9sZCBmb3IgdGhlCnZibGFuayB1cGRhdGUgd2l0
aCBhIGhpc3RvZ3JhbSBmb3IgZGVidWdmcy4KCnYyOiBBZGQgYSBwZXItY3J0YyBkZWJ1Z2ZzIGVu
dHJ5IHNvIHRoYXQgdGhlIGluZm9ybWF0aW9uIGlzIGVhc2llciB0bwpleHRyYWN0IHdoZW4gdGVz
dGluZyBpbmRpdmlkdWFsIENSVEMsIGFuZCBzbyB0aGF0IGl0IGNhbiBiZSByZXNldCBiZWZvcmUK
YSB0ZXN0LgoKQ2xvc2VzOiBodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvZHJtL2ludGVs
Ly0vaXNzdWVzLzE5ODIKU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13
aWxzb24uY28udWs+CkNjOiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAbGludXguaW50ZWwuY29t
PgpDYzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KLS0t
CiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyAgfCAgMTAgKy0K
IC4uLi9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfZGVidWdmcy5jICB8IDExNyArKysr
KysrKysrKysrKysrKysKIC4uLi9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfZGVidWdm
cy5oICB8ICAgMyArCiAuLi4vZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgg
ICAgfCAgIDkgKysKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfc3ByaXRlLmMg
ICB8ICA0OSArKysrKy0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9zcHJp
dGUuaCAgIHwgIDEwICsrCiA2IGZpbGVzIGNoYW5nZWQsIDE4MCBpbnNlcnRpb25zKCspLCAxOCBk
ZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2Rpc3BsYXkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxh
eS5jCmluZGV4IGJhMjY1NDUzOTJiYy4uOTE4N2EyMGE4YWNhIDEwMDY0NAotLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYworKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwpAQCAtNDUsNiArNDUsNyBAQAogCiAjaW5j
bHVkZSAiZGlzcGxheS9pbnRlbF9jcnQuaCIKICNpbmNsdWRlICJkaXNwbGF5L2ludGVsX2RkaS5o
IgorI2luY2x1ZGUgImRpc3BsYXkvaW50ZWxfZGlzcGxheV9kZWJ1Z2ZzLmgiCiAjaW5jbHVkZSAi
ZGlzcGxheS9pbnRlbF9kcC5oIgogI2luY2x1ZGUgImRpc3BsYXkvaW50ZWxfZHBfbXN0LmgiCiAj
aW5jbHVkZSAiZGlzcGxheS9pbnRlbF9kcGxsX21nci5oIgpAQCAtMTcyNjYsNiArMTcyNjcsMTIg
QEAgaW50ZWxfY3Vyc29yX3BsYW5lX2NyZWF0ZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2
X3ByaXYsCiAJcmV0dXJuIEVSUl9QVFIocmV0KTsKIH0KIAorc3RhdGljIGludCBpbnRlbF9jcnRj
X2xhdGVfcmVnaXN0ZXIoc3RydWN0IGRybV9jcnRjICpjcnRjKQoreworCWludGVsX2NydGNfZGVi
dWdmc19hZGQoY3J0Yyk7CisJcmV0dXJuIDA7Cit9CisKICNkZWZpbmUgSU5URUxfQ1JUQ19GVU5D
UyBcCiAJLmdhbW1hX3NldCA9IGRybV9hdG9taWNfaGVscGVyX2xlZ2FjeV9nYW1tYV9zZXQsIFwK
IAkuc2V0X2NvbmZpZyA9IGRybV9hdG9taWNfaGVscGVyX3NldF9jb25maWcsIFwKQEAgLTE3Mjc1
LDcgKzE3MjgyLDggQEAgaW50ZWxfY3Vyc29yX3BsYW5lX2NyZWF0ZShzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZSAqZGV2X3ByaXYsCiAJLmF0b21pY19kZXN0cm95X3N0YXRlID0gaW50ZWxfY3J0Y19k
ZXN0cm95X3N0YXRlLCBcCiAJLnNldF9jcmNfc291cmNlID0gaW50ZWxfY3J0Y19zZXRfY3JjX3Nv
dXJjZSwgXAogCS52ZXJpZnlfY3JjX3NvdXJjZSA9IGludGVsX2NydGNfdmVyaWZ5X2NyY19zb3Vy
Y2UsIFwKLQkuZ2V0X2NyY19zb3VyY2VzID0gaW50ZWxfY3J0Y19nZXRfY3JjX3NvdXJjZXMKKwku
Z2V0X2NyY19zb3VyY2VzID0gaW50ZWxfY3J0Y19nZXRfY3JjX3NvdXJjZXMsIFwKKwkubGF0ZV9y
ZWdpc3RlciA9IGludGVsX2NydGNfbGF0ZV9yZWdpc3RlcgogCiBzdGF0aWMgY29uc3Qgc3RydWN0
IGRybV9jcnRjX2Z1bmNzIGJkd19jcnRjX2Z1bmNzID0gewogCUlOVEVMX0NSVENfRlVOQ1MsCmRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfZGVi
dWdmcy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X2RlYnVn
ZnMuYwppbmRleCBjYTQxZThjMDBhZDcuLjA4ZGIwZmYwMjJlMCAxMDA2NDQKLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X2RlYnVnZnMuYworKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfZGVidWdmcy5jCkBAIC0xOCw2
ICsxOCw3IEBACiAjaW5jbHVkZSAiaW50ZWxfcG0uaCIKICNpbmNsdWRlICJpbnRlbF9wc3IuaCIK
ICNpbmNsdWRlICJpbnRlbF9zaWRlYmFuZC5oIgorI2luY2x1ZGUgImludGVsX3Nwcml0ZS5oIgog
CiBzdGF0aWMgaW5saW5lIHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpub2RlX3RvX2k5MTUoc3Ry
dWN0IGRybV9pbmZvX25vZGUgKm5vZGUpCiB7CkBAIC04NjUsNiArODY2LDEwMyBAQCBzdGF0aWMg
dm9pZCBpbnRlbF9zY2FsZXJfaW5mbyhzdHJ1Y3Qgc2VxX2ZpbGUgKm0sIHN0cnVjdCBpbnRlbF9j
cnRjICpjcnRjKQogCX0KIH0KIAorI2lmIElTX0VOQUJMRUQoQ09ORklHX0RSTV9JOTE1X0RFQlVH
X1ZCTEFOS19FVkFERSkKK3N0YXRpYyB2b2lkIGNydGNfdXBkYXRlc19pbmZvKHN0cnVjdCBzZXFf
ZmlsZSAqbSwKKwkJCSAgICAgIHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjLAorCQkJICAgICAgY29u
c3QgY2hhciAqaGRyKQoreworCWNoYXIgYnVmW0FSUkFZX1NJWkUoY3J0Yy0+ZGVidWcudmJsLnRp
bWVzKSArIDFdID0ge307CisJaW50IGgsIHJvdywgbWF4OworCXU2NCBjb3VudDsKKworCW1heCA9
IDA7CisJY291bnQgPSAwOworCWZvciAoaCA9IDA7IGggPCBBUlJBWV9TSVpFKGNydGMtPmRlYnVn
LnZibC50aW1lcyk7IGgrKykgeworCQlpZiAoY3J0Yy0+ZGVidWcudmJsLnRpbWVzW2hdID4gbWF4
KQorCQkJbWF4ID0gY3J0Yy0+ZGVidWcudmJsLnRpbWVzW2hdOworCQljb3VudCArPSBjcnRjLT5k
ZWJ1Zy52YmwudGltZXNbaF07CisJfQorCXNlcV9wcmludGYobSwgIiVzVXBkYXRlczogJWxsdVxu
IiwgaGRyLCBjb3VudCk7CisJaWYgKCFjb3VudCkKKwkJcmV0dXJuOworCisJbWVtc2V0KGJ1Ziwg
Jy0nLCBzaXplb2YoYnVmKSAtIDEpOworCXNlcV9wcmludGYobSwgIiVzICB8JXN8XG4iLCBoZHIs
IGJ1Zik7CisKKwlmb3IgKHJvdyA9IGlsb2cyKG1heCkgLSAxOyByb3c7IHJvdy0tKSB7CisJCW1l
bXNldChidWYsICcgJywgc2l6ZW9mKGJ1ZikgLSAxKTsKKwkJZm9yIChoID0gMDsgaCA8IEFSUkFZ
X1NJWkUoY3J0Yy0+ZGVidWcudmJsLnRpbWVzKTsgaCsrKSB7CisJCQlpZiAoaWxvZzIoY3J0Yy0+
ZGVidWcudmJsLnRpbWVzW2hdKSA+PSByb3cpCisJCQkJYnVmW2hdID0gJyonOworCQl9CisJCXNl
cV9wcmludGYobSwgIiVzICB8JXN8XG4iLCBoZHIsIGJ1Zik7CisJfQorCisJbWVtc2V0KGJ1Ziwg
Jy0nLCBzaXplb2YoYnVmKSAtIDEpOworCXNlcV9wcmludGYobSwgIiVzICB8JXN8XG4iLCBoZHIs
IGJ1Zik7CisJc2VxX3ByaW50ZihtLCAiJXMgICAgMXVzICAgICAobG9nKSAgICAgIDFtc1xuIiwg
aGRyKTsKKworCXNlcV9wcmludGYobSwgIiVzTWluIHVwZGF0ZTogJWxsdW5zXG4iLAorCQkgICBo
ZHIsIGNydGMtPmRlYnVnLnZibC5taW4pOworCXNlcV9wcmludGYobSwgIiVzTWF4IHVwZGF0ZTog
JWxsdW5zXG4iLAorCQkgICBoZHIsIGNydGMtPmRlYnVnLnZibC5tYXgpOworCXNlcV9wcmludGYo
bSwgIiVzQXZlcmFnZSB1cGRhdGU6ICVsbHVuc1xuIiwKKwkJICAgaGRyLCBkaXY2NF91NjQoY3J0
Yy0+ZGVidWcudmJsLnN1bSwgIGNvdW50KSk7CisJc2VxX3ByaW50ZihtLCAiJXNPdmVycnVucyA+
ICV1dXM6ICVsdVxuIiwKKwkJICAgaGRyLCBWQkxBTktfRVZBU0lPTl9USU1FX1VTLCBjcnRjLT5k
ZWJ1Zy52Ymwub3Zlcik7Cit9CisKK3N0YXRpYyBpbnQgY3J0Y191cGRhdGVzX3Nob3coc3RydWN0
IHNlcV9maWxlICptLCB2b2lkICpkYXRhKQoreworCWNydGNfdXBkYXRlc19pbmZvKG0sIG0tPnBy
aXZhdGUsICIiKTsKKwlyZXR1cm4gMDsKK30KKworc3RhdGljIGludCBjcnRjX3VwZGF0ZXNfb3Bl
bihzdHJ1Y3QgaW5vZGUgKmlub2RlLCBzdHJ1Y3QgZmlsZSAqZmlsZSkKK3sKKwlyZXR1cm4gc2lu
Z2xlX29wZW4oZmlsZSwgY3J0Y191cGRhdGVzX3Nob3csIGlub2RlLT5pX3ByaXZhdGUpOworfQor
CitzdGF0aWMgc3NpemVfdCBjcnRjX3VwZGF0ZXNfd3JpdGUoc3RydWN0IGZpbGUgKmZpbGUsCisJ
CQkJICBjb25zdCBjaGFyIF9fdXNlciAqdWJ1ZiwKKwkJCQkgIHNpemVfdCBsZW4sIGxvZmZfdCAq
b2ZmcCkKK3sKKwlzdHJ1Y3Qgc2VxX2ZpbGUgKm0gPSBmaWxlLT5wcml2YXRlX2RhdGE7CisJc3Ry
dWN0IGludGVsX2NydGMgKmNydGMgPSBtLT5wcml2YXRlOworCisJLyogTWF5IHJhY2Ugd2l0aCBh
biB1cGRhdGUuIE1laC4gKi8KKwltZW1zZXQoJmNydGMtPmRlYnVnLnZibCwgMCwgc2l6ZW9mKGNy
dGMtPmRlYnVnLnZibCkpOworCisJcmV0dXJuIGxlbjsKK30KKworc3RhdGljIGNvbnN0IHN0cnVj
dCBmaWxlX29wZXJhdGlvbnMgY3J0Y191cGRhdGVzX2ZvcHMgPSB7CisJLm93bmVyID0gVEhJU19N
T0RVTEUsCisJLm9wZW4gPSBjcnRjX3VwZGF0ZXNfb3BlbiwKKwkucmVhZCA9IHNlcV9yZWFkLAor
CS5sbHNlZWsgPSBzZXFfbHNlZWssCisJLnJlbGVhc2UgPSBzaW5nbGVfcmVsZWFzZSwKKwkud3Jp
dGUgPSBjcnRjX3VwZGF0ZXNfd3JpdGUKK307CisKK3N0YXRpYyB2b2lkIGNydGNfdXBkYXRlc19h
ZGQoc3RydWN0IGRybV9jcnRjICpjcnRjKQoreworCWRlYnVnZnNfY3JlYXRlX2ZpbGUoImk5MTVf
dXBkYXRlX2luZm8iLCAwNjQ0LCBjcnRjLT5kZWJ1Z2ZzX2VudHJ5LAorCQkJICAgIHRvX2ludGVs
X2NydGMoY3J0YyksICZjcnRjX3VwZGF0ZXNfZm9wcyk7Cit9CisKKyNlbHNlCitzdGF0aWMgdm9p
ZCBjcnRjX3VwZGF0ZXNfaW5mbyhzdHJ1Y3Qgc2VxX2ZpbGUgKm0sCisJCQkgICAgICBzdHJ1Y3Qg
aW50ZWxfY3J0YyAqY3J0YywKKwkJCSAgICAgIGNvbnN0IGNoYXIgKmhkcikKK3sKK30KKworc3Rh
dGljIHZvaWQgY3J0Y191cGRhdGVzX2FkZChzdHJ1Y3QgZHJtX2NydGMgKmNydGMpCit7Cit9Cisj
ZW5kaWYKKwogc3RhdGljIHZvaWQgaW50ZWxfY3J0Y19pbmZvKHN0cnVjdCBzZXFfZmlsZSAqbSwg
c3RydWN0IGludGVsX2NydGMgKmNydGMpCiB7CiAJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRl
dl9wcml2ID0gbm9kZV90b19pOTE1KG0tPnByaXZhdGUpOwpAQCAtOTA3LDYgKzEwMDUsOCBAQCBz
dGF0aWMgdm9pZCBpbnRlbF9jcnRjX2luZm8oc3RydWN0IHNlcV9maWxlICptLCBzdHJ1Y3QgaW50
ZWxfY3J0YyAqY3J0YykKIAlzZXFfcHJpbnRmKG0sICJcdHVuZGVycnVuIHJlcG9ydGluZzogY3B1
PSVzIHBjaD0lc1xuIiwKIAkJICAgeWVzbm8oIWNydGMtPmNwdV9maWZvX3VuZGVycnVuX2Rpc2Fi
bGVkKSwKIAkJICAgeWVzbm8oIWNydGMtPnBjaF9maWZvX3VuZGVycnVuX2Rpc2FibGVkKSk7CisK
KwljcnRjX3VwZGF0ZXNfaW5mbyhtLCBjcnRjLCAiXHQiKTsKIH0KIAogc3RhdGljIGludCBpOTE1
X2Rpc3BsYXlfaW5mbyhzdHJ1Y3Qgc2VxX2ZpbGUgKm0sIHZvaWQgKnVudXNlZCkKQEAgLTIyNzgs
MyArMjM3OCwyMCBAQCBpbnQgaW50ZWxfY29ubmVjdG9yX2RlYnVnZnNfYWRkKHN0cnVjdCBkcm1f
Y29ubmVjdG9yICpjb25uZWN0b3IpCiAKIAlyZXR1cm4gMDsKIH0KKworLyoqCisgKiBpbnRlbF9j
cnRjX2RlYnVnZnNfYWRkIC0gYWRkIGk5MTUgc3BlY2lmaWMgY3J0YyBkZWJ1Z2ZzIGZpbGVzCisg
KiBAY3J0YzogcG9pbnRlciB0byBhIGRybV9jcnRjCisgKgorICogUmV0dXJucyAwIG9uIHN1Y2Nl
c3MsIG5lZ2F0aXZlIGVycm9yIGNvZGVzIG9uIGVycm9yLgorICoKKyAqIEZhaWx1cmUgdG8gYWRk
IGRlYnVnZnMgZW50cmllcyBzaG91bGQgZ2VuZXJhbGx5IGJlIGlnbm9yZWQuCisgKi8KK2ludCBp
bnRlbF9jcnRjX2RlYnVnZnNfYWRkKHN0cnVjdCBkcm1fY3J0YyAqY3J0YykKK3sKKwlpZiAoIWNy
dGMtPmRlYnVnZnNfZW50cnkpCisJCXJldHVybiAtRU5PREVWOworCisJY3J0Y191cGRhdGVzX2Fk
ZChjcnRjKTsKKwlyZXR1cm4gMDsKK30KZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9kZWJ1Z2ZzLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2Rpc3BsYXlfZGVidWdmcy5oCmluZGV4IGM5MjJjMTc0NWJmZS4uNTU3OTAx
ZjNlYjkwIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rp
c3BsYXlfZGVidWdmcy5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGlzcGxheV9kZWJ1Z2ZzLmgKQEAgLTcsMTQgKzcsMTcgQEAKICNkZWZpbmUgX19JTlRFTF9ESVNQ
TEFZX0RFQlVHRlNfSF9fCiAKIHN0cnVjdCBkcm1fY29ubmVjdG9yOworc3RydWN0IGRybV9jcnRj
Owogc3RydWN0IGRybV9pOTE1X3ByaXZhdGU7CiAKICNpZmRlZiBDT05GSUdfREVCVUdfRlMKIHZv
aWQgaW50ZWxfZGlzcGxheV9kZWJ1Z2ZzX3JlZ2lzdGVyKHN0cnVjdCBkcm1faTkxNV9wcml2YXRl
ICppOTE1KTsKIGludCBpbnRlbF9jb25uZWN0b3JfZGVidWdmc19hZGQoc3RydWN0IGRybV9jb25u
ZWN0b3IgKmNvbm5lY3Rvcik7CitpbnQgaW50ZWxfY3J0Y19kZWJ1Z2ZzX2FkZChzdHJ1Y3QgZHJt
X2NydGMgKmNydGMpOwogI2Vsc2UKIHN0YXRpYyBpbmxpbmUgdm9pZCBpbnRlbF9kaXNwbGF5X2Rl
YnVnZnNfcmVnaXN0ZXIoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpIHt9CiBzdGF0aWMg
aW5saW5lIGludCBpbnRlbF9jb25uZWN0b3JfZGVidWdmc19hZGQoc3RydWN0IGRybV9jb25uZWN0
b3IgKmNvbm5lY3RvcikgeyByZXR1cm4gMDsgfQorc3RhdGljIGlubGluZSBpbnQgaW50ZWxfY3J0
Y19kZWJ1Z2ZzX2FkZChzdHJ1Y3QgZHJtX2NydGMgKmNydGMpIHsgcmV0dXJuIDA7IH0KICNlbmRp
ZgogCiAjZW5kaWYgLyogX19JTlRFTF9ESVNQTEFZX0RFQlVHRlNfSF9fICovCmRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaCBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oCmluZGV4IGNl
ODJkNjU0ZDBmMi4uMzBjODJiYzVjYTk4IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaApAQCAtMTE4Niw2ICsxMTg2LDE1IEBAIHN0
cnVjdCBpbnRlbF9jcnRjIHsKIAkJa3RpbWVfdCBzdGFydF92YmxfdGltZTsKIAkJaW50IG1pbl92
YmwsIG1heF92Ymw7CiAJCWludCBzY2FubGluZV9zdGFydDsKKyNpZmRlZiBDT05GSUdfRFJNX0k5
MTVfREVCVUdfVkJMQU5LX0VWQURFCisJCXN0cnVjdCB7CisJCQl1NjQgbWluOworCQkJdTY0IG1h
eDsKKwkJCXU2NCBzdW07CisJCQl1bnNpZ25lZCBsb25nIG92ZXI7CisJCQl1bnNpZ25lZCBpbnQg
dGltZXNbMjFdOyAvKiBbMXVzLCAxbXNdICovCisJCX0gdmJsOworI2VuZGlmCiAJfSBkZWJ1ZzsK
IAogCS8qIHNjYWxlcnMgYXZhaWxhYmxlIG9uIHRoaXMgY3J0YyAqLwpkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9zcHJpdGUuYyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfc3ByaXRlLmMKaW5kZXggMDE5YTJkNmQ4MDdhLi5iN2UyMDg4
MTYwNzQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfc3By
aXRlLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9zcHJpdGUuYwpA
QCAtNjEsMTQgKzYxLDYgQEAgaW50IGludGVsX3VzZWNzX3RvX3NjYW5saW5lcyhjb25zdCBzdHJ1
Y3QgZHJtX2Rpc3BsYXlfbW9kZSAqYWRqdXN0ZWRfbW9kZSwKIAkJCSAgICAxMDAwICogYWRqdXN0
ZWRfbW9kZS0+Y3J0Y19odG90YWwpOwogfQogCi0vKiBGSVhNRTogV2Ugc2hvdWxkIGluc3RlYWQg
b25seSB0YWtlIHNwaW5sb2NrcyBvbmNlIGZvciB0aGUgZW50aXJlIHVwZGF0ZQotICogaW5zdGVh
ZCBvZiBvbmNlIHBlciBtbWlvLiAqLwotI2lmIElTX0VOQUJMRUQoQ09ORklHX1BST1ZFX0xPQ0tJ
TkcpCi0jZGVmaW5lIFZCTEFOS19FVkFTSU9OX1RJTUVfVVMgMjUwCi0jZWxzZQotI2RlZmluZSBW
QkxBTktfRVZBU0lPTl9USU1FX1VTIDEwMAotI2VuZGlmCi0KIC8qKgogICogaW50ZWxfcGlwZV91
cGRhdGVfc3RhcnQoKSAtIHN0YXJ0IHVwZGF0ZSBvZiBhIHNldCBvZiBkaXNwbGF5IHJlZ2lzdGVy
cwogICogQG5ld19jcnRjX3N0YXRlOiB0aGUgbmV3IGNydGMgc3RhdGUKQEAgLTE4Nyw2ICsxNzks
MzYgQEAgdm9pZCBpbnRlbF9waXBlX3VwZGF0ZV9zdGFydChjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0
Y19zdGF0ZSAqbmV3X2NydGNfc3RhdGUpCiAJbG9jYWxfaXJxX2Rpc2FibGUoKTsKIH0KIAorI2lm
IElTX0VOQUJMRUQoQ09ORklHX0RSTV9JOTE1X0RFQlVHX1ZCTEFOS19FVkFERSkKK3N0YXRpYyB2
b2lkIGRiZ192YmxhbmtfZXZhZGUoc3RydWN0IGludGVsX2NydGMgKmNydGMsIGt0aW1lX3QgZW5k
KQoreworCXU2NCBkZWx0YSA9IGt0aW1lX3RvX25zKGt0aW1lX3N1YihlbmQsIGNydGMtPmRlYnVn
LnN0YXJ0X3ZibF90aW1lKSk7CisJdW5zaWduZWQgaW50IGg7CisKKwloID0gaWxvZzIoZGVsdGEg
Pj4gOSk7CisJaWYgKGggPj0gQVJSQVlfU0laRShjcnRjLT5kZWJ1Zy52YmwudGltZXMpKQorCQlo
ID0gQVJSQVlfU0laRShjcnRjLT5kZWJ1Zy52YmwudGltZXMpIC0gMTsKKwljcnRjLT5kZWJ1Zy52
YmwudGltZXNbaF0rKzsKKworCWNydGMtPmRlYnVnLnZibC5zdW0gKz0gZGVsdGE7CisJaWYgKCFj
cnRjLT5kZWJ1Zy52YmwubWluIHx8IGRlbHRhIDwgY3J0Yy0+ZGVidWcudmJsLm1pbikKKwkJY3J0
Yy0+ZGVidWcudmJsLm1pbiA9IGRlbHRhOworCWlmIChkZWx0YSA+IGNydGMtPmRlYnVnLnZibC5t
YXgpCisJCWNydGMtPmRlYnVnLnZibC5tYXggPSBkZWx0YTsKKworCWlmIChkZWx0YSA+IDEwMDAg
KiBWQkxBTktfRVZBU0lPTl9USU1FX1VTKSB7CisJCWRybV9kYmdfa21zKGNydGMtPmJhc2UuZGV2
LAorCQkJICAgICJBdG9taWMgdXBkYXRlIG9uIHBpcGUgKCVjKSB0b29rICVsbGQgdXMsIG1heCB0
aW1lIHVuZGVyIGV2YXNpb24gaXMgJXUgdXNcbiIsCisJCQkgICAgcGlwZV9uYW1lKGNydGMtPnBp
cGUpLAorCQkJICAgIGRpdl91NjQoZGVsdGEsIDEwMDApLAorCQkJICAgIFZCTEFOS19FVkFTSU9O
X1RJTUVfVVMpOworCQljcnRjLT5kZWJ1Zy52Ymwub3ZlcisrOworCX0KK30KKyNlbHNlCitzdGF0
aWMgdm9pZCBkYmdfdmJsYW5rX2V2YWRlKHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjLCBrdGltZV90
IGVuZCkge30KKyNlbmRpZgorCiAvKioKICAqIGludGVsX3BpcGVfdXBkYXRlX2VuZCgpIC0gZW5k
IHVwZGF0ZSBvZiBhIHNldCBvZiBkaXNwbGF5IHJlZ2lzdGVycwogICogQG5ld19jcnRjX3N0YXRl
OiB0aGUgbmV3IGNydGMgc3RhdGUKQEAgLTI0OSwxNSArMjcxLDggQEAgdm9pZCBpbnRlbF9waXBl
X3VwZGF0ZV9lbmQoc3RydWN0IGludGVsX2NydGNfc3RhdGUgKm5ld19jcnRjX3N0YXRlKQogCQkJ
Y3J0Yy0+ZGVidWcubWluX3ZibCwgY3J0Yy0+ZGVidWcubWF4X3ZibCwKIAkJCWNydGMtPmRlYnVn
LnNjYW5saW5lX3N0YXJ0LCBzY2FubGluZV9lbmQpOwogCX0KLSNpZmRlZiBDT05GSUdfRFJNX0k5
MTVfREVCVUdfVkJMQU5LX0VWQURFCi0JZWxzZSBpZiAoa3RpbWVfdXNfZGVsdGEoZW5kX3ZibF90
aW1lLCBjcnRjLT5kZWJ1Zy5zdGFydF92YmxfdGltZSkgPgotCQkgVkJMQU5LX0VWQVNJT05fVElN
RV9VUykKLQkJZHJtX3dhcm4oJmRldl9wcml2LT5kcm0sCi0JCQkgIkF0b21pYyB1cGRhdGUgb24g
cGlwZSAoJWMpIHRvb2sgJWxsZCB1cywgbWF4IHRpbWUgdW5kZXIgZXZhc2lvbiBpcyAldSB1c1xu
IiwKLQkJCSBwaXBlX25hbWUocGlwZSksCi0JCQkga3RpbWVfdXNfZGVsdGEoZW5kX3ZibF90aW1l
LCBjcnRjLT5kZWJ1Zy5zdGFydF92YmxfdGltZSksCi0JCQkgVkJMQU5LX0VWQVNJT05fVElNRV9V
Uyk7Ci0jZW5kaWYKKworCWRiZ192YmxhbmtfZXZhZGUoY3J0YywgZW5kX3ZibF90aW1lKTsKIH0K
IAogaW50IGludGVsX3BsYW5lX2NoZWNrX3N0cmlkZShjb25zdCBzdHJ1Y3QgaW50ZWxfcGxhbmVf
c3RhdGUgKnBsYW5lX3N0YXRlKQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9zcHJpdGUuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
c3ByaXRlLmgKaW5kZXggY2QyMTA0YmExY2ExLi43NjEyNmRkOGQ1ODQgMTAwNjQ0Ci0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfc3ByaXRlLmgKKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9zcHJpdGUuaApAQCAtMTcsNiArMTcsMTYgQEAgc3Ry
dWN0IGRybV9pOTE1X3ByaXZhdGU7CiBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZTsKIHN0cnVjdCBp
bnRlbF9wbGFuZV9zdGF0ZTsKIAorLyoKKyAqIEZJWE1FOiBXZSBzaG91bGQgaW5zdGVhZCBvbmx5
IHRha2Ugc3BpbmxvY2tzIG9uY2UgZm9yIHRoZSBlbnRpcmUgdXBkYXRlCisgKiBpbnN0ZWFkIG9m
IG9uY2UgcGVyIG1taW8uCisgKi8KKyNpZiBJU19FTkFCTEVEKENPTkZJR19QUk9WRV9MT0NLSU5H
KQorI2RlZmluZSBWQkxBTktfRVZBU0lPTl9USU1FX1VTIDI1MAorI2Vsc2UKKyNkZWZpbmUgVkJM
QU5LX0VWQVNJT05fVElNRV9VUyAxMDAKKyNlbmRpZgorCiBpbnQgaW50ZWxfdXNlY3NfdG9fc2Nh
bmxpbmVzKGNvbnN0IHN0cnVjdCBkcm1fZGlzcGxheV9tb2RlICphZGp1c3RlZF9tb2RlLAogCQkJ
ICAgICBpbnQgdXNlY3MpOwogc3RydWN0IGludGVsX3BsYW5lICppbnRlbF9zcHJpdGVfcGxhbmVf
Y3JlYXRlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKLS0gCjIuMjAuMQoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
