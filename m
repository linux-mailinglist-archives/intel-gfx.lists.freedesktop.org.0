Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 28A981030FB
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Nov 2019 02:09:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B5F86E44F;
	Wed, 20 Nov 2019 01:09:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 63F3F6E44F
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Nov 2019 01:09:18 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Nov 2019 17:09:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,220,1571727600"; d="scan'208";a="204570884"
Received: from jssummer-xeon.ra.intel.com ([10.23.184.90])
 by fmsmga008.fm.intel.com with ESMTP; 19 Nov 2019 17:09:17 -0800
From: Stuart Summers <stuart.summers@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 19 Nov 2019 17:10:16 -0800
Message-Id: <20191120011016.18049-1-stuart.summers@intel.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Do not initialize display BW when
 display not available
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

V2hlbiBkaXNwbGF5IGlzIG5vdCBhdmFpbGFibGUsIGZpbmRpbmcgdGhlIG1lbW9yeSBiYW5kd2lk
dGggYXZhaWxhYmxlCmZvciBkaXNwbGF5IGlzIG5vdCB1c2VmdWwuIFNraXAgdGhpcyBzZXF1ZW5j
ZSBoZXJlLgoKUmVmZXJlbmNlczogSFNERVMgMTIwOTk3ODI1NQoKU2lnbmVkLW9mZi1ieTogU3R1
YXJ0IFN1bW1lcnMgPHN0dWFydC5zdW1tZXJzQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2J3LmMgfCAzICsrKwogMSBmaWxlIGNoYW5nZWQsIDMgaW5z
ZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfYncuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYncuYwppbmRleCAz
ZjZlMjlmNjEzMjMuLjg2ZTc1ZTg1ODAwOCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9idy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfYncuYwpAQCAtMjY0LDYgKzI2NCw5IEBAIHN0YXRpYyB1bnNpZ25lZCBpbnQgaWNsX21h
eF9idyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCiAKIHZvaWQgaW50ZWxfYndf
aW5pdF9odyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiB7CisJaWYgKCFIQVNf
RElTUExBWShkZXZfcHJpdikpCisJCXJldHVybjsKKwogCWlmIChJU19HRU4oZGV2X3ByaXYsIDEy
KSkKIAkJaWNsX2dldF9id19pbmZvKGRldl9wcml2LCAmdGdsX3NhX2luZm8pOwogCWVsc2UgaWYg
KElTX0dFTihkZXZfcHJpdiwgMTEpKQotLSAKMi4yMi4wCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZng=
