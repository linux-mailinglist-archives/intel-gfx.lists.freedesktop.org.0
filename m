Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A874D7A48
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Oct 2019 17:45:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A4C26E837;
	Tue, 15 Oct 2019 15:45:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7FBAF6E830
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Oct 2019 15:45:27 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Oct 2019 08:45:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,300,1566889200"; d="scan'208";a="198647329"
Received: from rosetta.fi.intel.com ([10.237.72.194])
 by orsmga003.jf.intel.com with ESMTP; 15 Oct 2019 08:45:20 -0700
Received: by rosetta.fi.intel.com (Postfix, from userid 1000)
 id F0EAB840761; Tue, 15 Oct 2019 18:44:50 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 15 Oct 2019 18:44:40 +0300
Message-Id: <20191015154449.10338-2-mika.kuoppala@linux.intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191015154449.10338-1-mika.kuoppala@linux.intel.com>
References: <20191015154449.10338-1-mika.kuoppala@linux.intel.com>
Subject: [Intel-gfx] [PATCH 02/11] drm/i915/tgl: Include ro parts of l3 to
 invalidate
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

QWltIGZvciBjb21wbGV0ZW5lc3MgYW5kIGludmFsaWRhdGUgYWxzbyB0aGUgcm8gcGFydHMKaW4g
bDMgY2FjaGUuIFRoaXMgbWlnaHQgYWxsb3cgdG8gZ2V0IHJpZCBvZiB0aGUgcHJlcGFyc2VyCmRp
c2FibGUvZW5hYmxlIHdvcmthcm91bmQgb24gaW52YWxpZGF0aW9uIHBhdGguCgpDYzogQ2hyaXMg
V2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+ClNpZ25lZC1vZmYtYnk6IE1pa2EgS3Vv
cHBhbGEgPG1pa2Eua3VvcHBhbGFAbGludXguaW50ZWwuY29tPgpSZXZpZXdlZC1ieTogQ2hyaXMg
V2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvaW50ZWxfZ3B1X2NvbW1hbmRzLmggfCAxICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L2ludGVsX2xyYy5jICAgICAgICAgIHwgMSArCiAyIGZpbGVzIGNoYW5nZWQsIDIgaW5zZXJ0aW9u
cygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2dwdV9jb21t
YW5kcy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3B1X2NvbW1hbmRzLmgKaW5k
ZXggOGU2M2NmZmNhYmUwLi40NTg2YTZhMWZhZDQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L2ludGVsX2dwdV9jb21tYW5kcy5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L2ludGVsX2dwdV9jb21tYW5kcy5oCkBAIC0yMzMsNiArMjMzLDcgQEAKICNkZWZpbmUgICBQ
SVBFX0NPTlRST0xfUkVOREVSX1RBUkdFVF9DQUNIRV9GTFVTSAkoMTw8MTIpIC8qIGdlbjYrICov
CiAjZGVmaW5lICAgUElQRV9DT05UUk9MX0lOU1RSVUNUSU9OX0NBQ0hFX0lOVkFMSURBVEUJKDE8
PDExKSAvKiBNQlogb24gSUxLICovCiAjZGVmaW5lICAgUElQRV9DT05UUk9MX1RFWFRVUkVfQ0FD
SEVfSU5WQUxJREFURQkJKDE8PDEwKSAvKiBHTTQ1KyBvbmx5ICovCisjZGVmaW5lICAgUElQRV9D
T05UUk9MX0wzX1JPX0NBQ0hFX0lOVkFMSURBVEUJCSgxPDwxMCkgLyogZ2VuMTIgKi8KICNkZWZp
bmUgICBQSVBFX0NPTlRST0xfSU5ESVJFQ1RfU1RBVEVfRElTQUJMRQkJKDE8PDkpCiAjZGVmaW5l
ICAgUElQRV9DT05UUk9MX05PVElGWQkJCQkoMTw8OCkKICNkZWZpbmUgICBQSVBFX0NPTlRST0xf
RkxVU0hfRU5BQkxFCQkJKDE8PDcpIC8qIGdlbjcrICovCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVs
X2xyYy5jCmluZGV4IDIxNjM1ZGI4ZDc2Yy4uMmZlMzM5MjI4YjgyIDEwMDY0NAotLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC9pbnRlbF9scmMuYwpAQCAtMzIzMSw2ICszMjMxLDcgQEAgc3RhdGljIGludCBnZW4xMl9l
bWl0X2ZsdXNoX3JlbmRlcihzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpyZXF1ZXN0LAogCQlmbGFncyB8
PSBQSVBFX0NPTlRST0xfVkZfQ0FDSEVfSU5WQUxJREFURTsKIAkJZmxhZ3MgfD0gUElQRV9DT05U
Uk9MX0NPTlNUX0NBQ0hFX0lOVkFMSURBVEU7CiAJCWZsYWdzIHw9IFBJUEVfQ09OVFJPTF9TVEFU
RV9DQUNIRV9JTlZBTElEQVRFOworCQlmbGFncyB8PSBQSVBFX0NPTlRST0xfTDNfUk9fQ0FDSEVf
SU5WQUxJREFURTsKIAogCQlmbGFncyB8PSBQSVBFX0NPTlRST0xfU1RPUkVfREFUQV9JTkRFWDsK
IAkJZmxhZ3MgfD0gUElQRV9DT05UUk9MX1FXX1dSSVRFOwotLSAKMi4xNy4xCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
