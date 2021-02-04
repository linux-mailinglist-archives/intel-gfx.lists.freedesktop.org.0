Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A97A30FE6E
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Feb 2021 21:35:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A5A86E145;
	Thu,  4 Feb 2021 20:35:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5AA796E145
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Feb 2021 20:35:32 +0000 (UTC)
IronPort-SDR: 9RDzV50K+3KLT4X2q8jDrKNYSw3BPgkdKTKy0DIV+qDaYVNaE0qRSrLIY1aFiX/kkcmlMCT5Ih
 NBaburoBotsA==
X-IronPort-AV: E=McAfee;i="6000,8403,9885"; a="169002786"
X-IronPort-AV: E=Sophos;i="5.81,153,1610438400"; d="scan'208";a="169002786"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2021 12:35:31 -0800
IronPort-SDR: hDCx0KaLV1S2weiIeRLDgQ00blxQ4C73HbQCa0az81RhvLBmxbIMZ7L1seMZpNt24RsvkaHeXI
 3YrnX3/iPpYw==
X-IronPort-AV: E=Sophos;i="5.81,153,1610438400"; d="scan'208";a="393368663"
Received: from dbmayer-mobl.ger.corp.intel.com (HELO localhost) ([10.252.53.1])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2021 12:35:29 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
In-Reply-To: <YBxY6VV00sNJ/rqR@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1612467466.git.jani.nikula@intel.com>
 <b84e4d31c02dc9722522b003958ffbe12837e58b.1612467466.git.jani.nikula@intel.com>
 <YBxY6VV00sNJ/rqR@intel.com>
Date: Thu, 04 Feb 2021 22:35:26 +0200
Message-ID: <87zh0jefld.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v11 03/10] drm/i915: migrate skl planes code
 new file (v5)
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
Cc: Dave Airlie <airlied@redhat.com>, intel-gfx@lists.freedesktop.org,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCAwNCBGZWIgMjAyMSwgVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4
LmludGVsLmNvbT4gd3JvdGU6Cj4gT24gVGh1LCBGZWIgMDQsIDIwMjEgYXQgMDk6NDM6MjBQTSAr
MDIwMCwgSmFuaSBOaWt1bGEgd3JvdGU6Cj4+IC11bnNpZ25lZCBpbnQKPj4gLWludGVsX3BsYW5l
X2ZlbmNlX3lfb2Zmc2V0KGNvbnN0IHN0cnVjdCBpbnRlbF9wbGFuZV9zdGF0ZSAqcGxhbmVfc3Rh
dGUpCj4+IC17Cj4+IC0JaW50IHggPSAwLCB5ID0gMDsKPj4gLQo+PiAtCWludGVsX3BsYW5lX2Fk
anVzdF9hbGlnbmVkX29mZnNldCgmeCwgJnksIHBsYW5lX3N0YXRlLCAwLAo+PiAtCQkJCQkgIHBs
YW5lX3N0YXRlLT5jb2xvcl9wbGFuZVswXS5vZmZzZXQsIDApOwo+PiAtCj4+IC0JcmV0dXJuIHk7
Cj4+IC19Cj4KPiBUaGlzIHVucmVsYXRlZCBjb2RlIG1vdGlvbiBpcyBzdGlsbCBoZXJlLCBtZXNz
aW5nIHVwIHRoZSBkaWZmLgoKUmlnaHQuIEkgd2Fzbid0IGxvb2tpbmcgdG8gaW1wcm92ZSBhbnl0
aGluZywgSSBqdXN0IHdhbnRlZCB0byByZWJhc2UgYW5kCmdldCB0ZXN0IHJlc3VsdHMuCgpCUiwK
SmFuaS4KCj4KPiA8c25pcD4KPj4gIH0KPj4gIAo+PiAtdm9pZCBza2xfc2NhbGVyX2Rpc2FibGUo
Y29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKm9sZF9jcnRjX3N0YXRlKQo+PiAtewo+PiAt
CXN0cnVjdCBpbnRlbF9jcnRjICpjcnRjID0gdG9faW50ZWxfY3J0YyhvbGRfY3J0Y19zdGF0ZS0+
dWFwaS5jcnRjKTsKPj4gLQlpbnQgaTsKPj4gLQo+PiAtCWZvciAoaSA9IDA7IGkgPCBjcnRjLT5u
dW1fc2NhbGVyczsgaSsrKQo+PiAtCQlza2xfZGV0YWNoX3NjYWxlcihjcnRjLCBpKTsKPj4gLX0K
Pgo+IGRpdHRvCgotLSAKSmFuaSBOaWt1bGEsIEludGVsIE9wZW4gU291cmNlIEdyYXBoaWNzIENl
bnRlcgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
