Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 14DDAB82F8
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Sep 2019 22:55:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D59D6FBC2;
	Thu, 19 Sep 2019 20:55:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id AFE3A6FBC2;
 Thu, 19 Sep 2019 20:55:17 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id AB008A0096;
 Thu, 19 Sep 2019 20:55:17 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Swati Sharma" <swati2.sharma@intel.com>
Date: Thu, 19 Sep 2019 20:55:17 -0000
Message-ID: <20190919205517.23915.17178@emeril.freedesktop.org>
References: <1568917040-3365-1-git-send-email-swati2.sharma@intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <1568917040-3365-1-git-send-email-swati2.sharma@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_adding_gamma_state_checker_for_icl+_platforms_=28rev3=29?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogYWRkaW5nIGdhbW1hIHN0YXRlIGNoZWNrZXIg
Zm9yIGljbCsgcGxhdGZvcm1zIChyZXYzKQpVUkwgICA6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVk
ZXNrdG9wLm9yZy9zZXJpZXMvNjY4MTEvClN0YXRlIDogd2FybmluZwoKPT0gU3VtbWFyeSA9PQoK
JCBkaW0gY2hlY2twYXRjaCBvcmlnaW4vZHJtLXRpcApmMjJkMDNkN2UwMjIgZHJtL2k5MTUvY29s
b3I6IEZpeCBmb3JtYXR0aW5nIGlzc3Vlcwo5ZjM2ZGE1NzJjMzMgZHJtL2k5MTUvY29sb3I6IEV4
dHJhY3QgaWNsX3JlYWRfbHV0cygpCi06MjA6IFdBUk5JTkc6VFlQT19TUEVMTElORzogJ292ZXJy
aWRlZCcgbWF5IGJlIG1pc3NwZWxsZWQgLSBwZXJoYXBzICdvdmVycmlkZGVuJz8KIzIwOiAKICAg
aW5zdGVhZCBvZiAwLCBzaW5jZSBhY3R1YWwgaC93IHZhbHVlcyBzdGFydGVkIGdldHRpbmcgb3Zl
cnJpZGVkLgoKLToxMDU6IENIRUNLOkJSQUNFUzogQmxhbmsgbGluZXMgYXJlbid0IG5lY2Vzc2Fy
eSBiZWZvcmUgYSBjbG9zZSBicmFjZSAnfScKIzEwNTogRklMRTogZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9jb2xvci5jOjE0NTE6CisKK30KCi06Mjk0OiBXQVJOSU5HOkxPTkdf
TElORTogbGluZSBvdmVyIDEwMCBjaGFyYWN0ZXJzCiMyOTQ6IEZJTEU6IGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfY29sb3IuYzoxODkxOgorCQlibG9iX2RhdGFbaSAqIDhdLmdy
ZWVuID0gUkVHX0ZJRUxEX0dFVChQQUxfUFJFQ19NVUxUSV9TRUdfR1JFRU5fVURXX01BU0ssIHZh
bDIpIDw8IDYgfAoKLTozMDQ6IFdBUk5JTkc6TE9OR19MSU5FOiBsaW5lIG92ZXIgMTAwIGNoYXJh
Y3RlcnMKIzMwNDogRklMRTogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jb2xv
ci5jOjE5MDE6CisJCWJsb2JfZGF0YVtpICogOCAqIDEyOF0ucmVkID0gUkVHX0ZJRUxEX0dFVChQ
QUxfUFJFQ19NVUxUSV9TRUdfUkVEX1VEV19NQVNLLCB2YWwyKSA8PCA2IHwKCi06MzA2OiBXQVJO
SU5HOkxPTkdfTElORTogbGluZSBvdmVyIDEwMCBjaGFyYWN0ZXJzCiMzMDY6IEZJTEU6IGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY29sb3IuYzoxOTAzOgorCQlibG9iX2RhdGFb
aSAqIDggKiAxMjhdLmdyZWVuID0gUkVHX0ZJRUxEX0dFVChQQUxfUFJFQ19NVUxUSV9TRUdfR1JF
RU5fVURXX01BU0ssIHZhbDIpIDw8IDYgfAoKLTozMDc6IFdBUk5JTkc6TE9OR19MSU5FOiBsaW5l
IG92ZXIgMTAwIGNoYXJhY3RlcnMKIzMwNzogRklMRTogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9jb2xvci5jOjE5MDQ6CisJCQkJCSAgICAgICBSRUdfRklFTERfR0VUKFBBTF9Q
UkVDX01VTFRJX1NFR19HUkVFTl9MRFdfTUFTSywgdmFsMSk7CgotOjMwODogV0FSTklORzpMT05H
X0xJTkU6IGxpbmUgb3ZlciAxMDAgY2hhcmFjdGVycwojMzA4OiBGSUxFOiBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2NvbG9yLmM6MTkwNToKKwkJYmxvYl9kYXRhW2kgKiA4ICog
MTI4XS5ibHVlID0gUkVHX0ZJRUxEX0dFVChQQUxfUFJFQ19NVUxUSV9TRUdfQkxVRV9VRFdfTUFT
SywgdmFsMikgPDwgNiB8Cgp0b3RhbDogMCBlcnJvcnMsIDYgd2FybmluZ3MsIDEgY2hlY2tzLCAz
MTIgbGluZXMgY2hlY2tlZAo5ZjFlYjdlOThhYjEgRk9SX1RFU1RJTkdfT05MWTogUHJpbnQgcmdi
IHZhbHVlcyBvZiBodyBhbmQgc3cgYmxvYnMKLToxODogV0FSTklORzpMT05HX0xJTkU6IGxpbmUg
b3ZlciAxMDAgY2hhcmFjdGVycwojMTg6IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfY29sb3IuYzoxNDc4OgorCURSTV9ERUJVR19LTVMoImh3X2x1dC0+cmVkPTB4JXgg
c3dfbHV0LT5yZWQ9MHgleCBod19sdXQtPmJsdWU9MHgleCBzd19sdXQtPmJsdWU9MHgleCBod19s
dXQtPmdyZWVuPTB4JXggc3dfbHV0LT5ncmVlbj0weCV4IiwgbHV0Mi0+cmVkLCBsdXQxLT5yZWQs
IGx1dDItPmJsdWUsIGx1dDEtPmJsdWUsIGx1dDItPmdyZWVuLCBsdXQxLT5ncmVlbik7Cgp0b3Rh
bDogMCBlcnJvcnMsIDEgd2FybmluZ3MsIDAgY2hlY2tzLCA4IGxpbmVzIGNoZWNrZWQKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWls
aW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
