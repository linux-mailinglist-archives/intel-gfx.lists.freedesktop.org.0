Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D70211EDF3E
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jun 2020 10:13:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 958A36E2E0;
	Thu,  4 Jun 2020 08:12:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com
 [IPv6:2a00:1450:4864:20::444])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 219B26E2DE
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Jun 2020 08:12:41 +0000 (UTC)
Received: by mail-wr1-x444.google.com with SMTP id j10so5023167wrw.8
 for <intel-gfx@lists.freedesktop.org>; Thu, 04 Jun 2020 01:12:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=+tjBPalwpvfaI2TJsBD2Z0Z3ZUY/HUiWjYFdKsCw83k=;
 b=gE8sqqdhi+ZYNpSwpwhah5KEVl5ccYRDpPqBoxZhhBcosuxdUUBujJlkR2DqFrVMMb
 SHhTPvm1cFszlQjqvdRcNdZIe628+AaiwXuD9C5umUghpDpDj2u5g6Zm/nnu8nPXkam7
 hk6PoZYcpGdN71cpcxHDgPkUd9FGT9iRwxbMY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=+tjBPalwpvfaI2TJsBD2Z0Z3ZUY/HUiWjYFdKsCw83k=;
 b=kAyjCyXpW/IugkGnj6COmTABdmpU+AZtCWK9BfUkiG7PWwnvu/x9caZT78zxq7GsRv
 a1Xd6165HNMy3QX+YV6mEl/poAUNDONBW4HDxlVRV9HNr3+7t68fTXpbQN70xY3GcpH2
 KPY7DXd5dBk/kR+Qqs2PcES3Etvfelbt7ZOCx4oHB0A4vjESYulBU8KLLbC2/N3d7C6f
 YQm618w26e+9D3rpkgGmuNjnwVMrHy34UKJAyedpLRMcRl2BBHFDo37P/bd10LcdyvGr
 JazYHrTffGAC/mJ2Db93skWnHsA6T0r9XHGlhxBQEwfmwP3BkSTKa0ILkRILZv0W+WpD
 RWow==
X-Gm-Message-State: AOAM530HEuq7BQqSuIZ11/pbPkLRJZcni9EqLOLSl+0dF1gFfOJqREab
 zuDDA7V7rCm7L9Zn3PLOWnA27FVRMHQ=
X-Google-Smtp-Source: ABdhPJwyNPXbNijhsqAaAQsM5v0tMhjUWaBKp4ap7N+trIcZ19JD/P6xXjcKeG1ExDIrDg6JX8QemA==
X-Received: by 2002:a5d:6144:: with SMTP id y4mr3357789wrt.185.1591258359734; 
 Thu, 04 Jun 2020 01:12:39 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id f11sm6873305wrj.2.2020.06.04.01.12.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 04 Jun 2020 01:12:39 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Thu,  4 Jun 2020 10:12:12 +0200
Message-Id: <20200604081224.863494-7-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200604081224.863494-1-daniel.vetter@ffwll.ch>
References: <20200604081224.863494-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 06/18] drm/vblank: Annotate with dma-fence
 signalling section
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
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 LKML <linux-kernel@vger.kernel.org>, amd-gfx@lists.freedesktop.org,
 Chris Wilson <chris@chris-wilson.co.uk>, linaro-mm-sig@lists.linaro.org,
 Daniel Vetter <daniel.vetter@intel.com>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhpcyBpcyByYXRoZXIgb3ZlcmtpbGwgc2luY2UgY3VycmVudGx5IGFsbCBkcml2ZXJzIGNhbGwg
dGhpcyBmcm9tCmhhcmRpcnEgKG9yIGF0IGxlYXN0IHRpbWVycykuIEJ1dCBtYXliZSBpbiB0aGUg
ZnV0dXJlIHdlJ3JlIGdvaW5nIHRvCmhhdmUgdGhyZWFkIGlycSBoYW5kbGVycyBhbmQgd2hhdCBu
b3QsIGRvZXNuJ3QgaHVydCB0byBiZSBwcmVwYXJlZC4KUGx1cyB0aGlzIGlzIGFuIGVhc3kgc3Rh
cnQgZm9yIHNwcmlua2xpbmcgdGhlc2UgZmVuY2UgYW5ub3RhdGlvbnMgaW50bwpzaGFyZWQgY29k
ZS4KCkNjOiBsaW51eC1tZWRpYUB2Z2VyLmtlcm5lbC5vcmcKQ2M6IGxpbmFyby1tbS1zaWdAbGlz
dHMubGluYXJvLm9yZwpDYzogbGludXgtcmRtYUB2Z2VyLmtlcm5lbC5vcmcKQ2M6IGFtZC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCkNjOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
CkNjOiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KQ2M6IE1hYXJ0ZW4g
TGFua2hvcnN0IDxtYWFydGVuLmxhbmtob3JzdEBsaW51eC5pbnRlbC5jb20+CkNjOiBDaHJpc3Rp
YW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+ClNpZ25lZC1vZmYtYnk6IERhbmll
bCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9k
cm1fdmJsYW5rLmMgfCA4ICsrKysrKystCiAxIGZpbGUgY2hhbmdlZCwgNyBpbnNlcnRpb25zKCsp
LCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2RybV92Ymxhbmsu
YyBiL2RyaXZlcnMvZ3B1L2RybS9kcm1fdmJsYW5rLmMKaW5kZXggODVlNWYyZGIxNjA4Li45M2E1
YmJhNWY2NjUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9kcm1fdmJsYW5rLmMKKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2RybV92YmxhbmsuYwpAQCAtMjQsNiArMjQsNyBAQAogICogT1RIRVIg
REVBTElOR1MgSU4gVEhFIFNPRlRXQVJFLgogICovCiAKKyNpbmNsdWRlIDxsaW51eC9kbWEtZmVu
Y2UuaD4KICNpbmNsdWRlIDxsaW51eC9leHBvcnQuaD4KICNpbmNsdWRlIDxsaW51eC9tb2R1bGVw
YXJhbS5oPgogCkBAIC0xOTA4LDcgKzE5MDksNyBAQCBib29sIGRybV9oYW5kbGVfdmJsYW5rKHN0
cnVjdCBkcm1fZGV2aWNlICpkZXYsIHVuc2lnbmVkIGludCBwaXBlKQogewogCXN0cnVjdCBkcm1f
dmJsYW5rX2NydGMgKnZibGFuayA9ICZkZXYtPnZibGFua1twaXBlXTsKIAl1bnNpZ25lZCBsb25n
IGlycWZsYWdzOwotCWJvb2wgZGlzYWJsZV9pcnE7CisJYm9vbCBkaXNhYmxlX2lycSwgZmVuY2Vf
Y29va2llOwogCiAJaWYgKGRybV9XQVJOX09OX09OQ0UoZGV2LCAhZHJtX2Rldl9oYXNfdmJsYW5r
KGRldikpKQogCQlyZXR1cm4gZmFsc2U7CkBAIC0xOTE2LDYgKzE5MTcsOCBAQCBib29sIGRybV9o
YW5kbGVfdmJsYW5rKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsIHVuc2lnbmVkIGludCBwaXBlKQog
CWlmIChkcm1fV0FSTl9PTihkZXYsIHBpcGUgPj0gZGV2LT5udW1fY3J0Y3MpKQogCQlyZXR1cm4g
ZmFsc2U7CiAKKwlmZW5jZV9jb29raWUgPSBkbWFfZmVuY2VfYmVnaW5fc2lnbmFsbGluZygpOwor
CiAJc3Bpbl9sb2NrX2lycXNhdmUoJmRldi0+ZXZlbnRfbG9jaywgaXJxZmxhZ3MpOwogCiAJLyog
TmVlZCB0aW1lc3RhbXAgbG9jayB0byBwcmV2ZW50IGNvbmN1cnJlbnQgZXhlY3V0aW9uIHdpdGgK
QEAgLTE5MjgsNiArMTkzMSw3IEBAIGJvb2wgZHJtX2hhbmRsZV92Ymxhbmsoc3RydWN0IGRybV9k
ZXZpY2UgKmRldiwgdW5zaWduZWQgaW50IHBpcGUpCiAJaWYgKCF2YmxhbmstPmVuYWJsZWQpIHsK
IAkJc3Bpbl91bmxvY2soJmRldi0+dmJsYW5rX3RpbWVfbG9jayk7CiAJCXNwaW5fdW5sb2NrX2ly
cXJlc3RvcmUoJmRldi0+ZXZlbnRfbG9jaywgaXJxZmxhZ3MpOworCQlkbWFfZmVuY2VfZW5kX3Np
Z25hbGxpbmcoZmVuY2VfY29va2llKTsKIAkJcmV0dXJuIGZhbHNlOwogCX0KIApAQCAtMTk1Myw2
ICsxOTU3LDggQEAgYm9vbCBkcm1faGFuZGxlX3ZibGFuayhzdHJ1Y3QgZHJtX2RldmljZSAqZGV2
LCB1bnNpZ25lZCBpbnQgcGlwZSkKIAlpZiAoZGlzYWJsZV9pcnEpCiAJCXZibGFua19kaXNhYmxl
X2ZuKCZ2YmxhbmstPmRpc2FibGVfdGltZXIpOwogCisJZG1hX2ZlbmNlX2VuZF9zaWduYWxsaW5n
KGZlbmNlX2Nvb2tpZSk7CisKIAlyZXR1cm4gdHJ1ZTsKIH0KIEVYUE9SVF9TWU1CT0woZHJtX2hh
bmRsZV92YmxhbmspOwotLSAKMi4yNi4yCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZngK
