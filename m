Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A9ECD0C1C
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Oct 2019 12:03:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C3FD789C16;
	Wed,  9 Oct 2019 10:03:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6A81389C16;
 Wed,  9 Oct 2019 10:03:19 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 60B35A41FB;
 Wed,  9 Oct 2019 10:03:19 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Stanislav Lisovskiy" <stanislav.lisovskiy@intel.com>
Date: Wed, 09 Oct 2019 10:03:19 -0000
Message-ID: <20191009100319.31952.38921@emeril.freedesktop.org>
References: <20191009073908.22128-1-stanislav.lisovskiy@intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20191009073908.22128-1-stanislav.lisovskiy@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_drm/i915=3A_Enable_second_dbuf_slice_for_ICL?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTU6IEVuYWJsZSBzZWNvbmQgZGJ1
ZiBzbGljZSBmb3IgSUNMClVSTCAgIDogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3Jn
L3Nlcmllcy82Nzc3MS8KU3RhdGUgOiB3YXJuaW5nCgo9PSBTdW1tYXJ5ID09CgokIGRpbSBjaGVj
a3BhdGNoIG9yaWdpbi9kcm0tdGlwCjhjOGMzNmUwYTI0MSBkcm0vaTkxNTogRW5hYmxlIHNlY29u
ZCBkYnVmIHNsaWNlIGZvciBJQ0wKLTo1MjogQ0hFQ0s6Q0FNRUxDQVNFOiBBdm9pZCBDYW1lbENh
c2U6IDxHQnBzPgojNTI6IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmM6Mzgy
NDoKKwlpZiAoKG51bV9hY3RpdmUgPiAxIHx8IHRvdGFsX2RhdGFfYncgPj0gR0JwcygxMikpKSB7
CgotOjE4NjogV0FSTklORzpMT05HX0xJTkVfQ09NTUVOVDogbGluZSBvdmVyIDEwMCBjaGFyYWN0
ZXJzCiMxODY6IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmM6Mzk4MDoKKwkJ
ICogQWNjb3JkaW5nIHRvIEJTcGVjIHBpcGUgY2FuIHNoYXJlIG9uZSBkYnVmIHNsaWNlIHdpdGgg
YW5vdGhlciBwaXBlcyBvciBwaXBlIGNhbiB1c2UKCi06MjUzOiBDSEVDSzpMSU5FX1NQQUNJTkc6
IFBsZWFzZSBkb24ndCB1c2UgbXVsdGlwbGUgYmxhbmsgbGluZXMKIzI1MzogRklMRTogZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYzo0MzkwOgorCisKCi06Mjg4OiBXQVJOSU5HOkxJTkVf
U1BBQ0lORzogTWlzc2luZyBhIGJsYW5rIGxpbmUgYWZ0ZXIgZGVjbGFyYXRpb25zCiMyODg6IEZJ
TEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmM6NDQyNToKKwlpbnQgaTsKKwlmb3Ig
KGkgPSAwOyBpIDwgQVJSQVlfU0laRShpY2xfYWxsb3dlZF9kYnVmcyk7IGkrKykgewoKLTozMDM6
IENIRUNLOlBBUkVOVEhFU0lTX0FMSUdOTUVOVDogQWxpZ25tZW50IHNob3VsZCBtYXRjaCBvcGVu
IHBhcmVudGhlc2lzCiMzMDM6IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmM6
NDQ0MDoKK3UzMiBpOTE1X2dldF9hbGxvd2VkX2RidWZfbWFzayhzdHJ1Y3QgZHJtX2k5MTVfcHJp
dmF0ZSAqZGV2X3ByaXYsCisJCQkJICAgICAgaW50IHBpcGUsIHUzMiBhY3RpdmVfcGlwZXMsCgp0
b3RhbDogMCBlcnJvcnMsIDIgd2FybmluZ3MsIDMgY2hlY2tzLCAyODUgbGluZXMgY2hlY2tlZAoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
