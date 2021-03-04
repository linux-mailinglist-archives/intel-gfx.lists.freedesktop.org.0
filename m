Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A80C232D848
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Mar 2021 18:04:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D25856EA3B;
	Thu,  4 Mar 2021 17:04:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 66E8E6EA36
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Mar 2021 17:04:51 +0000 (UTC)
IronPort-SDR: t4RKL8ZHsVPS8BYjua7HHmhR9fGo1hKH7iTyj+61ujAcIS88NYtO3C10J6igAYEI9CdXmwZeyu
 YrQkjP9glslg==
X-IronPort-AV: E=McAfee;i="6000,8403,9913"; a="175087470"
X-IronPort-AV: E=Sophos;i="5.81,222,1610438400"; d="scan'208";a="175087470"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2021 09:04:27 -0800
IronPort-SDR: 2ItZ2PbzmicZoVQUdbVgTh19DvIViDL08Y5jr3Odf+OjlKJdzMfIaUjsKOF6pLLwtcRkrtvA6W
 1LbAN+HQMZSA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,222,1610438400"; d="scan'208";a="400713704"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga008.fm.intel.com with SMTP; 04 Mar 2021 09:04:22 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 04 Mar 2021 19:04:21 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  4 Mar 2021 19:04:17 +0200
Message-Id: <20210304170421.10901-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/4] drm/i915: Silence pipe tracepoint WARNs
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
Cc: Steven Rostedt <rostedt@goodmis.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkkg
YmVsaWV2ZSB0aGlzIHNob3VsZCBzaWxlbmNlIHRoZSBXQVJOIHNwZXcgZnJvbSB0aGUKcGlwZSBk
aXNhYmxlIHRyYWNlcG9pbnQgU3RldmUgcmVwb3J0ZWQuIEFuZCBJIHRvc3NlZCBpbgphIGZldyBv
dGhlciBtaW5vciBpbXByb3ZlbWVudHMgYXMgd2VsbC4KCkNjOiBTdGV2ZW4gUm9zdGVkdCA8cm9z
dGVkdEBnb29kbWlzLm9yZz4KClZpbGxlIFN5cmrDpGzDpCAoNCk6CiAgZHJtL2k5MTU6IE1vdmUg
cGlwZSBlbmFibGUvZGlzYWJsZSB0cmFjZXBvaW50cyB0bwogICAgaW50ZWxfY3J0Y192Ymxhbmtf
e29uLG9mZn0oKQogIGRybS9pOTE1OiBEb24ndCB0cnkgdG8gcXVlcnkgdGhlIGZyYW1lIGNvdW50
ZXIgZm9yIGRpc2FibGVkIHBpcGVzCiAgZHJtL2k5MTU6IFJldHVybiB6ZXJvIGFzIHRoZSBzY2Fu
bGluZSBjb3VudGVyIGZvciBkaXNhYmxlZCBwaXBlcwogIGRybS9pOTE1OiBGaXggRFNJIFRFIG1h
eF92YmxhbmtfY291bnQgaGFuZGxpbmcKCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2NydGMuYyAgICB8IDI0ICsrKysrKysrKysrKysrKysrLS0tCiBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyB8ICA4ICstLS0tLS0KIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfaXJxLmMgICAgICAgICAgICAgIHwgIDIgKy0KIDMgZmlsZXMgY2hhbmdlZCwg
MjMgaW5zZXJ0aW9ucygrKSwgMTEgZGVsZXRpb25zKC0pCgotLSAKMi4yNi4yCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
