Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8049B66B89
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jul 2019 13:24:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9B0D06E34C;
	Fri, 12 Jul 2019 11:24:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9585A6E34D
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Jul 2019 11:24:36 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Jul 2019 04:24:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,482,1557212400"; d="scan'208";a="341673382"
Received: from jlahtine-mobl.fi.intel.com (HELO localhost) ([10.237.66.136])
 by orsmga005.jf.intel.com with ESMTP; 12 Jul 2019 04:24:32 -0700
MIME-Version: 1.0
To: Michal Wajdeczko <michal.wajdeczko@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
In-Reply-To: <20190712111445.21040-2-michal.wajdeczko@intel.com>
References: <20190712111445.21040-1-michal.wajdeczko@intel.com>
 <20190712111445.21040-2-michal.wajdeczko@intel.com>
Message-ID: <156293067139.12088.11514573614723457512@jlahtine-mobl.fi.intel.com>
User-Agent: alot/0.7
Date: Fri, 12 Jul 2019 14:24:31 +0300
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/guc: Don't enable GuC/HuC in
 auto mode on pre-Gen11
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
Cc: Jani Nikula <jani.nikula@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBNaWNoYWwgV2FqZGVjemtvICgyMDE5LTA3LTEyIDE0OjE0OjQ0KQo+IFdlIGFyZSBh
Ym91dCB0byBjaGFuZ2UgZGVmYXVsdCBzZXR0aW5nIG9mICJlbmFibGVfZ3VjIiBtb2RwYXJhbQo+
IGZyb20gMChkaXNhYmxlZCkgdG8gLTEoYXV0bykuIEFzIHdlIG9ubHkgd2FudCB0byB0dXJuIG9u
Cj4gR3VDL0h1QyBvbiBHZW4xMSssIGtlZXAgaXQgb2ZmIGZvciBvbGRlciBnZW5zLgo+IAo+IE5v
dGUgdGhhdCBpdCB3b3VsZCBiZSBzdGlsbCBwb3NzaWJsZSB0byBlbmFibGUgR3VDL0h1QyBvbiB0
aGVzZQo+IG9sZCBwbGF0Zm9ybXMgdXNpbmcgZXhwbGljaXQgImVuYWJsZV9ndWM9MiIgbW9kcGFy
YW0uCj4gCj4gU2lnbmVkLW9mZi1ieTogTWljaGFsIFdhamRlY3prbyA8bWljaGFsLndhamRlY3pr
b0BpbnRlbC5jb20+Cj4gQ2M6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+Cj4g
Q2M6IEpvb25hcyBMYWh0aW5lbiA8am9vbmFzLmxhaHRpbmVuQGxpbnV4LmludGVsLmNvbT4KPiBD
YzogUm9kcmlnbyBWaXZpIDxyb2RyaWdvLnZpdmlAaW50ZWwuY29tPgo+IENjOiBDaHJpcyBXaWxz
b24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiBDYzogRGFuaWVsZSBDZXJhb2xvIFNwdXJp
byA8ZGFuaWVsZS5jZXJhb2xvc3B1cmlvQGludGVsLmNvbT4KClJldmlld2VkLWJ5OiBKb29uYXMg
TGFodGluZW4gPGpvb25hcy5sYWh0aW5lbkBsaW51eC5pbnRlbC5jb20+CgpSZWdhcmRzLCBKb29u
YXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
