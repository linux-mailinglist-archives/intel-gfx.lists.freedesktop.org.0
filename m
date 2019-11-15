Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BAD67FE14C
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Nov 2019 16:33:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 380306E62C;
	Fri, 15 Nov 2019 15:33:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0E3226E62C
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Nov 2019 15:33:56 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Nov 2019 07:33:55 -0800
X-IronPort-AV: E=Sophos;i="5.68,308,1569308400"; d="scan'208";a="199231778"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Nov 2019 07:33:53 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 15 Nov 2019 17:33:36 +0200
Message-Id: <cover.1573831924.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH v2 00/10] drm/i915/dsi: enable DSC
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Mm5kIHRyeSBhdCBlbmFibGluZyBEU0Mgb24gSUNMKyBEU0kuIEZpbmdlcnMgc3RpbGwgY3Jvc3Nl
ZC4KCkJSLApKYW5pLgoKSmFuaSBOaWt1bGEgKDEwKToKICBkcm0vaTkxNS9iaW9zOiBwYXNzIGRl
dmRhdGEgdG8gcGFyc2VfZGRpX3BvcnQKICBkcm0vaTkxNS9iaW9zOiBwYXJzZSBjb21wcmVzc2lv
biBwYXJhbWV0ZXJzIGJsb2NrCiAgZHJtL2k5MTUvYmlvczogYWRkIHN1cHBvcnQgZm9yIHF1ZXJ5
aW5nIERTQyBkZXRhaWxzIGZvciBlbmNvZGVyCiAgZHJtL2k5MTUvZHNjOiBtb3ZlIERQIHNwZWNp
ZmljIGNvbXB1dGUgcGFyYW1zIHRvIGludGVsX2RwLmMKICBkcm0vaTkxNS9kc2M6IG1vdmUgc2xp
Y2UgaGVpZ2h0IGNhbGN1bGF0aW9uIHRvIGVuY29kZXIKICBkcm0vaTkxNS9kc2M6IGFkZCBzdXBw
b3J0IGZvciBjb21wdXRpbmcgYW5kIHdyaXRpbmcgUFBTIGZvciBEU0kKICAgIGVuY29kZXJzCiAg
ZHJtL2k5MTUvZHNpOiBzZXQgcGlwZV9icHAgb24gSUNMIGNvbmZpZ3VyZSBjb25maWcKICBkcm0v
aTkxNS9kc2k6IGFic3RyYWN0IGFmZV9jbGsgY2FsY3VsYXRpb24KICBkcm0vaTkxNS9kc2k6IHVz
ZSBhZmVfY2xrKCkgaW5zdGVhZCBvZiBpbnRlbF9kc2lfYml0cmF0ZSgpCiAgZHJtL2k5MTUvZHNp
OiBhZGQgc3VwcG9ydCBmb3IgRFNDCgogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pY2xf
ZHNpLmMgICAgICAgIHwgMTMwICsrKysrKysrKysrLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2Jpb3MuYyAgICAgfCAxNTkgKysrKysrKysrKysrKysrKystCiBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuaCAgICAgfCAgIDUgKwogZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jICAgICAgIHwgIDU5ICsrKysrKy0KIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdmJ0X2RlZnMuaCB8ICAgMiArLQogZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92ZHNjLmMgICAgIHwgIDg1ICsrKy0tLS0tLS0K
IDYgZmlsZXMgY2hhbmdlZCwgMzUzIGluc2VydGlvbnMoKyksIDg3IGRlbGV0aW9ucygtKQoKLS0g
CjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
