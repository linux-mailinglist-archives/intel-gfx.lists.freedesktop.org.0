Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DE9E713CCC9
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jan 2020 20:08:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E55756EA81;
	Wed, 15 Jan 2020 19:08:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 152886EA81
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Jan 2020 19:08:20 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Jan 2020 11:08:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,323,1574150400"; d="scan'208";a="256889535"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga002.fm.intel.com with SMTP; 15 Jan 2020 11:08:17 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 15 Jan 2020 21:08:16 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 15 Jan 2020 21:08:10 +0200
Message-Id: <20200115190813.17971-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200115190813.17971-1-ville.syrjala@linux.intel.com>
References: <20200115190813.17971-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/5] drm/i915: Clear most of crtc state when
 disabling the crtc
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkN1
cnJlbnRseSB3ZSBkb24ndCBjYWxsIGludGVsX2NydGNfcHJlcGFyZV9jbGVhcmVkX3N0YXRlKCkg
Zm9yIGNydGNzCnRoYXQgYXJlIGdvaW5nIHRvIGJlIGVudGlyZWx5IGRpc2FibGVkICh1YXBpLmVu
YWJsZT09ZmFsc2UpLiBUaGF0Cm1lYW5zIHN1Y2ggY3J0Y3Mgd2lsbCBsZWF2ZSBzdGF0ZSBqdW5r
IGx5aW5nIGFyb3VuZCBpbiB0aGVpciBzdGF0ZXMKYW5kIHdlIGhhdmUgdG8gc3ByaW5rbGUgaHcu
ZW5hYmxlIGNoZWNrcyBhbGwgb3ZlciBiZWZvcmUgd2UgY2FuCmxvb2sgYXQgdGhlIHN0YXRlcy4g
TGV0J3MgY2hhbmdlIHRoYXQgYSBiaXQgc28gdGhhdCB3ZSBhd2F5cyBkbwp0aGUgc3RhdGUgY2xl
YXJpbmcsIGV2ZW4gZm9yIGZ1bGx5IGRpc2FibGVkIGNydGNzLgoKTm90ZSB0aGF0IHdlIHN0aWxs
IGtlZXAgc29tZSBwYXJ0cyBvZiB0aGUgb2xkIHN0YXRlIChzZWUKaW50ZWxfY3J0Y19wcmVwYXJl
X2NsZWFyZWRfc3RhdGUoKSBmb3IgdGhlIGRldGFpbHMpIHNvIHByb2JhYmx5CmNhbid0IHRydXN0
IHRoaW5ncyAxMDAlIHdoZW4gaHcuZW5hYmxlPT1mYWxzZS4gQnV0IGF0IGxlYXN0IHRoZXJlJ3MK
bGVzcyBjaGFuY2Ugbm93IHRoYXQgd2UgZW5kIHVwIGxvb2tpbmcgYXQgc3RhbGUganVuay4KClNp
Z25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5j
b20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgfCA4
ICsrKy0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCA1IGRlbGV0aW9ucygt
KQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxh
eS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKaW5kZXgg
YjM5NzgxNmNlMjUzLi5lNjhhZjAyNGUxM2MgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGlzcGxheS5jCkBAIC0xNDYwNywxNSArMTQ2MDcsMTMgQEAgc3RhdGljIGlu
dCBpbnRlbF9hdG9taWNfY2hlY2soc3RydWN0IGRybV9kZXZpY2UgKmRldiwKIAkJCWNvbnRpbnVl
OwogCQl9CiAKLQkJaWYgKCFuZXdfY3J0Y19zdGF0ZS0+dWFwaS5lbmFibGUpIHsKLQkJCWludGVs
X2NydGNfY29weV91YXBpX3RvX2h3X3N0YXRlKG5ld19jcnRjX3N0YXRlKTsKLQkJCWNvbnRpbnVl
OwotCQl9Ci0KIAkJcmV0ID0gaW50ZWxfY3J0Y19wcmVwYXJlX2NsZWFyZWRfc3RhdGUobmV3X2Ny
dGNfc3RhdGUpOwogCQlpZiAocmV0KQogCQkJZ290byBmYWlsOwogCisJCWlmICghbmV3X2NydGNf
c3RhdGUtPmh3LmVuYWJsZSkKKwkJCWNvbnRpbnVlOworCiAJCXJldCA9IGludGVsX21vZGVzZXRf
cGlwZV9jb25maWcobmV3X2NydGNfc3RhdGUpOwogCQlpZiAocmV0KQogCQkJZ290byBmYWlsOwot
LSAKMi4yNC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
