Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4387B3C649C
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Jul 2021 22:02:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E02889E33;
	Mon, 12 Jul 2021 20:02:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com
 [IPv6:2a00:1450:4864:20::336])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6B94C89DFB
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Jul 2021 20:02:09 +0000 (UTC)
Received: by mail-wm1-x336.google.com with SMTP id j34so12160987wms.5
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Jul 2021 13:02:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=hjNW4u1I0U0Q7toaCUK63SQ1n8cRfb0yAV1MC4gWi04=;
 b=Ub7acTvz5it9wh6mlGrQ2Gm7/AkOnHSs6P2CCkOJ4fAdTIRHb/jClr9cDK9Hbm+7lI
 BOUiAddhMBLH0lSEX9OpVE3C2xL+hyYRZ9K0DxYPF9XGdB1pGzhC1G5OsjYUAKaMtlN2
 7BKON3hkJ2xfA/syt+M+PNno5TItfM4Uv+rlE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=hjNW4u1I0U0Q7toaCUK63SQ1n8cRfb0yAV1MC4gWi04=;
 b=GV0bc6RwzNT0WMvG2rs/WvmbNAmjXkKPdZEF3CkcGTZE+oV7ma8iAT9xAQqGmc2xhR
 wqbsTar/Hm3C9J3O3g7XFIeJ9IxAJH0qFy7/CmUYcp/KX5GKOpfzZE1/sNBqnai/TZ9Y
 tNmON8qYnwaXiBP12kmpZFNgR5yVAk1myqveKhZhGdnnUyay9UM06xve1tGI/y1Ly1RK
 LVV33J9TpyFo7nTsLQjE2eVRR+dHftwpq82HzMNbf48m8wBmS3uAgN1IRgwXzqW5umAC
 OU1XLBx4555c8wU0rF5TD6ezN6WgG+txhoWL3UqIGvjHOUKkEd5HcOz6J2WK5FJOu9Xo
 Pi5w==
X-Gm-Message-State: AOAM530O/X7YVyTLhG2ScdC8D7JW6kYFrJymG4uiRAvtSWkZYgN2Lwsw
 IGK9mltfGOqDiB0f2fll1mE04Q==
X-Google-Smtp-Source: ABdhPJwnxB9OHXzfE85elbmE2zi9ZFwYEKSux5tXKEpW2O5RpE0G1yT7ybgUD8r75v+T+r9w/QJIsg==
X-Received: by 2002:a05:600c:4101:: with SMTP id
 j1mr963258wmi.130.1626120128102; 
 Mon, 12 Jul 2021 13:02:08 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id l14sm9858221wrs.22.2021.07.12.13.02.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 12 Jul 2021 13:02:07 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Mon, 12 Jul 2021 19:53:44 +0200
Message-Id: <20210712175352.802687-11-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210712175352.802687-1-daniel.vetter@ffwll.ch>
References: <20210712175352.802687-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4 10/18] drm/etnaviv: Use scheduler dependency
 handling
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 etnaviv@lists.freedesktop.org,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 linaro-mm-sig@lists.linaro.org,
 Christian Gmeiner <christian.gmeiner@gmail.com>,
 Russell King <linux+etnaviv@armlinux.org.uk>,
 Daniel Vetter <daniel.vetter@intel.com>, linux-media@vger.kernel.org,
 Sumit Semwal <sumit.semwal@linaro.org>, Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

V2UgbmVlZCB0byBwdWxsIHRoZSBkcm1fc2NoZWRfam9iX2luaXQgbXVjaCBlYXJsaWVyLCBidXQg
dGhhdCdzIHZlcnkKbWlub3Igc3VyZ2VyeS4KCnYyOiBBY3R1YWxseSBmaXggdXAgY2xlYW51cCBw
YXRocyBieSBjYWxsaW5nIGRybV9zY2hlZF9qb2JfaW5pdCwgd2hpY2gKSSB3YW50ZWQgdG8gdG8g
aW4gdGhlIHByZXZpb3VzIHJvdW5kIChhbmQgZGlkLCBmb3IgYWxsIG90aGVyIGRyaXZlcnMpLgpT
cG90dGVkIGJ5IEx1Y2FzLgoKU2lnbmVkLW9mZi1ieTogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZl
dHRlckBpbnRlbC5jb20+CkNjOiBMdWNhcyBTdGFjaCA8bC5zdGFjaEBwZW5ndXRyb25peC5kZT4K
Q2M6IFJ1c3NlbGwgS2luZyA8bGludXgrZXRuYXZpdkBhcm1saW51eC5vcmcudWs+CkNjOiBDaHJp
c3RpYW4gR21laW5lciA8Y2hyaXN0aWFuLmdtZWluZXJAZ21haWwuY29tPgpDYzogU3VtaXQgU2Vt
d2FsIDxzdW1pdC5zZW13YWxAbGluYXJvLm9yZz4KQ2M6ICJDaHJpc3RpYW4gS8O2bmlnIiA8Y2hy
aXN0aWFuLmtvZW5pZ0BhbWQuY29tPgpDYzogZXRuYXZpdkBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
Q2M6IGxpbnV4LW1lZGlhQHZnZXIua2VybmVsLm9yZwpDYzogbGluYXJvLW1tLXNpZ0BsaXN0cy5s
aW5hcm8ub3JnCi0tLQogZHJpdmVycy9ncHUvZHJtL2V0bmF2aXYvZXRuYXZpdl9nZW0uaCAgICAg
ICAgfCAgNSArLQogZHJpdmVycy9ncHUvZHJtL2V0bmF2aXYvZXRuYXZpdl9nZW1fc3VibWl0LmMg
fCA1OCArKysrKysrKystLS0tLS0tLS0KIGRyaXZlcnMvZ3B1L2RybS9ldG5hdml2L2V0bmF2aXZf
c2NoZWQuYyAgICAgIHwgNjMgKy0tLS0tLS0tLS0tLS0tLS0tLS0KIGRyaXZlcnMvZ3B1L2RybS9l
dG5hdml2L2V0bmF2aXZfc2NoZWQuaCAgICAgIHwgIDMgKy0KIDQgZmlsZXMgY2hhbmdlZCwgMzUg
aW5zZXJ0aW9ucygrKSwgOTQgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2V0bmF2aXYvZXRuYXZpdl9nZW0uaCBiL2RyaXZlcnMvZ3B1L2RybS9ldG5hdml2L2V0bmF2
aXZfZ2VtLmgKaW5kZXggOThlNjBkZjg4MmI2Li42MzY4OGU2ZTQ1ODAgMTAwNjQ0Ci0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9ldG5hdml2L2V0bmF2aXZfZ2VtLmgKKysrIGIvZHJpdmVycy9ncHUvZHJt
L2V0bmF2aXYvZXRuYXZpdl9nZW0uaApAQCAtODAsOSArODAsNiBAQCBzdHJ1Y3QgZXRuYXZpdl9n
ZW1fc3VibWl0X2JvIHsKIAl1NjQgdmE7CiAJc3RydWN0IGV0bmF2aXZfZ2VtX29iamVjdCAqb2Jq
OwogCXN0cnVjdCBldG5hdml2X3ZyYW1fbWFwcGluZyAqbWFwcGluZzsKLQlzdHJ1Y3QgZG1hX2Zl
bmNlICpleGNsOwotCXVuc2lnbmVkIGludCBucl9zaGFyZWQ7Ci0Jc3RydWN0IGRtYV9mZW5jZSAq
KnNoYXJlZDsKIH07CiAKIC8qIENyZWF0ZWQgcGVyIHN1Ym1pdC1pb2N0bCwgdG8gdHJhY2sgYm8n
cyBhbmQgY21kc3RyZWFtIGJ1ZnMsIGV0YywKQEAgLTk1LDcgKzkyLDcgQEAgc3RydWN0IGV0bmF2
aXZfZ2VtX3N1Ym1pdCB7CiAJc3RydWN0IGV0bmF2aXZfZmlsZV9wcml2YXRlICpjdHg7CiAJc3Ry
dWN0IGV0bmF2aXZfZ3B1ICpncHU7CiAJc3RydWN0IGV0bmF2aXZfaW9tbXVfY29udGV4dCAqbW11
X2NvbnRleHQsICpwcmV2X21tdV9jb250ZXh0OwotCXN0cnVjdCBkbWFfZmVuY2UgKm91dF9mZW5j
ZSwgKmluX2ZlbmNlOworCXN0cnVjdCBkbWFfZmVuY2UgKm91dF9mZW5jZTsKIAlpbnQgb3V0X2Zl
bmNlX2lkOwogCXN0cnVjdCBsaXN0X2hlYWQgbm9kZTsgLyogR1BVIGFjdGl2ZSBzdWJtaXQgbGlz
dCAqLwogCXN0cnVjdCBldG5hdml2X2NtZGJ1ZiBjbWRidWY7CmRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vZXRuYXZpdi9ldG5hdml2X2dlbV9zdWJtaXQuYyBiL2RyaXZlcnMvZ3B1L2RybS9l
dG5hdml2L2V0bmF2aXZfZ2VtX3N1Ym1pdC5jCmluZGV4IDRkZDdkOWQ1NDFjMC4uNWI5N2NlMTI5
OWFkIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vZXRuYXZpdi9ldG5hdml2X2dlbV9zdWJt
aXQuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vZXRuYXZpdi9ldG5hdml2X2dlbV9zdWJtaXQuYwpA
QCAtMTg4LDE2ICsxODgsMTAgQEAgc3RhdGljIGludCBzdWJtaXRfZmVuY2Vfc3luYyhzdHJ1Y3Qg
ZXRuYXZpdl9nZW1fc3VibWl0ICpzdWJtaXQpCiAJCWlmIChzdWJtaXQtPmZsYWdzICYgRVROQV9T
VUJNSVRfTk9fSU1QTElDSVQpCiAJCQljb250aW51ZTsKIAotCQlpZiAoYm8tPmZsYWdzICYgRVRO
QV9TVUJNSVRfQk9fV1JJVEUpIHsKLQkJCXJldCA9IGRtYV9yZXN2X2dldF9mZW5jZXMocm9iaiwg
JmJvLT5leGNsLAotCQkJCQkJICAmYm8tPm5yX3NoYXJlZCwKLQkJCQkJCSAgJmJvLT5zaGFyZWQp
OwotCQkJaWYgKHJldCkKLQkJCQlyZXR1cm4gcmV0OwotCQl9IGVsc2UgewotCQkJYm8tPmV4Y2wg
PSBkbWFfcmVzdl9nZXRfZXhjbF91bmxvY2tlZChyb2JqKTsKLQkJfQotCisJCXJldCA9IGRybV9z
Y2hlZF9qb2JfYXdhaXRfaW1wbGljaXQoJnN1Ym1pdC0+c2NoZWRfam9iLCAmYm8tPm9iai0+YmFz
ZSwKKwkJCQkJCSAgIGJvLT5mbGFncyAmIEVUTkFfU1VCTUlUX0JPX1dSSVRFKTsKKwkJaWYgKHJl
dCkKKwkJCXJldHVybiByZXQ7CiAJfQogCiAJcmV0dXJuIHJldDsKQEAgLTQwMyw4ICszOTcsNiBA
QCBzdGF0aWMgdm9pZCBzdWJtaXRfY2xlYW51cChzdHJ1Y3Qga3JlZiAqa3JlZikKIAogCXdha2Vf
dXBfYWxsKCZzdWJtaXQtPmdwdS0+ZmVuY2VfZXZlbnQpOwogCi0JaWYgKHN1Ym1pdC0+aW5fZmVu
Y2UpCi0JCWRtYV9mZW5jZV9wdXQoc3VibWl0LT5pbl9mZW5jZSk7CiAJaWYgKHN1Ym1pdC0+b3V0
X2ZlbmNlKSB7CiAJCS8qIGZpcnN0IHJlbW92ZSBmcm9tIElEUiwgc28gZmVuY2UgY2FuIG5vdCBi
ZSBmb3VuZCBhbnltb3JlICovCiAJCW11dGV4X2xvY2soJnN1Ym1pdC0+Z3B1LT5mZW5jZV9sb2Nr
KTsKQEAgLTUyOSw3ICs1MjEsNyBAQCBpbnQgZXRuYXZpdl9pb2N0bF9nZW1fc3VibWl0KHN0cnVj
dCBkcm1fZGV2aWNlICpkZXYsIHZvaWQgKmRhdGEsCiAJcmV0ID0gZXRuYXZpdl9jbWRidWZfaW5p
dChwcml2LT5jbWRidWZfc3ViYWxsb2MsICZzdWJtaXQtPmNtZGJ1ZiwKIAkJCQkgIEFMSUdOKGFy
Z3MtPnN0cmVhbV9zaXplLCA4KSArIDgpOwogCWlmIChyZXQpCi0JCWdvdG8gZXJyX3N1Ym1pdF9v
YmplY3RzOworCQlnb3RvIGVycl9zdWJtaXRfcHV0OwogCiAJc3VibWl0LT5jdHggPSBmaWxlLT5k
cml2ZXJfcHJpdjsKIAlldG5hdml2X2lvbW11X2NvbnRleHRfZ2V0KHN1Ym1pdC0+Y3R4LT5tbXUp
OwpAQCAtNTM3LDUxICs1MjksNjEgQEAgaW50IGV0bmF2aXZfaW9jdGxfZ2VtX3N1Ym1pdChzdHJ1
Y3QgZHJtX2RldmljZSAqZGV2LCB2b2lkICpkYXRhLAogCXN1Ym1pdC0+ZXhlY19zdGF0ZSA9IGFy
Z3MtPmV4ZWNfc3RhdGU7CiAJc3VibWl0LT5mbGFncyA9IGFyZ3MtPmZsYWdzOwogCisJcmV0ID0g
ZHJtX3NjaGVkX2pvYl9pbml0KCZzdWJtaXQtPnNjaGVkX2pvYiwKKwkJCQkgJmN0eC0+c2NoZWRf
ZW50aXR5W2FyZ3MtPnBpcGVdLAorCQkJCSBzdWJtaXQtPmN0eCk7CisJaWYgKHJldCkKKwkJZ290
byBlcnJfc3VibWl0X3B1dDsKKwogCXJldCA9IHN1Ym1pdF9sb29rdXBfb2JqZWN0cyhzdWJtaXQs
IGZpbGUsIGJvcywgYXJncy0+bnJfYm9zKTsKIAlpZiAocmV0KQotCQlnb3RvIGVycl9zdWJtaXRf
b2JqZWN0czsKKwkJZ290byBlcnJfc3VibWl0X2pvYjsKIAogCWlmICgocHJpdi0+bW11X2dsb2Jh
bC0+dmVyc2lvbiAhPSBFVE5BVklWX0lPTU1VX1YyKSAmJgogCSAgICAhZXRuYXZpdl9jbWRfdmFs
aWRhdGVfb25lKGdwdSwgc3RyZWFtLCBhcmdzLT5zdHJlYW1fc2l6ZSAvIDQsCiAJCQkJICAgICAg
cmVsb2NzLCBhcmdzLT5ucl9yZWxvY3MpKSB7CiAJCXJldCA9IC1FSU5WQUw7Ci0JCWdvdG8gZXJy
X3N1Ym1pdF9vYmplY3RzOworCQlnb3RvIGVycl9zdWJtaXRfam9iOwogCX0KIAogCWlmIChhcmdz
LT5mbGFncyAmIEVUTkFfU1VCTUlUX0ZFTkNFX0ZEX0lOKSB7Ci0JCXN1Ym1pdC0+aW5fZmVuY2Ug
PSBzeW5jX2ZpbGVfZ2V0X2ZlbmNlKGFyZ3MtPmZlbmNlX2ZkKTsKLQkJaWYgKCFzdWJtaXQtPmlu
X2ZlbmNlKSB7CisJCXN0cnVjdCBkbWFfZmVuY2UgKmluX2ZlbmNlID0gc3luY19maWxlX2dldF9m
ZW5jZShhcmdzLT5mZW5jZV9mZCk7CisJCWlmICghaW5fZmVuY2UpIHsKIAkJCXJldCA9IC1FSU5W
QUw7Ci0JCQlnb3RvIGVycl9zdWJtaXRfb2JqZWN0czsKKwkJCWdvdG8gZXJyX3N1Ym1pdF9qb2I7
CiAJCX0KKworCQlyZXQgPSBkcm1fc2NoZWRfam9iX2F3YWl0X2ZlbmNlKCZzdWJtaXQtPnNjaGVk
X2pvYiwgaW5fZmVuY2UpOworCQlpZiAocmV0KQorCQkJZ290byBlcnJfc3VibWl0X2pvYjsKIAl9
CiAKIAlyZXQgPSBzdWJtaXRfcGluX29iamVjdHMoc3VibWl0KTsKIAlpZiAocmV0KQotCQlnb3Rv
IGVycl9zdWJtaXRfb2JqZWN0czsKKwkJZ290byBlcnJfc3VibWl0X2pvYjsKIAogCXJldCA9IHN1
Ym1pdF9yZWxvYyhzdWJtaXQsIHN0cmVhbSwgYXJncy0+c3RyZWFtX3NpemUgLyA0LAogCQkJICAg
cmVsb2NzLCBhcmdzLT5ucl9yZWxvY3MpOwogCWlmIChyZXQpCi0JCWdvdG8gZXJyX3N1Ym1pdF9v
YmplY3RzOworCQlnb3RvIGVycl9zdWJtaXRfam9iOwogCiAJcmV0ID0gc3VibWl0X3BlcmZtb25f
dmFsaWRhdGUoc3VibWl0LCBhcmdzLT5leGVjX3N0YXRlLCBwbXJzKTsKIAlpZiAocmV0KQotCQln
b3RvIGVycl9zdWJtaXRfb2JqZWN0czsKKwkJZ290byBlcnJfc3VibWl0X2pvYjsKIAogCW1lbWNw
eShzdWJtaXQtPmNtZGJ1Zi52YWRkciwgc3RyZWFtLCBhcmdzLT5zdHJlYW1fc2l6ZSk7CiAKIAly
ZXQgPSBzdWJtaXRfbG9ja19vYmplY3RzKHN1Ym1pdCwgJnRpY2tldCk7CiAJaWYgKHJldCkKLQkJ
Z290byBlcnJfc3VibWl0X29iamVjdHM7CisJCWdvdG8gZXJyX3N1Ym1pdF9qb2I7CiAKIAlyZXQg
PSBzdWJtaXRfZmVuY2Vfc3luYyhzdWJtaXQpOwogCWlmIChyZXQpCi0JCWdvdG8gZXJyX3N1Ym1p
dF9vYmplY3RzOworCQlnb3RvIGVycl9zdWJtaXRfam9iOwogCi0JcmV0ID0gZXRuYXZpdl9zY2hl
ZF9wdXNoX2pvYigmY3R4LT5zY2hlZF9lbnRpdHlbYXJncy0+cGlwZV0sIHN1Ym1pdCk7CisJcmV0
ID0gZXRuYXZpdl9zY2hlZF9wdXNoX2pvYihzdWJtaXQpOwogCWlmIChyZXQpCi0JCWdvdG8gZXJy
X3N1Ym1pdF9vYmplY3RzOworCQlnb3RvIGVycl9zdWJtaXRfam9iOwogCiAJc3VibWl0X2F0dGFj
aF9vYmplY3RfZmVuY2VzKHN1Ym1pdCk7CiAKQEAgLTU5NSw3ICs1OTcsNyBAQCBpbnQgZXRuYXZp
dl9pb2N0bF9nZW1fc3VibWl0KHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsIHZvaWQgKmRhdGEsCiAJ
CXN5bmNfZmlsZSA9IHN5bmNfZmlsZV9jcmVhdGUoc3VibWl0LT5vdXRfZmVuY2UpOwogCQlpZiAo
IXN5bmNfZmlsZSkgewogCQkJcmV0ID0gLUVOT01FTTsKLQkJCWdvdG8gZXJyX3N1Ym1pdF9vYmpl
Y3RzOworCQkJZ290byBlcnJfc3VibWl0X2pvYjsKIAkJfQogCQlmZF9pbnN0YWxsKG91dF9mZW5j
ZV9mZCwgc3luY19maWxlLT5maWxlKTsKIAl9CkBAIC02MDMsNyArNjA1LDkgQEAgaW50IGV0bmF2
aXZfaW9jdGxfZ2VtX3N1Ym1pdChzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LCB2b2lkICpkYXRhLAog
CWFyZ3MtPmZlbmNlX2ZkID0gb3V0X2ZlbmNlX2ZkOwogCWFyZ3MtPmZlbmNlID0gc3VibWl0LT5v
dXRfZmVuY2VfaWQ7CiAKLWVycl9zdWJtaXRfb2JqZWN0czoKK2Vycl9zdWJtaXRfam9iOgorCWRy
bV9zY2hlZF9qb2JfY2xlYW51cCgmc3VibWl0LT5zY2hlZF9qb2IpOworZXJyX3N1Ym1pdF9wdXQ6
CiAJZXRuYXZpdl9zdWJtaXRfcHV0KHN1Ym1pdCk7CiAKIGVycl9zdWJtaXRfd3dfYWNxdWlyZToK
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9ldG5hdml2L2V0bmF2aXZfc2NoZWQuYyBiL2Ry
aXZlcnMvZ3B1L2RybS9ldG5hdml2L2V0bmF2aXZfc2NoZWQuYwppbmRleCAxODBiYjYzM2Q1YzUu
LjJiYmJkNmNjYzk1ZSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2V0bmF2aXYvZXRuYXZp
dl9zY2hlZC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9ldG5hdml2L2V0bmF2aXZfc2NoZWQuYwpA
QCAtMTcsNTggKzE3LDYgQEAgbW9kdWxlX3BhcmFtX25hbWVkKGpvYl9oYW5nX2xpbWl0LCBldG5h
dml2X2pvYl9oYW5nX2xpbWl0LCBpbnQgLCAwNDQ0KTsKIHN0YXRpYyBpbnQgZXRuYXZpdl9od19q
b2JzX2xpbWl0ID0gNDsKIG1vZHVsZV9wYXJhbV9uYW1lZChod19qb2JfbGltaXQsIGV0bmF2aXZf
aHdfam9ic19saW1pdCwgaW50ICwgMDQ0NCk7CiAKLXN0YXRpYyBzdHJ1Y3QgZG1hX2ZlbmNlICoK
LWV0bmF2aXZfc2NoZWRfZGVwZW5kZW5jeShzdHJ1Y3QgZHJtX3NjaGVkX2pvYiAqc2NoZWRfam9i
LAotCQkJIHN0cnVjdCBkcm1fc2NoZWRfZW50aXR5ICplbnRpdHkpCi17Ci0Jc3RydWN0IGV0bmF2
aXZfZ2VtX3N1Ym1pdCAqc3VibWl0ID0gdG9fZXRuYXZpdl9zdWJtaXQoc2NoZWRfam9iKTsKLQlz
dHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZTsKLQlpbnQgaTsKLQotCWlmICh1bmxpa2VseShzdWJtaXQt
PmluX2ZlbmNlKSkgewotCQlmZW5jZSA9IHN1Ym1pdC0+aW5fZmVuY2U7Ci0JCXN1Ym1pdC0+aW5f
ZmVuY2UgPSBOVUxMOwotCi0JCWlmICghZG1hX2ZlbmNlX2lzX3NpZ25hbGVkKGZlbmNlKSkKLQkJ
CXJldHVybiBmZW5jZTsKLQotCQlkbWFfZmVuY2VfcHV0KGZlbmNlKTsKLQl9Ci0KLQlmb3IgKGkg
PSAwOyBpIDwgc3VibWl0LT5ucl9ib3M7IGkrKykgewotCQlzdHJ1Y3QgZXRuYXZpdl9nZW1fc3Vi
bWl0X2JvICpibyA9ICZzdWJtaXQtPmJvc1tpXTsKLQkJaW50IGo7Ci0KLQkJaWYgKGJvLT5leGNs
KSB7Ci0JCQlmZW5jZSA9IGJvLT5leGNsOwotCQkJYm8tPmV4Y2wgPSBOVUxMOwotCi0JCQlpZiAo
IWRtYV9mZW5jZV9pc19zaWduYWxlZChmZW5jZSkpCi0JCQkJcmV0dXJuIGZlbmNlOwotCi0JCQlk
bWFfZmVuY2VfcHV0KGZlbmNlKTsKLQkJfQotCi0JCWZvciAoaiA9IDA7IGogPCBiby0+bnJfc2hh
cmVkOyBqKyspIHsKLQkJCWlmICghYm8tPnNoYXJlZFtqXSkKLQkJCQljb250aW51ZTsKLQotCQkJ
ZmVuY2UgPSBiby0+c2hhcmVkW2pdOwotCQkJYm8tPnNoYXJlZFtqXSA9IE5VTEw7Ci0KLQkJCWlm
ICghZG1hX2ZlbmNlX2lzX3NpZ25hbGVkKGZlbmNlKSkKLQkJCQlyZXR1cm4gZmVuY2U7Ci0KLQkJ
CWRtYV9mZW5jZV9wdXQoZmVuY2UpOwotCQl9Ci0JCWtmcmVlKGJvLT5zaGFyZWQpOwotCQliby0+
bnJfc2hhcmVkID0gMDsKLQkJYm8tPnNoYXJlZCA9IE5VTEw7Ci0JfQotCi0JcmV0dXJuIE5VTEw7
Ci19Ci0KIHN0YXRpYyBzdHJ1Y3QgZG1hX2ZlbmNlICpldG5hdml2X3NjaGVkX3J1bl9qb2Ioc3Ry
dWN0IGRybV9zY2hlZF9qb2IgKnNjaGVkX2pvYikKIHsKIAlzdHJ1Y3QgZXRuYXZpdl9nZW1fc3Vi
bWl0ICpzdWJtaXQgPSB0b19ldG5hdml2X3N1Ym1pdChzY2hlZF9qb2IpOwpAQCAtMTQwLDI5ICs4
OCwyMiBAQCBzdGF0aWMgdm9pZCBldG5hdml2X3NjaGVkX2ZyZWVfam9iKHN0cnVjdCBkcm1fc2No
ZWRfam9iICpzY2hlZF9qb2IpCiB9CiAKIHN0YXRpYyBjb25zdCBzdHJ1Y3QgZHJtX3NjaGVkX2Jh
Y2tlbmRfb3BzIGV0bmF2aXZfc2NoZWRfb3BzID0gewotCS5kZXBlbmRlbmN5ID0gZXRuYXZpdl9z
Y2hlZF9kZXBlbmRlbmN5LAogCS5ydW5fam9iID0gZXRuYXZpdl9zY2hlZF9ydW5fam9iLAogCS50
aW1lZG91dF9qb2IgPSBldG5hdml2X3NjaGVkX3RpbWVkb3V0X2pvYiwKIAkuZnJlZV9qb2IgPSBl
dG5hdml2X3NjaGVkX2ZyZWVfam9iLAogfTsKIAotaW50IGV0bmF2aXZfc2NoZWRfcHVzaF9qb2Io
c3RydWN0IGRybV9zY2hlZF9lbnRpdHkgKnNjaGVkX2VudGl0eSwKLQkJCSAgIHN0cnVjdCBldG5h
dml2X2dlbV9zdWJtaXQgKnN1Ym1pdCkKK2ludCBldG5hdml2X3NjaGVkX3B1c2hfam9iKHN0cnVj
dCBldG5hdml2X2dlbV9zdWJtaXQgKnN1Ym1pdCkKIHsKIAlpbnQgcmV0ID0gMDsKIAogCS8qCiAJ
ICogSG9sZCB0aGUgZmVuY2UgbG9jayBhY3Jvc3MgdGhlIHdob2xlIG9wZXJhdGlvbiB0byBhdm9p
ZCBqb2JzIGJlaW5nCiAJICogcHVzaGVkIG91dCBvZiBvcmRlciB3aXRoIHJlZ2FyZCB0byB0aGVp
ciBzY2hlZCBmZW5jZSBzZXFub3MgYXMKLQkgKiBhbGxvY2F0ZWQgaW4gZHJtX3NjaGVkX2pvYl9p
bml0LgorCSAqIGFsbG9jYXRlZCBpbiBkcm1fc2NoZWRfam9iX2FybS4KIAkgKi8KIAltdXRleF9s
b2NrKCZzdWJtaXQtPmdwdS0+ZmVuY2VfbG9jayk7CiAKLQlyZXQgPSBkcm1fc2NoZWRfam9iX2lu
aXQoJnN1Ym1pdC0+c2NoZWRfam9iLCBzY2hlZF9lbnRpdHksCi0JCQkJIHN1Ym1pdC0+Y3R4KTsK
LQlpZiAocmV0KQotCQlnb3RvIG91dF91bmxvY2s7Ci0KIAlkcm1fc2NoZWRfam9iX2FybSgmc3Vi
bWl0LT5zY2hlZF9qb2IpOwogCiAJc3VibWl0LT5vdXRfZmVuY2UgPSBkbWFfZmVuY2VfZ2V0KCZz
dWJtaXQtPnNjaGVkX2pvYi5zX2ZlbmNlLT5maW5pc2hlZCk7CmRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vZXRuYXZpdi9ldG5hdml2X3NjaGVkLmggYi9kcml2ZXJzL2dwdS9kcm0vZXRuYXZp
di9ldG5hdml2X3NjaGVkLmgKaW5kZXggYzBhNjc5NmUyMmM5Li5iYWViZmEwNjlhZmMgMTAwNjQ0
Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9ldG5hdml2L2V0bmF2aXZfc2NoZWQuaAorKysgYi9kcml2
ZXJzL2dwdS9kcm0vZXRuYXZpdi9ldG5hdml2X3NjaGVkLmgKQEAgLTE4LDcgKzE4LDYgQEAgc3Ry
dWN0IGV0bmF2aXZfZ2VtX3N1Ym1pdCAqdG9fZXRuYXZpdl9zdWJtaXQoc3RydWN0IGRybV9zY2hl
ZF9qb2IgKnNjaGVkX2pvYikKIAogaW50IGV0bmF2aXZfc2NoZWRfaW5pdChzdHJ1Y3QgZXRuYXZp
dl9ncHUgKmdwdSk7CiB2b2lkIGV0bmF2aXZfc2NoZWRfZmluaShzdHJ1Y3QgZXRuYXZpdl9ncHUg
KmdwdSk7Ci1pbnQgZXRuYXZpdl9zY2hlZF9wdXNoX2pvYihzdHJ1Y3QgZHJtX3NjaGVkX2VudGl0
eSAqc2NoZWRfZW50aXR5LAotCQkJICAgc3RydWN0IGV0bmF2aXZfZ2VtX3N1Ym1pdCAqc3VibWl0
KTsKK2ludCBldG5hdml2X3NjaGVkX3B1c2hfam9iKHN0cnVjdCBldG5hdml2X2dlbV9zdWJtaXQg
KnN1Ym1pdCk7CiAKICNlbmRpZiAvKiBfX0VUTkFWSVZfU0NIRURfSF9fICovCi0tIAoyLjMyLjAK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
