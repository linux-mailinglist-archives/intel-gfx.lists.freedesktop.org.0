Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 590D33BA4C6
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Jul 2021 22:46:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 400066E200;
	Fri,  2 Jul 2021 20:46:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 74A086E200
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Jul 2021 20:46:07 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10033"; a="206958475"
X-IronPort-AV: E=Sophos;i="5.83,320,1616482800"; d="scan'208";a="206958475"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2021 13:46:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,320,1616482800"; d="scan'208";a="409394236"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga006.jf.intel.com with SMTP; 02 Jul 2021 13:46:04 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 02 Jul 2021 23:46:03 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  2 Jul 2021 23:45:55 +0300
Message-Id: <20210702204603.596-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/8] drm/i915/fbc: Rework CFB stride/size
 calculations
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
ZSB3YXkgd2UgY2FsY3VsYXRlIHRoZSBDRkIgc3RyaWRlL3NpemUgaXMga2luZCBvZiBhIG1lc3Ms
IGFuZApJJ20gbm90IHN1cmUgaWYgd2UncmUgZXZlbiBhbGxvY2F0aW5nIGVub3VnaCBzdG9sZW4g
bWVtb3J5IGFsd2F5cy4KTGV0J3MgbWFrZSBpdCBhbGwgbW9yZSBzdHJhaWdodGZvcndhcmQsIGFu
ZCBhZGQgc29tZSBuZXcgcmVsYXRlZAp3b3JrYXJvdW5kcyBhcyB3ZWxsLgoKVmlsbGUgU3lyasOk
bMOkICg4KToKICBkcm0vaTkxNS9mYmM6IFJld3JpdGUgdGhlIEZCQyB0aWxpbmcgY2hlY2sgYSBi
aXQKICBkcm0vaTkxNS9mYmM6IEV4dHJhY3QgaW50ZWxfZmJjX3VwZGF0ZSgpCiAgZHJtL2k5MTUv
ZmJjOiBNb3ZlIHRoZSAicmVjb21wcmVzcyBvbiBhY3RpdmF0ZSIgdG8gYSBjZW50cmFsIHBsYWNl
CiAgZHJtL2k5MTUvZmJjOiBQb2xpc2ggdGhlIHNrbCsgRkJDIHN0cmlkZSBvdmVycmlkZSBoYW5k
bGluZwogIGRybS9pOTE1L2ZiYzogUmV3b3JrIGNmYiBzdHJpZGUvc2l6ZSBjYWxjdWxhdGlvbnMK
ICBkcm0vaTkxNS9mYmM6IEFsaWduIEZCQyBzZWdtZW50cyB0byA1MTJCIG9uIGdsaysKICBkcm0v
aTkxNS9mYmM6IEltcGxlbWVudCBXYV8xNjAxMTg2Mzc1OCBmb3IgaWNsKwogIGRybS9pOTE1L2Zi
YzogQWxsb3cgaGlnaGVyIGNvbXByZXNzaW9uIGxpbWl0cyBvbiBGQkMxCgogZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgfCAgIDUgKy0KIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMgICAgIHwgMjQyICsrKysrKysrKysrKy0tLS0tLS0K
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmggICAgIHwgICAyICstCiBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oICAgICAgICAgICAgICB8ICAgNiArLQogZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCAgICAgICAgICAgICAgfCAgIDkgKy0KIDUgZmls
ZXMgY2hhbmdlZCwgMTY4IGluc2VydGlvbnMoKyksIDk2IGRlbGV0aW9ucygtKQoKLS0gCjIuMzEu
MQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
