Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 15DCC83742
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Aug 2019 18:46:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C083F89FE6;
	Tue,  6 Aug 2019 16:46:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 14D6589FE6
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Aug 2019 16:46:40 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Aug 2019 09:46:39 -0700
X-IronPort-AV: E=Sophos;i="5.64,353,1559545200"; d="scan'208";a="325684323"
Received: from rdvivi-losangeles.jf.intel.com (HELO intel.com) ([10.7.196.65])
 by orsmga004-auth.jf.intel.com with
 ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 06 Aug 2019 09:46:39 -0700
Date: Tue, 6 Aug 2019 09:47:13 -0700
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20190806164713.GA25907@intel.com>
References: <20190806122208.16786-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190806122208.16786-1-jani.nikula@intel.com>
User-Agent: Mutt/1.11.3 (2019-02-01)
Subject: Re: [Intel-gfx] drm/i915: always split up refactoring from
 functional changes!
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

T24gVHVlLCBBdWcgMDYsIDIwMTkgYXQgMDM6MjI6MDdQTSArMDMwMCwgSmFuaSBOaWt1bGEgd3Jv
dGU6Cj4gCj4gUm9kcmlnbydzIG9yaWdpbmFsIHBhdGNoIHdhcyBhdCB2NSBbMV0sIGFuZCBzdGls
bCBzdHVjayBpbiBkaXNjdXNzaW9uCj4gYXJvdW5kIHRoZSAqZnVuY3Rpb25hbCogY2hhbmdlLCB3
aGlsZSA5OSUgb2YgdGhlIHBhdGNoIGlzCj4gKm5vbi1mdW5jdGlvbmFsKiByZWZhY3RvcmluZyB0
aGF0IGRvZXMgbm90IHNlZW0gdG8gYmUgY29udGVudGlvdXMuCj4gCj4gTGV0J3MgZG8gdGhlIHNh
bmUgdGhpbmcgYW5kIG1lcmdlIHRoZSByZWZhY3RvcmluZyBmaXJzdCwgc2hhbGwgd2U/CgpNYWtl
cyBzZW5zZS4gVGhhbmtzIGEgbG90IGZvciB0YWtpbmcgY2FyZSBvZiB0aGF0LgoKPiAKPiBCUiwK
PiBKYW5pLgo+IAo+IAo+IFsxXSBodHRwOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9wYXRj
aC9tc2dpZC8yMDE5MDcxODIwNDkxMi4yNDE0OS0xLXJvZHJpZ28udml2aUBpbnRlbC5jb20KPiBf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IEludGVsLWdm
eCBtYWlsaW5nIGxpc3QKPiBJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
