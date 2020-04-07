Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D8AC51A0A6B
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Apr 2020 11:49:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 04EAA6E7FA;
	Tue,  7 Apr 2020 09:49:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 670376E7FA
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Apr 2020 09:49:50 +0000 (UTC)
IronPort-SDR: MYlirnkE74VX0FTIMeOUeXGBGM0BAVziAfZLo2jbh6ulNqKHjw8KzjLuBTO5NQXwFlTLYEYRkA
 s2w9bCjMxGxw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2020 02:49:50 -0700
IronPort-SDR: er4ihcIPrN40IqWyU77EaIKU7uLBfoOmM/bq3+7LOu/KNgMSZUlC1xjJnnNsNUqx+1oCOOzlSA
 Q7qaIl/3bl9g==
X-IronPort-AV: E=Sophos;i="5.72,353,1580803200"; d="scan'208";a="424694015"
Received: from vogtstef-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.249.40.153])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2020 02:49:48 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  7 Apr 2020 12:49:36 +0300
Message-Id: <41738b020bf43dbebc90420741312fdc2273fb52.1586252867.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1586252867.git.jani.nikula@intel.com>
References: <cover.1586252867.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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
Cc: jani.nikula@intel.com,
 =?UTF-8?q?Juha-Pekka=20Heikkil=C3=A4?= <juha-pekka.heikkila@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhlIHBhcmFtZXRlciBvbmx5IG1ha2VzIHNlbnNlIGFzIGEgbW9kdWxlIHBhcmFtZXRlciBvbmx5
LgoKQ2M6IEp1aGEtUGVra2EgSGVpa2tpbMOkIDxqdWhhLXBla2thLmhlaWtraWxhQGludGVsLmNv
bT4KQ2M6IFZlbmthdGEgU2FuZGVlcCBEaGFuYWxha290YSA8dmVua2F0YS5zLmRoYW5hbGFrb3Rh
QGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVs
LmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BhcmFtcy5oIHwgMiArLQogMSBm
aWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wYXJhbXMuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfcGFyYW1zLmgKaW5kZXggNDUzMjM3MzJmMDk5Li40ZjIxYmZmZmJmMGUgMTAwNjQ0Ci0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGFyYW1zLmgKKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9wYXJhbXMuaApAQCAtNjQsNyArNjQsNyBAQCBzdHJ1Y3QgZHJtX3ByaW50
ZXI7CiAJcGFyYW0oaW50LCBtbWlvX2RlYnVnLCAtSVNfRU5BQkxFRChDT05GSUdfRFJNX0k5MTVf
REVCVUdfTU1JTyksIDA2MDApIFwKIAlwYXJhbShpbnQsIGVkcF92c3dpbmcsIDAsIDA0MDApIFwK
IAlwYXJhbSh1bnNpZ25lZCBpbnQsIHJlc2V0LCAzLCAwNjAwKSBcCi0JcGFyYW0odW5zaWduZWQg
aW50LCBpbmplY3RfcHJvYmVfZmFpbHVyZSwgMCwgMDYwMCkgXAorCXBhcmFtKHVuc2lnbmVkIGlu
dCwgaW5qZWN0X3Byb2JlX2ZhaWx1cmUsIDAsIDApIFwKIAlwYXJhbShpbnQsIGZhc3Rib290LCAt
MSwgMDYwMCkgXAogCXBhcmFtKGludCwgZW5hYmxlX2RwY2RfYmFja2xpZ2h0LCAtMSwgMDYwMCkg
XAogCXBhcmFtKGNoYXIgKiwgZm9yY2VfcHJvYmUsIENPTkZJR19EUk1fSTkxNV9GT1JDRV9QUk9C
RSwgMDQwMCkgXAotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZngK
