Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E07EBC549
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Sep 2019 11:55:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C68D46E9F3;
	Tue, 24 Sep 2019 09:54:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 66E546E9E0;
 Tue, 24 Sep 2019 09:54:57 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Sep 2019 02:54:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,543,1559545200"; d="scan'208";a="203346807"
Received: from thrakatuluk.fi.intel.com (HELO thrakatuluk) ([10.237.68.154])
 by fmsmga001.fm.intel.com with ESMTP; 24 Sep 2019 02:54:55 -0700
Received: from platvala by thrakatuluk with local (Exim 4.91)
 (envelope-from <petri.latvala@intel.com>)
 id 1iChX4-0006SE-75; Tue, 24 Sep 2019 12:54:54 +0300
Date: Tue, 24 Sep 2019 12:54:54 +0300
From: Petri Latvala <petri.latvala@intel.com>
To: Bhawanpreet Lakha <Bhawanpreet.Lakha@amd.com>,
 Ramalingam C <ramalingam.c@intel.com>
Message-ID: <20190924095454.GE4019@platvala-desk.ger.corp.intel.com>
Mail-Followup-To: Bhawanpreet Lakha <Bhawanpreet.Lakha@amd.com>,
 Ramalingam C <ramalingam.c@intel.com>,
 igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
References: <20190923182325.24049-1-Bhawanpreet.Lakha@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190923182325.24049-1-Bhawanpreet.Lakha@amd.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [igt-dev] [PATCH] test/kms_content_protection: Use
 generic debugfs name for HDCP caps
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
Cc: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCBTZXAgMjMsIDIwMTkgYXQgMDI6MjM6MjVQTSAtMDQwMCwgQmhhd2FucHJlZXQgTGFr
aGEgd3JvdGU6Cj4gUmVuYW1lICJpOTE1X2hkY3Bfc2lua19jYXBhYmlsaXR5IiB0byAiaGRjcF9z
aW5rX2NhcGFiaWxpdHkiCj4gCj4gVGhlIGNvbnRlbnQgcHJvdGVjdGlvbiB0ZXN0cyBvbmx5IHN0
YXJ0IGlmIHRoaXMgZGVidWdmcyBlbnRyeSBleGlzdHMuCj4gU2luY2UgdGhlIG5hbWUgaXMgc3Bl
Y2lmaWMgdG8gaW50ZWwgZHJpdmVyIHRoZXNlIHRlc3RzIGNhbm5vdCBiZSB1c2VkIHdpdGgKPiBv
dGhlciBkcml2ZXJzLgo+IAo+IFJlbW92ZSAiaTkxNSIgc28gdGhlIGRlYnVnZnMgbmFtZSBpcyBn
ZW5lcmljLgoKSSBkb24ndCBzZWUgYW55IGRyaXZlcnMgY3VycmVudGx5IHVzaW5nIHRoZSBuYW1l
CiJoZGNwX3NpbmtfY2FwYWJpbGl0eSIuIElzIHRoZSBjb250ZW50IG9mIHRoZSBmaWxlIGluIG90
aGVyIGRyaXZlcnMKdGhlIHNhbWUgYXMgaTkxNSdzPwoKQW5kIGlzIHRoZXJlIGEgcGxhbiB0byBy
ZW5hbWUgaTkxNSdzIGRlYnVnZnMgZmlsZW5hbWUgdG8KaGRjcF9zaW5rX2NhcGFiaWxpdHk/IFJh
bT8KCkFncmVlZCwgZm9yIGEgRFJJVkVSX0FOWS11c2luZyB0ZXN0IGdlbmVyaWMgbmFtZXMgYXJl
IHByZWZlcnJhYmxlLCBidXQKdGhpcyBuZWVkcyBzb21lIGtpbmQgb2YgYSB0cmFuc2l0aW9uIHBs
YW4uIElmIGk5MTUncyBmaWxlbmFtZSBpcwpzdGF5aW5nIGFzIGlzLCBib3RoIG5hbWVzIG5lZWQg
dG8gYmUgdHJpZWQuCgoKLS0gClBldHJpIExhdHZhbGEKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4
