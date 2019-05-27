Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 16F1C2B6C3
	for <lists+intel-gfx@lfdr.de>; Mon, 27 May 2019 15:45:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 85E7189DFA;
	Mon, 27 May 2019 13:45:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C5CC889DFA
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 May 2019 13:45:39 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 May 2019 06:45:39 -0700
X-ExtLoop1: 1
Received: from genxfsim-shark-bay-client-platform.iind.intel.com
 ([10.223.74.155])
 by orsmga001.jf.intel.com with ESMTP; 27 May 2019 06:45:36 -0700
From: Swati Sharma <swati2.sharma@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 27 May 2019 19:11:50 +0530
Message-Id: <1558964522-7829-1-git-send-email-swati2.sharma@intel.com>
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
Cc: jani.nikula@intel.com, ankit.k.nautiyal@intel.com
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
YSBsdXQgdmFsdWVzIC9wbGF0Zm9ybQogICAgLUFkZGVkIGRlYnVnIGluZm8gaW50byBpbnRlbF9k
dW1wX3BpcGVfY29uZmlnKCkgKEphbmkpCnY3OiAtQWRkZWQgcGxhdGZvcm0gc3BlY2lmaWMgZnVu
Y3Rpb25zIHRvIGNvbXB1dGUgZ2FtbWEgYml0IHByZWNpc2lvbiBvbiB0aGUKICAgICBiYXNpcyBv
ZiBHQU1NQV9NT0RFIChWaWxsZSkKClN3YXRpIFNoYXJtYSAoMTIpOgogIGRybS9pOTE1OiBJbnRy
b2R1Y2UgdmZ1bmMgcmVhZF9sdXRzKCkgdG8gY3JlYXRlIGh3IGx1dAogIGRybS9pOTE1OiBFbmFi
bGUgaW50ZWxfY29sb3JfZ2V0X2NvbmZpZygpCiAgZHJtL2k5MTU6IEFkZCBpbnRlbF9jb2xvcl9s
dXRfZXF1YWwoKSB0byBjb21wYXJlIGh3IGFuZCBzdwogICAgZ2FtbWEvZGVnYW1tYSBsdXQgdmFs
dWVzCiAgZHJtL2k5MTU6IEV4dHJhY3QgaTl4eF9yZWFkX2x1dHMoKQogIGRybS9pOTE1OiBFeHRy
YWN0IGNodl9yZWFkX2x1dHMoKQogIGRybS9pOTE1OiBFeHRyYWN0IGk5NjVfcmVhZF9sdXRzKCkK
ICBkcm0vaTkxNTogRXh0cmFjdCBpY2xfcmVhZF9sdXRzKCkKICBkcm0vaTkxNTogRXh0cmFjdCBn
bGtfcmVhZF9sdXRzKCkKICBkcm0vaTkxNTogRXh0cmFjdCBiZHdfcmVhZF9sdXRzKCkKICBkcm0v
aTkxNTogRXh0cmFjdCBpdmJfcmVhZF9sdXRzKCkKICBkcm0vaTkxNTogRXh0cmFjdCBpbGtfcmVh
ZF9sdXRzKCkKICBGT1JfVEVTVElOR19PTkxZOiBQcmludCByZ2IgdmFsdWVzIG9mIGh3IGFuZCBz
dyBibG9icwoKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmggICAgICB8ICAgMSArCiBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oICAgICAgfCAgMTUgKysKIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2ludGVsX2NvbG9yLmMgICB8IDQ2NyArKysrKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysrLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfY29sb3IuaCAgIHwgICA4ICsK
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Rpc3BsYXkuYyB8ICAyOSArKysKIDUgZmlsZXMg
Y2hhbmdlZCwgNTE1IGluc2VydGlvbnMoKyksIDUgZGVsZXRpb25zKC0pCgotLSAKMS45LjEKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
