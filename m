Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3995D5CDD8
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Jul 2019 12:46:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B93789ABA;
	Tue,  2 Jul 2019 10:46:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8E42289ABA;
 Tue,  2 Jul 2019 10:46:48 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 84CA6A0075;
 Tue,  2 Jul 2019 10:46:48 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tvrtko Ursulin" <tvrtko.ursulin@linux.intel.com>
Date: Tue, 02 Jul 2019 10:46:48 -0000
Message-ID: <20190702104648.28693.21339@emeril.freedesktop.org>
References: <20190702102313.9333-1-tvrtko.ursulin@linux.intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20190702102313.9333-1-tvrtko.ursulin@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_More_mmio_and_intel=5Fgt_cleanups_and_refactorings?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogTW9yZSBtbWlvIGFuZCBpbnRlbF9ndCBjbGVh
bnVwcyBhbmQgcmVmYWN0b3JpbmdzClVSTCAgIDogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0
b3Aub3JnL3Nlcmllcy82MzA2My8KU3RhdGUgOiB3YXJuaW5nCgo9PSBTdW1tYXJ5ID09CgokIGRp
bSBjaGVja3BhdGNoIG9yaWdpbi9kcm0tdGlwCmE1OTM3MGFkM2NhOCBkcm0vaTkxNTogUmV3b3Jr
IHNvbWUgaW50ZXJydXB0IGhhbmRsaW5nIGZ1bmN0aW9ucyB0byB0YWtlIGludGVsX2d0Ci06MTI6
IFdBUk5JTkc6QkFEX1NJR05fT0ZGOiBOb24tc3RhbmRhcmQgc2lnbmF0dXJlOiBDby1hdXRob3Jl
ZC1ieToKIzEyOiAKQ28tYXV0aG9yZWQtYnk6IFBhdWxvIFphbm9uaSA8cGF1bG8uci56YW5vbmlA
aW50ZWwuY29tPgoKdG90YWw6IDAgZXJyb3JzLCAxIHdhcm5pbmdzLCAwIGNoZWNrcywgMjY5IGxp
bmVzIGNoZWNrZWQKN2NhMjUxNTM3NTI5IGRybS9pOTE1OiBSZW1vdmUgc29tZSBsZWdhY3kgbW1p
byBhY2Nlc3NvcnMgZnJvbSBpbnRlcnJ1cHQgaGFuZGxpbmcKLToxMDogV0FSTklORzpCQURfU0lH
Tl9PRkY6IE5vbi1zdGFuZGFyZCBzaWduYXR1cmU6IENvLWF1dGhvcmVkLWJ5OgojMTA6IApDby1h
dXRob3JlZC1ieTogUGF1bG8gWmFub25pIDxwYXVsby5yLnphbm9uaUBpbnRlbC5jb20+Cgp0b3Rh
bDogMCBlcnJvcnMsIDEgd2FybmluZ3MsIDAgY2hlY2tzLCAxMzYgbGluZXMgY2hlY2tlZAozNTlh
MTgxMzk4ZTQgZHJtL2k5MTU6IE1vdmUgZGV2X3ByaXYtPnBtX2l7bSwgZX1yIGludG8gaW50ZWxf
Z3QKLTo5OiBXQVJOSU5HOkJBRF9TSUdOX09GRjogTm9uLXN0YW5kYXJkIHNpZ25hdHVyZTogQ28t
YXV0aG9yZWQtYnk6CiM5OiAKQ28tYXV0aG9yZWQtYnk6IFBhdWxvIFphbm9uaSA8cGF1bG8uci56
YW5vbmlAaW50ZWwuY29tPgoKdG90YWw6IDAgZXJyb3JzLCAxIHdhcm5pbmdzLCAwIGNoZWNrcywg
MzQyIGxpbmVzIGNoZWNrZWQKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeA==
