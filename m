Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CF277AADE
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jul 2019 16:23:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E9F9E6E562;
	Tue, 30 Jul 2019 14:23:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 63E626E560;
 Tue, 30 Jul 2019 14:23:07 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5A02CA0114;
 Tue, 30 Jul 2019 14:23:07 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Anshuman Gupta" <anshuman.gupta@intel.com>
Date: Tue, 30 Jul 2019 14:23:07 -0000
Message-ID: <20190730142307.20696.86529@emeril.freedesktop.org>
References: <20190730135024.31765-1-anshuman.gupta@intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20190730135024.31765-1-anshuman.gupta@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ESPARSE=3A_warning_for_D?=
 =?utf-8?q?C3CO_Support_for_TGL=2E?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogREMzQ08gU3VwcG9ydCBmb3IgVEdMLgpVUkwg
ICA6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvNjQ0MzYvClN0YXRl
IDogd2FybmluZwoKPT0gU3VtbWFyeSA9PQoKJCBkaW0gc3BhcnNlIG9yaWdpbi9kcm0tdGlwClNw
YXJzZSB2ZXJzaW9uOiB2MC41LjIKQ29tbWl0OiBkcm0vaTkxNS90Z2w6IEFkZCBEQzNDTyByZXF1
aXJlZCByZWdpc3RlciBhbmQgYml0cwpPa2F5IQoKQ29tbWl0OiBkcm0vaTkxNS90Z2w6IEFkZCBE
QzNDTyBtYXNrIHRvIGFsbG93ZWRfZGNfbWFzayBhbmQgZ2VuOV9kY19tYXNrCk9rYXkhCgpDb21t
aXQ6IGRybS9pOTE1L3RnbDogQWRkIHBvd2VyIHdlbGwgdG8gZW5hYmxlIERDM0NPIHN0YXRlCk9r
YXkhCgpDb21taXQ6IGRybS9pOTE1L3RnbDogbXV0dWFsIGV4Y2x1c2l2ZSBoYW5kbGluZyBmb3Ig
REMzQ08gYW5kIERDNS82Ck9rYXkhCgpDb21taXQ6IGRybS9pOTE1L3RnbDogQWRkIGhlbHBlciBm
dW5jdGlvbiB0byBwcmVmZXIgZGMzY28gb3ZlciBkYzUKT2theSEKCkNvbW1pdDogZHJtL2k5MTUv
dGdsOiBBZGQgVklERU8gcG93ZXIgZG9tYWluCk9rYXkhCgpDb21taXQ6IGRybS9pOTE1L3RnbDog
REMzQ08gUFNSMiBoZWxwZXIKK2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNy
LmM6NTU3OjIzOiB3YXJuaW5nOiBleHByZXNzaW9uIHVzaW5nIHNpemVvZih2b2lkKQorZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYzo1NTg6MjM6IHdhcm5pbmc6IGV4cHJl
c3Npb24gdXNpbmcgc2l6ZW9mKHZvaWQpCitkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX3Bzci5jOjU1ODoyMzogd2FybmluZzogZXhwcmVzc2lvbiB1c2luZyBzaXplb2Yodm9pZCkK
K2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmM6NTY2OjY6IHdhcm5pbmc6
IHN5bWJvbCAndGdsX2Rpc2FsbG93X2RjM2NvX29uX3BzcjJfZXhpdCcgd2FzIG5vdCBkZWNsYXJl
ZC4gU2hvdWxkIGl0IGJlIHN0YXRpYz8KCkNvbW1pdDogZHJtL2k5MTUvdGdsOiBzd2l0Y2ggYmV0
d2VlbiBkYzNjbyBhbmQgZGM1IGJhc2VkIG9uIGRpc3BsYXkgaWRsZW5lc3MKT2theSEKCkNvbW1p
dDogZHJtL2k5MTUvdGdsOiBBZGQgREMzQ08gY291bnRlciBpbiBpOTE1X2RtY19pbmZvCk9rYXkh
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
