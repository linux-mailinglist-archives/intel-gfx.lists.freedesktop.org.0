Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E04736796
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jun 2019 00:48:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 85BB28932A;
	Wed,  5 Jun 2019 22:48:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2E4068932A;
 Wed,  5 Jun 2019 22:48:52 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 28292A0088;
 Wed,  5 Jun 2019 22:48:52 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Aditya Swarup" <aditya.swarup@intel.com>
Date: Wed, 05 Jun 2019 22:48:52 -0000
Message-ID: <20190605224852.10842.96456@emeril.freedesktop.org>
References: <20190605215733.10227-1-aditya.swarup@intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20190605215733.10227-1-aditya.swarup@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_drm/i915/icl=3A_Enable_SSC_for_ICL_using_panel=5Fuse=5Fssc?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTUvaWNsOiBFbmFibGUgU1NDIGZv
ciBJQ0wgdXNpbmcgcGFuZWxfdXNlX3NzYwpVUkwgICA6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVk
ZXNrdG9wLm9yZy9zZXJpZXMvNjE2OTIvClN0YXRlIDogd2FybmluZwoKPT0gU3VtbWFyeSA9PQoK
JCBkaW0gY2hlY2twYXRjaCBvcmlnaW4vZHJtLXRpcAoyYmJiNTljNjdhYjMgZHJtL2k5MTUvaWNs
OiBFbmFibGUgU1NDIGZvciBJQ0wgdXNpbmcgcGFuZWxfdXNlX3NzYwotOjQ0OiBXQVJOSU5HOkJS
QUNFUzogYnJhY2VzIHt9IGFyZSBub3QgbmVjZXNzYXJ5IGZvciBzaW5nbGUgc3RhdGVtZW50IGJs
b2NrcwojNDQ6IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RwbGxfbWdyLmM6MjUz
MDoKKwlpZiAoaW50ZWxfcGFuZWxfdXNlX3NzYyhkZXZfcHJpdikpIHsKKwkJY2ZnY3IwIHw9IERQ
TExfQ0ZHQ1IwX1NTQ19FTkFCTEVfSUNMOworCX0KCi06NTk6IENIRUNLOkxJTkVfU1BBQ0lORzog
UGxlYXNlIHVzZSBhIGJsYW5rIGxpbmUgYWZ0ZXIgZnVuY3Rpb24vc3RydWN0L3VuaW9uL2VudW0g
ZGVjbGFyYXRpb25zCiM1OTogRklMRTogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZHJ2Lmg6
MTUwNToKIH0KK3N0YXRpYyBpbmxpbmUgYm9vbAoKLTo2NTogQ0hFQ0s6TE9HSUNBTF9DT05USU5V
QVRJT05TOiBMb2dpY2FsIGNvbnRpbnVhdGlvbnMgc2hvdWxkIGJlIG9uIHRoZSBwcmV2aW91cyBs
aW5lCiM2NTogRklMRTogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZHJ2Lmg6MTUxMToKKwly
ZXR1cm4gZGV2X3ByaXYtPnZidC5sdmRzX3VzZV9zc2MKKwkJJiYgIShkZXZfcHJpdi0+cXVpcmtz
ICYgUVVJUktfTFZEU19TU0NfRElTQUJMRSk7Cgp0b3RhbDogMCBlcnJvcnMsIDEgd2FybmluZ3Ms
IDIgY2hlY2tzLCAzOCBsaW5lcyBjaGVja2VkCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZng=
