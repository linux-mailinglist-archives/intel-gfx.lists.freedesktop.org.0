Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C64EE66BA5
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jul 2019 13:32:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B1FBD6E34D;
	Fri, 12 Jul 2019 11:32:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 49CF86E34D
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Jul 2019 11:32:16 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Jul 2019 04:32:15 -0700
X-IronPort-AV: E=Sophos;i="5.63,482,1557212400"; d="scan'208";a="168295900"
Received: from jkrzyszt-desk.igk.intel.com (HELO
 jkrzyszt-desk.ger.corp.intel.com) ([172.22.244.18])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Jul 2019 04:32:14 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Date: Fri, 12 Jul 2019 13:32:07 +0200
Message-ID: <1797138.eFOgQRFAG5@jkrzyszt-desk.ger.corp.intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <156282810561.12388.3170839936247979239@skylake-alporthouse-com>
References: <20190711065001.26664-1-janusz.krzysztofik@linux.intel.com>
 <156282810561.12388.3170839936247979239@skylake-alporthouse-com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915: Drop extern qualifiers from
 header function prototypes
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

T24gVGh1cnNkYXksIEp1bHkgMTEsIDIwMTkgODo1NTowNSBBTSBDRVNUIENocmlzIFdpbHNvbiB3
cm90ZToKPiBRdW90aW5nIEphbnVzeiBLcnp5c3p0b2ZpayAoMjAxOS0wNy0xMSAwNzo1MDowMSkK
PiA+IEZvbGxvdyBkaW0gY2hlY2twYXRjaCByZWNvbW1lbmRhdGlvbiBzbyBpdCBkb2Vzbid0IGNv
bXBsYWluIG9uIHRoYXQgbm93Cj4gPiBhbmQgYWdhaW4gb24gaGVhZGVyIGZpbGUgbW9kaWZpY2F0
aW9ucy4KPiA+IAo+ID4gdjI6IERyb3AgdGVzdGluZyBsZWZ0b3Zlcgo+ID4gCj4gPiBTaWduZWQt
b2ZmLWJ5OiBKYW51c3ogS3J6eXN6dG9maWsgPGphbnVzei5rcnp5c3p0b2Zpa0BsaW51eC5pbnRl
bC5jb20+Cj4gCj4gSSdtIG5vdCBzdXJlIHRoZSBlbnRpcmUgY2Mgd2FudHMgdG8gc2VlIGV4dGVy
biBoZWFkZXIgY2h1cm4uCj4gUmV2aWV3ZWQtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMt
d2lsc29uLmNvLnVrPgoKUGxlYXNlIGlnbm9yZSB0aGlzIHN1Ym1pc3Npb24sIHRoZSBwYXRjaCBo
YXMgYmVlbiBidW5kbGVkIHdpdGggdjMgb2YgImRybS8KaTkxNTogUmVuYW1lIGZ1bmN0aW9ucyB0
byBtYXRjaCB0aGVpciBlbnRyeSBwb2ludHMiIHNlcmllcy4KClRoYW5rcywKSmFudXN6Cgo+IC1D
aHJpcwo+IAoKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
