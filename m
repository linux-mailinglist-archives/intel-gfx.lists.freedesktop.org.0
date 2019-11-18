Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 09A15100277
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Nov 2019 11:35:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6FB2689D9A;
	Mon, 18 Nov 2019 10:35:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com
 [IPv6:2a00:1450:4864:20::441])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7330189D7D
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Nov 2019 10:35:46 +0000 (UTC)
Received: by mail-wr1-x441.google.com with SMTP id i12so18797239wro.5
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Nov 2019 02:35:46 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=3Arjdx6BTpMTXW8TBPIMgVl/if98l4HWaSeTJB2xI84=;
 b=etgxg6M+0cDggtbtlmSfvdIwAs5JsOwtcYJLxgDEbRS5w3dsvOBcRdCYv+vjgFVJiO
 TT3nfqyPb+1kpxKmH33MtWj5SMhy5w6DvKGvFy6V8Ve8u2hjs/BG0DznOf7bCqaXD+LX
 v/qSltmPT4GqLorXKIqKYLaFQAr0SOAfBTBlsjWEuEdHw8/bN/PmZWDkakoWmaKZ2LfC
 Yq8zEgPC8/qkQk/B4rmXO/NvNnrqj1bK1IUMxIjlCpdoU3uRLDqgX1TMG1C8Tax0Z1fQ
 z36Ib4IeRMcufL6eGdZjHg6tqWMNa9rrxfytbTu0ajHxv/mCqyyhcLX+IntIusqPgUuQ
 1J0Q==
X-Gm-Message-State: APjAAAU9XmGTLKLsFMy2U9noX6TNT3ArHhEilRffnNU9sMq6oA/B+ju/
 d0aNn9zb+vIondLUiuS6032Fhw==
X-Google-Smtp-Source: APXvYqxAhg5UoK72Hz48l8L66JhO/0fHPUY5LU+H0eGRu5iwK50dJnV4oyV3aD5Rj/uoUemtS9YXcA==
X-Received: by 2002:a5d:6706:: with SMTP id o6mr8573693wru.54.1574073345093;
 Mon, 18 Nov 2019 02:35:45 -0800 (PST)
Received: from phenom.ffwll.local (212-51-149-96.fiber7.init7.net.
 [212.51.149.96])
 by smtp.gmail.com with ESMTPSA id j2sm22749200wrt.61.2019.11.18.02.35.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 18 Nov 2019 02:35:44 -0800 (PST)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Mon, 18 Nov 2019 11:35:22 +0100
Message-Id: <20191118103536.17675-2-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191118103536.17675-1-daniel.vetter@ffwll.ch>
References: <20191118103536.17675-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=3Arjdx6BTpMTXW8TBPIMgVl/if98l4HWaSeTJB2xI84=;
 b=f75GY31PtMmJgvDguzoF4VK6ST8pAAK0xk3f9DA3aDZdXaJo5Xrfz6H3LsBxTe7BB0
 +LoY31LmGLiju3cNkrgcvtILIQKpHKJprdwTFnEgX27ZpBk4NLFZ9QF/QiEsNayDInbw
 8Hh1QJCDt8Vm16vqG96MiNYaY2pwyibvPXejk=
Subject: [Intel-gfx] [PATCH 01/15] drm/tegra: Map cmdbuf once for reloc
 processing
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
Cc: linux-tegra@vger.kernel.org, Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QSBmZXcgcmVhc29ucyB0byBkcm9wIGttYXA6CgotIEZvciBuYXRpdmUgb2JqZWN0cyBhbGwgd2Ug
ZG8gaXMgbG9vayBhdCBvYmotPnZhZGRyIGFueXdheSwgc28gbWlnaHQKICBhcyB3ZWxsIG5vdCBj
YWxsIGZ1bmN0aW9ucyBmb3IgZXZlcnkgcGFnZS4KCi0gUmVsb2MtcHJvY2Vzc2luZyBvbiBkbWEt
YnVmIGlzIC4uLiBxdWVzdGlvbmFibGUuCgotIFBsdXMgbW9zdCBkbWEtYnVmIHRoYXQgYm90aGVy
IGtlcm5lbCBjcHUgbW1hcHMgZ2l2ZSB5b3UgYXQgbGVhc3QKICB2bWFwLCBtdWNoIGxlc3Mga21h
cHMuIEFuZCBhbGwgdGhlIG9uZXMgcmVsZXZhbnQgZm9yIGFybS1zb2MgYXJlCiAgYWdhaW4gZG9p
bmcgYSBvYmotPnZhZGRyIGdhbWUgYW55d2F5LCB0aGVyZSdzIG5vIHJlYWwga21hcCBnb2luZyBv
bgogIG9uIGFybSBpdCBzZWVtcy4KClBsdXMgdGhpcyBzZWVtcyB0byBiZSB0aGUgb25seSByZWFs
IGluLXRyZWUgdXNlciBvZiBkbWFfYnVmX2ttYXAsIGFuZApJJ2QgbGlrZSB0byBnZXQgcmlkIG9m
IHRoYXQuCgpTaWduZWQtb2ZmLWJ5OiBEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGludGVs
LmNvbT4KQ2M6IFRoaWVycnkgUmVkaW5nIDx0aGllcnJ5LnJlZGluZ0BnbWFpbC5jb20+CkNjOiBs
aW51eC10ZWdyYUB2Z2VyLmtlcm5lbC5vcmcKLS0tCiBkcml2ZXJzL2dwdS9ob3N0MXgvam9iLmMg
fCAyMSArKysrKysrLS0tLS0tLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCA3IGluc2VydGlvbnMo
KyksIDE0IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2hvc3QxeC9qb2Iu
YyBiL2RyaXZlcnMvZ3B1L2hvc3QxeC9qb2IuYwppbmRleCAyNWNhNTRkZThmYzUuLjYwYjJmZWRk
MDA2MSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvaG9zdDF4L2pvYi5jCisrKyBiL2RyaXZlcnMv
Z3B1L2hvc3QxeC9qb2IuYwpAQCAtMjQ0LDggKzI0NCw3IEBAIHN0YXRpYyB1bnNpZ25lZCBpbnQg
cGluX2pvYihzdHJ1Y3QgaG9zdDF4ICpob3N0LCBzdHJ1Y3QgaG9zdDF4X2pvYiAqam9iKQogCiBz
dGF0aWMgaW50IGRvX3JlbG9jcyhzdHJ1Y3QgaG9zdDF4X2pvYiAqam9iLCBzdHJ1Y3QgaG9zdDF4
X2pvYl9nYXRoZXIgKmcpCiB7Ci0JdTMyIGxhc3RfcGFnZSA9IH4wOwotCXZvaWQgKmNtZGJ1Zl9w
YWdlX2FkZHIgPSBOVUxMOworCXZvaWQgKmNtZGJ1Zl9hZGRyID0gTlVMTDsKIAlzdHJ1Y3QgaG9z
dDF4X2JvICpjbWRidWYgPSBnLT5ibzsKIAl1bnNpZ25lZCBpbnQgaTsKIApAQCAtMjY3LDI4ICsy
NjYsMjIgQEAgc3RhdGljIGludCBkb19yZWxvY3Moc3RydWN0IGhvc3QxeF9qb2IgKmpvYiwgc3Ry
dWN0IGhvc3QxeF9qb2JfZ2F0aGVyICpnKQogCQkJZ290byBwYXRjaF9yZWxvYzsKIAkJfQogCi0J
CWlmIChsYXN0X3BhZ2UgIT0gcmVsb2MtPmNtZGJ1Zi5vZmZzZXQgPj4gUEFHRV9TSElGVCkgewot
CQkJaWYgKGNtZGJ1Zl9wYWdlX2FkZHIpCi0JCQkJaG9zdDF4X2JvX2t1bm1hcChjbWRidWYsIGxh
c3RfcGFnZSwKLQkJCQkJCSBjbWRidWZfcGFnZV9hZGRyKTsKKwkJaWYgKCFjbWRidWZfYWRkcikg
eworCQkJY21kYnVmX2FkZHIgPSBob3N0MXhfYm9fbW1hcChjbWRidWYpOwogCi0JCQljbWRidWZf
cGFnZV9hZGRyID0gaG9zdDF4X2JvX2ttYXAoY21kYnVmLAotCQkJCQlyZWxvYy0+Y21kYnVmLm9m
ZnNldCA+PiBQQUdFX1NISUZUKTsKLQkJCWxhc3RfcGFnZSA9IHJlbG9jLT5jbWRidWYub2Zmc2V0
ID4+IFBBR0VfU0hJRlQ7Ci0KLQkJCWlmICh1bmxpa2VseSghY21kYnVmX3BhZ2VfYWRkcikpIHsK
KwkJCWlmICh1bmxpa2VseSghY21kYnVmX2FkZHIpKSB7CiAJCQkJcHJfZXJyKCJDb3VsZCBub3Qg
bWFwIGNtZGJ1ZiBmb3IgcmVsb2NhdGlvblxuIik7CiAJCQkJcmV0dXJuIC1FTk9NRU07CiAJCQl9
CiAJCX0KIAotCQl0YXJnZXQgPSBjbWRidWZfcGFnZV9hZGRyICsgKHJlbG9jLT5jbWRidWYub2Zm
c2V0ICYgflBBR0VfTUFTSyk7CisJCXRhcmdldCA9IGNtZGJ1Zl9hZGRyICsgcmVsb2MtPmNtZGJ1
Zi5vZmZzZXQ7CiBwYXRjaF9yZWxvYzoKIAkJKnRhcmdldCA9IHJlbG9jX2FkZHI7CiAJfQogCi0J
aWYgKGNtZGJ1Zl9wYWdlX2FkZHIpCi0JCWhvc3QxeF9ib19rdW5tYXAoY21kYnVmLCBsYXN0X3Bh
Z2UsIGNtZGJ1Zl9wYWdlX2FkZHIpOworCWlmIChjbWRidWZfYWRkcikKKwkJaG9zdDF4X2JvX211
bm1hcChjbWRidWYsIGNtZGJ1Zl9hZGRyKTsKIAogCXJldHVybiAwOwogfQotLSAKMi4yNC4wCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
