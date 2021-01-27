Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C6DF30507D
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Jan 2021 05:12:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B43FD89C6E;
	Wed, 27 Jan 2021 04:12:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 47C8589C6E
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Jan 2021 04:12:20 +0000 (UTC)
IronPort-SDR: gIn8nh9GL0/dUD+UEHTrnCLz08gETNjS9wHb9nvL8JThQs0x19zN8hxk1lf5mxFgRdkMEB8YKq
 ZEqCmmABnJmQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9876"; a="244090546"
X-IronPort-AV: E=Sophos;i="5.79,378,1602572400"; d="scan'208";a="244090546"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2021 20:12:19 -0800
IronPort-SDR: SGfBg8XB3ri4ZGDu8q14r+UvL1bl/oBI0+5H10SW5NZ7NuHqQEIYXbqZ5F/JCY6NkmUNolBFmk
 HNAT8ySrW0bA==
X-IronPort-AV: E=Sophos;i="5.79,378,1602572400"; d="scan'208";a="473006320"
Received: from njcaminx-mobl.amr.corp.intel.com (HELO
 aswarup-mobl.amr.corp.intel.com) ([10.251.9.202])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2021 20:12:19 -0800
From: Aditya Swarup <aditya.swarup@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 26 Jan 2021 20:11:50 -0800
Message-Id: <20210127041159.136409-1-aditya.swarup@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/9] Final set of patches for ADLS enabling
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhlc2UgYXJlIHRoZSBmaW5hbCBzZXQgb2YgcGF0Y2hlcyByZXF1aXJlZCBmb3IgZW5hYmxpbmcg
QURMLVMuIFRoZQpwYXRjaGVzIGhhdmUgYmVlbiB0ZXN0ZWQgb24gcGxhdGZvcm0gYW5kIGFsbCBk
aXNwbGF5IG91dHB1dHMgYXJlCndvcmtpbmcuCgpBZGl0eWEgU3dhcnVwICgyKToKICBkcm0vaTkx
NS9hZGxfczogQWRkIGRpc3BsYXkgV0FzIGZvciBBREwtUwogIGRybS9pOTE1L2FkbF9zOiBBZGQg
R1QgYW5kIENUWCBXQXMgZm9yIEFETC1TCgpBbnVzaGEgU3JpdmF0c2EgKDEpOgogIGRybS9pOTE1
L2FkbF9zOiBMb2FkIERNQwoKQ2F6IFlva295YW1hICgxKToKICBkcm0vaTkxNS9hZGxfczogTUNI
QkFSIG1lbW9yeSBpbmZvIHJlZ2lzdGVycyBhcmUgbW92ZWQKCkpvc8OpIFJvYmVydG8gZGUgU291
emEgKDEpOgogIGRybS9pOTE1L2Rpc3BsYXk6IEFkZCBIQVNfRDEyX1BMQU5FX01JTklNSVpBVElP
TgoKTHVjYXMgRGUgTWFyY2hpICgxKToKICBkcm0vaTkxNS9hZGxfczogQWRkIHBvd2VyIHdlbGxz
CgpNYXR0IFJvcGVyICgyKToKICBkcm0vaTkxNS9hZGxfczogVXBkYXRlIFBIWV9NSVNDIHByb2dy
YW1taW5nCiAgZHJtL2k5MTUvYWRsX3M6IFJlLXVzZSBUR0wgR3VDL0h1QyBmaXJtd2FyZQoKVGVq
YXMgVXBhZGh5YXkgKDEpOgogIGRybS9pOTE1L2FkbF9zOiBVcGRhdGUgbWVtb3J5IGJhbmR3aWR0
aCBwYXJhbWV0ZXJzCgogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9idy5jICAg
ICAgIHwgIDggKysrKysKIC4uLi9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jb21ib19waHku
YyAgICB8IDEyICsrKysrLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3Ny
LmMgICAgICB8IDEwICsrKysrLQogLi4uL2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9w
b3dlci5jICAgIHwgIDkgKystLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
c3ByaXRlLmMgICB8ICA2ICsrLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmth
cm91bmRzLmMgICB8IDM0ICsrKysrKysrKysrKy0tLS0tLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L3VjL2ludGVsX3VjX2Z3LmMgICAgICB8ICA0ICsrLQogZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9kcnYuaCAgICAgICAgICAgICAgIHwgIDMgKysKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfaXJxLmMgICAgICAgICAgICAgICB8ICAyICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X3JlZy5oICAgICAgICAgICAgICAgfCAgNSArKysKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVs
X2RldmljZV9pbmZvLmMgICAgICB8ICA4ICsrKy0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRl
bF9kcmFtLmMgICAgICAgICAgICAgfCAyNCArKysrKysrKystLS0tCiAxMiBmaWxlcyBjaGFuZ2Vk
LCA5MSBpbnNlcnRpb25zKCspLCAzNCBkZWxldGlvbnMoLSkKCi0tIAoyLjI3LjAKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5n
IGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
