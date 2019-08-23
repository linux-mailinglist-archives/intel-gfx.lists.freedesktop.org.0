Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AA0F9ACFB
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Aug 2019 12:19:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 69D7F6E057;
	Fri, 23 Aug 2019 10:19:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA5E46E057
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Aug 2019 10:19:12 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Aug 2019 03:19:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,420,1559545200"; d="scan'208";a="196454150"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.150])
 by fmsmga001.fm.intel.com with ESMTP; 23 Aug 2019 03:19:11 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20190821133221.29456-10-maarten.lankhorst@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20190821133221.29456-1-maarten.lankhorst@linux.intel.com>
 <20190821133221.29456-10-maarten.lankhorst@linux.intel.com>
Date: Fri, 23 Aug 2019 13:19:10 +0300
Message-ID: <874l28b2w1.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 09/10] drm/i915: Add debugfs entries for
 reading out DPCD DSC and FEC.
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

T24gV2VkLCAyMSBBdWcgMjAxOSwgTWFhcnRlbiBMYW5raG9yc3QgPG1hYXJ0ZW4ubGFua2hvcnN0
QGxpbnV4LmludGVsLmNvbT4gd3JvdGU6Cj4gRHVtcCB0aGUgRFNDIGFuZCBGRUMgaW4gaTkxNV9k
cGNkIGFzIHdlbGwuIFRoaXMgaXMgdXNlZnVsIHdoZW4KPiBkZWJ1Z2dpbmcgdGhlIGxpbmsgY2Fw
cy4KCkkgdGhvdWdodCB3ZSB3ZXJlIGdvaW5nIHRvIGdldCByaWQgb2YgdGhpcyBwYXJ0aWN1bGFy
IGRlYnVnZnMgZmlsZQphbHRvZ2V0aGVyIGFnZXMgYWdvLiBZb3UgY2FuIGR1bXAgdGhlIERQQ0Qg
dXNpbmcKQ09ORklHX0RSTV9EUF9BVVhfQ0hBUkRFVj15IGFuZCBkZCBvbiAvZGV2L2RybV9kcF9h
dXhOLgoKQlIsCkphbmkuCgo+Cj4gU2lnbmVkLW9mZi1ieTogTWFhcnRlbiBMYW5raG9yc3QgPG1h
YXJ0ZW4ubGFua2hvcnN0QGxpbnV4LmludGVsLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9kZWJ1Z2ZzLmMgfCAyICsrCj4gIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlv
bnMoKykKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RlYnVnZnMu
YyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZGVidWdmcy5jCj4gaW5kZXggNjEwYmM5YjVk
NzQwLi5jMmYxNWRlMDc0MjcgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9kZWJ1Z2ZzLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RlYnVnZnMuYwo+
IEBAIC00Mzk2LDggKzQzOTYsMTAgQEAgc3RydWN0IGRwY2RfYmxvY2sgewo+ICAKPiAgc3RhdGlj
IGNvbnN0IHN0cnVjdCBkcGNkX2Jsb2NrIGk5MTVfZHBjZF9kZWJ1Z1tdID0gewo+ICAJeyAub2Zm
c2V0ID0gRFBfRFBDRF9SRVYsIC5zaXplID0gRFBfUkVDRUlWRVJfQ0FQX1NJWkUgfSwKPiArCXsg
Lm9mZnNldCA9IERQX0RTQ19TVVBQT1JULCAuZW5kID0gRFBfRFNDX0JJVFNfUEVSX1BJWEVMX0lO
QyB9LAo+ICAJeyAub2Zmc2V0ID0gRFBfUFNSX1NVUFBPUlQsIC5lbmQgPSBEUF9QU1JfQ0FQUyB9
LAo+ICAJeyAub2Zmc2V0ID0gRFBfRE9XTlNUUkVBTV9QT1JUXzAsIC5zaXplID0gMTYgfSwKPiAr
CXsgLm9mZnNldCA9IERQX0ZFQ19DQVBBQklMSVRZIH0sCj4gIAl7IC5vZmZzZXQgPSBEUF9MSU5L
X0JXX1NFVCwgLmVuZCA9IERQX0VEUF9DT05GSUdVUkFUSU9OX1NFVCB9LAo+ICAJeyAub2Zmc2V0
ID0gRFBfU0lOS19DT1VOVCwgLmVuZCA9IERQX0FESlVTVF9SRVFVRVNUX0xBTkUyXzMgfSwKPiAg
CXsgLm9mZnNldCA9IERQX1NFVF9QT1dFUiB9LAoKLS0gCkphbmkgTmlrdWxhLCBJbnRlbCBPcGVu
IFNvdXJjZSBHcmFwaGljcyBDZW50ZXIKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4
