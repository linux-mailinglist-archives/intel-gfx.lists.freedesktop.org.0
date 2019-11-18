Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D17D100278
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Nov 2019 11:35:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5C99489D99;
	Mon, 18 Nov 2019 10:35:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com
 [IPv6:2a00:1450:4864:20::341])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 419DA89D7D
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Nov 2019 10:35:45 +0000 (UTC)
Received: by mail-wm1-x341.google.com with SMTP id z26so16744711wmi.4
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Nov 2019 02:35:45 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=AhkaPsj0AZc4cxpsw66OHA8x4RM2P7D88XhUXbMcXWI=;
 b=uHKR9WlPlrWGUMJr7kM8JGPqFEh1Su7EhhfObxcUnlWo1pESJ5lfaD/CPaAy4EUoWg
 HF77ucArkITqRubOlYs2AJng/O2Nj0ypCzehvdxaQIND7wJFLe6hGBIXsoQUGgAeoFd3
 FN4a8QqKk4syhu/X5OrpyKDq0tdrfhcB+tyftiRoMssON1JaZVVQuAi/yuCmOnIEObzP
 UB1xLb84ILu7unYt2ymHMs6ZQQd+x19v+CKaApnPd6U4Mv0Uu61CpTmjxsdyYjNi0aEs
 pcKCCxXNF9qcXbeMsKDGiMw2Xp3Zih39rpGmIrH0ZjwYftsGcGgDWQdnW5yhXRY55Kzt
 pDoQ==
X-Gm-Message-State: APjAAAVLW7O3HxLSBDB1rBscv9iHCNnGtDH0W1FWqq/ip50Oh3JdLrQu
 8TGoPkF6NL8hfFeRYM6NlmOPikc+Y7k=
X-Google-Smtp-Source: APXvYqwzV5VySiX029oawDVvlHw3cbcAr7+B1TD7kwT/trf+P1BYaeeaWQXA+bbLnPiQXGorBtT9Og==
X-Received: by 2002:a1c:113:: with SMTP id 19mr29871798wmb.42.1574073343669;
 Mon, 18 Nov 2019 02:35:43 -0800 (PST)
Received: from phenom.ffwll.local (212-51-149-96.fiber7.init7.net.
 [212.51.149.96])
 by smtp.gmail.com with ESMTPSA id j2sm22749200wrt.61.2019.11.18.02.35.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 18 Nov 2019 02:35:42 -0800 (PST)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Mon, 18 Nov 2019 11:35:21 +0100
Message-Id: <20191118103536.17675-1-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=AhkaPsj0AZc4cxpsw66OHA8x4RM2P7D88XhUXbMcXWI=;
 b=UbXvkbeHskhGcJ/kgHIXh+cemzHXgnnAWQKSQfeTLnfVhm5CAO7YjVV6yRJ3yc9ECA
 XK+M3G1Zj0eWhjra5xEnnShxR+ny0FKvOcJwzTm8c78YJ7Sn9s+DEd7403/jNXpuqeXd
 K4UTLf0e/fgrduIdvdrgPl+I2owvlB7O4GA3o=
Subject: [Intel-gfx] [PATCH 00/15] Retire dma_buf_k(un)map
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGkgYWxsLAoKV2F5IGJhY2sgd2hlbiB3ZSBjcmVhdGVkIHRoZSBkbWEtYnVmIHNwZWMgaXQgbWFk
ZSBzZW5zZSB0byBoYXZlIGttYXAvdW5tYXAKaW50ZXJmYWNlcywgc2luY2UgMzJiaXQga2VybmVs
cyB3aXRoIGxpbWl0ZWQgdm1hbGxvYyBzcGFjZSB3ZXJlIHN0aWxsCnJhdGhlciB1YmlxdWl0b3Vz
LiBCdXQgdGhhdCBpZGVhIChsaWtlIG1hbnkgb3RoZXJzKSBuZXZlciBjYXVnaHQgb24sIHdhcwpx
dWlja2x5IHJlcGxhY2VkIGJ5IHZtYXBzIGNvdmVyaW5nIHRoZSBlbnRpcmUgYnVmZmVyIGZvciBh
bGwgcmVhbCB1c2VzLAphbmQgbm93YWRheXMgNjRiaXQga2VybmVscyBydWxlIHRoZSB3b3JsZC4g
Q3VycmVudGx5IG1lcmdlZCB1cHN0cmVhbQpkcml2ZXJzIChhbmQgd2UgaGF2ZSBhIHBpbGUgbm93
KSBkb24ndCBldmVuIGJvdGhlciB0byBrbWFwIGZvciB0aGVpcgpwcml2YXRlIGJ1ZmZlcnMsIG11
Y2ggbGVzcyBmb3IgYW55dGhpbmcgc2hhcmVkLgoKU28gc2luY2UgaXQgd2FzIG5ldmVyIHVzZWQs
IGFuZCB0aGlzIGlkZWEncyB0aW1lIGlzIGNsZWFybHkgb3ZlciwgbGV0J3MKcmVtb3ZlIGl0IGFs
bC4KCk9ubHkgcmVhbCBjaGFuZ2UgSSBoYWQgdG8gZG8gKGFzaWRlIGZyb20gZGVsZXRpbmcgbG90
cyBvZiBkZWFkIGNvZGUpIHdhcwppbiB0aGUgdGVncmEgZHJpdmVyLiBCdXQgZXZlbiB0aGVyZSBJ
IHN1c3BlY3QgdGhlIGRtYS1idWYga21hcCBwYXRoIGhhcwpuZXZlciBiZWVuIHJ1biBpbiBhbmdl
ciBhbnl3aGVyZSwgaXQganVzdCBkb2Vzbid0IG1ha2Ugc2Vuc2UgdG8gcHV0IHJlbG9jcwppbnRv
IGEgZG1hLWJ1ZiAoYXMgb3Bwb3NlZCB0byB1c2luZyBhIGRtYS1idWYgZm9yIHRoZSB0YXJnZXQg
YWRkcmVzcyBvZiBhCnJlbG9jKS4KCkNvbW1lbnRzLCByZXZpZXdzIGFuZCB0ZXN0aW5nIHZlcnkg
bXVjaCBhcHByZWNpYXRlZC4KCkNoZWVycywgRGFuaWVsCgpEYW5pZWwgVmV0dGVyICgxNSk6CiAg
ZHJtL3RlZ3JhOiBNYXAgY21kYnVmIG9uY2UgZm9yIHJlbG9jIHByb2Nlc3NpbmcKICBkcm0vdGVn
cmE6IERlbGV0ZSBob3N0MXhfYm9fb3BzLT5rKHVuKW1hcAogIGRybS9pOTE1OiBSZW1vdmUgZG1h
X2J1Zl9rbWFwIHNlbGZ0ZXN0CiAgc3RhZ2luZy9hbmRyb2lkL2lvbjogZGVsZXRlIGRtYV9idWYt
PmttYXAvdW5tYXAgaW1wbGVtZW5hdGlvbgogIGRybS9hcm1hZGE6IERlbGV0ZSBkbWFfYnVmLT5r
KHVuKW1hcCBpbXBsZW1lbmF0aW9uCiAgZHJtL2k5MTU6IERyb3AgZG1hX2J1Zi0+ayh1biltYXAK
ICBkcm0vb21hcGRybTogRHJvcCBkbWFfYnVmLT5rKHVuKW1hcAogIGRybS90ZWdyYTogUmVtb3Zl
IGRtYV9idWYtPmsodW4pbWFwCiAgZG1hLWJ1ZjogRHJvcCBkbWFfYnVmX2sodW4pbWFwCiAgZHJt
L3Ztd2dmeDogRGVsZXRlIG1tYXBpbmcgZnVuY3Rpb25zCiAgbWVkaWEvdmlkZW9idWYyOiBEcm9w
IGRtYV9idWYtPmsodW4pbWFwIHN1cHBvcnQKICBkcm0vdGVlX3NobTogRHJvcCBkbWFfYnVmX2so
dW5tYXApIHN1cHBvcnQKICB4ZW4vZ250ZGV2LWRtYWJ1ZjogRGl0Y2ggZHVtbXkgbWFwIGZ1bmN0
aW9ucwogIHNhbXBsZS92ZmlvLW1kZXYvbWJvY3M6IFJlbW92ZSBkbWFfYnVmX2sodW4pbWFwIHN1
cHBvcnQKICBkbWEtYnVmOiBSZW1vdmUga2VybmVsIG1hcC91bm1hcCBob29rcwoKIGRyaXZlcnMv
ZG1hLWJ1Zi9kbWEtYnVmLmMgICAgICAgICAgICAgICAgICAgICB8ICA2MyArLS0tLS0tLS0tLQog
ZHJpdmVycy9ncHUvZHJtL2FybWFkYS9hcm1hZGFfZ2VtLmMgICAgICAgICAgIHwgIDEyIC0tLQog
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2RtYWJ1Zi5jICAgIHwgIDM2IC0tLS0t
LS0KIC4uLi9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL2k5MTVfZ2VtX2RtYWJ1Zi5jICB8IDEwMSAt
LS0tLS0tLS0tLS0tLS0tLS0KIC4uLi9ncHUvZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9tb2NrX2Rt
YWJ1Zi5jICB8ICAxNiAtLS0KIGRyaXZlcnMvZ3B1L2RybS9vbWFwZHJtL29tYXBfZ2VtX2RtYWJ1
Zi5jICAgICB8ICAyMSAtLS0tCiBkcml2ZXJzL2dwdS9kcm0vdGVncmEvZ2VtLmMgICAgICAgICAg
ICAgICAgICAgfCAgNDAgLS0tLS0tLQogZHJpdmVycy9ncHUvZHJtL3Ztd2dmeC92bXdnZnhfcHJp
bWUuYyAgICAgICAgIHwgIDMzIC0tLS0tLQogZHJpdmVycy9ncHUvaG9zdDF4L2pvYi5jICAgICAg
ICAgICAgICAgICAgICAgIHwgIDIxICsrLS0KIC4uLi9jb21tb24vdmlkZW9idWYyL3ZpZGVvYnVm
Mi1kbWEtY29udGlnLmMgICB8ICAgOCAtLQogLi4uL21lZGlhL2NvbW1vbi92aWRlb2J1ZjIvdmlk
ZW9idWYyLWRtYS1zZy5jIHwgICA4IC0tCiAuLi4vY29tbW9uL3ZpZGVvYnVmMi92aWRlb2J1ZjIt
dm1hbGxvYy5jICAgICAgfCAgIDggLS0KIGRyaXZlcnMvbWlzYy9mYXN0cnBjLmMgICAgICAgICAg
ICAgICAgICAgICAgICB8ICAgOCAtLQogZHJpdmVycy9zdGFnaW5nL2FuZHJvaWQvaW9uL2lvbi5j
ICAgICAgICAgICAgIHwgIDE0IC0tLQogZHJpdmVycy90ZWUvdGVlX3NobS5jICAgICAgICAgICAg
ICAgICAgICAgICAgIHwgICA2IC0tCiBkcml2ZXJzL3hlbi9nbnRkZXYtZG1hYnVmLmMgICAgICAg
ICAgICAgICAgICAgfCAgMjMgLS0tLQogaW5jbHVkZS9saW51eC9kbWEtYnVmLmggICAgICAgICAg
ICAgICAgICAgICAgIHwgIDI3IC0tLS0tCiBpbmNsdWRlL2xpbnV4L2hvc3QxeC5oICAgICAgICAg
ICAgICAgICAgICAgICAgfCAgMTMgLS0tCiBzYW1wbGVzL3ZmaW8tbWRldi9tYm9jaHMuYyAgICAg
ICAgICAgICAgICAgICAgfCAgMTYgLS0tCiAxOSBmaWxlcyBjaGFuZ2VkLCAxMCBpbnNlcnRpb25z
KCspLCA0NjQgZGVsZXRpb25zKC0pCgotLSAKMi4yNC4wCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZng=
