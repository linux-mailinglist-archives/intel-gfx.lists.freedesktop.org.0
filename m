Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CA814667E1
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jul 2019 09:40:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F40D36E2E2;
	Fri, 12 Jul 2019 07:40:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 58D686E2E2
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Jul 2019 07:40:24 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Jul 2019 00:40:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,481,1557212400"; d="scan'208";a="186550783"
Received: from jlahtine-mobl.ger.corp.intel.com (HELO localhost)
 ([10.237.66.136])
 by fmsmga001.fm.intel.com with ESMTP; 12 Jul 2019 00:40:20 -0700
MIME-Version: 1.0
To: Jani Nikula <jani.nikula@linux.intel.com>,
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
In-Reply-To: <20190711073155.10926-5-janusz.krzysztofik@linux.intel.com>
References: <20190711073155.10926-1-janusz.krzysztofik@linux.intel.com>
 <20190711073155.10926-5-janusz.krzysztofik@linux.intel.com>
Message-ID: <156291721922.8011.17049224104104770300@jlahtine-mobl.ger.corp.intel.com>
User-Agent: alot/0.7
Date: Fri, 12 Jul 2019 10:40:19 +0300
Subject: Re: [Intel-gfx] [PATCH v2 4/5] drm/i915: Propagate "_remove"
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

UXVvdGluZyBKYW51c3ogS3J6eXN6dG9maWsgKDIwMTktMDctMTEgMTA6MzE6NTYpCj4gU2ltaWxh
ciB0byB0aGUgIl9yZWxlYXNlIiBjYXNlLCBjb25zaXN0ZW50bHkgcmVwbGFjZSBtaXhlZAo+ICJf
Y2xlYW51cCIvIl9maW5pIi8iX2ZpbmlfaHciIGNvbXBvbmVudHMgZm91bmQgaW4gbmFtZXMgb2Yg
ZnVuY3Rpb25zCj4gY2FsbGVkIGZyb20gaTkxNV9kcml2ZXJfcmVtb3ZlKCkgd2l0aCAiX3JlbW92
ZSIgb3IgIl9kcml2ZXJfcmVtb3ZlIgo+IHN1ZmZpeGVzIGZvciBiZXR0ZXIgY29kZSByZWFkYWJp
bGl0eS4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBKYW51c3ogS3J6eXN6dG9maWsgPGphbnVzei5rcnp5
c3p0b2Zpa0BsaW51eC5pbnRlbC5jb20+CgpSZXZpZXdlZC1ieTogSm9vbmFzIExhaHRpbmVuIDxq
b29uYXMubGFodGluZW5AbGludXguaW50ZWwuY29tPgoKUmVnYXJkcywgSm9vbmFzCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5n
IGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
