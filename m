Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E6398390B24
	for <lists+intel-gfx@lfdr.de>; Tue, 25 May 2021 23:18:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D8FEE6EB44;
	Tue, 25 May 2021 21:18:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pg1-x531.google.com (mail-pg1-x531.google.com
 [IPv6:2607:f8b0:4864:20::531])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 212766EB43
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 May 2021 21:18:02 +0000 (UTC)
Received: by mail-pg1-x531.google.com with SMTP id t193so23774900pgb.4
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 May 2021 14:18:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=bfEYaaEsri34UVrh87VwS0D4/LmhE0dmCO8raqQLSuw=;
 b=sIWRMHVcSTGqlQ8A5aUaxSGn7Cp2nYjSQ9mVEnOuUCBxi09XAYbFh7rqdSuQEiLYPI
 8naTIn9vr1+6YFglNQWZFdoWXstVKQR8tcTiCeeqXTvzmYMA1S2iAOW2x4t1a6TZTEYk
 bTuwnhJYGq4uBWbOJl2rewnDFbA4rrl5/M3tmrZ+hPEAIaLZn6XX3ZYeZsB8JcLiECyH
 6BITRi09v3/vVL0lchWxnAD5JL5wOEO3x+e3xTDbR3cf9oIgGqSVBv8eNEecwuUMusHH
 Sqff4lbScgzlD+PNq2/H5n2NHk3wwTi4NsRt7eTwAC5lJPvg1gn2ltfVaJItvlDpk1XK
 jFvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=bfEYaaEsri34UVrh87VwS0D4/LmhE0dmCO8raqQLSuw=;
 b=T7CSRPnh67v+1pDcQTfnIM5cwNJfL41xTNIGP+zVzRAuFsh4KKmUnuxws0wIM5M88K
 QWyQbTMVS8afX4jW5C9zDHBbXMjFw7pqtsxoSr1550l4mJMq2XoEI7KdWU8v7xoPFoNr
 bX5jOrOHTP52+CGIAgOx/c+BtZZjC6KRHcOU+RYx1cAzIkyG0MCnoW5yaBrGBi/YMKbM
 4lyOyEWFmZAyzo/LZGWw4Asd7ApGJn5gJe3sxVw7MNg7g36DVqP4J11II+itTnnnuVPl
 qXEEbJsLn+AnB/Of+//dOGdWtOj5elHqklKBxlV8YnHr/JbKLR5yafUdsuySpJREQR6s
 A0pg==
X-Gm-Message-State: AOAM530UvvkA/ir3C0LruiKxLMGrPJKm9ataOQiefbHwjtxxtC5i5nNx
 ddu8itShfp+jbAuOvW/70EbwdQ==
X-Google-Smtp-Source: ABdhPJxhkdOiX/X3Zg+JCtwbbjuCzzEVQK0zBHufXro4yy8UMrPBITNg9CYq+RtXhLOwgW07SfGvzg==
X-Received: by 2002:a63:4287:: with SMTP id
 p129mr21351106pga.230.1621977481615; 
 Tue, 25 May 2021 14:18:01 -0700 (PDT)
Received: from omlet.lan ([134.134.139.83])
 by smtp.gmail.com with ESMTPSA id e186sm14342278pfa.145.2021.05.25.14.17.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 25 May 2021 14:18:01 -0700 (PDT)
From: Jason Ekstrand <jason@jlekstrand.net>
To: dri-devel@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Date: Tue, 25 May 2021 16:17:47 -0500
Message-Id: <20210525211753.1086069-2-jason@jlekstrand.net>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210525211753.1086069-1-jason@jlekstrand.net>
References: <20210525211753.1086069-1-jason@jlekstrand.net>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/7] dma-buf: Add dma_fence_array_for_each (v2)
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
Cc: =?UTF-8?q?Christian=20K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2tvZW5pZy5sZWljaHR6dW1lcmtlbkBnbWFpbC5jb20+
CgpBZGQgYSBoZWxwZXIgdG8gaXRlcmF0ZSBvdmVyIGFsbCBmZW5jZXMgaW4gYSBkbWFfZmVuY2Vf
YXJyYXkgb2JqZWN0LgoKdjIgKEphc29uIEVrc3RyYW5kKQogLSBSZXR1cm4gTlVMTCBmcm9tIGRt
YV9mZW5jZV9hcnJheV9maXJzdCBpZiBoZWFkID09IE5VTEwuICBUaGlzIG1hdGNoZXMKICAgdGhl
IGl0ZXJhdG9yIGJlaGF2aW9yIG9mIGRtYV9mZW5jZV9jaGFpbl9mb3JfZWFjaCBpbiB0aGF0IGl0
IGl0ZXJhdGVzCiAgIHplcm8gdGltZXMgaWYgaGVhZCA9PSBOVUxMLgogLSBSZXR1cm4gTlVMTCBm
cm9tIGRtYV9mZW5jZV9hcnJheV9uZXh0IGlmIGluZGV4ID4gYXJyYXktPm51bV9mZW5jZXMuCgpT
aWduZWQtb2ZmLWJ5OiBKYXNvbiBFa3N0cmFuZCA8amFzb25Aamxla3N0cmFuZC5uZXQ+ClJldmll
d2VkLWJ5OiBKYXNvbiBFa3N0cmFuZCA8amFzb25Aamxla3N0cmFuZC5uZXQ+ClJldmlld2VkLWJ5
OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+CkNjOiBEYW5pZWwg
VmV0dGVyIDxkYW5pZWwudmV0dGVyQGZmd2xsLmNoPgpDYzogTWFhcnRlbiBMYW5raG9yc3QgPG1h
YXJ0ZW4ubGFua2hvcnN0QGxpbnV4LmludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2RtYS1idWYvZG1h
LWZlbmNlLWFycmF5LmMgfCAyNyArKysrKysrKysrKysrKysrKysrKysrKysrKysKIGluY2x1ZGUv
bGludXgvZG1hLWZlbmNlLWFycmF5LmggICB8IDE3ICsrKysrKysrKysrKysrKysrCiAyIGZpbGVz
IGNoYW5nZWQsIDQ0IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS1idWYv
ZG1hLWZlbmNlLWFycmF5LmMgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLWFycmF5LmMKaW5k
ZXggZDNmYmQ5NTBiZTk0NC4uMmFjMWFmYzY5N2QwZiAxMDA2NDQKLS0tIGEvZHJpdmVycy9kbWEt
YnVmL2RtYS1mZW5jZS1hcnJheS5jCisrKyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UtYXJy
YXkuYwpAQCAtMjAxLDMgKzIwMSwzMCBAQCBib29sIGRtYV9mZW5jZV9tYXRjaF9jb250ZXh0KHN0
cnVjdCBkbWFfZmVuY2UgKmZlbmNlLCB1NjQgY29udGV4dCkKIAlyZXR1cm4gdHJ1ZTsKIH0KIEVY
UE9SVF9TWU1CT0woZG1hX2ZlbmNlX21hdGNoX2NvbnRleHQpOworCitzdHJ1Y3QgZG1hX2ZlbmNl
ICpkbWFfZmVuY2VfYXJyYXlfZmlyc3Qoc3RydWN0IGRtYV9mZW5jZSAqaGVhZCkKK3sKKwlzdHJ1
Y3QgZG1hX2ZlbmNlX2FycmF5ICphcnJheTsKKworCWlmICghaGVhZCkKKwkJcmV0dXJuIE5VTEw7
CisKKwlhcnJheSA9IHRvX2RtYV9mZW5jZV9hcnJheShoZWFkKTsKKwlpZiAoIWFycmF5KQorCQly
ZXR1cm4gaGVhZDsKKworCXJldHVybiBhcnJheS0+ZmVuY2VzWzBdOworfQorRVhQT1JUX1NZTUJP
TChkbWFfZmVuY2VfYXJyYXlfZmlyc3QpOworCitzdHJ1Y3QgZG1hX2ZlbmNlICpkbWFfZmVuY2Vf
YXJyYXlfbmV4dChzdHJ1Y3QgZG1hX2ZlbmNlICpoZWFkLAorCQkJCSAgICAgICB1bnNpZ25lZCBp
bnQgaW5kZXgpCit7CisJc3RydWN0IGRtYV9mZW5jZV9hcnJheSAqYXJyYXkgPSB0b19kbWFfZmVu
Y2VfYXJyYXkoaGVhZCk7CisKKwlpZiAoIWFycmF5IHx8IGluZGV4ID49IGFycmF5LT5udW1fZmVu
Y2VzKQorCQlyZXR1cm4gTlVMTDsKKworCXJldHVybiBhcnJheS0+ZmVuY2VzW2luZGV4XTsKK30K
K0VYUE9SVF9TWU1CT0woZG1hX2ZlbmNlX2FycmF5X25leHQpOwpkaWZmIC0tZ2l0IGEvaW5jbHVk
ZS9saW51eC9kbWEtZmVuY2UtYXJyYXkuaCBiL2luY2x1ZGUvbGludXgvZG1hLWZlbmNlLWFycmF5
LmgKaW5kZXggMzAzZGQ3MTIyMjBmZC4uNTg4YWM4MDg5ZGQ2MSAxMDA2NDQKLS0tIGEvaW5jbHVk
ZS9saW51eC9kbWEtZmVuY2UtYXJyYXkuaAorKysgYi9pbmNsdWRlL2xpbnV4L2RtYS1mZW5jZS1h
cnJheS5oCkBAIC03NCw2ICs3NCwxOSBAQCB0b19kbWFfZmVuY2VfYXJyYXkoc3RydWN0IGRtYV9m
ZW5jZSAqZmVuY2UpCiAJcmV0dXJuIGNvbnRhaW5lcl9vZihmZW5jZSwgc3RydWN0IGRtYV9mZW5j
ZV9hcnJheSwgYmFzZSk7CiB9CiAKKy8qKgorICogZG1hX2ZlbmNlX2FycmF5X2Zvcl9lYWNoIC0g
aXRlcmF0ZSBvdmVyIGFsbCBmZW5jZXMgaW4gYXJyYXkKKyAqIEBmZW5jZTogY3VycmVudCBmZW5j
ZQorICogQGluZGV4OiBpbmRleCBpbnRvIHRoZSBhcnJheQorICogQGhlYWQ6IHBvdGVudGlhbCBk
bWFfZmVuY2VfYXJyYXkgb2JqZWN0CisgKgorICogVGVzdCBpZiBAYXJyYXkgaXMgYSBkbWFfZmVu
Y2VfYXJyYXkgb2JqZWN0IGFuZCBpZiB5ZXMgaXRlcmF0ZSBvdmVyIGFsbCBmZW5jZXMKKyAqIGlu
IHRoZSBhcnJheS4gSWYgbm90IGp1c3QgaXRlcmF0ZSBvdmVyIHRoZSBmZW5jZSBpbiBAYXJyYXkg
aXRzZWxmLgorICovCisjZGVmaW5lIGRtYV9mZW5jZV9hcnJheV9mb3JfZWFjaChmZW5jZSwgaW5k
ZXgsIGhlYWQpCQkJXAorCWZvciAoaW5kZXggPSAwLCBmZW5jZSA9IGRtYV9mZW5jZV9hcnJheV9m
aXJzdChoZWFkKTsgZmVuY2U7CVwKKwkgICAgICsrKGluZGV4KSwgZmVuY2UgPSBkbWFfZmVuY2Vf
YXJyYXlfbmV4dChoZWFkLCBpbmRleCkpCisKIHN0cnVjdCBkbWFfZmVuY2VfYXJyYXkgKmRtYV9m
ZW5jZV9hcnJheV9jcmVhdGUoaW50IG51bV9mZW5jZXMsCiAJCQkJCSAgICAgICBzdHJ1Y3QgZG1h
X2ZlbmNlICoqZmVuY2VzLAogCQkJCQkgICAgICAgdTY0IGNvbnRleHQsIHVuc2lnbmVkIHNlcW5v
LApAQCAtODEsNCArOTQsOCBAQCBzdHJ1Y3QgZG1hX2ZlbmNlX2FycmF5ICpkbWFfZmVuY2VfYXJy
YXlfY3JlYXRlKGludCBudW1fZmVuY2VzLAogCiBib29sIGRtYV9mZW5jZV9tYXRjaF9jb250ZXh0
KHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlLCB1NjQgY29udGV4dCk7CiAKK3N0cnVjdCBkbWFfZmVu
Y2UgKmRtYV9mZW5jZV9hcnJheV9maXJzdChzdHJ1Y3QgZG1hX2ZlbmNlICpoZWFkKTsKK3N0cnVj
dCBkbWFfZmVuY2UgKmRtYV9mZW5jZV9hcnJheV9uZXh0KHN0cnVjdCBkbWFfZmVuY2UgKmhlYWQs
CisJCQkJICAgICAgIHVuc2lnbmVkIGludCBpbmRleCk7CisKICNlbmRpZiAvKiBfX0xJTlVYX0RN
QV9GRU5DRV9BUlJBWV9IICovCi0tIAoyLjMxLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeAo=
