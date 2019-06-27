Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 78D7958086
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Jun 2019 12:39:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F068E6E126;
	Thu, 27 Jun 2019 10:39:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 802F06E126
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Jun 2019 10:39:28 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Jun 2019 03:39:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,423,1557212400"; d="scan'208";a="189015443"
Received: from lswidere-mobl.ger.corp.intel.com (HELO [10.249.140.121])
 ([10.249.140.121])
 by fmsmga002.fm.intel.com with ESMTP; 27 Jun 2019 03:39:26 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190627080339.9178-1-lionel.g.landwerlin@intel.com>
 <156163086213.20851.13729658057147323012@skylake-alporthouse-com>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <d37bf1f5-7634-1040-1dc6-ae7a96d3245d@intel.com>
Date: Thu, 27 Jun 2019 13:39:24 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <156163086213.20851.13729658057147323012@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v2 0/2] drm/i915: timeline semaphore support
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
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gMjcvMDYvMjAxOSAxMzoyMSwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+IFF1b3RpbmcgTGlvbmVs
IExhbmR3ZXJsaW4gKDIwMTktMDYtMjcgMDk6MDM6MzcpCj4+IEhpLAo+Pgo+PiBUaGlzIHJldmlz
aW9uIGdldHMgcmlkIG9mIHRoZSBzeW5jaHJvbm91cyB3YWl0LiBXZSBub3cgaW1wbGVtZW50IHRo
ZQo+PiBzeW5jaHJvbm91cyB3YWl0IGFzIHBhcnQgb2YgdGhlIHVzZXJzcGFjZSBkcml2ZXIuIEEg
dGhyZWFkIGlzIHNwYXduZWQKPj4gZm9yIGVhY2ggZW5naW5lIGFuZCB3YWl0cyBmb3IgYXZhaWxh
YmlsaXR5IG9mIHRoZSBzeW5jb2JqcyBiZWZvcmUKPj4gY2FsbGluZyBpbnRvIGV4ZWNidWZmZXIu
Cj4gV2h5IHdvdWxkIHlvdSBkbyB0aGF0PyBJdCdzIG5vdCBsaWtlIHRoZSBrZXJuZWwgYWxyZWFk
eSBoYXMgdGhlIGFiaWxpdHkKPiB0byBzZXJpYWxpc2VzIGV4ZWN1dGlvbiBhc3luY2hyb25vdXNs
eS4uLgo+IC1DaHJpcwo+Ck1heWJlIEkgZGlkbid0IGV4cHJlc3MgbXlzZWxmIHdlbGwuCgpUaGVy
ZSBpcyBhIHJlcXVpcmVtZW50IGZyb20gdGhlIFZ1bGthbiBzcGVjIHRoYXQgd2Ugc2hvdWxkIGJl
IGFibGUgdG8gCnF1ZXVlIGEgd29ya2xvYWQgZGVwZW5kaW5nIG9uIGZlbmNlcyB0aGF0IGhhdmVu
J3QgbWF0ZXJpYWxpemVkIHlldC4KCgpUaGUgbGFzdCByZXZpc2lvbiBpbXBsZW1lbnRlZCB0aGF0
IGluIHRoZSBpOTE1IGJ5IGJsb2NraW5nIGluIHRoZSAKZXhlY2J1ZmZlciB1bnRpbCB0aGUgaW5w
dXQgZmVuY2VzIGhhZCBhbGwgbWF0ZXJpYWxpemVkLgoKV2UgbW92ZWQgdGhhdCBpbnRvIHRoZSB1
c2Vyc3BhY2UgZHJpdmVyLiBUaGF0IG1ha2VzIHRoZSBpOTE1IGV4ZWNidWZmZXIgCnBhdGggbm90
IGJsb2NrICh3aGljaCBpcyBvbmUgdGhpbmcgeW91IG1lbnRpb25lZCB3YXMgYSBiZWhhdmlvciBj
aGFuZ2UgCmluIHJldjEpLgoKSXQgYWxzbyBtYWtlcyBBbnYgbm90IGJsb2NrIG9uIFF1ZXVlU3Vi
bWl0KCkgYmVjYXVzZSBpdCBoYW5kcyBvdmVyIHRoZSAKd2FpdGluZyB0byBhIHRocmVhZCBkZWRp
Y2F0ZWQgdG8gdGhlIHF1ZXVlLgoKCi1MaW9uZWwKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeA==
