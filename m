Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 87E4BAC833
	for <lists+intel-gfx@lfdr.de>; Sat,  7 Sep 2019 19:35:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6E17E89873;
	Sat,  7 Sep 2019 17:34:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id DEE8489873;
 Sat,  7 Sep 2019 17:34:56 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D5F0EA0118;
 Sat,  7 Sep 2019 17:34:56 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Anshuman Gupta" <anshuman.gupta@intel.com>
Date: Sat, 07 Sep 2019 17:34:56 -0000
Message-ID: <20190907173456.17039.6481@emeril.freedesktop.org>
References: <20190907171443.16181-1-anshuman.gupta@intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20190907171443.16181-1-anshuman.gupta@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_DC3CO_Support_for_TGL_=28rev7=29?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogREMzQ08gU3VwcG9ydCBmb3IgVEdMIChyZXY3
KQpVUkwgICA6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvNjQ5MjMv
ClN0YXRlIDogd2FybmluZwoKPT0gU3VtbWFyeSA9PQoKJCBkaW0gY2hlY2twYXRjaCBvcmlnaW4v
ZHJtLXRpcApiOWI2NDkxNThmZjcgZHJtL2k5MTUvdGdsOiBBZGQgREMzQ08gcmVxdWlyZWQgcmVn
aXN0ZXIgYW5kIGJpdHMKZDc0N2YxMDA5ZDA3IGRybS9pOTE1L3RnbDogQWRkIERDM0NPIG1hc2sg
dG8gYWxsb3dlZF9kY19tYXNrIGFuZCBnZW45X2RjX21hc2sKZDcwMDMxNWQxMzc0IGRybS9pOTE1
L3RnbDogRW5hYmxlIERDM0NPIHN0YXRlIGluICJEQyBPZmYiIHBvd2VyIHdlbGwKLTo1NjogQ0hF
Q0s6VVNMRUVQX1JBTkdFOiB1c2xlZXBfcmFuZ2UgaXMgcHJlZmVycmVkIG92ZXIgdWRlbGF5OyBz
ZWUgRG9jdW1lbnRhdGlvbi90aW1lcnMvdGltZXJzLWhvd3RvLnJzdAojNTY6IEZJTEU6IGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5jOjc5NToKKwl1ZGVs
YXkoMjAwKTsKCnRvdGFsOiAwIGVycm9ycywgMCB3YXJuaW5ncywgMSBjaGVja3MsIDE3MyBsaW5l
cyBjaGVja2VkCjIwZjFmMTY5MzAzZiBkcm0vaTkxNS90Z2w6IERvIG1vZGVzZXQgdG8gZW5hYmxl
IGFuZCBjb25maWd1cmUgREMzQ08gZXhpdGxpbmUuCmYwMDY2NDA0ZWVlZCBkcm0vaTkxNS90Z2w6
IERDM0NPIFBTUjIgaGVscGVyCjZiYzdkNTdkNjgxZSBkcm0vaTkxNS90Z2w6IHN3aXRjaCBiZXR3
ZWVuIGRjM2NvIGFuZCBkYzUgYmFzZWQgb24gZGlzcGxheSBpZGxlbmVzcwpmYjU5M2RhZDBmMWEg
ZHJtL2k5MTUvdGdsOiBBZGQgREMzQ08gY291bnRlciBpbiBpOTE1X2RtY19pbmZvCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
