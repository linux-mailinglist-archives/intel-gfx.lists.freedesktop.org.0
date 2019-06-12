Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C9A4141C1E
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Jun 2019 08:20:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E285891E3;
	Wed, 12 Jun 2019 06:20:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4852C891E3
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Jun 2019 06:20:13 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Jun 2019 23:20:12 -0700
X-ExtLoop1: 1
Received: from linuxpresi1-desktop.iind.intel.com ([10.223.74.143])
 by fmsmga007.fm.intel.com with ESMTP; 11 Jun 2019 23:20:10 -0700
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 12 Jun 2019 12:14:58 +0530
Message-Id: <1560321900-18318-3-git-send-email-uma.shankar@intel.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1560321900-18318-1-git-send-email-uma.shankar@intel.com>
References: <1560321900-18318-1-git-send-email-uma.shankar@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [v4 2/4] drm/i915/icl: Add register definitions for
 Multi Segmented gamma
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

QWRkIG1hY3JvcyB0byBkZWZpbmUgbXVsdGkgc2VnbWVudGVkIGdhbW1hIHJlZ2lzdGVycwoKVjI6
IEFkZHJlc3NlZCBWaWxsZSdzIGNvbW1lbnRzOgogICAgCUFkZCBnZW4tbGFibGUgYmVmb3JlIGJp
dCBkZWZpbml0aW9uCiAgICBBZGRyZXNzZWQgSmFuaSdzIGNvbW1lbnQKCS0gVXNlIFJFR19HRU5N
QVNLKCkgYW5kIFJFR19CSVQoKQpWMzogQWRkcmVzc2VkIFZpbGxlJ3MgY29tbWVudHM6CiAgICAt
IFB1dCBjb21tZW50cyBhdCB0aGUgZW5kIG9mIGxpbmUuCiAgICAtIENoYW5nZSB0aGUgY29tbWVu
dCBhdCBzdGFydCBvZiBJQ0wgbXVsdGlzZWdtZW50ZWQgZ2FtbWEgcmVnaXN0ZXJzLgogICAgQWRk
ZWQgVmlsbGUncyByLWIKCkNjOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXgu
aW50ZWwuY29tPgpDYzogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGxpbnV4LmludGVsLmNvbT4K
Q2M6IE1hYXJ0ZW4gTGFua2hvcnN0IDxtYWFydGVuLmxhbmtob3JzdEBsaW51eC5pbnRlbC5jb20+
CgpSZXZpZXdlZC1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVs
LmNvbT4KU2lnbmVkLW9mZi1ieTogVW1hIFNoYW5rYXIgPHVtYS5zaGFua2FyQGludGVsLmNvbT4K
U2lnbmVkLW9mZi1ieTogU2hhc2hhbmsgU2hhcm1hIDxzaGFzaGFuay5zaGFybWFAaW50ZWwuY29t
PgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggfCAxOSArKysrKysrKysrKysr
KysrKystCiAxIGZpbGUgY2hhbmdlZCwgMTggaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQoK
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X3JlZy5oCmluZGV4IDdhMjY3NjYuLjA3OTgxNTEgMTAwNjQ0Ci0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9yZWcuaApAQCAtNzIwMyw3ICs3MjAzLDggQEAgZW51bSB7CiAjZGVmaW5lICBHQU1N
QV9NT0RFX01PREVfOEJJVAkoMCA8PCAwKQogI2RlZmluZSAgR0FNTUFfTU9ERV9NT0RFXzEwQklU
CSgxIDw8IDApCiAjZGVmaW5lICBHQU1NQV9NT0RFX01PREVfMTJCSVQJKDIgPDwgMCkKLSNkZWZp
bmUgIEdBTU1BX01PREVfTU9ERV9TUExJVAkoMyA8PCAwKQorI2RlZmluZSAgR0FNTUFfTU9ERV9N
T0RFX1NQTElUCSgzIDw8IDApIC8qIGl2Yi1iZHcgKi8KKyNkZWZpbmUgIEdBTU1BX01PREVfTU9E
RV8xMkJJVF9NVUxUSV9TRUdNRU5URUQJKDMgPDwgMCkgLyogaWNsICsgKi8KIAogLyogRE1DL0NT
UiAqLwogI2RlZmluZSBDU1JfUFJPR1JBTShpKQkJX01NSU8oMHg4MDAwMCArIChpKSAqIDQpCkBA
IC0xMDE2NCw2ICsxMDE2NSwyMiBAQCBlbnVtIHNrbF9wb3dlcl9nYXRlIHsKICNkZWZpbmUgUFJF
X0NTQ19HQU1DX0lOREVYKHBpcGUpCV9NTUlPX1BJUEUocGlwZSwgX1BSRV9DU0NfR0FNQ19JTkRF
WF9BLCBfUFJFX0NTQ19HQU1DX0lOREVYX0IpCiAjZGVmaW5lIFBSRV9DU0NfR0FNQ19EQVRBKHBp
cGUpCQlfTU1JT19QSVBFKHBpcGUsIF9QUkVfQ1NDX0dBTUNfREFUQV9BLCBfUFJFX0NTQ19HQU1D
X0RBVEFfQikKIAorLyogSUNMIE11bHRpIHNlZ21lbnRlZCBnYW1tYSAqLworI2RlZmluZSBfUEFM
X1BSRUNfTVVMVElfU0VHX0lOREVYX0EJMHg0QTQwOAorI2RlZmluZSBfUEFMX1BSRUNfTVVMVElf
U0VHX0lOREVYX0IJMHg0QUMwOAorI2RlZmluZSAgUEFMX1BSRUNfTVVMVElfU0VHTUVOVF9BVVRP
X0lOQ1JFTUVOVAkJUkVHX0JJVCgxNSkKKyNkZWZpbmUgIFBBTF9QUkVDX01VTFRJX1NFR01FTlRf
SU5ERVhfVkFMVUVfTUFTSwlSRUdfR0VOTUFTSyg0LCAwKQorCisjZGVmaW5lIF9QQUxfUFJFQ19N
VUxUSV9TRUdfREFUQV9BCTB4NEE0MEMKKyNkZWZpbmUgX1BBTF9QUkVDX01VTFRJX1NFR19EQVRB
X0IJMHg0QUMwQworCisjZGVmaW5lIFBSRUNfUEFMX01VTFRJX1NFR19JTkRFWChwaXBlKQlfTU1J
T19QSVBFKHBpcGUsIFwKKwkJCQkJX1BBTF9QUkVDX01VTFRJX1NFR19JTkRFWF9BLCBcCisJCQkJ
CV9QQUxfUFJFQ19NVUxUSV9TRUdfSU5ERVhfQikKKyNkZWZpbmUgUFJFQ19QQUxfTVVMVElfU0VH
X0RBVEEocGlwZSkJX01NSU9fUElQRShwaXBlLCBcCisJCQkJCV9QQUxfUFJFQ19NVUxUSV9TRUdf
REFUQV9BLCBcCisJCQkJCV9QQUxfUFJFQ19NVUxUSV9TRUdfREFUQV9CKQorCiAvKiBwaXBlIENT
QyAmIGRlZ2FtbWEvZ2FtbWEgTFVUcyBvbiBDSFYgKi8KICNkZWZpbmUgX0NHTV9QSVBFX0FfQ1ND
X0NPRUZGMDEJKFZMVl9ESVNQTEFZX0JBU0UgKyAweDY3OTAwKQogI2RlZmluZSBfQ0dNX1BJUEVf
QV9DU0NfQ09FRkYyMwkoVkxWX0RJU1BMQVlfQkFTRSArIDB4Njc5MDQpCi0tIAoxLjkuMQoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
