Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B3D811A142
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Dec 2019 03:19:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DAC946EA42;
	Wed, 11 Dec 2019 02:19:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 98FD86EA3F;
 Wed, 11 Dec 2019 02:19:34 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 927B2A00C7;
 Wed, 11 Dec 2019 02:19:34 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>
Date: Wed, 11 Dec 2019 02:19:34 -0000
Message-ID: <157603077459.30690.16026667778896837810@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191210103204.3564263-1-maarten.lankhorst@linux.intel.com>
In-Reply-To: <20191210103204.3564263-1-maarten.lankhorst@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBk?=
 =?utf-8?q?rm/i915/execbuf=3A_Add_support_for_parallel_execbuf_submission?=
 =?utf-8?b?LiAocmV2Mik=?=
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTUvZXhlY2J1ZjogQWRkIHN1cHBv
cnQgZm9yIHBhcmFsbGVsIGV4ZWNidWYgc3VibWlzc2lvbi4gKHJldjIpClVSTCAgIDogaHR0cHM6
Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy83MDY4MC8KU3RhdGUgOiBmYWlsdXJl
Cgo9PSBTdW1tYXJ5ID09CgpDQUxMICAgIHNjcmlwdHMvY2hlY2tzeXNjYWxscy5zaAogIENBTEwg
ICAgc2NyaXB0cy9hdG9taWMvY2hlY2stYXRvbWljcy5zaAogIERFU0NFTkQgIG9ianRvb2wKICBD
SEsgICAgIGluY2x1ZGUvZ2VuZXJhdGVkL2NvbXBpbGUuaAogIEFSICAgICAgZHJpdmVycy9ncHUv
ZHJtL2k5MTUvYnVpbHQtaW4uYQogIENDIFtNXSAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5
MTVfZ2VtX2V4ZWNidWZmZXIubwpkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fZXhl
Y2J1ZmZlci5jOiBJbiBmdW5jdGlvbiDigJhpOTE1X2dlbV9kb19leGVjYnVmZmVy4oCZOgpkcml2
ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fZXhlY2J1ZmZlci5jOjI3MTU6MTogZXJyb3I6
IGxhYmVsIOKAmGVycl91bnBpbuKAmSBkZWZpbmVkIGJ1dCBub3QgdXNlZCBbLVdlcnJvcj11bnVz
ZWQtbGFiZWxdCiBlcnJfdW5waW46CiBefn5+fn5+fn4KZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2Vt
L2k5MTVfZ2VtX2V4ZWNidWZmZXIuYzoyNTk2OjM6IGVycm9yOiBsYWJlbCDigJhlcnJfY29udGV4
dOKAmSB1c2VkIGJ1dCBub3QgZGVmaW5lZAogICBnb3RvIGVycl9jb250ZXh0OwogICBefn5+CmNj
MTogYWxsIHdhcm5pbmdzIGJlaW5nIHRyZWF0ZWQgYXMgZXJyb3JzCnNjcmlwdHMvTWFrZWZpbGUu
YnVpbGQ6MjY1OiByZWNpcGUgZm9yIHRhcmdldCAnZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5
MTVfZ2VtX2V4ZWNidWZmZXIubycgZmFpbGVkCm1ha2VbNF06ICoqKiBbZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ2VtL2k5MTVfZ2VtX2V4ZWNidWZmZXIub10gRXJyb3IgMQpzY3JpcHRzL01ha2VmaWxl
LmJ1aWxkOjUwMzogcmVjaXBlIGZvciB0YXJnZXQgJ2RyaXZlcnMvZ3B1L2RybS9pOTE1JyBmYWls
ZWQKbWFrZVszXTogKioqIFtkcml2ZXJzL2dwdS9kcm0vaTkxNV0gRXJyb3IgMgpzY3JpcHRzL01h
a2VmaWxlLmJ1aWxkOjUwMzogcmVjaXBlIGZvciB0YXJnZXQgJ2RyaXZlcnMvZ3B1L2RybScgZmFp
bGVkCm1ha2VbMl06ICoqKiBbZHJpdmVycy9ncHUvZHJtXSBFcnJvciAyCnNjcmlwdHMvTWFrZWZp
bGUuYnVpbGQ6NTAzOiByZWNpcGUgZm9yIHRhcmdldCAnZHJpdmVycy9ncHUnIGZhaWxlZAptYWtl
WzFdOiAqKiogW2RyaXZlcnMvZ3B1XSBFcnJvciAyCk1ha2VmaWxlOjE2OTI6IHJlY2lwZSBmb3Ig
dGFyZ2V0ICdkcml2ZXJzJyBmYWlsZWQKbWFrZTogKioqIFtkcml2ZXJzXSBFcnJvciAyCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
