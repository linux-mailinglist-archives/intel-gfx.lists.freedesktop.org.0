Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E05B5AE813
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Sep 2019 12:27:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B51D16E02A;
	Tue, 10 Sep 2019 10:27:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E74506E02A
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Sep 2019 10:27:33 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Sep 2019 03:27:33 -0700
X-IronPort-AV: E=Sophos;i="5.64,489,1559545200"; d="scan'208";a="335876533"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Sep 2019 03:27:29 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Swati Sharma <swati2.sharma@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <1568030503-26747-1-git-send-email-swati2.sharma@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <1568030503-26747-1-git-send-email-swati2.sharma@intel.com>
Date: Tue, 10 Sep 2019 13:27:26 +0300
Message-ID: <87mufc1m5t.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [v2][PATCH 0/3] adding gamma state checker for CHV
 and i965
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
Cc: daniel.vetter@ffwll.ch, ankit.k.nautiyal@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCAwOSBTZXAgMjAxOSwgU3dhdGkgU2hhcm1hIDxzd2F0aTIuc2hhcm1hQGludGVsLmNv
bT4gd3JvdGU6Cj4gSW4gdGhpcyBwYXRjaCBzZXJpZXMsIGFkZGVkIHN0YXRlIGNoZWNrZXIgdG8g
dmFsaWRhdGUgZ2FtbWEgbHV0IHZhbHVlcwo+IGZvciBjaGVycnl2aWV3IGFuZCBpOTY1IHBsYXRm
b3Jtcy4gSXQncyBleHRlbnNpb24gb2YgdGhlCj4gcGF0Y2ggc2VyaWVzIGh0dHBzOi8vcGF0Y2h3
b3JrLmZyZWVkZXNrdG9wLm9yZy9wYXRjaC8zMjgyNDYvP3Nlcmllcz01ODAzOQo+IHdoaWNoIGVu
YWJsZWQgdGhlIGJhc2ljIGluZnJhc3RydWN0dXJlIGFuZCBzdGF0ZSBjaGVja2VyIGZvciAKPiBm
ZXcgbGVnYWN5IHBsYXRmb3Jtcy4KPgo+IHYyOiBBZGRlZCBsYXN0IGluZGV4IHJnYiBsdXQgdmFs
dWUgZnJvbSBQSVBFR0NNQVggdG8gaC93IGJsb2IgW0phbmldCgpQdXNoZWQsIHRoYW5rcyBmb3Ig
dGhlIHBhdGNoZXMuCgpCUiwKSmFuaS4KCgo+Cj4gU3dhdGkgU2hhcm1hICgzKToKPiAgIGRybS9p
OTE1L2Rpc3BsYXk6IEFkZCBnYW1tYSBwcmVjaXNpb24gZnVuY3Rpb24gZm9yIENIVgo+ICAgZHJt
L2k5MTUvZGlzcGxheTogRXh0cmFjdCBpOTY1X3JlYWRfbHV0cygpCj4gICBkcm0vaTkxNS9kaXNw
bGF5OiBFeHRyYWN0IGNodl9yZWFkX2x1dHMoKQo+Cj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfY29sb3IuYyB8IDExOCArKysrKysrKysrKysrKysrKysrKysrKysrKystLQo+
ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oICAgICAgICAgICAgfCAgIDcgKysKPiAg
MiBmaWxlcyBjaGFuZ2VkLCAxMTkgaW5zZXJ0aW9ucygrKSwgNiBkZWxldGlvbnMoLSkKCi0tIApK
YW5pIE5pa3VsYSwgSW50ZWwgT3BlbiBTb3VyY2UgR3JhcGhpY3MgQ2VudGVyCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
