Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 09BF83113C4
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Feb 2021 22:46:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 614D76F4DF;
	Fri,  5 Feb 2021 21:46:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 95E146F4DF
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Feb 2021 21:46:38 +0000 (UTC)
IronPort-SDR: 4RToKNabwUkpmsXkdWBKOhf0ogPat79V/l+fHxrKY2duHC7ORv3KC5HtevBisDsNed6kVlv6dZ
 uRkea3Wsinqw==
X-IronPort-AV: E=McAfee;i="6000,8403,9886"; a="168611965"
X-IronPort-AV: E=Sophos;i="5.81,156,1610438400"; d="scan'208";a="168611965"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2021 13:46:37 -0800
IronPort-SDR: UowALzNDwGswTr+Bzz85JNo682X4ROkoH13UnPMoC4AQhMtPVvhXIrPObXrBI7mpGgpROLkDSe
 K1iJ1856I7rQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,156,1610438400"; d="scan'208";a="397616495"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga007.jf.intel.com with SMTP; 05 Feb 2021 13:46:35 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 05 Feb 2021 23:46:34 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  5 Feb 2021 23:46:19 +0200
Message-Id: <20210205214634.19341-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 00/15] drm/i915: Clean up the DDI clock
 routing mess
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClNv
cnJ5IGZvciBzcGFtbWluZyB0aGUgc2FtZSBzZXJpZXMgYWdhaW4gYW5kIGFnYWluLgp2MiBzdGls
bCBoYWQgc29tZSBpc3N1ZXMgYXJvdW5kIEZESSwgYW5kIHRvIGZpeCB0aG9zZQpJIGhhZCB0byBz
dGljayBhIGZyZXNoIHBhdGNoIHRvIHRoZSBzdGFydCBvZiB0aGUgc2VyaWVzLgpIb3BlZnVsbHkg
aXQncyBub3cgc29saWQuCgpJIGhhdmUgYSBmZXcgbW9yZSBwYXRjaGVzIGFscmVhZHkgY29va2Vk
IHVwIG9uIHRvcCB0bwpjbGVhbiB1cCB0aGUgcmVhZG91dCBzaWRlIHRvby4gQnV0IEknbSBnb2lu
ZyB0byB0cnkKbGFuZCB0aGlzIHBhcnQgZmlyc3QuCgpWaWxsZSBTeXJqw6Rsw6QgKDE1KToKICBk
cm0vaTkxNTogVXNlIGludGVsX2RkaV9jbGtfc2VsZWN0KCkgZm9yIEZESQogIGRybS9pOTE1OiBJ
bnRyb2R1Y2UgLntlbmFibGUsZGlzYWJsZX1fY2xvY2soKSBlbmNvZGVyIHZmdW5jcwogIGRybS9p
OTE1OiBFeHRyYWN0IGhzd19kZGlfe2VuYWJsZSxkaXNhYmxlfV9jbG9jaygpCiAgZHJtL2k5MTU6
IEV4dHJhY3Qgc2tsX2RkaV97ZW5hYmxlLGRpc2FibGV9X2Nsb2NrKCkKICBkcm0vaTE5NTogRXh0
cmFjdCBjbmxfZGRpX3tlbmFibGUsZGlzYWJsZX1fY2xvY2soKQogIGRybS9pOTE1OiBDb252ZXJ0
IERHMSBvdmVyIHRvIC57ZW5hYmxlLGRpc2FibGV9X2Nsb2NrKCkKICBkcm0vaTkxNTogRXh0cmFj
dCBpY2wrIC57ZW5hYmxlLGRpc2FibGV9X2Nsb2NrKCkgdmZ1bmNzCiAgZHJtL2k5MTU6IFVzZSBp
bnRlbF9kZV9ybXcoKSBmb3IgRERJIGNsb2NrIHJvdXRpbmcKICBkcm0vaTkxNTogU3ByaW5rbGUg
YSBmZXcgbWlzc2luZyBsb2NrcyBhcm91bmQgc2hhcmVkIERESSBjbG9jawogICAgcmVnaXN0ZXJz
CiAgZHJtL2k5MTU6IFNwcmlua2xlIFdBUk4oIXBsbCkgaW50byBpY2wvZGcxIC5jbG9ja19lbmFi
bGUoKQogIGRybS9pOTE1OiBFeHRyYWN0IF9jbmxfZGRpX3tlbmFibGUsZGlzYWJsZX1fY2xvY2so
KQogIGRybS9pOTE1OiBTcGxpdCBhZGwtcy9ya2wgZnJvbSBpY2xfZGRpX2NvbWJvX3tlbmFibGUs
ZGlzYWJsZX1fY2xvY2soKQogIGRybS9pOTE1OiBVc2UgLmRpc2FibGVfY2xvY2soKSBmb3IgcGxs
IHNhbml0YXRpb24KICBkcm0vaTkxNTogUmVsb2NhdGUgaWNsX3Nhbml0aXplX2VuY29kZXJfcGxs
X21hcHBpbmcoKQogIGRybS9pOTE1OiBzL2Rldl9wcml2L2k5MTUvIGZvciB0aGUgcmVtYWluZGVy
IG9mIERESSBjbG9jayByb3V0aW5nCgogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pY2xf
ZHNpLmMgICAgICAgIHwgICAxICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
Y3J0LmMgICAgICB8ICAgMiArCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rk
aS5jICAgICAgfCA1NzggKysrKysrKysrKy0tLS0tLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2RkaS5oICAgICAgfCAgIDYgKy0KIC4uLi9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2Rpc3BsYXlfdHlwZXMuaCAgICB8ICAgNiArCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2ZkaS5jICAgICAgfCAgIDcgKy0KIDYgZmlsZXMgY2hhbmdlZCwgMzI2IGluc2Vy
dGlvbnMoKyksIDI3NCBkZWxldGlvbnMoLSkKCi0tIAoyLjI2LjIKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
