Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 42F76667D9
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jul 2019 09:38:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C98C86E2E2;
	Fri, 12 Jul 2019 07:38:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 977AF6E2E2
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Jul 2019 07:38:30 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Jul 2019 00:38:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,481,1557212400"; d="scan'208";a="171484808"
Received: from jlahtine-mobl.ger.corp.intel.com (HELO localhost)
 ([10.237.66.136])
 by orsmga006.jf.intel.com with ESMTP; 12 Jul 2019 00:38:26 -0700
MIME-Version: 1.0
To: Jani Nikula <jani.nikula@linux.intel.com>,
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
In-Reply-To: <20190711073155.10926-4-janusz.krzysztofik@linux.intel.com>
References: <20190711073155.10926-1-janusz.krzysztofik@linux.intel.com>
 <20190711073155.10926-4-janusz.krzysztofik@linux.intel.com>
Message-ID: <156291710554.8011.2295217790794646438@jlahtine-mobl.ger.corp.intel.com>
User-Agent: alot/0.7
Date: Fri, 12 Jul 2019 10:38:25 +0300
Subject: Re: [Intel-gfx] [PATCH v2 3/5] drm/i915: Propagate "_release"
 function name suffix down
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

UXVvdGluZyBKYW51c3ogS3J6eXN6dG9maWsgKDIwMTktMDctMTEgMTA6MzE6NTUpCj4gUmVwbGFj
ZSBtaXhlZCAiX2ZpbmkiLyJfY2xlYW51cCIvIl9jbGVhbnVwX2h3IiBzdWZmaXhlcyBmb3VuZCBp
biBuYW1lcwo+IG9mIGZ1Y250aW9ucyBjYWxsZWQgZnJvbSBpOTE1X2RyaXZlcl9yZWxlYXNlKCkg
d2l0aCAiX3JlbGVhc2UiIHN1ZmZpeAo+IGNvbnNpc3RlbnRseS4gIFRoaXMgcHJvdmlkZXMgYmV0
dGVyIGNvZGUgcmVhZGFiaWxpdHksIGVzcGVjaWFsbHkKPiBoZWxwZnVsIHdoZW4gdHJ5aW5nIHRv
IHdvcmsgb3V0IHdoaWNoIHBoYXNlIHRoZSBjb2RlIGlzIGluLgo+IAo+IEZ1bmN0aW9ucyBuYW1l
cyBzdGFydGluZyB3aXRoICJpOTE1X2RyaXZlcl8iLCBpLmUuLCB0aG9zZSBkZWZpbmVkIGluCj4g
ZHJpdmVycy9ncHUvZHJpL2k5MTUvaTkxNV9kcnYuYywganVzdCBoYXZlIHRoZWlyICJjbGVhbnVw
IiBvciAiZmluaSIKPiBwYXJ0cyBvZiB0aGVpciBuYW1lcyByZXBsYWNlZCB3aXRoIHRoZSAiX3Jl
bGVhc2UiIHN1ZmZpeCwgd2hpbGUgbmFtZXMKPiBvZiBmdW5jdGlvbnMgY29taW5nIGZyb20gb3Ro
ZXIgc291cmNlIGZpbGVzIGhhdmUgYmVlbiBzdWZmaXhlZCB3aXRoCj4gIl9kcml2ZXJfcmVsZWFz
ZSIgdG8gYXZvaWQgYW1iaWd1aXR5IHdpdGggb3RoZXIgcG9zc2libGUgLnJlbGVhc2UgZW50cnkK
PiBwb2ludHMuCj4gCj4gdjI6IGVhcmx5X3Byb2JlIHBhaXJzIGJldHRlciB3aXRoIGxhdGVfcmVs
ZWFzZSAoQ2hyaXMpCj4gCj4gU3VnZ2VzdGVkLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlz
LXdpbHNvbi5jby51az4KPiBTaWduZWQtb2ZmLWJ5OiBKYW51c3ogS3J6eXN6dG9maWsgPGphbnVz
ei5rcnp5c3p0b2Zpa0BsaW51eC5pbnRlbC5jb20+CgpSZXZpZXdlZC1ieTogSm9vbmFzIExhaHRp
bmVuIDxqb29uYXMubGFodGluZW5AbGludXguaW50ZWwuY29tPgoKUmVnYXJkcywgSm9vbmFzCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
