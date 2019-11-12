Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 39779F91AD
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Nov 2019 15:15:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E3226E95C;
	Tue, 12 Nov 2019 14:15:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2EA506E95B
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Nov 2019 14:15:07 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Nov 2019 06:15:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,296,1569308400"; d="scan'208";a="255075650"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by FMSMGA003.fm.intel.com with SMTP; 12 Nov 2019 06:15:04 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 12 Nov 2019 16:15:03 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 12 Nov 2019 16:14:53 +0200
Message-Id: <20191112141503.1116-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 00/10] drm/i915: Cleanups around
 .crtc_enable/disable()
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.23
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCk15
IGV5ZXMgaGF2ZSBiZWVuIGJsZWVkaW5nIGxvbmcgZW5vdWdoLiBMZXQncyB0cnkgdG8gY2xlYW4g
dXAgc29tZSBvZgp0aGlzIG1lc3MuCgpWaWxsZSBTeXJqw6Rsw6QgKDEwKToKICBkcm0vaTkxNTog
Q2hhbmdlIGludGVsX2VuY29kZXJzXzxob29rPigpIGNhbGxpbmcgY29udmVudGlvbgogIGRybS9p
OTE1OiBBZGQgaW50ZWxfY3J0Y192Ymxhbmtfb2ZmKCkKICBkcm0vaTkxNTogTW92ZSBhc3NlcnRf
dmJsYW5rX2Rpc2FibGVkKCkgaW50byBpbnRlbF9jcnRjX3ZibGFua19vbigpCiAgZHJtL2k5MTU6
IE1vdmUgY3J0Y19zdGF0ZSB0byB0aWdodGVyIHNjb3BlCiAgZHJtL2k5MTU6IFBhc3MgaW50ZWxf
Y3J0YyB0byBpcm9ubGFrZV9mZGlfZGlzYWJsZSgpCiAgZHJtL2k5MTU6IENoYW5nZSB3YXRlcm1h
cmsgaG9vayBjYWxsaW5nIGNvbnZlbnRpb24KICBkcm0vaTkxNTogUGFzcyBkZXZfcHJpdiB0byBj
cHRfdmVyaWZ5X21vZGVzZXQoKQogIGRybS9pOTE1OiBzL2ludGVsX2NydGMvY3J0Yy8gaW4gLmNy
dGNfZW5hYmxlKCkgYW5kIC5jcnRjX2Rpc2FibGUoKQogIGRybS9pOTE1OiBzL3BpcGVfY29uZmln
L25ld19jcnRjX3N0YXRlLyBpbiAuY3J0Y19lbmFibGUoKQogIGRybS9pOTE1OiBDaGFuZ2UgLmNy
dGNfZW5hYmxlL2Rpc2FibGUoKSBjYWxsaW5nIGNvbnZlbnRpb24KCiBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyB8IDQ2MSArKysrKysrKystLS0tLS0tLS0tCiBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oICAgICAgICAgICAgICB8ICAxNCArLQogZHJp
dmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYyAgICAgICAgICAgICAgfCAgNjMgKy0tCiAzIGZp
bGVzIGNoYW5nZWQsIDI3MiBpbnNlcnRpb25zKCspLCAyNjYgZGVsZXRpb25zKC0pCgotLSAKMi4y
My4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
