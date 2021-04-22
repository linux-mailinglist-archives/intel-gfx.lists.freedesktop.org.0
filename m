Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DD40E367D6C
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Apr 2021 11:10:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2612D6EA64;
	Thu, 22 Apr 2021 09:10:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C1FBA6EA64
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Apr 2021 09:10:53 +0000 (UTC)
IronPort-SDR: qarpZBtE8T1kyyQbYws7/JomUMzr7DkTdNjVxiGLF2jUdi402TsUSYNK3xjwpS9TnXbjjEoPRO
 uDYufV9PNGHw==
X-IronPort-AV: E=McAfee;i="6200,9189,9961"; a="216521831"
X-IronPort-AV: E=Sophos;i="5.82,242,1613462400"; d="scan'208";a="216521831"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2021 02:10:51 -0700
IronPort-SDR: oYjKc2GUtwp493oelCgFWIOIDjTpl247hlhErTdBJTi8RPEDRcWswXn8xwtEgZQ91RH/c/4b8m
 yV5Gq4zn9T2w==
X-IronPort-AV: E=Sophos;i="5.82,242,1613462400"; d="scan'208";a="463883335"
Received: from bhanu-nuclab.iind.intel.com ([10.145.162.173])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2021 02:10:49 -0700
From: Bhanuprakash Modem <bhanuprakash.modem@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 22 Apr 2021 22:31:23 +0530
Message-Id: <20210422170123.14738-1-bhanuprakash.modem@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [V2] drm/i915/display: Fix state mismatch in drm
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
RHJvcCBlbmNvZGVyLT50eXBlIGNoZWNrCgpDYzogVW1hIFNoYW5rYXIgPHVtYS5zaGFua2FyQGlu
dGVsLmNvbT4KQ2M6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5j
b20+ClNpZ25lZC1vZmYtYnk6IEJoYW51cHJha2FzaCBNb2RlbSA8YmhhbnVwcmFrYXNoLm1vZGVt
QGludGVsLmNvbT4KUmV2aWV3ZWQtYnk6IFVtYSBTaGFua2FyIDx1bWEuc2hhbmthckBpbnRlbC5j
b20+IChWMSkKLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMgfCAz
IC0tLQogMSBmaWxlIGNoYW5nZWQsIDMgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kcC5jCmluZGV4IDRhZDEyZGRlNTkzOC4uMjgwYjBiNWVlNzBlIDEwMDY0
NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMKKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jCkBAIC0zMDE0LDkgKzMwMTQsNiBA
QCB2b2lkIGludGVsX3JlYWRfZHBfc2RwKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyLAog
CQkgICAgICAgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUsCiAJCSAgICAgICB1
bnNpZ25lZCBpbnQgdHlwZSkKIHsKLQlpZiAoZW5jb2Rlci0+dHlwZSAhPSBJTlRFTF9PVVRQVVRf
RERJKQotCQlyZXR1cm47Ci0KIAlzd2l0Y2ggKHR5cGUpIHsKIAljYXNlIERQX1NEUF9WU0M6CiAJ
CWludGVsX3JlYWRfZHBfdnNjX3NkcChlbmNvZGVyLCBjcnRjX3N0YXRlLAotLSAKMi4yMC4xCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
