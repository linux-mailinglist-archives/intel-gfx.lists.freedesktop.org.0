Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E40ADEB4E3
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Oct 2019 17:42:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E06D6EF1B;
	Thu, 31 Oct 2019 16:42:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4DFC56EF1B
 for <intel-gfx@lists.freedesktop.org>; Thu, 31 Oct 2019 16:42:54 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 31 Oct 2019 09:42:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,252,1569308400"; d="scan'208";a="203589650"
Received: from unknown (HELO sdutt) ([10.165.21.200])
 by orsmga003.jf.intel.com with ESMTP; 31 Oct 2019 09:42:47 -0700
Date: Thu, 31 Oct 2019 09:36:45 -0700
From: Matthew Brost <matthew.brost@intel.com>
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <20191031163645.GB6444@sdutt>
References: <20191031013040.25803-1-daniele.ceraolospurio@intel.com>
 <20191031013040.25803-2-daniele.ceraolospurio@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191031013040.25803-2-daniele.ceraolospurio@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/guc: drop guc shared area
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCBPY3QgMzAsIDIwMTkgYXQgMDY6MzA6NDBQTSAtMDcwMCwgRGFuaWVsZSBDZXJhb2xv
IFNwdXJpbyB3cm90ZToKPlJlY2VudCBHdUMgZG9lc24ndCByZXF1aXJlIHRoZSBzaGFyZWQgYXJl
YS4gV2Ugc3RpbGwgaGF2ZSBvbmUgdXNlciBpbgo+aTkxNSAoZW5naW5lIHJlc2V0IHZpYSBndWMp
IGJlY2F1c2Ugd2UgaGF2ZW4ndCB1cGRhdGVkIHRoZSBjb21tYW5kIHRvCj5tYXRjaCB0aGUgY3Vy
cmVudCBndWMgc3VibWlzc2lvbiBmbG93IFsxXS4gU2luY2UgdGhlIGZsb3cgaW4gZ3VjIGlzCj5h
Ym91dCB0byBjaGFuZ2UgYWdhaW4sIGp1c3QgZGlzYWJsZSB0aGUgY29tbWFuZCBmb3Igbm93IGFu
ZCBhZGQgYSBub3RlCj50aGF0IHdlJ2xsIGltcGxlbWVudCBpdCBhcyBwYXJ0IG9mIHRoZSBuZXcg
Zmxvdy4KPgo+WzFdIGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9wYXRjaC8yOTUw
MzgvCj4KPlNpZ25lZC1vZmYtYnk6IERhbmllbGUgQ2VyYW9sbyBTcHVyaW8gPGRhbmllbGUuY2Vy
YW9sb3NwdXJpb0BpbnRlbC5jb20+Cj5DYzogTWljaGFsIFdhamRlY3prbyA8bWljaGFsLndhamRl
Y3prb0BpbnRlbC5jb20+Cj5DYzogSm9obiBIYXJyaXNvbiA8Sm9obi5DLkhhcnJpc29uQEludGVs
LmNvbT4KPkNjOiBNYXR0aGV3IEJyb3N0IDxtYXR0aGV3LmJyb3N0QGludGVsLmNvbT4KPkNjOiBG
ZXJuYW5kbyBQYWNoZWNvIDxmZXJuYW5kby5wYWNoZWNvQGludGVsLmNvbT4KPi0tLQo+IGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2d1Yy5jIHwgNTAgKystLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0KPiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9ndWMuaCB8ICAyIC0t
Cj4gMiBmaWxlcyBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDQ5IGRlbGV0aW9ucygtKQo+CgpU
aGlzIHBhdGNoIGFsc28gd29ya3Mgd2l0aCB0aGUgR3VDIHJlZGVzaWduIHdvcmsgYmVpbmcgZG9u
ZS4KClJldmlld2VkLWJ5OiBNYXR0aGV3IEJyb3N0IDxtYXR0aGV3LmJyb3N0QGludGVsLmNvbT4K
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
