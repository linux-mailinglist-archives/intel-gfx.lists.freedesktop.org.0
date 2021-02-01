Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 603D330AF5F
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Feb 2021 19:33:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B4C4389362;
	Mon,  1 Feb 2021 18:33:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 32E3489362
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Feb 2021 18:33:47 +0000 (UTC)
IronPort-SDR: bpr4uXGb5aisqi0goPvPjODeLVjJkbTbxX6mcxcKWA9tOfhMQWWgMbgL299bdogTlZHgnYl0zO
 gT22NCPa16nA==
X-IronPort-AV: E=McAfee;i="6000,8403,9882"; a="180875565"
X-IronPort-AV: E=Sophos;i="5.79,393,1602572400"; d="scan'208";a="180875565"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2021 10:33:46 -0800
IronPort-SDR: 3jI3OEtx0LcWZd9YKO+vZfGFSZk/iZ/vfWn8bsueoHG9mtS/IdBLOY/kNCOBEmH6bjfBSI5xr2
 BEH2DUPE/dMA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,393,1602572400"; d="scan'208";a="432478369"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga001.jf.intel.com with SMTP; 01 Feb 2021 10:33:44 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 01 Feb 2021 20:33:43 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  1 Feb 2021 20:33:28 +0200
Message-Id: <20210201183343.15292-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 00/15] drm/i915: Clean up the DDI clock routing
 mess
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
ZSBEREkgY2xvY2sgcm91dGluZyBjb2RlIGhhcyB0dXJuZWQgaW50byBwcm9wZXIgc3BhZ2hldHRp
LgpBdHRlbXB0IHRvIGNsZWFuIGl0IHVwIGJ5IGludHJvZHVjaW5nIHNvbWUgbmV3IHZmdW5jcy4K
ClZpbGxlIFN5cmrDpGzDpCAoMTUpOgogIGRybS9pOTE1OiBFeHRyYWN0IGljbF9kcGNsa2FfY2Zn
Y3IwX3JlZygpCiAgZHJtL2k5MTU6IEV4dHJhY3QgaWNsX2RwY2xrYV9jZmdjcjBfY2xrX3NlbCoo
KQogIGRybS9pOTE1OiBJbnRyb2R1Y2UgLntlbmFibGUsZGlzYWJsZX1fY2xvY2soKSBlbmNvZGVy
IHZmdW5jcwogIGRybS9pOTE1OiBFeHRyYWN0IGhzd19kZGlfe2VuYWJsZSxkaXNhYmxlfV9jbG9j
aygpCiAgZHJtL2k5MTU6IEV4dHJhY3Qgc2tsX2RkaV97ZW5hYmxlLGRpc2FibGV9X2Nsb2NrKCkK
ICBkcm0vaTE5NTogRXh0cmFjdCBjbmxfZGRpX3tlbmFibGUsZGlzYWJsZX1fY2xvY2soKQogIGRy
bS9pOTE1OiBDb252ZXJ0IERHMSBvdmVyIHRvIC57ZW5hYmxlLGRpc2FibGV9X2Nsb2NrKCkKICBk
cm0vaTkxNTogRXh0cmFjdCBpY2wrIC57ZW5hYmxlLGRpc2FibGV9X2Nsb2NrKCkgdmZ1bmNzCiAg
ZHJtL2k5MTU6IFVzZSBpbnRlbF9kZV9ybXcoKSBmb3IgRERJIGNsb2NrIHJvdXRpbmcKICBkcm0v
aTkxNTogU3ByaW5rbGUgYSBmZXcgbWlzc2luZyBsb2NrcyBhcm91bmQgc2hhcmVkIERESSBjbG9j
awogICAgcmVnaXN0ZXJzCiAgZHJtL2k5MTU6IFNwcmlua2xlIFdBUk4oIXBsbCkgaW50byBpY2wv
ZGcxIC5jbG9ja19lbmFibGUoKQogIGRybS9pOTE1OiBFeHRyYWN0IF9jbmxfZGRpX3tlbmFibGUs
ZGlzYWJsZX1fY2xvY2soKQogIGRybS9pOTE1OiBTcGxpdCBhbGRzL3JrbCBmcm9tIGljbF9kZGlf
Y29tYm9fe2VuYWJsZSxkaXNhYmxlfV9jbG9jaygpCiAgZHJtL2k5MTU6IFVzZSAuZGlzYWJsZV9j
bG9jaygpIGZvciBwbGwgc2FuaXRhdGlvbgogIGRybS9pOTE1OiBSZWxvY2F0ZSBpY2xfc2FuaXRp
emVfZW5jb2Rlcl9wbGxfbWFwcGluZygpCgogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
Y2xfZHNpLmMgICAgICAgIHwgICAxICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGRpLmMgICAgICB8IDUzNiArKysrKysrKysrLS0tLS0tLS0KIC4uLi9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaCAgICB8ICAgNiArCiAzIGZpbGVzIGNoYW5nZWQsIDI5
NSBpbnNlcnRpb25zKCspLCAyNDggZGVsZXRpb25zKC0pCgotLSAKMi4yNi4yCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
