Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0283E3BC921
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Jul 2021 12:12:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9AE048969E;
	Tue,  6 Jul 2021 10:12:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com
 [IPv6:2a00:1450:4864:20::334])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BF604896B0
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Jul 2021 10:12:16 +0000 (UTC)
Received: by mail-wm1-x334.google.com with SMTP id
 i2-20020a05600c3542b02902058529ea07so1852941wmq.3
 for <intel-gfx@lists.freedesktop.org>; Tue, 06 Jul 2021 03:12:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=GJFjpnfi1CrXf9Xlto1Y0oqA4kGU3rsK5ujAK/B2UD0=;
 b=RLSr0BMa2WuqooB9WTidkm9M10gQONkPGEe2TtNROAgiPX8sJYVD+SO8G65+hw5uvH
 wkS1+bLSKgnX1/3P7A81eDCwdpGH9URQJn/HxAvqKI3fP88t/xCIT7cvqEx1kvHtpLFL
 TjWvDsncXw0DDxGnoPlvjHfdZr0OK8sGDEx2k=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=GJFjpnfi1CrXf9Xlto1Y0oqA4kGU3rsK5ujAK/B2UD0=;
 b=hYDCmJj770DLio7cgl43LnEcsfNxuJm6X4VTMC0TLo/DK/t3q0gSXpf7zSAWxjq30E
 a8rfngNvThkHwDmD4KyqMRMuyhmDfCJmyjKDgBtVIHGfOi3yGHa2v6HHCEbGk92isafA
 H41J76JO4H3wDdrIAC0jZnvejbO3GBKFA9D6asGczzZf42w14P6o5blOpPbwCiWXjHco
 Ss4wJTIbPb8163HcU7o5O6bdosrtM5a+sOJP8B6CZQ8civ1hpfeFntskBRMXbFMPec6y
 7rnKiMLn7sO2EXJkXgf7RQSXt9/Xm1L3vALsbIi1MIuM3QSvCi+aslxpNaz4J7Pr31Tl
 4zTQ==
X-Gm-Message-State: AOAM532hEjggiTOw/2ipdf4KJTkPRi/vNDWe4TtvHC79qfyuJL3fQC5G
 DLp3+A8AkVhVNtngYxaxxYdTgg==
X-Google-Smtp-Source: ABdhPJxDM9mfVZ/s7nd08cWobUUsT4n1KrJ55qceNrVz76A6WO7wHcLc/WGZ/OlJwJjbN9bjf0bqFg==
X-Received: by 2002:a1c:4e0c:: with SMTP id g12mr3886074wmh.120.1625566335334; 
 Tue, 06 Jul 2021 03:12:15 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id u2sm9862739wmc.42.2021.07.06.03.12.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 06 Jul 2021 03:12:14 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Tue,  6 Jul 2021 12:12:02 +0200
Message-Id: <20210706101209.3034092-1-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/7] dma-resv fence DAG fixes
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGkgYWxsLAoKRmluYWxseSBJIHRoaW5rIEkgZ290IHRoZW0gYWxsIGluIHRyeWluZyB0byBhdWRp
dCBhbGwgZHJpdmVycyBmb3IgaG93IHRoZXkKZGVhbCB3aXRoIGRtYS1yZXN2IGRlcGVuZGVuY2ll
cyBpbiB0aGVpciBjb21tYW5kIHN1Ym1pc3Npb24gaW9jdGwuCgpUaGlzIHNlcmllcyBpcyBpbmNv
bXBsZXRlLCBpdCBhbHNvIG5lZWRzIGEgZmV3IHRoaW5ncyBmcm9tIENocmlzdGlhbgotIG5vdXZl
YXUgZml4IGZvciB3YWl0aW5nIGZvciBhbGwgZmVuY2VzCi0gdmFyaW91cyBwYXRjaGVzIGZvciBm
aXhpbmcgdXAgZG1hLWJ1Zi9yZXN2IGZ1bmN0aW9ucyB0byBhbHdheXMgd2FpdCBmb3IKICBhbGwg
ZmVuY2VzIChkbWEtYnVmIHBvbGwsIGlzX3NpZ25hbGxlZCwgLi4uKQotIEkgZG8gaW5jbHVkZSB0
aGUgb25lIG1zbSBwYXRjaCBmcm9tIENocmlzdGlhbiBoZXJlIHNpbmNlIHRoZXJlIHdhcwogIGFu
b3RoZXIgaXNzdWUgaW4gbXNtIHRoYXQgbmVlZGVkIGZpeGluZywgYW5kIHRvIG1ha2Ugc3VyZSB3
ZSBoYXZlIHRoZQogIGNvbXBsZXRlIHNldCBmb3IgbXNtCgpUd28gbWFpbiB0aGluZ3M6Ci0gZml4
IGRyaXZlcnMgdGhhdCBjdXJyZW50bHkgY2FuIGJyZWFrIHRoZSBEQUcuIEkgb3B0ZWQgZm9yIHRo
ZSBkdW1iZXN0CiAgcG9zc2libGUgd2F5IGFuZCBub3QgZm9yIHJvbGxpbmcgb3V0IGRtYV9mZW5j
ZV9jaGFpbiAtIHRoaXMgY2FuIGJlIGZpeGVkCiAgbGF0ZXIgb24gaWYgbmVlZGVkLgoKLSBhbGxv
dyBzaGFyZWQgZmVuY2VzIHRvIGJlIGRlY291cGxlZCBmcm9tIHRoZSBleGNsdXNpdmUgc2xvdCwg
d2hpY2gKICBtb3N0bHkgbWVhbnMgd2UgY2FuJ3Qgc2tpcCB3YWl0aW5nIGZvciB0aGUgZXhjbHVz
aXZlIGZlbmNlIGlmIHRoZXJlJ3MKICBzaGFyZWQgZmVuY2VzIHByZXNlbnQsIHdlIGhhdmUgdG8g
d2FpdCBmb3IgYWxsIGZlbmNlcy4gVGhpcyBpcyBhCiAgc2VtYW50aWMgY2hhbmdlIGNvbXBhcmVk
IHRvIHdoYXQgd2UndmUgaGFkIHRodXMgZmFyLCBidXQgcmVhbGx5IG1ha2VzIGEKICB0b24gb2Yg
c2Vuc2UgZ2l2ZW4gd2hlcmUgdGhpbmdzIGFyZSBoZWFkaW5nIHRvd2FyZHMuCgpOb3RlIHRoYXQg
dGhpcyBtZWFucyB0aGUgaW1wb3J0L2V4cG9ydCBwYXRjaGVzIGZyb20gSmFzb24gbmVlZCB0byBi
ZQphZGp1c3RlZCB0b28gdG8gZml0LgoKUGx1cyBzb21lIGRvY3MgZm9yIGRtYS1yZXN2LCB0aGV5
J3ZlIGJlZW4gcmF0aGVyIGxhY2tpbmcuCgpUZXN0aW5nIGFuZCByZXZpZXcgaGlnaGx5IHdlbGNv
bWUuCgpDaHJpc3RpYW4gS8O2bmlnICgxKToKICBkcm0vbXNtOiBhbHdheXMgd2FpdCBmb3IgdGhl
IGV4Y2x1c2l2ZSBmZW5jZQoKRGFuaWVsIFZldHRlciAoNik6CiAgZHJtL21zbTogRG9uJ3QgYnJl
YWsgZXhjbHVzaXZlIGZlbmNlIG9yZGVyaW5nCiAgZHJtL2V0bmF2aXY6IERvbid0IGJyZWFrIGV4
Y2x1c2l2ZSBmZW5jZSBvcmRlcmluZwogIGRybS9pOTE1OiBkZWxldGUgZXhjbHVkZSBhcmd1bWVu
dCBmcm9tIGk5MTVfc3dfZmVuY2VfYXdhaXRfcmVzZXJ2YXRpb24KICBkcm0vaTkxNTogQWx3YXlz
IHdhaXQgZm9yIHRoZSBleGNsdXNpdmUgZmVuY2UKICBkcm0vaTkxNTogRG9uJ3QgYnJlYWsgZXhj
bHVzaXZlIGZlbmNlIG9yZGVyaW5nCiAgZG1hLXJlc3Y6IEdpdmUgdGhlIGRvY3MgYSBkby1vdmVy
CgogZHJpdmVycy9kbWEtYnVmL2RtYS1yZXN2LmMgICAgICAgICAgICAgICAgICAgIHwgIDIyICsr
Ky0KIGRyaXZlcnMvZ3B1L2RybS9ldG5hdml2L2V0bmF2aXZfZ2VtX3N1Ym1pdC5jICB8ICAgOCAr
LQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgIHwgICA0ICst
CiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fY2xmbHVzaC5jICAgfCAgIDIgKy0K
IC4uLi9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2V4ZWNidWZmZXIuYyAgICB8ICAgOCArLQog
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9zd19mZW5jZS5jICAgICAgICAgIHwgIDEwICstCiBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3N3X2ZlbmNlLmggICAgICAgICAgfCAgIDEgLQogZHJp
dmVycy9ncHUvZHJtL21zbS9tc21fZ2VtLmMgICAgICAgICAgICAgICAgIHwgIDE2ICsrLQogZHJp
dmVycy9ncHUvZHJtL21zbS9tc21fZ2VtX3N1Ym1pdC5jICAgICAgICAgIHwgICAzICstCiBpbmNs
dWRlL2xpbnV4L2RtYS1yZXN2LmggICAgICAgICAgICAgICAgICAgICAgfCAxMDQgKysrKysrKysr
KysrKysrKystCiAxMCBmaWxlcyBjaGFuZ2VkLCAxNDIgaW5zZXJ0aW9ucygrKSwgMzYgZGVsZXRp
b25zKC0pCgotLSAKMi4zMi4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZngK
