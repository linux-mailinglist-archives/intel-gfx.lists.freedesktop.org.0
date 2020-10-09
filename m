Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D534628921F
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Oct 2020 21:44:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C442A6ED07;
	Fri,  9 Oct 2020 19:44:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8C2D96ED07
 for <intel-gfx@lists.freedesktop.org>; Fri,  9 Oct 2020 19:44:55 +0000 (UTC)
IronPort-SDR: 40FI/GRdTxWCuiwgLxnr8VnWZ6NbybRL32w/AjmIhW/H5UdCgkLsbD+g9z2grpPST7XBra/nO5
 /ShAac8iQgDw==
X-IronPort-AV: E=McAfee;i="6000,8403,9769"; a="145396757"
X-IronPort-AV: E=Sophos;i="5.77,355,1596524400"; d="scan'208";a="145396757"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2020 12:44:53 -0700
IronPort-SDR: ckkv9Z11wAWagI1mWDwVsqGXdEGJzdZo7u+Xmihg0N2K+sswlC8x61RUy1OHzIZy8Y08QS9Fx+
 zbYvFWevo5Mg==
X-IronPort-AV: E=Sophos;i="5.77,355,1596524400"; d="scan'208";a="529050505"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.168])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2020 12:44:53 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  9 Oct 2020 12:44:39 -0700
Message-Id: <20201009194442.3668677-1-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 0/3] Gen12 forcewake and multicast updates
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

VGhlIGhhcmR3YXJlIGFyY2hpdGVjdHMgaGF2ZSBmaW5hbGx5IHByb3ZpZGVkIGFuIHVwZGF0ZWQg
TU1JTyB0YWJsZSBmb3IgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAKZ2VuMTIgcGxhdGZvcm1zIChUR0wsIFJLTCwgREcxKS4g
IFdlIHNob3VsZCB1cGRhdGUgb3VyIGRyaXZlcidzICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKZm9yY2V3YWtl
IGFuZCBNQ1IgcHJvZ3JhbW1pbmcgYWNjb3JkaW5nbHkuICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAKCnYyOgogLSBJbmNsdWRlIGEgcmVuYW1lIG9mIEZPUkNFV0FLRV9CTElU
VEVSIHRvIEZPUkNFV0FLRV9HVAogLSBBZGQgY29tbWVudHMgdG8gYWdncmVnYXRlZCBmb3JjZXdh
a2UgcmFuZ2VzIHNob3dpbmcgdGhlIHN1Yi1yYW5nZXMKICAgdGhhdCB3ZSd2ZSBjb21iaW5lZC4g
IChKb3NlKQogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIApCc3BlYzogNjY2OTYgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIApD
YzogQ2F6IFlva295YW1hIDxjYXoueW9rb3lhbWFAaW50ZWwuY29tPiAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIApDYzogRGFuaWVsZSBDZXJhb2xvIFNwdXJpbyA8ZGFuaWVs
ZS5jZXJhb2xvc3B1cmlvQGludGVsLmNvbT4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIApDYzogSm9zw6kg
Um9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+CgoKTWF0dCBSb3BlciAoMyk6
CiAgZHJtL2k5MTU6IFJlbmFtZSBGT1JDRVdBS0VfQkxJVFRFUiB0byBGT1JDRVdBS0VfR1QKICBk
cm0vaTkxNTogVXBkYXRlIGdlbjEyIGZvcmNld2FrZSB0YWJsZQogIGRybS9pOTE1OiBVcGRhdGUg
Z2VuMTIgbXVsdGljYXN0IHJlZ2lzdGVyIHJhbmdlcwoKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L2ludGVsX3dvcmthcm91bmRzLmMgfCAgMjggKystCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91
Yy9pbnRlbF9ndWMuYyAgICAgIHwgICA2ICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndnQvaGFu
ZGxlcnMuYyAgICAgICAgIHwgICA4ICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndnQvcmVnLmgg
ICAgICAgICAgICAgIHwgICA0ICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oICAg
ICAgICAgICAgIHwgICA0ICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF91bmNvcmUuYyAg
ICAgICAgIHwgMjAzICsrKysrKysrKysrKystLS0tLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9p
bnRlbF91bmNvcmUuaCAgICAgICAgIHwgICA0ICstCiA3IGZpbGVzIGNoYW5nZWQsIDE3MSBpbnNl
cnRpb25zKCspLCA4NiBkZWxldGlvbnMoLSkKCi0tIAoyLjI0LjEKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
