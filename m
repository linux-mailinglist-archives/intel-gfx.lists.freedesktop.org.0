Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C82D52FEEAF
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Jan 2021 16:30:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 998496E8FC;
	Thu, 21 Jan 2021 15:30:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com
 [IPv6:2a00:1450:4864:20::432])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E67526E8FC
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Jan 2021 15:30:08 +0000 (UTC)
Received: by mail-wr1-x432.google.com with SMTP id g10so2162288wrx.1
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Jan 2021 07:30:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=cO1IkKPUOVwRn1crpsdxPu7FkoF7p+ucW3GbJhM3e14=;
 b=jhC25ghF/XaqC35+yLTxVb7Wu3JLRJXw2J2hDlMlBegM1HgvqArOVwueF+WlNe1LK0
 iAxoO75LoZrCTVQkpHH8oySG5WCiFgXObeuTlNMlP86RWNc969Ycv/BYdMOvA8ZurmTu
 IPauh1ssYJZERfONi1YMonwWMecl3j/Y7Jjz8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=cO1IkKPUOVwRn1crpsdxPu7FkoF7p+ucW3GbJhM3e14=;
 b=QYTauLWHFk5StRPEgQHgayO1tOkk+sk72nk2rwgc0e/u2+NcRX8W+qk65CeJqsCUQZ
 57QgKE/UI7LZXgwTO2ahePLC6C7OmxZ1YovknRcEp/YAWOAxiIA7mZM00A3zJuAPyVjX
 XkcXaMao0t7WYlXbL8QmF7BTJMWvuieMAtrqGOxTRnZ2YjHBBOr8QHNMh4STx6odD6P5
 unmW1CVSr0eM30WJ39JFayUxPGsdpQNoS4SEcn7ScAzuv1QHWHd+4PZu/eXpWIB8tTBp
 EWxFrru5Y1CeBZXdTym+f8mlZ+HBNEJa35TyD3+UMoLCbvuNZjWEtyYyTHA7kCuVPgR9
 pRyg==
X-Gm-Message-State: AOAM532uupdSIx98M/7ASI/3+c0bnz4iQkNM5lnqz7GCMQRnmN+58VrC
 3eIWo4kZ0IrTpcdujau66aUWnQ==
X-Google-Smtp-Source: ABdhPJzW179r+95gTC9AApAezahGncz7nZxmZZU6SylexVR2TnthZyEScn1yu5DpB9svGDcS52Nyxg==
X-Received: by 2002:a5d:49c1:: with SMTP id t1mr33276wrs.56.1611243007580;
 Thu, 21 Jan 2021 07:30:07 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id f14sm8269866wre.69.2021.01.21.07.30.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 21 Jan 2021 07:30:06 -0800 (PST)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Thu, 21 Jan 2021 16:29:50 +0100
Message-Id: <20210121152959.1725404-3-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210121152959.1725404-1-daniel.vetter@ffwll.ch>
References: <20210121152959.1725404-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 02/11] drm/vkms: Annotate vblank timer
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
Cc: linaro-mm-sig@lists.linaro.org,
 Rodrigo Siqueira <rodrigosiqueiramelo@gmail.com>,
 Haneen Mohammed <hamohammed.sa@gmail.com>, linux-rdma@vger.kernel.org,
 Daniel Vetter <daniel.vetter@ffwll.ch>, intel-gfx@lists.freedesktop.org,
 amd-gfx@lists.freedesktop.org, Chris Wilson <chris@chris-wilson.co.uk>,
 Melissa Wen <melissa.srw@gmail.com>, Daniel Vetter <daniel.vetter@intel.com>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhpcyBpcyBuZWVkZWQgdG8gc2lnbmFsIHRoZSBmZW5jZXMgZnJvbSBwYWdlIGZsaXBzLCBhbm5v
dGF0ZSBpdAphY2NvcmRpbmdseS4gV2UgbmVlZCB0byBhbm5vdGF0ZSBlbnRpcmUgdGltZXIgY2Fs
bGJhY2sgc2luY2UgaWYgd2UgZ2V0CnN0dWNrIGFueXdoZXJlIGluIHRoZXJlLCB0aGVuIHRoZSB0
aW1lciBzdG9wcywgYW5kIGhlbmNlIGZlbmNlcyBzdG9wLgpKdXN0IGFubm90YXRpbmcgdGhlIHRv
cCBwYXJ0IHRoYXQgZG9lcyB0aGUgdmJsYW5rIGhhbmRsaW5nIGlzbid0CmVub3VnaC4KClRlc3Rl
ZC1ieTogTWVsaXNzYSBXZW4gPG1lbGlzc2Euc3J3QGdtYWlsLmNvbT4KUmV2aWV3ZWQtYnk6IFJv
ZHJpZ28gU2lxdWVpcmEgPHJvZHJpZ29zaXF1ZWlyYW1lbG9AZ21haWwuY29tPgpDYzogbGludXgt
bWVkaWFAdmdlci5rZXJuZWwub3JnCkNjOiBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcK
Q2M6IGxpbnV4LXJkbWFAdmdlci5rZXJuZWwub3JnCkNjOiBhbWQtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpDYzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpDYzogQ2hyaXMgV2ls
c29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+CkNjOiBNYWFydGVuIExhbmtob3JzdCA8bWFh
cnRlbi5sYW5raG9yc3RAbGludXguaW50ZWwuY29tPgpDYzogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hy
aXN0aWFuLmtvZW5pZ0BhbWQuY29tPgpTaWduZWQtb2ZmLWJ5OiBEYW5pZWwgVmV0dGVyIDxkYW5p
ZWwudmV0dGVyQGludGVsLmNvbT4KQ2M6IFJvZHJpZ28gU2lxdWVpcmEgPHJvZHJpZ29zaXF1ZWly
YW1lbG9AZ21haWwuY29tPgpDYzogSGFuZWVuIE1vaGFtbWVkIDxoYW1vaGFtbWVkLnNhQGdtYWls
LmNvbT4KQ2M6IERhbmllbCBWZXR0ZXIgPGRhbmllbEBmZndsbC5jaD4KLS0tCiBkcml2ZXJzL2dw
dS9kcm0vdmttcy92a21zX2NydGMuYyB8IDggKysrKysrKy0KIDEgZmlsZSBjaGFuZ2VkLCA3IGlu
c2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
dmttcy92a21zX2NydGMuYyBiL2RyaXZlcnMvZ3B1L2RybS92a21zL3ZrbXNfY3J0Yy5jCmluZGV4
IDA0NDNiN2RlZWFlZi4uNjE2NDM0OWNkZjExIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0v
dmttcy92a21zX2NydGMuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vdmttcy92a21zX2NydGMuYwpA
QCAtMSw1ICsxLDcgQEAKIC8vIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4wKwogCisj
aW5jbHVkZSA8bGludXgvZG1hLWZlbmNlLmg+CisKICNpbmNsdWRlIDxkcm0vZHJtX2F0b21pYy5o
PgogI2luY2x1ZGUgPGRybS9kcm1fYXRvbWljX2hlbHBlci5oPgogI2luY2x1ZGUgPGRybS9kcm1f
cHJvYmVfaGVscGVyLmg+CkBAIC0xNCw3ICsxNiw5IEBAIHN0YXRpYyBlbnVtIGhydGltZXJfcmVz
dGFydCB2a21zX3ZibGFua19zaW11bGF0ZShzdHJ1Y3QgaHJ0aW1lciAqdGltZXIpCiAJc3RydWN0
IGRybV9jcnRjICpjcnRjID0gJm91dHB1dC0+Y3J0YzsKIAlzdHJ1Y3Qgdmttc19jcnRjX3N0YXRl
ICpzdGF0ZTsKIAl1NjQgcmV0X292ZXJydW47Ci0JYm9vbCByZXQ7CisJYm9vbCByZXQsIGZlbmNl
X2Nvb2tpZTsKKworCWZlbmNlX2Nvb2tpZSA9IGRtYV9mZW5jZV9iZWdpbl9zaWduYWxsaW5nKCk7
CiAKIAlyZXRfb3ZlcnJ1biA9IGhydGltZXJfZm9yd2FyZF9ub3coJm91dHB1dC0+dmJsYW5rX2hy
dGltZXIsCiAJCQkJCSAgb3V0cHV0LT5wZXJpb2RfbnMpOwpAQCAtNDksNiArNTMsOCBAQCBzdGF0
aWMgZW51bSBocnRpbWVyX3Jlc3RhcnQgdmttc192Ymxhbmtfc2ltdWxhdGUoc3RydWN0IGhydGlt
ZXIgKnRpbWVyKQogCQkJRFJNX0RFQlVHX0RSSVZFUigiQ29tcG9zZXIgd29ya2VyIGFscmVhZHkg
cXVldWVkXG4iKTsKIAl9CiAKKwlkbWFfZmVuY2VfZW5kX3NpZ25hbGxpbmcoZmVuY2VfY29va2ll
KTsKKwogCXJldHVybiBIUlRJTUVSX1JFU1RBUlQ7CiB9CiAKLS0gCjIuMzAuMAoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcg
bGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
