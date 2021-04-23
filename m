Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B88B4368D2B
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Apr 2021 08:25:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 08D896EB41;
	Fri, 23 Apr 2021 06:25:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 197E66EB41
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Apr 2021 06:25:41 +0000 (UTC)
IronPort-SDR: /KHhYYQvOnUThQVe5/afbdMe5u6UaV+HczzwGZhpy65+zWYDN6fnu95I4upun0ADNpMDSrxxj8
 YC00FBj5UBog==
X-IronPort-AV: E=McAfee;i="6200,9189,9962"; a="183153770"
X-IronPort-AV: E=Sophos;i="5.82,245,1613462400"; d="scan'208";a="183153770"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2021 23:25:39 -0700
IronPort-SDR: c6/NNgIbJd3pq6aVw9n7l1vTtKNI3iNrWyKlXuoFFCDGQ4574nWWSgXveFAMigGVibRNuagU1L
 Urt5/VtocG6g==
X-IronPort-AV: E=Sophos;i="5.82,245,1613462400"; d="scan'208";a="524906959"
Received: from bhanu-nuclab.iind.intel.com ([10.145.162.173])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2021 23:25:37 -0700
From: Bhanuprakash Modem <bhanuprakash.modem@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 23 Apr 2021 19:46:09 +0530
Message-Id: <20210423141609.28568-1-bhanuprakash.modem@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [V3] drm/i915/display: Fix state mismatch in drm
 infoframe
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

V2hpbGUgcmVhZGluZyB0aGUgU0RQIGluZm9mcmFtZSwgd2UgYXJlIGdldHRpbmcgZmlsdGVyZWQg
d2l0aAp0aGUgZW5jb2RlciB0eXBlIElOVEVMX09VVFBVVF9EREkgd2hpY2ggY2F1c2VzIHRoZSBp
bmZvZnJhbWUKbWlzbWF0Y2guIFRoaXMgcGF0Y2ggd2lsbCBkcm9wIGVuY29kZXItPnR5cGUgY2hl
Y2sgYXMgd2UgY2FuCm1hc2sgaW5kaXZpZHVhbCBpbmZvZnJhbWUgdHlwZS4KClsxMDI1LjYwNjU1
Nl0gaTkxNSAwMDAwOjAwOjAyLjA6IFtkcm1dICpFUlJPUiogbWlzbWF0Y2ggaW4gZHJtIGluZm9m
cmFtZQpbMTAyNS42MDc4NjVdIGk5MTUgMDAwMDowMDowMi4wOiBbZHJtXSAqRVJST1IqIGV4cGVj
dGVkOgpbMTAyNS42MDc4NzldIGk5MTUgMDAwMDowMDowMi4wOiBIRE1JIGluZm9mcmFtZTogRHlu
YW1pYyBSYW5nZSBhbmQgTWFzdGVyaW5nLCB2ZXJzaW9uIDEsIGxlbmd0aCAyNgpbMTAyNS42MDc4
ODldIGk5MTUgMDAwMDowMDowMi4wOiBsZW5ndGg6IDI2ClsxMDI1LjYwNzg5OF0gaTkxNSAwMDAw
OjAwOjAyLjA6IG1ldGFkYXRhIHR5cGU6IDAKWzEwMjUuNjA4MjkyXSBpOTE1IDAwMDA6MDA6MDIu
MDogZW90ZjogMgpbMTAyNS42MDgzMDJdIGk5MTUgMDAwMDowMDowMi4wOiB4WzBdOiAzNTQwMApb
MTAyNS42MDgzMTJdIGk5MTUgMDAwMDowMDowMi4wOiB5WzBdOiAxNDU5OQpbMTAyNS42MDkxMTVd
IGk5MTUgMDAwMDowMDowMi4wOiB4WzFdOiA4NTAwClsxMDI1LjYwOTk0N10gaTkxNSAwMDAwOjAw
OjAyLjA6IHlbMV06IDM5ODUwClsxMDI1LjYwOTk1OV0gaTkxNSAwMDAwOjAwOjAyLjA6IHhbMl06
IDY1NTAKWzEwMjUuNjA5OTcwXSBpOTE1IDAwMDA6MDA6MDIuMDogeVsyXTogMjMwMApbMTAyNS42
MDk5ODBdIGk5MTUgMDAwMDowMDowMi4wOiB3aGl0ZSBwb2ludCB4OiAxNTYzNApbMTAyNS42MDk5
ODldIGk5MTUgMDAwMDowMDowMi4wOiB3aGl0ZSBwb2ludCB5OiAxNjQ1MApbMTAyNS42MTAzODFd
IGk5MTUgMDAwMDowMDowMi4wOiBtYXhfZGlzcGxheV9tYXN0ZXJpbmdfbHVtaW5hbmNlOiAxMDAw
ClsxMDI1LjYxMDM5Ml0gaTkxNSAwMDAwOjAwOjAyLjA6IG1pbl9kaXNwbGF5X21hc3RlcmluZ19s
dW1pbmFuY2U6IDUwMApbMTAyNS42MTA0MDFdIGk5MTUgMDAwMDowMDowMi4wOiBtYXhfY2xsOiA1
MDAKWzEwMjUuNjEwODE2XSBpOTE1IDAwMDA6MDA6MDIuMDogbWF4X2ZhbGw6IDEwMDAKWzEwMjUu
NjEyNDU3XSBpOTE1IDAwMDA6MDA6MDIuMDogW2RybV0gKkVSUk9SKiBmb3VuZDoKWzEwMjUuNjE0
MzU0XSAtLS0tLS0tLS0tLS1bIGN1dCBoZXJlIF0tLS0tLS0tLS0tLS0KWzEwMjUuNjE2MjQ0XSBw
aXBlIHN0YXRlIGRvZXNuJ3QgbWF0Y2ghClsxMDI1LjYxNzY0MF0gV0FSTklORzogQ1BVOiA2IFBJ
RDogMjExNCBhdCBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYzo5
MzMyIGludGVsX2F0b21pY19jb21taXRfdGFpbCsweDE0ZDQvMHgxN2MwIFtpOTE1XQoKVjI6Ciog
RHJvcCBlbmNvZGVyLT50eXBlIGNoZWNrCgpWMzoKKiBSZW1vdmUgaW50ZXJuYWwgcmV2aWV3cwoK
Q2M6IFVtYSBTaGFua2FyIDx1bWEuc2hhbmthckBpbnRlbC5jb20+CkNjOiBWaWxsZSBTeXJqw6Rs
w6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBCaGFudXBy
YWthc2ggTW9kZW0gPGJoYW51cHJha2FzaC5tb2RlbUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jIHwgMyAtLS0KIDEgZmlsZSBjaGFuZ2VkLCAz
IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZHAuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYwppbmRl
eCA0YWQxMmRkZTU5MzguLjI4MGIwYjVlZTcwZSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZHAuYwpAQCAtMzAxNCw5ICszMDE0LDYgQEAgdm9pZCBpbnRlbF9yZWFkX2RwX3Nk
cChzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwKIAkJICAgICAgIHN0cnVjdCBpbnRlbF9j
cnRjX3N0YXRlICpjcnRjX3N0YXRlLAogCQkgICAgICAgdW5zaWduZWQgaW50IHR5cGUpCiB7Ci0J
aWYgKGVuY29kZXItPnR5cGUgIT0gSU5URUxfT1VUUFVUX0RESSkKLQkJcmV0dXJuOwotCiAJc3dp
dGNoICh0eXBlKSB7CiAJY2FzZSBEUF9TRFBfVlNDOgogCQlpbnRlbF9yZWFkX2RwX3ZzY19zZHAo
ZW5jb2RlciwgY3J0Y19zdGF0ZSwKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
