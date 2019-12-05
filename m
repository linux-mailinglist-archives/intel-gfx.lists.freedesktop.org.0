Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C1D91149DF
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Dec 2019 00:26:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 354FA6F921;
	Thu,  5 Dec 2019 23:26:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 689156E9AC;
 Thu,  5 Dec 2019 23:26:34 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 59D5FA00FD;
 Thu,  5 Dec 2019 23:26:34 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniele Ceraolo Spurio" <daniele.ceraolospurio@intel.com>
Date: Thu, 05 Dec 2019 23:26:34 -0000
Message-ID: <157558839433.19942.8577624951481983157@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191205220243.27403-1-daniele.ceraolospurio@intel.com>
In-Reply-To: <20191205220243.27403-1-daniele.ceraolospurio@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_series_starting_with_=5Bv3=2C1/5=5D_drm/i915/guc=3A_Drop_lef?=
 =?utf-8?q?tover_preemption_code?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggW3YzLDEv
NV0gZHJtL2k5MTUvZ3VjOiBEcm9wIGxlZnRvdmVyIHByZWVtcHRpb24gY29kZQpVUkwgICA6IGh0
dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvNzA1MjUvClN0YXRlIDogd2Fy
bmluZwoKPT0gU3VtbWFyeSA9PQoKJCBkaW0gY2hlY2twYXRjaCBvcmlnaW4vZHJtLXRpcAowYzdl
Nzc1MjY0MjkgZHJtL2k5MTUvZ3VjOiBEcm9wIGxlZnRvdmVyIHByZWVtcHRpb24gY29kZQozYzJk
YTM5MGE0ZjAgZHJtL2k5MTUvZ3VjOiBhZGQgYSBoZWxwZXIgdG8gYWxsb2NhdGUgYW5kIG1hcCBn
dWMgdm1hCmRmY2Y0YWI3MmFjNiBkcm0vaTkxNS9ndWM6IGtpbGwgZG9vcmJlbGwgY29kZSBhbmQg
c2VsZnRlc3RzCi06Njc5OiBXQVJOSU5HOkZJTEVfUEFUSF9DSEFOR0VTOiBhZGRlZCwgbW92ZWQg
b3IgZGVsZXRlZCBmaWxlKHMpLCBkb2VzIE1BSU5UQUlORVJTIG5lZWQgdXBkYXRpbmc/CiM2Nzk6
IApkZWxldGVkIGZpbGUgbW9kZSAxMDA2NDQKCnRvdGFsOiAwIGVycm9ycywgMSB3YXJuaW5ncywg
MCBjaGVja3MsIDYxNyBsaW5lcyBjaGVja2VkCjA3NDJjYWRmMzkwZiBkcm0vaTkxNS9ndWM6IGtp
bGwgdGhlIEd1QyBjbGllbnQKLTo4MzogQ0hFQ0s6VU5DT01NRU5URURfREVGSU5JVElPTjogc3Bp
bmxvY2tfdCBkZWZpbml0aW9uIHdpdGhvdXQgY29tbWVudAojODM6IEZJTEU6IGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L3VjL2ludGVsX2d1Yy5oOjUyOgorCXNwaW5sb2NrX3Qgd3FfbG9jazsKCnRv
dGFsOiAwIGVycm9ycywgMCB3YXJuaW5ncywgMSBjaGVja3MsIDU3NCBsaW5lcyBjaGVja2VkCjkw
ODc0Y2EzZjNhMCBIQVg6IGZvcmNlIGVuYWJsZV9ndWM9MiBhbmQgV0EgaTkxNSM1NzEKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWls
aW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
