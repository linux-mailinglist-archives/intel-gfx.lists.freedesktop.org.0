Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 114B5341F5C
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Mar 2021 15:30:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 909166EA27;
	Fri, 19 Mar 2021 14:30:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8EDC86EA27
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Mar 2021 14:30:24 +0000 (UTC)
IronPort-SDR: Xa+bpL/V+W8yJFVqLFYQYb7D3wks99F/fBcDA/hiwNs09Sm+nT6CLYzRi+YM6/hHRTCGQ8zZCU
 r5dypcFKhZUw==
X-IronPort-AV: E=McAfee;i="6000,8403,9928"; a="169205799"
X-IronPort-AV: E=Sophos;i="5.81,262,1610438400"; d="scan'208";a="169205799"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2021 07:30:24 -0700
IronPort-SDR: pwvkG79IR73+koECqzPQkiQ34ZiPQR0UyeSjQMvoEnCVH0g2fPoqDZy6eWr2RK2a7Y9W0sVrbA
 lepnrDvhoTkw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,262,1610438400"; d="scan'208";a="440075855"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga002.fm.intel.com with SMTP; 19 Mar 2021 07:30:22 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 19 Mar 2021 16:30:21 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 19 Mar 2021 16:30:19 +0200
Message-Id: <20210319143021.21823-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/3] drm/i915: Read C0DRB3/C1DRB3 as 16 bits
 again
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCldl
J3ZlIGRlZmluZWQgQzBEUkIzL0MwRFJCMyBhcyAxNiBiaXQgcmVnaXN0ZXJzLCBzbyBhY2Nlc3Mg
dGhlbQphcyBzdWNoLgoKQ2M6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVr
PgpGaXhlczogMWM4MjQyYzNhNGIyICgiZHJtL2k5MTU6IFVzZSB1bmNoZWNrZWQgd3JpdGVzIGZv
ciBzZXR0aW5nIHVwIHRoZSBmZW5jZXMiKQpTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6Qg
PHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L2ludGVsX2dndHRfZmVuY2luZy5jIHwgNCArKy0tCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNl
cnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L2ludGVsX2dndHRfZmVuY2luZy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50
ZWxfZ2d0dF9mZW5jaW5nLmMKaW5kZXggZTg5MTU1MjYxMWQ1Li5lODg5YTc2Yzg1YzggMTAwNjQ0
Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2dndHRfZmVuY2luZy5jCisrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2dndHRfZmVuY2luZy5jCkBAIC02NDIsOCAr
NjQyLDggQEAgc3RhdGljIHZvaWQgZGV0ZWN0X2JpdF82X3N3aXp6bGUoc3RydWN0IGk5MTVfZ2d0
dCAqZ2d0dCkKIAkJICogYmFua3Mgb2YgbWVtb3J5IGFyZSBwYWlyZWQgYW5kIHVuc3dpenpsZWQg
b24gdGhlCiAJCSAqIHVuZXZlbiBwb3J0aW9uLCBzbyBsZWF2ZSB0aGF0IGFzIHVua25vd24uCiAJ
CSAqLwotCQlpZiAoaW50ZWxfdW5jb3JlX3JlYWQodW5jb3JlLCBDMERSQjMpID09Ci0JCSAgICBp
bnRlbF91bmNvcmVfcmVhZCh1bmNvcmUsIEMxRFJCMykpIHsKKwkJaWYgKGludGVsX3VuY29yZV9y
ZWFkMTYodW5jb3JlLCBDMERSQjMpID09CisJCSAgICBpbnRlbF91bmNvcmVfcmVhZDE2KHVuY29y
ZSwgQzFEUkIzKSkgewogCQkJc3dpenpsZV94ID0gSTkxNV9CSVRfNl9TV0laWkxFXzlfMTA7CiAJ
CQlzd2l6emxlX3kgPSBJOTE1X0JJVF82X1NXSVpaTEVfOTsKIAkJfQotLSAKMi4yNi4yCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
