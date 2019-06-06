Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D93B436D6A
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jun 2019 09:38:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C502E892D6;
	Thu,  6 Jun 2019 07:38:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8F19289873
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Jun 2019 07:38:01 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Jun 2019 00:38:01 -0700
X-ExtLoop1: 1
Received: from hchegond-ivm.ra.intel.com ([10.54.134.59])
 by orsmga002.jf.intel.com with ESMTP; 06 Jun 2019 00:38:00 -0700
From: Harish Chegondi <harish.chegondi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  6 Jun 2019 00:38:00 -0700
Message-Id: <20190606073800.64781-1-harish.chegondi@intel.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC] drm: Do not call drm_probe_ddc() when connector
 force isn't specified
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

VGhpcyB3b3VsZCBhbGxvdyB0aGUgRURJRCBvdmVycmlkZSB0byBiZSBoYW5kbGVkIGNvcnJlY3Rs
eSBpbgpkcm1fZG9fZ2V0X2VkaWQoKSBmb3IgY2FzZXMgd2hlcmUgRURJRCBkYXRhIGlzIG1pc3Np
bmcgb3IgY29ycnVwdC4KCkFsbCBkcm1fcHJvYmVfZGRjKCkgZG9lcyBpcyBjYWxsIGRybV9kb19w
cm9iZV9kZGNfZWRpZCggLCAsICwgMSkKd2hpY2ggcHJvYmVzIHRoZSBkaXNwbGF5IGJ5IHJlYWRp
bmcgMSBieXRlIG9mIEVESUQgZGF0YSB2aWEgSTJDLgpUaGlzIHBhdGNoIHJlbW92ZXMgdGhlIGNh
bGwgdG8gZHJtX3Byb2JlX2RkYygpIGZyb20gZHJtX2dldF9lZGlkKCkKYnV0IGRybV9nZXRfZWRp
ZCgpIGNhbGxzIGRybV9kb19nZXRfZWRpZCgpIHdoaWNoIGZpcnN0IGhhbmRsZXMKdGhlIEVESUQg
b3ZlcnJpZGUgY2FzZSBhbmQgdGhlbiBjYWxscwpkcm1fZG9fcHJvYmVfZGRjX2VkaWQoICwgLCAs
RURJRF9MRU5HVEgpIHZpYSBmdW5jdGlvbiBwb2ludGVyCmFyZ3VtZW50IGdldF9lZGlkX2Jsb2Nr
LiBTbywgdGhlIGRpc3BsYXkgZGV2aWNlIGlzIHN0aWxsIGJlaW5nCnByb2JlZCBieSByZWFkaW5n
IEVESURfTEVOR1RIIGJ5dGVzIG9mIEVESUQgZGF0YSB2aWEgSTJDLgoKQ2M6IEphbmkgTmlrdWxh
IDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+CkNjOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmph
bGFAbGludXguaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBIYXJpc2ggQ2hlZ29uZGkgPGhhcmlz
aC5jaGVnb25kaUBpbnRlbC5jb20+ClJlZmVyZW5jZXM6IGh0dHBzOi8vYnVncy5mcmVlZGVza3Rv
cC5vcmcvc2hvd19idWcuY2dpP2lkPTEwNzU4MwotLS0KIGRyaXZlcnMvZ3B1L2RybS9kcm1fZWRp
ZC5jIHwgMyAtLS0KIDEgZmlsZSBjaGFuZ2VkLCAzIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9kcm1fZWRpZC5jIGIvZHJpdmVycy9ncHUvZHJtL2RybV9lZGlkLmMK
aW5kZXggZDg3ZjU3NGZlZWNhLi40MWM0MjA3MDY1MzIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9kcm1fZWRpZC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9kcm1fZWRpZC5jCkBAIC0xNzI0
LDkgKzE3MjQsNiBAQCBzdHJ1Y3QgZWRpZCAqZHJtX2dldF9lZGlkKHN0cnVjdCBkcm1fY29ubmVj
dG9yICpjb25uZWN0b3IsCiAJaWYgKGNvbm5lY3Rvci0+Zm9yY2UgPT0gRFJNX0ZPUkNFX09GRikK
IAkJcmV0dXJuIE5VTEw7CiAKLQlpZiAoY29ubmVjdG9yLT5mb3JjZSA9PSBEUk1fRk9SQ0VfVU5T
UEVDSUZJRUQgJiYgIWRybV9wcm9iZV9kZGMoYWRhcHRlcikpCi0JCXJldHVybiBOVUxMOwotCiAJ
ZWRpZCA9IGRybV9kb19nZXRfZWRpZChjb25uZWN0b3IsIGRybV9kb19wcm9iZV9kZGNfZWRpZCwg
YWRhcHRlcik7CiAJaWYgKGVkaWQpCiAJCWRybV9nZXRfZGlzcGxheWlkKGNvbm5lY3RvciwgZWRp
ZCk7Ci0tIAoyLjIxLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LWdmeA==
