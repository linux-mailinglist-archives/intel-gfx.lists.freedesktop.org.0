Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 209E4A7121
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Sep 2019 18:56:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 826AB88DF5;
	Tue,  3 Sep 2019 16:56:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A2CA188DF5
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Sep 2019 16:56:28 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Sep 2019 09:56:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,463,1559545200"; d="scan'208";a="383151687"
Received: from shashanks-u1804-dt.iind.intel.com ([10.223.74.135])
 by fmsmga006.fm.intel.com with ESMTP; 03 Sep 2019 09:56:24 -0700
From: Shashank Sharma <shashank.sharma@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  3 Sep 2019 22:22:25 +0530
Message-Id: <20190903165227.6056-1-shashank.sharma@intel.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC 0/2] Enable Nearest-neighbor for Integer mode
 scaling
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Qmx1cnJ5IG91dHB1dHMgZHVyaW5nIHVwc2NhbGluZyB0aGUgYnVmZmVyLCBpcyBhIGdlbmVyaWMg
cHJvYmxlbSBvZiBnZngKaW5kdXN0cnkuIE9uZSBvZiB0aGUgbWFqb3IgcmVhc29uIGJlaGluZCB0
aGlzIGJsdXJyaW5lc3MgaXMgdGhlCmludGVycG9sYXRpb24gb2YgcGl4ZWwgdmFsdWVzIHVzZWQg
YnkgbW9zdCBvZiB0aGUgdXBzY2FsaW5nIGhhcmR3YXJlcy4KCk5lYXJlc3QtbmVpZ2hib3IgaXMg
YSBzY2FsaW5nIG1vZGUsIHdoaWNoIHdvcmtzIGJ5IGZpbGxpbmcgaW4gdGhlIG1pc3NpbmcKY29s
b3IgdmFsdWVzIGluIHRoZSB1cHNjYWxlZCBpbWFnZSB3aXRoIHRoYXQgb2YgdGhlIGNvb3JkaW5h
dGUtbWFwcGVkCm5lYXJlc3Qgc291cmNlIHBpeGVsIHZhbHVlLgoKTmVhcmVzdC1uZWlnaGJvciBj
YW4gcHJvZHVjZSAoYWxtb3N0KSBub24tYmx1cnJ5IHNjYWxpbmcgb3V0cHV0cyB3aGVuCnRoZSBz
Y2FsaW5nIHJhdGlvIGlzIGNvbXBsZXRlIGludGVnZXIuIEZvciBleGFtcGxlOiAKLSBpbnB1dCBi
dWZmZXIgcmVzb2x1dGlvbjogMTI4MHg3MjAoSEQpCi0gb3V0cHV0IGJ1ZmZlciByZXNvbHV0aW9u
OiAzODQweDIxNjAoVUhELzRLKQotIHNjYWxpbmcgcmF0aW8gKGgpID0gMzg0MC8xMjgwID0gMyAg
CiAgc2NhbGluZyByYXRpbyAodikgPSAyMTYwLzcyMCA9IDMKSW4gc3VjaCBzY2VuYXJpb3MsIHdl
IHNob3VsZCB0cnkgdG8gcGljayBOZWFyZXN0LW5laWdoYm9yIGFzIHNjYWxpbmcKbWV0aG9kIHdo
ZW4gcG9zc2libGUuCgpNYW55IGdhbWluZyBjb21tdW5pdGllcyBoYXZlIGJlZW4gYXNraW5nIGZv
ciBpbnRlZ2VyLW1vZGUgc2NhbGluZwpzdXBwb3J0LCBzb21lIGxpbmtzIGFuZCBiYWNrZ3JvdW5k
OgpodHRwczovL3NvZnR3YXJlLmludGVsLmNvbS9lbi11cy9hcnRpY2xlcy9pbnRlZ2VyLXNjYWxp
bmctc3VwcG9ydC1vbi1pbnRlbC1ncmFwaGljcwpodHRwOi8vdGFuYWxpbi5jb20vZW4vYXJ0aWNs
ZXMvbG9zc2xlc3Mtc2NhbGluZy8KaHR0cHM6Ly9jb21tdW5pdHkuYW1kLmNvbS90aHJlYWQvMjA5
MTA3Cmh0dHBzOi8vd3d3Lm52aWRpYS5jb20vZW4tdXMvZ2Vmb3JjZS9mb3J1bXMvZ2FtZS1yZWFk
eS1kcml2ZXJzLzEzLzEwMDIvZmVhdHVyZS1yZXF1ZXN0LW5vbmJsdXJyeS11cHNjYWxpbmctYXQt
aW50ZWdlci1yYXQvCgpUaGlzIHBhdGNoIHNlcmllcyBlbmFibGVzIE5OIHNjYWxpbmcgb24gSW50
ZWwgZGlzcGxheSAoSUNMKSwgd2hlbiB0aGUgdXBzY2FsaW5nCnJhdGlvIGlzIGludGVnZXIuCgpT
aGFzaGFuayBTaGFybWEgKDIpOgogIGRybS9pOTE1OiBJbmRpY2F0ZSBpbnRlZ2VyIHVwLXNjYWxp
bmcgcmF0aW9zCiAgZHJtL2k5MTU6IFBpY2sgbmVhcmVzdC1uZWlnaGJvciBtb2RlIGZvciBpbnRl
Z2VyIHNjYWxpbmcgcmF0aW9zCgogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
aXNwbGF5LmMgIHwgOTcgKysrKysrKysrKysrKysrKysrLQogLi4uL2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZGlzcGxheV90eXBlcy5oICAgIHwgIDcgKysKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfcmVnLmggICAgICAgICAgICAgICB8IDMxICsrKysrKwogMyBmaWxlcyBjaGFuZ2VkLCAxMzQg
aW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQoKLS0gCjIuMTcuMQoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
