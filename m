Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 66A7352352
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Jun 2019 08:11:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 802D389F3B;
	Tue, 25 Jun 2019 06:11:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 983 seconds by postgrey-1.36 at gabe;
 Tue, 25 Jun 2019 06:11:52 UTC
Received: from smtp105.ord1c.emailsrvr.com (smtp105.ord1c.emailsrvr.com
 [108.166.43.105])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7622489F3B
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Jun 2019 06:11:52 +0000 (UTC)
X-Auth-ID: kenneth@whitecape.org
Received: by smtp6.relay.ord1c.emailsrvr.com (Authenticated sender:
 kenneth-AT-whitecape.org) with ESMTPSA id 05DA9A0147; 
 Tue, 25 Jun 2019 01:55:27 -0400 (EDT)
X-Sender-Id: kenneth@whitecape.org
Received: from kirito.trees (50-39-175-242.bvtn.or.frontiernet.net
 [50.39.175.242])
 (using TLSv1.2 with cipher DHE-RSA-AES128-GCM-SHA256)
 by 0.0.0.0:465 (trex/5.7.12); Tue, 25 Jun 2019 01:55:28 -0400
From: Kenneth Graunke <kenneth@whitecape.org>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 24 Jun 2019 22:55:21 -0700
Message-Id: <20190625055521.5730-1-kenneth@whitecape.org>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Disable SAMPLER_STATE prefetching on
 all Gen11 steppings.
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
Cc: Kenneth Graunke <kenneth@whitecape.org>, stable@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhlIERlbWFuZCBQcmVmZXRjaCB3b3JrYXJvdW5kIChiaW5kaW5nIHRhYmxlIHByZWZldGNoaW5n
KSBvbmx5IGFwcGxpZXMKdG8gSWNlbGFrZSBBMC9CMC4gIEJ1dCB0aGUgU2FtcGxlciBQcmVmZXRj
aCB3b3JrYXJvdW5kIG5lZWRzIHRvIGJlCmFwcGxpZWQgdG8gYWxsIEdlbjExIHN0ZXBwaW5ncywg
YWNjb3JkaW5nIHRvIGEgcHJvZ3JhbW1pbmcgbm90ZSBpbiB0aGUKU0FSQ0hLTUQgZG9jdW1lbnRh
dGlvbi4KClVzaW5nIHRoZSBJbnRlbCBHYWxsaXVtIGRyaXZlciwgSSBoYXZlIHNlZW4gaW50ZXJt
aXR0ZW50IGZhaWx1cmVzIGluCnRoZSBkRVFQLUdMRVMzMS5mdW5jdGlvbmFsLmNvcHlfaW1hZ2Uu
bm9uX2NvbXByZXNzZWQuKiB0ZXN0cy4gIEFmdGVyCmFwcGx5aW5nIHRoaXMgd29ya2Fyb3VuZCwg
dGhlIHRlc3RzIHJlbGlhYmx5IHBhc3MuCgpCU3BlYzogOTY2MwpDYzogc3RhYmxlQHZnZXIua2Vy
bmVsLm9yZwotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMg
fCA1ICsrKysrCiAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspCgpIaSB0aGVyZSEKCldl
IHRyaWVkIHRvIHdvcmsgYXJvdW5kIHRoaXMgaW4gdGhlIE1lc2EgZHJpdmVyLCBhbmQgbWFuYWdl
ZCB0byBkbyBzbwppbiBpOTY1LCBhbnYsIGlyaXMsIGJ1dCBtaXNzZWQgZG9pbmcgc28gaW4gYmxv
cnAuICBPb3BzISAgSSdtIHBsYW5uaW5nCm9uIGZpeGluZyB0aGF0LCBidXQgc2V0dGluZyB0aGUg
U0FSQ0hLTUQgYml0IHRvIHNodXQgb2ZmIHRoZSBicm9rZW4KcHJlZmV0Y2hpbmcgZ2xvYmFsbHkg
c2VlbXMgbGlrZSBhIGdvb2QgaWRlYS4gIFRoYXQgd2F5LCB3ZSBtYWtlIHN1cmUgaXQKd29ya3Mg
Zm9yIGk5NjUsIGFudiwgaXJpcywgbGlidmEsIGFuZCBhbGwgdGhlIG90aGVyIHVzZXJzcGFjZSBk
cml2ZXJzLgoKRldJVywgSSBkb24ndCBoYXZlIGNvbW1pdCBhY2Nlc3MsIHNvIEkgd291bGQgYXBw
cmVjaWF0ZSBpdCBpZiBzb21lb25lCmNvdWxkIGNvbW1pdCB0aGlzIGZvciBtZSBhc3N1bWluZyBp
dCBjbGVhcnMgcmV2aWV3IGFuZCB0ZXN0aW5nLgoKIC0tS2VuCgpkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMKaW5kZXggYzcwNDQ1YWRmYjAyLi5hM2NiMzVkMDU4
YTYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRz
LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYwpAQCAt
MTI1NCw2ICsxMjU0LDExIEBAIHJjc19lbmdpbmVfd2FfaW5pdChzdHJ1Y3QgaW50ZWxfZW5naW5l
X2NzICplbmdpbmUsIHN0cnVjdCBpOTE1X3dhX2xpc3QgKndhbCkKIAkJCQkgICAgR0VON19TQVJD
SEtNRCwKIAkJCQkgICAgR0VON19ESVNBQkxFX0RFTUFORF9QUkVGRVRDSCB8CiAJCQkJICAgIEdF
TjdfRElTQUJMRV9TQU1QTEVSX1BSRUZFVENIKTsKKworCQkvKiBXYV8xNjA2NjgyMTY2OmljbCAq
LworCQl3YV93cml0ZV9vcih3YWwsCisJCQkgICAgR0VON19TQVJDSEtNRCwKKwkJCSAgICBHRU43
X0RJU0FCTEVfU0FNUExFUl9QUkVGRVRDSCk7CiAJfQogCiAJaWYgKElTX0dFTl9SQU5HRShpOTE1
LCA5LCAxMSkpIHsKLS0gCjIuMjIuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4
