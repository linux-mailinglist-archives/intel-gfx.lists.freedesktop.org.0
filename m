Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1159F1B56DE
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Apr 2020 10:02:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1688D6E40D;
	Thu, 23 Apr 2020 08:02:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2902C6E392
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Apr 2020 08:02:31 +0000 (UTC)
IronPort-SDR: po9X30woJBX5fee+aY9MyH0XVdD+X5f9Y7FPS0UkIYLpcgL4uiWIlJ6tTYRxa95ydV47Jad5Wr
 sxlQXIpj2Quw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2020 01:02:31 -0700
IronPort-SDR: 7BbI4wF/3QAC7CnBs7RJv1NYMV2Az85Znz2HzxH4nDJQhqYeLQ0y+dK6xDThHE0ADMUJ1O/ZP1
 6kW52nJUrRtg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,306,1583222400"; d="scan'208";a="259344485"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.89])
 by orsmga006.jf.intel.com with ESMTP; 23 Apr 2020 01:02:29 -0700
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 23 Apr 2020 10:59:01 +0300
Message-Id: <20200423075902.21892-9-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.24.1.485.gad05a3d8e5
In-Reply-To: <20200423075902.21892-1-stanislav.lisovskiy@intel.com>
References: <20200423075902.21892-1-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v26 8/9] drm/i915: Restrict qgv points which
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
b3IgbmVhciBhdG9taWMgZ2xvYmFsIHN0YXRlIGxvY2tpbmcgaW4KICAgICAgIGJ3IGNvZGUuCgp2
MTY6IC0gRml4ZWQgaW50ZWxfYXRvbWljX2J3XyogZnVuY3Rpb25zIHRvIGJlIGludGVsX2J3Xyog
YXMgZGlzY3Vzc2VkCiAgICAgICB3aXRoIEphbmkgTmlrdWxhLgogICAgIC0gVGFrZSBid19zdGF0
ZV9jaGFuZ2VkIGZsYWcgaW50byB1c2UuCgp2MTc6IC0gTW92ZWQgcWd2IHBvaW50IHJlbGF0ZWQg
bWFuaXB1bGF0aW9ucyBuZXh0IHRvIFNBR1YgY29kZSwgYXMKICAgICAgIHRob3NlIGFyZSBzZW1h
bnRpY2FsbHkgcmVsYXRlZChWaWxsZSBTeXJqw6Rsw6QpCiAgICAgLSBSZW5hbWVkIHRob3NlIGlu
dG8gaW50ZWxfc2Fndl8ocHJlKXwocG9zdClfcGxhbmVfdXBkYXRlCiAgICAgICAoVmlsbGUgU3ly
asOkbMOkKQoKdjE4OiAtIE1vdmUgc2FndiByZWxhdGVkIGNhbGxzIGZyb20gY29tbWl0IHRhaWwg
aW50bwogICAgICAgaW50ZWxfc2Fndl8ocHJlKXwocG9zdClfcGxhbmVfdXBkYXRlKFZpbGxlIFN5
cmrDpGzDpCkKCnYxOTogLSBVc2UgaW50ZWxfYXRvbWljX2dldF9id18ob2xkKXwobmV3KV9zdGF0
ZSB3aGljaCBpcyBpbnRlbmRlZAogICAgICAgZm9yIGNvbW1pdCB0YWlsIHN0YWdlLgoKdjIwOiAt
IFJldHVybiBtYXggYmFuZHdpZHRoIGZvciAwIHBsYW5lcyhWaWxsZSkKICAgICAtIENvbnN0aWZ5
IG9sZF9id19zdGF0ZSBpbiBid19hdG9taWNfY2hlY2soVmlsbGUpCiAgICAgLSBSZW1vdmVkIHNv
bWUgZGVidWdzKFZpbGxlKQogICAgIC0gQWRkZWQgZGF0YSByYXRlIHRvIGRlYnVnIHByaW50IHdo
ZW4gbm8gUUdWIHBvaW50cyhWaWxsZSkKICAgICAtIFJlbW92ZWQgc29tZSBjb21tZW50cyhWaWxs
ZSkKCnYyMSwgdjIyLCB2MjM6IC0gRml4ZWQgcmViYXNlIGNvbmZsaWN0CgpTaWduZWQtb2ZmLWJ5
OiBTdGFuaXNsYXYgTGlzb3Zza2l5IDxzdGFuaXNsYXYubGlzb3Zza2l5QGludGVsLmNvbT4KQ2M6
IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBpbnRlbC5jb20+CkNjOiBKYW1lcyBBdXNt
dXMgPGphbWVzLmF1c211c0BpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9idy5jICAgICAgIHwgMTM5ICsrKysrKysrKysrKystLS0tLQogZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9idy5oICAgICAgIHwgICA5ICsrCiAuLi4vZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmggICAgfCAgIDMgKwogZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaW50ZWxfcG0uYyAgICAgICAgICAgICAgIHwgIDY2ICsrKysrKysrLQogZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uaCAgICAgICAgICAgICAgIHwgICAyICsKIDUgZmlsZXMg
Y2hhbmdlZCwgMTgxIGluc2VydGlvbnMoKyksIDM4IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYncuYyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfYncuYwppbmRleCA2ZTdjYzNhNGYxYWEuLmY3YzA0ZjA3Yjdj
ZiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9idy5jCisr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYncuYwpAQCAtOCw2ICs4LDkg
QEAKICNpbmNsdWRlICJpbnRlbF9idy5oIgogI2luY2x1ZGUgImludGVsX2Rpc3BsYXlfdHlwZXMu
aCIKICNpbmNsdWRlICJpbnRlbF9zaWRlYmFuZC5oIgorI2luY2x1ZGUgImludGVsX2F0b21pYy5o
IgorI2luY2x1ZGUgImludGVsX3BtLmgiCisKIAogLyogUGFyYW1ldGVycyBmb3IgUWNsayBHZXlz
ZXJ2aWxsZSAoUUdWKSAqLwogc3RydWN0IGludGVsX3Fndl9wb2ludCB7CkBAIC0xMTMsNiArMTE2
LDI2IEBAIHN0YXRpYyBpbnQgaWNsX3Bjb2RlX3JlYWRfcWd2X3BvaW50X2luZm8oc3RydWN0IGRy
bV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAogCXJldHVybiAwOwogfQogCitpbnQgaWNsX3Bjb2Rl
X3Jlc3RyaWN0X3Fndl9wb2ludHMoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAor
CQkJCSAgdTMyIHBvaW50c19tYXNrKQoreworCWludCByZXQ7CisKKwkvKiBic3BlYyBzYXlzIHRv
IGtlZXAgcmV0cnlpbmcgZm9yIGF0IGxlYXN0IDEgbXMgKi8KKwlyZXQgPSBza2xfcGNvZGVfcmVx
dWVzdChkZXZfcHJpdiwgSUNMX1BDT0RFX1NBR1ZfREVfTUVNX1NTX0NPTkZJRywKKwkJCQlwb2lu
dHNfbWFzaywKKwkJCQlHRU4xMV9QQ09ERV9QT0lOVFNfUkVTVFJJQ1RFRF9NQVNLLAorCQkJCUdF
TjExX1BDT0RFX1BPSU5UU19SRVNUUklDVEVELAorCQkJCTEpOworCisJaWYgKHJldCA8IDApIHsK
KwkJRFJNX0VSUk9SKCJGYWlsZWQgdG8gZGlzYWJsZSBxZ3YgcG9pbnRzICglZClcbiIsIHJldCk7
CisJCXJldHVybiByZXQ7CisJfQorCisJcmV0dXJuIDA7Cit9CisKIHN0YXRpYyBpbnQgaWNsX2dl
dF9xZ3ZfcG9pbnRzKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKIAkJCSAgICAg
IHN0cnVjdCBpbnRlbF9xZ3ZfaW5mbyAqcWkpCiB7CkBAIC0yNDAsNiArMjYzLDE2IEBAIHN0YXRp
YyBpbnQgaWNsX2dldF9id19pbmZvKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwg
Y29uc3Qgc3RydWN0IGludGVsCiAJCQlicmVhazsKIAl9CiAKKwkvKgorCSAqIEluIGNhc2UgaWYg
U0FHViBpcyBkaXNhYmxlZCBpbiBCSU9TLCB3ZSBhbHdheXMgZ2V0IDEKKwkgKiBTQUdWIHBvaW50
LCBidXQgd2UgY2FuJ3Qgc2VuZCBQQ29kZSBjb21tYW5kcyB0byByZXN0cmljdCBpdAorCSAqIGFz
IGl0IHdpbGwgZmFpbCBhbmQgcG9pbnRsZXNzIGFueXdheS4KKwkgKi8KKwlpZiAocWkubnVtX3Bv
aW50cyA9PSAxKQorCQlkZXZfcHJpdi0+c2Fndl9zdGF0dXMgPSBJOTE1X1NBR1ZfTk9UX0NPTlRS
T0xMRUQ7CisJZWxzZQorCQlkZXZfcHJpdi0+c2Fndl9zdGF0dXMgPSBJOTE1X1NBR1ZfRU5BQkxF
RDsKKwogCXJldHVybiAwOwogfQogCkBAIC0yNDgsNiArMjgxLDExIEBAIHN0YXRpYyB1bnNpZ25l
ZCBpbnQgaWNsX21heF9idyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCiB7CiAJ
aW50IGk7CiAKKwkvKgorCSAqIExldCdzIHJldHVybiBtYXggYncgZm9yIDAgcGxhbmVzCisJICov
CisJbnVtX3BsYW5lcyA9IG1heCgxLCBudW1fcGxhbmVzKTsKKwogCWZvciAoaSA9IDA7IGkgPCBB
UlJBWV9TSVpFKGRldl9wcml2LT5tYXhfYncpOyBpKyspIHsKIAkJY29uc3Qgc3RydWN0IGludGVs
X2J3X2luZm8gKmJpID0KIAkJCSZkZXZfcHJpdi0+bWF4X2J3W2ldOwpAQCAtMjc3LDM0ICszMTUs
NiBAQCB2b2lkIGludGVsX2J3X2luaXRfaHcoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9w
cml2KQogCQlpY2xfZ2V0X2J3X2luZm8oZGV2X3ByaXYsICZpY2xfc2FfaW5mbyk7CiB9CiAKLXN0
YXRpYyB1bnNpZ25lZCBpbnQgaW50ZWxfbWF4X2RhdGFfcmF0ZShzdHJ1Y3QgZHJtX2k5MTVfcHJp
dmF0ZSAqZGV2X3ByaXYsCi0JCQkJCWludCBudW1fcGxhbmVzKQotewotCWlmIChJTlRFTF9HRU4o
ZGV2X3ByaXYpID49IDExKSB7Ci0JCS8qCi0JCSAqIEFueSBidyBncm91cCBoYXMgc2FtZSBhbW91
bnQgb2YgUUdWIHBvaW50cwotCQkgKi8KLQkJY29uc3Qgc3RydWN0IGludGVsX2J3X2luZm8gKmJp
ID0KLQkJCSZkZXZfcHJpdi0+bWF4X2J3WzBdOwotCQl1bnNpZ25lZCBpbnQgbWluX2J3ID0gVUlO
VF9NQVg7Ci0JCWludCBpOwotCi0JCS8qCi0JCSAqIEZJWE1FIHdpdGggU0FHViBkaXNhYmxlZCBt
YXliZSB3ZSBjYW4gYXNzdW1lCi0JCSAqIHBvaW50IDEgd2lsbCBhbHdheXMgYmUgdXNlZD8gU2Vl
bXMgdG8gbWF0Y2gKLQkJICogdGhlIGJlaGF2aW91ciBvYnNlcnZlZCBpbiB0aGUgd2lsZC4KLQkJ
ICovCi0JCWZvciAoaSA9IDA7IGkgPCBiaS0+bnVtX3Fndl9wb2ludHM7IGkrKykgewotCQkJdW5z
aWduZWQgaW50IGJ3ID0gaWNsX21heF9idyhkZXZfcHJpdiwgbnVtX3BsYW5lcywgaSk7Ci0KLQkJ
CW1pbl9idyA9IG1pbihidywgbWluX2J3KTsKLQkJfQotCQlyZXR1cm4gbWluX2J3OwotCX0gZWxz
ZSB7Ci0JCXJldHVybiBVSU5UX01BWDsKLQl9Ci19Ci0KIHN0YXRpYyB1bnNpZ25lZCBpbnQgaW50
ZWxfYndfY3J0Y19udW1fYWN0aXZlX3BsYW5lcyhjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0
ZSAqY3J0Y19zdGF0ZSkKIHsKIAkvKgpAQCAtNDE1LDEwICs0MjUsMTUgQEAgaW50IGludGVsX2J3
X2F0b21pY19jaGVjayhzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSkKIAlzdHJ1Y3Qg
ZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KHN0YXRlLT5iYXNlLmRldik7CiAJ
c3RydWN0IGludGVsX2NydGNfc3RhdGUgKm5ld19jcnRjX3N0YXRlLCAqb2xkX2NydGNfc3RhdGU7
CiAJc3RydWN0IGludGVsX2J3X3N0YXRlICpuZXdfYndfc3RhdGUgPSBOVUxMOwotCXVuc2lnbmVk
IGludCBkYXRhX3JhdGUsIG1heF9kYXRhX3JhdGU7CisJY29uc3Qgc3RydWN0IGludGVsX2J3X3N0
YXRlICpvbGRfYndfc3RhdGUgPSBOVUxMOworCXVuc2lnbmVkIGludCBkYXRhX3JhdGU7CiAJdW5z
aWduZWQgaW50IG51bV9hY3RpdmVfcGxhbmVzOwogCXN0cnVjdCBpbnRlbF9jcnRjICpjcnRjOwog
CWludCBpLCByZXQ7CisJdTMyIGFsbG93ZWRfcG9pbnRzID0gMDsKKwl1bnNpZ25lZCBpbnQgbWF4
X2J3X3BvaW50ID0gMCwgbWF4X2J3ID0gMDsKKwl1bnNpZ25lZCBpbnQgbnVtX3Fndl9wb2ludHMg
PSBkZXZfcHJpdi0+bWF4X2J3WzBdLm51bV9xZ3ZfcG9pbnRzOworCXUzMiBtYXNrID0gKDEgPDwg
bnVtX3Fndl9wb2ludHMpIC0gMTsKIAogCS8qIEZJWE1FIGVhcmxpZXIgZ2VucyBuZWVkIHNvbWUg
Y2hlY2tzIHRvbyAqLwogCWlmIChJTlRFTF9HRU4oZGV2X3ByaXYpIDwgMTEpCkBAIC00NjUsMTkg
KzQ4MCw3MyBAQCBpbnQgaW50ZWxfYndfYXRvbWljX2NoZWNrKHN0cnVjdCBpbnRlbF9hdG9taWNf
c3RhdGUgKnN0YXRlKQogCQlyZXR1cm4gcmV0OwogCiAJZGF0YV9yYXRlID0gaW50ZWxfYndfZGF0
YV9yYXRlKGRldl9wcml2LCBuZXdfYndfc3RhdGUpOworCWRhdGFfcmF0ZSA9IERJVl9ST1VORF9V
UChkYXRhX3JhdGUsIDEwMDApOworCiAJbnVtX2FjdGl2ZV9wbGFuZXMgPSBpbnRlbF9id19udW1f
YWN0aXZlX3BsYW5lcyhkZXZfcHJpdiwgbmV3X2J3X3N0YXRlKTsKIAotCW1heF9kYXRhX3JhdGUg
PSBpbnRlbF9tYXhfZGF0YV9yYXRlKGRldl9wcml2LCBudW1fYWN0aXZlX3BsYW5lcyk7CisJZm9y
IChpID0gMDsgaSA8IG51bV9xZ3ZfcG9pbnRzOyBpKyspIHsKKwkJdW5zaWduZWQgaW50IG1heF9k
YXRhX3JhdGU7CiAKLQlkYXRhX3JhdGUgPSBESVZfUk9VTkRfVVAoZGF0YV9yYXRlLCAxMDAwKTsK
KwkJbWF4X2RhdGFfcmF0ZSA9IGljbF9tYXhfYncoZGV2X3ByaXYsIG51bV9hY3RpdmVfcGxhbmVz
LCBpKTsKKwkJLyoKKwkJICogV2UgbmVlZCB0byBrbm93IHdoaWNoIHFndiBwb2ludCBnaXZlcyB1
cworCQkgKiBtYXhpbXVtIGJhbmR3aWR0aCBpbiBvcmRlciB0byBkaXNhYmxlIFNBR1YKKwkJICog
aWYgd2UgZmluZCB0aGF0IHdlIGV4Y2VlZCBTQUdWIGJsb2NrIHRpbWUKKwkJICogd2l0aCB3YXRl
cm1hcmtzLiBCeSB0aGF0IG1vbWVudCB3ZSBhbHJlYWR5CisJCSAqIGhhdmUgdGhvc2UsIGFzIGl0
IGlzIGNhbGN1bGF0ZWQgZWFybGllciBpbgorCQkgKiBpbnRlbF9hdG9taWNfY2hlY2ssCisJCSAq
LworCQlpZiAobWF4X2RhdGFfcmF0ZSA+IG1heF9idykgeworCQkJbWF4X2J3X3BvaW50ID0gaTsK
KwkJCW1heF9idyA9IG1heF9kYXRhX3JhdGU7CisJCX0KKwkJaWYgKG1heF9kYXRhX3JhdGUgPj0g
ZGF0YV9yYXRlKQorCQkJYWxsb3dlZF9wb2ludHMgfD0gQklUKGkpOworCQlEUk1fREVCVUdfS01T
KCJRR1YgcG9pbnQgJWQ6IG1heCBidyAlZCByZXF1aXJlZCAlZFxuIiwKKwkJCSAgICAgIGksIG1h
eF9kYXRhX3JhdGUsIGRhdGFfcmF0ZSk7CisJfQogCi0JaWYgKGRhdGFfcmF0ZSA+IG1heF9kYXRh
X3JhdGUpIHsKLQkJZHJtX2RiZ19rbXMoJmRldl9wcml2LT5kcm0sCi0JCQkgICAgIkJhbmR3aWR0
aCAldSBNQi9zIGV4Y2VlZHMgbWF4IGF2YWlsYWJsZSAlZCBNQi9zICglZCBhY3RpdmUgcGxhbmVz
KVxuIiwKLQkJCSAgICBkYXRhX3JhdGUsIG1heF9kYXRhX3JhdGUsIG51bV9hY3RpdmVfcGxhbmVz
KTsKKwkvKgorCSAqIEJTcGVjIHN0YXRlcyB0aGF0IHdlIGFsd2F5cyBzaG91bGQgaGF2ZSBhdCBs
ZWFzdCBvbmUgYWxsb3dlZCBwb2ludAorCSAqIGxlZnQsIHNvIGlmIHdlIGNvdWxkbid0IC0gc2lt
cGx5IHJlamVjdCB0aGUgY29uZmlndXJhdGlvbiBmb3Igb2J2aW91cworCSAqIHJlYXNvbnMuCisJ
ICovCisJaWYgKGFsbG93ZWRfcG9pbnRzID09IDApIHsKKwkJRFJNX0RFQlVHX0tNUygiTm8gUUdW
IHBvaW50cyBwcm92aWRlIHN1ZmZpY2llbnQgbWVtb3J5IgorCQkJICAgICAgIiBiYW5kd2lkdGgg
JWQgZm9yIGRpc3BsYXkgY29uZmlndXJhdGlvbi5cbiIsIGRhdGFfcmF0ZSk7CiAJCXJldHVybiAt
RUlOVkFMOwogCX0KIAorCS8qCisJICogTGVhdmUgb25seSBzaW5nbGUgcG9pbnQgd2l0aCBoaWdo
ZXN0IGJhbmR3aWR0aCwgaWYKKwkgKiB3ZSBjYW4ndCBlbmFibGUgU0FHViBkdWUgdG8gdGhlIGlu
Y3JlYXNlZCBtZW1vcnkgbGF0ZW5jeSBpdCBtYXkKKwkgKiBjYXVzZS4KKwkgKi8KKwlpZiAoIWlu
dGVsX2Nhbl9lbmFibGVfc2FndihuZXdfYndfc3RhdGUpKSB7CisJCWFsbG93ZWRfcG9pbnRzID0g
QklUKG1heF9id19wb2ludCk7CisJCURSTV9ERUJVR19LTVMoIk5vIFNBR1YsIHVzaW5nIHNpbmds
ZSBRR1YgcG9pbnQgJWRcbiIsCisJCQkgICAgICBtYXhfYndfcG9pbnQpOworCX0KKwkvKgorCSAq
IFdlIHN0b3JlIHRoZSBvbmVzIHdoaWNoIG5lZWQgdG8gYmUgbWFza2VkIGFzIHRoYXQgaXMgd2hh
dCBQQ29kZQorCSAqIGFjdHVhbGx5IGFjY2VwdHMgYXMgYSBwYXJhbWV0ZXIuCisJICovCisJbmV3
X2J3X3N0YXRlLT5xZ3ZfcG9pbnRzX21hc2sgPSAofmFsbG93ZWRfcG9pbnRzKSAmIG1hc2s7CisK
KwlvbGRfYndfc3RhdGUgPSBpbnRlbF9hdG9taWNfZ2V0X29sZF9id19zdGF0ZShzdGF0ZSk7CisJ
aWYgKCFvbGRfYndfc3RhdGUpCisJCXJldHVybiAtRUlOVkFMOworCisJLyoKKwkgKiBJZiB0aGUg
YWN0dWFsIG1hc2sgaGFkIGNoYW5nZWQgd2UgbmVlZCB0byBtYWtlIHN1cmUgdGhhdAorCSAqIHRo
ZSBjb21taXRzIGFyZSBzZXJpYWxpemVkKGluIGNhc2UgdGhpcyBpcyBhIG5vbW9kZXNldCwgbm9u
YmxvY2tpbmcpCisJICovCisJaWYgKG5ld19id19zdGF0ZS0+cWd2X3BvaW50c19tYXNrICE9IG9s
ZF9id19zdGF0ZS0+cWd2X3BvaW50c19tYXNrKSB7CisJCXJldCA9IGludGVsX2F0b21pY19zZXJp
YWxpemVfZ2xvYmFsX3N0YXRlKCZuZXdfYndfc3RhdGUtPmJhc2UpOworCQlpZiAocmV0KQorCQkJ
cmV0dXJuIHJldDsKKwl9CisKIAlyZXR1cm4gMDsKIH0KIApkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9idy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9idy5oCmluZGV4IDg5OGI0YTg1Y2NhYi4uYmJjYWFhNzNlYzFiIDEwMDY0NAot
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2J3LmgKKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9idy5oCkBAIC0yNCw2ICsyNCwxMyBAQCBzdHJ1
Y3QgaW50ZWxfYndfc3RhdGUgewogCSAqLwogCXU4IHBpcGVfc2Fndl9yZWplY3Q7CiAKKwkvKgor
CSAqIEN1cnJlbnQgUUdWIHBvaW50cyBtYXNrLCB3aGljaCByZXN0cmljdHMKKwkgKiBzb21lIHBh
cnRpY3VsYXIgU0FHViBzdGF0ZXMsIG5vdCB0byBjb25mdXNlCisJICogd2l0aCBwaXBlX3NhZ3Zf
bWFzay4KKwkgKi8KKwl1OCBxZ3ZfcG9pbnRzX21hc2s7CisKIAl1bnNpZ25lZCBpbnQgZGF0YV9y
YXRlW0k5MTVfTUFYX1BJUEVTXTsKIAl1OCBudW1fYWN0aXZlX3BsYW5lc1tJOTE1X01BWF9QSVBF
U107CiAKQEAgLTQ3LDUgKzU0LDcgQEAgaW50IGludGVsX2J3X2luaXQoc3RydWN0IGRybV9pOTE1
X3ByaXZhdGUgKmRldl9wcml2KTsKIGludCBpbnRlbF9id19hdG9taWNfY2hlY2soc3RydWN0IGlu
dGVsX2F0b21pY19zdGF0ZSAqc3RhdGUpOwogdm9pZCBpbnRlbF9id19jcnRjX3VwZGF0ZShzdHJ1
Y3QgaW50ZWxfYndfc3RhdGUgKmJ3X3N0YXRlLAogCQkJICBjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0
Y19zdGF0ZSAqY3J0Y19zdGF0ZSk7CitpbnQgaWNsX3Bjb2RlX3Jlc3RyaWN0X3Fndl9wb2ludHMo
c3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAorCQkJCSAgdTMyIHBvaW50c19tYXNr
KTsKIAogI2VuZGlmIC8qIF9fSU5URUxfQldfSF9fICovCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaCBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oCmluZGV4IDIzYTQyNWU1NjVhOC4u
OTJkYjliMGFiMzgxIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2Rpc3BsYXlfdHlwZXMuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2Rpc3BsYXlfdHlwZXMuaApAQCAtNjkzLDYgKzY5Myw5IEBAIHN0cnVjdCBza2xfcGxhbmVf
d20gewogCWJvb2wgaXNfcGxhbmFyOwogfTsKIAorLyogQlNwZWMgcHJlY2lzZWx5IGRlZmluZXMg
dGhpcyAqLworI2RlZmluZSBOVU1fU0FHVl9QT0lOVFMgOAorCiBzdHJ1Y3Qgc2tsX3BpcGVfd20g
ewogCXN0cnVjdCBza2xfcGxhbmVfd20gcGxhbmVzW0k5MTVfTUFYX1BMQU5FU107CiAJYm9vbCBj
YW5fc2FndjsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmMgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jCmluZGV4IGVlZWU0NzA3ZDY3Mi4uNDc5ZjI2
YmY2YzQ4IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jCisrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmMKQEAgLTM3NjEsNyArMzc2MSwxMCBAQCBp
bnRlbF9kaXNhYmxlX3NhZ3Yoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQogdm9p
ZCBpbnRlbF9zYWd2X3ByZV9wbGFuZV91cGRhdGUoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAq
c3RhdGUpCiB7CiAJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShz
dGF0ZS0+YmFzZS5kZXYpOworCWludCByZXQ7CiAJY29uc3Qgc3RydWN0IGludGVsX2J3X3N0YXRl
ICpuZXdfYndfc3RhdGU7CisJY29uc3Qgc3RydWN0IGludGVsX2J3X3N0YXRlICpvbGRfYndfc3Rh
dGU7CisJdTMyIG5ld19tYXNrID0gMDsKIAogCS8qCiAJICogSnVzdCByZXR1cm4gaWYgd2UgY2Fu
J3QgY29udHJvbCBTQUdWIG9yIGRvbid0IGhhdmUgaXQuCkBAIC0zNzc3LDE1ICszNzgwLDQ4IEBA
IHZvaWQgaW50ZWxfc2Fndl9wcmVfcGxhbmVfdXBkYXRlKHN0cnVjdCBpbnRlbF9hdG9taWNfc3Rh
dGUgKnN0YXRlKQogCWlmICghbmV3X2J3X3N0YXRlKQogCQlyZXR1cm47CiAKLQlpZiAoIWludGVs
X2Nhbl9lbmFibGVfc2FndihuZXdfYndfc3RhdGUpKQorCWlmIChJTlRFTF9HRU4oZGV2X3ByaXYp
IDwgMTEgJiYgIWludGVsX2Nhbl9lbmFibGVfc2FndihuZXdfYndfc3RhdGUpKSB7CiAJCWludGVs
X2Rpc2FibGVfc2FndihkZXZfcHJpdik7CisJCXJldHVybjsKKwl9CisKKwlvbGRfYndfc3RhdGUg
PSBpbnRlbF9hdG9taWNfZ2V0X29sZF9id19zdGF0ZShzdGF0ZSk7CisJaWYgKCFvbGRfYndfc3Rh
dGUpCisJCXJldHVybjsKKworCS8qCisJICogTm90aGluZyB0byBtYXNrCisJICovCisJaWYgKG5l
d19id19zdGF0ZS0+cWd2X3BvaW50c19tYXNrID09IG9sZF9id19zdGF0ZS0+cWd2X3BvaW50c19t
YXNrKQorCQlyZXR1cm47CisKKwluZXdfbWFzayA9IG9sZF9id19zdGF0ZS0+cWd2X3BvaW50c19t
YXNrIHwgbmV3X2J3X3N0YXRlLT5xZ3ZfcG9pbnRzX21hc2s7CisKKwkvKgorCSAqIElmIG5ldyBt
YXNrIGlzIHplcm8gLSBtZWFucyB0aGVyZSBpcyBub3RoaW5nIHRvIG1hc2ssCisJICogd2UgY2Fu
IG9ubHkgdW5tYXNrLCB3aGljaCBzaG91bGQgYmUgZG9uZSBpbiB1bm1hc2suCisJICovCisJaWYg
KCFuZXdfbWFzaykKKwkJcmV0dXJuOworCisJLyoKKwkgKiBSZXN0cmljdCByZXF1aXJlZCBxZ3Yg
cG9pbnRzIGJlZm9yZSB1cGRhdGluZyB0aGUgY29uZmlndXJhdGlvbi4KKwkgKiBBY2NvcmRpbmcg
dG8gQlNwZWMgd2UgY2FuJ3QgbWFzayBhbmQgdW5tYXNrIHFndiBwb2ludHMgYXQgdGhlIHNhbWUK
KwkgKiB0aW1lLiBBbHNvIG1hc2tpbmcgc2hvdWxkIGJlIGRvbmUgYmVmb3JlIHVwZGF0aW5nIHRo
ZSBjb25maWd1cmF0aW9uCisJICogYW5kIHVubWFza2luZyBhZnRlcndhcmRzLgorCSAqLworCXJl
dCA9IGljbF9wY29kZV9yZXN0cmljdF9xZ3ZfcG9pbnRzKGRldl9wcml2LCBuZXdfbWFzayk7CisJ
aWYgKHJldCA8IDApCisJCWRybV9lcnIoJmRldl9wcml2LT5kcm0sICJDb3VsZCBub3QgbWFzayBy
ZXF1aXJlZCBxZ3YgcG9pbnRzKCVkKVxuIiwgcmV0KTsKIH0KIAogdm9pZCBpbnRlbF9zYWd2X3Bv
c3RfcGxhbmVfdXBkYXRlKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlKQogewogCXN0
cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoc3RhdGUtPmJhc2UuZGV2
KTsKKwlpbnQgcmV0OwogCWNvbnN0IHN0cnVjdCBpbnRlbF9id19zdGF0ZSAqbmV3X2J3X3N0YXRl
OwotCisJY29uc3Qgc3RydWN0IGludGVsX2J3X3N0YXRlICpvbGRfYndfc3RhdGU7CisJdTMyIG5l
d19tYXNrID0gMDsKIAkvKgogCSAqIEp1c3QgcmV0dXJuIGlmIHdlIGNhbid0IGNvbnRyb2wgU0FH
ViBvciBkb24ndCBoYXZlIGl0LgogCSAqIFRoaXMgaXMgZGlmZmVyZW50IGZyb20gc2l0dWF0aW9u
IHdoZW4gd2UgaGF2ZSBTQUdWIGJ1dCBqdXN0IGNhbid0CkBAIC0zODAwLDggKzM4MzYsMzIgQEAg
dm9pZCBpbnRlbF9zYWd2X3Bvc3RfcGxhbmVfdXBkYXRlKHN0cnVjdCBpbnRlbF9hdG9taWNfc3Rh
dGUgKnN0YXRlKQogCWlmICghbmV3X2J3X3N0YXRlKQogCQlyZXR1cm47CiAKLQlpZiAoaW50ZWxf
Y2FuX2VuYWJsZV9zYWd2KG5ld19id19zdGF0ZSkpCisJaWYgKElOVEVMX0dFTihkZXZfcHJpdikg
PCAxMSAmJiBpbnRlbF9jYW5fZW5hYmxlX3NhZ3YobmV3X2J3X3N0YXRlKSkgewogCQlpbnRlbF9l
bmFibGVfc2FndihkZXZfcHJpdik7CisJCXJldHVybjsKKwl9CisKKwlvbGRfYndfc3RhdGUgPSBp
bnRlbF9hdG9taWNfZ2V0X29sZF9id19zdGF0ZShzdGF0ZSk7CisJaWYgKCFvbGRfYndfc3RhdGUp
CisJCXJldHVybjsKKworCS8qCisJICogTm90aGluZyB0byB1bm1hc2sKKwkgKi8KKwlpZiAobmV3
X2J3X3N0YXRlLT5xZ3ZfcG9pbnRzX21hc2sgPT0gb2xkX2J3X3N0YXRlLT5xZ3ZfcG9pbnRzX21h
c2spCisJCXJldHVybjsKKworCW5ld19tYXNrID0gbmV3X2J3X3N0YXRlLT5xZ3ZfcG9pbnRzX21h
c2s7CisKKwkvKgorCSAqIEFsbG93IHJlcXVpcmVkIHFndiBwb2ludHMgYWZ0ZXIgdXBkYXRpbmcg
dGhlIGNvbmZpZ3VyYXRpb24uCisJICogQWNjb3JkaW5nIHRvIEJTcGVjIHdlIGNhbid0IG1hc2sg
YW5kIHVubWFzayBxZ3YgcG9pbnRzIGF0IHRoZSBzYW1lCisJICogdGltZS4gQWxzbyBtYXNraW5n
IHNob3VsZCBiZSBkb25lIGJlZm9yZSB1cGRhdGluZyB0aGUgY29uZmlndXJhdGlvbgorCSAqIGFu
ZCB1bm1hc2tpbmcgYWZ0ZXJ3YXJkcy4KKwkgKi8KKwlyZXQgPSBpY2xfcGNvZGVfcmVzdHJpY3Rf
cWd2X3BvaW50cyhkZXZfcHJpdiwgbmV3X21hc2spOworCWlmIChyZXQgPCAwKQorCQlkcm1fZXJy
KCZkZXZfcHJpdi0+ZHJtLCAiQ291bGQgbm90IHVubWFzayByZXF1aXJlZCBxZ3YgcG9pbnRzKCVk
KVxuIiwgcmV0KTsKIH0KIAogc3RhdGljIGJvb2wgaW50ZWxfY3J0Y19jYW5fZW5hYmxlX3NhZ3Yo
Y29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpCmRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50
ZWxfcG0uaAppbmRleCBmZDFkYzQyMmU2YzUuLjRhZTkxYWQ1ZDViMyAxMDA2NDQKLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
bnRlbF9wbS5oCkBAIC00Miw2ICs0Miw4IEBAIHZvaWQgc2tsX3BpcGVfd21fZ2V0X2h3X3N0YXRl
KHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjLAogCQkJICAgICAgc3RydWN0IHNrbF9waXBlX3dtICpv
dXQpOwogdm9pZCBnNHhfd21fc2FuaXRpemUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9w
cml2KTsKIHZvaWQgdmx2X3dtX3Nhbml0aXplKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZf
cHJpdik7Cit2b2lkIGludGVsX3NhZ3ZfcHJlX3BsYW5lX3VwZGF0ZShzdHJ1Y3QgaW50ZWxfYXRv
bWljX3N0YXRlICpzdGF0ZSk7Cit2b2lkIGludGVsX3NhZ3ZfcG9zdF9wbGFuZV91cGRhdGUoc3Ry
dWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUpOwogYm9vbCBpbnRlbF9jYW5fZW5hYmxlX3Nh
Z3YoY29uc3Qgc3RydWN0IGludGVsX2J3X3N0YXRlICpid19zdGF0ZSk7CiBpbnQgaW50ZWxfZW5h
YmxlX3NhZ3Yoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KTsKIGludCBpbnRlbF9k
aXNhYmxlX3NhZ3Yoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KTsKLS0gCjIuMjQu
MS40ODUuZ2FkMDVhM2Q4ZTUKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeAo=
