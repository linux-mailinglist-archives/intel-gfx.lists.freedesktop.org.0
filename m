Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AD56D2A9C0
	for <lists+intel-gfx@lfdr.de>; Sun, 26 May 2019 14:32:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C13A889C60;
	Sun, 26 May 2019 12:32:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6251A89B78;
 Sun, 26 May 2019 12:32:41 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5C374A0020;
 Sun, 26 May 2019 12:32:41 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Hans de Goede" <hdegoede@redhat.com>
Date: Sun, 26 May 2019 12:32:41 -0000
Message-ID: <20190526123241.542.82752@emeril.freedesktop.org>
References: <20190524163020.17099-1-hdegoede@redhat.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20190524163020.17099-1-hdegoede@redhat.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_drm/i915/dsi=3A_Read_back_pclk_set_by_GOP_and_use_that_as_pc?=
 =?utf-8?q?lk_=28version_3=29?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTUvZHNpOiBSZWFkIGJhY2sgcGNs
ayBzZXQgYnkgR09QIGFuZCB1c2UgdGhhdCBhcyBwY2xrICh2ZXJzaW9uIDMpClVSTCAgIDogaHR0
cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy82MTExNS8KU3RhdGUgOiB3YXJu
aW5nCgo9PSBTdW1tYXJ5ID09CgokIGRpbSBjaGVja3BhdGNoIG9yaWdpbi9kcm0tdGlwCjQ4ZWU5
ZTMwYTAxZSBkcm0vaTkxNTogTWFrZSBpbnRlbF9mdXp6eV9jbG9ja19jaGVjayBhdmFpbGFibGUg
b3V0c2lkZSBvZiBpbnRlbF9kaXNwbGF5LmMKYjViYTM3N2FlYWVmIGRybS9pOTE1L2RzaTogTW92
ZSBsb2dnaW5nIG9mIERTSSBWQlQgcGFyYW1ldGVycyB0byBhIGhlbHBlciBmdW5jdGlvbgotOjU1
OiBDSEVDSzpQQVJFTlRIRVNJU19BTElHTk1FTlQ6IEFsaWdubWVudCBzaG91bGQgbWF0Y2ggb3Bl
biBwYXJlbnRoZXNpcwojNTU6IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RzaV92
YnQuYzo1NzU6CisJRFJNX0RFQlVHX0tNUygiQlRBICVzXG4iLAorCQkJZW5hYmxlZGRpc2FibGVk
KCEoaW50ZWxfZHNpLT52aWRlb19mcm10X2NmZ19iaXRzICYgRElTQUJMRV9WSURFT19CVEEpKSk7
Cgp0b3RhbDogMCBlcnJvcnMsIDAgd2FybmluZ3MsIDEgY2hlY2tzLCAxMDEgbGluZXMgY2hlY2tl
ZApjOTU1NjAxYWNkZjkgZHJtL2k5MTUvZHNpOiBNb3ZlIHZsdi9pY2xfZHBoeV9wYXJhbV9pbml0
IGNhbGwgb3V0IG9mIGludGVsX2RzaV92YnRfaW5pdAphOTAyZDY2YTIxNDUgZHJtL2k5MTUvZHNp
OiBSZWFkIGJhY2sgcGNsayBzZXQgYnkgR09QIGFuZCB1c2UgdGhhdCBhcyBwY2xrICh2MykKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
