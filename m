Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AC46949FD8
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jun 2019 13:55:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8B5A06E15C;
	Tue, 18 Jun 2019 11:55:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com
 [IPv6:2a00:1450:4864:20::344])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 081706E155;
 Tue, 18 Jun 2019 11:55:02 +0000 (UTC)
Received: by mail-wm1-x344.google.com with SMTP id g135so2915123wme.4;
 Tue, 18 Jun 2019 04:55:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=BGfE2zDzjX3BRsbuqOGKb/bpEQDhKlPF7vnXXDvgihE=;
 b=J0NyT+n1w/1IIELImJx+ughJZ8uAt4nA6CwlrgYkVxpyiwOtc3vyBBmtjc2QaP6TPE
 RI8fBvdVpNDNTtB9+36/NHxwkESXEZ5Zzv4Ru6ld1GtqTxh7P5YZhEqNmAVJdz/iS5Kn
 UmlSkYdExCajXx5wQofOuEM3Jv1kWJzsPilYDbO6pmLHn0tR9POdpeJbTU/6dev95XtO
 t7igzUDMXXDsO7I5pDZHnbA1tV+/33eSOCPPpKk2ZE86yB40jLYhhg+nYWdZPSvspPcZ
 +YrlkHuqGk/Ik8DfenkZdcdq4hVFFtap21fVMrd+t4A0g6ZhduWBY3XNPOAUGD24ZbdM
 SC/w==
X-Gm-Message-State: APjAAAXmlf9zwKnen3mx5U0sErMYBn5i347aA+JfYht3lk2gvc8ptQWM
 uMAyINzH9XrcEim0L7lsBAt5zv8o
X-Google-Smtp-Source: APXvYqykYQCo7hs6zznedlL4DwOf+GoQWbwbL/ErgfXOlJIfjUfSpm4uncu8W1JRBV3yVDMnIwTDMg==
X-Received: by 2002:a1c:f712:: with SMTP id v18mr3513983wmh.143.1560858899898; 
 Tue, 18 Jun 2019 04:54:59 -0700 (PDT)
Received: from abel.fritz.box ([2a02:908:1252:fb60:88da:f390:6b90:ca6c])
 by smtp.gmail.com with ESMTPSA id l19sm1441963wmj.33.2019.06.18.04.54.59
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 18 Jun 2019 04:54:59 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 amd-gfx@lists.freedesktop.org
Date: Tue, 18 Jun 2019 13:54:54 +0200
Message-Id: <20190618115455.1253-5-christian.koenig@amd.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190618115455.1253-1-christian.koenig@amd.com>
References: <20190618115455.1253-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=BGfE2zDzjX3BRsbuqOGKb/bpEQDhKlPF7vnXXDvgihE=;
 b=R2arAzpAypSLVLkQ7gnA+rw7O5HpFbi+JqXBgfQ34xzu/aXsfRlkksNjPnVDxr6YD0
 wsQFhmuVAh46OrXNagzxCL8wvvTCQJPKC30iC947zTMzBPq3PFN0jNy3hlr818QSQqqf
 gVSOa9AHGEij7HakhknN+1IfuMXAMbvMVZVIToY46PvLazIDV5cD/t6ZWuoDp1SYGNyy
 WxHyYIT+SnftHUaWLfrZpDfKFN8UGJaVsxNHOYyCqbCgLhIn+R0mp3FAFv81IFbRTccV
 Kw3hmnly/vmbk8+i8DTHL8i4HL5CdD3fI84Djd7YKZEoBs0nKM5BP5yPfk+hbhhV0MJU
 Zt8Q==
Subject: [Intel-gfx] [PATCH 5/6] drm/amdgpu: add independent DMA-buf export
 v6
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

VGhlIGNhY2hpbmcgb2YgU0dUJ3MgaXMgYWN0dWFsbHkgcXVpdGUgaGFybWZ1bCBhbmQgc2hvdWxk
IHByb2JhYmx5IHJlbW92ZWQKYWx0b2dldGhlciB3aGVuIGFsbCBkcml2ZXJzIGFyZSBhdWRpdGVk
LgoKU3RhcnQgYnkgcHJvdmlkaW5nIGEgc2VwYXJhdGUgRE1BLWJ1ZiBleHBvcnQgaW1wbGVtZW50
YXRpb24gaW4gYW1kZ3B1LgpUaGlzIGlzIGFsc28gYSBwcmVyZXF1aXNpdGUgb2YgdW5waW5uZWQg
RE1BLWJ1ZiBoYW5kbGluZy4KCnYyOiBmaXggdW5pbnRlbmRlZCByZWN1cnNpb24sIHJlbW92ZSBk
ZWJ1Z2dpbmcgbGVmdG92ZXJzCnYzOiBzcGxpdCBvdXQgZnJvbSB1bnBpbm5lZCBETUEtYnVmIHdv
cmsKdjQ6IHJlYmFzZSBvbiB0b3Agb2YgbmV3IG5vX3NndF9jYWNoZSBmbGFnCnY1OiBmaXggc29t
ZSB3YXJuaW5ncyBieSBpbmNsdWRpbmcgYW1kZ3B1X2RtYV9idWYuaAp2NjogZml4IGxvY2tpbmcg
Zm9yIG5vbiBhbWRncHUgZXhwb3J0cwoKU2lnbmVkLW9mZi1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8
Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1
L2FtZGdwdV9kbWFfYnVmLmMgfCAyMTAgKysrKysrKysrKysrKy0tLS0tLS0KIGRyaXZlcnMvZ3B1
L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9kbWFfYnVmLmggfCAgIDEgLQogZHJpdmVycy9ncHUvZHJt
L2FtZC9hbWRncHUvYW1kZ3B1X2Rydi5jICAgICB8ICAgMSAtCiBkcml2ZXJzL2dwdS9kcm0vYW1k
L2FtZGdwdS9hbWRncHVfb2JqZWN0LmMgIHwgICA1ICsKIDQgZmlsZXMgY2hhbmdlZCwgMTM5IGlu
c2VydGlvbnMoKyksIDc4IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9hbWQvYW1kZ3B1L2FtZGdwdV9kbWFfYnVmLmMgYi9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdw
dS9hbWRncHVfZG1hX2J1Zi5jCmluZGV4IDQ4OTA0MWRmMWY0NS4uNTc5ZTMzYjMxZjJkIDEwMDY0
NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfZG1hX2J1Zi5jCisrKyBi
L2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9kbWFfYnVmLmMKQEAgLTM0LDI2ICsz
NCwxMSBAQAogI2luY2x1ZGUgImFtZGdwdS5oIgogI2luY2x1ZGUgImFtZGdwdV9kaXNwbGF5Lmgi
CiAjaW5jbHVkZSAiYW1kZ3B1X2dlbS5oIgorI2luY2x1ZGUgImFtZGdwdV9kbWFfYnVmLmgiCiAj
aW5jbHVkZSA8ZHJtL2FtZGdwdV9kcm0uaD4KICNpbmNsdWRlIDxsaW51eC9kbWEtYnVmLmg+CiAj
aW5jbHVkZSA8bGludXgvZG1hLWZlbmNlLWFycmF5Lmg+CiAKLS8qKgotICogYW1kZ3B1X2dlbV9w
cmltZV9nZXRfc2dfdGFibGUgLSAmZHJtX2RyaXZlci5nZW1fcHJpbWVfZ2V0X3NnX3RhYmxlCi0g
KiBpbXBsZW1lbnRhdGlvbgotICogQG9iajogR0VNIGJ1ZmZlciBvYmplY3QgKEJPKQotICoKLSAq
IFJldHVybnM6Ci0gKiBBIHNjYXR0ZXIvZ2F0aGVyIHRhYmxlIGZvciB0aGUgcGlubmVkIHBhZ2Vz
IG9mIHRoZSBCTydzIG1lbW9yeS4KLSAqLwotc3RydWN0IHNnX3RhYmxlICphbWRncHVfZ2VtX3By
aW1lX2dldF9zZ190YWJsZShzdHJ1Y3QgZHJtX2dlbV9vYmplY3QgKm9iaikKLXsKLQlzdHJ1Y3Qg
YW1kZ3B1X2JvICpibyA9IGdlbV90b19hbWRncHVfYm8ob2JqKTsKLQlpbnQgbnBhZ2VzID0gYm8t
PnRiby5udW1fcGFnZXM7Ci0KLQlyZXR1cm4gZHJtX3ByaW1lX3BhZ2VzX3RvX3NnKGJvLT50Ym8u
dHRtLT5wYWdlcywgbnBhZ2VzKTsKLX0KLQogLyoqCiAgKiBhbWRncHVfZ2VtX3ByaW1lX3ZtYXAg
LSAmZG1hX2J1Zl9vcHMudm1hcCBpbXBsZW1lbnRhdGlvbgogICogQG9iajogR0VNIEJPCkBAIC0x
NzksOTIgKzE2NCwxNjMgQEAgX19yZXNlcnZhdGlvbl9vYmplY3RfbWFrZV9leGNsdXNpdmUoc3Ry
dWN0IHJlc2VydmF0aW9uX29iamVjdCAqb2JqKQogfQogCiAvKioKLSAqIGFtZGdwdV9kbWFfYnVm
X21hcF9hdHRhY2ggLSAmZG1hX2J1Zl9vcHMuYXR0YWNoIGltcGxlbWVudGF0aW9uCi0gKiBAZG1h
X2J1ZjogU2hhcmVkIERNQSBidWZmZXIKKyAqIGFtZGdwdV9kbWFfYnVmX2F0dGFjaCAtICZkbWFf
YnVmX29wcy5hdHRhY2ggaW1wbGVtZW50YXRpb24KKyAqCisgKiBAZG1hYnVmOiBETUEtYnVmIHdo
ZXJlIHdlIGF0dGFjaCB0bworICogQGF0dGFjaDogYXR0YWNobWVudCB0byBhZGQKKyAqCisgKiBB
ZGQgdGhlIGF0dGFjaG1lbnQgYXMgdXNlciB0byB0aGUgZXhwb3J0ZWQgRE1BLWJ1Zi4KKyAqLwor
c3RhdGljIGludCBhbWRncHVfZG1hX2J1Zl9hdHRhY2goc3RydWN0IGRtYV9idWYgKmRtYWJ1ZiwK
KwkJCQkgc3RydWN0IGRtYV9idWZfYXR0YWNobWVudCAqYXR0YWNoKQoreworCXN0cnVjdCBkcm1f
Z2VtX29iamVjdCAqb2JqID0gZG1hYnVmLT5wcml2OworCXN0cnVjdCBhbWRncHVfYm8gKmJvID0g
Z2VtX3RvX2FtZGdwdV9ibyhvYmopOworCXN0cnVjdCBhbWRncHVfZGV2aWNlICphZGV2ID0gYW1k
Z3B1X3R0bV9hZGV2KGJvLT50Ym8uYmRldik7CisJaW50IHI7CisKKwlpZiAoYXR0YWNoLT5kZXYt
PmRyaXZlciA9PSBhZGV2LT5kZXYtPmRyaXZlcikKKwkJcmV0dXJuIDA7CisKKwlyID0gYW1kZ3B1
X2JvX3Jlc2VydmUoYm8sIGZhbHNlKTsKKwlpZiAodW5saWtlbHkociAhPSAwKSkKKwkJcmV0dXJu
IHI7CisKKwkvKgorCSAqIFdlIG9ubHkgY3JlYXRlIHNoYXJlZCBmZW5jZXMgZm9yIGludGVybmFs
IHVzZSwgYnV0IGltcG9ydGVycworCSAqIG9mIHRoZSBkbWFidWYgcmVseSBvbiBleGNsdXNpdmUg
ZmVuY2VzIGZvciBpbXBsaWNpdGx5CisJICogdHJhY2tpbmcgd3JpdGUgaGF6YXJkcy4gQXMgYW55
IG9mIHRoZSBjdXJyZW50IGZlbmNlcyBtYXkKKwkgKiBjb3JyZXNwb25kIHRvIGEgd3JpdGUsIHdl
IG5lZWQgdG8gY29udmVydCBhbGwgZXhpc3RpbmcKKwkgKiBmZW5jZXMgb24gdGhlIHJlc2VydmF0
aW9uIG9iamVjdCBpbnRvIGEgc2luZ2xlIGV4Y2x1c2l2ZQorCSAqIGZlbmNlLgorCSAqLworCXIg
PSBfX3Jlc2VydmF0aW9uX29iamVjdF9tYWtlX2V4Y2x1c2l2ZShiby0+dGJvLnJlc3YpOworCWlm
IChyKQorCQlyZXR1cm4gcjsKKworCWJvLT5wcmltZV9zaGFyZWRfY291bnQrKzsKKwlhbWRncHVf
Ym9fdW5yZXNlcnZlKGJvKTsKKwlyZXR1cm4gMDsKK30KKworLyoqCisgKiBhbWRncHVfZG1hX2J1
Zl9kZXRhY2ggLSAmZG1hX2J1Zl9vcHMuZGV0YWNoIGltcGxlbWVudGF0aW9uCisgKgorICogQGRt
YWJ1ZjogRE1BLWJ1ZiB3aGVyZSB3ZSByZW1vdmUgdGhlIGF0dGFjaG1lbnQgZnJvbQorICogQGF0
dGFjaDogdGhlIGF0dGFjaG1lbnQgdG8gcmVtb3ZlCisgKgorICogQ2FsbGVkIHdoZW4gYW4gYXR0
YWNobWVudCBpcyByZW1vdmVkIGZyb20gdGhlIERNQS1idWYuCisgKi8KK3N0YXRpYyB2b2lkIGFt
ZGdwdV9kbWFfYnVmX2RldGFjaChzdHJ1Y3QgZG1hX2J1ZiAqZG1hYnVmLAorCQkJCSAgc3RydWN0
IGRtYV9idWZfYXR0YWNobWVudCAqYXR0YWNoKQoreworCXN0cnVjdCBkcm1fZ2VtX29iamVjdCAq
b2JqID0gZG1hYnVmLT5wcml2OworCXN0cnVjdCBhbWRncHVfYm8gKmJvID0gZ2VtX3RvX2FtZGdw
dV9ibyhvYmopOworCXN0cnVjdCBhbWRncHVfZGV2aWNlICphZGV2ID0gYW1kZ3B1X3R0bV9hZGV2
KGJvLT50Ym8uYmRldik7CisKKwlpZiAoYXR0YWNoLT5kZXYtPmRyaXZlciAhPSBhZGV2LT5kZXYt
PmRyaXZlciAmJiBiby0+cHJpbWVfc2hhcmVkX2NvdW50KQorCQliby0+cHJpbWVfc2hhcmVkX2Nv
dW50LS07Cit9CisKKy8qKgorICogYW1kZ3B1X2RtYV9idWZfcGluIC0gJmRtYV9idWZfb3BzLnBp
biBpbXBsZW1lbnRhdGlvbgorICoKKyAqIEBhdHRhY2g6IGF0dGFjaG1lbnQgdG8gcGluIGRvd24K
KyAqCisgKiBQaW4gdGhlIEJPIHdoaWNoIGlzIGJhY2tpbmcgdGhlIERNQS1idWYgc28gdGhhdCBp
dCBjYW4ndCBtb3ZlIGFueSBtb3JlLgorICovCitzdGF0aWMgaW50IGFtZGdwdV9kbWFfYnVmX3Bp
bihzdHJ1Y3QgZG1hX2J1Zl9hdHRhY2htZW50ICphdHRhY2gpCit7CisJc3RydWN0IGRybV9nZW1f
b2JqZWN0ICpvYmogPSBhdHRhY2gtPmRtYWJ1Zi0+cHJpdjsKKwlzdHJ1Y3QgYW1kZ3B1X2JvICpi
byA9IGdlbV90b19hbWRncHVfYm8ob2JqKTsKKworCS8qIHBpbiBidWZmZXIgaW50byBHVFQgKi8K
KwlyZXR1cm4gYW1kZ3B1X2JvX3BpbihibywgQU1ER1BVX0dFTV9ET01BSU5fR1RUKTsKK30KKwor
LyoqCisgKiBhbWRncHVfZG1hX2J1Zl91bnBpbiAtICZkbWFfYnVmX29wcy51bnBpbiBpbXBsZW1l
bnRhdGlvbgorICoKKyAqIEBhdHRhY2g6IGF0dGFjaG1lbnQgdG8gdW5waW4KKyAqCisgKiBVbnBp
biBhIHByZXZpb3VzbHkgcGlubmVkIEJPIHRvIG1ha2UgaXQgbW92YWJsZSBhZ2Fpbi4KKyAqLwor
c3RhdGljIHZvaWQgYW1kZ3B1X2RtYV9idWZfdW5waW4oc3RydWN0IGRtYV9idWZfYXR0YWNobWVu
dCAqYXR0YWNoKQoreworCXN0cnVjdCBkcm1fZ2VtX29iamVjdCAqb2JqID0gYXR0YWNoLT5kbWFi
dWYtPnByaXY7CisJc3RydWN0IGFtZGdwdV9ibyAqYm8gPSBnZW1fdG9fYW1kZ3B1X2JvKG9iaik7
CisKKwlhbWRncHVfYm9fdW5waW4oYm8pOworfQorCisvKioKKyAqIGFtZGdwdV9kbWFfYnVmX21h
cF9kbWFfYnVmIC0gJmRtYV9idWZfb3BzLm1hcF9kbWFfYnVmIGltcGxlbWVudGF0aW9uCiAgKiBA
YXR0YWNoOiBETUEtYnVmIGF0dGFjaG1lbnQKKyAqIEBkaXI6IERNQSBkaXJlY3Rpb24KICAqCiAg
KiBNYWtlcyBzdXJlIHRoYXQgdGhlIHNoYXJlZCBETUEgYnVmZmVyIGNhbiBiZSBhY2Nlc3NlZCBi
eSB0aGUgdGFyZ2V0IGRldmljZS4KICAqIEZvciBub3csIHNpbXBseSBwaW5zIGl0IHRvIHRoZSBH
VFQgZG9tYWluLCB3aGVyZSBpdCBzaG91bGQgYmUgYWNjZXNzaWJsZSBieQogICogYWxsIERNQSBk
ZXZpY2VzLgogICoKICAqIFJldHVybnM6Ci0gKiAwIG9uIHN1Y2Nlc3Mgb3IgYSBuZWdhdGl2ZSBl
cnJvciBjb2RlIG9uIGZhaWx1cmUuCisgKiBzZ190YWJsZSBmaWxsZWQgd2l0aCB0aGUgRE1BIGFk
ZHJlc3NlcyB0byB1c2Ugb3IgRVJSX1BSVCB3aXRoIG5lZ2F0aXZlIGVycm9yCisgKiBjb2RlLgog
ICovCi1zdGF0aWMgaW50IGFtZGdwdV9kbWFfYnVmX21hcF9hdHRhY2goc3RydWN0IGRtYV9idWYg
KmRtYV9idWYsCi0JCQkJICAgICBzdHJ1Y3QgZG1hX2J1Zl9hdHRhY2htZW50ICphdHRhY2gpCitz
dGF0aWMgc3RydWN0IHNnX3RhYmxlICoKK2FtZGdwdV9kbWFfYnVmX21hcF9kbWFfYnVmKHN0cnVj
dCBkbWFfYnVmX2F0dGFjaG1lbnQgKmF0dGFjaCwKKwkJCSAgIGVudW0gZG1hX2RhdGFfZGlyZWN0
aW9uIGRpcikKIHsKKwlzdHJ1Y3QgZG1hX2J1ZiAqZG1hX2J1ZiA9IGF0dGFjaC0+ZG1hYnVmOwog
CXN0cnVjdCBkcm1fZ2VtX29iamVjdCAqb2JqID0gZG1hX2J1Zi0+cHJpdjsKIAlzdHJ1Y3QgYW1k
Z3B1X2JvICpibyA9IGdlbV90b19hbWRncHVfYm8ob2JqKTsKLQlzdHJ1Y3QgYW1kZ3B1X2Rldmlj
ZSAqYWRldiA9IGFtZGdwdV90dG1fYWRldihiby0+dGJvLmJkZXYpOworCXN0cnVjdCBzZ190YWJs
ZSAqc2d0OwogCWxvbmcgcjsKIAotCXIgPSBkcm1fZ2VtX21hcF9hdHRhY2goZG1hX2J1ZiwgYXR0
YWNoKTsKLQlpZiAocikKLQkJcmV0dXJuIHI7CisJaWYgKCFiby0+cGluX2NvdW50KSB7CisJCS8q
IG1vdmUgYnVmZmVyIGludG8gR1RUICovCisJCXN0cnVjdCB0dG1fb3BlcmF0aW9uX2N0eCBjdHgg
PSB7IGZhbHNlLCBmYWxzZSB9OwogCi0JciA9IGFtZGdwdV9ib19yZXNlcnZlKGJvLCBmYWxzZSk7
Ci0JaWYgKHVubGlrZWx5KHIgIT0gMCkpCi0JCWdvdG8gZXJyb3JfZGV0YWNoOwotCi0KLQlpZiAo
YXR0YWNoLT5kZXYtPmRyaXZlciAhPSBhZGV2LT5kZXYtPmRyaXZlcikgewotCQkvKgotCQkgKiBX
ZSBvbmx5IGNyZWF0ZSBzaGFyZWQgZmVuY2VzIGZvciBpbnRlcm5hbCB1c2UsIGJ1dCBpbXBvcnRl
cnMKLQkJICogb2YgdGhlIGRtYWJ1ZiByZWx5IG9uIGV4Y2x1c2l2ZSBmZW5jZXMgZm9yIGltcGxp
Y2l0bHkKLQkJICogdHJhY2tpbmcgd3JpdGUgaGF6YXJkcy4gQXMgYW55IG9mIHRoZSBjdXJyZW50
IGZlbmNlcyBtYXkKLQkJICogY29ycmVzcG9uZCB0byBhIHdyaXRlLCB3ZSBuZWVkIHRvIGNvbnZl
cnQgYWxsIGV4aXN0aW5nCi0JCSAqIGZlbmNlcyBvbiB0aGUgcmVzZXJ2YXRpb24gb2JqZWN0IGlu
dG8gYSBzaW5nbGUgZXhjbHVzaXZlCi0JCSAqIGZlbmNlLgotCQkgKi8KLQkJciA9IF9fcmVzZXJ2
YXRpb25fb2JqZWN0X21ha2VfZXhjbHVzaXZlKGJvLT50Ym8ucmVzdik7CisJCWFtZGdwdV9ib19w
bGFjZW1lbnRfZnJvbV9kb21haW4oYm8sIEFNREdQVV9HRU1fRE9NQUlOX0dUVCk7CisJCXIgPSB0
dG1fYm9fdmFsaWRhdGUoJmJvLT50Ym8sICZiby0+cGxhY2VtZW50LCAmY3R4KTsKIAkJaWYgKHIp
Ci0JCQlnb3RvIGVycm9yX3VucmVzZXJ2ZTsKKwkJCXJldHVybiBFUlJfUFRSKHIpOwogCX0KIAot
CS8qIHBpbiBidWZmZXIgaW50byBHVFQgKi8KLQlyID0gYW1kZ3B1X2JvX3BpbihibywgQU1ER1BV
X0dFTV9ET01BSU5fR1RUKTsKLQlpZiAocikKLQkJZ290byBlcnJvcl91bnJlc2VydmU7CisJc2d0
ID0gZHJtX3ByaW1lX3BhZ2VzX3RvX3NnKGJvLT50Ym8udHRtLT5wYWdlcywgYm8tPnRiby5udW1f
cGFnZXMpOworCWlmIChJU19FUlIoc2d0KSkKKwkJcmV0dXJuIHNndDsKIAotCWlmIChhdHRhY2gt
PmRldi0+ZHJpdmVyICE9IGFkZXYtPmRldi0+ZHJpdmVyKQotCQliby0+cHJpbWVfc2hhcmVkX2Nv
dW50Kys7CisJaWYgKCFkbWFfbWFwX3NnX2F0dHJzKGF0dGFjaC0+ZGV2LCBzZ3QtPnNnbCwgc2d0
LT5uZW50cywgZGlyLAorCQkJICAgICAgRE1BX0FUVFJfU0tJUF9DUFVfU1lOQykpCisJCWdvdG8g
ZXJyb3JfZnJlZTsKIAotZXJyb3JfdW5yZXNlcnZlOgotCWFtZGdwdV9ib191bnJlc2VydmUoYm8p
OworCXJldHVybiBzZ3Q7CiAKLWVycm9yX2RldGFjaDoKLQlpZiAocikKLQkJZHJtX2dlbV9tYXBf
ZGV0YWNoKGRtYV9idWYsIGF0dGFjaCk7Ci0JcmV0dXJuIHI7CitlcnJvcl9mcmVlOgorCXNnX2Zy
ZWVfdGFibGUoc2d0KTsKKwlrZnJlZShzZ3QpOworCXJldHVybiBFUlJfUFRSKC1FTk9NRU0pOwog
fQogCiAvKioKLSAqIGFtZGdwdV9kbWFfYnVmX21hcF9kZXRhY2ggLSAmZG1hX2J1Zl9vcHMuZGV0
YWNoIGltcGxlbWVudGF0aW9uCi0gKiBAZG1hX2J1ZjogU2hhcmVkIERNQSBidWZmZXIKKyAqIGFt
ZGdwdV9nZW1fdW5tYXBfZG1hX2J1ZiAtICZkbWFfYnVmX29wcy51bm1hcF9kbWFfYnVmIGltcGxl
bWVudGF0aW9uCiAgKiBAYXR0YWNoOiBETUEtYnVmIGF0dGFjaG1lbnQKKyAqIEBzZ3Q6IHNnX3Rh
YmxlIHRvIHVubWFwCisgKiBAZGlyOiBETUEgZGlyZWN0aW9uCiAgKgogICogVGhpcyBpcyBjYWxs
ZWQgd2hlbiBhIHNoYXJlZCBETUEgYnVmZmVyIG5vIGxvbmdlciBuZWVkcyB0byBiZSBhY2Nlc3Np
YmxlIGJ5CiAgKiBhbm90aGVyIGRldmljZS4gRm9yIG5vdywgc2ltcGx5IHVucGlucyB0aGUgYnVm
ZmVyIGZyb20gR1RULgogICovCi1zdGF0aWMgdm9pZCBhbWRncHVfZG1hX2J1Zl9tYXBfZGV0YWNo
KHN0cnVjdCBkbWFfYnVmICpkbWFfYnVmLAotCQkJCSAgICAgIHN0cnVjdCBkbWFfYnVmX2F0dGFj
aG1lbnQgKmF0dGFjaCkKK3N0YXRpYyB2b2lkIGFtZGdwdV9kbWFfYnVmX3VubWFwX2RtYV9idWYo
c3RydWN0IGRtYV9idWZfYXR0YWNobWVudCAqYXR0YWNoLAorCQkJCQkgc3RydWN0IHNnX3RhYmxl
ICpzZ3QsCisJCQkJCSBlbnVtIGRtYV9kYXRhX2RpcmVjdGlvbiBkaXIpCiB7Ci0Jc3RydWN0IGRy
bV9nZW1fb2JqZWN0ICpvYmogPSBkbWFfYnVmLT5wcml2OwotCXN0cnVjdCBhbWRncHVfYm8gKmJv
ID0gZ2VtX3RvX2FtZGdwdV9ibyhvYmopOwotCXN0cnVjdCBhbWRncHVfZGV2aWNlICphZGV2ID0g
YW1kZ3B1X3R0bV9hZGV2KGJvLT50Ym8uYmRldik7Ci0JaW50IHJldCA9IDA7Ci0KLQlyZXQgPSBh
bWRncHVfYm9fcmVzZXJ2ZShibywgdHJ1ZSk7Ci0JaWYgKHVubGlrZWx5KHJldCAhPSAwKSkKLQkJ
Z290byBlcnJvcjsKKwlpZiAoIXNndCkKKwkJcmV0dXJuOwogCi0JYW1kZ3B1X2JvX3VucGluKGJv
KTsKLQlpZiAoYXR0YWNoLT5kZXYtPmRyaXZlciAhPSBhZGV2LT5kZXYtPmRyaXZlciAmJiBiby0+
cHJpbWVfc2hhcmVkX2NvdW50KQotCQliby0+cHJpbWVfc2hhcmVkX2NvdW50LS07Ci0JYW1kZ3B1
X2JvX3VucmVzZXJ2ZShibyk7Ci0KLWVycm9yOgotCWRybV9nZW1fbWFwX2RldGFjaChkbWFfYnVm
LCBhdHRhY2gpOworCWRtYV91bm1hcF9zZyhhdHRhY2gtPmRldiwgc2d0LT5zZ2wsIHNndC0+bmVu
dHMsIGRpcik7CisJc2dfZnJlZV90YWJsZShzZ3QpOworCWtmcmVlKHNndCk7CiB9CiAKIC8qKgpA
QCAtMzIyLDEwICszNzgsMTIgQEAgc3RhdGljIGludCBhbWRncHVfZG1hX2J1Zl9iZWdpbl9jcHVf
YWNjZXNzKHN0cnVjdCBkbWFfYnVmICpkbWFfYnVmLAogfQogCiBjb25zdCBzdHJ1Y3QgZG1hX2J1
Zl9vcHMgYW1kZ3B1X2RtYWJ1Zl9vcHMgPSB7Ci0JLmF0dGFjaCA9IGFtZGdwdV9kbWFfYnVmX21h
cF9hdHRhY2gsCi0JLmRldGFjaCA9IGFtZGdwdV9kbWFfYnVmX21hcF9kZXRhY2gsCi0JLm1hcF9k
bWFfYnVmID0gZHJtX2dlbV9tYXBfZG1hX2J1ZiwKLQkudW5tYXBfZG1hX2J1ZiA9IGRybV9nZW1f
dW5tYXBfZG1hX2J1ZiwKKwkuYXR0YWNoID0gYW1kZ3B1X2RtYV9idWZfYXR0YWNoLAorCS5kZXRh
Y2ggPSBhbWRncHVfZG1hX2J1Zl9kZXRhY2gsCisJLnBpbiA9IGFtZGdwdV9kbWFfYnVmX3BpbiwK
KwkudW5waW4gPSBhbWRncHVfZG1hX2J1Zl91bnBpbiwKKwkubWFwX2RtYV9idWYgPSBhbWRncHVf
ZG1hX2J1Zl9tYXBfZG1hX2J1ZiwKKwkudW5tYXBfZG1hX2J1ZiA9IGFtZGdwdV9kbWFfYnVmX3Vu
bWFwX2RtYV9idWYsCiAJLnJlbGVhc2UgPSBkcm1fZ2VtX2RtYWJ1Zl9yZWxlYXNlLAogCS5iZWdp
bl9jcHVfYWNjZXNzID0gYW1kZ3B1X2RtYV9idWZfYmVnaW5fY3B1X2FjY2VzcywKIAkubW1hcCA9
IGRybV9nZW1fZG1hYnVmX21tYXAsCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vYW1kL2Ft
ZGdwdS9hbWRncHVfZG1hX2J1Zi5oIGIvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1
X2RtYV9idWYuaAppbmRleCBjNzA1NmNiZTg2ODUuLmYxNTIyMjkyODE0YyAxMDA2NDQKLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2RtYV9idWYuaAorKysgYi9kcml2ZXJz
L2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfZG1hX2J1Zi5oCkBAIC0yNSw3ICsyNSw2IEBACiAK
ICNpbmNsdWRlIDxkcm0vZHJtX2dlbS5oPgogCi1zdHJ1Y3Qgc2dfdGFibGUgKmFtZGdwdV9nZW1f
cHJpbWVfZ2V0X3NnX3RhYmxlKHN0cnVjdCBkcm1fZ2VtX29iamVjdCAqb2JqKTsKIHN0cnVjdCBk
cm1fZ2VtX29iamVjdCAqCiBhbWRncHVfZ2VtX3ByaW1lX2ltcG9ydF9zZ190YWJsZShzdHJ1Y3Qg
ZHJtX2RldmljZSAqZGV2LAogCQkJCSBzdHJ1Y3QgZG1hX2J1Zl9hdHRhY2htZW50ICphdHRhY2gs
CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfZHJ2LmMgYi9k
cml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfZHJ2LmMKaW5kZXggMGE1NzdhMzg5MDI0
Li41ZjNiN2NhYjgzOTAgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2Ft
ZGdwdV9kcnYuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfZHJ2LmMK
QEAgLTEzMzQsNyArMTMzNCw2IEBAIHN0YXRpYyBzdHJ1Y3QgZHJtX2RyaXZlciBrbXNfZHJpdmVy
ID0gewogCS5nZW1fcHJpbWVfZXhwb3J0ID0gYW1kZ3B1X2dlbV9wcmltZV9leHBvcnQsCiAJLmdl
bV9wcmltZV9pbXBvcnQgPSBhbWRncHVfZ2VtX3ByaW1lX2ltcG9ydCwKIAkuZ2VtX3ByaW1lX3Jl
c19vYmogPSBhbWRncHVfZ2VtX3ByaW1lX3Jlc19vYmosCi0JLmdlbV9wcmltZV9nZXRfc2dfdGFi
bGUgPSBhbWRncHVfZ2VtX3ByaW1lX2dldF9zZ190YWJsZSwKIAkuZ2VtX3ByaW1lX2ltcG9ydF9z
Z190YWJsZSA9IGFtZGdwdV9nZW1fcHJpbWVfaW1wb3J0X3NnX3RhYmxlLAogCS5nZW1fcHJpbWVf
dm1hcCA9IGFtZGdwdV9nZW1fcHJpbWVfdm1hcCwKIAkuZ2VtX3ByaW1lX3Z1bm1hcCA9IGFtZGdw
dV9nZW1fcHJpbWVfdnVubWFwLApkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRn
cHUvYW1kZ3B1X29iamVjdC5jIGIvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X29i
amVjdC5jCmluZGV4IDE2Zjk2ZjJlMzY3MS4uNzg0M2IzYzZjYTU0IDEwMDY0NAotLS0gYS9kcml2
ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfb2JqZWN0LmMKKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2FtZC9hbWRncHUvYW1kZ3B1X29iamVjdC5jCkBAIC0zMSw2ICszMSw3IEBACiAgKi8KICNp
bmNsdWRlIDxsaW51eC9saXN0Lmg+CiAjaW5jbHVkZSA8bGludXgvc2xhYi5oPgorI2luY2x1ZGUg
PGxpbnV4L2RtYS1idWYuaD4KIAogI2luY2x1ZGUgPGRybS9hbWRncHVfZHJtLmg+CiAjaW5jbHVk
ZSA8ZHJtL2RybV9jYWNoZS5oPgpAQCAtMTE5NCw2ICsxMTk1LDEwIEBAIHZvaWQgYW1kZ3B1X2Jv
X21vdmVfbm90aWZ5KHN0cnVjdCB0dG1fYnVmZmVyX29iamVjdCAqYm8sCiAKIAlhbWRncHVfYm9f
a3VubWFwKGFibyk7CiAKKwlpZiAoYWJvLT5nZW1fYmFzZS5kbWFfYnVmICYmICFhYm8tPmdlbV9i
YXNlLmltcG9ydF9hdHRhY2ggJiYKKwkgICAgYm8tPm1lbS5tZW1fdHlwZSAhPSBUVE1fUExfU1lT
VEVNKQorCQlkbWFfYnVmX2ludmFsaWRhdGVfbWFwcGluZ3MoYWJvLT5nZW1fYmFzZS5kbWFfYnVm
KTsKKwogCS8qIHJlbWVtYmVyIHRoZSBldmljdGlvbiAqLwogCWlmIChldmljdCkKIAkJYXRvbWlj
NjRfaW5jKCZhZGV2LT5udW1fZXZpY3Rpb25zKTsKLS0gCjIuMTcuMQoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
