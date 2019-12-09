Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AA5E116E6B
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Dec 2019 15:01:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 255676E453;
	Mon,  9 Dec 2019 14:01:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 17DFD6E44E;
 Mon,  9 Dec 2019 14:01:50 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Dec 2019 06:01:35 -0800
X-IronPort-AV: E=Sophos;i="5.69,294,1571727600"; d="scan'208";a="206899935"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Dec 2019 06:01:32 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: dri-devel@lists.freedesktop.org, linux-fbdev@vger.kernel.org
In-Reply-To: <ddb10df1316ef585930cda7718643a580f4fe37b.1575390741.git.jani.nikula@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1575390740.git.jani.nikula@intel.com>
 <ddb10df1316ef585930cda7718643a580f4fe37b.1575390741.git.jani.nikula@intel.com>
Date: Mon, 09 Dec 2019 16:01:29 +0200
Message-ID: <87tv694myu.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v3 11/12] samples: vfio-mdev: constify fb ops
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>, intel-gfx@lists.freedesktop.org,
 Kirti Wankhede <kwankhede@nvidia.com>, kvm@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCAwMyBEZWMgMjAxOSwgSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4g
d3JvdGU6Cj4gTm93IHRoYXQgdGhlIGZib3BzIG1lbWJlciBvZiBzdHJ1Y3QgZmJfaW5mbyBpcyBj
b25zdCwgd2UgY2FuIHN0YXJ0Cj4gbWFraW5nIHRoZSBvcHMgY29uc3QgYXMgd2VsbC4KPgo+IHYy
OiBmaXgJdHlwbyAoQ2hyaXN0b3BoZSBkZSBEaW5lY2hpbikKPgo+IENjOiBLaXJ0aSBXYW5raGVk
ZSA8a3dhbmtoZWRlQG52aWRpYS5jb20+Cj4gQ2M6IGt2bUB2Z2VyLmtlcm5lbC5vcmcKPiBSZXZp
ZXdlZC1ieTogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBmZndsbC5jaD4KPiBTaWduZWQt
b2ZmLWJ5OiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPgoKS2lydGksIG1heSBJ
IGhhdmUgeW91ciBhY2sgdG8gbWVyZ2UgdGhpcyB0aHJvdWdoIGRybS1taXNjIHBsZWFzZT8KCkJS
LApKYW5pLgoKPiAtLS0KPiAgc2FtcGxlcy92ZmlvLW1kZXYvbWRweS1mYi5jIHwgMiArLQo+ICAx
IGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKPgo+IGRpZmYgLS1n
aXQgYS9zYW1wbGVzL3ZmaW8tbWRldi9tZHB5LWZiLmMgYi9zYW1wbGVzL3ZmaW8tbWRldi9tZHB5
LWZiLmMKPiBpbmRleCAyNzE5YmIyNTk2NTMuLjIxZGJmNjNkNmU0MSAxMDA2NDQKPiAtLS0gYS9z
YW1wbGVzL3ZmaW8tbWRldi9tZHB5LWZiLmMKPiArKysgYi9zYW1wbGVzL3ZmaW8tbWRldi9tZHB5
LWZiLmMKPiBAQCAtODYsNyArODYsNyBAQCBzdGF0aWMgdm9pZCBtZHB5X2ZiX2Rlc3Ryb3koc3Ry
dWN0IGZiX2luZm8gKmluZm8pCj4gIAkJaW91bm1hcChpbmZvLT5zY3JlZW5fYmFzZSk7Cj4gIH0K
PiAgCj4gLXN0YXRpYyBzdHJ1Y3QgZmJfb3BzIG1kcHlfZmJfb3BzID0gewo+ICtzdGF0aWMgY29u
c3Qgc3RydWN0IGZiX29wcyBtZHB5X2ZiX29wcyA9IHsKPiAgCS5vd25lcgkJPSBUSElTX01PRFVM
RSwKPiAgCS5mYl9kZXN0cm95CT0gbWRweV9mYl9kZXN0cm95LAo+ICAJLmZiX3NldGNvbHJlZwk9
IG1kcHlfZmJfc2V0Y29scmVnLAoKLS0gCkphbmkgTmlrdWxhLCBJbnRlbCBPcGVuIFNvdXJjZSBH
cmFwaGljcyBDZW50ZXIKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4
