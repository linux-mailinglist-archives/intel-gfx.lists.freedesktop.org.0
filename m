Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 539751BC662
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2020 19:20:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6261A6E879;
	Tue, 28 Apr 2020 17:20:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 09C926E870;
 Tue, 28 Apr 2020 17:20:09 +0000 (UTC)
IronPort-SDR: lx07ZeBn7rviw5R5MUEF0QG+Duek9g6OW+xhdRajmim6e1UF62MtFGm1IFPvmiii7Y8grp95sg
 wqk7TQXgubPw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2020 10:20:09 -0700
IronPort-SDR: IJr3zle1zWhTuhEVTJeaMOpik7RVypcFQGf5Q0O3lrJfPcSSPycNSd6vtrQWAKqPpvnQQFx0Qw
 LK//0zjGhAcg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,328,1583222400"; d="scan'208";a="336693128"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga001.jf.intel.com with SMTP; 28 Apr 2020 10:20:05 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 28 Apr 2020 20:20:05 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: dri-devel@lists.freedesktop.org
Date: Tue, 28 Apr 2020 20:19:29 +0300
Message-Id: <20200428171940.19552-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200428171940.19552-1-ville.syrjala@linux.intel.com>
References: <20200428171940.19552-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 05/16] drm: Shrink {width,height}_mm to u16
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
Cc: intel-gfx@lists.freedesktop.org, Sam Ravnborg <sam@ravnborg.org>,
 Emil Velikov <emil.velikov@collabora.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCklu
c3RlYWQgb2Ygc3VwcG9ydGluZyB+MjAwMGttIHdpZGUgZGlzcGxheWVzIGxldCdzIGxpbWl0IG91
cnNlbHZlcwp0byB+NjVtLiBUaGF0IHNlZW1zIHBsZW50eSBiaWcgZW5vdWdoIHRvIG1lLgoKRXZl
biB3aXRoIEVESURfUVVJUktfREVUQUlMRURfSU5fQ00gRURJRHMgc2VlbSB0byBiZSBsaW1pdGVk
IHRvCjEwKjB4ZmZmIHdoaWNoIGZpdHMgaW50byB0aGUgMTYgYml0cy4KClJldmlld2VkLWJ5OiBT
YW0gUmF2bmJvcmcgPHNhbUByYXZuYm9yZy5vcmc+ClJldmlld2VkLWJ5OiBFbWlsIFZlbGlrb3Yg
PGVtaWwudmVsaWtvdkBjb2xsYWJvcmEuY29tPgpTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rs
w6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgotLS0KIGluY2x1ZGUvZHJtL2RybV9t
b2Rlcy5oIHwgNCArKy0tCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAyIGRlbGV0
aW9ucygtKQoKZGlmZiAtLWdpdCBhL2luY2x1ZGUvZHJtL2RybV9tb2Rlcy5oIGIvaW5jbHVkZS9k
cm0vZHJtX21vZGVzLmgKaW5kZXggOGIwNWYzNzA1ZDBlLi4zNjI1ZTM2ODE0ODggMTAwNjQ0Ci0t
LSBhL2luY2x1ZGUvZHJtL2RybV9tb2Rlcy5oCisrKyBiL2luY2x1ZGUvZHJtL2RybV9tb2Rlcy5o
CkBAIC0zMzAsNyArMzMwLDcgQEAgc3RydWN0IGRybV9kaXNwbGF5X21vZGUgewogCSAqIEFkZHJl
c3NhYmxlIHNpemUgb2YgdGhlIG91dHB1dCBpbiBtbSwgcHJvamVjdG9ycyBzaG91bGQgc2V0IHRo
aXMgdG8KIAkgKiAwLgogCSAqLwotCWludCB3aWR0aF9tbTsKKwl1MTYgd2lkdGhfbW07CiAKIAkv
KioKIAkgKiBAaGVpZ2h0X21tOgpAQCAtMzM4LDcgKzMzOCw3IEBAIHN0cnVjdCBkcm1fZGlzcGxh
eV9tb2RlIHsKIAkgKiBBZGRyZXNzYWJsZSBzaXplIG9mIHRoZSBvdXRwdXQgaW4gbW0sIHByb2pl
Y3RvcnMgc2hvdWxkIHNldCB0aGlzIHRvCiAJICogMC4KIAkgKi8KLQlpbnQgaGVpZ2h0X21tOwor
CXUxNiBoZWlnaHRfbW07CiAKIAkvKioKIAkgKiBAY3J0Y19jbG9jazoKLS0gCjIuMjQuMQoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
