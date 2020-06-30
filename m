Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 56BB320FFA8
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jun 2020 23:56:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7CDE66E49A;
	Tue, 30 Jun 2020 21:56:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AFA946E49A
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Jun 2020 21:56:11 +0000 (UTC)
IronPort-SDR: gAKPY8nH99/hHBNahJCayqtSzAuixfqerzHuJ+z7jsYnMrmQJbAHX0xHJDoYZ7KT2ac/IN/49i
 3i5JrAU21r9w==
X-IronPort-AV: E=McAfee;i="6000,8403,9668"; a="126491743"
X-IronPort-AV: E=Sophos;i="5.75,298,1589266800"; d="scan'208";a="126491743"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2020 14:56:11 -0700
IronPort-SDR: q7vTNPIedb6aN3KjVV6aN3vVQ+w5qd99PxJdlzekP5HMykXELbyvZ7+GBoh3kDs9oK3aYk3jjC
 uGlOrW7bIGmQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,298,1589266800"; d="scan'208";a="313554702"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga002.fm.intel.com with SMTP; 30 Jun 2020 14:56:09 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 01 Jul 2020 00:56:07 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  1 Jul 2020 00:55:51 +0300
Message-Id: <20200630215601.28557-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200630215601.28557-1-ville.syrjala@linux.intel.com>
References: <20200630215601.28557-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 02/12] drm/i915: Add PORT_{H,
 I} to intel_port_to_power_domain()
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCldl
IG5lZWQgdG8gZ28gdXAgdG8gUE9SVF9JIChha2EuIFRDNikgdGhlc2UgZGF5cy4KClNpZ25lZC1v
ZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Ci0t
LQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgfCA0ICsrKysK
IDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCmluZGV4IDE4MmNlZjBkYzJmZC4uNjY1YWE0MjgzZmI5
IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXku
YworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwpAQCAt
NzI4OSw2ICs3Mjg5LDEwIEBAIGVudW0gaW50ZWxfZGlzcGxheV9wb3dlcl9kb21haW4gaW50ZWxf
cG9ydF90b19wb3dlcl9kb21haW4oZW51bSBwb3J0IHBvcnQpCiAJCXJldHVybiBQT1dFUl9ET01B
SU5fUE9SVF9ERElfRl9MQU5FUzsKIAljYXNlIFBPUlRfRzoKIAkJcmV0dXJuIFBPV0VSX0RPTUFJ
Tl9QT1JUX0RESV9HX0xBTkVTOworCWNhc2UgUE9SVF9IOgorCQlyZXR1cm4gUE9XRVJfRE9NQUlO
X1BPUlRfRERJX0hfTEFORVM7CisJY2FzZSBQT1JUX0k6CisJCXJldHVybiBQT1dFUl9ET01BSU5f
UE9SVF9ERElfSV9MQU5FUzsKIAlkZWZhdWx0OgogCQlNSVNTSU5HX0NBU0UocG9ydCk7CiAJCXJl
dHVybiBQT1dFUl9ET01BSU5fUE9SVF9PVEhFUjsKLS0gCjIuMjYuMgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
