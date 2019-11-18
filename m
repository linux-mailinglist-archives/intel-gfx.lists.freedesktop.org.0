Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A022B100295
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Nov 2019 11:36:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3B5A06E092;
	Mon, 18 Nov 2019 10:36:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com
 [IPv6:2a00:1450:4864:20::443])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1992989FDE
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Nov 2019 10:36:01 +0000 (UTC)
Received: by mail-wr1-x443.google.com with SMTP id s5so18810706wrw.2
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Nov 2019 02:36:01 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=O6snPj4zRF7PnmdnvOs9XQoZqp3Knhprhwo6jIsI7pk=;
 b=ZXDs2CzxP0y6TqYP9noyyxb2xzpoYW233PzdnMaS6zMNMXXzvbKbUo0lENaC2NG0ui
 /MPEIeE7LLnQ7fjvQkSeB3wBBMAblEIpm73nGc/wi9W3PfmZE/EiMH8ZCJDqqOSt+X0E
 DPKkoKrhWq0m5yrFS7WWK9dK8T7z+2JGHHp9bWknF2+2H+vYIncuK5GrzNAP33xFgjP6
 2P0NO0B6mF0XnKPl8zDO9DSrQshVJNF0dghFH3Q7frP73lAnZTTH2kGZ/amcAzgHH1gd
 bVx3fjOq4dui04/Px8DCvLJTvvUqIA+WkZsl4QG1aOlyUy2vxVDUaoNP4Owy45LWL1Fb
 DEzg==
X-Gm-Message-State: APjAAAUYxfozqNX/gEkQiwUiTJwetYlWfMfOo6vSbYz7dteKvx4dB+3m
 73XTLmsG58EsUph0C+X3oLA/eg==
X-Google-Smtp-Source: APXvYqxwliWhIEUAO9jqkKlsD9SR6F/Gar8dxbJUUc2j0kGt2YK8h8lt3xuihOzMEA3CN5LZFOMWFw==
X-Received: by 2002:adf:ec42:: with SMTP id w2mr15988758wrn.32.1574073359659; 
 Mon, 18 Nov 2019 02:35:59 -0800 (PST)
Received: from phenom.ffwll.local (212-51-149-96.fiber7.init7.net.
 [212.51.149.96])
 by smtp.gmail.com with ESMTPSA id j2sm22749200wrt.61.2019.11.18.02.35.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 18 Nov 2019 02:35:58 -0800 (PST)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Mon, 18 Nov 2019 11:35:35 +0100
Message-Id: <20191118103536.17675-15-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191118103536.17675-1-daniel.vetter@ffwll.ch>
References: <20191118103536.17675-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=O6snPj4zRF7PnmdnvOs9XQoZqp3Knhprhwo6jIsI7pk=;
 b=EDk8Fod4KYVy3Ku3JKZWOBfrr3rK7aA/YCCASUklWuJkEwjDeojA2EuQOaogcy1Ce4
 91VzGpCS11mVTlMh97BzYznrWt0ZB0pWImcJc1CMhWmZWbJJK7kBQS/ukmqK7LhSRM+k
 FuxXis9+tN4+RJ/2LWZVcQL+JLlu725EEPJ/k=
Subject: [Intel-gfx] [PATCH 14/15] sample/vfio-mdev/mbocs: Remove
 dma_buf_k(un)map support
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
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Kirti Wankhede <kwankhede@nvidia.com>, kvm@vger.kernel.org,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Tm8gaW4tdHJlZSB1c2VycyBsZWZ0LgoKU2lnbmVkLW9mZi1ieTogRGFuaWVsIFZldHRlciA8ZGFu
aWVsLnZldHRlckBpbnRlbC5jb20+CkNjOiBLaXJ0aSBXYW5raGVkZSA8a3dhbmtoZWRlQG52aWRp
YS5jb20+CkNjOiBrdm1Admdlci5rZXJuZWwub3JnCi0tCkFjayBmb3IgbWVyZ2luZyB0aGlzIHRo
cm91Z2ggZHJtIHRyZWVzIHZlcnkgbXVjaCBhcHByZWNpYXRlZC4KLURhbmllbAotLS0KIHNhbXBs
ZXMvdmZpby1tZGV2L21ib2Nocy5jIHwgMTYgLS0tLS0tLS0tLS0tLS0tLQogMSBmaWxlIGNoYW5n
ZWQsIDE2IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL3NhbXBsZXMvdmZpby1tZGV2L21ib2No
cy5jIGIvc2FtcGxlcy92ZmlvLW1kZXYvbWJvY2hzLmMKaW5kZXggYWM1YzhjMTdiMWZmLi4zY2M1
ZTU5MjE2ODIgMTAwNjQ0Ci0tLSBhL3NhbXBsZXMvdmZpby1tZGV2L21ib2Nocy5jCisrKyBiL3Nh
bXBsZXMvdmZpby1tZGV2L21ib2Nocy5jCkBAIC04OTEsMjYgKzg5MSwxMCBAQCBzdGF0aWMgdm9p
ZCBtYm9jaHNfcmVsZWFzZV9kbWFidWYoc3RydWN0IGRtYV9idWYgKmJ1ZikKIAltdXRleF91bmxv
Y2soJm1kZXZfc3RhdGUtPm9wc19sb2NrKTsKIH0KIAotc3RhdGljIHZvaWQgKm1ib2Noc19rbWFw
X2RtYWJ1ZihzdHJ1Y3QgZG1hX2J1ZiAqYnVmLCB1bnNpZ25lZCBsb25nIHBhZ2VfbnVtKQotewot
CXN0cnVjdCBtYm9jaHNfZG1hYnVmICpkbWFidWYgPSBidWYtPnByaXY7Ci0Jc3RydWN0IHBhZ2Ug
KnBhZ2UgPSBkbWFidWYtPnBhZ2VzW3BhZ2VfbnVtXTsKLQotCXJldHVybiBrbWFwKHBhZ2UpOwot
fQotCi1zdGF0aWMgdm9pZCBtYm9jaHNfa3VubWFwX2RtYWJ1ZihzdHJ1Y3QgZG1hX2J1ZiAqYnVm
LCB1bnNpZ25lZCBsb25nIHBhZ2VfbnVtLAotCQkJCSB2b2lkICp2YWRkcikKLXsKLQlrdW5tYXAo
dmFkZHIpOwotfQotCiBzdGF0aWMgc3RydWN0IGRtYV9idWZfb3BzIG1ib2Noc19kbWFidWZfb3Bz
ID0gewogCS5tYXBfZG1hX2J1ZgkgID0gbWJvY2hzX21hcF9kbWFidWYsCiAJLnVubWFwX2RtYV9i
dWYJICA9IG1ib2Noc191bm1hcF9kbWFidWYsCiAJLnJlbGVhc2UJICA9IG1ib2Noc19yZWxlYXNl
X2RtYWJ1ZiwKLQkubWFwCQkgID0gbWJvY2hzX2ttYXBfZG1hYnVmLAotCS51bm1hcAkJICA9IG1i
b2Noc19rdW5tYXBfZG1hYnVmLAogCS5tbWFwCQkgID0gbWJvY2hzX21tYXBfZG1hYnVmLAogfTsK
IAotLSAKMi4yNC4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
Zng=
