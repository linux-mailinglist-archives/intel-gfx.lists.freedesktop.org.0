Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 542AEE3021
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Oct 2019 13:17:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9F7466E2C7;
	Thu, 24 Oct 2019 11:17:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 816C36E2BD;
 Thu, 24 Oct 2019 11:17:43 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Oct 2019 04:17:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,224,1569308400"; d="scan'208";a="228475298"
Received: from thrakatuluk.fi.intel.com (HELO thrakatuluk) ([10.237.68.154])
 by fmsmga002.fm.intel.com with ESMTP; 24 Oct 2019 04:17:41 -0700
Received: from platvala by thrakatuluk with local (Exim 4.91)
 (envelope-from <petri.latvala@intel.com>)
 id 1iNb7c-0007XE-LC; Thu, 24 Oct 2019 14:17:40 +0300
Date: Thu, 24 Oct 2019 14:17:40 +0300
From: Petri Latvala <petri.latvala@intel.com>
To: Bhawanpreet Lakha <Bhawanpreet.Lakha@amd.com>
Message-ID: <20191024111740.GD25209@platvala-desk.ger.corp.intel.com>
References: <20190923182325.24049-1-Bhawanpreet.Lakha@amd.com>
 <20191021194259.17052-1-Bhawanpreet.Lakha@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191021194259.17052-1-Bhawanpreet.Lakha@amd.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH i-g-t v2] tests/kms_content_protection:
 check i915 and generic debugfs name for HDCP caps
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
Cc: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 harry.wentland@amd.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCBPY3QgMjEsIDIwMTkgYXQgMDM6NDI6NTlQTSAtMDQwMCwgQmhhd2FucHJlZXQgTGFr
aGEgd3JvdGU6Cj4gVGhlIGNvbnRlbnQgcHJvdGVjdGlvbiB0ZXN0cyBvbmx5IHN0YXJ0IGlmIHRo
aXMgZGVidWdmcyBlbnRyeSBleGlzdHMuCj4gU2luY2UgdGhlIG5hbWUgaXMgc3BlY2lmaWMgdG8g
aW50ZWwgZHJpdmVyIHRoZXNlIHRlc3RzIGNhbm5vdCBiZSB1c2VkIHdpdGgKPiBvdGhlciBkcml2
ZXJzLiBTbyB3ZSBzaG91bGQgY2hlY2sgZ2VuZXJpYyBkZWJ1Z2ZzIG5hbWUgYWxzbwo+IAo+IHYy
OiBDaGVjayBpOTE1XyogaWYgZGV2aWNlIGlzIGk5MTUsIG90aGVyd2lzZSBjaGVjayB0aGUgZ2Vu
ZXJpYyBuYW1lLgo+IAo+IFNpZ25lZC1vZmYtYnk6IEJoYXdhbnByZWV0IExha2hhIDxCaGF3YW5w
cmVldC5MYWtoYUBhbWQuY29tPgoKCk1lcmdlZCwgdGhhbmtzIGZvciB0aGUgcGF0Y2ggYW5kIHJl
dmlld3MhCgoKLS0gClBldHJpIExhdHZhbGEKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4
