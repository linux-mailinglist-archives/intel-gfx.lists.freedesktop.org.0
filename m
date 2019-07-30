Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AFA1F7B641
	for <lists+intel-gfx@lfdr.de>; Wed, 31 Jul 2019 01:32:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9042E6E640;
	Tue, 30 Jul 2019 23:31:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 242EB6E640;
 Tue, 30 Jul 2019 23:31:57 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 1BB31A00FA;
 Tue, 30 Jul 2019 23:31:57 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Jos=C3=A9_Roberto_de_Souza?= <jose.souza@intel.com>
Date: Tue, 30 Jul 2019 23:31:57 -0000
Message-ID: <20190730233157.20697.252@emeril.freedesktop.org>
References: <20190730224753.14907-1-jose.souza@intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20190730224753.14907-1-jose.souza@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_series_starting_with_=5Bv7=2C1/4=5D_drm/i915/bdw+=3A_Move_mi?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggW3Y3LDEv
NF0gZHJtL2k5MTUvYmR3KzogTW92ZSBtaXNjIGRpc3BsYXkgSVJRIGhhbmRsaW5nIHRvIGl0IG93
biBmdW5jdGlvbgpVUkwgICA6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJp
ZXMvNjQ0NTcvClN0YXRlIDogd2FybmluZwoKPT0gU3VtbWFyeSA9PQoKJCBkaW0gY2hlY2twYXRj
aCBvcmlnaW4vZHJtLXRpcAo1YTNmOWNjYjNmYzkgZHJtL2k5MTUvYmR3KzogTW92ZSBtaXNjIGRp
c3BsYXkgSVJRIGhhbmRsaW5nIHRvIGl0IG93biBmdW5jdGlvbgphODAxOGUzZmY5NTkgZHJtL2k5
MTU6IEFkZCBfVFJBTlMyKCkKLTozMTogV0FSTklORzpMT05HX0xJTkU6IGxpbmUgb3ZlciAxMDAg
Y2hhcmFjdGVycwojMzE6IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmg6MjU1
OgorCQkJCQkgSU5URUxfSU5GTyhkZXZfcHJpdiktPnRyYW5zX29mZnNldHNbVFJBTlNDT0RFUl9B
XSArIChyZWcpICsgXAoKdG90YWw6IDAgZXJyb3JzLCAxIHdhcm5pbmdzLCAwIGNoZWNrcywgMTMg
bGluZXMgY2hlY2tlZAowZmM5NjExNjMyZWIgZHJtL2k5MTUvcHNyOiBNYWtlIFBTUiByZWdpc3Rl
cnMgcmVsYXRpdmUgdG8gdHJhbnNjb2RlcnMKLTo0Mjc6IFdBUk5JTkc6TE9OR19MSU5FX0NPTU1F
TlQ6IGxpbmUgb3ZlciAxMDAgY2hhcmFjdGVycwojNDI3OiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X3JlZy5oOjQzMDg6CisjZGVmaW5lIEVEUF9QU1JfQVVYX0RBVEEodHJhbiwgaSkJ
CV9NTUlPKF9QU1JfQURKKHRyYW4sIF9TUkRfQVVYX0RBVEFfQSkgKyAoaSkgKyA0KSAvKiA1IHJl
Z2lzdGVycyAqLwoKdG90YWw6IDAgZXJyb3JzLCAxIHdhcm5pbmdzLCAwIGNoZWNrcywgMzkzIGxp
bmVzIGNoZWNrZWQKMmJiMjc5M2M1MGVjIGRybS9pOTE1OiBBZGQgdHJhbnNjb2RlciByZXN0cmlj
dGlvbiB0byBQU1IyCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
Zng=
