Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B7E738AB3
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Jun 2019 14:51:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4763389DB2;
	Fri,  7 Jun 2019 12:50:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com
 [IPv6:2a00:1450:4864:20::443])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9FCF88901E;
 Fri,  7 Jun 2019 12:50:45 +0000 (UTC)
Received: by mail-wr1-x443.google.com with SMTP id x4so2047555wrt.6;
 Fri, 07 Jun 2019 05:50:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=WX4q5TAJlhp8jHLXqvAI1qQOANYusD4yVjeLg0U8qtc=;
 b=mPuGPRuu3SwafwB+Z20ccVclnx+InJzdzLyRMwUzTEZoYzg/SCXqfTYUu3YqOcK5yg
 P2R+rQbajUEKGlcwb43v3BMLS0anjLJIxeAClMM9BpLbrAT3sP1fSn7NfWyGoASkw4xT
 o3b6ohT+m83EhVKLdPFrWeBeE9G/GuDPIHtky5lPsP3R1eDpssFF4DUsOY6Fm6qdsMG+
 4q6HJI/w62SDlJXIGu8ZL7yo1RY6Q1+kobLhOBB1F9OPc0z+Xp7I/5grC+/oliMDxbnF
 kb/hytZGL0R78cKknL9e6m3bp8ZBVc3JM1s1bLWeCc67kS9t4uFe3zqbGoyhS2GROpzP
 e+IQ==
X-Gm-Message-State: APjAAAWTsCabGCf1rnk0nJyWAo1Nm6sBSoicWR5mfr3IsQD+QQRuAYWu
 hbZazEtkkywDFXIaBYUqWrKEHChG
X-Google-Smtp-Source: APXvYqxvpl0/gmcWmd4MWWWvMBRfwcK4npwk8Znv8vFW39IUuH285BXVIpijHSfrrF4Hbg+QFf9Lig==
X-Received: by 2002:a5d:6ccc:: with SMTP id c12mr9770869wrc.57.1559911843783; 
 Fri, 07 Jun 2019 05:50:43 -0700 (PDT)
Received: from abel.fritz.box ([2a02:908:1252:fb60:c5a0:21d3:d7e7:98b7])
 by smtp.gmail.com with ESMTPSA id 32sm3923249wra.35.2019.06.07.05.50.43
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 07 Jun 2019 05:50:43 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 daniel.vetter@ffwll.ch
Date: Fri,  7 Jun 2019 14:50:38 +0200
Message-Id: <20190607125039.2240-5-christian.koenig@amd.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190607125039.2240-1-christian.koenig@amd.com>
References: <20190607125039.2240-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=WX4q5TAJlhp8jHLXqvAI1qQOANYusD4yVjeLg0U8qtc=;
 b=mlaVxzppZqjWU3kimNTIxJum2KT5V7oKf11ySVbLhN7vayuRei2hMwIDuyB8+hdZlc
 J85vnlQbt5n/FejIYLbrXXpOfZKKEnxUTTJUKIbtFxyyA+B8Mzz+R3gxafnSgNtMTxNJ
 ybUjKv8JIU1KOy+7mRBuLaDM9rOtacQ0Q3xBb5HuRMXPsOW6+D93ZcMR8bDsgj+wUChZ
 SR7QJ/VCBXyZmP8NAjrXLbPlyrtRwPppalwkmK56OS4K7DyiMZWl5PiwHiEeXeL0/hW+
 8GCdbe9l3QzdbH7PEyklSvsKpFQKgRs9D3KTe7kxVR6sFlXr5tfVrEtX6nRlqP5NCLt0
 BC9A==
Subject: [Intel-gfx] [PATCH 5/6] drm/amdgpu: add independent DMA-buf export
 v3
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
YXRpb24gaW4gYW1kZ3B1LiBUaGlzIGlzCmFsc28gYSBwcmVyZXF1aXNpdGUgb2YgdW5waW5uZWQg
RE1BLWJ1ZiBoYW5kbGluZy4KCnYyOiBmaXggdW5pbnRlbmRlZCByZWN1cnNpb24sIHJlbW92ZSBk
ZWJ1Z2dpbmcgbGVmdG92ZXJzCnYzOiBzcGxpdCBvdXQgZnJvbSB1bnBpbm5lZCBETUEtYnVmIHdv
cmsKdjQ6IHJlYmFzZSBvbiB0b3Agb2YgbmV3IG5vX3NndF9jYWNoZSBmbGFnCgpTaWduZWQtb2Zm
LWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+Ci0tLQogZHJp
dmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2RtYV9idWYuYyB8IDIwNCArKysrKysrKysr
KystLS0tLS0tLQogZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2RtYV9idWYuaCB8
ICAgMSAtCiBkcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfZHJ2LmMgICAgIHwgICAx
IC0KIGRyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9vYmplY3QuYyAgfCAgIDUgKwog
NCBmaWxlcyBjaGFuZ2VkLCAxMzMgaW5zZXJ0aW9ucygrKSwgNzggZGVsZXRpb25zKC0pCgpkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2RtYV9idWYuYyBiL2Ry
aXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9kbWFfYnVmLmMKaW5kZXggNDcxMWNmMWI1
YmQyLi42OGEwNzEwNjA3OTMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1
L2FtZGdwdV9kbWFfYnVmLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1
X2RtYV9idWYuYwpAQCAtNDAsMjIgKzQwLDYgQEAKICNpbmNsdWRlIDxsaW51eC9kbWEtYnVmLmg+
CiAjaW5jbHVkZSA8bGludXgvZG1hLWZlbmNlLWFycmF5Lmg+CiAKLS8qKgotICogYW1kZ3B1X2dl
bV9wcmltZV9nZXRfc2dfdGFibGUgLSAmZHJtX2RyaXZlci5nZW1fcHJpbWVfZ2V0X3NnX3RhYmxl
Ci0gKiBpbXBsZW1lbnRhdGlvbgotICogQG9iajogR0VNIGJ1ZmZlciBvYmplY3QgKEJPKQotICoK
LSAqIFJldHVybnM6Ci0gKiBBIHNjYXR0ZXIvZ2F0aGVyIHRhYmxlIGZvciB0aGUgcGlubmVkIHBh
Z2VzIG9mIHRoZSBCTydzIG1lbW9yeS4KLSAqLwotc3RydWN0IHNnX3RhYmxlICphbWRncHVfZ2Vt
X3ByaW1lX2dldF9zZ190YWJsZShzdHJ1Y3QgZHJtX2dlbV9vYmplY3QgKm9iaikKLXsKLQlzdHJ1
Y3QgYW1kZ3B1X2JvICpibyA9IGdlbV90b19hbWRncHVfYm8ob2JqKTsKLQlpbnQgbnBhZ2VzID0g
Ym8tPnRiby5udW1fcGFnZXM7Ci0KLQlyZXR1cm4gZHJtX3ByaW1lX3BhZ2VzX3RvX3NnKGJvLT50
Ym8udHRtLT5wYWdlcywgbnBhZ2VzKTsKLX0KLQogLyoqCiAgKiBhbWRncHVfZ2VtX3ByaW1lX3Zt
YXAgLSAmZG1hX2J1Zl9vcHMudm1hcCBpbXBsZW1lbnRhdGlvbgogICogQG9iajogR0VNIEJPCkBA
IC0xODEsOTIgKzE2NSwxNTggQEAgX19yZXNlcnZhdGlvbl9vYmplY3RfbWFrZV9leGNsdXNpdmUo
c3RydWN0IHJlc2VydmF0aW9uX29iamVjdCAqb2JqKQogfQogCiAvKioKLSAqIGFtZGdwdV9kbWFf
YnVmX21hcF9hdHRhY2ggLSAmZG1hX2J1Zl9vcHMuYXR0YWNoIGltcGxlbWVudGF0aW9uCi0gKiBA
ZG1hX2J1ZjogU2hhcmVkIERNQSBidWZmZXIKKyAqIGFtZGdwdV9kbWFfYnVmX2F0dGFjaCAtICZk
bWFfYnVmX29wcy5hdHRhY2ggaW1wbGVtZW50YXRpb24KKyAqCisgKiBAZG1hYnVmOiBETUEtYnVm
IHdoZXJlIHdlIGF0dGFjaCB0bworICogQGF0dGFjaDogYXR0YWNobWVudCB0byBhZGQKKyAqCisg
KiBBZGQgdGhlIGF0dGFjaG1lbnQgYXMgdXNlciB0byB0aGUgZXhwb3J0ZWQgRE1BLWJ1Zi4KKyAq
Lworc3RhdGljIGludCBhbWRncHVfZG1hX2J1Zl9hdHRhY2goc3RydWN0IGRtYV9idWYgKmRtYWJ1
ZiwKKwkJCQkgc3RydWN0IGRtYV9idWZfYXR0YWNobWVudCAqYXR0YWNoKQoreworCXN0cnVjdCBk
cm1fZ2VtX29iamVjdCAqb2JqID0gZG1hYnVmLT5wcml2OworCXN0cnVjdCBhbWRncHVfYm8gKmJv
ID0gZ2VtX3RvX2FtZGdwdV9ibyhvYmopOworCXN0cnVjdCBhbWRncHVfZGV2aWNlICphZGV2ID0g
YW1kZ3B1X3R0bV9hZGV2KGJvLT50Ym8uYmRldik7CisJaW50IHI7CisKKwlpZiAoYXR0YWNoLT5k
ZXYtPmRyaXZlciA9PSBhZGV2LT5kZXYtPmRyaXZlcikKKwkJcmV0dXJuIDA7CisKKwkvKgorCSAq
IFdlIG9ubHkgY3JlYXRlIHNoYXJlZCBmZW5jZXMgZm9yIGludGVybmFsIHVzZSwgYnV0IGltcG9y
dGVycworCSAqIG9mIHRoZSBkbWFidWYgcmVseSBvbiBleGNsdXNpdmUgZmVuY2VzIGZvciBpbXBs
aWNpdGx5CisJICogdHJhY2tpbmcgd3JpdGUgaGF6YXJkcy4gQXMgYW55IG9mIHRoZSBjdXJyZW50
IGZlbmNlcyBtYXkKKwkgKiBjb3JyZXNwb25kIHRvIGEgd3JpdGUsIHdlIG5lZWQgdG8gY29udmVy
dCBhbGwgZXhpc3RpbmcKKwkgKiBmZW5jZXMgb24gdGhlIHJlc2VydmF0aW9uIG9iamVjdCBpbnRv
IGEgc2luZ2xlIGV4Y2x1c2l2ZQorCSAqIGZlbmNlLgorCSAqLworCXIgPSBfX3Jlc2VydmF0aW9u
X29iamVjdF9tYWtlX2V4Y2x1c2l2ZShiby0+dGJvLnJlc3YpOworCWlmIChyKQorCQlyZXR1cm4g
cjsKKworCWJvLT5wcmltZV9zaGFyZWRfY291bnQrKzsKKwlyZXR1cm4gMDsKK30KKworLyoqCisg
KiBhbWRncHVfZG1hX2J1Zl9kZXRhY2ggLSAmZG1hX2J1Zl9vcHMuZGV0YWNoIGltcGxlbWVudGF0
aW9uCisgKgorICogQGRtYWJ1ZjogRE1BLWJ1ZiB3aGVyZSB3ZSByZW1vdmUgdGhlIGF0dGFjaG1l
bnQgZnJvbQorICogQGF0dGFjaDogdGhlIGF0dGFjaG1lbnQgdG8gcmVtb3ZlCisgKgorICogQ2Fs
bGVkIHdoZW4gYW4gYXR0YWNobWVudCBpcyByZW1vdmVkIGZyb20gdGhlIERNQS1idWYuCisgKi8K
K3N0YXRpYyB2b2lkIGFtZGdwdV9kbWFfYnVmX2RldGFjaChzdHJ1Y3QgZG1hX2J1ZiAqZG1hYnVm
LAorCQkJCSAgc3RydWN0IGRtYV9idWZfYXR0YWNobWVudCAqYXR0YWNoKQoreworCXN0cnVjdCBk
cm1fZ2VtX29iamVjdCAqb2JqID0gZG1hYnVmLT5wcml2OworCXN0cnVjdCBhbWRncHVfYm8gKmJv
ID0gZ2VtX3RvX2FtZGdwdV9ibyhvYmopOworCXN0cnVjdCBhbWRncHVfZGV2aWNlICphZGV2ID0g
YW1kZ3B1X3R0bV9hZGV2KGJvLT50Ym8uYmRldik7CisKKwlpZiAoYXR0YWNoLT5kZXYtPmRyaXZl
ciAhPSBhZGV2LT5kZXYtPmRyaXZlciAmJiBiby0+cHJpbWVfc2hhcmVkX2NvdW50KQorCQliby0+
cHJpbWVfc2hhcmVkX2NvdW50LS07Cit9CisKKy8qKgorICogYW1kZ3B1X2RtYV9idWZfcGluIC0g
JmRtYV9idWZfb3BzLnBpbiBpbXBsZW1lbnRhdGlvbgorICoKKyAqIEBhdHRhY2g6IGF0dGFjaG1l
bnQgdG8gcGluIGRvd24KKyAqCisgKiBQaW4gdGhlIEJPIHdoaWNoIGlzIGJhY2tpbmcgdGhlIERN
QS1idWYgc28gdGhhdCBpdCBjYW4ndCBtb3ZlIGFueSBtb3JlLgorICovCitzdGF0aWMgaW50IGFt
ZGdwdV9kbWFfYnVmX3BpbihzdHJ1Y3QgZG1hX2J1Zl9hdHRhY2htZW50ICphdHRhY2gpCit7CisJ
c3RydWN0IGRybV9nZW1fb2JqZWN0ICpvYmogPSBhdHRhY2gtPmRtYWJ1Zi0+cHJpdjsKKwlzdHJ1
Y3QgYW1kZ3B1X2JvICpibyA9IGdlbV90b19hbWRncHVfYm8ob2JqKTsKKworCS8qIHBpbiBidWZm
ZXIgaW50byBHVFQgKi8KKwlyZXR1cm4gYW1kZ3B1X2JvX3BpbihibywgQU1ER1BVX0dFTV9ET01B
SU5fR1RUKTsKK30KKworLyoqCisgKiBhbWRncHVfZG1hX2J1Zl91bnBpbiAtICZkbWFfYnVmX29w
cy51bnBpbiBpbXBsZW1lbnRhdGlvbgorICoKKyAqIEBhdHRhY2g6IGF0dGFjaG1lbnQgdG8gdW5w
aW4KKyAqCisgKiBVbnBpbiBhIHByZXZpb3VzbHkgcGlubmVkIEJPIHRvIG1ha2UgaXQgbW92YWJs
ZSBhZ2Fpbi4KKyAqLworc3RhdGljIHZvaWQgYW1kZ3B1X2RtYV9idWZfdW5waW4oc3RydWN0IGRt
YV9idWZfYXR0YWNobWVudCAqYXR0YWNoKQoreworCXN0cnVjdCBkcm1fZ2VtX29iamVjdCAqb2Jq
ID0gYXR0YWNoLT5kbWFidWYtPnByaXY7CisJc3RydWN0IGFtZGdwdV9ibyAqYm8gPSBnZW1fdG9f
YW1kZ3B1X2JvKG9iaik7CisKKwlhbWRncHVfYm9fdW5waW4oYm8pOworfQorCisvKioKKyAqIGFt
ZGdwdV9kbWFfYnVmX21hcF9kbWFfYnVmIC0gJmRtYV9idWZfb3BzLm1hcF9kbWFfYnVmIGltcGxl
bWVudGF0aW9uCiAgKiBAYXR0YWNoOiBETUEtYnVmIGF0dGFjaG1lbnQKKyAqIEBkaXI6IERNQSBk
aXJlY3Rpb24KICAqCiAgKiBNYWtlcyBzdXJlIHRoYXQgdGhlIHNoYXJlZCBETUEgYnVmZmVyIGNh
biBiZSBhY2Nlc3NlZCBieSB0aGUgdGFyZ2V0IGRldmljZS4KICAqIEZvciBub3csIHNpbXBseSBw
aW5zIGl0IHRvIHRoZSBHVFQgZG9tYWluLCB3aGVyZSBpdCBzaG91bGQgYmUgYWNjZXNzaWJsZSBi
eQogICogYWxsIERNQSBkZXZpY2VzLgogICoKICAqIFJldHVybnM6Ci0gKiAwIG9uIHN1Y2Nlc3Mg
b3IgYSBuZWdhdGl2ZSBlcnJvciBjb2RlIG9uIGZhaWx1cmUuCisgKiBzZ190YWJsZSBmaWxsZWQg
d2l0aCB0aGUgRE1BIGFkZHJlc3NlcyB0byB1c2Ugb3IgRVJSX1BSVCB3aXRoIG5lZ2F0aXZlIGVy
cm9yCisgKiBjb2RlLgogICovCi1zdGF0aWMgaW50IGFtZGdwdV9kbWFfYnVmX21hcF9hdHRhY2go
c3RydWN0IGRtYV9idWYgKmRtYV9idWYsCi0JCQkJICAgICBzdHJ1Y3QgZG1hX2J1Zl9hdHRhY2ht
ZW50ICphdHRhY2gpCitzdGF0aWMgc3RydWN0IHNnX3RhYmxlICoKK2FtZGdwdV9kbWFfYnVmX21h
cF9kbWFfYnVmKHN0cnVjdCBkbWFfYnVmX2F0dGFjaG1lbnQgKmF0dGFjaCwKKwkJCSAgIGVudW0g
ZG1hX2RhdGFfZGlyZWN0aW9uIGRpcikKIHsKKwlzdHJ1Y3QgZG1hX2J1ZiAqZG1hX2J1ZiA9IGF0
dGFjaC0+ZG1hYnVmOwogCXN0cnVjdCBkcm1fZ2VtX29iamVjdCAqb2JqID0gZG1hX2J1Zi0+cHJp
djsKIAlzdHJ1Y3QgYW1kZ3B1X2JvICpibyA9IGdlbV90b19hbWRncHVfYm8ob2JqKTsKLQlzdHJ1
Y3QgYW1kZ3B1X2RldmljZSAqYWRldiA9IGFtZGdwdV90dG1fYWRldihiby0+dGJvLmJkZXYpOwor
CXN0cnVjdCBzZ190YWJsZSAqc2d0OwogCWxvbmcgcjsKIAotCXIgPSBkcm1fZ2VtX21hcF9hdHRh
Y2goZG1hX2J1ZiwgYXR0YWNoKTsKLQlpZiAocikKLQkJcmV0dXJuIHI7CisJaWYgKCFiby0+cGlu
X2NvdW50KSB7CisJCS8qIG1vdmUgYnVmZmVyIGludG8gR1RUICovCisJCXN0cnVjdCB0dG1fb3Bl
cmF0aW9uX2N0eCBjdHggPSB7IGZhbHNlLCBmYWxzZSB9OwogCi0JciA9IGFtZGdwdV9ib19yZXNl
cnZlKGJvLCBmYWxzZSk7Ci0JaWYgKHVubGlrZWx5KHIgIT0gMCkpCi0JCWdvdG8gZXJyb3JfZGV0
YWNoOwotCi0KLQlpZiAoYXR0YWNoLT5kZXYtPmRyaXZlciAhPSBhZGV2LT5kZXYtPmRyaXZlcikg
ewotCQkvKgotCQkgKiBXZSBvbmx5IGNyZWF0ZSBzaGFyZWQgZmVuY2VzIGZvciBpbnRlcm5hbCB1
c2UsIGJ1dCBpbXBvcnRlcnMKLQkJICogb2YgdGhlIGRtYWJ1ZiByZWx5IG9uIGV4Y2x1c2l2ZSBm
ZW5jZXMgZm9yIGltcGxpY2l0bHkKLQkJICogdHJhY2tpbmcgd3JpdGUgaGF6YXJkcy4gQXMgYW55
IG9mIHRoZSBjdXJyZW50IGZlbmNlcyBtYXkKLQkJICogY29ycmVzcG9uZCB0byBhIHdyaXRlLCB3
ZSBuZWVkIHRvIGNvbnZlcnQgYWxsIGV4aXN0aW5nCi0JCSAqIGZlbmNlcyBvbiB0aGUgcmVzZXJ2
YXRpb24gb2JqZWN0IGludG8gYSBzaW5nbGUgZXhjbHVzaXZlCi0JCSAqIGZlbmNlLgotCQkgKi8K
LQkJciA9IF9fcmVzZXJ2YXRpb25fb2JqZWN0X21ha2VfZXhjbHVzaXZlKGJvLT50Ym8ucmVzdik7
CisJCWFtZGdwdV9ib19wbGFjZW1lbnRfZnJvbV9kb21haW4oYm8sIEFNREdQVV9HRU1fRE9NQUlO
X0dUVCk7CisJCXIgPSB0dG1fYm9fdmFsaWRhdGUoJmJvLT50Ym8sICZiby0+cGxhY2VtZW50LCAm
Y3R4KTsKIAkJaWYgKHIpCi0JCQlnb3RvIGVycm9yX3VucmVzZXJ2ZTsKKwkJCXJldHVybiBFUlJf
UFRSKHIpOwogCX0KIAotCS8qIHBpbiBidWZmZXIgaW50byBHVFQgKi8KLQlyID0gYW1kZ3B1X2Jv
X3BpbihibywgQU1ER1BVX0dFTV9ET01BSU5fR1RUKTsKLQlpZiAocikKLQkJZ290byBlcnJvcl91
bnJlc2VydmU7CisJc2d0ID0gZHJtX3ByaW1lX3BhZ2VzX3RvX3NnKGJvLT50Ym8udHRtLT5wYWdl
cywgYm8tPnRiby5udW1fcGFnZXMpOworCWlmIChJU19FUlIoc2d0KSkKKwkJcmV0dXJuIHNndDsK
IAotCWlmIChhdHRhY2gtPmRldi0+ZHJpdmVyICE9IGFkZXYtPmRldi0+ZHJpdmVyKQotCQliby0+
cHJpbWVfc2hhcmVkX2NvdW50Kys7CisJaWYgKCFkbWFfbWFwX3NnX2F0dHJzKGF0dGFjaC0+ZGV2
LCBzZ3QtPnNnbCwgc2d0LT5uZW50cywgZGlyLAorCQkJICAgICAgRE1BX0FUVFJfU0tJUF9DUFVf
U1lOQykpCisJCWdvdG8gZXJyb3JfZnJlZTsKIAotZXJyb3JfdW5yZXNlcnZlOgotCWFtZGdwdV9i
b191bnJlc2VydmUoYm8pOworCXJldHVybiBzZ3Q7CiAKLWVycm9yX2RldGFjaDoKLQlpZiAocikK
LQkJZHJtX2dlbV9tYXBfZGV0YWNoKGRtYV9idWYsIGF0dGFjaCk7Ci0JcmV0dXJuIHI7CitlcnJv
cl9mcmVlOgorCXNnX2ZyZWVfdGFibGUoc2d0KTsKKwlrZnJlZShzZ3QpOworCXJldHVybiBFUlJf
UFRSKC1FTk9NRU0pOwogfQogCiAvKioKLSAqIGFtZGdwdV9kbWFfYnVmX21hcF9kZXRhY2ggLSAm
ZG1hX2J1Zl9vcHMuZGV0YWNoIGltcGxlbWVudGF0aW9uCi0gKiBAZG1hX2J1ZjogU2hhcmVkIERN
QSBidWZmZXIKKyAqIGFtZGdwdV9nZW1fdW5tYXBfZG1hX2J1ZiAtICZkbWFfYnVmX29wcy51bm1h
cF9kbWFfYnVmIGltcGxlbWVudGF0aW9uCiAgKiBAYXR0YWNoOiBETUEtYnVmIGF0dGFjaG1lbnQK
KyAqIEBzZ3Q6IHNnX3RhYmxlIHRvIHVubWFwCisgKiBAZGlyOiBETUEgZGlyZWN0aW9uCiAgKgog
ICogVGhpcyBpcyBjYWxsZWQgd2hlbiBhIHNoYXJlZCBETUEgYnVmZmVyIG5vIGxvbmdlciBuZWVk
cyB0byBiZSBhY2Nlc3NpYmxlIGJ5CiAgKiBhbm90aGVyIGRldmljZS4gRm9yIG5vdywgc2ltcGx5
IHVucGlucyB0aGUgYnVmZmVyIGZyb20gR1RULgogICovCi1zdGF0aWMgdm9pZCBhbWRncHVfZG1h
X2J1Zl9tYXBfZGV0YWNoKHN0cnVjdCBkbWFfYnVmICpkbWFfYnVmLAotCQkJCSAgICAgIHN0cnVj
dCBkbWFfYnVmX2F0dGFjaG1lbnQgKmF0dGFjaCkKK3N0YXRpYyB2b2lkIGFtZGdwdV9kbWFfYnVm
X3VubWFwX2RtYV9idWYoc3RydWN0IGRtYV9idWZfYXR0YWNobWVudCAqYXR0YWNoLAorCQkJCQkg
c3RydWN0IHNnX3RhYmxlICpzZ3QsCisJCQkJCSBlbnVtIGRtYV9kYXRhX2RpcmVjdGlvbiBkaXIp
CiB7Ci0Jc3RydWN0IGRybV9nZW1fb2JqZWN0ICpvYmogPSBkbWFfYnVmLT5wcml2OwotCXN0cnVj
dCBhbWRncHVfYm8gKmJvID0gZ2VtX3RvX2FtZGdwdV9ibyhvYmopOwotCXN0cnVjdCBhbWRncHVf
ZGV2aWNlICphZGV2ID0gYW1kZ3B1X3R0bV9hZGV2KGJvLT50Ym8uYmRldik7Ci0JaW50IHJldCA9
IDA7Ci0KLQlyZXQgPSBhbWRncHVfYm9fcmVzZXJ2ZShibywgdHJ1ZSk7Ci0JaWYgKHVubGlrZWx5
KHJldCAhPSAwKSkKLQkJZ290byBlcnJvcjsKLQotCWFtZGdwdV9ib191bnBpbihibyk7Ci0JaWYg
KGF0dGFjaC0+ZGV2LT5kcml2ZXIgIT0gYWRldi0+ZGV2LT5kcml2ZXIgJiYgYm8tPnByaW1lX3No
YXJlZF9jb3VudCkKLQkJYm8tPnByaW1lX3NoYXJlZF9jb3VudC0tOwotCWFtZGdwdV9ib191bnJl
c2VydmUoYm8pOworCWlmICghc2d0KQorCQlyZXR1cm47CiAKLWVycm9yOgotCWRybV9nZW1fbWFw
X2RldGFjaChkbWFfYnVmLCBhdHRhY2gpOworCWRtYV91bm1hcF9zZyhhdHRhY2gtPmRldiwgc2d0
LT5zZ2wsIHNndC0+bmVudHMsIGRpcik7CisJc2dfZnJlZV90YWJsZShzZ3QpOworCWtmcmVlKHNn
dCk7CiB9CiAKIC8qKgpAQCAtMzI0LDEwICszNzQsMTIgQEAgc3RhdGljIGludCBhbWRncHVfZG1h
X2J1Zl9iZWdpbl9jcHVfYWNjZXNzKHN0cnVjdCBkbWFfYnVmICpkbWFfYnVmLAogfQogCiBjb25z
dCBzdHJ1Y3QgZG1hX2J1Zl9vcHMgYW1kZ3B1X2RtYWJ1Zl9vcHMgPSB7Ci0JLmF0dGFjaCA9IGFt
ZGdwdV9kbWFfYnVmX21hcF9hdHRhY2gsCi0JLmRldGFjaCA9IGFtZGdwdV9kbWFfYnVmX21hcF9k
ZXRhY2gsCi0JLm1hcF9kbWFfYnVmID0gZHJtX2dlbV9tYXBfZG1hX2J1ZiwKLQkudW5tYXBfZG1h
X2J1ZiA9IGRybV9nZW1fdW5tYXBfZG1hX2J1ZiwKKwkuYXR0YWNoID0gYW1kZ3B1X2RtYV9idWZf
YXR0YWNoLAorCS5kZXRhY2ggPSBhbWRncHVfZG1hX2J1Zl9kZXRhY2gsCisJLnBpbiA9IGFtZGdw
dV9kbWFfYnVmX3BpbiwKKwkudW5waW4gPSBhbWRncHVfZG1hX2J1Zl91bnBpbiwKKwkubWFwX2Rt
YV9idWYgPSBhbWRncHVfZG1hX2J1Zl9tYXBfZG1hX2J1ZiwKKwkudW5tYXBfZG1hX2J1ZiA9IGFt
ZGdwdV9kbWFfYnVmX3VubWFwX2RtYV9idWYsCiAJLnJlbGVhc2UgPSBkcm1fZ2VtX2RtYWJ1Zl9y
ZWxlYXNlLAogCS5iZWdpbl9jcHVfYWNjZXNzID0gYW1kZ3B1X2RtYV9idWZfYmVnaW5fY3B1X2Fj
Y2VzcywKIAkubW1hcCA9IGRybV9nZW1fZG1hYnVmX21tYXAsCmRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfZG1hX2J1Zi5oIGIvZHJpdmVycy9ncHUvZHJtL2Ft
ZC9hbWRncHUvYW1kZ3B1X2RtYV9idWYuaAppbmRleCBjNzA1NmNiZTg2ODUuLmYxNTIyMjkyODE0
YyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2RtYV9idWYu
aAorKysgYi9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfZG1hX2J1Zi5oCkBAIC0y
NSw3ICsyNSw2IEBACiAKICNpbmNsdWRlIDxkcm0vZHJtX2dlbS5oPgogCi1zdHJ1Y3Qgc2dfdGFi
bGUgKmFtZGdwdV9nZW1fcHJpbWVfZ2V0X3NnX3RhYmxlKHN0cnVjdCBkcm1fZ2VtX29iamVjdCAq
b2JqKTsKIHN0cnVjdCBkcm1fZ2VtX29iamVjdCAqCiBhbWRncHVfZ2VtX3ByaW1lX2ltcG9ydF9z
Z190YWJsZShzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LAogCQkJCSBzdHJ1Y3QgZG1hX2J1Zl9hdHRh
Y2htZW50ICphdHRhY2gsCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9h
bWRncHVfZHJ2LmMgYi9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfZHJ2LmMKaW5k
ZXggMWYzOGQ2ZmMxZmUzLi4wZTlmZTEyMWRmOTAgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9hbWQvYW1kZ3B1L2FtZGdwdV9kcnYuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdw
dS9hbWRncHVfZHJ2LmMKQEAgLTEzMzMsNyArMTMzMyw2IEBAIHN0YXRpYyBzdHJ1Y3QgZHJtX2Ry
aXZlciBrbXNfZHJpdmVyID0gewogCS5nZW1fcHJpbWVfZXhwb3J0ID0gYW1kZ3B1X2dlbV9wcmlt
ZV9leHBvcnQsCiAJLmdlbV9wcmltZV9pbXBvcnQgPSBhbWRncHVfZ2VtX3ByaW1lX2ltcG9ydCwK
IAkuZ2VtX3ByaW1lX3Jlc19vYmogPSBhbWRncHVfZ2VtX3ByaW1lX3Jlc19vYmosCi0JLmdlbV9w
cmltZV9nZXRfc2dfdGFibGUgPSBhbWRncHVfZ2VtX3ByaW1lX2dldF9zZ190YWJsZSwKIAkuZ2Vt
X3ByaW1lX2ltcG9ydF9zZ190YWJsZSA9IGFtZGdwdV9nZW1fcHJpbWVfaW1wb3J0X3NnX3RhYmxl
LAogCS5nZW1fcHJpbWVfdm1hcCA9IGFtZGdwdV9nZW1fcHJpbWVfdm1hcCwKIAkuZ2VtX3ByaW1l
X3Z1bm1hcCA9IGFtZGdwdV9nZW1fcHJpbWVfdnVubWFwLApkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X29iamVjdC5jIGIvZHJpdmVycy9ncHUvZHJtL2FtZC9h
bWRncHUvYW1kZ3B1X29iamVjdC5jCmluZGV4IDMwNDkzNDI5ODUxZS4uYWZkZTA2OTQ3ZmY0IDEw
MDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfb2JqZWN0LmMKKysr
IGIvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X29iamVjdC5jCkBAIC0zMSw2ICsz
MSw3IEBACiAgKi8KICNpbmNsdWRlIDxsaW51eC9saXN0Lmg+CiAjaW5jbHVkZSA8bGludXgvc2xh
Yi5oPgorI2luY2x1ZGUgPGxpbnV4L2RtYS1idWYuaD4KICNpbmNsdWRlIDxkcm0vZHJtUC5oPgog
I2luY2x1ZGUgPGRybS9hbWRncHVfZHJtLmg+CiAjaW5jbHVkZSA8ZHJtL2RybV9jYWNoZS5oPgpA
QCAtMTE5OCw2ICsxMTk5LDEwIEBAIHZvaWQgYW1kZ3B1X2JvX21vdmVfbm90aWZ5KHN0cnVjdCB0
dG1fYnVmZmVyX29iamVjdCAqYm8sCiAKIAlhbWRncHVfYm9fa3VubWFwKGFibyk7CiAKKwlpZiAo
YWJvLT5nZW1fYmFzZS5kbWFfYnVmICYmICFhYm8tPmdlbV9iYXNlLmltcG9ydF9hdHRhY2ggJiYK
KwkgICAgYm8tPm1lbS5tZW1fdHlwZSAhPSBUVE1fUExfU1lTVEVNKQorCQlkbWFfYnVmX2ludmFs
aWRhdGVfbWFwcGluZ3MoYWJvLT5nZW1fYmFzZS5kbWFfYnVmKTsKKwogCS8qIHJlbWVtYmVyIHRo
ZSBldmljdGlvbiAqLwogCWlmIChldmljdCkKIAkJYXRvbWljNjRfaW5jKCZhZGV2LT5udW1fZXZp
Y3Rpb25zKTsKLS0gCjIuMTcuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtZ2Z4
