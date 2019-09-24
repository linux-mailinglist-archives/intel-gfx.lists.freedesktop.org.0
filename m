Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D7ED9BBF3A
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Sep 2019 02:02:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 35F786E9D0;
	Tue, 24 Sep 2019 00:01:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 21DE36E9C9
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Sep 2019 00:01:55 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Sep 2019 17:01:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,542,1559545200"; d="scan'208";a="388663926"
Received: from invictus.jf.intel.com ([10.54.75.159])
 by fmsmga005.fm.intel.com with ESMTP; 23 Sep 2019 17:01:52 -0700
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 23 Sep 2019 17:03:19 -0700
Message-Id: <20190924000328.29571-3-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190924000328.29571-1-radhakrishna.sripada@intel.com>
References: <20190924000328.29571-1-radhakrishna.sripada@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 02/11] drm/i915: Use intel_tile_height()
 instead of re-implementing
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
Cc: nanley.g.chery@intel.com, dhinakaran.pandiyan@intel.com,
 ville.syrjala@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogRGhpbmFrYXJhbiBQYW5kaXlhbiA8ZGhpbmFrYXJhbi5wYW5kaXlhbkBpbnRlbC5jb20+
CgppbnRlbF90aWxlX2RpbXMoKSBjb21wdXRlcyB0aWxlIGhlaWdodCB1c2luZyBzaXplIGFuZCB3
aWR0aCwgd2hlbiB0aGVyZQppcyBhbHJlYWR5IGEgZnVuY3Rpb24gdG8gZG8ganVzdCB0aGF0IC0g
aW50ZWxfdGlsZV9oZWlnaHQoKQoKQ2M6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBs
aW51eC5pbnRlbC5jb20+CkNjOiBNYXR0IFJvcGVyIDxtYXR0aGV3LmQucm9wZXJAaW50ZWwuY29t
PgpTaWduZWQtb2ZmLWJ5OiBEaGluYWthcmFuIFBhbmRpeWFuIDxkaGluYWthcmFuLnBhbmRpeWFu
QGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3Bs
YXkuYyB8IDIgKy0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigt
KQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxh
eS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKaW5kZXgg
NWVjZjU0MjcwMTgxLi5hOTRkMTQ1ZGQwNDggMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGlzcGxheS5jCkBAIC0xOTU3LDcgKzE5NTcsNyBAQCBzdGF0aWMgdm9pZCBp
bnRlbF90aWxlX2RpbXMoY29uc3Qgc3RydWN0IGRybV9mcmFtZWJ1ZmZlciAqZmIsIGludCBjb2xv
cl9wbGFuZSwKIAl1bnNpZ25lZCBpbnQgY3BwID0gZmItPmZvcm1hdC0+Y3BwW2NvbG9yX3BsYW5l
XTsKIAogCSp0aWxlX3dpZHRoID0gdGlsZV93aWR0aF9ieXRlcyAvIGNwcDsKLQkqdGlsZV9oZWln
aHQgPSBpbnRlbF90aWxlX3NpemUodG9faTkxNShmYi0+ZGV2KSkgLyB0aWxlX3dpZHRoX2J5dGVz
OworCSp0aWxlX2hlaWdodCA9IGludGVsX3RpbGVfaGVpZ2h0KGZiLCBjb2xvcl9wbGFuZSk7CiB9
CiAKIHVuc2lnbmVkIGludAotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZng=
