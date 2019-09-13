Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 16BCCB1B5D
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Sep 2019 12:09:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C7D4D6EF04;
	Fri, 13 Sep 2019 10:09:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9D7A088FD4;
 Fri, 13 Sep 2019 10:09:40 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 972E8A3DED;
 Fri, 13 Sep 2019 10:09:40 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 13 Sep 2019 10:09:40 -0000
Message-ID: <20190913100940.32426.16830@emeril.freedesktop.org>
References: <20190913075137.18476-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20190913075137.18476-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ESPARSE=3A_warning_for_s?=
 =?utf-8?q?eries_starting_with_=5B1/2=5D_drm/i915/tgl=3A_Introduce_gen12_f?=
 =?utf-8?q?orcewake_ranges?=
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
Reply-To: intel-gfx@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggWzEvMl0g
ZHJtL2k5MTUvdGdsOiBJbnRyb2R1Y2UgZ2VuMTIgZm9yY2V3YWtlIHJhbmdlcwpVUkwgICA6IGh0
dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvNjY2MzgvClN0YXRlIDogd2Fy
bmluZwoKPT0gU3VtbWFyeSA9PQoKJCBkaW0gc3BhcnNlIG9yaWdpbi9kcm0tdGlwClNwYXJzZSB2
ZXJzaW9uOiB2MC42LjAKQ29tbWl0OiBkcm0vaTkxNS90Z2w6IEludHJvZHVjZSBnZW4xMiBmb3Jj
ZXdha2UgcmFuZ2VzCisuL2luY2x1ZGUvbGludXgvc3BpbmxvY2suaDozOTM6OTogd2FybmluZzog
Y29udGV4dCBpbWJhbGFuY2UgaW4gJ2dlbjEyX2Z3dGFibGVfcmVhZDE2JyAtIGRpZmZlcmVudCBs
b2NrIGNvbnRleHRzIGZvciBiYXNpYyBibG9jaworLi9pbmNsdWRlL2xpbnV4L3NwaW5sb2NrLmg6
MzkzOjk6IHdhcm5pbmc6IGNvbnRleHQgaW1iYWxhbmNlIGluICdnZW4xMl9md3RhYmxlX3JlYWQz
MicgLSBkaWZmZXJlbnQgbG9jayBjb250ZXh0cyBmb3IgYmFzaWMgYmxvY2sKKy4vaW5jbHVkZS9s
aW51eC9zcGlubG9jay5oOjM5Mzo5OiB3YXJuaW5nOiBjb250ZXh0IGltYmFsYW5jZSBpbiAnZ2Vu
MTJfZnd0YWJsZV9yZWFkNjQnIC0gZGlmZmVyZW50IGxvY2sgY29udGV4dHMgZm9yIGJhc2ljIGJs
b2NrCisuL2luY2x1ZGUvbGludXgvc3BpbmxvY2suaDozOTM6OTogd2FybmluZzogY29udGV4dCBp
bWJhbGFuY2UgaW4gJ2dlbjEyX2Z3dGFibGVfcmVhZDgnIC0gZGlmZmVyZW50IGxvY2sgY29udGV4
dHMgZm9yIGJhc2ljIGJsb2NrCisuL2luY2x1ZGUvbGludXgvc3BpbmxvY2suaDozOTM6OTogd2Fy
bmluZzogY29udGV4dCBpbWJhbGFuY2UgaW4gJ2dlbjEyX2Z3dGFibGVfd3JpdGUxNicgLSBkaWZm
ZXJlbnQgbG9jayBjb250ZXh0cyBmb3IgYmFzaWMgYmxvY2sKKy4vaW5jbHVkZS9saW51eC9zcGlu
bG9jay5oOjM5Mzo5OiB3YXJuaW5nOiBjb250ZXh0IGltYmFsYW5jZSBpbiAnZ2VuMTJfZnd0YWJs
ZV93cml0ZTMyJyAtIGRpZmZlcmVudCBsb2NrIGNvbnRleHRzIGZvciBiYXNpYyBibG9jaworLi9p
bmNsdWRlL2xpbnV4L3NwaW5sb2NrLmg6MzkzOjk6IHdhcm5pbmc6IGNvbnRleHQgaW1iYWxhbmNl
IGluICdnZW4xMl9md3RhYmxlX3dyaXRlOCcgLSBkaWZmZXJlbnQgbG9jayBjb250ZXh0cyBmb3Ig
YmFzaWMgYmxvY2sKCkNvbW1pdDogZHJtL2k5MTUvdGdsOiBzL3NzL2V1IGZ1c2UgcmVhZGluZyBz
dXBwb3J0Ck9rYXkhCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
Zng=
