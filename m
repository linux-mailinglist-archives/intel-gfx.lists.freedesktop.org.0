Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EB641D7F0E
	for <lists+intel-gfx@lfdr.de>; Mon, 18 May 2020 18:48:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E61189D49;
	Mon, 18 May 2020 16:48:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1595C89D49
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 May 2020 16:48:05 +0000 (UTC)
IronPort-SDR: Qtu4aIn5jcgaeaX0oMZO/eq4yqU+Fh713JleeX8GFGavBqwqgWYOY61sILMDVmVgRbbyd1RUVU
 LXAqEt5jcvtg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2020 09:48:04 -0700
IronPort-SDR: lYKZ76dhdkM6bdi3KWuAuKMDpX5t6Bf8apgKu65n8WiibemjcW9UeFkPBP5s7xfvMyA8SaYRYf
 y/6nnozVhAJw==
X-IronPort-AV: E=Sophos;i="5.73,407,1583222400"; d="scan'208";a="439284105"
Received: from ahermans-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.41.209])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2020 09:48:02 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 18 May 2020 19:47:48 +0300
Message-Id: <20200518164750.11113-2-jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200518164750.11113-1-jani.nikula@intel.com>
References: <20200518164750.11113-1-jani.nikula@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/3] drm/i915/params: don't expose
 inject_probe_failure in debugfs
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
Cc: Jani Nikula <jani.nikula@intel.com>,
 =?UTF-8?q?Juha-Pekka=20Heikkil=C3=A4?= <juha-pekka.heikkila@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhlIHBhcmFtZXRlciBvbmx5IG1ha2VzIHNlbnNlIGFzIGEgbW9kdWxlIHBhcmFtZXRlciBvbmx5
LgoKRml4ZXM6IGM0M2M1YTg4MThkNCAoImRybS9pOTE1L3BhcmFtczogYWRkIGk5MTUgcGFyYW1l
dGVycyB0byBkZWJ1Z2ZzIikKQ2M6IEp1aGEtUGVra2EgSGVpa2tpbMOkIDxqdWhhLXBla2thLmhl
aWtraWxhQGludGVsLmNvbT4KQ2M6IFZlbmthdGEgU2FuZGVlcCBEaGFuYWxha290YSA8dmVua2F0
YS5zLmRoYW5hbGFrb3RhQGludGVsLmNvbT4KUmV2aWV3ZWQtYnk6IEp1aGEtUGVra2EgSGVpa2tp
bGEgPGp1aGFwZWtrYS5oZWlra2lsYUBnbWFpbC5jb20+ClNpZ25lZC1vZmYtYnk6IEphbmkgTmlr
dWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9wYXJhbXMuaCB8IDIgKy0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxl
dGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGFyYW1zLmgg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BhcmFtcy5oCmluZGV4IDQ1MzIzNzMyZjA5OS4u
NGYyMWJmZmZiZjBlIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BhcmFt
cy5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGFyYW1zLmgKQEAgLTY0LDcgKzY0
LDcgQEAgc3RydWN0IGRybV9wcmludGVyOwogCXBhcmFtKGludCwgbW1pb19kZWJ1ZywgLUlTX0VO
QUJMRUQoQ09ORklHX0RSTV9JOTE1X0RFQlVHX01NSU8pLCAwNjAwKSBcCiAJcGFyYW0oaW50LCBl
ZHBfdnN3aW5nLCAwLCAwNDAwKSBcCiAJcGFyYW0odW5zaWduZWQgaW50LCByZXNldCwgMywgMDYw
MCkgXAotCXBhcmFtKHVuc2lnbmVkIGludCwgaW5qZWN0X3Byb2JlX2ZhaWx1cmUsIDAsIDA2MDAp
IFwKKwlwYXJhbSh1bnNpZ25lZCBpbnQsIGluamVjdF9wcm9iZV9mYWlsdXJlLCAwLCAwKSBcCiAJ
cGFyYW0oaW50LCBmYXN0Ym9vdCwgLTEsIDA2MDApIFwKIAlwYXJhbShpbnQsIGVuYWJsZV9kcGNk
X2JhY2tsaWdodCwgLTEsIDA2MDApIFwKIAlwYXJhbShjaGFyICosIGZvcmNlX3Byb2JlLCBDT05G
SUdfRFJNX0k5MTVfRk9SQ0VfUFJPQkUsIDA0MDApIFwKLS0gCjIuMjAuMQoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
