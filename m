Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B335BD804C
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Oct 2019 21:30:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 14B5A6E886;
	Tue, 15 Oct 2019 19:30:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4DC5289B33
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Oct 2019 19:30:43 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Oct 2019 12:30:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,300,1566889200"; d="scan'208";a="208241938"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga001.fm.intel.com with SMTP; 15 Oct 2019 12:30:36 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 15 Oct 2019 22:30:35 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 15 Oct 2019 22:30:22 +0300
Message-Id: <20191015193035.25982-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 00/13] drm/i915: Plane cdclk requirements and
 fp16 for gen4+
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClNl
dmVyYWwgcGF0Y2hlcyBoYXZlIGJlZW4gcHVzaGVkLCBuZXcgcGF0Y2hlcyBoYXZlIGFwcGVhcmVk
IGF0IHRoZSBlbmQuCkkgd29uZGVyIGlmIEkndmUgaW52ZW50ZWQgYSBwZXJwZXR1YWwgbW90aW9u
IHBhdGNoIHNlcmllcy4uLgoKVGhlIG5ldyBzdHVmZiBpcyBtb3N0bHkganVzdCBjbGVhbmluZyB1
cCB0aGUgY2RjbGsgc3RhdGUgKG1pcyltYW5hZ2VtZW50CndlIGhhdmUgZ29pbmcgb24uIEkgYWxz
byBtb2RpZmllciB0aGUgZ2xvYmFsIHN0YXRlIGxvY2tpbmcgc3R1ZmYKYSBiaXQgdG8gbWFrZSBz
dXJlIHdlIGNvcnJlY3RseSBzZXJpYWxpemUgdGhlIGhhcmR3YXJlIHN0dWZmIHdoZW4KY2RjbGsg
YWN0dWFsbHkgY2hhbmdlcyAoYW5kIHdlIG5lZWQgaXQgZm9yIHRoZSBRR1Ygc3R1ZmYgYXMgd2Vs
bCkuCgpJIGFsc28gdHdlYWtlZCB0aGUgZGVidWcgbWVzc2FnZXMgdG8gdHJpZ2dlciBvbmx5IHdo
ZW4gYSBwbGFuZQphY3R1YWxseSBuZWVkcyB0byBidW1wIHRoZSBjZGNsay4gUHJldmlvdXNseSBp
dCB3b3VsZCBwcmludCB0aGF0CnN0dWZmIGFsbCB0aGUgdGltZS4KClZpbGxlIFN5cmrDpGzDpCAo
MTMpOgogIGRybS9pOTE1OiBBZGQgZGVidWdzIHRvIGRpc3RpbmdpdXNoIGEgY2QyeCB1cGRhdGUg
ZnJvbSBhIGZ1bGwgY2RjbGsKICAgIHBsbCB1cGRhdGUKICBkcm0vaTkxNTogUmV3b3JrIGdsb2Jh
bCBzdGF0ZSBsb2NraW5nCiAgZHJtL2k5MTU6IE1vdmUgY2hlY2tfZGlnaXRhbF9wb3J0X2NvbmZs
aWN0cygpIGVhcmllcgogIGRybS9pOTE1OiBBbGxvdyBwbGFuZXMgdG8gZGVjbGFyZSB0aGVpciBt
aW5pbXVtIGFjY2VwdGFibGUgY2RjbGsKICBkcm0vaTkxNTogRWxpbWluYXRlIHNrbF9jaGVja19w
aXBlX21heF9waXhlbF9yYXRlKCkKICBkcm0vaTkxNTogU2ltcGxpZnkgc2tsX21heF9zY2FsZSgp
CiAgZHJtL2k5MTU6IEFkZCBzdXBwb3J0IGZvciBoYWxmIGZsb2F0IGZyYW1lYnVmZmVycyBmb3Ig
c2tsKwogIGRybS9pOTE1OiBBZGQgc3VwcG9ydCBmb3IgaGFsZiBmbG9hdCBmcmFtZWJ1ZmZlcnMg
Zm9yIGdlbjQrIHByaW1hcnkKICAgIHBsYW5lcwogIGRybS9pOTE1OiBBZGQgc3VwcG9ydCBmb3Ig
aGFsZiBmbG9hdCBmcmFtZWJ1ZmZlcnMgZm9yIGl2Yisgc3ByaXRlcwogIGRybS9pOTE1OiBBZGQg
c3VwcG9ydCBmb3IgaGFsZiBmbG9hdCBmcmFtZWJ1ZmZlcnMgb24gc25iIHNwcml0ZXMKICBkcm0v
aTkxNTogTW92ZSBtb3JlIGNkY2xrIHN0YXRlIGhhbmRsaW5nIGludG8KICAgIGludGVsX21vZGVz
ZXRfY2FsY19jZGNsaygpCiAgZHJtL2k5MTU6IENvbnNvbGlkYXRlIG1vcmUgY2RjbGsgc3RhdGUg
aGFuZGxpbmcKICBkcm0vaTkxNTogQ29sbGVjdCBtb3JlIGNkY2xrIHN0YXRlIHVuZGVyIHRoZSBz
YW1lIHJvb2YKCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2F0b21pYy5jICAg
fCAgNDMgKysKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYXRvbWljLmggICB8
ICAgNSArCiAuLi4vZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYXRvbWljX3BsYW5lLmMgfCAg
MzkgKysKIC4uLi9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hdG9taWNfcGxhbmUuaCB8ICAg
MiArCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2F1ZGlvLmMgICAgfCAgMTAg
Ky0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY2RjbGsuYyAgICB8IDE2NyAr
KysrLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NkY2xrLmggICAgfCAg
IDEgKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgIHwgMzM5
ICsrKysrKysrKystLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3Bs
YXkuaCAgfCAgIDIgLQogLi4uL2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5o
ICAgIHwgIDIyICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Nwcml0ZS5j
ICAgfCA0MjggKysrKysrKysrKysrKysrKystCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX3Nwcml0ZS5oICAgfCAgIDcgKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYu
aCAgICAgICAgICAgICAgIHwgIDIwICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5j
ICAgICAgICAgICAgICAgfCAgODcgLS0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0u
aCAgICAgICAgICAgICAgIHwgICAyIC0KIDE1IGZpbGVzIGNoYW5nZWQsIDkxNCBpbnNlcnRpb25z
KCspLCAyNjAgZGVsZXRpb25zKC0pCgotLSAKMi4yMS4wCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZng=
