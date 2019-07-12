Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AA604667E3
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jul 2019 09:41:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 217D76E2E2;
	Fri, 12 Jul 2019 07:41:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4FCEC6E2E2
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Jul 2019 07:41:07 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Jul 2019 00:41:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,481,1557212400"; d="scan'208";a="193671258"
Received: from jlahtine-mobl.ger.corp.intel.com (HELO localhost)
 ([10.237.66.136])
 by fmsmga002.fm.intel.com with ESMTP; 12 Jul 2019 00:41:03 -0700
MIME-Version: 1.0
To: Jani Nikula <jani.nikula@linux.intel.com>,
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
In-Reply-To: <20190711073155.10926-6-janusz.krzysztofik@linux.intel.com>
References: <20190711073155.10926-1-janusz.krzysztofik@linux.intel.com>
 <20190711073155.10926-6-janusz.krzysztofik@linux.intel.com>
Message-ID: <156291726264.8011.17146151546099907206@jlahtine-mobl.ger.corp.intel.com>
User-Agent: alot/0.7
Date: Fri, 12 Jul 2019 10:41:02 +0300
Subject: Re: [Intel-gfx] [PATCH v2 5/5] drm/i915: Propagate "_probe"
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

UXVvdGluZyBKYW51c3ogS3J6eXN6dG9maWsgKDIwMTktMDctMTEgMTA6MzE6NTcpCj4gU2ltaWxh
ciB0byB0aGUgIl9yZWxlYXNlIiBhbmQgIl9yZW1vdmUiIGNhc2VzLCBjb25zZXF1ZW50bHkgcmVw
bGFjZQo+ICJfaW5pdCIgY29tcG9uZW50cyBvZiBuYW1lcyBvZiBmdW5jdGlvbnMgY2FsbGVkIGZy
b20KPiBpOTE1X2RyaXZlcl9wcm9iZSgpIHdpdGggIl9wcm9iZSIgc3VmZml4ZXMgZm9yIGJldHRl
ciBjb2RlIHJlYWRhYmlsaXR5Lgo+IAo+IFNpZ25lZC1vZmYtYnk6IEphbnVzeiBLcnp5c3p0b2Zp
ayA8amFudXN6LmtyenlzenRvZmlrQGxpbnV4LmludGVsLmNvbT4KClJldmlld2VkLWJ5OiBKb29u
YXMgTGFodGluZW4gPGpvb25hcy5sYWh0aW5lbkBsaW51eC5pbnRlbC5jb20+CgpSZWdhcmRzLCBK
b29uYXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
