Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CC937A65E
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jul 2019 13:02:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1DE4A6E48F;
	Tue, 30 Jul 2019 11:02:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5DC6E6E48F
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Jul 2019 11:02:06 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Jul 2019 04:02:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,326,1559545200"; d="scan'208";a="370910601"
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by fmsmga005.fm.intel.com with ESMTP; 30 Jul 2019 04:02:03 -0700
Received: from mwajdecz-mobl1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [172.28.174.50])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 x6UB23sw013414; Tue, 30 Jul 2019 12:02:04 +0100
To: intel-gfx@lists.freedesktop.org, "Joonas Lahtinen"
 <joonas.lahtinen@linux.intel.com>
References: <20190729112612.37476-1-michal.wajdeczko@intel.com>
 <156447037950.6153.16062882371331302443@jlahtine-desk.ger.corp.intel.com>
Date: Tue, 30 Jul 2019 13:02:03 +0200
MIME-Version: 1.0
From: "Michal Wajdeczko" <michal.wajdeczko@intel.com>
Message-ID: <op.z5ql9pukxaggs7@mwajdecz-mobl1.ger.corp.intel.com>
In-Reply-To: <156447037950.6153.16062882371331302443@jlahtine-desk.ger.corp.intel.com>
User-Agent: Opera Mail/1.0 (Win32)
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/uc: Don't fail on HuC firmware
 failure
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"; DelSp="yes"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCAzMCBKdWwgMjAxOSAwOTowNjoxOSArMDIwMCwgSm9vbmFzIExhaHRpbmVuICAKPGpv
b25hcy5sYWh0aW5lbkBsaW51eC5pbnRlbC5jb20+IHdyb3RlOgoKPiBRdW90aW5nIE1pY2hhbCBX
YWpkZWN6a28gKDIwMTktMDctMjkgMTQ6MjY6MTIpCj4+IEh1QyBpcyB1c3VhbGx5IG5vdCBhIGNy
aXRpY2FsIGNvbXBvbmVudCwgc28gd2UgY2FuIHNhZmVseSBpZ25vcmUKPj4gZmlybXdhcmUgbG9h
ZCBvciBhdXRoZW50aWNhdGlvbiBmYWlsdXJlcyB1bmxlc3MgSHVDIHdhcyBleHBsaWNpdGx5Cj4+
IHJlcXVlc3RlZCBieSB0aGUgdXNlci4KPgo+IERvIHdlIGhhdmUgdGhlIGZhdWx0IGluamVjdGlv
biBhbmQgcmVzcGVjdGl2ZSBJR1QgcGF0Y2hlcyBzb21ld2hlcmU/CgpmYXVsdCBpbmplY3Rpb24g
KGF0IHZhcmlvdXMgcGxhY2VzKSBpcyBXSVAKCmh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9w
Lm9yZy9zZXJpZXMvNjQzOTAvI3JldjEKCklHVCB3YXMgYWxzbyBkaXNjdXNzZWQKCmh0dHBzOi8v
cGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9wYXRjaC8zMDU4MDUvP3Nlcmllcz02MDgwMCZyZXY9
MwoKYnV0IHdlIHN0b3BwZWQgYXQKCmh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9w
YXRjaC8zMDU4MDYvP3Nlcmllcz02MDgwNyZyZXY9MgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4
