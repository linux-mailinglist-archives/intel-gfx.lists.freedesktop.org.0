Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 587BF2A702
	for <lists+intel-gfx@lfdr.de>; Sat, 25 May 2019 22:43:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1875D6E17D;
	Sat, 25 May 2019 20:43:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-x141.google.com (mail-lf1-x141.google.com
 [IPv6:2a00:1450:4864:20::141])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D48646E178;
 Sat, 25 May 2019 20:43:41 +0000 (UTC)
Received: by mail-lf1-x141.google.com with SMTP id y13so9429037lfh.9;
 Sat, 25 May 2019 13:43:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=wFWlKZ/pYnTk7UDoDTViW4O40AWB+G5ACjY8N4o0ml8=;
 b=kfBd4hN8/rd5CunfVWsBHyUGu934lIihJjr2xPvUscHjdGI7uz7x7s8H3obnE3qQ6S
 FaMBQLiK9Vl7ai9jUCajgINSrL0jqZCWOol8XxKiOEDN+iI8KNN7qPYmSTPN4nTVjnbk
 CuFDLk+4mpY+UdYpvOWNil4BDFEM/abJAN193p6iJj/GmjP4eeqjJ0GZLHgdMF7xj0/l
 WnpP1hXpT3MMfXsOq2MunJMH5AI92M9vA1ziA5X4Y6ILBsdEIUNpBmF23vfaRvSlsc17
 qVJd34K/URqWdP/f2XWZz/ubEufg3UjaNud1lAMyyUQLK0LNIMmRD2kr1sKLmJnnisFW
 APcA==
X-Gm-Message-State: APjAAAXCpiW6S8q/5nmfWKUVx8oFPveC25iuk+40avLwkdYZbi5k5JFk
 Ajuo1yVIoT9rmtmJLKzd1XHlN6WN
X-Google-Smtp-Source: APXvYqyE3UaFtL8YEmyqXfEpC681kGpNxMU269HOeii4G8htso17xtbExvxs7qP+72D4MIS0/usPaA==
X-Received: by 2002:ac2:5691:: with SMTP id 17mr3831985lfr.181.1558817019534; 
 Sat, 25 May 2019 13:43:39 -0700 (PDT)
Received: from saturn.lan (18.158-248-194.customer.lyse.net. [158.248.194.18])
 by smtp.gmail.com with ESMTPSA id
 i187sm1328569lfe.64.2019.05.25.13.43.38
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 25 May 2019 13:43:39 -0700 (PDT)
From: Sam Ravnborg <sam@ravnborg.org>
To: dri-devel@lists.freedesktop.org
Date: Sat, 25 May 2019 22:43:17 +0200
Message-Id: <20190525204319.28977-4-sam@ravnborg.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190525204319.28977-1-sam@ravnborg.org>
References: <20190525204319.28977-1-sam@ravnborg.org>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=wFWlKZ/pYnTk7UDoDTViW4O40AWB+G5ACjY8N4o0ml8=;
 b=Uv2F0ioWGmbe3TaLTDz6JUec9yD16ss6+aVEWM87EC97YTTSbH1XiZMGZSLKOuokd3
 d/DAfvVqke40d01BMS8MLc8a2lmjbbMMoti3z0QwR/FbfC5XQ4qmoTtTxJfSEXmuFGAG
 /l6aLk410atdtvX6B9S05QHJoeQhonz1JYlmuSzCwxQYFC5e+MNmqgpFyYEvz5xwFy0T
 0P4MX+td9wEuT0SrYb9MIyC11iHg3udsiGPV3bqr+D1lcYuZ1LNZyPQwKdiCzHnxMm5F
 PU1N9jQzylp5EyamIbkMTLE89zAgWmOp5fSGxhtQfJ/K3wTgGLH1uH05SiIqy7f3S/re
 X7Sw==
Subject: [Intel-gfx] [PATCH v3 3/5] drm/gma500: make local header files more
 self-contained
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
Cc: David Airlie <airlied@linux.ie>, Daniel Vetter <daniel.vetter@ffwll.ch>,
 intel-gfx@lists.freedesktop.org, Sam Ravnborg <sam@ravnborg.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QWRkIHByb3BlciBmb3J3YXJkIGRlY2xhcmF0aW9ucyB0byBtaW5pbWl6ZSBkZXBlbmRlbmNpZXMg
b24Kb3RoZXIgaGVhZGVyIGZpbGVzLgoKSnVzdCBhZGQgZW5vdWdoIHRoYXQgd2UgY2FuIHNhZmVs
eSBpbmNsdWRlIGFsbCBoZWFkZXIgZmlsZXMgaW4KYWxwaGFiZXRpY2FsbHkgb3JkZXIgaW4gcmVs
ZXZhbnQgZmlsZXMuCgpTaWduZWQtb2ZmLWJ5OiBTYW0gUmF2bmJvcmcgPHNhbUByYXZuYm9yZy5v
cmc+CkFja2VkLWJ5OiBEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGZmd2xsLmNoPgpBY2tl
ZC1ieTogUGF0cmlrIEpha29ic3NvbiA8cGF0cmlrLnIuamFrb2Jzc29uQGdtYWlsLmNvbT4KQ2M6
IERhdmlkIEFpcmxpZSA8YWlybGllZEBsaW51eC5pZT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vZ21h
NTAwL2JsaXR0ZXIuaCAgICAgfCAyICsrCiBkcml2ZXJzL2dwdS9kcm0vZ21hNTAwL2Nkdl9kZXZp
Y2UuaCAgfCA0ICsrKysKIGRyaXZlcnMvZ3B1L2RybS9nbWE1MDAvZ21hX2RldmljZS5oICB8IDEg
KwogZHJpdmVycy9ncHUvZHJtL2dtYTUwMC9nbWFfZGlzcGxheS5oIHwgMyArKysKIGRyaXZlcnMv
Z3B1L2RybS9nbWE1MDAvbWlkX2Jpb3MuaCAgICB8IDEgKwogZHJpdmVycy9ncHUvZHJtL2dtYTUw
MC9vYWt0cmFpbC5oICAgIHwgMiArKwogNiBmaWxlcyBjaGFuZ2VkLCAxMyBpbnNlcnRpb25zKCsp
CgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2dtYTUwMC9ibGl0dGVyLmggYi9kcml2ZXJz
L2dwdS9kcm0vZ21hNTAwL2JsaXR0ZXIuaAppbmRleCBiODM2NDhkZjU5MGQuLjY5NTUxYTJmYzBm
NCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2dtYTUwMC9ibGl0dGVyLmgKKysrIGIvZHJp
dmVycy9ncHUvZHJtL2dtYTUwMC9ibGl0dGVyLmgKQEAgLTE3LDYgKzE3LDggQEAKICNpZm5kZWYg
X19CTElUVEVSX0gKICNkZWZpbmUgX19CTElUVEVSX0gKIAorc3RydWN0IGRybV9wc2JfcHJpdmF0
ZTsKKwogZXh0ZXJuIGludCBnbWFfYmx0X3dhaXRfaWRsZShzdHJ1Y3QgZHJtX3BzYl9wcml2YXRl
ICpkZXZfcHJpdik7CiAKICNlbmRpZgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2dtYTUw
MC9jZHZfZGV2aWNlLmggYi9kcml2ZXJzL2dwdS9kcm0vZ21hNTAwL2Nkdl9kZXZpY2UuaAppbmRl
eCA3MDVjMTFkNDdkNDUuLjE5ZTU0NGJhMjFjYiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2dtYTUwMC9jZHZfZGV2aWNlLmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2dtYTUwMC9jZHZfZGV2
aWNlLmgKQEAgLTE1LDYgKzE1LDEwIEBACiAgKiA1MSBGcmFua2xpbiBTdCAtIEZpZnRoIEZsb29y
LCBCb3N0b24sIE1BIDAyMTEwLTEzMDEgVVNBLgogICovCiAKK3N0cnVjdCBkcm1fY3J0YzsKK3N0
cnVjdCBkcm1fZGV2aWNlOworc3RydWN0IHBzYl9pbnRlbF9tb2RlX2RldmljZTsKKwogZXh0ZXJu
IGNvbnN0IHN0cnVjdCBkcm1fY3J0Y19oZWxwZXJfZnVuY3MgY2R2X2ludGVsX2hlbHBlcl9mdW5j
czsKIGV4dGVybiBjb25zdCBzdHJ1Y3QgZHJtX2NydGNfZnVuY3MgY2R2X2ludGVsX2NydGNfZnVu
Y3M7CiBleHRlcm4gY29uc3Qgc3RydWN0IGdtYV9jbG9ja19mdW5jcyBjZHZfY2xvY2tfZnVuY3M7
CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vZ21hNTAwL2dtYV9kZXZpY2UuaCBiL2RyaXZl
cnMvZ3B1L2RybS9nbWE1MDAvZ21hX2RldmljZS5oCmluZGV4IGUxZGJiMDA3YjgyMC4uOWYwYmI5
MTY1NjJmIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vZ21hNTAwL2dtYV9kZXZpY2UuaAor
KysgYi9kcml2ZXJzL2dwdS9kcm0vZ21hNTAwL2dtYV9kZXZpY2UuaApAQCAtMTUsNiArMTUsNyBA
QAogCiAjaWZuZGVmIF9HTUFfREVWSUNFX0gKICNkZWZpbmUgX0dNQV9ERVZJQ0VfSAorc3RydWN0
IGRybV9kZXZpY2U7CiAKIGV4dGVybiB2b2lkIGdtYV9nZXRfY29yZV9mcmVxKHN0cnVjdCBkcm1f
ZGV2aWNlICpkZXYpOwogCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vZ21hNTAwL2dtYV9k
aXNwbGF5LmggYi9kcml2ZXJzL2dwdS9kcm0vZ21hNTAwL2dtYV9kaXNwbGF5LmgKaW5kZXggMjM5
YzM3NGI2MTY5Li5lOTcwY2I4NjllYTcgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9nbWE1
MDAvZ21hX2Rpc3BsYXkuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vZ21hNTAwL2dtYV9kaXNwbGF5
LmgKQEAgLTI0LDYgKzI0LDkgQEAKIAogI2luY2x1ZGUgPGxpbnV4L3BtX3J1bnRpbWUuaD4KIAor
c3RydWN0IGRybV9lbmNvZGVyOworc3RydWN0IGRybV9tb2RlX3NldDsKKwogc3RydWN0IGdtYV9j
bG9ja190IHsKIAkvKiBnaXZlbiB2YWx1ZXMgKi8KIAlpbnQgbjsKZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9nbWE1MDAvbWlkX2Jpb3MuaCBiL2RyaXZlcnMvZ3B1L2RybS9nbWE1MDAvbWlk
X2Jpb3MuaAppbmRleCAwMGU3ZDU2NGI3ZWIuLjU5ZTQzYTY4YTIxZCAxMDA2NDQKLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2dtYTUwMC9taWRfYmlvcy5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9nbWE1
MDAvbWlkX2Jpb3MuaApAQCAtMTYsNiArMTYsNyBAQAogICogNTEgRnJhbmtsaW4gU3QgLSBGaWZ0
aCBGbG9vciwgQm9zdG9uLCBNQSAwMjExMC0xMzAxIFVTQS4KICAqCiAgKioqKioqKioqKioqKioq
KioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioq
KiovCitzdHJ1Y3QgZHJtX2RldmljZTsKIAogZXh0ZXJuIGludCBtaWRfY2hpcF9zZXR1cChzdHJ1
Y3QgZHJtX2RldmljZSAqZGV2KTsKIApkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2dtYTUw
MC9vYWt0cmFpbC5oIGIvZHJpdmVycy9ncHUvZHJtL2dtYTUwMC9vYWt0cmFpbC5oCmluZGV4IDMw
YWRiYmUyMzAyNC4uZTQxYmNhYjVhNTg1IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vZ21h
NTAwL29ha3RyYWlsLmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2dtYTUwMC9vYWt0cmFpbC5oCkBA
IC0xNyw2ICsxNyw4IEBACiAgKgogICoqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioq
KioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqLwogCitzdHJ1Y3QgcHNiX2lu
dGVsX21vZGVfZGV2aWNlOworCiAvKiBNSUQgZGV2aWNlIHNwZWNpZmljIGRlc2NyaXB0b3JzICov
CiAKIHN0cnVjdCBvYWt0cmFpbF90aW1pbmdfaW5mbyB7Ci0tIAoyLjIwLjEKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
