Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 64CCD1442CB
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Jan 2020 18:11:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3917A6E222;
	Tue, 21 Jan 2020 17:11:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D5DD6E222
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Jan 2020 17:11:04 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 Jan 2020 09:11:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,346,1574150400"; d="scan'208";a="215604174"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga007.jf.intel.com with SMTP; 21 Jan 2020 09:11:01 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 21 Jan 2020 19:11:00 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 21 Jan 2020 19:10:49 +0200
Message-Id: <20200121171100.4370-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 00/11] drm/i915: Hotplug cleanups
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCklt
cHJvdmUgYSBidW5jaCBvZiBzdHVmZiBhcm91bmQgZW5jb2Rlci0+aHBkX3BpbiBhbmQKY29ubmVj
dG9yLT5wb2xsZWQuCgpWaWxsZSBTeXJqw6Rsw6QgKDExKToKICBkcm0vaTkxNTogUHJlZmVyIGlu
dGVsX2Nvbm5lY3RvciBvdmVyIGRybV9jb25uZWN0b3IgaW4gaG90cGx1ZyBjb2RlCiAgZHJtL2k5
MTU6IEludHJvZHVjZSBpbnRlbF9jb25uZWN0b3JfaHBkX3BpbigpCiAgZHJtL2k5MTUvY3J0OiBD
b25maWd1cmUgY29ubmVjdG9yLT5wb2xsZWQgYW5kIGVuY29kZXItPmhwZF9waW4KICAgIGNvbnNp
c3RlbnRseQogIGRybS9pOTE1L2hwZDogUmVwbGFjZSB0aGUgbG9vcC13aXRoaW4tbG9vcCB3aXRo
IHR3byBpbmRlcGVuZGVudCBsb29wcwogIGRybS9pOTE1OiBNYXJrIGFsbCBIUEQgY2FwYWJsZWQg
Y29ubmVjdG9ycyBhcyBzdWNoCiAgZHJtL2k5MTU6IE1hcmsgbnMyNTAxIGFzIExWRFMgd2l0aG91
dCBhIGZpeGVkIG1vZGUKICBkcm0vaTkxNS9kdm86IE1hcmsgVE1EUyBEVk8gY29ubmVjdG9ycyBh
cyBwb2xsZWQKICBkcm0vaTkxNTogU3ByaW5rbGUgbWlzc2luZyBjb21tYXMKICBkcm0vaTkxNTog
VHVybiBpbnRlbF9kaWdpdGFsX3BvcnRfY29ubmVjdGVkKCkgaW4gYSB2ZnVuYwogIGRybS9pOTE1
OiBTdGFzaCBocGQgc3RhdHVzIGJpdHMgdW5kZXIgZGV2X3ByaXYKICBkcm0vaTkxNTogVXNlIHN0
YXNoZWQgYXdheSBocGQgaXNyIGJpdHMgaW4KICAgIGludGVsX2RpZ2l0YWxfcG9ydF9jb25uZWN0
ZWQoKQoKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3J0LmMgICAgICB8ICAx
MSArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYyAgICAgIHwgIDE3
ICsrCiAuLi4vZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmggICAgfCAgIDEg
KwogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jICAgICAgIHwgMTkxICsr
LS0tLS0tLS0tLS0tLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuaCAg
ICAgICB8ICAgMyArCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2R2by5jICAg
ICAgfCAgMTUgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaGRtaS5jICAg
ICB8ICAgMSArCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hvdHBsdWcuYyAg
fCAxMjkgKysrKystLS0tLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfc2R2
by5jICAgICB8ICAgMSArCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3RjLmMg
ICAgICAgfCAgIDcgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdGMuaCAg
ICAgICB8ICAgMiArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaCAgICAgICAgICAg
ICAgIHwgICAyICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfaXJxLmMgICAgICAgICAgICAg
ICB8IDIxNiArKysrKysrKysrLS0tLS0tLS0KIDEzIGZpbGVzIGNoYW5nZWQsIDI0OSBpbnNlcnRp
b25zKCspLCAzNDcgZGVsZXRpb25zKC0pCgotLSAKMi4yNC4xCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
