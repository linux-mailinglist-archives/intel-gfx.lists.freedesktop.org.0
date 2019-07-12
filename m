Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 670B8667C8
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jul 2019 09:34:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 883236E2DC;
	Fri, 12 Jul 2019 07:33:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4F1886E2DC
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Jul 2019 07:33:58 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Jul 2019 00:33:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,481,1557212400"; d="scan'208";a="365081722"
Received: from jlahtine-mobl.ger.corp.intel.com (HELO localhost)
 ([10.237.66.136])
 by fmsmga005.fm.intel.com with ESMTP; 12 Jul 2019 00:33:52 -0700
MIME-Version: 1.0
To: Jani Nikula <jani.nikula@linux.intel.com>,
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
In-Reply-To: <20190711073155.10926-2-janusz.krzysztofik@linux.intel.com>
References: <20190711073155.10926-1-janusz.krzysztofik@linux.intel.com>
 <20190711073155.10926-2-janusz.krzysztofik@linux.intel.com>
Message-ID: <156291683136.8011.3673430213436823525@jlahtine-mobl.ger.corp.intel.com>
User-Agent: alot/0.7
Date: Fri, 12 Jul 2019 10:33:51 +0300
Subject: Re: [Intel-gfx] [PATCH v2 1/5] drm/i915: Rename "_load"/"_unload"
 to match PCI entry points
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

UXVvdGluZyBKYW51c3ogS3J6eXN6dG9maWsgKDIwMTktMDctMTEgMTA6MzE6NTMpCj4gQ3VycmVu
dCBuYW1lcyBvZiBpOTE1X2RyaXZlcl9sb2FkL3VubG9hZCgpIGZ1bmN0aW9ucyBvcmlnaW5hdGUg
aW4KPiBsZWdhY3kgRFJNIHN0dWJzLiAgUmVkdWNlIG5vbWVuY2xhdHVyZSBhbWJpZ3VpdHkgYnkg
cmVuYW1pbmcgdGhlbSB0bwo+IG1hdGNoIHRoZWlyIGN1cnJlbnQgdXNlIGFzIGhlbHBlcnMgY2Fs
bGVkIGZyb20gUENJIGVudHJ5IHBvaW50cy4KPiAKPiBTdWdnZXN0ZWQgYnk6IENocmlzIFdpbHNv
biA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+IFNpZ25lZC1vZmYtYnk6IEphbnVzeiBLcnp5
c3p0b2ZpayA8amFudXN6LmtyenlzenRvZmlrQGxpbnV4LmludGVsLmNvbT4KClJldmlld2VkLWJ5
OiBKb29uYXMgTGFodGluZW4gPGpvb25hcy5sYWh0aW5lbkBsaW51eC5pbnRlbC5jb20+CgpSZWdh
cmRzLCBKb29uYXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
