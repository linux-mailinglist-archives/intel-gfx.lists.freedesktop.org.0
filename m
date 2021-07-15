Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A5DA3CAF46
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Jul 2021 00:39:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E1BCC6E8C2;
	Thu, 15 Jul 2021 22:39:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pg1-x52d.google.com (mail-pg1-x52d.google.com
 [IPv6:2607:f8b0:4864:20::52d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3E5FB6E8BE
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Jul 2021 22:39:17 +0000 (UTC)
Received: by mail-pg1-x52d.google.com with SMTP id u14so8027286pga.11
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Jul 2021 15:39:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=8pTOymRDqWskKnKmtLphb8tat5i85/mb3yEa5IkiVBc=;
 b=MWtlj8+O5xBkZ9mHU7RLV54ZZJ7p51SLZ7x18vbvixWheF2KXR0D4dLpDphMy3P/JN
 SiDgc7yuizXGzsyuiis75qRnFL6RLj9bPVB8vDN2hKGACqDMPbgEpZp/QHzSRvmMUbBC
 dNhi2gE6jcTdIQdt4LImKt+DqaypAfBgwyotLGK7ecTHW5/bexuYyG17inNueE3JR74G
 rs4NBTZnjEffIDX5rdLLmzbUffOCUziXPPqpegDVet4JP8x5Uqojli4z/7ANean+gW83
 3GpObVRqLN4n9jX0snZvInxZ4+NfUV/E6ESshUjQFkZ1YwRhEHp+5FB31PxCEmKN34Gq
 toTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=8pTOymRDqWskKnKmtLphb8tat5i85/mb3yEa5IkiVBc=;
 b=oVcrqR6SzWKYeJOp7HMN+ab0A6ayZLIYd6gcbJL4ph8JwXlOAI+QwQpB7ZzZp5gl10
 kPvR5RiYj8S6CoJGtwiF/Ucl0J7wZ3Wu+7yp8swL1hUz7y+1l/Dpd7Fm0YSxjKtiQVKK
 m7wnxvKZSJxizZJmGdvTHIqmRablsFPwrI3UnTY1ultv9BmwRyiJhyjppzELmUlaENHv
 +9EB/t/8RuiQ//1T2M+zdXfgm0oizlAyvJfi9fGp7NBNvKgVNhAVDkeFgxGssM0ZE0GU
 T1miJzubpIMLVYWk1owDbEItjDq6PWTLhpEN5uwvhWiLlHAPoY2gatLLTEXNYHt/5giq
 YCdw==
X-Gm-Message-State: AOAM533DhqEMQl9105XUnKzpXka1M+r/4GLE5Ovr+iYw8HKwRddY1Ert
 0OEJHygXmVcWV5ykyQDCC/Hnjz38PlUNMQ==
X-Google-Smtp-Source: ABdhPJyj9IH5gQGCAb5nrGiMdhg576lPjnEyY0Qh9FnZqwvuCU7aUd1ZO2OrdSqt7GiDyl0GxB1lNg==
X-Received: by 2002:aa7:8d5a:0:b029:302:e2cb:6d79 with SMTP id
 s26-20020aa78d5a0000b0290302e2cb6d79mr6845687pfe.71.1626388756586; 
 Thu, 15 Jul 2021 15:39:16 -0700 (PDT)
Received: from omlet.com ([134.134.137.87])
 by smtp.gmail.com with ESMTPSA id ft7sm9959459pjb.32.2021.07.15.15.39.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 15 Jul 2021 15:39:16 -0700 (PDT)
From: Jason Ekstrand <jason@jlekstrand.net>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Thu, 15 Jul 2021 17:38:58 -0500
Message-Id: <20210715223900.1840576-6-jason@jlekstrand.net>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210715223900.1840576-1-jason@jlekstrand.net>
References: <20210715223900.1840576-1-jason@jlekstrand.net>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 5/7] drm/i915/gem/ttm: Respect the objection
 region in placement_from_obj
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
Cc: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

V2hlbmV2ZXIgd2UgaGFkIGEgdXNlciBvYmplY3QgKG5fcGxhY2VtZW50cyA+IDApLCB3ZSB3ZXJl
IGlnbm9yaW5nCm9iai0+bW0ucmVnaW9uIGFuZCBhbHdheXMgcHV0dGluZyBvYmotPnBsYWNlbWVu
dHNbMF0gYXMgdGhlIHJlcXVlc3RlZApyZWdpb24uICBGb3IgTE1FTStTTUVNIG9iamVjdHMsIHRo
aXMgd2FzIGNhdXNpbmcgdGhlbSB0byBnZXQgc2hvdmVkIGludG8KTE1FTSBvbiBldmVyeSBpOTE1
X3R0bV9nZXRfcGFnZXMoKSBldmVuIHdoZW4gU01FTSB3YXMgcmVxdWVzdGVkIGJ5LCBzYXksCmk5
MTVfZ2VtX29iamVjdF9taWdyYXRlKCkuCgpTaWduZWQtb2ZmLWJ5OiBKYXNvbiBFa3N0cmFuZCA8
amFzb25Aamxla3N0cmFuZC5uZXQ+CkNjOiBUaG9tYXMgSGVsbHN0csO2bSA8dGhvbWFzLmhlbGxz
dHJvbUBsaW51eC5pbnRlbC5jb20+CkNjOiBNYXR0aGV3IEF1bGQgPG1hdHRoZXcuYXVsZEBpbnRl
bC5jb20+CkNjOiBNYWFydGVuIExhbmtob3JzdCA8bWFhcnRlbi5sYW5raG9yc3RAbGludXguaW50
ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV90dG0uYyB8IDMg
Ky0tCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDIgZGVsZXRpb25zKC0pCgpkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3R0bS5jIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3R0bS5jCmluZGV4IGQzMGYyNzRjMzI5YzcuLjU5
ODVlOTk0ZDU2Y2YgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dl
bV90dG0uYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fdHRtLmMKQEAg
LTE1MCw4ICsxNTAsNyBAQCBpOTE1X3R0bV9wbGFjZW1lbnRfZnJvbV9vYmooY29uc3Qgc3RydWN0
IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaiwKIAl1bnNpZ25lZCBpbnQgaTsKIAogCXBsYWNlbWVu
dC0+bnVtX3BsYWNlbWVudCA9IDE7Ci0JaTkxNV90dG1fcGxhY2VfZnJvbV9yZWdpb24obnVtX2Fs
bG93ZWQgPyBvYmotPm1tLnBsYWNlbWVudHNbMF0gOgotCQkJCSAgIG9iai0+bW0ucmVnaW9uLCBy
ZXF1ZXN0ZWQsIGZsYWdzKTsKKwlpOTE1X3R0bV9wbGFjZV9mcm9tX3JlZ2lvbihvYmotPm1tLnJl
Z2lvbiwgcmVxdWVzdGVkLCBmbGFncyk7CiAKIAkvKiBDYWNoZSB0aGlzIG9uIG9iamVjdD8gKi8K
IAlwbGFjZW1lbnQtPm51bV9idXN5X3BsYWNlbWVudCA9IG51bV9hbGxvd2VkOwotLSAKMi4zMS4x
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
