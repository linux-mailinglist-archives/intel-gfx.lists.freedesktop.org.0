Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8899E5E136
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Jul 2019 11:44:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9EEE16E108;
	Wed,  3 Jul 2019 09:44:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 065B76E108;
 Wed,  3 Jul 2019 09:44:19 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17110931-1500050 for multiple; Wed, 03 Jul 2019 10:44:16 +0100
MIME-Version: 1.0
To: Patchwork <patchwork@emeril.freedesktop.org>,
 Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190702212810.28692.42169@emeril.freedesktop.org>
References: <20190702144947.13127-1-ville.syrjala@linux.intel.com>
 <20190702212810.28692.42169@emeril.freedesktop.org>
Message-ID: <156214705435.2466.3084775728035032427@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Wed, 03 Jul 2019 10:44:14 +0100
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_synchronize=5Firq=28=29_against_the_actual_irq_=28rev2?=
 =?utf-8?q?=29?=
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBQYXRjaHdvcmsgKDIwMTktMDctMDIgMjI6Mjg6MTApCj4gIyMjIyBQb3NzaWJsZSBm
aXhlcyAjIyMjCj4gCj4gICAqIGlndEBpOTE1X3BtX3JwbUBtb2R1bGUtcmVsb2FkOgo+ICAgICAt
IGZpLWtibC1yOiAgICAgICAgICAgW0RNRVNHLVdBUk5dWzldIChbZmRvIzExMTAxMl0pIC0+IFtQ
QVNTXVsxMF0KPiAgICBbOV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10
aXAvQ0lfRFJNXzYzOTgvZmkta2JsLXIvaWd0QGk5MTVfcG1fcnBtQG1vZHVsZS1yZWxvYWQuaHRt
bAo+ICAgIFsxMF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0
Y2h3b3JrXzEzNDk0L2ZpLWtibC1yL2lndEBpOTE1X3BtX3JwbUBtb2R1bGUtcmVsb2FkLmh0bWwK
PiAgICAgLSBmaS1oc3ctcGVwcHk6ICAgICAgIFtETUVTRy1XQVJOXVsxMV0gKFtmZG8jMTExMDEy
XSkgLT4gW1BBU1NdWzEyXQo+ICAgIFsxMV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90
cmVlL2RybS10aXAvQ0lfRFJNXzYzOTgvZmktaHN3LXBlcHB5L2lndEBpOTE1X3BtX3JwbUBtb2R1
bGUtcmVsb2FkLmh0bWwKPiAgICBbMTJdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJl
ZS9kcm0tdGlwL1BhdGNod29ya18xMzQ5NC9maS1oc3ctcGVwcHkvaWd0QGk5MTVfcG1fcnBtQG1v
ZHVsZS1yZWxvYWQuaHRtbAoKUHVzaGVkIGZvciB0aGUgQkFUIGNsZWFudXAuCi1DaHJpcwpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
