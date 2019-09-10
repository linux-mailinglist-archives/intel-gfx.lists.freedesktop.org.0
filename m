Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 02FD0AF30D
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Sep 2019 00:51:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 575D36E9D2;
	Tue, 10 Sep 2019 22:51:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 551 seconds by postgrey-1.36 at gabe;
 Tue, 10 Sep 2019 22:51:43 UTC
Received: from smtp97.iad3b.emailsrvr.com (smtp97.iad3b.emailsrvr.com
 [146.20.161.97])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B11D06E9D2
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Sep 2019 22:51:43 +0000 (UTC)
X-Auth-ID: kenneth@whitecape.org
Received: by smtp5.relay.iad3b.emailsrvr.com (Authenticated sender:
 kenneth-AT-whitecape.org) with ESMTPSA id 450DB40125
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Sep 2019 18:42:30 -0400 (EDT)
X-Sender-Id: kenneth@whitecape.org
Received: from kirito.trees (50-39-175-242.bvtn.or.frontiernet.net
 [50.39.175.242])
 (using TLSv1.2 with cipher DHE-RSA-AES128-GCM-SHA256)
 by 0.0.0.0:465 (trex/5.7.12); Tue, 10 Sep 2019 18:42:30 -0400
From: Kenneth Graunke <kenneth@whitecape.org>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 10 Sep 2019 15:42:26 -0700
Message-Id: <20190910224226.13978-1-kenneth@whitecape.org>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Whitelist COMMON_SLICE_CHICKEN2
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

VGhpcyBhbGxvd3MgdXNlcnNwYWNlIHRvIHVzZSAibGVnYWN5IiBtb2RlIGZvciBwdXNoIGNvbnN0
YW50cywgd2hlcmUKdGhleSBhcmUgY29tbWl0dGVkIGF0IDNEUFJJTUlUSVZFIG9yIGZsdXNoIHRp
bWUsIHJhdGhlciB0aGFuIGJlaW5nCmNvbW1pdHRlZCBhdCAzRFNUQVRFX0JJTkRJTkdfVEFCTEVf
UE9JTlRFUlNfWFMgdGltZS4gIEdlbjYtOCBhbmQgR2VuMTEKYm90aCB1c2UgdGhlICJsZWdhY3ki
IGJlaGF2aW9yIC0gb25seSBHZW45IHdvcmtzIGluIHRoZSAibmV3IiB3YXkuCgpDb25mbGF0aW5n
IHB1c2ggY29uc3RhbnRzIHdpdGggYmluZGluZyB0YWJsZXMgaXMgcGFpbmZ1bCBmb3IgdXNlcnNw
YWNlLAp3ZSB3b3VsZCBsaWtlIHRvIGJlIGFibGUgdG8gYXZvaWQgZG9pbmcgc28uCgpDYzogc3Rh
YmxlQHZnZXIua2VybmVsLm9yZwotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dv
cmthcm91bmRzLmMgfCAzICsrKwogMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKQoKZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jCmluZGV4IDI0M2QzZjc3
YmUxMy4uNDFkMGY3ODZlMDZkIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9p
bnRlbF93b3JrYXJvdW5kcy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dv
cmthcm91bmRzLmMKQEAgLTEwNjIsNiArMTA2Miw5IEBAIHN0YXRpYyB2b2lkIGdlbjlfd2hpdGVs
aXN0X2J1aWxkKHN0cnVjdCBpOTE1X3dhX2xpc3QgKncpCiAKIAkvKiBXYUFsbG93VU1EVG9Nb2Rp
ZnlIRENDaGlja2VuMTpza2wsYnh0LGtibCxnbGssY2ZsICovCiAJd2hpdGVsaXN0X3JlZyh3LCBH
RU44X0hEQ19DSElDS0VOMSk7CisKKwkvKiBXYVNlbmRQdXNoQ29uc3RhbnRzRnJvbU1NSU86c2ts
LGJ4dCAqLworCXdoaXRlbGlzdF9yZWcodywgQ09NTU9OX1NMSUNFX0NISUNLRU4yKTsKIH0KIAog
c3RhdGljIHZvaWQgc2tsX3doaXRlbGlzdF9idWlsZChzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICpl
bmdpbmUpCi0tIAoyLjIyLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeA==
