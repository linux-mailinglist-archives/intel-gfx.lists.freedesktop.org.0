Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D625A5C0B
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Sep 2019 20:07:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 69EDB8926C;
	Mon,  2 Sep 2019 18:07:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 081738926C
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Sep 2019 18:07:37 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Sep 2019 11:07:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,460,1559545200"; d="scan'208";a="198617082"
Received: from hildebru-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.252.52.224])
 by fmsmga001.fm.intel.com with ESMTP; 02 Sep 2019 11:07:33 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  2 Sep 2019 21:08:12 +0300
Message-Id: <cover.1567446845.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH 0/4] drm/i915: deconflate display disable from
 no display
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RGVjb25mbGF0ZSBub3QgaGF2aW5nIGRpc3BsYXkgaGFyZHdhcmUgZnJvbSBoYXZpbmcgZGlzYWJs
ZWQgZGlzcGxheQpoYXJkd2FyZSwgd2l0aCBzb21lIGNvbGxhdGVyYWwgaW1wcm92ZW1lbnRzLgoK
VGhpcyBkb2Vzbid0IGFjdHVhbGx5IGZpeCBhbnkgb2YgdGhlIGlzc3VlcyByZXN1bHRpbmcgZnJv
bSB0aGUgdHdvIGJlaW5nCmNvbmZsYXRlZCwgYnV0IHVuYmxvY2tzIGZpeGluZyBib3RoIGluZGVw
ZW5kZW50bHkuCgpSZWFkIHRoZSBjb21taXQgbWVzc2FnZXMgZm9yIGRldGFpbHMuCgpCUiwKSmFu
aS4KCkNjOiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KQ2M6IEpvc8Op
IFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPgpDYzogVmlsbGUgU3lyasOk
bMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkphbmkgTmlrdWxhICg0KToKICBk
cm0vaTkxNTogYWRkIElOVEVMX05VTV9QSVBFUygpIGFuZCB1c2UgaXQKICBkcm0vaTkxNTogY29u
dmVydCBkZXZpY2UgaW5mbyBudW1fcGlwZXMgdG8gcGlwZV9tYXNrCiAgZHJtL2k5MTU6IGludHJv
ZHVjZSBJTlRFTF9ESVNQTEFZX0VOQUJMRUQoKQogIGRybS9pOTE1OiBzdG9wIGNvbmZsYXRpbmcg
SEFTX0RJU1BMQVkoKSBhbmQgZGlzYWJsZWQgZGlzcGxheQoKIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfYmlvcy5jICAgICB8ICAyICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2Rpc3BsYXkuYyAgfCAzMCArKysrKysrKysrLS0tLS0tLS0tCiBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuaCAgfCAgNCArLS0KIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJkZXYuYyAgICB8ICAyICstCiBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2dtYnVzLmMgICAgfCAgMiArLQogLi4uL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2xwZV9hdWRpby5jICAgIHwgIDIgKy0KIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfZHJ2LmMgICAgICAgICAgICAgICB8IDEwICsrKy0tLS0KIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfZHJ2LmggICAgICAgICAgICAgICB8ICA3ICsrKystCiBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X3BjaS5jICAgICAgICAgICAgICAgfCAyNCArKysrKysrLS0tLS0tLS0K
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RldmljZV9pbmZvLmMgICAgICB8IDE2ICsrKyst
LS0tLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RldmljZV9pbmZvLmggICAgICB8ICAy
ICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wY2guYyAgICAgICAgICAgICAgfCAgMiAr
LQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYyAgICAgICAgICAgICAgIHwgIDYgKyst
LQogMTMgZmlsZXMgY2hhbmdlZCwgNTYgaW5zZXJ0aW9ucygrKSwgNTMgZGVsZXRpb25zKC0pCgot
LSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
