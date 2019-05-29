Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B6002D993
	for <lists+intel-gfx@lfdr.de>; Wed, 29 May 2019 11:54:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9E98089F45;
	Wed, 29 May 2019 09:54:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 65A8E89F45
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 May 2019 09:54:36 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 May 2019 02:54:36 -0700
X-ExtLoop1: 1
Received: from genxfsim-shark-bay-client-platform.iind.intel.com
 ([10.223.74.155])
 by fmsmga001.fm.intel.com with ESMTP; 29 May 2019 02:54:35 -0700
From: Swati Sharma <swati2.sharma@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 29 May 2019 15:20:50 +0530
Message-Id: <1559123462-7343-1-git-send-email-swati2.sharma@intel.com>
X-Mailer: git-send-email 1.9.1
Subject: [Intel-gfx] [v7][PATCH 00/12] drm/i915: adding state checker for
 gamma lut values
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
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SW4gdGhpcyBwYXRjaCBzZXJpZXMsIGFkZGVkIHN0YXRlIGNoZWNrZXIgdG8gdmFsaWRhdGUgZ2Ft
bWEKYW5kIHdpbGwgYmUgZXh0ZW5kZWQgdG8gdmFsaWRhdGUgZGVnYW1tYSBsdXQgdmFsdWVzIGFz
d2VsbC4KVGhpcyByZWFkcyBoYXJkd2FyZSBzdGF0ZSwgYW5kIGNvbXBhcmVzIHRoZSBvcmlnaW5h
bGx5CnJlcXVlc3RlZCBzdGF0ZSB0byB0aGUgc3RhdGUgcmVhZCBmcm9tIGhhcmR3YXJlLgoKdjE6
IC1JbXBsZW1lbnRhdGlvbiBkb25lIGZvciBsZWdhY3kgcGxhdGZvcm1zCiAgICAgKHJlbW92ZWQg
YWxsIHRoZSBwbGFjZWhvbGRlcnMpIChKYW5pKQp2MjogLVJlc3RydWN0dXJlZCBjb2RlIGFuZCBj
cmVhdGVkIHBsYXRmb3JtIHNwZWNpZmljIHBhdGNoIHNlcmllcyBmb3IKICAgICBnYW1tYSB2YWxp
ZGF0aW9uCnYzOiAtUmViYXNlCnY0OiAtTWlub3IgY2hhbmdlcy1mdW5jdGlvbiBuYW1lIGNoYW5n
ZXMgbWFpbmx5CnY1OiAtQWRkZWQgZGVnYW1tYSB2YWxpZGF0aW9uIChWaWxsZSkKdjY6IC1SZW1v
dmVkIGRlZ2FtbWEgY2hhbmdlcywgZGVidWdnaW5nIHdhcyBiZWNvbWluZyBkaWZmaWN1bHQKICAg
IC1BZGRlZCBmdW5jdGlvbiB0byBhc3NpZ24gYml0X3ByZWNpc2lvbiBmb3IgZ2FtbWEvZGVnYW1t
YQogICAgIGx1dCB2YWx1ZXMgL3BsYXRmb3JtCiAgICAtQWRkZWQgZGVidWcgaW5mbyBpbnRvIGlu
dGVsX2R1bXBfcGlwZV9jb25maWcoKSAoSmFuaSkKdjc6IC1BZGRlZCBwbGF0Zm9ybSBzcGVjaWZp
YyBmdW5jdGlvbnMgdG8gY29tcHV0ZSBnYW1tYSBiaXQgcHJlY2lzaW9uCiAgICAgb24gdGhlIGJh
c2lzIG9mIEdBTU1BX01PREUgKFZpbGxlKQogICAgLUNvcnJlY3RlZCBjaGVja3BhdGNoIHdhcm5p
bmdzCgpTd2F0aSBTaGFybWEgKDEyKToKICBkcm0vaTkxNTogSW50cm9kdWNlIHZmdW5jIHJlYWRf
bHV0cygpIHRvIGNyZWF0ZSBodyBsdXQKICBkcm0vaTkxNTogRW5hYmxlIGludGVsX2NvbG9yX2dl
dF9jb25maWcoKQogIGRybS9pOTE1OiBBZGQgZnVuYyB0byBjb21wYXJlIGh3L3N3IGdhbW1hIGx1
dAogIGRybS9pOTE1OiBFeHRyYWN0IGk5eHhfcmVhZF9sdXRzKCkKICBkcm0vaTkxNTogRXh0cmFj
dCBjaHZfcmVhZF9sdXRzKCkKICBkcm0vaTkxNTogRXh0cmFjdCBpOTY1X3JlYWRfbHV0cygpCiAg
ZHJtL2k5MTU6IEV4dHJhY3QgaWNsX3JlYWRfbHV0cygpCiAgZHJtL2k5MTU6IEV4dHJhY3QgZ2xr
X3JlYWRfbHV0cygpCiAgZHJtL2k5MTU6IEV4dHJhY3QgYmR3X3JlYWRfbHV0cygpCiAgZHJtL2k5
MTU6IEV4dHJhY3QgaXZiX3JlYWRfbHV0cygpCiAgZHJtL2k5MTU6IEV4dHJhY3QgaWxrX3JlYWRf
bHV0cygpCiAgRk9SX1RFU1RJTkdfT05MWTogUHJpbnQgcmdiIHZhbHVlcyBvZiBodyBhbmQgc3cg
YmxvYnMKCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oICAgICAgfCAgIDEgKwogZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCAgICAgIHwgIDE1ICsrCiBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9pbnRlbF9jb2xvci5jICAgfCA0NjUgKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysrKysrKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2NvbG9yLmggICB8ICAgOCArCiBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kaXNwbGF5LmMgfCAgMjggKysrCiA1IGZpbGVzIGNo
YW5nZWQsIDUxMiBpbnNlcnRpb25zKCspLCA1IGRlbGV0aW9ucygtKQoKLS0gCjEuOS4xCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
