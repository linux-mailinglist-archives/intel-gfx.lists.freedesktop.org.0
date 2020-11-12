Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A801F2B0DAE
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Nov 2020 20:17:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A8F7A6E3BB;
	Thu, 12 Nov 2020 19:17:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8616D6E3BB
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Nov 2020 19:17:22 +0000 (UTC)
IronPort-SDR: ArMxaxyx4aL+WiuhFFRKImQRxxkwclWigvE452T74x5lwwTgpE+kjudB1JuuIEz8Ah2yXy3qMh
 83vaBrDNl/3w==
X-IronPort-AV: E=McAfee;i="6000,8403,9803"; a="169581680"
X-IronPort-AV: E=Sophos;i="5.77,472,1596524400"; d="scan'208";a="169581680"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2020 11:17:21 -0800
IronPort-SDR: i31dc6Rjm04V/SOP+2LEp09wH4niwOb5RkQjWlhMi5xDYBHBEhbA7StIoBMCp5T9rZgL2nTSY9
 5Qe4tL7eRrcg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,472,1596524400"; d="scan'208";a="328603300"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga006.jf.intel.com with SMTP; 12 Nov 2020 11:17:19 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 12 Nov 2020 21:17:18 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 12 Nov 2020 21:17:12 +0200
Message-Id: <20201112191718.16683-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/6] drm/i915: Introduce crtc_state.hw.pipe_mode
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
Zml4ZWQgdXAgc2VyaWVzIHRvIGFkZCBody5waXBlX21vZGUgdG8gY3J0Y19zdGF0ZS4KCk1haW4g
ZmVhdHVyZXM6Ci0gRml4IHRoZSBkaXYtYnktemVybyBmcm9tIHRoZSBkZGIgY29kZSBieSBtYWtp
bmcgc3VyZQogIHRoZSBwaXBlX21vZGUgbm9ybWFsIHRpbWluZ3MgYXJlIGNvcnJlY3RseSBwb3B1
bGF0ZWQKLSBGaXggYSB3aG9sZSBzbGV3IG9mIGlzc3VlcyBpbiB0aGUgcGlwZV9tb2RlIHBhdGNo
Ci0gU29tZSByZWZhY3RvcmluZyB0byBtYWtlIGl0IGFsbCBhIGJpdCBsZXNzIGFubm95aW5nCgpN
YWFydGVuIExhbmtob3JzdCAoMSk6CiAgZHJtL2k5MTU6IEFkZCBody5waXBlX21vZGUgdG8gYWxs
b3cgYmlnam9pbmVyIHBpcGUvdHJhbnNjb2RlciBzcGxpdAoKTWFuYXNpIE5hdmFyZSAoMik6CiAg
ZHJtL2k5MTU6IE1vdmUgZW5jb2Rlci0+Z2V0X2NvbmZpZyB0byBhIG5ldyBmdW5jdGlvbgogIGRy
bS9pOTE1OiBBZGQgYSB3cmFwcGVyIGZ1bmN0aW9uIGFyb3VuZCBnZXRfcGlwZV9jb25maWcKClZp
bGxlIFN5cmrDpGzDpCAoMyk6CiAgZHJtL2k5MTU6IE1vdmUgaHcuYWN0aXZlIGFzc2lnbm1lbnQg
aW50byBpbnRlbF9jcnRjX2dldF9waXBlX2NvbmZpZygpCiAgZHJtL2k5MTU6IHMvaW50ZWxfbW9k
ZV9mcm9tX3BpcGVfY29uZmlnL2ludGVsX21vZGVfZnJvbV9jcnRjX3RpbWluZ3MvCiAgZHJtL2k5
MTU6IEludHJvZHVjZSBpbnRlbF9jcnRjX3JlYWRvdXRfZGVyaXZlZF9zdGF0ZSgpCgogZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgIHwgMTgzICsrKysrKysrKysr
LS0tLS0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmggIHwg
ICAyIC0KIC4uLi9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaCAgICB8ICAx
MSArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYyAgICAgICAgICAgICAgIHwgIDc2
ICsrKystLS0tCiA0IGZpbGVzIGNoYW5nZWQsIDE2MSBpbnNlcnRpb25zKCspLCAxMTEgZGVsZXRp
b25zKC0pCgotLSAKMi4yNi4yCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZngK
