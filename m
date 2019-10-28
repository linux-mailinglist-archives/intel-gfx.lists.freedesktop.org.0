Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BAB9E72EC
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Oct 2019 14:56:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE7DD6E0FD;
	Mon, 28 Oct 2019 13:56:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 94B0A6E0FD;
 Mon, 28 Oct 2019 13:56:12 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 8E44AA0134;
 Mon, 28 Oct 2019 13:56:12 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Date: Mon, 28 Oct 2019 13:56:12 -0000
Message-ID: <20191028135612.26857.20587@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191028110031.29616-1-imre.deak@intel.com>
In-Reply-To: <20191028110031.29616-1-imre.deak@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_drm/i915=3A_Avoid_HPD_poll_detect_triggering_a_new_detect_cy?=
 =?utf-8?q?cle?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTU6IEF2b2lkIEhQRCBwb2xsIGRl
dGVjdCB0cmlnZ2VyaW5nIGEgbmV3IGRldGVjdCBjeWNsZQpVUkwgICA6IGh0dHBzOi8vcGF0Y2h3
b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvNjg2NDQvClN0YXRlIDogd2FybmluZwoKPT0gU3Vt
bWFyeSA9PQoKJCBkaW0gY2hlY2twYXRjaCBvcmlnaW4vZHJtLXRpcAo0ZTgwYTIxMmIzODAgZHJt
L2k5MTU6IEF2b2lkIEhQRCBwb2xsIGRldGVjdCB0cmlnZ2VyaW5nIGEgbmV3IGRldGVjdCBjeWNs
ZQotOjI5OiBFUlJPUjpCQURfU0lHTl9PRkY6IFVucmVjb2duaXplZCBlbWFpbCBhZGRyZXNzOiAn
d2FuZ3FyIDwgd3FyLnByZ0BnbWFpbC5jb20+JwojMjk6IApSZXBvcnRlZC1hbmQtdGVzdGVkLWJ5
OiB3YW5ncXIgPCB3cXIucHJnQGdtYWlsLmNvbT4KCi06MzE6IEVSUk9SOkJBRF9TSUdOX09GRjog
VW5yZWNvZ25pemVkIGVtYWlsIGFkZHJlc3M6ICd3YW5ncXIgPCB3cXIucHJnQGdtYWlsLmNvbT4n
CiMzMTogCkNjOiB3YW5ncXIgPCB3cXIucHJnQGdtYWlsLmNvbT4KCnRvdGFsOiAyIGVycm9ycywg
MCB3YXJuaW5ncywgMCBjaGVja3MsIDgyIGxpbmVzIGNoZWNrZWQKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
