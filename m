Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A5578DF4C
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Aug 2019 22:50:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 537C56E846;
	Wed, 14 Aug 2019 20:50:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vk1-xa49.google.com (mail-vk1-xa49.google.com
 [IPv6:2607:f8b0:4864:20::a49])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 32C056E48C
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Aug 2019 10:45:46 +0000 (UTC)
Received: by mail-vk1-xa49.google.com with SMTP id l7so27271028vkm.21
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Aug 2019 03:45:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=suzgW5VW6Ng90prgpz/ghvx/fVcho6Pl4urYZ0d0Q0c=;
 b=WIdznrgv7LJskCTwy7SKn0iP+jvX+B/KQYz5u7/mSkvb2G17yevhK7czqUjt2MGVC1
 BH1YnGUP75Gnc2FT+eHGH4WIDU1AAMMTxrGtDZ5BHR6KwyOf5r1jdbC36d+9EUjbrOo3
 oer3dKjreC9ZDLdEoX8nANbYQjb4Sq1TJCYRBe7B2Dt24zCC4vC5m1cj5vWh1tkEHv0x
 Kodklq9/iZlhpigsUhfn+GpSKgjMrPYnzXqm6WJBl4wFbxHy4w/QhgdNHmt3ZjCaIKiW
 paxcdlUF0cp2IBO0jMhAXzRIfSjuLx2pLex/y6wR+2MEaQelYGtXY5Z8zgQVr1zke5CL
 k1fQ==
X-Gm-Message-State: APjAAAWAh/g/rZ1MO5g1D9gotzUrcnO2+aVdjWlEjyB57YP3k+08Xl71
 PzfvZe3aNr0+rfZ6LdEiEu8xbBxsfKY=
X-Google-Smtp-Source: APXvYqy2T8ZzD5xkHgUSqk7raFy1jd0urGCFCByhxKXfqSbhhtzmjZm/8Oyftss+nvV1arSJ2jUJFkSDHpQ=
X-Received: by 2002:a1f:93cd:: with SMTP id v196mr11075937vkd.84.1565779544819; 
 Wed, 14 Aug 2019 03:45:44 -0700 (PDT)
Date: Wed, 14 Aug 2019 12:45:00 +0200
In-Reply-To: <20190814104520.6001-1-darekm@google.com>
Message-Id: <20190814104520.6001-3-darekm@google.com>
Mime-Version: 1.0
References: <20190814104520.6001-1-darekm@google.com>
X-Mailer: git-send-email 2.23.0.rc1.153.gdeed80330f-goog
From: Dariusz Marcinkiewicz <darekm@google.com>
To: dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, 
 hverkuil-cisco@xs4all.nl
X-Mailman-Approved-At: Wed, 14 Aug 2019 20:49:49 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc;
 bh=suzgW5VW6Ng90prgpz/ghvx/fVcho6Pl4urYZ0d0Q0c=;
 b=Mv4TEqYa23uJDtobaDY6OSoe+shBIF5XVxXALV+QFVPinFL0cqfxETuiYnTHfikeS0
 beLlJ1+BBIyTAhKd1JqnpQo3tivf3SZ9z9nk7oObNoNce/6RSi9vJcKeItZ2Ap6i16TF
 sO16PNkbi+BrhuokCdIAorhyUJfLy4AtshgXt9ebmMQnJJ4M0k+SuwLsbI7Bsm4wqfct
 I0WU4v/LGzR40UT/Gan8eztP4Nk3Z3k9qcxdtOaJVCJucEb4gb4HXBGf3mNS7bdkYmZf
 laScErz8C4mR2ZvF1JR64oYbIgVooQF19lNDFb3YDWHqMnlxLTlgGCYy+McMlra+GR7H
 AOwQ==
Subject: [Intel-gfx] [PATCH v7 2/9] drm/i915/intel_hdmi: use
 cec_notifier_conn_(un)register
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
Cc: David Airlie <airlied@linux.ie>, intel-gfx@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, Dariusz Marcinkiewicz <darekm@google.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VXNlIHRoZSBuZXcgY2VjX25vdGlmaWVyX2Nvbm5fKHVuKXJlZ2lzdGVyKCkgZnVuY3Rpb25zIHRv
Cih1bilyZWdpc3RlciB0aGUgbm90aWZpZXIgZm9yIHRoZSBIRE1JIGNvbm5lY3RvciwgYW5kIGZp
bGwgaW4KdGhlIGNlY19jb25uZWN0b3JfaW5mby4KClNpZ25lZC1vZmYtYnk6IERhcml1c3ogTWFy
Y2lua2lld2ljeiA8ZGFyZWttQGdvb2dsZS5jb20+ClNpZ25lZC1vZmYtYnk6IEhhbnMgVmVya3Vp
bCA8aHZlcmt1aWwtY2lzY29AeHM0YWxsLm5sPgpUZXN0ZWQtYnk6IEhhbnMgVmVya3VpbCA8aHZl
cmt1aWwtY2lzY29AeHM0YWxsLm5sPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfaGRtaS5jIHwgMTMgKysrKysrKysrLS0tLQogMSBmaWxlIGNoYW5nZWQsIDkgaW5zZXJ0
aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2hkbWkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfaGRtaS5jCmluZGV4IGIxY2E4ZTViZGI1NmQuLjlmY2YyYzU4YzI5YzUgMTAwNjQ0Ci0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaGRtaS5jCisrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaGRtaS5jCkBAIC0yNzUyLDggKzI3NTIsOSBAQCBp
bnRlbF9oZG1pX2Nvbm5lY3Rvcl9yZWdpc3RlcihzdHJ1Y3QgZHJtX2Nvbm5lY3RvciAqY29ubmVj
dG9yKQogCiBzdGF0aWMgdm9pZCBpbnRlbF9oZG1pX2Rlc3Ryb3koc3RydWN0IGRybV9jb25uZWN0
b3IgKmNvbm5lY3RvcikKIHsKLQlpZiAoaW50ZWxfYXR0YWNoZWRfaGRtaShjb25uZWN0b3IpLT5j
ZWNfbm90aWZpZXIpCi0JCWNlY19ub3RpZmllcl9wdXQoaW50ZWxfYXR0YWNoZWRfaGRtaShjb25u
ZWN0b3IpLT5jZWNfbm90aWZpZXIpOworCXN0cnVjdCBjZWNfbm90aWZpZXIgKm4gPSBpbnRlbF9h
dHRhY2hlZF9oZG1pKGNvbm5lY3RvciktPmNlY19ub3RpZmllcjsKKworCWNlY19ub3RpZmllcl9j
b25uX3VucmVnaXN0ZXIobik7CiAKIAlpbnRlbF9jb25uZWN0b3JfZGVzdHJveShjb25uZWN0b3Ip
OwogfQpAQCAtMzA2OCw2ICszMDY5LDcgQEAgdm9pZCBpbnRlbF9oZG1pX2luaXRfY29ubmVjdG9y
KHN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgKmludGVsX2RpZ19wb3J0LAogCXN0cnVjdCBkcm1f
ZGV2aWNlICpkZXYgPSBpbnRlbF9lbmNvZGVyLT5iYXNlLmRldjsKIAlzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGRldik7CiAJZW51bSBwb3J0IHBvcnQgPSBpbnRl
bF9lbmNvZGVyLT5wb3J0OworCXN0cnVjdCBjZWNfY29ubmVjdG9yX2luZm8gY29ubl9pbmZvOwog
CiAJRFJNX0RFQlVHX0tNUygiQWRkaW5nIEhETUkgY29ubmVjdG9yIG9uIHBvcnQgJWNcbiIsCiAJ
CSAgICAgIHBvcnRfbmFtZShwb3J0KSk7CkBAIC0zMTIwLDggKzMxMjIsMTEgQEAgdm9pZCBpbnRl
bF9oZG1pX2luaXRfY29ubmVjdG9yKHN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgKmludGVsX2Rp
Z19wb3J0LAogCQlJOTE1X1dSSVRFKFBFR19CQU5EX0dBUF9EQVRBLCAodGVtcCAmIH4weGYpIHwg
MHhkKTsKIAl9CiAKLQlpbnRlbF9oZG1pLT5jZWNfbm90aWZpZXIgPSBjZWNfbm90aWZpZXJfZ2V0
X2Nvbm4oZGV2LT5kZXYsCi0JCQkJCQkJIHBvcnRfaWRlbnRpZmllcihwb3J0KSk7CisJY2VjX2Zp
bGxfY29ubl9pbmZvX2Zyb21fZHJtKCZjb25uX2luZm8sIGNvbm5lY3Rvcik7CisKKwlpbnRlbF9o
ZG1pLT5jZWNfbm90aWZpZXIgPQorCQljZWNfbm90aWZpZXJfY29ubl9yZWdpc3RlcihkZXYtPmRl
diwgcG9ydF9pZGVudGlmaWVyKHBvcnQpLAorCQkJCQkgICAmY29ubl9pbmZvKTsKIAlpZiAoIWlu
dGVsX2hkbWktPmNlY19ub3RpZmllcikKIAkJRFJNX0RFQlVHX0tNUygiQ0VDIG5vdGlmaWVyIGdl
dCBmYWlsZWRcbiIpOwogfQotLSAKMi4yMy4wLnJjMS4xNTMuZ2RlZWQ4MDMzMGYtZ29vZwoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
