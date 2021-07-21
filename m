Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 592BC3D17AA
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Jul 2021 22:13:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9B9A76E169;
	Wed, 21 Jul 2021 20:13:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-x62e.google.com (mail-pl1-x62e.google.com
 [IPv6:2607:f8b0:4864:20::62e])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 22DE06E169
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Jul 2021 20:13:50 +0000 (UTC)
Received: by mail-pl1-x62e.google.com with SMTP id n11so1686360plc.2
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Jul 2021 13:13:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=gcfgktxwhi2gPaW3PDmABicLcLcpYa8hHzB10quc6oc=;
 b=tKy5/iXouGwrFGF90VcOOgKMisKvE7XWsDlwiGkyXDWO/mIvMMaMgSJukSrkgg3OPK
 rl9z4i+etzaiJHr0h95df6ozB5gHfMHsscfHJLK42DKxgDHdBLnF8YvywAKxE61FhJS+
 e+mgzP2f39DfBfndorbwB2IG0OsfGjwfKM4gUdXs7yY1fJLOnKsKWiKE4giZIA0UCWda
 jh7Ji3XQjOiuxgSjJ99LNh33WpbfEJHlkMA3ExTqFDlT06zUDBMf4WYDV6MCDFbTjtPF
 2zz1LDnltn7Jt+FAVNzpz7smz6nGnYjl0HKecrZs/0VBiSdm6IllJldb1lGyzSo5r2Jw
 Ueuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=gcfgktxwhi2gPaW3PDmABicLcLcpYa8hHzB10quc6oc=;
 b=DK4SXPMOHhDrzq3Z7mhf1z3lisWiSnv8wwq7/isXTZIOuYhkAdvo0rMnK10/H4ILl2
 aT5Lw3raPUZgk0KKnB9KjYAYLsGSbKB8Mq3Uff130efz/Uccu+TK1XRdJBC/Jy9cCTo9
 LH7UmjAClcHJTFBUSrG2igpZ7gs81jliyjfYe4dwaAUi4vH8dObnmHsFzVUwo/NbMAc9
 q6OqOwMhxBW72MIY+Dk8mFKiJ03wnaS8ZjU++PCbjs9bXM2WxC23U5Nxns1OBu5oAvgd
 wOgpmqPZhkUFQvqL0ruepMq3q1+Q9bGRmqAY2xalxEkz+fOLtWGv0sUORddQcVk34Kfl
 Kssg==
X-Gm-Message-State: AOAM533sKST9fi48KlpS+oA0kylv5ULkfVyuc0Rgc1r/IrwPNqy1rYm7
 hy8Xwtr5Pcn2RORSkbFHDZzSTGAYsER5sQ==
X-Google-Smtp-Source: ABdhPJxp4btwqWXuywGw24iuxSRhjzPVOmBDW5KpL5aBWZsLAQoJUoAcRXhRop1OxGMQOVl3Pfunsw==
X-Received: by 2002:a63:f712:: with SMTP id x18mr37678449pgh.389.1626898429337; 
 Wed, 21 Jul 2021 13:13:49 -0700 (PDT)
Received: from omlet.com ([134.134.137.82])
 by smtp.gmail.com with ESMTPSA id h24sm28777439pfn.180.2021.07.21.13.13.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 21 Jul 2021 13:13:48 -0700 (PDT)
From: Jason Ekstrand <jason@jlekstrand.net>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Wed, 21 Jul 2021 15:13:36 -0500
Message-Id: <20210721201343.2962674-1-jason@jlekstrand.net>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/7] drm/i915: Migrate memory to SMEM when
 imported cross-device (v8)
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhpcyBwYXRjaCBzZXJpZXMgZml4ZXMgYW4gaXNzdWUgd2l0aCBkaXNjcmV0ZSBncmFwaGljcyBv
biBJbnRlbCB3aGVyZSB3ZQphbGxvd2VkIGRtYS1idWYgaW1wb3J0IHdoaWxlIGxlYXZpbmcgdGhl
IG9iamVjdCBpbiBsb2NhbCBtZW1vcnkuICBUaGlzCmJyZWFrcyBkb3duIHByZXR0eSBiYWRseSBp
ZiB0aGUgaW1wb3J0IGhhcHBlbmVkIG9uIGEgZGlmZmVyZW50IHBoeXNpY2FsCmRldmljZS4KCnY3
OgogLSBEcm9wICJkcm0vaTkxNS9nZW0vdHRtOiBQbGFjZSBuZXcgQk9zIGluIHRoZSByZXF1ZXN0
ZWQgcmVnaW9uIgogLSBBZGQgYSBuZXcgImRybS9pOTE1L2dlbTogQ2FsbCBpOTE1X2dlbV9mbHVz
aF9mcmVlX29iamVjdHMoKSBpbiBpOTE1X2dlbV9kdW1iX2NyZWF0ZSgpIgogLSBNaXNjLiByZXZp
ZXcgZmVlZGJhY2sgZnJvbSBNYXR0aGV3IEF1bGQKdjg6CiAtIE1pc2MuIHJldmlldyBmZWVkYmFj
ayBmcm9tIE1hdHRoZXcgQXVsZAoKSmFzb24gRWtzdHJhbmQgKDUpOgogIGRybS9pOTE1L2dlbTog
Q2hlY2sgb2JqZWN0X2Nhbl9taWdyYXRlIGZyb20gb2JqZWN0X21pZ3JhdGUKICBkcm0vaTkxNS9n
ZW06IFJlZmFjdG9yIHBsYWNlbWVudCBzZXR1cCBmb3IgaTkxNV9nZW1fb2JqZWN0X2NyZWF0ZSoK
ICAgICh2MikKICBkcm0vaTkxNS9nZW06IENhbGwgaTkxNV9nZW1fZmx1c2hfZnJlZV9vYmplY3Rz
KCkgaW4KICAgIGk5MTVfZ2VtX2R1bWJfY3JlYXRlKCkKICBkcm0vaTkxNS9nZW06IFVuaWZ5IHVz
ZXIgb2JqZWN0IGNyZWF0aW9uICh2MykKICBkcm0vaTkxNS9nZW0vdHRtOiBSZXNwZWN0IHRoZSBv
YmplY3Rpb24gcmVnaW9uIGluIHBsYWNlbWVudF9mcm9tX29iagoKVGhvbWFzIEhlbGxzdHLDtm0g
KDIpOgogIGRybS9pOTE1L2dlbTogQ29ycmVjdCB0aGUgbG9ja2luZyBhbmQgcGluIHBhdHRlcm4g
Zm9yIGRtYS1idWYgKHY4KQogIGRybS9pOTE1L2dlbTogTWlncmF0ZSB0byBzeXN0ZW0gYXQgZG1h
LWJ1ZiBhdHRhY2ggdGltZSAodjcpCgogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2Vt
X2NyZWF0ZS5jICAgIHwgMTc3ICsrKysrKysrLS0tLS0tLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2dlbS9pOTE1X2dlbV9kbWFidWYuYyAgICB8ICA1OCArKysrLS0KIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2dlbS9pOTE1X2dlbV9vYmplY3QuYyAgICB8ICAxMyArLQogZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ2VtL2k5MTVfZ2VtX29iamVjdC5oICAgIHwgICA0ICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2dlbS9pOTE1X2dlbV90dG0uYyAgICAgICB8ICAgMyArLQogLi4uL2RybS9pOTE1L2dlbS9zZWxm
dGVzdHMvaTkxNV9nZW1fZG1hYnVmLmMgIHwgMTkwICsrKysrKysrKysrKysrKysrLQogLi4uL2Ry
bS9pOTE1L2dlbS9zZWxmdGVzdHMvaTkxNV9nZW1fbWlncmF0ZS5jIHwgIDE1IC0tCiA3IGZpbGVz
IGNoYW5nZWQsIDMzMCBpbnNlcnRpb25zKCspLCAxMzAgZGVsZXRpb25zKC0pCgotLSAKMi4zMS4x
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
