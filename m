Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 09930B9829
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Sep 2019 21:56:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C61C6FDC4;
	Fri, 20 Sep 2019 19:56:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 862B96FDC4;
 Fri, 20 Sep 2019 19:56:09 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7FFE2A0137;
 Fri, 20 Sep 2019 19:56:09 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Fri, 20 Sep 2019 19:56:09 -0000
Message-ID: <20190920195609.25913.44409@emeril.freedesktop.org>
References: <20190920185421.17822-1-jani.nikula@intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20190920185421.17822-1-jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_series_starting_with_=5Bv2=2C1/6=5D_drm/i915=3A_add_i915=5Fd?=
 =?utf-8?q?river=5Fmodeset=5Fremove=28=29?=
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
Reply-To: intel-gfx@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggW3YyLDEv
Nl0gZHJtL2k5MTU6IGFkZCBpOTE1X2RyaXZlcl9tb2Rlc2V0X3JlbW92ZSgpClVSTCAgIDogaHR0
cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy82NzAxMy8KU3RhdGUgOiB3YXJu
aW5nCgo9PSBTdW1tYXJ5ID09CgokIGRpbSBjaGVja3BhdGNoIG9yaWdpbi9kcm0tdGlwCjRmMDMx
OGE4ZTI5MyBkcm0vaTkxNTogYWRkIGk5MTVfZHJpdmVyX21vZGVzZXRfcmVtb3ZlKCkKNzhiNmUz
Yjk2Zjk1IGRybS9pOTE1OiBwYXNzIGk5MTUgdG8gaTkxNV9kcml2ZXJfbW9kZXNldF9wcm9iZSgp
CjI3ZTQ0ODljMzJkOSBkcm0vaTkxNTogcGFzcyBpOTE1IHRvIGludGVsX21vZGVzZXRfZHJpdmVy
X3JlbW92ZSgpCjhjOGYxNmExZWRmOCBkcm0vaTkxNTogYWJzdHJhY3QgaW50ZWxfcGFuZWxfc2Fu
aXRpemVfc3NjKCkgZnJvbSBpbnRlbF9tb2Rlc2V0X2luaXQoKQoyZTZlN2MxZDk3ODEgZHJtL2k5
MTU6IGFic3RyYWN0IGludGVsX21vZGVfY29uZmlnX2luaXQoKSBmcm9tIGludGVsX21vZGVzZXRf
aW5pdCgpCjcwOWQzNGQ3Yzc0OCBkcm0vaTkxNTogcGFzcyBpOTE1IHRvIGludGVsX21vZGVzZXRf
aW5pdCgpIGFuZCBpbnRlbF9tb2Rlc2V0X2luaXRfaHcoKQotOjQxOiBDSEVDSzpNVUxUSVBMRV9B
U1NJR05NRU5UUzogbXVsdGlwbGUgYXNzaWdubWVudHMgc2hvdWxkIGJlIGF2b2lkZWQKIzQxOiBG
SUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYzoxNjAyODoK
KwlpOTE1LT5jZGNsay5sb2dpY2FsID0gaTkxNS0+Y2RjbGsuYWN0dWFsID0gaTkxNS0+Y2RjbGsu
aHc7Cgp0b3RhbDogMCBlcnJvcnMsIDAgd2FybmluZ3MsIDEgY2hlY2tzLCAxNTUgbGluZXMgY2hl
Y2tlZAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
