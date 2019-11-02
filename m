Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F1F64ECE7D
	for <lists+intel-gfx@lfdr.de>; Sat,  2 Nov 2019 12:31:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BCA956E434;
	Sat,  2 Nov 2019 11:31:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 679FD6E425;
 Sat,  2 Nov 2019 11:31:08 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5D80BA0094;
 Sat,  2 Nov 2019 11:31:08 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Sat, 02 Nov 2019 11:31:08 -0000
Message-ID: <20191102113108.9336.47171@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191102110927.29575-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191102110927.29575-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_drm/i915/execlists=3A_Verify_context_register_state_before_e?=
 =?utf-8?q?xecution_=28rev4=29?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTUvZXhlY2xpc3RzOiBWZXJpZnkg
Y29udGV4dCByZWdpc3RlciBzdGF0ZSBiZWZvcmUgZXhlY3V0aW9uIChyZXY0KQpVUkwgICA6IGh0
dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvNjg1OTkvClN0YXRlIDogd2Fy
bmluZwoKPT0gU3VtbWFyeSA9PQoKJCBkaW0gY2hlY2twYXRjaCBvcmlnaW4vZHJtLXRpcAo3NzRh
ODYyNjIwNGQgZHJtL2k5MTUvZXhlY2xpc3RzOiBWZXJpZnkgY29udGV4dCByZWdpc3RlciBzdGF0
ZSBiZWZvcmUgZXhlY3V0aW9uCi06NDU6IENIRUNLOlBBUkVOVEhFU0lTX0FMSUdOTUVOVDogQWxp
Z25tZW50IHNob3VsZCBtYXRjaCBvcGVuIHBhcmVudGhlc2lzCiM0NTogRklMRTogZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmM6MTAxNjoKKwkJcHJfZXJyKCIlczogY29udGV4dCBz
dWJtaXR0ZWQgd2l0aCBpbmNvcnJlY3QgUklOR19TVEFSVCBbJTA4eF0sIGV4cGVjdGVkICUwOHhc
biIsCisJCQkgICAgZW5naW5lLT5uYW1lLAoKLTo1NTogQ0hFQ0s6UEFSRU5USEVTSVNfQUxJR05N
RU5UOiBBbGlnbm1lbnQgc2hvdWxkIG1hdGNoIG9wZW4gcGFyZW50aGVzaXMKIzU1OiBGSUxFOiBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYzoxMDI2OgorCQlwcl9lcnIoIiVzOiBj
b250ZXh0IHN1Ym1pdHRlZCB3aXRoIGluY29ycmVjdCBSSU5HX0NUTCBbJTA4eF0sIGV4cGVjdGVk
ICUwOHhcbiIsCisJCQkgICAgZW5naW5lLT5uYW1lLAoKLTo2NDogQ0hFQ0s6UEFSRU5USEVTSVNf
QUxJR05NRU5UOiBBbGlnbm1lbnQgc2hvdWxkIG1hdGNoIG9wZW4gcGFyZW50aGVzaXMKIzY0OiBG
SUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYzoxMDM1OgorCQlwcl9lcnIo
IiVzOiBjb250ZXh0IHN1Ym1pdHRlZCB3aXRoIGluY29ycmVjdCBCQl9TVEFURSBbJTA4eF0sIGV4
cGVjdGVkICUwOHhcbiIsCisJCQkgICAgZW5naW5lLT5uYW1lLAoKLTo3NDogQ0hFQ0s6UEFSRU5U
SEVTSVNfQUxJR05NRU5UOiBBbGlnbm1lbnQgc2hvdWxkIG1hdGNoIG9wZW4gcGFyZW50aGVzaXMK
Izc0OiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYzoxMDQ1OgorCQlw
cl9lcnIoIiVzOiBjb250ZXh0IHN1Ym1pdHRlZCB3aXRoIFNUT1BfUklORyBbJTA4eF0gaW4gUklO
R19NSV9NT0RFXG4iLAorCQkJICAgIGVuZ2luZS0+bmFtZSwgcmVnc1t4ICsgMV0pOwoKdG90YWw6
IDAgZXJyb3JzLCAwIHdhcm5pbmdzLCA0IGNoZWNrcywgMTM0IGxpbmVzIGNoZWNrZWQKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWls
aW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
