Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 71394B261A
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Sep 2019 21:32:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1353989895;
	Fri, 13 Sep 2019 19:32:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0FB3289895
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Sep 2019 19:32:01 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Sep 2019 12:32:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,492,1559545200"; d="scan'208";a="269521465"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga001.jf.intel.com with SMTP; 13 Sep 2019 12:31:58 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 13 Sep 2019 22:31:57 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 13 Sep 2019 22:31:53 +0300
Message-Id: <20190913193157.9556-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/4] drm/i915: Extracts from plane min
 cdclk/fp16 series
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkEg
ZmV3IHJldmlld2VkIHBhdGNoZXMgZnJvbSB0aGUgcGxhbmUgbWluIGNkY2xrL2ZwMTYgc2VyaWVz
LgpKdXN0IGZlZWRpbmcgdGhlbSB0byBDSS4KClZpbGxlIFN5cmrDpGzDpCAoNCk6CiAgZHJtL2k5
MTU6IFJlcGxhY2UgaXNfcGxhbmFyX3l1dl9mb3JtYXQoKSB3aXRoCiAgICBkcm1fZm9ybWF0X2lu
Zm9faXNfeXV2X3NlbWlwbGFuYXIoKQogIGRybS9pOTE1OiBBbGxvdyBkb3duc2NhbGUgZmFjdG9y
IG9mIDwzLjAgb24gZ2xrKyBmb3IgYWxsIGZvcm1hdHMKICBkcm0vaTkxNTogRXh0cmFjdCBpbnRl
bF9tb2Rlc2V0X2NhbGNfY2RjbGsoKQogIGRybS9pOTE1OiBzL3BpcGVfY29uZmlnL2NydGNfc3Rh
dGUvIGluIGludGVsX2NydGNfYXRvbWljX2NoZWNrKCkKCiAuLi4vZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfYXRvbWljX3BsYW5lLmMgfCAgIDUgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfY2RjbGsuYyAgICB8IDEzNSArKysrKysrKysrKy0KIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfY2RjbGsuaCAgICB8ICAgNiArLQogZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgIHwgMTk0ICsrKystLS0tLS0tLS0tLS0tLQog
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmggIHwgICAzICstCiBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Nwcml0ZS5jICAgfCAgMjAgKy0KIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfc3ByaXRlLmggICB8ICAgMSAtCiBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jICAgICAgICAgICAgICAgfCAgMjcgKystCiA4IGZp
bGVzIGNoYW5nZWQsIDE5MyBpbnNlcnRpb25zKCspLCAxOTggZGVsZXRpb25zKC0pCgotLSAKMi4y
MS4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
