Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 288881BC668
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2020 19:20:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D69E06E87D;
	Tue, 28 Apr 2020 17:20:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 00FCA6E87B;
 Tue, 28 Apr 2020 17:20:16 +0000 (UTC)
IronPort-SDR: /WsrUVoW4AG/mmnmIgMkElPlQcp9qG7Vt7YCjfTMJYM9J0BIlK8eFrEff3PdZzAVwmgWMT579z
 UCqFIwjR+16A==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2020 10:20:15 -0700
IronPort-SDR: LSMjJHhIbMF4Dk9ejslmR3SQzoYPwclo+TgmEUkTk+us3K1Vlw6jAXuxltmRdzApjHhMF/t7A7
 m9POiflaUSWg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,328,1583222400"; d="scan'208";a="367561960"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga001.fm.intel.com with SMTP; 28 Apr 2020 10:20:13 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 28 Apr 2020 20:20:12 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: dri-devel@lists.freedesktop.org
Date: Tue, 28 Apr 2020 20:19:31 +0300
Message-Id: <20200428171940.19552-8-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200428171940.19552-1-ville.syrjala@linux.intel.com>
References: <20200428171940.19552-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 07/16] drm: Make mode->flags u32
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
Cc: intel-gfx@lists.freedesktop.org, Sam Ravnborg <sam@ravnborg.org>,
 Emil Velikov <emil.velikov@collabora.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClRo
ZSBtb2RlIGZsYWdzIGFyZSBkaXJlY2x0eSBleHBvc2VkIGluIHRoZSB1YXBpIGFzIHUzMi4gVXNl
IHRoZQpzYW1lIHNpemUgdHlwZSB0byBzdG9yZSB0aGVtIGludGVybmFsbHkuCgpSZXZpZXdlZC1i
eTogU2FtIFJhdm5ib3JnIDxzYW1AcmF2bmJvcmcub3JnPgpSZXZpZXdlZC1ieTogRW1pbCBWZWxp
a292IDxlbWlsLnZlbGlrb3ZAY29sbGFib3JhLmNvbT4KU2lnbmVkLW9mZi1ieTogVmlsbGUgU3ly
asOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KLS0tCiBpbmNsdWRlL2RybS9k
cm1fbW9kZXMuaCB8IDIgKy0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxl
dGlvbigtKQoKZGlmZiAtLWdpdCBhL2luY2x1ZGUvZHJtL2RybV9tb2Rlcy5oIGIvaW5jbHVkZS9k
cm0vZHJtX21vZGVzLmgKaW5kZXggZjQ1MDdiOTg3MDM4Li5kYTdkYjc0YTIxNWUgMTAwNjQ0Ci0t
LSBhL2luY2x1ZGUvZHJtL2RybV9tb2Rlcy5oCisrKyBiL2luY2x1ZGUvZHJtL2RybV9tb2Rlcy5o
CkBAIC0zMjIsNyArMzIyLDcgQEAgc3RydWN0IGRybV9kaXNwbGF5X21vZGUgewogCSAqICAtIERS
TV9NT0RFX0ZMQUdfM0RfU0lERV9CWV9TSURFX0hBTEY6IGZyYW1lIHNwbGl0IGludG8gbGVmdCBh
bmQKIAkgKiAgICByaWdodCBwYXJ0cy4KIAkgKi8KLQl1bnNpZ25lZCBpbnQgZmxhZ3M7CisJdTMy
IGZsYWdzOwogCiAJLyoqCiAJICogQHdpZHRoX21tOgotLSAKMi4yNC4xCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
