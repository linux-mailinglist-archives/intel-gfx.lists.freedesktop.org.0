Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 812AC3C9BF2
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Jul 2021 11:35:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0BBD36E5CF;
	Thu, 15 Jul 2021 09:35:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C84686E5CF
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Jul 2021 09:35:33 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10045"; a="210499616"
X-IronPort-AV: E=Sophos;i="5.84,240,1620716400"; d="scan'208";a="210499616"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2021 02:35:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,240,1620716400"; d="scan'208";a="452361605"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga007.jf.intel.com with SMTP; 15 Jul 2021 02:35:30 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 15 Jul 2021 12:35:30 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 15 Jul 2021 12:35:17 +0300
Message-Id: <20210715093530.31711-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 00/13] drm/i915: Clean up DPLL stuff
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkEg
YnVuY2ggb2YgY2xlYW51cHMgdG8gdGhlIERQTEwgY29kZS4KClZpbGxlIFN5cmrDpGzDpCAoMTMp
OgogIGRybS9pOTE1OiBTZXQgb3V0cHV0X3R5cGVzIHRvIEVEUCBmb3Igdmx2L2NodiBEUExMIGZv
cmNpbmcKICBkcm0vaTkxNTogQ2xlYW4gdXAgZ2VuMiBEUExMIHJlYWRvdXQKICBkcm0vaTkxNTog
RXh0cmFjdCBpbGtfdXBkYXRlX3BsbF9kaXZpZGVycygpCiAgZHJtL2k5MTU6IENvbnN0aWZ5IHN0
cnVjdCBkcGxsIGFsbCBvdmVyCiAgZHJtL2k5MTU6IENsZWFuIGRwbGwgY2FsbGluZyBjb252ZW50
aW9uCiAgZHJtL2k5MTU6IENsZWFuIHVwIHZhcmlhYmxlIG5hbWVzIGluIG9sZCBkcGxsIGZ1bmN0
aW9ucwogIGRybS9pOTE1OiBSZW1vdmUgdGhlICdyZWcnIGxvY2FsIHZhcmlhYmxlCiAgZHJtL2k5
MTU6IFByb2dyYW0gRFBMTCBQMSBkaXZpZGVycyBjb25zaXN0ZW50bHkKICBkcm0vaTkxNTogQ2Fs
bCB7dmx2LGNodn1fcHJlcGFyZV9wbGwoKSBmcm9tIHt2bHYsY2h2fV9lbmFibGVfcGxsKCkKICBk
cm0vaTkxNTogUmV1c2UgaWxrX25lZWRzX2ZiX2NiX3R1bmUoKSBmb3IgdGhlIHJlZHVjZWQgY2xv
Y2sgYXMgd2VsbAogIGRybS9pOTE1OiBGb2xkIGk5eHhfc2V0X3BsbF9kaXZpZGVycygpIGludG8g
aTl4eF9lbmFibGVfcGxsKCkKICBkcm0vaTkxNTogRm9sZCBpYnhfcGNoX2RwbGxfcHJlcGFyZSgp
IGludG8gaWJ4X3BjaF9kcGxsX2VuYWJsZSgpCiAgZHJtL2k5MTU6IE51a2UgaW50ZWxfcHJlcGFy
ZV9zaGFyZWRfZHBsbCgpCgogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNw
bGF5LmMgIHwgIDQyICstCiAuLi4vZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVz
LmggICAgfCAgIDUgLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcGxsLmMg
ICAgIHwgNTY3ICsrKysrKysrKy0tLS0tLS0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kcGxsLmggICAgIHwgIDIzICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2RwbGxfbWdyLmMgfCAgNDEgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZHBsbF9tZ3IuaCB8ICAxMSAtCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5o
ICAgICAgICAgICAgICAgfCAgIDMgKy0KIDcgZmlsZXMgY2hhbmdlZCwgMzE1IGluc2VydGlvbnMo
KyksIDM3NyBkZWxldGlvbnMoLSkKCi0tIAoyLjMxLjEKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
