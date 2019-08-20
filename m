Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C2E6E956EB
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Aug 2019 07:53:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F3D16E5D8;
	Tue, 20 Aug 2019 05:53:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 09C5C6E5D8;
 Tue, 20 Aug 2019 05:53:06 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0346CA0087;
 Tue, 20 Aug 2019 05:53:06 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Xiong Zhang" <xiong.y.zhang@intel.com>
Date: Tue, 20 Aug 2019 05:53:06 -0000
Message-ID: <20190820055306.21820.68953@emeril.freedesktop.org>
References: <1566279978-9659-1-git-send-email-xiong.y.zhang@intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <1566279978-9659-1-git-send-email-xiong.y.zhang@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_series_starting_with_=5B1/2=5D_drm/i915=3A_Don=27t_deballoon?=
 =?utf-8?q?_unused_ggtt_drm=5Fmm=5Fnode_in_linux_guest?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggWzEvMl0g
ZHJtL2k5MTU6IERvbid0IGRlYmFsbG9vbiB1bnVzZWQgZ2d0dCBkcm1fbW1fbm9kZSBpbiBsaW51
eCBndWVzdApVUkwgICA6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMv
NjU0NTAvClN0YXRlIDogd2FybmluZwoKPT0gU3VtbWFyeSA9PQoKJCBkaW0gY2hlY2twYXRjaCBv
cmlnaW4vZHJtLXRpcAo3ZDA1OWNmYjVlNWMgZHJtL2k5MTU6IERvbid0IGRlYmFsbG9vbiB1bnVz
ZWQgZ2d0dCBkcm1fbW1fbm9kZSBpbiBsaW51eCBndWVzdApiMTkzNjJkZjUyMzAgZHJtL2k5MTU6
IE1vdmUgdmdwdSBiYWxsb29uIGluZm8gaW50byBpOTE1X3ZpcnR1YWxfZ3B1IHN0cnVjdAotOjk5
OiBDSEVDSzpQQVJFTlRIRVNJU19BTElHTk1FTlQ6IEFsaWdubWVudCBzaG91bGQgbWF0Y2ggb3Bl
biBwYXJlbnRoZXNpcwojOTk6IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfdmdwdS5j
OjI1MToKKwkJcmV0ID0gdmd0X2JhbGxvb25fc3BhY2UoZ2d0dCwKKwkJCSZibF9pbmZvLT5zcGFj
ZVtWR1BVX1VOTUFQUEFCTEVfQkFMTE9PTl9MT1ddLAoKLToxMTA6IENIRUNLOlBBUkVOVEhFU0lT
X0FMSUdOTUVOVDogQWxpZ25tZW50IHNob3VsZCBtYXRjaCBvcGVuIHBhcmVudGhlc2lzCiMxMTA6
IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfdmdwdS5jOjI2MDoKKwkJcmV0ID0gdmd0
X2JhbGxvb25fc3BhY2UoZ2d0dCwKKwkJCSZibF9pbmZvLT5zcGFjZVtWR1BVX1VOTUFQUEFCTEVf
QkFMTE9PTl9ISUdIXSwKCi06MTIxOiBDSEVDSzpQQVJFTlRIRVNJU19BTElHTk1FTlQ6IEFsaWdu
bWVudCBzaG91bGQgbWF0Y2ggb3BlbiBwYXJlbnRoZXNpcwojMTIxOiBGSUxFOiBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X3ZncHUuYzoyNjk6CisJCXJldCA9IHZndF9iYWxsb29uX3NwYWNlKGdn
dHQsCisJCQkmYmxfaW5mby0+c3BhY2VbVkdQVV9NQVBQQUJMRV9CQUxMT09OX0xPV10sCgotOjEz
MjogQ0hFQ0s6UEFSRU5USEVTSVNfQUxJR05NRU5UOiBBbGlnbm1lbnQgc2hvdWxkIG1hdGNoIG9w
ZW4gcGFyZW50aGVzaXMKIzEzMjogRklMRTogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV92Z3B1
LmM6Mjc4OgorCQlyZXQgPSB2Z3RfYmFsbG9vbl9zcGFjZShnZ3R0LAorCQkJJmJsX2luZm8tPnNw
YWNlW1ZHUFVfTUFQUEFCTEVfQkFMTE9PTl9ISUdIXSwKCi06MTQzOiBDSEVDSzpQQVJFTlRIRVNJ
U19BTElHTk1FTlQ6IEFsaWdubWVudCBzaG91bGQgbWF0Y2ggb3BlbiBwYXJlbnRoZXNpcwojMTQz
OiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3ZncHUuYzoyOTA6CisJdmd0X2RlYmFs
bG9vbl9zcGFjZShnZ3R0LAorCQkmYmxfaW5mby0+c3BhY2VbVkdQVV9NQVBQQUJMRV9CQUxMT09O
X0xPV10pOwoKLToxNDc6IENIRUNLOlBBUkVOVEhFU0lTX0FMSUdOTUVOVDogQWxpZ25tZW50IHNo
b3VsZCBtYXRjaCBvcGVuIHBhcmVudGhlc2lzCiMxNDc6IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfdmdwdS5jOjI5MzoKKwl2Z3RfZGViYWxsb29uX3NwYWNlKGdndHQsCisJCSZibF9p
bmZvLT5zcGFjZVtWR1BVX1VOTUFQUEFCTEVfQkFMTE9PTl9ISUdIXSk7CgotOjE1MTogQ0hFQ0s6
UEFSRU5USEVTSVNfQUxJR05NRU5UOiBBbGlnbm1lbnQgc2hvdWxkIG1hdGNoIG9wZW4gcGFyZW50
aGVzaXMKIzE1MTogRklMRTogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV92Z3B1LmM6Mjk2Ogor
CXZndF9kZWJhbGxvb25fc3BhY2UoZ2d0dCwKKwkJJmJsX2luZm8tPnNwYWNlW1ZHUFVfVU5NQVBQ
QUJMRV9CQUxMT09OX0xPV10pOwoKdG90YWw6IDAgZXJyb3JzLCAwIHdhcm5pbmdzLCA3IGNoZWNr
cywgMTI3IGxpbmVzIGNoZWNrZWQKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeA==
