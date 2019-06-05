Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AD43359EF
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Jun 2019 11:53:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 95D6589487;
	Wed,  5 Jun 2019 09:53:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8737A89487
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Jun 2019 09:53:56 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Jun 2019 02:53:56 -0700
X-ExtLoop1: 1
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.150])
 by fmsmga001.fm.intel.com with ESMTP; 05 Jun 2019 02:53:53 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  5 Jun 2019 12:56:56 +0300
Message-Id: <20190605095657.23601-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH 1/2] Documentation/i915: Fix kernel-doc
 references to moved gem files
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
Cc: jani.nikula@intel.com, linux-doc@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhlIGVycm9yIG1lc3NhZ2VzIGNvdWxkIGJlIG1vcmUgZGVzY3JpcHRpdmUsIGJ1dCBmaXggdGhl
c2UgY2F1c2VkIGJ5CmZpbGUgbW92ZXM6CgpXQVJOSU5HOiBrZXJuZWwtZG9jICcuL3NjcmlwdHMv
a2VybmVsLWRvYyAtcnN0IC1lbmFibGUtbGluZW5vIC1pbnRlcm5hbAogICAgLi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X2dlbV9zaHJpbmtlci5jJyBmYWlsZWQgd2l0aCByZXR1cm4gY29kZSAy
CldBUk5JTkc6IGtlcm5lbC1kb2MgJy4vc2NyaXB0cy9rZXJuZWwtZG9jIC1yc3QgLWVuYWJsZS1s
aW5lbm8gLWZ1bmN0aW9uCiAgICBVc2VyIGNvbW1hbmQgZXhlY3V0aW9uIC4vZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9nZW1fZXhlY2J1ZmZlci5jJwogICAgZmFpbGVkIHdpdGggcmV0dXJuIGNv
ZGUgMQpXQVJOSU5HOiBrZXJuZWwtZG9jICcuL3NjcmlwdHMva2VybmVsLWRvYyAtcnN0IC1lbmFi
bGUtbGluZW5vIC1pbnRlcm5hbAogICAgLi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV90
aWxpbmcuYycgZmFpbGVkIHdpdGggcmV0dXJuIGNvZGUgMgpXQVJOSU5HOiBrZXJuZWwtZG9jICcu
L3NjcmlwdHMva2VybmVsLWRvYyAtcnN0IC1lbmFibGUtbGluZW5vIC1mdW5jdGlvbgogICAgYnVm
ZmVyIG9iamVjdCB0aWxpbmcgLi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV90aWxpbmcu
YycKICAgIGZhaWxlZCB3aXRoIHJldHVybiBjb2RlIDEKCkZpeGVzOiAxMGJlOThhNzdjNTUgKCJk
cm0vaTkxNTogTW92ZSBtb3JlIEdFTSBvYmplY3RzIHVuZGVyIGdlbS8iKQpDYzogQ2hyaXMgV2ls
c29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+CkNjOiBNaWthIEt1b3BwYWxhIDxtaWthLmt1
b3BwYWxhQGxpbnV4LmludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogSmFuaSBOaWt1bGEgPGphbmku
bmlrdWxhQGludGVsLmNvbT4KLS0tCiBEb2N1bWVudGF0aW9uL2dwdS9pOTE1LnJzdCB8IDExICsr
KystLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspLCA3IGRlbGV0aW9ucygt
KQoKZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZ3B1L2k5MTUucnN0IGIvRG9jdW1lbnRhdGlv
bi9ncHUvaTkxNS5yc3QKaW5kZXggNmM3NTM4MGIyOTI4Li5mOThlZTk1ZGE5MGYgMTAwNjQ0Ci0t
LSBhL0RvY3VtZW50YXRpb24vZ3B1L2k5MTUucnN0CisrKyBiL0RvY3VtZW50YXRpb24vZ3B1L2k5
MTUucnN0CkBAIC0zNDksNyArMzQ5LDcgQEAgb2YgYnVmZmVyIG9iamVjdCBjYWNoZXMuIFNocmlu
a2luZyBpcyB1c2VkIHRvIG1ha2UgbWFpbiBtZW1vcnkKIGF2YWlsYWJsZS4gTm90ZSB0aGF0IHRo
aXMgaXMgbW9zdGx5IG9ydGhvZ29uYWwgdG8gZXZpY3RpbmcgYnVmZmVyCiBvYmplY3RzLCB3aGlj
aCBoYXMgdGhlIGdvYWwgdG8gbWFrZSBzcGFjZSBpbiBncHUgdmlydHVhbCBhZGRyZXNzIHNwYWNl
cy4KIAotLi4ga2VybmVsLWRvYzo6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX3Nocmlu
a2VyLmMKKy4uIGtlcm5lbC1kb2M6OiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1f
c2hyaW5rZXIuYwogICAgOmludGVybmFsOgogCiBCYXRjaGJ1ZmZlciBQYXJzaW5nCkBAIC0zNzMs
NyArMzczLDcgQEAgQmF0Y2hidWZmZXIgUG9vbHMKIFVzZXIgQmF0Y2hidWZmZXIgRXhlY3V0aW9u
CiAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQogCi0uLiBrZXJuZWwtZG9jOjogZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9nZW1fZXhlY2J1ZmZlci5jCisuLiBrZXJuZWwtZG9jOjogZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2V4ZWNidWZmZXIuYwogICAgOmRvYzogVXNlciBj
b21tYW5kIGV4ZWN1dGlvbgogCiBMb2dpY2FsIFJpbmdzLCBMb2dpY2FsIFJpbmcgQ29udGV4dHMg
YW5kIEV4ZWNsaXN0cwpAQCAtMzgyLDkgKzM4Miw2IEBAIExvZ2ljYWwgUmluZ3MsIExvZ2ljYWwg
UmluZyBDb250ZXh0cyBhbmQgRXhlY2xpc3RzCiAuLiBrZXJuZWwtZG9jOjogZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMKICAgIDpkb2M6IExvZ2ljYWwgUmluZ3MsIExvZ2ljYWwg
UmluZyBDb250ZXh0cyBhbmQgRXhlY2xpc3RzCiAKLS4uIGtlcm5lbC1kb2M6OiBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYwotICAgOmludGVybmFsOgotCiBHbG9iYWwgR1RUIHZp
ZXdzCiAtLS0tLS0tLS0tLS0tLS0tCiAKQEAgLTQxNSwxMCArNDEyLDEwIEBAIEhhcmR3YXJlIFRp
bGluZyBhbmQgU3dpenpsaW5nIERldGFpbHMKIE9iamVjdCBUaWxpbmcgSU9DVExzCiAtLS0tLS0t
LS0tLS0tLS0tLS0tLQogCi0uLiBrZXJuZWwtZG9jOjogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9nZW1fdGlsaW5nLmMKKy4uIGtlcm5lbC1kb2M6OiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0v
aTkxNV9nZW1fdGlsaW5nLmMKICAgIDppbnRlcm5hbDoKIAotLi4ga2VybmVsLWRvYzo6IGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX3RpbGluZy5jCisuLiBrZXJuZWwtZG9jOjogZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3RpbGluZy5jCiAgICA6ZG9jOiBidWZmZXIgb2Jq
ZWN0IHRpbGluZwogCiBXT1BDTQotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZng=
