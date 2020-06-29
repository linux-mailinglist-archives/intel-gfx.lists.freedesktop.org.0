Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 08DD120D601
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Jun 2020 22:04:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6456E89F6E;
	Mon, 29 Jun 2020 20:04:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 23E8C89F6E
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Jun 2020 20:04:36 +0000 (UTC)
IronPort-SDR: a4TDB00KeVD7EQvY4VLz9jAOVsWiQv00Zsv1CO2bXiLfl2wq5sFanaD4vGUkoQsNIH0Uq2kAv8
 TlhWResUliQw==
X-IronPort-AV: E=McAfee;i="6000,8403,9666"; a="147616384"
X-IronPort-AV: E=Sophos;i="5.75,295,1589266800"; d="scan'208";a="147616384"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jun 2020 13:04:35 -0700
IronPort-SDR: Ma9ZeRx+4GZhTnlRfJU5XG2qiNBdM5WjLjC4VnC+sLP1Bt2qbD4Pp/KDk7HZvemo5veqHPo+lM
 WXwcKfly79dg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,295,1589266800"; d="scan'208";a="386485711"
Received: from anuragpi-mobl.amr.corp.intel.com (HELO
 josouza-MOBL2.amr.corp.intel.com) ([10.254.46.142])
 by fmsmga001.fm.intel.com with ESMTP; 29 Jun 2020 13:04:35 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 29 Jun 2020 13:06:09 -0700
Message-Id: <20200629200609.91058-1-jose.souza@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/ehl: Add new PCI ids
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

VHdvIG5ldyBQQ0kgaWRzIGFkZGVkIHRvIGVobC4KCkJTcGVjOiAyOTE1MwpTaWduZWQtb2ZmLWJ5
OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4KLS0tCiBpbmNs
dWRlL2RybS9pOTE1X3BjaWlkcy5oIHwgMiArKwogMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9u
cygrKQoKZGlmZiAtLWdpdCBhL2luY2x1ZGUvZHJtL2k5MTVfcGNpaWRzLmggYi9pbmNsdWRlL2Ry
bS9pOTE1X3BjaWlkcy5oCmluZGV4IGJjOTg5ZGUyYWFjMi4uMGM3ZmNiMTYzMmFjIDEwMDY0NAot
LS0gYS9pbmNsdWRlL2RybS9pOTE1X3BjaWlkcy5oCisrKyBiL2luY2x1ZGUvZHJtL2k5MTVfcGNp
aWRzLmgKQEAgLTU4OCw2ICs1ODgsOCBAQAogCUlOVEVMX1ZHQV9ERVZJQ0UoMHg0NTUxLCBpbmZv
KSwgXAogCUlOVEVMX1ZHQV9ERVZJQ0UoMHg0NTQxLCBpbmZvKSwgXAogCUlOVEVMX1ZHQV9ERVZJ
Q0UoMHg0RTcxLCBpbmZvKSwgXAorCUlOVEVMX1ZHQV9ERVZJQ0UoMHg0NTU3LCBpbmZvKSwgXAor
CUlOVEVMX1ZHQV9ERVZJQ0UoMHg0NTU1LCBpbmZvKSwgXAogCUlOVEVMX1ZHQV9ERVZJQ0UoMHg0
RTYxLCBpbmZvKSwgXAogCUlOVEVMX1ZHQV9ERVZJQ0UoMHg0RTUxLCBpbmZvKQogCi0tIAoyLjI3
LjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
