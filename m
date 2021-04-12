Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9675B35B9E6
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Apr 2021 07:46:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7892789E32;
	Mon, 12 Apr 2021 05:46:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3CE4989E32
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Apr 2021 05:46:13 +0000 (UTC)
IronPort-SDR: PK/Y570FytVhEkqpVpjJ1zQjmXiQbjqzT131vVAbAJ5BGPFHczh+Ym0lBp5o21gNSilewMWqsl
 ETrrHBSqi9dg==
X-IronPort-AV: E=McAfee;i="6000,8403,9951"; a="194146705"
X-IronPort-AV: E=Sophos;i="5.82,214,1613462400"; d="scan'208";a="194146705"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2021 22:46:10 -0700
IronPort-SDR: 6TT1U48OhgexkWXxbD2nNtRQ7bfR8tXoOlFYuME7aJmrIBNEorZ1jRfUWWieAdlArTRGrN0CJF
 dNehUQoC5gZg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,214,1613462400"; d="scan'208";a="423645798"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga008.jf.intel.com with SMTP; 11 Apr 2021 22:46:08 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 12 Apr 2021 08:46:07 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 12 Apr 2021 08:46:02 +0300
Message-Id: <20210412054607.18133-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.3
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/5] drm/i915: Fix glk display version
 regressions
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkZp
eCBhIGNvdXBsZSBvZiByZWdyZXNzaW9ucyBkdWUgdG8gdGhlIGdsayBkaXNwbGF5IHZlcnNpb24g
OS0+MTAKY2hhbmdlLiBJICp0aGluayogYWxsIHRoZSBvbmVzIHRoYXQgc2xpcHBlZCB0aHJvdWdo
IGludm9sdmVkCmVpdGhlciBESVNQTEFZX1ZFUj09OSBvciBESVNQTEFZX1ZFUjwxMCBjaGVja3Mu
IFRoZXNlIHRocmVlCnJlZ3Jlc3Npb25zIGFyZSB0aGUgb25lcyBJIGZvdW5kIHRocm91Z2ggYSBx
dWljayBzY2FuLCBidXQgc29tZW9uZQpzaG91bGQgcHJvYmFibHkgZ28gdGhyb3VnaCB0aGUgd2hv
bGUgdHJlZSB3aXRoIGEgZmluZSB0b290aGNvbWIKaW4gY2FzZSB3ZSBtaXNzZWQgbW9yZSBjYXNl
cy4KCkFsc28gdG9zc2VkIGluIGEgY291cGxlIG9mIGNsZWFudXBzLgoKQ2M6IE1hdHQgUm9wZXIg
PG1hdHRoZXcuZC5yb3BlckBpbnRlbC5jb20+CgpWaWxsZSBTeXJqw6Rsw6QgKDUpOgogIGRybS9p
OTE1OiBSZXN0b3JlIGxvc3QgZ2xrIEZCQyAxNmJwcCB3L2EKICBkcm0vaTkxNTogUmVzdG9yZSBs
b3N0IGdsayBjY3Mgdy9hCiAgZHJtL2k5MTU6IERpc2FibGUgTFRUUFIgZGV0ZWN0aW9uIG9uIEdM
SyBvbmNlIGFnYWluCiAgZHJtL2k5MTU6IERvbid0IHVzZSB7c2tsLGNubH1faHBkX3BpbigpIGZv
ciBieHQvZ2xrCiAgZHJtL2k5MTU6IFJlbW92ZSBhIGZldyByZWR1bmRhbnQgZ2xrIGNoZWNrcwoK
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMgICAgICAgICAgICAgIHwg
NiArKystLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jICAg
ICAgICAgIHwgMyArKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbGlu
a190cmFpbmluZy5jIHwgMiArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9m
YmMuYyAgICAgICAgICAgICAgfCAyICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L3Nr
bF91bml2ZXJzYWxfcGxhbmUuYyAgICB8IDIgKy0KIDUgZmlsZXMgY2hhbmdlZCwgOCBpbnNlcnRp
b25zKCspLCA3IGRlbGV0aW9ucygtKQoKLS0gCjIuMjYuMwoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
