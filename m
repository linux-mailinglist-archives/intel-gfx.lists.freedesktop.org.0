Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DCE4D67B81
	for <lists+intel-gfx@lfdr.de>; Sat, 13 Jul 2019 19:28:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B57ED89CD4;
	Sat, 13 Jul 2019 17:28:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 748F489CD4
 for <intel-gfx@lists.freedesktop.org>; Sat, 13 Jul 2019 17:28:41 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Jul 2019 10:28:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,487,1557212400"; d="scan'208";a="194071600"
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by fmsmga002.fm.intel.com with ESMTP; 13 Jul 2019 10:28:40 -0700
Received: from mwajdecz-mobl1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [10.249.128.107])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 x6DHScjD030416; Sat, 13 Jul 2019 18:28:39 +0100
To: intel-gfx@lists.freedesktop.org, "Chris Wilson" <chris@chris-wilson.co.uk>
References: <20190713100016.8026-1-chris@chris-wilson.co.uk>
Date: Sat, 13 Jul 2019 19:28:37 +0200
MIME-Version: 1.0
From: "Michal Wajdeczko" <michal.wajdeczko@intel.com>
Message-ID: <op.z4vmtz1qxaggs7@mwajdecz-mobl1.ger.corp.intel.com>
In-Reply-To: <20190713100016.8026-1-chris@chris-wilson.co.uk>
User-Agent: Opera Mail/1.0 (Win32)
Subject: Re: [Intel-gfx] [PATCH 01/11] drm/i915/guc: Use system workqueue
 for log capture
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

T24gU2F0LCAxMyBKdWwgMjAxOSAxMjowMDowNiArMDIwMCwgQ2hyaXMgV2lsc29uICAKPGNocmlz
QGNocmlzLXdpbHNvbi5jby51az4gd3JvdGU6Cgo+IFdlIG9ubHkgZW1wbG95IGEgc2luZ2xlIHRh
c2sgZm9yIGxvZyBjYXB0dXJlLCBhbmQgY3JlYXRlZCBhIHdvcmtxdWV1ZQo+IGZvciB0aGUgcHVy
cG9zZSBvZiBlbnN1cmluZyB3ZSBoYWQgYSBoaWdoIHByaW9yaXR5IHF1ZXVlIGZvciBsb3cKPiBs
YXRlbmN5LiBXZSBjYW4gc2ltcGx5IHVzZSB0aGUgc3lzdGVtX2hpZ2hwcmlfd3EgYW5kIGF2b2lk
IHRoZQo+IGNvbXBsaWNhdGlvbiB3aXRoIGNyZWF0aW5nIG91ciBvd24gYWRtaXN0IHRoZSBtYXpl
IG9mIG11dGV4ZXMuCj4gKEN1cnJlbnRseSB3ZSBjcmVhdGUgdGhlIHdxIGVhcmx5IGJlZm9yZSB3
ZSBldmVuIGtub3cgd2UgbmVlZCBpdCBpbgo+IG9yZGVyIHRvIGF2b2lkIHRyeWluZyB0byBjcmVh
dGUgaXQgb24gZGVtYW5kIHdoaWxlIHdlIGhvbGQgdGhlIGxvZ2dpbmcKPiBtdXRleC4pCj4KPiBT
aWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiBD
YzogRGFuaWVsZSBDZXJhb2xvIFNwdXJpbyA8ZGFuaWVsZS5jZXJhb2xvc3B1cmlvQGludGVsLmNv
bT4KPiBDYzogTWljaGFsIFdhamRlY3prbyA8bWljaGFsLndhamRlY3prb0BpbnRlbC5jb20+Cj4g
Q2M6IE1pY2hhxYIgV2luaWFyc2tpIDxtaWNoYWwud2luaWFyc2tpQGludGVsLmNvbT4KPiAtLS0K
ClJldmlld2VkLWJ5OiBNaWNoYWwgV2FqZGVjemtvIDxtaWNoYWwud2FqZGVjemtvQGludGVsLmNv
bT4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
