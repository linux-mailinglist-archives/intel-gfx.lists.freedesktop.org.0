Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B5BEF36265C
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Apr 2021 19:10:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1CB4C6E1B5;
	Fri, 16 Apr 2021 17:10:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 477EA6E1B5
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Apr 2021 17:10:16 +0000 (UTC)
IronPort-SDR: hV5PW1+G7JGcN7amDhieNMqbsU+GCKnwnlVvdk//E6NUZKENKk56b6Wy56hkKP5GIA3Wv8jYr3
 Lj4Yy8nLOz+w==
X-IronPort-AV: E=McAfee;i="6200,9189,9956"; a="259027539"
X-IronPort-AV: E=Sophos;i="5.82,226,1613462400"; d="scan'208";a="259027539"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2021 10:10:14 -0700
IronPort-SDR: spAbmqKprO1uhQE8eJXmAMDh//z8k7Be2dyehcwmptzRWYNKNKsTGzFey8IiHmHRNPuKl9grmN
 gM2JQXWG7kCg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,226,1613462400"; d="scan'208";a="453407622"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga002.fm.intel.com with SMTP; 16 Apr 2021 10:10:12 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 16 Apr 2021 20:10:11 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 16 Apr 2021 20:10:03 +0300
Message-Id: <20210416171011.19012-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.3
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/8] drm/i915: dbuf cleanups
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
YnVuY2ggb2YgZHJpdmUtYnktY2xlYW51cCBXaGlsZSBJIHdhcyByZWFkaW5nIHRocm91Z2gKdGhl
IGRidWYgY29kZS4KClZpbGxlIFN5cmrDpGzDpCAoOCk6CiAgZHJtL2k5MTU6IENvbGxlY3QgZGJ1
ZiBkZXZpY2UgaW5mbyBpbnRvIGEgc3ViLXN0cnVjdAogIGRybS9pOTE1OiBIYW5kbGUgZGJ1ZiBi
eXBhc3MgcGF0aCBhbGxvY2F0aW9uIGVhcmxpZXIKICBkcm0vaTkxNTogU3RvcmUgZGJ1ZiBzbGlj
ZSBtYXNrIGluIGRldmljZSBpbmZvCiAgZHJtL2k5MTU6IFVzZSBpbnRlbF9kYnVmX3NsaWNlX3Np
emUoKQogIGRybS9pOTE1OiBVc2UgaW50ZWxfZGVfcm13KCkgZm9yIERCVUZfUE9XRVJfUkVRVUVT
VAogIGRybS9pOTE1OiBQb2xpc2ggZm9yX2VhY2hfZGJ1Zl9zbGljZSgpCiAgZHJtL2k5MTU6IEFk
ZCBlbmFibGVkaXNhYmxlKCkKICBkcm0vaTkxNTogU2F5ICJlbmFibGUgZm9vIiBpbnN0ZWFkIG9m
ICJzZXQgZm9vIHRvIGVuYWJsZWQiCgogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9idy5jICAgICAgIHwgMTEgKystLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGRpLmMgICAgICB8ICA0ICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Rpc3BsYXkuaCAgfCAgOSArKy0tCiAuLi4vZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5
X3Bvd2VyLmMgICAgfCAyNCArKysrLS0tLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2RwLmMgICAgICAgfCAxNCArKystLS0KIC4uLi9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2RwX2F1eF9iYWNrbGlnaHQuYyB8ICAyICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX3RjLmMgICAgICAgfCAgNCArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wY2ku
YyAgICAgICAgICAgICAgIHwgMTYgKysrLS0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV91
dGlscy5oICAgICAgICAgICAgIHwgIDUgKysrCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9k
ZXZpY2VfaW5mby5oICAgICAgfCAgNiArKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3Bt
LmMgICAgICAgICAgICAgICB8IDQ1ICsrKysrKystLS0tLS0tLS0tLS0KIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2ludGVsX3BtLmggICAgICAgICAgICAgICB8ICAxICsKIDEyIGZpbGVzIGNoYW5nZWQs
IDY1IGluc2VydGlvbnMoKyksIDc2IGRlbGV0aW9ucygtKQoKLS0gCjIuMjYuMwoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcg
bGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
