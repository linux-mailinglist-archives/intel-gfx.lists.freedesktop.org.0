Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 112C3AF41B
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Sep 2019 03:56:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BBE796E11E;
	Wed, 11 Sep 2019 01:56:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 515 seconds by postgrey-1.36 at gabe;
 Wed, 11 Sep 2019 01:56:47 UTC
Received: from smtp113.ord1d.emailsrvr.com (smtp113.ord1d.emailsrvr.com
 [184.106.54.113])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 86B5B6E11E
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Sep 2019 01:56:47 +0000 (UTC)
X-Auth-ID: kenneth@whitecape.org
Received: by smtp7.relay.ord1d.emailsrvr.com (Authenticated sender:
 kenneth-AT-whitecape.org) with ESMTPSA id 5B4652005C
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Sep 2019 21:48:08 -0400 (EDT)
X-Sender-Id: kenneth@whitecape.org
Received: from kirito.trees (50-39-175-242.bvtn.or.frontiernet.net
 [50.39.175.242])
 (using TLSv1.2 with cipher DHE-RSA-AES128-GCM-SHA256)
 by 0.0.0.0:465 (trex/5.7.12); Tue, 10 Sep 2019 21:48:08 -0400
From: Kenneth Graunke <kenneth@whitecape.org>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 10 Sep 2019 18:48:01 -0700
Message-Id: <20190911014801.26821-1-kenneth@whitecape.org>
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
YWNlLAp3ZSB3b3VsZCBsaWtlIHRvIGJlIGFibGUgdG8gYXZvaWQgZG9pbmcgc28uCgpTaWduZWQt
b2ZmLWJ5OiBLZW5uZXRoIEdyYXVua2UgPGtlbm5ldGhAd2hpdGVjYXBlLm9yZz4KQ2M6IHN0YWJs
ZUB2Z2VyLmtlcm5lbC5vcmcKLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3Jr
YXJvdW5kcy5jIHwgMyArKysKIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKykKCmRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYwppbmRleCAyNDNkM2Y3N2Jl
MTMuLjQxZDBmNzg2ZTA2ZCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50
ZWxfd29ya2Fyb3VuZHMuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3Jr
YXJvdW5kcy5jCkBAIC0xMDYyLDYgKzEwNjIsOSBAQCBzdGF0aWMgdm9pZCBnZW45X3doaXRlbGlz
dF9idWlsZChzdHJ1Y3QgaTkxNV93YV9saXN0ICp3KQogCiAJLyogV2FBbGxvd1VNRFRvTW9kaWZ5
SERDQ2hpY2tlbjE6c2tsLGJ4dCxrYmwsZ2xrLGNmbCAqLwogCXdoaXRlbGlzdF9yZWcodywgR0VO
OF9IRENfQ0hJQ0tFTjEpOworCisJLyogV2FTZW5kUHVzaENvbnN0YW50c0Zyb21NTUlPOnNrbCxi
eHQgKi8KKwl3aGl0ZWxpc3RfcmVnKHcsIENPTU1PTl9TTElDRV9DSElDS0VOMik7CiB9CiAKIHN0
YXRpYyB2b2lkIHNrbF93aGl0ZWxpc3RfYnVpbGQoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5n
aW5lKQotLSAKMi4yMi4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZng=
