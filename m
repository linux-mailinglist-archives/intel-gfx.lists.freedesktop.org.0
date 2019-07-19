Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2012C6E3C1
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Jul 2019 11:52:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D5B396E492;
	Fri, 19 Jul 2019 09:52:33 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2E5EC6E492
 for <Intel-gfx@lists.freedesktop.org>; Fri, 19 Jul 2019 09:52:32 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Jul 2019 02:52:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,281,1559545200"; d="scan'208";a="176255778"
Received: from jlahtine-desk.ger.corp.intel.com (HELO localhost)
 ([10.252.3.98])
 by FMSMGA003.fm.intel.com with ESMTP; 19 Jul 2019 02:52:30 -0700
MIME-Version: 1.0
To: Intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
In-Reply-To: <20190719094845.6242-1-tvrtko.ursulin@linux.intel.com>
References: <20190719094845.6242-1-tvrtko.ursulin@linux.intel.com>
Message-ID: <156352994951.31974.18375063503833033938@jlahtine-desk.ger.corp.intel.com>
User-Agent: alot/0.7
Date: Fri, 19 Jul 2019 12:52:29 +0300
Subject: Re: [Intel-gfx] [PATCH 0/2] Revert GuC by default
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

QWNrZWQtYnk6IEpvb25hcyBMYWh0aW5lbiA8am9vbmFzLmxhaHRpbmVuQGxpbnV4LmludGVsLmNv
bT4KClJlZ2FyZHMsIEpvb25hcwoKUXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wNy0xOSAx
Mjo0ODo0MykKPiBGcm9tOiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29t
Pgo+IAo+IEl0IHNlZW1zIGFic2VuY2Ugb2YgR3VDIGZpbXJ3YXJlIGJyZWFrcyB0aGUgYm9vdCBp
biBhIGJhZCB3YXk6Cj4gCj4gaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRp
cC9Ucnlib3RfNDY0MC8/Cj4gaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRp
cC9Ucnlib3RfNDY0MC9maS1pY2wtdTIvYm9vdDAubG9nCj4gCj4gVHZydGtvIFVyc3VsaW4gKDIp
Ogo+ICAgUmV2ZXJ0ICJkcm0vaTkxNS9ndWM6IFR1cm4gb24gR3VDL0h1QyBhdXRvIG1vZGUiCj4g
ICBSZXZlcnQgImRybS9pOTE1OiBVcGRhdGUgZGVzY3JpcHRpb24gb2YgaTkxNS5lbmFibGVfZ3Vj
IG1vZHBhcmFtIgo+IAo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BhcmFtcy5jIHwgMiAr
LQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BhcmFtcy5oIHwgMiArLQo+ICAyIGZpbGVz
IGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPiAKPiAtLSAKPiAyLjIw
LjEKPiAKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+
IEludGVsLWdmeCBtYWlsaW5nIGxpc3QKPiBJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cj4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
ZngKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
