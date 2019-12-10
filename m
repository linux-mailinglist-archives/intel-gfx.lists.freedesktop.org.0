Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2910E118B43
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Dec 2019 15:41:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E01666E8E9;
	Tue, 10 Dec 2019 14:41:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 013906E8E9
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Dec 2019 14:41:09 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Dec 2019 06:41:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,300,1571727600"; d="scan'208";a="220230712"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga001.fm.intel.com with SMTP; 10 Dec 2019 06:41:06 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 10 Dec 2019 16:41:05 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 10 Dec 2019 16:41:01 +0200
Message-Id: <20191210144105.3239-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 0/6] drm/i915: Some cleanup near the SKL
 wm/ddb area
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClJl
YmFzZWQgbGVmdG92ZXJzIGZyb20gbXkgZWFybGllciBzZXJpZXMgdG8gbnVrZSB0aGUgZGlydHlf
cGlwZXMganVuay4KCkNjOiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVs
LmNvbT4KQ2M6IFN0YW5pc2xhdiBMaXNvdnNraXkgPHN0YW5pc2xhdi5saXNvdnNraXlAaW50ZWwu
Y29tPgoKVmlsbGUgU3lyasOkbMOkICg2KToKICBkcm0vaTkxNTogU3RyZWFtbGluZSBza2xfY29t
bWl0X21vZGVzZXRfZW5hYmxlcygpCiAgZHJtL2k5MTU6IFBvbGlzaCBXTV9MSU5FVElNRSByZWdp
c3RlciBzdHVmZgogIGRybS9pOTE1OiBNb3ZlIGxpbmV0aW1lIHdtcyBpbnRvIHRoZSBjcnRjIHN0
YXRlCiAgZHJtL2k5MTU6IE51a2Ugc2tsIHdtLmRpcnR5X3BpcGVzIGJpdG1hc2sKICBkcm0vaTkx
NTogS2lsbCBzdHJ1Y3Qgc2tsX2RkYl9hbGxvY2F0aW9uCiAgZHJtL2k5MTU6IEltcGxlbWVudCBw
cHMgdy9hICMxMTI0IGZvciBieHQrCgogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kaXNwbGF5LmMgIHwgMTcwICsrKysrKysrKysrLS0tLQogLi4uL2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZGlzcGxheV9wb3dlci5jICAgIHwgIDI4ICstLQogLi4uL2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZGlzcGxheV9wb3dlci5oICAgIHwgICAyICstCiAuLi4vZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kaXNwbGF5X3R5cGVzLmggICAgfCAgMTEgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZHAuYyAgICAgICB8ICAxMSArCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndnQv
aGFuZGxlcnMuYyAgICAgICAgICAgfCAgIDYgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
ZHJ2LmggICAgICAgICAgICAgICB8ICAxNCArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9y
ZWcuaCAgICAgICAgICAgICAgIHwgIDE0ICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9w
bS5jICAgICAgICAgICAgICAgfCAyMDIgKysrLS0tLS0tLS0tLS0tLS0tCiBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9pbnRlbF9wbS5oICAgICAgICAgICAgICAgfCAgIDQgKy0KIDEwIGZpbGVzIGNoYW5n
ZWQsIDE4NyBpbnNlcnRpb25zKCspLCAyNzUgZGVsZXRpb25zKC0pCgotLSAKMi4yMy4wCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
