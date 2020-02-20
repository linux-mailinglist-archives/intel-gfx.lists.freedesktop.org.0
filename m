Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A7C5165D4C
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Feb 2020 13:11:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 80CF36ED42;
	Thu, 20 Feb 2020 12:11:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2997B89FAC
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Feb 2020 12:11:00 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Feb 2020 04:11:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,464,1574150400"; d="scan'208";a="259252349"
Received: from slisovsk-lenovo-ideapad-720s-13ikb.fi.intel.com ([10.237.72.89])
 by fmsmga004.fm.intel.com with ESMTP; 20 Feb 2020 04:10:57 -0800
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 20 Feb 2020 14:07:40 +0200
Message-Id: <20200220120741.6917-7-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.24.1.485.gad05a3d8e5
In-Reply-To: <20200220120741.6917-1-stanislav.lisovskiy@intel.com>
References: <20200220120741.6917-1-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v17 6/7] drm/i915: Restrict qgv points which
 don't have enough bandwidth.
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

QWNjb3JkaW5nIHRvIEJTcGVjIDUzOTk4LCB3ZSBzaG91bGQgdHJ5IHRvCnJlc3RyaWN0IHFndiBw
b2ludHMsIHdoaWNoIGNhbid0IHByb3ZpZGUKZW5vdWdoIGJhbmR3aWR0aCBmb3IgZGVzaXJlZCBk
aXNwbGF5IGNvbmZpZ3VyYXRpb24uCgpDdXJyZW50bHkgd2UgYXJlIGp1c3QgY29tcGFyaW5nIGFn
YWluc3QgYWxsIG9mCnRob3NlIGFuZCB0YWtlIG1pbmltdW0od29yc3QgY2FzZSkuCgp2MjogRml4
ZWQgd3JvbmcgUENvZGUgcmVwbHkgbWFzaywgcmVtb3ZlZCBoYXJkY29kZWQKICAgIHZhbHVlcy4K
CnYzOiBGb3JiaWQgc2ltdWx0YW5lb3VzIGxlZ2FjeSBTQUdWIFBDb2RlIHJlcXVlc3RzIGFuZAog
ICAgcmVzdHJpY3RpbmcgcWd2IHBvaW50cy4gUHV0IHRoZSBhY3R1YWwgcmVzdHJpY3Rpb24KICAg
IHRvIGNvbW1pdCBmdW5jdGlvbiwgYWRkZWQgc2VyaWFsaXphdGlvbih0aGFua3MgdG8gVmlsbGUp
CiAgICB0byBwcmV2ZW50IGNvbW1pdCBiZWluZyBhcHBsaWVkIG91dCBvZiBvcmRlciBpbiBjYXNl
IG9mCiAgICBub25ibG9ja2luZyBhbmQvb3Igbm9tb2Rlc2V0IGNvbW1pdHMuCgp2NDoKICAgIC0g
TWlub3IgY29kZSByZWZhY3RvcmluZywgZml4ZWQgZmV3IHR5cG9zKHRoYW5rcyB0byBKYW1lcyBB
dXNtdXMpCiAgICAtIENoYW5nZSB0aGUgbmFtaW5nIG9mIHFndiBwb2ludAogICAgICBtYXNraW5n
L3VubWFza2luZyBmdW5jdGlvbnMoSmFtZXMgQXVzbXVzKS4KICAgIC0gU2ltcGxpZnkgdGhlIG1h
c2tpbmcvdW5tYXNraW5nIG9wZXJhdGlvbiBpdHNlbGYsCiAgICAgIGFzIHdlIGRvbid0IG5lZWQg
dG8gbWFzayBvbmx5IHNpbmdsZSBwb2ludCBwZXIgcmVxdWVzdChKYW1lcyBBdXNtdXMpCiAgICAt
IFJlamVjdCBhbmQgc3RpY2sgdG8gaGlnaGVzdCBiYW5kd2lkdGggcG9pbnQgaWYgU0FHVgogICAg
ICBjYW4ndCBiZSBlbmFibGVkKEJTcGVjKQoKdjU6CiAgICAtIEFkZCBuZXcgbWFpbGJveCByZXBs
eSBjb2Rlcywgd2hpY2ggc2VlbXMgdG8gaGFwcGVuIGR1cmluZyBib290CiAgICAgIHRpbWUgZm9y
IFRHTCBhbmQgaW5kaWNhdGUgdGhhdCBRR1Ygc2V0dGluZyBpcyBub3QgeWV0IGF2YWlsYWJsZS4K
CnY2OgogICAgLSBJbmNyZWFzZSBudW1iZXIgb2Ygc3VwcG9ydGVkIFFHViBwb2ludHMgdG8gYmUg
aW4gc3luYyB3aXRoIEJTcGVjLgoKdjc6IC0gUmViYXNlZCBhbmQgcmVzb2x2ZWQgY29uZmxpY3Qg
dG8gZml4IGJ1aWxkIGZhaWx1cmUuCiAgICAtIEZpeCBOVU1fUUdWX1BPSU5UUyB0byA4IGFuZCBt
b3ZlZCB0aGF0IHRvIGhlYWRlciBmaWxlKEphbWVzIEF1c211cykKCnY4OiAtIERvbid0IHJlcG9y
dCBhbiBlcnJvciBpZiB3ZSBjYW4ndCByZXN0cmljdCBxZ3YgcG9pbnRzLCBhcyBTQUdWCiAgICAg
IGNhbiBiZSBkaXNhYmxlZCBieSBCSU9TLCB3aGljaCBpcyBjb21wbGV0ZWx5IGxlZ2FsLiBTbyBk
b24ndAogICAgICBtYWtlIENJIHBhbmljLiBJbnN0ZWFkIGlmIHdlIGRldGVjdCB0aGF0IHRoZXJl
IGlzIG9ubHkgMSBRR1YKICAgICAgcG9pbnQgYWNjZXNzaWJsZSBqdXN0IGFuYWx5emUgaWYgd2Ug
Y2FuIGZpdCB0aGUgcmVxdWlyZWQgYmFuZHdpZHRoCiAgICAgIHJlcXVpcmVtZW50cywgYnV0IG5v
IG5lZWQgaW4gcmVzdHJpY3RpbmcuCgp2OTogLSBGaXggd3JvbmcgUUdWIHRyYW5zaXRpb24gaWYg
d2UgaGF2ZSAwIHBsYW5lcyBhbmQgbm8gU0FHVgogICAgICBzaW11bHRhbmVvdXNseS4KCnYxMDog
LSBGaXggQ0RDTEsgY29ycnVwdGlvbiwgYmVjYXVzZSBvZiBnbG9iYWwgc3RhdGUgZ2V0dGluZyBz
ZXJpYWxpemVkCiAgICAgICB3aXRob3V0IG1vZGVzZXQsIHdoaWNoIGNhdXNlZCBjb3B5aW5nIG9m
IG5vbi1jYWxjdWxhdGVkIGNkY2xrCiAgICAgICB0byBiZSBjb3BpZWQgdG8gZGV2X3ByaXYodGhh
bmtzIHRvIFZpbGxlIGZvciB0aGUgaGludCkuCgp2MTE6IC0gUmVtb3ZlIHVubmVlZGVkIGhlYWRl
cnMgYW5kIHNwYWNlcyhNYXR0aGV3IFJvcGVyKQogICAgIC0gUmVtb3ZlIHVubmVlZGVkIGludGVs
X3Fndl9pbmZvIHFpIHN0cnVjdCBmcm9tIGJ3IGNoZWNrIGFuZCB6ZXJvCiAgICAgICBvdXQgdGhl
IG5lZWRlZCBvbmUoTWF0dGhldyBSb3BlcikKICAgICAtIENoYW5nZWQgUUdWIGVycm9yIG1lc3Nh
Z2UgdG8gaGF2ZSBtb3JlIGNsZWFyIG1lYW5pbmcoTWF0dGhldyBSb3BlcikKICAgICAtIFVzZSBz
dGF0ZS0+bW9kZXNldF9zZXQgaW5zdGVhZCBvZiBhbnlfbXMoTWF0dGhldyBSb3BlcikKICAgICAt
IE1vdmVkIE5VTV9TQUdWX1BPSU5UUyBmcm9tIGk5MTVfcmVnLmggdG8gaTkxNV9kcnYuaCB3aGVy
ZSBpdCdzIHVzZWQKICAgICAtIEtlZXAgdXNpbmcgY3J0Y19zdGF0ZS0+aHcuYWN0aXZlIGluc3Rl
YWQgb2YgLmVuYWJsZShNYXR0aGV3IFJvcGVyKQogICAgIC0gTW92ZWQgdW5yZWxhdGVkIGNoYW5n
ZXMgdG8gb3RoZXIgcGF0Y2godXNpbmcgbGF0ZW5jeSBhcyBwYXJhbWV0ZXIKICAgICAgIGZvciBw
bGFuZSB3bSBjYWxjdWxhdGlvbiwgbW92ZWQgdG8gU0FHViByZWZhY3RvcmluZyBwYXRjaCkKCnYx
MjogLSBGaXggcmViYXNlIGNvbmZsaWN0IHdpdGggb3duIHRlbXBvcmFyeSBTQUdWL1FHViBmaXgu
CiAgICAgLSBSZW1vdmUgdW5uZWNlc3NhcnkgbWFzayBiZWluZyB6ZXJvIGNoZWNrIHdoZW4gdW5t
YXNraW5nCiAgICAgICBxZ3YgcG9pbnRzIGFzIHRoaXMgaXMgY29tcGxldGVseSBsZWdhbChNYXR0
IFJvcGVyKQogICAgIC0gQ2hlY2sgaWYgd2UgYXJlIHNldHRpbmcgdGhlIHNhbWUgbWFzayBhcyBh
bHJlYWR5IGJlaW5nIHNldAogICAgICAgaW4gaGFyZHdhcmUgdG8gcHJldmVudCBlcnJvciBmcm9t
IFBDb2RlLgogICAgIC0gRml4IGVycm9yIG1lc3NhZ2Ugd2hlbiByZXN0cmljdGluZy91bnJlc3Ry
aWN0aW5nIHFndiBwb2ludHMKICAgICAgIHRvICJtYXNrL3VubWFzayIgd2hpY2ggc291bmRzIG1v
cmUgYWNjdXJhdGUoTWF0dCBSb3BlcikKICAgICAtIE1vdmUgc2FndiBzdGF0dXMgc2V0dGluZyB0
byBpY2xfZ2V0X2J3X2luZm8gZnJvbSBhdG9taWMgY2hlY2sKICAgICAgIGFzIHRoaXMgc2hvdWxk
IGJlIGNhbGN1bGF0ZWQgb25seSBvbmNlLihNYXR0IFJvcGVyKQogICAgIC0gRWRpdGVkIGNvbW1l
bnRzIGZvciB0aGUgY2FzZSB3aGVuIHdlIGNhbid0IGVuYWJsZSBTQUdWIGFuZAogICAgICAgdXNl
IG9ubHkgMSBRR1YgcG9pbnQgd2l0aCBoaWdoZXN0IGJhbmR3aWR0aCB0byBiZSBtb3JlCiAgICAg
ICB1bmRlcnN0YW5kYWJsZS4oTWF0dCBSb3BlcikKCnYxMzogLSBNb3ZlZCBtYXhfZGF0YV9yYXRl
IGluIGJ3IGNoZWNrIHRvIGNsb3NlciBzY29wZShWaWxsZSBTeXJqw6Rsw6QpCiAgICAgLSBDaGFu
Z2VkIGNvbW1lbnQgZm9yIHplcm8gbmV3X21hc2sgaW4gcWd2IHBvaW50cyBtYXNraW5nIGZ1bmN0
aW9uCiAgICAgICB0byBiZXR0ZXIgcmVmbGVjdCByZWFsaXR5KFZpbGxlIFN5cmrDpGzDpCkKICAg
ICAtIFNpbXBsaWZpZWQgYml0IG1hc2sgb3BlcmF0aW9uIGluIHFndiBwb2ludHMgbWFza2luZyBm
dW5jdGlvbgogICAgICAgKFZpbGxlIFN5cmrDpGzDpCkKICAgICAtIE1vdmVkIGludGVsX3Fndl9w
b2ludHNfbWFzayBjbG9zZXIgdG8gZ2VuMTEgU0FHViBkaXNhYmxpbmcsCiAgICAgICBob3dldmVy
IHRoaXMgc3RpbGwgY2FuJ3QgYmUgdW5kZXIgbW9kZXNldCBjb25kaXRpb24oVmlsbGUgU3lyasOk
bMOkKQogICAgIC0gUGFja2VkIHFndl9wb2ludHNfbWFzayBhcyB1OCBhbmQgbW92ZWQgY2xvc2Vy
IHRvIHBpcGVfc2Fndl9tYXNrCiAgICAgICAoVmlsbGUgU3lyasOkbMOkKQogICAgIC0gRXh0cmFj
dGVkIFBDb2RlIGNoYW5nZXMgdG8gc2VwYXJhdGUgcGF0Y2guKFZpbGxlIFN5cmrDpGzDpCkKICAg
ICAtIE5vdyB0cmVhdCBudW1fcGxhbmVzIDAgc2FtZSBhcyAxIHRvIGF2b2lkIGNvbmZ1c2lvbiBh
bmQKICAgICAgIHJldHVybmluZyBtYXhfYncgYXMgMCwgd2hpY2ggd291bGQgcHJldmVudCBjaG9v
c2luZyBRR1YKICAgICAgIHBvaW50IGhhdmluZyBtYXggYmFuZHdpZHRoIGluIGNhc2UgaWYgU0FH
ViBpcyBub3QgYWxsb3dlZCwKICAgICAgIGFzIHBlciBCU3BlYyhWaWxsZSBTeXJqw6Rsw6QpCiAg
ICAgLSBEbyB0aGUgYWN0dWFsIHFndl9wb2ludHNfbWFzayBzd2FwIGluIHRoZSBzYW1lIHBsYWNl
IGFzCiAgICAgICBhbGwgb3RoZXIgZ2xvYmFsIHN0YXRlIHBhcnRzIGxpa2UgY2RjbGsgYXJlIHN3
YXBwZWQuCiAgICAgICBJbiB0aGUgbmV4dCBwYXRjaCwgdGhpcyBhbGwgd2lsbCBiZSBtb3ZlZCB0
byBidyBzdGF0ZSBhcwogICAgICAgZ2xvYmFsIHN0YXRlLCBvbmNlIG5ldyBnbG9iYWwgc3RhdGUg
cGF0Y2ggc2VyaWVzIGZyb20gVmlsbGUKICAgICAgIGxhbmRzCgp2MTQ6IC0gTm93IHVzaW5nIGds
b2JhbCBzdGF0ZSB0byBzZXJpYWxpemUgYWNjZXNzIHRvIHFndiBwb2ludHMKICAgICAtIEFkZGVk
IGdsb2JhbCBzdGF0ZSBsb2NraW5nIGJhY2ssIG90aGVyd2lzZSB3ZSBzZWVtIHRvIHJlYWQKICAg
ICAgIGJ3IHN0YXRlIGluIGEgd3Jvbmcgd2F5LgoKdjE1OiAtIEFkZGVkIFRPRE8gY29tbWVudCBm
b3IgbmVhciBhdG9taWMgZ2xvYmFsIHN0YXRlIGxvY2tpbmcgaW4KICAgICAgIGJ3IGNvZGUuCgpT
aWduZWQtb2ZmLWJ5OiBTdGFuaXNsYXYgTGlzb3Zza2l5IDxzdGFuaXNsYXYubGlzb3Zza2l5QGlu
dGVsLmNvbT4KQ2M6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBpbnRlbC5jb20+CkNj
OiBKYW1lcyBBdXNtdXMgPGphbWVzLmF1c211c0BpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9idy5jICAgICAgfCAxNzcgKysrKysrKysrKysrKystLS0t
LQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9idy5oICAgICAgfCAgIDkgKwog
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgfCAxMDkgKysrKysr
KysrKysrCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oICAgICAgICAgICAgICB8ICAg
MyArCiA0IGZpbGVzIGNoYW5nZWQsIDI0OSBpbnNlcnRpb25zKCspLCA0OSBkZWxldGlvbnMoLSkK
CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2J3LmMgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2J3LmMKaW5kZXggZmY1NzI3N2U4ODgw
Li42Yjc4OTRlZjdlYTYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfYncuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2J3LmMK
QEAgLTgsNiArOCw5IEBACiAjaW5jbHVkZSAiaW50ZWxfYncuaCIKICNpbmNsdWRlICJpbnRlbF9k
aXNwbGF5X3R5cGVzLmgiCiAjaW5jbHVkZSAiaW50ZWxfc2lkZWJhbmQuaCIKKyNpbmNsdWRlICJp
bnRlbF9hdG9taWMuaCIKKyNpbmNsdWRlICJpbnRlbF9wbS5oIgorCiAKIC8qIFBhcmFtZXRlcnMg
Zm9yIFFjbGsgR2V5c2VydmlsbGUgKFFHVikgKi8KIHN0cnVjdCBpbnRlbF9xZ3ZfcG9pbnQgewpA
QCAtMTEzLDYgKzExNiwyNiBAQCBzdGF0aWMgaW50IGljbF9wY29kZV9yZWFkX3Fndl9wb2ludF9p
bmZvKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKIAlyZXR1cm4gMDsKIH0KIAor
aW50IGljbF9wY29kZV9yZXN0cmljdF9xZ3ZfcG9pbnRzKHN0cnVjdCBkcm1faTkxNV9wcml2YXRl
ICpkZXZfcHJpdiwKKwkJCQkgIHUzMiBwb2ludHNfbWFzaykKK3sKKwlpbnQgcmV0OworCisJLyog
YnNwZWMgc2F5cyB0byBrZWVwIHJldHJ5aW5nIGZvciBhdCBsZWFzdCAxIG1zICovCisJcmV0ID0g
c2tsX3Bjb2RlX3JlcXVlc3QoZGV2X3ByaXYsIElDTF9QQ09ERV9TQUdWX0RFX01FTV9TU19DT05G
SUcsCisJCQkJcG9pbnRzX21hc2ssCisJCQkJR0VOMTFfUENPREVfUE9JTlRTX1JFU1RSSUNURURf
TUFTSywKKwkJCQlHRU4xMV9QQ09ERV9QT0lOVFNfUkVTVFJJQ1RFRCwKKwkJCQkxKTsKKworCWlm
IChyZXQgPCAwKSB7CisJCURSTV9FUlJPUigiRmFpbGVkIHRvIGRpc2FibGUgcWd2IHBvaW50cyAo
JWQpXG4iLCByZXQpOworCQlyZXR1cm4gcmV0OworCX0KKworCXJldHVybiAwOworfQorCiBzdGF0
aWMgaW50IGljbF9nZXRfcWd2X3BvaW50cyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3By
aXYsCiAJCQkgICAgICBzdHJ1Y3QgaW50ZWxfcWd2X2luZm8gKnFpKQogewpAQCAtMjQwLDYgKzI2
MywxNiBAQCBzdGF0aWMgaW50IGljbF9nZXRfYndfaW5mbyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0
ZSAqZGV2X3ByaXYsIGNvbnN0IHN0cnVjdCBpbnRlbAogCQkJYnJlYWs7CiAJfQogCisJLyoKKwkg
KiBJbiBjYXNlIGlmIFNBR1YgaXMgZGlzYWJsZWQgaW4gQklPUywgd2UgYWx3YXlzIGdldCAxCisJ
ICogU0FHViBwb2ludCwgYnV0IHdlIGNhbid0IHNlbmQgUENvZGUgY29tbWFuZHMgdG8gcmVzdHJp
Y3QgaXQKKwkgKiBhcyBpdCB3aWxsIGZhaWwgYW5kIHBvaW50bGVzcyBhbnl3YXkuCisJICovCisJ
aWYgKHFpLm51bV9wb2ludHMgPT0gMSkKKwkJZGV2X3ByaXYtPnNhZ3Zfc3RhdHVzID0gSTkxNV9T
QUdWX05PVF9DT05UUk9MTEVEOworCWVsc2UKKwkJZGV2X3ByaXYtPnNhZ3Zfc3RhdHVzID0gSTkx
NV9TQUdWX0VOQUJMRUQ7CisKIAlyZXR1cm4gMDsKIH0KIApAQCAtMjU5LDcgKzI5Miw3IEBAIHN0
YXRpYyB1bnNpZ25lZCBpbnQgaWNsX21heF9idyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2
X3ByaXYsCiAJCWlmIChxZ3ZfcG9pbnQgPj0gYmktPm51bV9xZ3ZfcG9pbnRzKQogCQkJcmV0dXJu
IFVJTlRfTUFYOwogCi0JCWlmIChudW1fcGxhbmVzID49IGJpLT5udW1fcGxhbmVzKQorCQlpZiAo
bnVtX3BsYW5lcyA+PSBiaS0+bnVtX3BsYW5lcyB8fCAhbnVtX3BsYW5lcykKIAkJCXJldHVybiBi
aS0+ZGVyYXRlZGJ3W3Fndl9wb2ludF07CiAJfQogCkBAIC0yNzcsMzQgKzMxMCw2IEBAIHZvaWQg
aW50ZWxfYndfaW5pdF9odyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiAJCWlj
bF9nZXRfYndfaW5mbyhkZXZfcHJpdiwgJmljbF9zYV9pbmZvKTsKIH0KIAotc3RhdGljIHVuc2ln
bmVkIGludCBpbnRlbF9tYXhfZGF0YV9yYXRlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZf
cHJpdiwKLQkJCQkJaW50IG51bV9wbGFuZXMpCi17Ci0JaWYgKElOVEVMX0dFTihkZXZfcHJpdikg
Pj0gMTEpIHsKLQkJLyoKLQkJICogQW55IGJ3IGdyb3VwIGhhcyBzYW1lIGFtb3VudCBvZiBRR1Yg
cG9pbnRzCi0JCSAqLwotCQljb25zdCBzdHJ1Y3QgaW50ZWxfYndfaW5mbyAqYmkgPQotCQkJJmRl
dl9wcml2LT5tYXhfYndbMF07Ci0JCXVuc2lnbmVkIGludCBtaW5fYncgPSBVSU5UX01BWDsKLQkJ
aW50IGk7Ci0KLQkJLyoKLQkJICogRklYTUUgd2l0aCBTQUdWIGRpc2FibGVkIG1heWJlIHdlIGNh
biBhc3N1bWUKLQkJICogcG9pbnQgMSB3aWxsIGFsd2F5cyBiZSB1c2VkPyBTZWVtcyB0byBtYXRj
aAotCQkgKiB0aGUgYmVoYXZpb3VyIG9ic2VydmVkIGluIHRoZSB3aWxkLgotCQkgKi8KLQkJZm9y
IChpID0gMDsgaSA8IGJpLT5udW1fcWd2X3BvaW50czsgaSsrKSB7Ci0JCQl1bnNpZ25lZCBpbnQg
YncgPSBpY2xfbWF4X2J3KGRldl9wcml2LCBudW1fcGxhbmVzLCBpKTsKLQotCQkJbWluX2J3ID0g
bWluKGJ3LCBtaW5fYncpOwotCQl9Ci0JCXJldHVybiBtaW5fYnc7Ci0JfSBlbHNlIHsKLQkJcmV0
dXJuIFVJTlRfTUFYOwotCX0KLX0KLQogc3RhdGljIHVuc2lnbmVkIGludCBpbnRlbF9id19jcnRj
X251bV9hY3RpdmVfcGxhbmVzKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0
YXRlKQogewogCS8qCkBAIC00MTcsMTEgKzQyMiwxNiBAQCBpbnQgaW50ZWxfYndfYXRvbWljX2No
ZWNrKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlKQogewogCXN0cnVjdCBkcm1faTkx
NV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoc3RhdGUtPmJhc2UuZGV2KTsKIAlzdHJ1Y3Qg
aW50ZWxfY3J0Y19zdGF0ZSAqbmV3X2NydGNfc3RhdGUsICpvbGRfY3J0Y19zdGF0ZTsKLQlzdHJ1
Y3QgaW50ZWxfYndfc3RhdGUgKmJ3X3N0YXRlID0gTlVMTDsKLQl1bnNpZ25lZCBpbnQgZGF0YV9y
YXRlLCBtYXhfZGF0YV9yYXRlOworCXN0cnVjdCBpbnRlbF9id19zdGF0ZSAqbmV3X2J3X3N0YXRl
ID0gTlVMTDsKKwlzdHJ1Y3QgaW50ZWxfYndfc3RhdGUgKm9sZF9id19zdGF0ZSA9IE5VTEw7CisJ
dW5zaWduZWQgaW50IGRhdGFfcmF0ZTsKIAl1bnNpZ25lZCBpbnQgbnVtX2FjdGl2ZV9wbGFuZXM7
CiAJc3RydWN0IGludGVsX2NydGMgKmNydGM7CiAJaW50IGksIHJldDsKKwl1MzIgYWxsb3dlZF9w
b2ludHMgPSAwOworCXVuc2lnbmVkIGludCBtYXhfYndfcG9pbnQgPSAwLCBtYXhfYncgPSAwOwor
CXVuc2lnbmVkIGludCBudW1fcWd2X3BvaW50cyA9IGRldl9wcml2LT5tYXhfYndbMF0ubnVtX3Fn
dl9wb2ludHM7CisJdTMyIG1hc2sgPSAoMSA8PCBudW1fcWd2X3BvaW50cykgLSAxOwogCiAJLyog
RklYTUUgZWFybGllciBnZW5zIG5lZWQgc29tZSBjaGVja3MgdG9vICovCiAJaWYgKElOVEVMX0dF
TihkZXZfcHJpdikgPCAxMSkKQEAgLTQ0Niw0MSArNDU2LDExMCBAQCBpbnQgaW50ZWxfYndfYXRv
bWljX2NoZWNrKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlKQogCQkgICAgb2xkX2Fj
dGl2ZV9wbGFuZXMgPT0gbmV3X2FjdGl2ZV9wbGFuZXMpCiAJCQljb250aW51ZTsKIAotCQlid19z
dGF0ZSAgPSBpbnRlbF9hdG9taWNfZ2V0X2J3X3N0YXRlKHN0YXRlKTsKLQkJaWYgKElTX0VSUihi
d19zdGF0ZSkpCi0JCQlyZXR1cm4gUFRSX0VSUihid19zdGF0ZSk7CisJCW5ld19id19zdGF0ZSA9
IGludGVsX2F0b21pY19nZXRfYndfc3RhdGUoc3RhdGUpOworCQlpZiAoSVNfRVJSKG5ld19id19z
dGF0ZSkpCisJCQlyZXR1cm4gUFRSX0VSUihuZXdfYndfc3RhdGUpOwogCi0JCWJ3X3N0YXRlLT5k
YXRhX3JhdGVbY3J0Yy0+cGlwZV0gPSBuZXdfZGF0YV9yYXRlOwotCQlid19zdGF0ZS0+bnVtX2Fj
dGl2ZV9wbGFuZXNbY3J0Yy0+cGlwZV0gPSBuZXdfYWN0aXZlX3BsYW5lczsKKwkJbmV3X2J3X3N0
YXRlLT5kYXRhX3JhdGVbY3J0Yy0+cGlwZV0gPSBuZXdfZGF0YV9yYXRlOworCQluZXdfYndfc3Rh
dGUtPm51bV9hY3RpdmVfcGxhbmVzW2NydGMtPnBpcGVdID0gbmV3X2FjdGl2ZV9wbGFuZXM7CiAK
IAkJZHJtX2RiZ19rbXMoJmRldl9wcml2LT5kcm0sCiAJCQkgICAgInBpcGUgJWMgZGF0YSByYXRl
ICV1IG51bSBhY3RpdmUgcGxhbmVzICV1XG4iLAogCQkJICAgIHBpcGVfbmFtZShjcnRjLT5waXBl
KSwKLQkJCSAgICBid19zdGF0ZS0+ZGF0YV9yYXRlW2NydGMtPnBpcGVdLAotCQkJICAgIGJ3X3N0
YXRlLT5udW1fYWN0aXZlX3BsYW5lc1tjcnRjLT5waXBlXSk7CisJCQkgICAgbmV3X2J3X3N0YXRl
LT5kYXRhX3JhdGVbY3J0Yy0+cGlwZV0sCisJCQkgICAgbmV3X2J3X3N0YXRlLT5udW1fYWN0aXZl
X3BsYW5lc1tjcnRjLT5waXBlXSk7CiAJfQogCi0JaWYgKCFid19zdGF0ZSkKKwlpZiAoIW5ld19i
d19zdGF0ZSkKIAkJcmV0dXJuIDA7CiAKLQlyZXQgPSBpbnRlbF9hdG9taWNfbG9ja19nbG9iYWxf
c3RhdGUoJmJ3X3N0YXRlLT5iYXNlKTsKLQlpZiAocmV0KQorCS8qCisJICogVE9ETzogU2hvdWxk
IHdlIGp1c3QgY2FsbCBpbnRlbF9hdG9taWNfc2VyaWFsaXplX2dsb2JhbF9zdGF0ZSBoZXJlPwor
CSAqIHdlIGFueXdheSBhbHJlYWR5IGhhdmUgZGlmZmVyZW50IGRhdGEgcmF0ZXMgYW5kIHRoaXMg
Y2FsbCBpcworCSAqIGlzIGFsbW9zdCBzaW1pbGFyLCBleGNlcHQgdGhhdCBpdCBkb2Vzbid0IGNh
bGwgZHVwbGljYXRlX3N0YXRlCisJICogaG9vay4KKwkgKi8KKwlyZXQgPSBpbnRlbF9hdG9taWNf
bG9ja19nbG9iYWxfc3RhdGUoJm5ld19id19zdGF0ZS0+YmFzZSk7CisJaWYgKHJldCkgeworCQlE
Uk1fREVCVUdfS01TKCJDb3VsZCBub3QgbG9jayBnbG9iYWwgc3RhdGVcbiIpOwogCQlyZXR1cm4g
cmV0OworCX0KIAotCWRhdGFfcmF0ZSA9IGludGVsX2J3X2RhdGFfcmF0ZShkZXZfcHJpdiwgYndf
c3RhdGUpOwotCW51bV9hY3RpdmVfcGxhbmVzID0gaW50ZWxfYndfbnVtX2FjdGl2ZV9wbGFuZXMo
ZGV2X3ByaXYsIGJ3X3N0YXRlKTsKLQotCW1heF9kYXRhX3JhdGUgPSBpbnRlbF9tYXhfZGF0YV9y
YXRlKGRldl9wcml2LCBudW1fYWN0aXZlX3BsYW5lcyk7CisJZGF0YV9yYXRlID0gaW50ZWxfYndf
ZGF0YV9yYXRlKGRldl9wcml2LCBuZXdfYndfc3RhdGUpOworCW51bV9hY3RpdmVfcGxhbmVzID0g
aW50ZWxfYndfbnVtX2FjdGl2ZV9wbGFuZXMoZGV2X3ByaXYsIG5ld19id19zdGF0ZSk7CiAKIAlk
YXRhX3JhdGUgPSBESVZfUk9VTkRfVVAoZGF0YV9yYXRlLCAxMDAwKTsKIAotCWlmIChkYXRhX3Jh
dGUgPiBtYXhfZGF0YV9yYXRlKSB7Ci0JCWRybV9kYmdfa21zKCZkZXZfcHJpdi0+ZHJtLAotCQkJ
ICAgICJCYW5kd2lkdGggJXUgTUIvcyBleGNlZWRzIG1heCBhdmFpbGFibGUgJWQgTUIvcyAoJWQg
YWN0aXZlIHBsYW5lcylcbiIsCi0JCQkgICAgZGF0YV9yYXRlLCBtYXhfZGF0YV9yYXRlLCBudW1f
YWN0aXZlX3BsYW5lcyk7CisJZm9yIChpID0gMDsgaSA8IG51bV9xZ3ZfcG9pbnRzOyBpKyspIHsK
KwkJdW5zaWduZWQgaW50IG1heF9kYXRhX3JhdGU7CisKKwkJbWF4X2RhdGFfcmF0ZSA9IGljbF9t
YXhfYncoZGV2X3ByaXYsIG51bV9hY3RpdmVfcGxhbmVzLCBpKTsKKwkJLyoKKwkJICogV2UgbmVl
ZCB0byBrbm93IHdoaWNoIHFndiBwb2ludCBnaXZlcyB1cworCQkgKiBtYXhpbXVtIGJhbmR3aWR0
aCBpbiBvcmRlciB0byBkaXNhYmxlIFNBR1YKKwkJICogaWYgd2UgZmluZCB0aGF0IHdlIGV4Y2Vl
ZCBTQUdWIGJsb2NrIHRpbWUKKwkJICogd2l0aCB3YXRlcm1hcmtzLiBCeSB0aGF0IG1vbWVudCB3
ZSBhbHJlYWR5CisJCSAqIGhhdmUgdGhvc2UsIGFzIGl0IGlzIGNhbGN1bGF0ZWQgZWFybGllciBp
bgorCQkgKiBpbnRlbF9hdG9taWNfY2hlY2ssCisJCSAqLworCQlpZiAobWF4X2RhdGFfcmF0ZSA+
IG1heF9idykgeworCQkJbWF4X2J3X3BvaW50ID0gaTsKKwkJCW1heF9idyA9IG1heF9kYXRhX3Jh
dGU7CisJCX0KKwkJaWYgKG1heF9kYXRhX3JhdGUgPj0gZGF0YV9yYXRlKQorCQkJYWxsb3dlZF9w
b2ludHMgfD0gQklUKGkpOworCQlEUk1fREVCVUdfS01TKCJRR1YgcG9pbnQgJWQ6IG1heCBidyAl
ZCByZXF1aXJlZCAlZFxuIiwKKwkJCSAgICAgIGksIG1heF9kYXRhX3JhdGUsIGRhdGFfcmF0ZSk7
CisJfQorCisJLyoKKwkgKiBCU3BlYyBzdGF0ZXMgdGhhdCB3ZSBhbHdheXMgc2hvdWxkIGhhdmUg
YXQgbGVhc3Qgb25lIGFsbG93ZWQgcG9pbnQKKwkgKiBsZWZ0LCBzbyBpZiB3ZSBjb3VsZG4ndCAt
IHNpbXBseSByZWplY3QgdGhlIGNvbmZpZ3VyYXRpb24gZm9yIG9idmlvdXMKKwkgKiByZWFzb25z
LgorCSAqLworCWlmIChhbGxvd2VkX3BvaW50cyA9PSAwKSB7CisJCURSTV9ERUJVR19LTVMoIk5v
IFFHViBwb2ludHMgcHJvdmlkZSBzdWZmaWNpZW50IG1lbW9yeSIKKwkJCSAgICAgICIgYmFuZHdp
ZHRoIGZvciBkaXNwbGF5IGNvbmZpZ3VyYXRpb24uXG4iKTsKIAkJcmV0dXJuIC1FSU5WQUw7CiAJ
fQogCisJLyoKKwkgKiBMZWF2ZSBvbmx5IHNpbmdsZSBwb2ludCB3aXRoIGhpZ2hlc3QgYmFuZHdp
ZHRoLCBpZgorCSAqIHdlIGNhbid0IGVuYWJsZSBTQUdWIGR1ZSB0byB0aGUgaW5jcmVhc2VkIG1l
bW9yeSBsYXRlbmN5IGl0IG1heQorCSAqIGNhdXNlLgorCSAqLworCWlmICghaW50ZWxfY2FuX2Vu
YWJsZV9zYWd2X2Zvcl9zdGF0ZShzdGF0ZSkpIHsKKwkJYWxsb3dlZF9wb2ludHMgPSAxIDw8IG1h
eF9id19wb2ludDsKKwkJRFJNX0RFQlVHX0tNUygiTm8gU0FHViwgdXNpbmcgc2luZ2xlIFFHViBw
b2ludCAlZFxuIiwKKwkJCSAgICAgIG1heF9id19wb2ludCk7CisJfQorCS8qCisJICogV2Ugc3Rv
cmUgdGhlIG9uZXMgd2hpY2ggbmVlZCB0byBiZSBtYXNrZWQgYXMgdGhhdCBpcyB3aGF0IFBDb2Rl
CisJICogYWN0dWFsbHkgYWNjZXB0cyBhcyBhIHBhcmFtZXRlci4KKwkgKi8KKwluZXdfYndfc3Rh
dGUtPnFndl9wb2ludHNfbWFzayA9ICh+YWxsb3dlZF9wb2ludHMpICYgbWFzazsKKworCURSTV9E
RUJVR19LTVMoIk5ldyBzdGF0ZSAlcCBxZ3YgbWFzayAleFxuIiwKKwkJICAgICAgc3RhdGUsIG5l
d19id19zdGF0ZS0+cWd2X3BvaW50c19tYXNrKTsKKworCW9sZF9id19zdGF0ZSA9IGludGVsX2F0
b21pY19nZXRfb2xkX2J3X3N0YXRlKHN0YXRlKTsKKwlpZiAoSVNfRVJSKG9sZF9id19zdGF0ZSkp
IHsKKwkJRFJNX0RFQlVHX0tNUygiQ291bGQgbm90IGdldCBvbGQgYncgc3RhdGUhXG4iKTsKKwkJ
cmV0dXJuIFBUUl9FUlIob2xkX2J3X3N0YXRlKTsKKwl9CisKKwkvKgorCSAqIElmIHRoZSBhY3R1
YWwgbWFzayBoYWQgY2hhbmdlZCB3ZSBuZWVkIHRvIG1ha2Ugc3VyZSB0aGF0CisJICogdGhlIGNv
bW1pdHMgYXJlIHNlcmlhbGl6ZWQoaW4gY2FzZSB0aGlzIGlzIGEgbm9tb2Rlc2V0LCBub25ibG9j
a2luZykKKwkgKi8KKwlpZiAobmV3X2J3X3N0YXRlLT5xZ3ZfcG9pbnRzX21hc2sgIT0gb2xkX2J3
X3N0YXRlLT5xZ3ZfcG9pbnRzX21hc2spIHsKKwkJcmV0ID0gaW50ZWxfYXRvbWljX3NlcmlhbGl6
ZV9nbG9iYWxfc3RhdGUoJm5ld19id19zdGF0ZS0+YmFzZSk7CisJCWlmIChyZXQpIHsKKwkJCURS
TV9ERUJVR19LTVMoIkNvdWxkIG5vdCBzZXJpYWxpemUgZ2xvYmFsIHN0YXRlXG4iKTsKKwkJCXJl
dHVybiByZXQ7CisJCX0KKwl9CisKIAlyZXR1cm4gMDsKIH0KIApkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9idy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9idy5oCmluZGV4IGZiMTc2MDEyNWY5ZC4uMDcxZGVhZTNhNDI3IDEwMDY0
NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2J3LmgKKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9idy5oCkBAIC0zNiw2ICszNiwxMyBAQCBz
dHJ1Y3QgaW50ZWxfYndfc3RhdGUgewogCSAqLwogCWJvb2wgY2FuX3NhZ3Y7CiAKKwkvKgorCSAq
IEN1cnJlbnQgUUdWIHBvaW50cyBtYXNrLCB3aGljaCByZXN0cmljdHMKKwkgKiBzb21lIHBhcnRp
Y3VsYXIgU0FHViBzdGF0ZXMsIG5vdCB0byBjb25mdXNlCisJICogd2l0aCBwaXBlX3NhZ3ZfbWFz
ay4KKwkgKi8KKwl1OCBxZ3ZfcG9pbnRzX21hc2s7CisKIAl1bnNpZ25lZCBpbnQgZGF0YV9yYXRl
W0k5MTVfTUFYX1BJUEVTXTsKIAl1OCBudW1fYWN0aXZlX3BsYW5lc1tJOTE1X01BWF9QSVBFU107
CiB9OwpAQCAtNTYsNSArNjMsNyBAQCBpbnQgaW50ZWxfYndfaW5pdChzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZSAqZGV2X3ByaXYpOwogaW50IGludGVsX2J3X2F0b21pY19jaGVjayhzdHJ1Y3QgaW50
ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSk7CiB2b2lkIGludGVsX2J3X2NydGNfdXBkYXRlKHN0cnVj
dCBpbnRlbF9id19zdGF0ZSAqYndfc3RhdGUsCiAJCQkgIGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRj
X3N0YXRlICpjcnRjX3N0YXRlKTsKK2ludCBpY2xfcGNvZGVfcmVzdHJpY3RfcWd2X3BvaW50cyhz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCisJCQkJICB1MzIgcG9pbnRzX21hc2sp
OwogCiAjZW5kaWYgLyogX19JTlRFTF9CV19IX18gKi8KZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKaW5kZXggNmE0ZDg4ZTRkNDFhLi5jZDI0OGJkNjk3OTQg
MTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5j
CisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCkBAIC0x
NTQ3Myw2ICsxNTQ3MywxMDUgQEAgc3RhdGljIHZvaWQgaW50ZWxfYXRvbWljX2NsZWFudXBfd29y
ayhzdHJ1Y3Qgd29ya19zdHJ1Y3QgKndvcmspCiAJaW50ZWxfYXRvbWljX2hlbHBlcl9mcmVlX3N0
YXRlKGk5MTUpOwogfQogCitzdGF0aWMgdm9pZCBpbnRlbF9xZ3ZfcG9pbnRzX21hc2soc3RydWN0
IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUpCit7CisJc3RydWN0IGRybV9kZXZpY2UgKmRldiA9
IHN0YXRlLT5iYXNlLmRldjsKKwlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0
b19pOTE1KGRldik7CisJaW50IHJldDsKKwlzdHJ1Y3QgaW50ZWxfYndfc3RhdGUgKm5ld19id19z
dGF0ZSA9IE5VTEw7CisJc3RydWN0IGludGVsX2J3X3N0YXRlICpvbGRfYndfc3RhdGUgPSBOVUxM
OworCXUzMiBuZXdfbWFzayA9IDA7CisJdW5zaWduZWQgaW50IG51bV9xZ3ZfcG9pbnRzID0gZGV2
X3ByaXYtPm1heF9id1swXS5udW1fcWd2X3BvaW50czsKKwl1bnNpZ25lZCBpbnQgbWFzayA9ICgx
IDw8IG51bV9xZ3ZfcG9pbnRzKSAtIDE7CisKKwluZXdfYndfc3RhdGUgPSBpbnRlbF9hdG9taWNf
Z2V0X2J3X3N0YXRlKHN0YXRlKTsKKwlpZiAoSVNfRVJSKG5ld19id19zdGF0ZSkpIHsKKwkJV0FS
TigxLCAiQ291bGQgbm90IGdldCBuZXcgYndfc3RhdGUhXG4iKTsKKwkJcmV0dXJuOworCX0KKwor
CW9sZF9id19zdGF0ZSA9IGludGVsX2F0b21pY19nZXRfb2xkX2J3X3N0YXRlKHN0YXRlKTsKKwlp
ZiAoSVNfRVJSKG9sZF9id19zdGF0ZSkpIHsKKwkJV0FSTigxLCAiQ291bGQgbm90IGdldCBvbGQg
Yndfc3RhdGUhXG4iKTsKKwkJcmV0dXJuOworCX0KKworCW5ld19tYXNrID0gb2xkX2J3X3N0YXRl
LT5xZ3ZfcG9pbnRzX21hc2sgfCBuZXdfYndfc3RhdGUtPnFndl9wb2ludHNfbWFzazsKKworCS8q
CisJICogSWYgbmV3IG1hc2sgaXMgemVybyAtIG1lYW5zIHRoZXJlIGlzIG5vdGhpbmcgdG8gbWFz
aywKKwkgKiB3ZSBjYW4gb25seSB1bm1hc2ssIHdoaWNoIHNob3VsZCBiZSBkb25lIGluIHVubWFz
ay4KKwkgKi8KKwlpZiAoIW5ld19tYXNrKQorCQlyZXR1cm47CisKKwlXQVJOX09OKG5ld19tYXNr
ID09IG1hc2spOworCisJLyoKKwkgKiBKdXN0IHJldHVybiBpZiB3ZSBjYW4ndCBjb250cm9sIFNB
R1Ygb3IgZG9uJ3QgaGF2ZSBpdC4KKwkgKi8KKwlpZiAoIWludGVsX2hhc19zYWd2KGRldl9wcml2
KSkKKwkJcmV0dXJuOworCisJLyoKKwkgKiBSZXN0cmljdCByZXF1aXJlZCBxZ3YgcG9pbnRzIGJl
Zm9yZSB1cGRhdGluZyB0aGUgY29uZmlndXJhdGlvbi4KKwkgKiBBY2NvcmRpbmcgdG8gQlNwZWMg
d2UgY2FuJ3QgbWFzayBhbmQgdW5tYXNrIHFndiBwb2ludHMgYXQgdGhlIHNhbWUKKwkgKiB0aW1l
LiBBbHNvIG1hc2tpbmcgc2hvdWxkIGJlIGRvbmUgYmVmb3JlIHVwZGF0aW5nIHRoZSBjb25maWd1
cmF0aW9uCisJICogYW5kIHVubWFza2luZyBhZnRlcndhcmRzLgorCSAqLworCXJldCA9IGljbF9w
Y29kZV9yZXN0cmljdF9xZ3ZfcG9pbnRzKGRldl9wcml2LCBuZXdfbWFzayk7CisJaWYgKHJldCA8
IDApCisJCURSTV9ERUJVR19LTVMoIkNvdWxkIG5vdCBtYXNrIHJlcXVpcmVkIHFndiBwb2ludHMo
JWQpXG4iLAorCQkJICAgICAgcmV0KTsKK30KKworc3RhdGljIHZvaWQgaW50ZWxfcWd2X3BvaW50
c191bm1hc2soc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUpCit7CisJc3RydWN0IGRy
bV9kZXZpY2UgKmRldiA9IHN0YXRlLT5iYXNlLmRldjsKKwlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0
ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGRldik7CisJaW50IHJldDsKKwlzdHJ1Y3QgaW50ZWxfYndf
c3RhdGUgKm5ld19id19zdGF0ZSA9IE5VTEw7CisJc3RydWN0IGludGVsX2J3X3N0YXRlICpvbGRf
Yndfc3RhdGUgPSBOVUxMOworCXUzMiBuZXdfbWFzayA9IDA7CisKKwluZXdfYndfc3RhdGUgPSBp
bnRlbF9hdG9taWNfZ2V0X2J3X3N0YXRlKHN0YXRlKTsKKwlpZiAoSVNfRVJSKG5ld19id19zdGF0
ZSkpIHsKKwkJV0FSTigxLCAiQ291bGQgbm90IGdldCBuZXcgYndfc3RhdGUhXG4iKTsKKwkJcmV0
dXJuOworCX0KKworCW9sZF9id19zdGF0ZSA9IGludGVsX2F0b21pY19nZXRfb2xkX2J3X3N0YXRl
KHN0YXRlKTsKKwlpZiAoSVNfRVJSKG9sZF9id19zdGF0ZSkpIHsKKwkJV0FSTigxLCAiQ291bGQg
bm90IGdldCBuZXcgYndfc3RhdGUhXG4iKTsKKwkJcmV0dXJuOworCX0KKworCW5ld19tYXNrID0g
bmV3X2J3X3N0YXRlLT5xZ3ZfcG9pbnRzX21hc2s7CisKKwkvKgorCSAqIEp1c3QgcmV0dXJuIGlm
IHdlIGNhbid0IGNvbnRyb2wgU0FHViBvciBkb24ndCBoYXZlIGl0LgorCSAqLworCWlmICghaW50
ZWxfaGFzX3NhZ3YoZGV2X3ByaXYpKQorCQlyZXR1cm47CisKKwkvKgorCSAqIE5vdGhpbmcgdG8g
dW5tYXNrCisJICovCisJaWYgKG5ld19tYXNrID09IG9sZF9id19zdGF0ZS0+cWd2X3BvaW50c19t
YXNrKQorCQlyZXR1cm47CisKKwkvKgorCSAqIEFsbG93IHJlcXVpcmVkIHFndiBwb2ludHMgYWZ0
ZXIgdXBkYXRpbmcgdGhlIGNvbmZpZ3VyYXRpb24uCisJICogQWNjb3JkaW5nIHRvIEJTcGVjIHdl
IGNhbid0IG1hc2sgYW5kIHVubWFzayBxZ3YgcG9pbnRzIGF0IHRoZSBzYW1lCisJICogdGltZS4g
QWxzbyBtYXNraW5nIHNob3VsZCBiZSBkb25lIGJlZm9yZSB1cGRhdGluZyB0aGUgY29uZmlndXJh
dGlvbgorCSAqIGFuZCB1bm1hc2tpbmcgYWZ0ZXJ3YXJkcy4KKwkgKi8KKwlyZXQgPSBpY2xfcGNv
ZGVfcmVzdHJpY3RfcWd2X3BvaW50cyhkZXZfcHJpdiwgbmV3X21hc2spOworCWlmIChyZXQgPCAw
KQorCQlEUk1fREVCVUdfS01TKCJDb3VsZCBub3QgdW5tYXNrIHJlcXVpcmVkIHFndiBwb2ludHMo
JWQpXG4iLAorCQkJICAgICAgcmV0KTsKK30KKwogc3RhdGljIHZvaWQgaW50ZWxfYXRvbWljX2Nv
bW1pdF90YWlsKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlKQogewogCXN0cnVjdCBk
cm1fZGV2aWNlICpkZXYgPSBzdGF0ZS0+YmFzZS5kZXY7CkBAIC0xNTUwNiw2ICsxNTYwNSwxNCBA
QCBzdGF0aWMgdm9pZCBpbnRlbF9hdG9taWNfY29tbWl0X3RhaWwoc3RydWN0IGludGVsX2F0b21p
Y19zdGF0ZSAqc3RhdGUpCiAJZm9yX2VhY2hfbmV3X2ludGVsX2NydGNfaW5fc3RhdGUoc3RhdGUs
IGNydGMsIG5ld19jcnRjX3N0YXRlLCBpKQogCQljcnRjLT5jb25maWcgPSBuZXdfY3J0Y19zdGF0
ZTsKIAorCS8qCisJICogTm93IHdlIG5lZWQgdG8gY2hlY2sgaWYgU0FHViBuZWVkcyB0byBiZSBk
aXNhYmxlZChpLmUgUUdWIHBvaW50cworCSAqIG1vZGlmaWVkIGV2ZW4sIHdoZW4gbm8gbW9kZXNl
dCBpcyBkb25lKGZvciBleGFtcGxlIHBsYW5lIHVwZGF0ZXMKKwkgKiBjYW4gbm93IHRyaWdnZXIg
dGhhdCkuCisJICovCisJaWYgKChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDExKSkKKwkJaW50ZWxf
cWd2X3BvaW50c19tYXNrKHN0YXRlKTsKKwogCWlmIChzdGF0ZS0+bW9kZXNldCkgewogCQlkcm1f
YXRvbWljX2hlbHBlcl91cGRhdGVfbGVnYWN5X21vZGVzZXRfc3RhdGUoZGV2LCAmc3RhdGUtPmJh
c2UpOwogCkBAIC0xNTYyMCw2ICsxNTcyNyw4IEBAIHN0YXRpYyB2b2lkIGludGVsX2F0b21pY19j
b21taXRfdGFpbChzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSkKIAlpZiAoSU5URUxf
R0VOKGRldl9wcml2KSA8IDExKSB7CiAJCWlmIChzdGF0ZS0+bW9kZXNldCAmJiBpbnRlbF9jYW5f
ZW5hYmxlX3NhZ3YoZGV2X3ByaXYpKQogCQkJaW50ZWxfZW5hYmxlX3NhZ3YoZGV2X3ByaXYpOwor
CX0gZWxzZSB7CisJCWludGVsX3Fndl9wb2ludHNfdW5tYXNrKHN0YXRlKTsKIAl9CiAKIAlkcm1f
YXRvbWljX2hlbHBlcl9jb21taXRfaHdfZG9uZSgmc3RhdGUtPmJhc2UpOwpkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfZHJ2LmgKaW5kZXggOTkyOGQwMGVhMGIxLi4xMTQzZjY3YmJhMGEgMTAwNjQ0Ci0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9kcnYuaApAQCAtODQxLDYgKzg0MSw5IEBAIGVudW0gaW50ZWxfcGlwZV9jcmNfc291cmNl
IHsKIAlJTlRFTF9QSVBFX0NSQ19TT1VSQ0VfTUFYLAogfTsKIAorLyogQlNwZWMgcHJlY2lzZWx5
IGRlZmluZXMgdGhpcyAqLworI2RlZmluZSBOVU1fU0FHVl9QT0lOVFMgOAorCiAjZGVmaW5lIElO
VEVMX1BJUEVfQ1JDX0VOVFJJRVNfTlIJMTI4CiBzdHJ1Y3QgaW50ZWxfcGlwZV9jcmMgewogCXNw
aW5sb2NrX3QgbG9jazsKLS0gCjIuMjQuMS40ODUuZ2FkMDVhM2Q4ZTUKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
