Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D74D521F619
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jul 2020 17:26:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5691B6E0B6;
	Tue, 14 Jul 2020 15:26:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 108E16E0B6
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Jul 2020 15:26:29 +0000 (UTC)
IronPort-SDR: IaZCIiipQvBOPlzAj9a4l17B69OAZ0v9QC3oDWB9iVtJjbJCxZt6Llah9hFb7rfeWLp7Gt50Qu
 RBB4SeFAJ2/Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9681"; a="213726497"
X-IronPort-AV: E=Sophos;i="5.75,350,1589266800"; d="scan'208";a="213726497"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jul 2020 08:26:29 -0700
IronPort-SDR: YVPcP6gPJ/BglOXuaRgdTrI2dltqrhpgq7KZtlQa4ArXwMLRTXXoPnP2/AqOrojmPaciFp6Zih
 24wgFkbEDQyA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,350,1589266800"; d="scan'208";a="325871362"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga007.jf.intel.com with SMTP; 14 Jul 2020 08:26:27 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 14 Jul 2020 18:26:26 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 14 Jul 2020 18:26:23 +0300
Message-Id: <20200714152626.380-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/4] drm/i915: Pack struct intel_cdclk_vals
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClRo
ZXJlJ3MgYSBwb2ludGxlc3MgaG9sZSBpbiBzdHJ1Y3QgaW50ZWxfY2RjbGtfdmFscywgZ2V0IHJp
ZCBvZiBpdC4KRm9ydHVuYXRlbHkgd2UgYWxyZWFkeSB1c2UgbmFtZWQgaW5pdGlhbGl6ZXJzIHNv
IHRoZSBvcmRlciBkb2VzIG5vdAptYXR0ZXIuCgpTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rs
w6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfY2RjbGsuaCB8IDIgKy0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2Vy
dGlvbigrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfY2RjbGsuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfY2RjbGsuaAppbmRleCA1NzMxODA2ZTRjZWUuLjZiMzFmZGU0YmUxNiAxMDA2NDQKLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jZGNsay5oCisrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY2RjbGsuaApAQCAtMTcsOCArMTcsOCBAQCBzdHJ1
Y3QgaW50ZWxfYXRvbWljX3N0YXRlOwogc3RydWN0IGludGVsX2NydGNfc3RhdGU7CiAKIHN0cnVj
dCBpbnRlbF9jZGNsa192YWxzIHsKLQl1MTYgcmVmY2xrOwogCXUzMiBjZGNsazsKKwl1MTYgcmVm
Y2xrOwogCXU4IGRpdmlkZXI7CS8qIENEMlggZGl2aWRlciAqIDIgKi8KIAl1OCByYXRpbzsKIH07
Ci0tIAoyLjI2LjIKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eAo=
