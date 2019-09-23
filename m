Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 58D96BB240
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Sep 2019 12:30:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 13FAF6E85D;
	Mon, 23 Sep 2019 10:30:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AD3B26E854
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Sep 2019 10:30:15 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Sep 2019 03:30:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,539,1559545200"; d="scan'208";a="182494686"
Received: from mrnaghsh-mobl1.amr.corp.intel.com (HELO
 dk-ThinkPad-X260.fios-router.home) ([10.254.177.243])
 by orsmga008.jf.intel.com with ESMTP; 23 Sep 2019 03:30:15 -0700
From: Dhinakaran Pandiyan <dhinakaran.pandiyan@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 23 Sep 2019 03:29:34 -0700
Message-Id: <20190923102935.5860-9-dhinakaran.pandiyan@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190923102935.5860-1-dhinakaran.pandiyan@intel.com>
References: <20190923102935.5860-1-dhinakaran.pandiyan@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC v3 8/9] drm/fb: Extend format_info member arrays
 to handle four planes
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
Cc: Dhinakaran Pandiyan <dhinakaran.pandiyan@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

YWRkZmIoKSB1QVBJIGhhcyBzdXBwb3J0ZWQgZm91ciBwbGFuZXMgZm9yIGEgd2hpbGUgbm93LCBt
YWtlIGZvcm1hdF9pbmZvCmNvbXBhdGlibGUgd2l0aCB0aGF0LgoKQ2M6IFZpbGxlIFN5cmrDpGzD
pCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+CkNjOiBNYXR0IFJvcGVyIDxtYXR0aGV3
LmQucm9wZXJAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBEaGluYWthcmFuIFBhbmRpeWFuIDxk
aGluYWthcmFuLnBhbmRpeWFuQGludGVsLmNvbT4KLS0tCiBpbmNsdWRlL2RybS9kcm1fZm91cmNj
LmggfCA4ICsrKystLS0tCiAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspLCA0IGRlbGV0
aW9ucygtKQoKZGlmZiAtLWdpdCBhL2luY2x1ZGUvZHJtL2RybV9mb3VyY2MuaCBiL2luY2x1ZGUv
ZHJtL2RybV9mb3VyY2MuaAppbmRleCAzMDZkMWVmZWI1ZTAuLjE1NmIxMjJjMGFkNSAxMDA2NDQK
LS0tIGEvaW5jbHVkZS9kcm0vZHJtX2ZvdXJjYy5oCisrKyBiL2luY2x1ZGUvZHJtL2RybV9mb3Vy
Y2MuaApAQCAtNzgsNyArNzgsNyBAQCBzdHJ1Y3QgZHJtX2Zvcm1hdF9pbmZvIHsKIAkJICogdHJp
cGxldCBAY2hhcl9wZXJfYmxvY2ssIEBibG9ja193LCBAYmxvY2tfaCBmb3IgYmV0dGVyCiAJCSAq
IGRlc2NyaWJpbmcgdGhlIHBpeGVsIGZvcm1hdC4KIAkJICovCi0JCXU4IGNwcFszXTsKKwkJdTgg
Y3BwWzRdOwogCiAJCS8qKgogCQkgKiBAY2hhcl9wZXJfYmxvY2s6CkBAIC0xMDQsNyArMTA0LDcg
QEAgc3RydWN0IGRybV9mb3JtYXRfaW5mbyB7CiAJCSAqIGluZm9ybWF0aW9uIGZyb20gdGhlaXIg
ZHJtX21vZGVfY29uZmlnLmdldF9mb3JtYXRfaW5mbyBob29rCiAJCSAqIGlmIHRoZXkgd2FudCB0
aGUgY29yZSB0byBiZSB2YWxpZGF0aW5nIHRoZSBwaXRjaC4KIAkJICovCi0JCXU4IGNoYXJfcGVy
X2Jsb2NrWzNdOworCQl1OCBjaGFyX3Blcl9ibG9ja1s0XTsKIAl9OwogCiAJLyoqCkBAIC0xMTMs
NyArMTEzLDcgQEAgc3RydWN0IGRybV9mb3JtYXRfaW5mbyB7CiAJICogQmxvY2sgd2lkdGggaW4g
cGl4ZWxzLCB0aGlzIGlzIGludGVuZGVkIHRvIGJlIGFjY2Vzc2VkIHRocm91Z2gKIAkgKiBkcm1f
Zm9ybWF0X2luZm9fYmxvY2tfd2lkdGgoKQogCSAqLwotCXU4IGJsb2NrX3dbM107CisJdTggYmxv
Y2tfd1s0XTsKIAogCS8qKgogCSAqIEBibG9ja19oOgpAQCAtMTIxLDcgKzEyMSw3IEBAIHN0cnVj
dCBkcm1fZm9ybWF0X2luZm8gewogCSAqIEJsb2NrIGhlaWdodCBpbiBwaXhlbHMsIHRoaXMgaXMg
aW50ZW5kZWQgdG8gYmUgYWNjZXNzZWQgdGhyb3VnaAogCSAqIGRybV9mb3JtYXRfaW5mb19ibG9j
a19oZWlnaHQoKQogCSAqLwotCXU4IGJsb2NrX2hbM107CisJdTggYmxvY2tfaFs0XTsKIAogCS8q
KiBAaHN1YjogSG9yaXpvbnRhbCBjaHJvbWEgc3Vic2FtcGxpbmcgZmFjdG9yICovCiAJdTggaHN1
YjsKLS0gCjIuMTcuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4
