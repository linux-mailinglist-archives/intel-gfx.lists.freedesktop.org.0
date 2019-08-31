Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 03721A42C7
	for <lists+intel-gfx@lfdr.de>; Sat, 31 Aug 2019 08:22:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AFCC96E108;
	Sat, 31 Aug 2019 06:22:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id CCFD36E108;
 Sat, 31 Aug 2019 06:22:26 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9F969A41FB;
 Sat, 31 Aug 2019 06:22:26 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Anshuman Gupta" <anshuman.gupta@intel.com>
Date: Sat, 31 Aug 2019 06:22:26 -0000
Message-ID: <20190831062226.14751.82706@emeril.freedesktop.org>
References: <20190830174433.22227-1-anshuman.gupta@intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20190830174433.22227-1-anshuman.gupta@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_DC3CO_Support_for_TGL_=28rev5=29?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogREMzQ08gU3VwcG9ydCBmb3IgVEdMIChyZXY1
KQpVUkwgICA6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvNjQ5MjMv
ClN0YXRlIDogd2FybmluZwoKPT0gU3VtbWFyeSA9PQoKJCBkaW0gY2hlY2twYXRjaCBvcmlnaW4v
ZHJtLXRpcApiMzA2NWU5ZTk2YzMgZHJtL2k5MTUvdGdsOiBBZGQgREMzQ08gcmVxdWlyZWQgcmVn
aXN0ZXIgYW5kIGJpdHMKNzc3MzMwYmM2ZjQ5IGRybS9pOTE1L3RnbDogQWRkIERDM0NPIG1hc2sg
dG8gYWxsb3dlZF9kY19tYXNrIGFuZCBnZW45X2RjX21hc2sKZDU5ZDRkNWYyYzE1IGRybS9pOTE1
L3RnbDogRW5hYmxlIERDM0NPIHN0YXRlIGluICJEQyBPZmYiIHBvd2VyIHdlbGwKLTo1NzogQ0hF
Q0s6VVNMRUVQX1JBTkdFOiB1c2xlZXBfcmFuZ2UgaXMgcHJlZmVycmVkIG92ZXIgdWRlbGF5OyBz
ZWUgRG9jdW1lbnRhdGlvbi90aW1lcnMvdGltZXJzLWhvd3RvLnJzdAojNTc6IEZJTEU6IGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5jOjc5NToKKwl1ZGVs
YXkoMjAwKTsKCnRvdGFsOiAwIGVycm9ycywgMCB3YXJuaW5ncywgMSBjaGVja3MsIDE2NyBsaW5l
cyBjaGVja2VkCmJmZmQxNTQ0NzZiOSBkcm0vaTkxNS90Z2w6IEFkZCBoZWxwZXIgZnVuY3Rpb24g
Zm9yIERDM0NPIGV4aXRsaW5lLgo4Y2QxNjhhNGM5Y2MgZHJtL2k5MTUvdGdsOiBEQzNDTyBQU1Iy
IGhlbHBlcgplZGJlMGExMWZkYTIgZHJtL2k5MTUvdGdsOiBzd2l0Y2ggYmV0d2VlbiBkYzNjbyBh
bmQgZGM1IGJhc2VkIG9uIGRpc3BsYXkgaWRsZW5lc3MKZDI1ZDFkNWZmNDc4IGRybS9pOTE1L3Rn
bDogQWRkIERDM0NPIGNvdW50ZXIgaW4gaTkxNV9kbWNfaW5mbwoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
