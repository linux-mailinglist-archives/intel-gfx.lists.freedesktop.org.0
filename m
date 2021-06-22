Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3950B3B0AD1
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Jun 2021 18:55:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D320B6E7E2;
	Tue, 22 Jun 2021 16:55:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com
 [IPv6:2a00:1450:4864:20::32e])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 69D806E802
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Jun 2021 16:55:25 +0000 (UTC)
Received: by mail-wm1-x32e.google.com with SMTP id k42so11394892wms.0
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Jun 2021 09:55:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=h9eNpjSe5MhemdskcpozFFwFBpnPhNMmF6owEmgO3DE=;
 b=Srb9Hp0msD4/YUuX5uDCQ8UzvwxBDF7IeTFsP8q+JYF/WlHIejhwVYKRzm+E3tog0s
 NRiHl4rF87jCR5b/Rv2trZS+LyrltJVttIRR9EvrqGR3GzZpJBRnTXwVonzgYFpbsYOg
 50kavhu00kIMO3Z21/EEcEsF7LqaVnOELjBlU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=h9eNpjSe5MhemdskcpozFFwFBpnPhNMmF6owEmgO3DE=;
 b=CUoSCzXGizDSbpBoYzGY+2s49Pjhp0Zi7Y82W5ak0wL+WjAXhf945GwJ0Hq7z3YIE+
 X7wjBSH09m0JP3/OwubNH+w1sZF/TYa/sw2ZotA0QBL89A9L6Lgb+PxN19WwXwy4hxb+
 uXUm1/ZU7V+p1t/nOqdHPqRWWEGJVPikX87SHPMPg/7lDhT2dgO9egDQTWH2fpBacq55
 64MTXVOS4n6r6uMRa9QhdGfNWiicgQ2t3DHJPTj1XleRHhMOHiJVUyUe5XsV3mGwjRHC
 TFtihyQMbd3/FluiCgqYFfltiZHXhFLQePXarnCgXPf3C16yiI2IOxWff63cUYN0N2rF
 Of9g==
X-Gm-Message-State: AOAM533tzAokVwHoTh2DXGR3JdIaJhfDl0SCDRMvcUKnXSnHgJFJnneV
 QBzjflaPteS+/vErzVQOdKw0+Q==
X-Google-Smtp-Source: ABdhPJwztqOVGeujWJdmOaCicMCajbL6crQePDnRgX5sryx49h1vuS8a7vSsRTr5VXfdshclJwcABA==
X-Received: by 2002:a7b:ce82:: with SMTP id q2mr5542089wmj.60.1624380924163;
 Tue, 22 Jun 2021 09:55:24 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id l23sm3632342wmc.5.2021.06.22.09.55.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 22 Jun 2021 09:55:23 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Tue, 22 Jun 2021 18:55:02 +0200
Message-Id: <20210622165511.3169559-7-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.32.0.rc2
In-Reply-To: <20210622165511.3169559-1-daniel.vetter@ffwll.ch>
References: <20210622165511.3169559-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 06/15] drm/panfrost: Fix implicit sync
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
cGFuZnJvc3QvcGFuZnJvc3Rfam9iLmMKaW5kZXggNzFjZDQzZmExYjM2Li5lZjAwNGQ1ODdkYzQg
MTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9wYW5mcm9zdC9wYW5mcm9zdF9qb2IuYworKysg
Yi9kcml2ZXJzL2dwdS9kcm0vcGFuZnJvc3QvcGFuZnJvc3Rfam9iLmMKQEAgLTIwMyw5ICsyMDMs
OCBAQCBzdGF0aWMgaW50IHBhbmZyb3N0X2FjcXVpcmVfb2JqZWN0X2ZlbmNlcyhzdHJ1Y3QgZHJt
X2dlbV9vYmplY3QgKipib3MsCiAJaW50IGksIHJldDsKIAogCWZvciAoaSA9IDA7IGkgPCBib19j
b3VudDsgaSsrKSB7Ci0JCXN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlID0gZG1hX3Jlc3ZfZ2V0X2V4
Y2xfdW5sb2NrZWQoYm9zW2ldLT5yZXN2KTsKLQotCQlyZXQgPSBkcm1fZ2VtX2ZlbmNlX2FycmF5
X2FkZChkZXBzLCBmZW5jZSk7CisJCS8qIHBhbmZyb3N0IGFsd2F5cyB1c2VzIHdyaXRlIG1vZGUg
aW4gaXRzIGN1cnJlbnQgdWFwaSAqLworCQlyZXQgPSBkcm1fZ2VtX2ZlbmNlX2FycmF5X2FkZF9p
bXBsaWNpdChkZXBzLCBib3NbaV0sIHRydWUpOwogCQlpZiAocmV0KQogCQkJcmV0dXJuIHJldDsK
IAl9Ci0tIAoyLjMyLjAucmMyCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZngK
