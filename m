Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 293EB551B9
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Jun 2019 16:30:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 94CAC6E122;
	Tue, 25 Jun 2019 14:30:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1EF4A6E123;
 Tue, 25 Jun 2019 14:30:21 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 16D7CA008C;
 Tue, 25 Jun 2019 14:30:21 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lionel Landwerlin" <lionel.g.landwerlin@intel.com>
Date: Tue, 25 Jun 2019 14:30:21 -0000
Message-ID: <20190625143021.20398.53675@emeril.freedesktop.org>
References: <20190625135503.4262-1-lionel.g.landwerlin@intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20190625135503.4262-1-lionel.g.landwerlin@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_drm/?=
 =?utf-8?q?i915=3A_CTS_fixes_=28rev4=29?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTU6IENUUyBmaXhlcyAocmV2NCkK
VVJMICAgOiBodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzYyNDM3LwpT
dGF0ZSA6IGZhaWx1cmUKCj09IFN1bW1hcnkgPT0KCkNBTEwgICAgc2NyaXB0cy9jaGVja3N5c2Nh
bGxzLnNoCiAgQ0FMTCAgICBzY3JpcHRzL2F0b21pYy9jaGVjay1hdG9taWNzLnNoCiAgREVTQ0VO
RCAgb2JqdG9vbAogIENISyAgICAgaW5jbHVkZS9nZW5lcmF0ZWQvY29tcGlsZS5oCiAgQVIgICAg
ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9idWlsdC1pbi5hCiAgQ0MgW01dICBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9oZWFkZXJfdGVzdF9pOTE1X2FjdGl2ZV90eXBlcy5vCiAgQ0MgW01dICBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9oZWFkZXJfdGVzdF9pOTE1X2RlYnVnZnMubwogIENDIFtNXSAgZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaGVhZGVyX3Rlc3RfaTkxNV9kcnYubwogIENDIFtNXSAgZHJpdmVycy9n
cHUvZHJtL2k5MTUvaGVhZGVyX3Rlc3RfaTkxNV9nZW1fZ3R0Lm8KICBDQyBbTV0gIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2hlYWRlcl90ZXN0X2k5MTVfaXJxLm8KICBDQyBbTV0gIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2hlYWRlcl90ZXN0X2k5MTVfcGFyYW1zLm8KICBDQyBbTV0gIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2hlYWRlcl90ZXN0X2k5MTVfcHJpb2xpc3RfdHlwZXMubwogIENDIFtNXSAgZHJp
dmVycy9ncHUvZHJtL2k5MTUvaGVhZGVyX3Rlc3RfaTkxNV9yZWcubwogIENDIFtNXSAgZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaGVhZGVyX3Rlc3RfaTkxNV9zY2hlZHVsZXJfdHlwZXMubwogIENDIFtN
XSAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaGVhZGVyX3Rlc3RfaTkxNV91dGlscy5vCiAgQ0MgW01d
ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9oZWFkZXJfdGVzdF9pbnRlbF9jc3IubwogIENDIFtNXSAg
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaGVhZGVyX3Rlc3RfaW50ZWxfZHJ2Lm8KICBDQyBbTV0gIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2hlYWRlcl90ZXN0X2ludGVsX3BtLm8KICBDQyBbTV0gIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2hlYWRlcl90ZXN0X2ludGVsX3J1bnRpbWVfcG0ubwogIENDIFtNXSAg
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaGVhZGVyX3Rlc3RfaW50ZWxfc2lkZWJhbmQubwogIENDIFtN
XSAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaGVhZGVyX3Rlc3RfaW50ZWxfdW5jb3JlLm8KICBDQyBb
TV0gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2hlYWRlcl90ZXN0X2ludGVsX3dha2VyZWYubwogIEND
IFtNXSAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMubwpJbiBmaWxl
IGluY2x1ZGVkIGZyb20gZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMu
YzoxNDg5OjA6CmRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X3dvcmthcm91bmRzLmM6
IEluIGZ1bmN0aW9uIOKAmGNoZWNrX3doaXRlbGlzdGVkX3JlZ2lzdGVyc+KAmToKZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3Qvc2VsZnRlc3Rfd29ya2Fyb3VuZHMuYzo5Mjk6Mzc6IGVycm9yOiBpbnZh
bGlkIG9wZXJhbmRzIHRvIGJpbmFyeSAmIChoYXZlIOKAmGk5MTVfcmVnX3Qge2FrYSBzdHJ1Y3Qg
PGFub255bW91cz594oCZIGFuZCDigJhpbnTigJkpCiAgIGlmIChlbmdpbmUtPndoaXRlbGlzdC5s
aXN0W2ldLnJlZyAmIFJJTkdfRk9SQ0VfVE9fTk9OUFJJVl9SRCkKICAgICAgIH5+fn5+fn5+fn5+
fn5+fn5+fn5+fn5+fn5+fn5+IF4Kc2NyaXB0cy9NYWtlZmlsZS5idWlsZDoyNzg6IHJlY2lwZSBm
b3IgdGFyZ2V0ICdkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5vJyBm
YWlsZWQKbWFrZVs0XTogKioqIFtkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJv
dW5kcy5vXSBFcnJvciAxCnNjcmlwdHMvTWFrZWZpbGUuYnVpbGQ6NDg5OiByZWNpcGUgZm9yIHRh
cmdldCAnZHJpdmVycy9ncHUvZHJtL2k5MTUnIGZhaWxlZAptYWtlWzNdOiAqKiogW2RyaXZlcnMv
Z3B1L2RybS9pOTE1XSBFcnJvciAyCnNjcmlwdHMvTWFrZWZpbGUuYnVpbGQ6NDg5OiByZWNpcGUg
Zm9yIHRhcmdldCAnZHJpdmVycy9ncHUvZHJtJyBmYWlsZWQKbWFrZVsyXTogKioqIFtkcml2ZXJz
L2dwdS9kcm1dIEVycm9yIDIKc2NyaXB0cy9NYWtlZmlsZS5idWlsZDo0ODk6IHJlY2lwZSBmb3Ig
dGFyZ2V0ICdkcml2ZXJzL2dwdScgZmFpbGVkCm1ha2VbMV06ICoqKiBbZHJpdmVycy9ncHVdIEVy
cm9yIDIKTWFrZWZpbGU6MTA3MTogcmVjaXBlIGZvciB0YXJnZXQgJ2RyaXZlcnMnIGZhaWxlZApt
YWtlOiAqKiogW2RyaXZlcnNdIEVycm9yIDIKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLWdmeA==
