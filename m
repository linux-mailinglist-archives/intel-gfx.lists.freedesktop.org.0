Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 484CE38F4A5
	for <lists+intel-gfx@lfdr.de>; Mon, 24 May 2021 23:00:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 26B606E953;
	Mon, 24 May 2021 21:00:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pg1-x532.google.com (mail-pg1-x532.google.com
 [IPv6:2607:f8b0:4864:20::532])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 168936E955
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 May 2021 21:00:06 +0000 (UTC)
Received: by mail-pg1-x532.google.com with SMTP id e22so5264714pgv.10
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 May 2021 14:00:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=GEI1C6i8BkmXab/e/DARv5l0X9UQ4/4Roo0c4c+CbmM=;
 b=WtOEvzCBa9GuoRNl2Mwa6M1tZtIRfup2tPy9pz+FBLDehfxATNaCPvFznXaab2uIZ0
 IYHGCh61hLsxFQYkAbYeHL5i//ra2oID/DFYXzfr+YR0RMomrZedBhqyGsdP6X9//6nZ
 MVEBcjZwqN8RpLhaazOtGvdosKj47yDbLXu1Q+lo/hfTDgOtNGHdGfZE/gf5rNytbRRt
 3bBtxne/QIkgifOhnvltIVtTpdHagyckUHXeBZq/iBmUVFSQa+yrarcMvdONkKjceHzA
 wlfJcauQRfy223cIfSc5MmxChgS1zU4oPvmJtrjuWnxBlFAhKsPrMqgDzYmPuLztEp03
 vjZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=GEI1C6i8BkmXab/e/DARv5l0X9UQ4/4Roo0c4c+CbmM=;
 b=CEveda9ljnC6odyrCOJdjdMH8KDh4bvr7cXqve2YUrmkJyNNwsw1exFTWS8AMRCdG8
 NqP8VCaWHqEawyDXgXY1V8YmlLnq0/a6gGt8a5CDMLuvV46GymGUb7hdjrkK6S0gDu3g
 9NzFz19KAoGCScynhzbJtJqIMrks7Ippf1Jc9S366gyZEnIBNyAGJu7aTo7is3dz7E9O
 HnHVObaynW9k/EY/HFo6JsfnVafp5YOUdfvl0oFeyPajMB6cToR+vk7bETPZqI0BpmXh
 nWbuRmBgG3Ej4di9d4Bs1JNe/jB54ecX9HsCIiLssydBoPsjTSyyrijjZWSREUGoDOlY
 YoWQ==
X-Gm-Message-State: AOAM532OwcV8pCWdYEhciyJP8O/vi0UVdKlrAFJbCTLwgVueGMMrKJQ0
 EOecWPIBXf+DUqHuBgy/kenzgw==
X-Google-Smtp-Source: ABdhPJxYdK//zTGTA7iwS2YhdLwIgOuYxBAkydScQ8Iqa1vwZTfW8/t5sSlPt8bSA/wZawKPa7vETQ==
X-Received: by 2002:a62:81c5:0:b029:2d9:367b:b84a with SMTP id
 t188-20020a6281c50000b02902d9367bb84amr26790841pfd.32.1621890005431; 
 Mon, 24 May 2021 14:00:05 -0700 (PDT)
Received: from omlet.com ([134.134.139.76])
 by smtp.gmail.com with ESMTPSA id c195sm12354958pfb.144.2021.05.24.14.00.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 24 May 2021 14:00:04 -0700 (PDT)
From: Jason Ekstrand <jason@jlekstrand.net>
To: dri-devel@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Date: Mon, 24 May 2021 15:59:49 -0500
Message-Id: <20210524205954.872814-2-jason@jlekstrand.net>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210524205954.872814-1-jason@jlekstrand.net>
References: <20210524205954.872814-1-jason@jlekstrand.net>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/6] dma-buf: add dma_fence_array_for_each (v2)
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
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
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
OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+Ci0tLQogZHJpdmVy
cy9kbWEtYnVmL2RtYS1mZW5jZS1hcnJheS5jIHwgMjcgKysrKysrKysrKysrKysrKysrKysrKysr
KysrCiBpbmNsdWRlL2xpbnV4L2RtYS1mZW5jZS1hcnJheS5oICAgfCAxNyArKysrKysrKysrKysr
KysrKwogMiBmaWxlcyBjaGFuZ2VkLCA0NCBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJp
dmVycy9kbWEtYnVmL2RtYS1mZW5jZS1hcnJheS5jIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5j
ZS1hcnJheS5jCmluZGV4IGQzZmJkOTUwYmU5NDQuLjJhYzFhZmM2OTdkMGYgMTAwNjQ0Ci0tLSBh
L2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UtYXJyYXkuYworKysgYi9kcml2ZXJzL2RtYS1idWYv
ZG1hLWZlbmNlLWFycmF5LmMKQEAgLTIwMSwzICsyMDEsMzAgQEAgYm9vbCBkbWFfZmVuY2VfbWF0
Y2hfY29udGV4dChzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSwgdTY0IGNvbnRleHQpCiAJcmV0dXJu
IHRydWU7CiB9CiBFWFBPUlRfU1lNQk9MKGRtYV9mZW5jZV9tYXRjaF9jb250ZXh0KTsKKworc3Ry
dWN0IGRtYV9mZW5jZSAqZG1hX2ZlbmNlX2FycmF5X2ZpcnN0KHN0cnVjdCBkbWFfZmVuY2UgKmhl
YWQpCit7CisJc3RydWN0IGRtYV9mZW5jZV9hcnJheSAqYXJyYXk7CisKKwlpZiAoIWhlYWQpCisJ
CXJldHVybiBOVUxMOworCisJYXJyYXkgPSB0b19kbWFfZmVuY2VfYXJyYXkoaGVhZCk7CisJaWYg
KCFhcnJheSkKKwkJcmV0dXJuIGhlYWQ7CisKKwlyZXR1cm4gYXJyYXktPmZlbmNlc1swXTsKK30K
K0VYUE9SVF9TWU1CT0woZG1hX2ZlbmNlX2FycmF5X2ZpcnN0KTsKKworc3RydWN0IGRtYV9mZW5j
ZSAqZG1hX2ZlbmNlX2FycmF5X25leHQoc3RydWN0IGRtYV9mZW5jZSAqaGVhZCwKKwkJCQkgICAg
ICAgdW5zaWduZWQgaW50IGluZGV4KQoreworCXN0cnVjdCBkbWFfZmVuY2VfYXJyYXkgKmFycmF5
ID0gdG9fZG1hX2ZlbmNlX2FycmF5KGhlYWQpOworCisJaWYgKCFhcnJheSB8fCBpbmRleCA+PSBh
cnJheS0+bnVtX2ZlbmNlcykKKwkJcmV0dXJuIE5VTEw7CisKKwlyZXR1cm4gYXJyYXktPmZlbmNl
c1tpbmRleF07Cit9CitFWFBPUlRfU1lNQk9MKGRtYV9mZW5jZV9hcnJheV9uZXh0KTsKZGlmZiAt
LWdpdCBhL2luY2x1ZGUvbGludXgvZG1hLWZlbmNlLWFycmF5LmggYi9pbmNsdWRlL2xpbnV4L2Rt
YS1mZW5jZS1hcnJheS5oCmluZGV4IDMwM2RkNzEyMjIwZmQuLjU4OGFjODA4OWRkNjEgMTAwNjQ0
Ci0tLSBhL2luY2x1ZGUvbGludXgvZG1hLWZlbmNlLWFycmF5LmgKKysrIGIvaW5jbHVkZS9saW51
eC9kbWEtZmVuY2UtYXJyYXkuaApAQCAtNzQsNiArNzQsMTkgQEAgdG9fZG1hX2ZlbmNlX2FycmF5
KHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlKQogCXJldHVybiBjb250YWluZXJfb2YoZmVuY2UsIHN0
cnVjdCBkbWFfZmVuY2VfYXJyYXksIGJhc2UpOwogfQogCisvKioKKyAqIGRtYV9mZW5jZV9hcnJh
eV9mb3JfZWFjaCAtIGl0ZXJhdGUgb3ZlciBhbGwgZmVuY2VzIGluIGFycmF5CisgKiBAZmVuY2U6
IGN1cnJlbnQgZmVuY2UKKyAqIEBpbmRleDogaW5kZXggaW50byB0aGUgYXJyYXkKKyAqIEBoZWFk
OiBwb3RlbnRpYWwgZG1hX2ZlbmNlX2FycmF5IG9iamVjdAorICoKKyAqIFRlc3QgaWYgQGFycmF5
IGlzIGEgZG1hX2ZlbmNlX2FycmF5IG9iamVjdCBhbmQgaWYgeWVzIGl0ZXJhdGUgb3ZlciBhbGwg
ZmVuY2VzCisgKiBpbiB0aGUgYXJyYXkuIElmIG5vdCBqdXN0IGl0ZXJhdGUgb3ZlciB0aGUgZmVu
Y2UgaW4gQGFycmF5IGl0c2VsZi4KKyAqLworI2RlZmluZSBkbWFfZmVuY2VfYXJyYXlfZm9yX2Vh
Y2goZmVuY2UsIGluZGV4LCBoZWFkKQkJCVwKKwlmb3IgKGluZGV4ID0gMCwgZmVuY2UgPSBkbWFf
ZmVuY2VfYXJyYXlfZmlyc3QoaGVhZCk7IGZlbmNlOwlcCisJICAgICArKyhpbmRleCksIGZlbmNl
ID0gZG1hX2ZlbmNlX2FycmF5X25leHQoaGVhZCwgaW5kZXgpKQorCiBzdHJ1Y3QgZG1hX2ZlbmNl
X2FycmF5ICpkbWFfZmVuY2VfYXJyYXlfY3JlYXRlKGludCBudW1fZmVuY2VzLAogCQkJCQkgICAg
ICAgc3RydWN0IGRtYV9mZW5jZSAqKmZlbmNlcywKIAkJCQkJICAgICAgIHU2NCBjb250ZXh0LCB1
bnNpZ25lZCBzZXFubywKQEAgLTgxLDQgKzk0LDggQEAgc3RydWN0IGRtYV9mZW5jZV9hcnJheSAq
ZG1hX2ZlbmNlX2FycmF5X2NyZWF0ZShpbnQgbnVtX2ZlbmNlcywKIAogYm9vbCBkbWFfZmVuY2Vf
bWF0Y2hfY29udGV4dChzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSwgdTY0IGNvbnRleHQpOwogCitz
dHJ1Y3QgZG1hX2ZlbmNlICpkbWFfZmVuY2VfYXJyYXlfZmlyc3Qoc3RydWN0IGRtYV9mZW5jZSAq
aGVhZCk7CitzdHJ1Y3QgZG1hX2ZlbmNlICpkbWFfZmVuY2VfYXJyYXlfbmV4dChzdHJ1Y3QgZG1h
X2ZlbmNlICpoZWFkLAorCQkJCSAgICAgICB1bnNpZ25lZCBpbnQgaW5kZXgpOworCiAjZW5kaWYg
LyogX19MSU5VWF9ETUFfRkVOQ0VfQVJSQVlfSCAqLwotLSAKMi4zMS4xCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
