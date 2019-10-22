Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C039E0B10
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Oct 2019 19:56:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B7E7D6E054;
	Tue, 22 Oct 2019 17:55:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 449026E054
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Oct 2019 17:55:58 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Oct 2019 10:55:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,217,1569308400"; d="scan'208";a="209769558"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga002.jf.intel.com with SMTP; 22 Oct 2019 10:55:55 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 22 Oct 2019 20:55:54 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 22 Oct 2019 20:55:46 +0300
Message-Id: <20191022175554.18012-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/8] drm/i915: pfit/scaler rework prep stuff
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkkn
bSByZXdvcmtpbmcgYSBidW5jaCBvZiB0aGUgc2NhbGVyL3BmaXQgc3R1ZmYgdG8gYWxsb3cKdXMg
dG8gZXhwb3NlIHRoZSBUViBtYXJnaW4gcHJvcGVydGllcywgcHJvcGVybHkgY2hlY2sgYWxsCnRo
ZSBoYXJkd2FyZSBzY2FsaW5nIGxpbWl0cywgYW5kIGp1c3QgZ2VuZXJhbGx5IGNsZWFuaW5nCnVw
IGEgYnVuY2ggb2YgYml0cm90dGVkIHNjYWxlciBjb2RlLiBIZXJlIGFyZSBzb21lIGVhc3kKcHJl
cCBwYXRjaGVzLgoKVmlsbGUgU3lyasOkbMOkICg4KToKICBkcm0vaTkxNTogUGFyYW1ldHJpemUg
UEZJVF9QSVBFCiAgZHJtL2k5MTU6IFJlcGxhY2Ugc29tZSBhY2NpZGVudGFsIEk5MTVfUkVBRF9G
VygpcyB3aXRoIHRoZSBub3JtYWwKICAgIHZlcnNpb24KICBkcm0vaTkxNTogRml4IHNrbCsgbm9u
LXNjYWxlZCBwZml0IG1vZGVzCiAgZHJtL2k5MTU6IEZsYXR0ZW4gYSBidW5jaCBvZiB0aGUgcGZp
dCBmdW5jdGlvbnMKICBkcm0vaTkxNTogVXNlIGRybV9yZWN0IHRvIHN0b3JlIHRoZSBwZml0IHdp
bmRvdyBwb3Mvc2l6ZQogIGRybS9pOTE1OiBzL3BpcGVfY29uZmlnL2NydGNfc3RhdGUvIGluIHBm
aXQgZnVuY3Rpb25zCiAgZHJtL2k5MTU6IFBhc3MgY29ubmVjdG9yIHN0YXRlIHRvIHBmaXQgY2Fs
Y3VsYXRpb25zCiAgZHJtL2k5MTU6IEhhdmUgcGZpdCBjYWxjdWxhdGlvbnMgcmV0dXJuIGFuIGVy
cm9yIGNvZGUKCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ljbF9kc2kuYyAgICAgICAg
fCAgMTEgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jICB8
IDI4MiArKysrKysrKysrLS0tLS0tLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGlzcGxheS5oICB8ICAgMSAtCiAuLi4vZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5
X3R5cGVzLmggICAgfCAgIDMgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZHAuYyAgICAgICB8ICAzOCArLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
aGRtaS5jICAgICB8ICAzNyArLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
bHZkcy5jICAgICB8ICAxNiArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9w
YW5lbC5jICAgIHwgMTI1ICsrKystLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX3BhbmVsLmggICAgfCAgMTAgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvdmx2
X2RzaS5jICAgICAgICB8ICAgOSArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCAg
ICAgICAgICAgICAgIHwgICAxICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmMgICAg
ICAgICAgICAgICB8ICAzNyArLS0KIDEyIGZpbGVzIGNoYW5nZWQsIDI4MiBpbnNlcnRpb25zKCsp
LCAyODggZGVsZXRpb25zKC0pCgotLSAKMi4yMS4wCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZng=
