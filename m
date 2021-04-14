Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B9A8235EAC3
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Apr 2021 04:23:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B10D16E428;
	Wed, 14 Apr 2021 02:23:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 817896E428
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Apr 2021 02:23:15 +0000 (UTC)
IronPort-SDR: LpjYkeeIoaKV8zr7j109KN6iNQH3YXTGnGbm+Hwqf4nCc0r440adFZYUOdZDFYsf+Si4V4d+V1
 iy1CX0CW4HoA==
X-IronPort-AV: E=McAfee;i="6200,9189,9953"; a="174042188"
X-IronPort-AV: E=Sophos;i="5.82,221,1613462400"; d="scan'208";a="174042188"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2021 19:23:12 -0700
IronPort-SDR: HSF9PRCBHcjeHlXSGqznC+v5QrPBmPlI9Ot4GTTsncZ/jy6VMAjbNwx4UMYhIVGNTEF4qRA1fc
 w5dY44n6xH2w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,221,1613462400"; d="scan'208";a="424517281"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga008.jf.intel.com with SMTP; 13 Apr 2021 19:23:10 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 14 Apr 2021 05:23:09 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 14 Apr 2021 05:23:01 +0300
Message-Id: <20210414022309.30898-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.3
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/8] drm/i915: FBC cleanups
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
ZSBGQkMgY29kZSBpcyBhIGJpdCBvZiBtZXNzLiBTdGFydCBjbGVhbmluZyBpdCB1cCBhIGJpdC4K
VGhlIG1haW4gdGhpbmcgaGVyZSBpcyB0aHJvd2luZyBvdXQgdG9ucyBvZiByZWR1bmRhbnQgc3Rh
dGUKZnJvbSB0aGUgZmJjX3N0YXRlX2NhY2hlIGFuZCBqdXN0IGNoZWNrbmcgdGhhdCBzdHVmZiBh
aGVhZCBvZgp0aW1lIGZyb20gdGhlIHBsYW5lL2NydGMgc3RhdGVzLgoKVmlsbGUgU3lyasOkbMOk
ICg4KToKICBkcm0vaTkxNTogQWRkIGZyb250YnVmZmVyIHRyYWNraW5nIHRyYWNlcG9pbnRzCiAg
ZHJtL2k5MTU6IFJld3JpdGUgdGhlIEZCQyB0aWxpbmcgY2hlY2sgYSBiaXQKICBkcm0vaTkxNTog
RXh0cmFjdCBpbnRlbF9mYmNfdXBkYXRlKCkKICBkcm0vaTkxNTogQ2xlYXIgbm9fZmJjX3JlYXNv
biBvbiBhY3RpdmF0ZQogIGRybS9pOTE1OiBNb3ZlIHRoZSAicmVjb21wcmVzcyBvbiBhY3RpdmF0
ZSIgdG8gYSBjZW50cmFsIHBsYWNlCiAgZHJtL2k5MTU6IE51a2UgbG90cyBvZiBjcmFwIGZyb20g
aW50ZWxfZmJjX3N0YXRlX2NhY2hlCiAgZHJtL2k5MTU6IE5vIEZCQytkb3VibGUgd2lkZSBwaXBl
CiAgZHJtL2k5MTU6IFBpbXAgdGhlIEZCQyBkZWJ1Z2ZzIG91dHB1dAoKIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jICB8ICAxMCArLQogLi4uL2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGlzcGxheV9kZWJ1Z2ZzLmMgIHwgIDUwICsrLQogLi4uL2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oICAgIHwgICAyICstCiBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5jICAgICAgfCA0MjQgKysrKysrKysrLS0tLS0tLS0tCiBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5oICAgICAgfCAgIDUgKy0KIC4u
Li9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mcm9udGJ1ZmZlci5jICB8ICAgNSArCiBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oICAgICAgICAgICAgICAgfCAgMjEgKy0KIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfdHJhY2UuaCAgICAgICAgICAgICB8ICAzOCArKwogOCBmaWxl
cyBjaGFuZ2VkLCAzMDUgaW5zZXJ0aW9ucygrKSwgMjUwIGRlbGV0aW9ucygtKQoKLS0gCjIuMjYu
MwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
