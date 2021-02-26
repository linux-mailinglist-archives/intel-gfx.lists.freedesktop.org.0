Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F16D43264BC
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Feb 2021 16:32:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DB7AA6E301;
	Fri, 26 Feb 2021 15:32:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 79C616E301
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 Feb 2021 15:32:08 +0000 (UTC)
IronPort-SDR: /uOYAStIzY0954/FmUZTHFYUEFPC+dJhNSBeJDxkJFoGU603X2crXWYlGBbq0CJIz/fONv921h
 n4kvjEL7BFkA==
X-IronPort-AV: E=McAfee;i="6000,8403,9907"; a="165123596"
X-IronPort-AV: E=Sophos;i="5.81,208,1610438400"; d="scan'208";a="165123596"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2021 07:32:08 -0800
IronPort-SDR: OcruvJEdUmGRqn6JobVSorlVqsipMgymRxBqJhIyks3trPYuCqFYf8z4QP2xSKke8nlRE9+Yo8
 +q9KhyVPniWw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,208,1610438400"; d="scan'208";a="404944463"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga008.jf.intel.com with SMTP; 26 Feb 2021 07:32:05 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 26 Feb 2021 17:32:04 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 26 Feb 2021 17:31:57 +0200
Message-Id: <20210226153204.1270-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/7] drm/i915: Fix up TGL+ SAGV watermarks
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkhh
ZCBhIHF1aWNrIGdsYW5jZSBhcyB0aGUgVEdMKyB3YXRlcm1hcmsgY29kZSBhbmQgbm90aWNlZCBh
CmJ1bmNoIG9mIGZhaWwgd2l0aCB0aGUgU0FHViB3bSBoYW5kbGluZy4gSGVyZSdzIGFuIGF0dGVt
cHQKYXQgZml4aW5nIGl0LgoKR2l0IGJyYW5jaCBoZXJlOgpnaXQ6Ly9naXRodWIuY29tL3ZzeXJq
YWxhL2xpbnV4LmdpdCB0Z2xfc2Fndl93bV9maXhlcwoKQ2M6IFN0YW5pc2xhdiBMaXNvdnNraXkg
PHN0YW5pc2xhdi5saXNvdnNraXlAaW50ZWwuY29tPgoKVmlsbGUgU3lyasOkbMOkICg3KToKICBk
cm0vaTkxNTogRml4IFRHTCsgcGxhbmUgU0FHViB3YXRlcm1hcmsgcHJvZ3JhbW1pbmcKICBkcm0v
aTkxNTogWmVybyBvdXQgU0FHViB3bSB3aGVuIHdlIGRvbid0IGhhdmUgZW5vdWdoIEREQiBmb3Ig
aXQKICBkcm0vaTkxNTogUHJpbnQgd20gY2hhbmdlcyBpZiBzYWd2X3dtMCBjaGFuZ2VzCiAgZHJt
L2k5MTU6IFN0dWZmIFNBR1Ygd2F0ZXJtYXJrIGludG8gYSBzdWItc3RydWN0dXJlCiAgZHJtL2k5
MTU6IEludHJvZHVjZSBTQUdWIHRyYW5zdGlvbiB3YXRlcm1hcmsKICBkcm0vaTkxNTogQ2hlY2sg
dGdsKyBTQUdWIHdhdGVybWFya3MgcHJvcGVybHkKICBkcm0vaTkxNTogQ2xlYW4gdXAgdmVyaWZ5
X3dtX3N0YXRlKCkKCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXku
YyAgfCAxMjYgKysrKy0tLS0tLS0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kaXNwbGF5LmggIHwgICA1IC0KIC4uLi9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlf
dHlwZXMuaCAgICB8ICAgNSArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYyAgICAg
ICAgICAgICAgIHwgMTcyICsrKysrKysrKysrLS0tLS0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUv
aW50ZWxfcG0uaCAgICAgICAgICAgICAgIHwgICA1ICsKIDUgZmlsZXMgY2hhbmdlZCwgMTUwIGlu
c2VydGlvbnMoKyksIDE2MyBkZWxldGlvbnMoLSkKCi0tIAoyLjI2LjIKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
