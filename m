Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D878722FB6F
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Jul 2020 23:31:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8FEB56E044;
	Mon, 27 Jul 2020 21:31:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com
 [IPv6:2a00:1450:4864:20::441])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 739926E049
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Jul 2020 21:31:53 +0000 (UTC)
Received: by mail-wr1-x441.google.com with SMTP id f7so16297269wrw.1
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Jul 2020 14:31:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=IbBLsev6A/k6JtTZxYPdXm24BNGReWdxszm0mfyFmjs=;
 b=cVLK0R/gUj+gognaAVDPpAcP0p/kaqO27TPJ/4oQvPAVxTWgzIk1QMDw38zDZnYRwL
 oEPqrbbbcE3rhwjhV7Pm1B0efa4lN6NMK/Kky5kl6lUyt4IW7cYwb/OkujsODB6S4ySc
 /O6SRw8n2sblXDqrfhuiNO9eEB3Ehe86udljQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=IbBLsev6A/k6JtTZxYPdXm24BNGReWdxszm0mfyFmjs=;
 b=ShrG9pMEHqzd/ZYxmpA0L+2X9p92TpYC03JUwcZDHR/r4LKiKTf4DoTICzKQL1xz8G
 9bfL9RBzDqffCXUgnPwxTVHOb6k4sOlI9PkuCS4xVZHvdjVLElwhsWspmCRf9mkVRqOO
 8F5dfolGxRV6m07+mKKYytjO/CpeYWmvtZAPtWuyLXkJAKQVlkw7EyrR+JFVzqXOHq0P
 uwPFTNs3MAqi9sG1yLcCzhwXjmqyuwcA5Cf/0FPhTb8n/Tnl5fvpDqM4cGQbjC22sKqr
 eo2U9AGgweoZPofbIusiB4vu2eXXLxlO0a8k7j1w75wydBN01nXoWEFAmBvhWf7DvD9u
 +1cw==
X-Gm-Message-State: AOAM532XYAcIvXZ41o17fjEXoSOTI5EtKC9w7uVJQFa23vGWHds5pT4B
 cPLsLGaM0tdyxokNguEFkjkTVA==
X-Google-Smtp-Source: ABdhPJxu91l4eNQybKcmI4LErpte7CoyW1rnIyORt8Wxy15Rf018CY26pqWTld4+57hcv1yfORKfeQ==
X-Received: by 2002:adf:82f6:: with SMTP id 109mr23889821wrc.25.1595885511913; 
 Mon, 27 Jul 2020 14:31:51 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id f9sm13945424wru.47.2020.07.27.14.31.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 27 Jul 2020 14:31:51 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Mon, 27 Jul 2020 23:30:18 +0200
Message-Id: <20200727213017.852589-1-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/amdgpu/dc: Stop dma_resv_lock inversion in
 commit_tail
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
Cc: linux-rdma@vger.kernel.org, Daniel Vetter <daniel.vetter@ffwll.ch>,
 intel-gfx@lists.freedesktop.org, amd-gfx@lists.freedesktop.org,
 Chris Wilson <chris@chris-wilson.co.uk>, linaro-mm-sig@lists.linaro.org,
 Daniel Vetter <daniel.vetter@intel.com>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VHJ5aW5nIHRvIGdyYWIgZG1hX3Jlc3ZfbG9jayB3aGlsZSBpbiBjb21taXRfdGFpbCBiZWZvcmUg
d2UndmUgZG9uZQphbGwgdGhlIGNvZGUgdGhhdCBsZWFkcyB0byB0aGUgZXZlbnR1YWwgc2lnbmFs
bGluZyBvZiB0aGUgdmJsYW5rIGV2ZW50Cih3aGljaCBjYW4gYmUgYSBkbWFfZmVuY2UpIGlzIGRl
YWRsb2NrLXkuIERvbid0IGRvIHRoYXQuCgpIZXJlIHRoZSBzb2x1dGlvbiBpcyBlYXN5IGJlY2F1
c2UganVzdCBncmFiYmluZyBsb2NrcyB0byByZWFkCnNvbWV0aGluZyByYWNlcyBhbnl3YXkuIFdl
IGRvbid0IG5lZWQgdG8gYm90aGVyLCBSRUFEX09OQ0UgaXMKZXF1aXZhbGVudC4gQW5kIGF2b2lk
cyB0aGUgbG9ja2luZyBpc3N1ZS4KCnYyOiBBbHNvIHRha2UgaW50byBhY2NvdW50IHRtel9zdXJm
YWNlIGJvb2xlYW4sIHBsdXMganVzdCBkZWxldGUgdGhlCm9sZCBjb2RlLgoKQ2M6IGxpbnV4LW1l
ZGlhQHZnZXIua2VybmVsLm9yZwpDYzogbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCkNj
OiBsaW51eC1yZG1hQHZnZXIua2VybmVsLm9yZwpDYzogYW1kLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKQ2M6IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKQ2M6IENocmlzIFdpbHNv
biA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgpDYzogTWFhcnRlbiBMYW5raG9yc3QgPG1hYXJ0
ZW4ubGFua2hvcnN0QGxpbnV4LmludGVsLmNvbT4KQ2M6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlz
dGlhbi5rb2VuaWdAYW1kLmNvbT4KU2lnbmVkLW9mZi1ieTogRGFuaWVsIFZldHRlciA8ZGFuaWVs
LnZldHRlckBpbnRlbC5jb20+Ci0tLQpEQy1mb2xrcywgSSB0aGluayB0aGlzIHNwbGl0IG91dCBw
YXRjaCBmcm9tIG15IHNlcmllcyBoZXJlCgpodHRwczovL2xvcmUua2VybmVsLm9yZy9kcmktZGV2
ZWwvMjAyMDA3MDcyMDEyMjkuNDcyODM0LTEtZGFuaWVsLnZldHRlckBmZndsbC5jaC8KCnNob3Vs
ZCBiZSByZWFkeSBmb3IgcmV2aWV3L21lcmdpbmcuIEkgZml4ZWQgaXQgdXAgYSBiaXQgc28gdGhh
dCBpdCdzIG5vdApqdXN0IGEgZ3Jvc3MgaGFjayA6LSkKCkNoZWVycywgRGFuaWVsCgoKLS0tCiAu
Li4vZ3B1L2RybS9hbWQvZGlzcGxheS9hbWRncHVfZG0vYW1kZ3B1X2RtLmMgfCAxOSArKysrKyst
LS0tLS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspLCAxMyBkZWxldGlv
bnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vYW1kL2Rpc3BsYXkvYW1kZ3B1X2Rt
L2FtZGdwdV9kbS5jIGIvZHJpdmVycy9ncHUvZHJtL2FtZC9kaXNwbGF5L2FtZGdwdV9kbS9hbWRn
cHVfZG0uYwppbmRleCAyMWVjNjRmZTU1MjcuLmEyMGI2MmIxZjJlZiAxMDA2NDQKLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2FtZC9kaXNwbGF5L2FtZGdwdV9kbS9hbWRncHVfZG0uYworKysgYi9kcml2
ZXJzL2dwdS9kcm0vYW1kL2Rpc3BsYXkvYW1kZ3B1X2RtL2FtZGdwdV9kbS5jCkBAIC02OTU5LDIw
ICs2OTU5LDEzIEBAIHN0YXRpYyB2b2lkIGFtZGdwdV9kbV9jb21taXRfcGxhbmVzKHN0cnVjdCBk
cm1fYXRvbWljX3N0YXRlICpzdGF0ZSwKIAkJCURSTV9FUlJPUigiV2FpdGluZyBmb3IgZmVuY2Vz
IHRpbWVkIG91dCEiKTsKIAogCQkvKgotCQkgKiBUT0RPIFRoaXMgbWlnaHQgZmFpbCBhbmQgaGVu
Y2UgYmV0dGVyIG5vdCB1c2VkLCB3YWl0Ci0JCSAqIGV4cGxpY2l0bHkgb24gZmVuY2VzIGluc3Rl
YWQKLQkJICogYW5kIGluIGdlbmVyYWwgc2hvdWxkIGJlIGNhbGxlZCBmb3IKLQkJICogYmxvY2tp
bmcgY29tbWl0IHRvIGFzIHBlciBmcmFtZXdvcmsgaGVscGVycworCQkgKiBXZSBjYW5ub3QgcmVz
ZXJ2ZSBidWZmZXJzIGhlcmUsIHdoaWNoIG1lYW5zIHRoZSBub3JtYWwgZmxhZworCQkgKiBhY2Nl
c3MgZnVuY3Rpb25zIGRvbid0IHdvcmsuIFBhcGVyIG92ZXIgdGhpcyB3aXRoIFJFQURfT05DRSwK
KwkJICogYnV0IG1heWJlIHRoZSBmbGFncyBhcmUgaW52YXJpYW50IGVub3VnaCB0aGF0IG5vdCBl
dmVuIHRoYXQKKwkJICogd291bGQgYmUgbmVlZGVkLgogCQkgKi8KLQkJciA9IGFtZGdwdV9ib19y
ZXNlcnZlKGFibywgdHJ1ZSk7Ci0JCWlmICh1bmxpa2VseShyICE9IDApKQotCQkJRFJNX0VSUk9S
KCJmYWlsZWQgdG8gcmVzZXJ2ZSBidWZmZXIgYmVmb3JlIGZsaXBcbiIpOwotCi0JCWFtZGdwdV9i
b19nZXRfdGlsaW5nX2ZsYWdzKGFibywgJnRpbGluZ19mbGFncyk7Ci0KLQkJdG16X3N1cmZhY2Ug
PSBhbWRncHVfYm9fZW5jcnlwdGVkKGFibyk7Ci0KLQkJYW1kZ3B1X2JvX3VucmVzZXJ2ZShhYm8p
OworCQl0aWxpbmdfZmxhZ3MgPSBSRUFEX09OQ0UoYWJvLT50aWxpbmdfZmxhZ3MpOworCQl0bXpf
c3VyZmFjZSA9IFJFQURfT05DRShhYm8tPmZsYWdzKSAmIEFNREdQVV9HRU1fQ1JFQVRFX0VOQ1JZ
UFRFRDsKIAogCQlmaWxsX2RjX3BsYW5lX2luZm9fYW5kX2FkZHIoCiAJCQlkbS0+YWRldiwgbmV3
X3BsYW5lX3N0YXRlLCB0aWxpbmdfZmxhZ3MsCi0tIAoyLjI3LjAKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
