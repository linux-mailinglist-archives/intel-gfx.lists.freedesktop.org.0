Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FF434C422
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Jun 2019 01:36:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF2866E480;
	Wed, 19 Jun 2019 23:36:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id AD0206E480;
 Wed, 19 Jun 2019 23:36:34 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A1A9CA00A0;
 Wed, 19 Jun 2019 23:36:34 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Jos=C3=A9_Roberto_de_Souza?= <jose.souza@intel.com>
Date: Wed, 19 Jun 2019 23:36:34 -0000
Message-ID: <20190619233634.18135.18143@emeril.freedesktop.org>
References: <20190619230222.4346-1-jose.souza@intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20190619230222.4346-1-jose.souza@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_series_starting_with_=5Bv6=2C1/4=5D_drm/i915/bdw+=3A_Move_mi?=
 =?utf-8?q?sc_display_IRQ_handling_to_it_own_function?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggW3Y2LDEv
NF0gZHJtL2k5MTUvYmR3KzogTW92ZSBtaXNjIGRpc3BsYXkgSVJRIGhhbmRsaW5nIHRvIGl0IG93
biBmdW5jdGlvbgpVUkwgICA6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJp
ZXMvNjI0MTYvClN0YXRlIDogd2FybmluZwoKPT0gU3VtbWFyeSA9PQoKJCBkaW0gY2hlY2twYXRj
aCBvcmlnaW4vZHJtLXRpcAoyNjIyYTVmMjAyZTMgZHJtL2k5MTUvYmR3KzogTW92ZSBtaXNjIGRp
c3BsYXkgSVJRIGhhbmRsaW5nIHRvIGl0IG93biBmdW5jdGlvbgoxZWNmMDVhNzg2YWIgZHJtL2k5
MTU6IEFkZCBfVFJBTlMyKCkKLTozMTogV0FSTklORzpMT05HX0xJTkU6IGxpbmUgb3ZlciAxMDAg
Y2hhcmFjdGVycwojMzE6IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmg6MjU0
OgorCQkJCQkgSU5URUxfSU5GTyhkZXZfcHJpdiktPnRyYW5zX29mZnNldHNbVFJBTlNDT0RFUl9B
XSArIChyZWcpICsgXAoKdG90YWw6IDAgZXJyb3JzLCAxIHdhcm5pbmdzLCAwIGNoZWNrcywgMTMg
bGluZXMgY2hlY2tlZAo1MjMzMzEyMmMwZmIgZHJtL2k5MTUvcHNyOiBNYWtlIFBTUiByZWdpc3Rl
cnMgcmVsYXRpdmUgdG8gdHJhbnNjb2RlcnMKLTozNzU6IFdBUk5JTkc6TE9OR19MSU5FOiBsaW5l
IG92ZXIgMTAwIGNoYXJhY3RlcnMKIzM3NTogRklMRTogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9yZWcuaDo0MjM4OgorI2RlZmluZSBfUFNSX0FESih0cmFuLCByZWcpCQkJKElTX0hBU1dFTEwo
ZGV2X3ByaXYpID8gX0hTV19QU1JfQURKKHJlZykgOiBfVFJBTlMyKHRyYW4sIHJlZykpCgotOjM3
NTogQ0hFQ0s6TUFDUk9fQVJHX1JFVVNFOiBNYWNybyBhcmd1bWVudCByZXVzZSAncmVnJyAtIHBv
c3NpYmxlIHNpZGUtZWZmZWN0cz8KIzM3NTogRklMRTogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9yZWcuaDo0MjM4OgorI2RlZmluZSBfUFNSX0FESih0cmFuLCByZWcpCQkJKElTX0hBU1dFTEwo
ZGV2X3ByaXYpID8gX0hTV19QU1JfQURKKHJlZykgOiBfVFJBTlMyKHRyYW4sIHJlZykpCgotOjM5
NzogV0FSTklORzpMT05HX0xJTkVfQ09NTUVOVDogbGluZSBvdmVyIDEwMCBjaGFyYWN0ZXJzCiMz
OTc6IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmg6NDI4NzoKKyNkZWZpbmUg
RURQX1BTUl9BVVhfREFUQSh0cmFuLCBpKQkJX01NSU8oX1BTUl9BREoodHJhbiwgX1NSRF9BVVhf
REFUQV9BKSArIChpKSArIDQpIC8qIDUgcmVnaXN0ZXJzICovCgp0b3RhbDogMCBlcnJvcnMsIDIg
d2FybmluZ3MsIDEgY2hlY2tzLCAzNjYgbGluZXMgY2hlY2tlZAo0MTNjNGY1MjA2YmIgZHJtL2k5
MTU6IEFkZCB0cmFuc2NvZGVyIHJlc3RyaWN0aW9uIHRvIFBTUjIKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
