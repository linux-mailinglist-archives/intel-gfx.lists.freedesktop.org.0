Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CB12997AD1
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Aug 2019 15:32:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD3A86E379;
	Wed, 21 Aug 2019 13:32:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 115F16E33F
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Aug 2019 13:32:24 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 21 Aug 2019 15:32:11 +0200
Message-Id: <20190821133221.29456-1-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 00/10] drm/i915: Bigjoiner preparations.
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

U29tZSBvZiB0aGUgcGF0Y2hlcyB0aGF0IHN1cHBvcnQgdGhlIGJpZyBqb2luZXIgY29uZmlndXJh
dGlvbiwgd2l0aG91dAphY3R1YWxseSBlbmFibGluZyBhbnl0aGluZyBiaWdqb2luZXIgc3BlY2lm
aWMgeWV0LgoKQmlnIEpvaW5lciByZXF1aXJlcyB1cyB0byBlbmFibGUgYW4gYWRkaXRpb25hbCBw
aXBlLCB3aGljaCBkcml2ZXMgdGhlCnNhbWUgcG9ydC4gVGhlIG1hc3RlciBwaXBlIGRyaXZlcyB0
aGUgbGVmdCBoYWxmIG9mIHRoZSBkaXNwbGF5LCB0aGUKc2xhdmUgdGhlIHJpZ2h0IGhhbGYuCgpU
aGlzIGlzIGhhbmRsZWQgYnkgc3BsaXR0aW5nIGNydGNfc3RhdGUgaW50byBhIHVhcGkgYW5kIGh3
IHN0YXRlLiBUaGUKdWFwaSBzdGF0ZSBpcyB0aGUgc3RhdGUgZnJvbSBkcm0sIHdoaWxlIHRoZSBo
dyBzdGF0ZSBjb250YWlucyB0aGUKYWN0dWFsIHN0YXRlIG9mIHRoZSBoYXJkd2FyZS4KCk1hYXJ0
ZW4gTGFua2hvcnN0ICgxMCk6CiAgZHJtL2k5MTUvZHA6IEZpeCBkc2MgYnBwIGNhbGN1bGF0aW9u
cy4KICBkcm0vaTkxNTogUHJlcGFyZSB0byBzcGxpdCBjcnRjIHN0YXRlIGluIHVhcGkgYW5kIGh3
IHN0YXRlCiAgZHJtL2k5MTU6IEhhbmRsZSBhIGZldyBtb3JlIGNhc2VzIGZvciBody9zdyBzcGxp
dAogIGRybS9pOTE1OiBDb21wbGV0ZSBzdy9odyBzcGxpdAogIGRybS9pOTE1OiBLaWxsIG9mZiBp
c19wbGFuYXJfeXV2X2Zvcm1hdAogIGRybS9pOTE1OiBHZXQgcmlkIG9mIGNydGNfc3RhdGUtPmZi
X2NoYW5nZWQKICBkcm0vaTkxNTogUmVtb3ZlIGJlZ2luL2ZpbmlzaF9jcnRjX2NvbW1pdC4KICBk
cm0vaTkxNTogRG8gbm90IGFkZCBhbGwgcGxhbmVzIHdoZW4gY2hlY2tpbmcgc2NhbGVycyBvbiBn
bGsrCiAgZHJtL2k5MTU6IEFkZCBkZWJ1Z2ZzIGVudHJpZXMgZm9yIHJlYWRpbmcgb3V0IERQQ0Qg
RFNDIGFuZCBGRUMuCiAgZHJtL2k5MTU6IE1vdmUgRkVDIGVuYWJsZSB0aW1lb3V0IHdhaXQgdG8g
ZW5hYmxlX2RkaV9kcAoKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaWNsX2RzaS5jICAg
ICAgICB8ICAxOCArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hdG9taWMu
YyAgIHwgIDY2ICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2F0b21pYy5o
ICAgfCAgIDIgKwogLi4uL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2F0b21pY19wbGFuZS5j
IHwgICA4ICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2F1ZGlvLmMgICAg
fCAgMTIgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYncuYyAgICAgICB8
ICAgNCArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jZGNsay5jICAgIHwg
ICA4ICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NvbG9yLmMgICAgfCAx
NTAgKystLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jcnQuYyAgICAgIHwg
IDI0ICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jICAgICAgfCAg
MzkgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jICB8IDcy
NCArKysrKysrKystLS0tLS0tLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGlzcGxheS5oICB8ICAgNCArLQogLi4uL2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90
eXBlcy5oICAgIHwgIDMxICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rw
LmMgICAgICAgfCAgNTggKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAu
aCAgICAgICB8ICAgNCArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9t
c3QuYyAgIHwgICA4ICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwaW9f
cGh5LmMgfCAgMTQgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBsbF9t
Z3IuYyB8ICAyMCArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kdm8uYyAg
ICAgIHwgIDE0ICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5jICAg
ICAgfCAgIDIgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaGRtaS5jICAg
ICB8ICA2MiArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9sc3Bjb24uYyAg
IHwgICA0ICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2x2ZHMuYyAgICAg
fCAgMTIgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcGFuZWwuYyAgICB8
ICAxNCArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9waXBlX2NyYy5jIHwg
ICA2ICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jICAgICAgfCAg
MTQgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfc2R2by5jICAgICB8ICAy
MiArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9zcHJpdGUuYyAgIHwgIDQ0
ICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Nwcml0ZS5oICAgfCAgIDEg
LQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF90di5jICAgICAgIHwgICA4ICst
CiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Zkc2MuYyAgICAgfCAgMTIgKy0K
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvdmx2X2RzaS5jICAgICAgICB8ICAyMCArLQog
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kZWJ1Z2ZzLmMgICAgICAgICAgIHwgIDE2ICstCiBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jICAgICAgICAgICAgICAgfCAxOTIgKysrLS0K
IDM0IGZpbGVzIGNoYW5nZWQsIDg1OCBpbnNlcnRpb25zKCspLCA3NzkgZGVsZXRpb25zKC0pCgot
LSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
