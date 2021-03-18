Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E9C6F3409B5
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Mar 2021 17:10:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 71FB56E11F;
	Thu, 18 Mar 2021 16:10:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 75A2A6E11F
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Mar 2021 16:10:20 +0000 (UTC)
IronPort-SDR: mrje8EnilfGX9bdZ0thtdoBwUnJfFs7WIEoT6MGhzPS+iFlzrYvhrojzWcumQN6Y2Rq3QfYFIo
 R4owcvzxB6cg==
X-IronPort-AV: E=McAfee;i="6000,8403,9927"; a="253723334"
X-IronPort-AV: E=Sophos;i="5.81,259,1610438400"; d="scan'208";a="253723334"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2021 09:10:18 -0700
IronPort-SDR: F5q5gxjZDaVFIuZ5nBsoWYh+GbT6VTmhHAyFz0C7GKbEcY4ykvAdDQB9fC89O8Sn2qnRCLWuC4
 0O5Mw9LUHWIA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,259,1610438400"; d="scan'208";a="389296355"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga002.jf.intel.com with SMTP; 18 Mar 2021 09:10:16 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 18 Mar 2021 18:10:15 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 18 Mar 2021 18:10:08 +0200
Message-Id: <20210318161015.22070-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 0/7] drm/i915: Shuffle DP code around
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCk5l
dyBpdGVyYXRpb24gb2YgdGhlIGc0eCsgRFAgY29kZSBzaHVmZmxlLiBEZWFsdCB3aXRoCkRhbmll
bCdzIHJldmlldyBjb21tZW50cywgYW5kIGluIHRoZSBlbmQgSSBkZWNpZGVkIHRvIGRvCnRoZSBz
YW1lIG9wZXJhdGlvbiB0byB0aGUgZzR4IEhETUkgY29kZSB0byBtYWtlIGludGVsX2hkbWkuYwph
IGJpdCBsZXNzIGNvbmZ1c2luZyBhcyB3ZWxsLgoKQ2M6IERhbmllbCBWZXR0ZXIgPGRhbmllbC52
ZXR0ZXJAZmZ3bGwuY2g+CgpWaWxsZSBTeXJqw6Rsw6QgKDcpOgogIGRybS9pOTE1OiBSZW1vdmUg
ZGVhZCBUUFMzLT5UUFMyIGZhbGxiYWNrIGNvZGUKICBkcm0vaTkxNTogUmVtb3ZlIGRlYWQgc2ln
bmFsIGxldmVsIGRlYnVncwogIGRybS9pOTE1OiBSZWxvY2F0ZSBpbnRlbF9kcF9wcm9ncmFtX2xp
bmtfdHJhaW5pbmdfcGF0dGVybigpCiAgZHJtL2k5MTU6IFNwbGl0IGludGVsX2RkaV9lbmNvZGVy
X3Jlc2V0KCkgZnJvbQogICAgaW50ZWxfZHBfZW5jb2Rlcl9yZXNldCgpCiAgZHJtL2k5MTU6IElu
dHJvZHVjZSBnNHhfZHAuYwogIGRybS9pOTE1OiBJbnRyb2R1Y2UgZzR4X2hkbWkuYwogIGRybS9p
OTE1OiBHaXZlIGc0eF97ZHAsaGRtaX0uYyBnNHhfIG5hbWVzcGFjZQoKIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L01ha2VmaWxlICAgICAgICAgICAgICAgICB8ICAgIDIgKwogZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9nNHhfZHAuYyAgICAgICAgIHwgMTQzMiArKysrKysrKysrKysrKysrCiBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2c0eF9kcC5oICAgICAgICAgfCAgIDMwICsKIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvZzR4X2hkbWkuYyAgICAgICB8ICA2MTYgKysrKysr
KwogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9nNHhfaGRtaS5oICAgICAgIHwgICAxOSAr
CiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jICAgICAgfCAgIDExICst
CiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyAgfCAgIDQ2ICst
CiAuLi4vZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmggICAgfCAgIDEyICsK
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYyAgICAgICB8IDE0NTcgKy0t
LS0tLS0tLS0tLS0tLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuaCAg
ICAgICB8ICAgMTEgLQogLi4uL2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbGlua190cmFpbmlu
Zy5jIHwgICAzMyArCiAuLi4vZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9saW5rX3RyYWluaW5n
LmggfCAgICAzICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaGRtaS5jICAg
ICB8ICA2MTggLS0tLS0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9oZG1p
LmggICAgIHwgICAgMyAtCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bwcy5j
ICAgICAgfCAgICAxICsKIDE1IGZpbGVzIGNoYW5nZWQsIDIxODQgaW5zZXJ0aW9ucygrKSwgMjEx
MCBkZWxldGlvbnMoLSkKIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2c0eF9kcC5jCiBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9nNHhfZHAuaAogY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvZzR4X2hkbWkuYwogY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvZzR4X2hkbWkuaAoKLS0gCjIuMjYuMgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
