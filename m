Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A424A38C2BD
	for <lists+intel-gfx@lfdr.de>; Fri, 21 May 2021 11:10:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F6D66F5FF;
	Fri, 21 May 2021 09:10:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com
 [IPv6:2a00:1450:4864:20::330])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 508CC6F5EF
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 May 2021 09:10:09 +0000 (UTC)
Received: by mail-wm1-x330.google.com with SMTP id
 f20-20020a05600c4e94b0290181f6edda88so46205wmq.2
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 May 2021 02:10:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=HABPMdXSrKsW4uEw0rscNeUzj5fp9ApU11szDLOfF2g=;
 b=fXNUkTfQQylHve4e5q7hej2PfB3CsxTiwKvzcCa0DmQnFmgJgOxLi3L3xKRECoS9nf
 8asDsKAzfQXRUIArgbk0BFuIwPtkPX0uk4ZgG0KeL0UFd364oeAvvFjkw9q6URsV7GNa
 i467cpK5nxrW+8LWbSddPOQS5DUODHlMEhX8E=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=HABPMdXSrKsW4uEw0rscNeUzj5fp9ApU11szDLOfF2g=;
 b=aSYygb/XAG8+oMqELUU0ndnCcGDHg5zY1tX6JvUuDRoaU0q7fK2SmCu/nqMBJwUKq3
 OWmrBHzVZl/KAbnjkNLEZneUBSHR7R1BLI+vo/PnWvYSN6R5QBpGUyEx+g5FO/sd34Ba
 I+VBHB9leSEF+kkA1cHTyOjebGVjbe4PYPNlKsI4sTGOu0tK7ZvuqY82ILSEGH7a8oWB
 wi5MwohUnQGELJm2V/MSaiGWUh0LHZK29VO4mM1N1R7ercUeZB+UDYfj1nPcxFrAWlNq
 MPDVDHzMuzksgR16CVj8tZyN69tp8PBgAWA/ypQCPwIaXOhH0KSxId92MlCFUwgmwwkF
 /Geg==
X-Gm-Message-State: AOAM531Np98+6kJbJwTjn8MgQJkDZjjc6/QvJU6YSmmMGGz92+juvVrH
 I7znmV+oFbYNcr4BRgsyfhnZuw==
X-Google-Smtp-Source: ABdhPJy4AppsKMSYrINJJ5HHtcoyKQ5HCs+pp50JtN605hKrw5dYRryDwHmn4jAzZiOvi2dJ36vjOw==
X-Received: by 2002:a7b:cb45:: with SMTP id v5mr7986141wmj.48.1621588208292;
 Fri, 21 May 2021 02:10:08 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id y2sm13589457wmq.45.2021.05.21.02.10.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 21 May 2021 02:10:07 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Fri, 21 May 2021 11:09:52 +0200
Message-Id: <20210521090959.1663703-4-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.31.0
In-Reply-To: <20210521090959.1663703-1-daniel.vetter@ffwll.ch>
References: <20210521090959.1663703-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 04/11] drm/panfrost: Fix implicit sync
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
Cc: Rob Herring <robh@kernel.org>, Tomeu Vizoso <tomeu.vizoso@collabora.com>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Steven Price <steven.price@arm.com>, linaro-mm-sig@lists.linaro.org,
 Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Sumit Semwal <sumit.semwal@linaro.org>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Q3VycmVudGx5IHRoaXMgaGFzIG5vIHByYWN0aWFsIHJlbGV2YW5jZSBJIHRoaW5rIGJlY2F1c2Ug
dGhlcmUncyBub3QKbWFueSB3aG8gY2FuIHB1bGwgb2ZmIGEgc2V0dXAgd2l0aCBwYW5mcm9zdCBh
bmQgYW5vdGhlciBncHUgaW4gdGhlCnNhbWUgc3lzdGVtLiBCdXQgdGhlIHJ1bGVzIGFyZSB0aGF0
IGlmIHlvdSdyZSBzZXR0aW5nIGFuIGV4Y2x1c2l2ZQpmZW5jZSwgaW5kaWNhdGluZyBhIGdwdSB3
cml0ZSBhY2Nlc3MgaW4gdGhlIGltcGxpY2l0IGZlbmNpbmcgc3lzdGVtLAp0aGVuIHlvdSBuZWVk
IHRvIHdhaXQgZm9yIGFsbCBmZW5jZXMsIG5vdCBqdXN0IHRoZSBwcmV2aW91cyBleGNsdXNpdmUK
ZmVuY2UuCgpwYW5mcm9zdCBhZ2FpbnN0IGl0c2VsZiBoYXMgbm8gcHJvYmxlbSwgYmVjYXVzZSBp
dCBhbHdheXMgc2V0cyB0aGUKZXhjbHVzaXZlIGZlbmNlIChidXQgdGhhdCdzIHByb2JhYmx5IHNv
bWV0aGluZyB0aGF0IHdpbGwgbmVlZCB0byBiZQpmaXhlZCBmb3IgdnVsa2FuIGFuZC9vciBtdWx0
aS1lbmdpbmUgZ3B1cywgb3IgeW91J2xsIHN1ZmZlciBiYWRseSkuCkFsc28gbm8gcHJvYmxlbSB3
aXRoIHRoYXQgYWdhaW5zdCBkaXNwbGF5LgoKV2l0aCB0aGUgcHJlcCB3b3JrIGRvbmUgdG8gc3dp
dGNoIG92ZXIgdG8gdGhlIGRlcGVuZGVuY3kgaGVscGVycyB0aGlzCmlzIG5vdyBhIG9uZWxpbmVy
LgoKU2lnbmVkLW9mZi1ieTogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBpbnRlbC5jb20+
CkNjOiBSb2IgSGVycmluZyA8cm9iaEBrZXJuZWwub3JnPgpDYzogVG9tZXUgVml6b3NvIDx0b21l
dS52aXpvc29AY29sbGFib3JhLmNvbT4KQ2M6IFN0ZXZlbiBQcmljZSA8c3RldmVuLnByaWNlQGFy
bS5jb20+CkNjOiBBbHlzc2EgUm9zZW56d2VpZyA8YWx5c3NhLnJvc2VuendlaWdAY29sbGFib3Jh
LmNvbT4KQ2M6IFN1bWl0IFNlbXdhbCA8c3VtaXQuc2Vtd2FsQGxpbmFyby5vcmc+CkNjOiAiQ2hy
aXN0aWFuIEvDtm5pZyIgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4KQ2M6IGxpbnV4LW1lZGlh
QHZnZXIua2VybmVsLm9yZwpDYzogbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCi0tLQog
ZHJpdmVycy9ncHUvZHJtL3BhbmZyb3N0L3BhbmZyb3N0X2pvYi5jIHwgNSArKy0tLQogMSBmaWxl
IGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vcGFuZnJvc3QvcGFuZnJvc3Rfam9iLmMgYi9kcml2ZXJzL2dwdS9kcm0v
cGFuZnJvc3QvcGFuZnJvc3Rfam9iLmMKaW5kZXggNzA3ZDkxMmZmNjRhLi42MTlkNjEwNDA0MGMg
MTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9wYW5mcm9zdC9wYW5mcm9zdF9qb2IuYworKysg
Yi9kcml2ZXJzL2dwdS9kcm0vcGFuZnJvc3QvcGFuZnJvc3Rfam9iLmMKQEAgLTIwMyw5ICsyMDMs
OCBAQCBzdGF0aWMgaW50IHBhbmZyb3N0X2FjcXVpcmVfb2JqZWN0X2ZlbmNlcyhzdHJ1Y3QgZHJt
X2dlbV9vYmplY3QgKipib3MsCiAJaW50IGksIHJldDsKIAogCWZvciAoaSA9IDA7IGkgPCBib19j
b3VudDsgaSsrKSB7Ci0JCXN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlID0gZG1hX3Jlc3ZfZ2V0X2V4
Y2xfcmN1KGJvc1tpXS0+cmVzdik7Ci0KLQkJcmV0ID0gZHJtX2dlbV9mZW5jZV9hcnJheV9hZGQo
ZGVwcywgZmVuY2UpOworCQkvKiBwYW5mcm9zdCBhbHdheXMgdXNlcyB3cml0ZSBtb2RlIGluIGl0
cyBjdXJyZW50IHVhcGkgKi8KKwkJcmV0ID0gZHJtX2dlbV9mZW5jZV9hcnJheV9hZGRfaW1wbGlj
aXQoZGVwcywgYm9zW2ldLCB0cnVlKTsKIAkJaWYgKHJldCkKIAkJCXJldHVybiByZXQ7CiAJfQot
LSAKMi4zMS4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
