Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 25CF33D17B7
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Jul 2021 22:14:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D76876ED10;
	Wed, 21 Jul 2021 20:14:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-x62e.google.com (mail-pl1-x62e.google.com
 [IPv6:2607:f8b0:4864:20::62e])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E8B006ECD2
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Jul 2021 20:13:59 +0000 (UTC)
Received: by mail-pl1-x62e.google.com with SMTP id n11so1686754plc.2
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Jul 2021 13:13:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=XTmGrBRXJMe7CPNaTxwy1Nwy1BT+KOCQBu00fQa54Uk=;
 b=SzQf12JG8bZd7aS7Gmfa+aOgjoTxtRP7OPfRmQb9cB+tSAYOD3LiwI4cuv1ORYf302
 AdwKhm55wlfUDadUbXx/HeTrpOzAsF8tIR42HSKN9Rr7xIkacb9MvRpjGgWdYVDII+rM
 Dy+KiigAOUEBb8VlYD0b/T5lzhQw5kfsKRyguy7eByutvSR0ae3KdkMnzj9R8U6T1P8g
 MbB118nS/Z9UBnvo/N4rVffWfSxI29hJOUDBM7Gp+YJiAJkihnXsXbmMOH3hbPLLira9
 tCs3cVqRcOXDPRpvYXFjtB7gOAhvPkrD6gnsz4edS0XJJZU3+h0piLDSHJr5+UB/npfT
 0qyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=XTmGrBRXJMe7CPNaTxwy1Nwy1BT+KOCQBu00fQa54Uk=;
 b=MMShdXUGMiogIKto7NcrtIAOxqMrdkbGo5ijMXLTH1N11nl/M+0wtbHThL5AHsXaUj
 tiG+8MyL8jUp4sGOiphx5ZBHjIn4WHURYwWyRC2iZfwILJFyAyCIJOUolQ1kVDg85PqQ
 6ee4PHtonQdua+GXOsYOkqg1l0RxWEN9D5EJrSKJFV28cmvXoKul+PY/2KMNDvMT7ywX
 cvzlsi/ocNtGeeG440fmyJa8pqezXMzqKNJfrS8G8HmDQQBI78ZpciD5FW4ez4rGnUxf
 hDxXLZ1mwkRQPqi2JwLODcHbSB9hFbW7A5XReqE6Wljb1XzlMWI6JSTC4a7Z9etVjjsq
 7Lig==
X-Gm-Message-State: AOAM530ePSovQBElfyU14htefNNP6I04a4gQNdZNqVib8tfCrOOXVmrT
 RyoBueIjWVMUKFvuB4V5vSJ5eYxB5pa1Vg==
X-Google-Smtp-Source: ABdhPJw578K55cD454yYnoPEhzvZ5gnhVVkNqGBJ8ZheH7ht1dlt8MwNrna2cJcH62Cup+6mrCDyjw==
X-Received: by 2002:a63:6f8c:: with SMTP id k134mr38361964pgc.35.1626898439257; 
 Wed, 21 Jul 2021 13:13:59 -0700 (PDT)
Received: from omlet.com ([134.134.137.82])
 by smtp.gmail.com with ESMTPSA id h24sm28777439pfn.180.2021.07.21.13.13.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 21 Jul 2021 13:13:57 -0700 (PDT)
From: Jason Ekstrand <jason@jlekstrand.net>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Wed, 21 Jul 2021 15:13:41 -0500
Message-Id: <20210721201343.2962674-6-jason@jlekstrand.net>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210721201343.2962674-1-jason@jlekstrand.net>
References: <20210721201343.2962674-1-jason@jlekstrand.net>
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
cy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3R0bS5jCmluZGV4IGYyNTNiMTFlOWUzNjcuLmI3
NmJkZDk3OGE1Y2MgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dl
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
