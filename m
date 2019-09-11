Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D0EDEB00C3
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Sep 2019 18:03:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4DA8E6E2D8;
	Wed, 11 Sep 2019 16:03:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 21B006E2D8;
 Wed, 11 Sep 2019 16:03:02 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 1D08DA00FE;
 Wed, 11 Sep 2019 16:03:02 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Wed, 11 Sep 2019 16:03:02 -0000
Message-ID: <20190911160302.22029.94752@emeril.freedesktop.org>
References: <20190911135000.23272-1-ville.syrjala@linux.intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20190911135000.23272-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_drm/i915=3A_Fix_DRM=5FI915=5FDEBUG_IOMMU_stuff?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTU6IEZpeCBEUk1fSTkxNV9ERUJV
RyBJT01NVSBzdHVmZgpVUkwgICA6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9z
ZXJpZXMvNjY1MzkvClN0YXRlIDogd2FybmluZwoKPT0gU3VtbWFyeSA9PQoKJCBkaW0gY2hlY2tw
YXRjaCBvcmlnaW4vZHJtLXRpcAo1OTM1MmNkYWY5YmMgZHJtL2k5MTU6IEZpeCBEUk1fSTkxNV9E
RUJVRyBJT01NVSBzdHVmZgotOjIwOiBXQVJOSU5HOkNPTU1JVF9MT0dfTE9OR19MSU5FOiBQb3Nz
aWJsZSB1bndyYXBwZWQgY29tbWl0IGRlc2NyaXB0aW9uIChwcmVmZXIgYSBtYXhpbXVtIDc1IGNo
YXJzIHBlciBsaW5lKQojMjA6IAovaG9tZS92c3lyamFsYS9zcmMvbGludXgvYnVpbGRfc2tsLy4u
L2RyaXZlcnMvaW9tbXUvaW50ZWwtaW9tbXUuYzo0NDY2OiB1bmRlZmluZWQgcmVmZXJlbmNlIHRv
IGBmcmVlX2NwdV9jYWNoZWRfaW92YXMnCgotOjIwOiBXQVJOSU5HOlVTRV9SRUxBVElWRV9QQVRI
OiB1c2UgcmVsYXRpdmUgcGF0aG5hbWUgaW5zdGVhZCBvZiBhYnNvbHV0ZSBpbiBjaGFuZ2Vsb2cg
dGV4dAojMjA6IAovaG9tZS92c3lyamFsYS9zcmMvbGludXgvYnVpbGRfc2tsLy4uL2RyaXZlcnMv
aW9tbXUvaW50ZWwtaW9tbXUuYzo0NDY2OiB1bmRlZmluZWQgcmVmZXJlbmNlIHRvIGBmcmVlX2Nw
dV9jYWNoZWRfaW92YXMnCgp0b3RhbDogMCBlcnJvcnMsIDIgd2FybmluZ3MsIDAgY2hlY2tzLCA3
IGxpbmVzIGNoZWNrZWQKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LWdmeA==
