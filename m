Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C1D981C626
	for <lists+intel-gfx@lfdr.de>; Tue, 14 May 2019 11:34:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 34595892FE;
	Tue, 14 May 2019 09:34:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 545C8892FE
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 May 2019 09:34:52 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 May 2019 02:34:51 -0700
X-ExtLoop1: 1
Received: from unknown (HELO [10.103.238.204]) ([10.103.238.204])
 by orsmga005.jf.intel.com with ESMTP; 14 May 2019 02:34:50 -0700
To: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190502231315.7388-1-umesh.nerlige.ramappa@intel.com>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <2f27cddc-3ca2-c347-bbbc-eddee3024e7e@intel.com>
Date: Tue, 14 May 2019 10:34:49 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190502231315.7388-1-umesh.nerlige.ramappa@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/perf: Refactor oa object to better
 manage resources
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

SGkgVW1lc2gsCgpJIGp1c3Qgbm90aWNlZCB0aGlzIGRpZmZlcmVudCBiZXR3ZWVuIHYxICYgdjIu
Ck15IHVuZGVyc3RhbmRpbmcgaXMgdGhhdCBpZiBkZXN0cm95KCkgaXMgY2FsbGVkLCBzdHJlYW0g
c2hvdWxkIGJlIHRoZSAKc2FtZSBhcyBkZXZfcHJpdi0+cGVyZi5leGNsdXNpdmVfc3RyZWFtLgpJ
ZiBpdCdzIG5vdCBpdCBzb3VuZHMgbGlrZSBhIGJ1Zy4gU28gd2h5IGNoYW5nZSB0aGlzPwoKLUxp
b25lbAoKT24gMDMvMDUvMjAxOSAwMDoxMywgVW1lc2ggTmVybGlnZSBSYW1hcHBhIHdyb3RlOgo+
ICAgc3RhdGljIHZvaWQgaTkxNV9vYV9zdHJlYW1fZGVzdHJveShzdHJ1Y3QgaTkxNV9wZXJmX3N0
cmVhbSAqc3RyZWFtKQo+ICAgewo+ICAgCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJp
diA9IHN0cmVhbS0+ZGV2X3ByaXY7Cj4gICAKPiAtCUJVR19PTihzdHJlYW0gIT0gZGV2X3ByaXYt
PnBlcmYub2EuZXhjbHVzaXZlX3N0cmVhbSk7Cj4gKwlpZiAoc3RyZWFtICE9IGRldl9wcml2LT5w
ZXJmLmV4Y2x1c2l2ZV9zdHJlYW0pIHsKPiArCQlXQVJOX09OX09OQ0Uoc3RyZWFtICE9IGRldl9w
cml2LT5wZXJmLmV4Y2x1c2l2ZV9zdHJlYW0pOwo+ICsJCXJldHVybjsKPiArCX0KPiAgIAo+ICAg
CS8qCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
