Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 47A373240DC
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Feb 2021 16:32:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D94C6EAD8;
	Wed, 24 Feb 2021 15:31:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F1D6A6EAD8
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Feb 2021 15:31:56 +0000 (UTC)
IronPort-SDR: 35WItwdmamYvNfJ1+M1wJgzjMFpSmY/3J6AWQgTticJ2u0BNu0HHSGQw6cKzD3sWkcdRUPA2g7
 OmgSygRiv8Ug==
X-IronPort-AV: E=McAfee;i="6000,8403,9904"; a="165066766"
X-IronPort-AV: E=Sophos;i="5.81,203,1610438400"; d="scan'208";a="165066766"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2021 07:31:56 -0800
IronPort-SDR: vzPJFfI7WPX4aY+vFclPTrUvBbIvgiPBFNZzQvQrXCJyY9K+trLWFCrn7hBYuBq6ZqOklxGH9R
 zxLrnE6CmfTA==
X-IronPort-AV: E=Sophos;i="5.81,203,1610438400"; d="scan'208";a="403755524"
Received: from unknown (HELO localhost) ([172.28.172.35])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2021 07:31:54 -0800
From: "Piorkowski, Piotr" <piotr.piorkowski@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 24 Feb 2021 16:29:25 +0100
Message-Id: <20210224152925.1969970-1-piotr.piorkowski@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Verify dma_addr in
 gen8_ggtt_pte_encode
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
Cc: Michal Winiarski <michal.winiarski@intel.com>,
 Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogUGlvdHIgUGnDs3Jrb3dza2kgPHBpb3RyLnBpb3Jrb3dza2lAaW50ZWwuY29tPgoKVW50
aWwgbm93LCB0aGUgZ2VuOF9nZ3R0X3B0ZV9lbmNvZGUgZnVuY3Rpb24sIHJlc3BvbnNpYmxlIGZv
ciB0aGUgcHJlcGFyYXRpb24Kb2YgR0dUVCBQVEUsIGhhcyBub3QgdmVyaWZpZWQgaW4gYW55IHdh
eSB3aGV0aGVyIHRoZSBhZGRyZXNzIGdpdmVuIGFzIHRoZQpwYXJhbWV0ZXIgaXMgY29ycmVjdC4K
QnkgYWRkaW5nIGEgR0dUVCBhZGRyZXNzIG1hc2ssIHdlIGNhbiBlYXNpbHkgdmVyaWZ5IHRoYXQg
ZG1hX2FkZHIgd2lsbCBub3QgZml0CmluIHRoZSBQVEUgZmllbGQuCldoaWxlIGFyb3VuZCwgY2xl
YW51cCBhIHBsYWNlIHdoZXJlIHdlIGhvbGQgYWxsIEdFTjEyIEdHVFQgUFRFIG1hc2tzLAphbmQg
dGhlIGFkZGl0aW9uIG9mIHRoZSBQVEUgZGVzY3JpcHRpb24uCgpCc3BlYzogNDUwMTUKClNpZ25l
ZC1vZmYtYnk6IFBpb3RyIFBpw7Nya293c2tpIDxwaW90ci5waW9ya293c2tpQGludGVsLmNvbT4K
Q2M6IE1hdHRoZXcgQXVsZCA8bWF0dGhldy5hdWxkQGludGVsLmNvbT4KQ2M6IE1pY2hhbCBXYWpk
ZWN6a28gPG1pY2hhbC53YWpkZWN6a29AaW50ZWwuY29tPgpDYzogTWljaGFsIFdpbmlhcnNraSA8
bWljaGFsLndpbmlhcnNraUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qv
aW50ZWxfZ2d0dC5jIHwgIDIgKysKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0dC5o
ICB8IDEzICsrKysrKysrKysrKy0KIDIgZmlsZXMgY2hhbmdlZCwgMTQgaW5zZXJ0aW9ucygrKSwg
MSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVs
X2dndHQuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2dndHQuYwppbmRleCBiMGI4
ZGVkODM0ZjAuLjUyYjI0MjhkYTQzMSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvaW50ZWxfZ2d0dC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2dndHQu
YwpAQCAtMTkzLDYgKzE5Myw4IEBAIHN0YXRpYyB1NjQgZ2VuOF9nZ3R0X3B0ZV9lbmNvZGUoZG1h
X2FkZHJfdCBhZGRyLAogewogCWdlbjhfcHRlX3QgcHRlID0gYWRkciB8IF9QQUdFX1BSRVNFTlQ7
CiAKKwlHRU1fQlVHX09OKGFkZHIgJiB+R0VOMTJfR0dUVF9QVEVfQUREUl9NQVNLKTsKKwogCWlm
IChmbGFncyAmIFBURV9MTSkKIAkJcHRlIHw9IEdFTjEyX0dHVFRfUFRFX0xNOwogCmRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndHQuaCBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L2ludGVsX2d0dC5oCmluZGV4IDI0YjU4MDhkZjE2ZC4uYzgyYmJlMzA3NjY4IDEw
MDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndHQuaAorKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndHQuaApAQCAtODcsNyArODcsMTggQEAgdHlwZWRl
ZiB1NjQgZ2VuOF9wdGVfdDsKIAogI2RlZmluZSBHRU4xMl9QUEdUVF9QVEVfTE0JQklUX1VMTCgx
MSkKIAotI2RlZmluZSBHRU4xMl9HR1RUX1BURV9MTQlCSVRfVUxMKDEpCisvKgorICogIERPQzog
R0VOMTIgR0dUVCBUYWJsZSBFbnRyeSBmb3JtYXQKKyAqCisgKiArLS0tLS0tLS0tLSstLS0tLS0t
LS0rLS0tLS0tLS0tKy0tLS0tLS0tLS0tLS0tKy0tLS0tLS0tLSsKKyAqIHwgICAgNjM6NDYgfCAg
IDQ1OjEyIHwgICAgMTE6MiB8ICAgICAgICAgICAgMSB8ICAgICAgIDAgfAorICogKz09PT09PT09
PT0rPT09PT09PT09Kz09PT09PT09PSs9PT09PT09PT09PT09PSs9PT09PT09PT0rCisgKiB8ICBJ
Z25vcmVkIHwgQWRkcmVzcyB8IElnbm9yZWQgfCBMb2NhbCBNZW1vcnkgfCBQcmVzZW50IHwKKyAq
ICstLS0tLS0tLS0tKy0tLS0tLS0tLSstLS0tLS0tLS0rLS0tLS0tLS0tLS0tLS0rLS0tLS0tLS0t
KworICovCisKKyNkZWZpbmUgR0VOMTJfR0dUVF9QVEVfTE0JCUJJVF9VTEwoMSkKKyNkZWZpbmUg
R0VOMTJfR0dUVF9QVEVfQUREUl9NQVNLCUdFTk1BU0tfVUxMKDQ1LCAxMikKIAogLyoKICAqIENh
Y2hlYWJpbGl0eSBDb250cm9sIGlzIGEgNC1iaXQgdmFsdWUuIFRoZSBsb3cgdGhyZWUgYml0cyBh
cmUgc3RvcmVkIGluIGJpdHMKLS0gCjIuMjUuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4Cg==
