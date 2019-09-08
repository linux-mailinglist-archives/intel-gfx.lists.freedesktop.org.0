Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 78CD2ACA98
	for <lists+intel-gfx@lfdr.de>; Sun,  8 Sep 2019 06:23:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 44DD28918E;
	Sun,  8 Sep 2019 04:23:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id A1C4B89167;
 Sun,  8 Sep 2019 04:23:21 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9A59AA0088;
 Sun,  8 Sep 2019 04:23:21 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Roper" <matthew.d.roper@intel.com>
Date: Sun, 08 Sep 2019 04:23:21 -0000
Message-ID: <20190908042321.17037.86952@emeril.freedesktop.org>
References: <20190907002143.22591-1-matthew.d.roper@intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20190907002143.22591-1-matthew.d.roper@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_cdclk_consolidation_and_rework_for_BXT-TGL_=28rev3=29?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogY2RjbGsgY29uc29saWRhdGlvbiBhbmQgcmV3
b3JrIGZvciBCWFQtVEdMIChyZXYzKQpVUkwgICA6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNr
dG9wLm9yZy9zZXJpZXMvNjYzNjUvClN0YXRlIDogd2FybmluZwoKPT0gU3VtbWFyeSA9PQoKJCBk
aW0gY2hlY2twYXRjaCBvcmlnaW4vZHJtLXRpcAoyNzUxMWIxYTNmZmEgZHJtL2k5MTU6IENvbnNv
bGlkYXRlIGJ4dC9jbmwvaWNsIGNkY2xrIHJlYWRvdXQKLTo3MjogQ0hFQ0s6Q0FNRUxDQVNFOiBB
dm9pZCBDYW1lbENhc2U6IDxDTkxfRFNTTV9DRENMS19QTExfUkVGQ0xLXzI0TUh6PgojNzI6IEZJ
TEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY2RjbGsuYzoxMjcyOgorCWlm
IChJOTE1X1JFQUQoU0tMX0RTU00pICYgQ05MX0RTU01fQ0RDTEtfUExMX1JFRkNMS18yNE1IeikK
CnRvdGFsOiAwIGVycm9ycywgMCB3YXJuaW5ncywgMSBjaGVja3MsIDQxMiBsaW5lcyBjaGVja2Vk
CmRjN2JhYTQ2ODZhZCBkcm0vaTkxNTogVXNlIGxpdGVyYWwgcmVwcmVzZW50YXRpb24gb2YgY2Rj
bGsgdGFibGVzCjkzOTkxY2I5MTc2YiBkcm0vaTkxNTogQ29tYmluZSBieHRfc2V0X2NkY2xrIGFu
ZCBjbmxfc2V0X2NkY2xrCjMzOWExMmMzZWUwNiBkcm0vaTkxNTogS2lsbCBjbmxfc2FuaXRpemVf
Y2RjbGsoKQo2ZWQzZmQyNmQ0NmEgZHJtL2k5MTU6IENvbnNvbGlkYXRlIHtieHQsIGNubCwgaWNs
fV91bmluaXRfY2RjbGsKNjE5ODYwYzI4MmM1IGRybS9pOTE1OiBBZGQgY2FsY192b2x0YWdlX2xl
dmVsIGRpc3BsYXkgdmZ1bmMKMzEyOTFiYmE4NjVkIGRybS9pOTE1OiBFbmhhbmNlIGNkY2xrIHNh
bml0aXphdGlvbgphMDkxNTE2ODlmOWQgZHJtL2k5MTU6IENvbnNvbGlkYXRlIHtieHQsIGNubCwg
aWNsfV9pbml0X2NkY2xrCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZng=
