Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 04679F6A64
	for <lists+intel-gfx@lfdr.de>; Sun, 10 Nov 2019 17:58:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5C20D6E78B;
	Sun, 10 Nov 2019 16:58:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E5A486E78B
 for <intel-gfx@lists.freedesktop.org>; Sun, 10 Nov 2019 16:58:49 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Nov 2019 08:58:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,289,1569308400"; d="scan'208";a="193714754"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by orsmga007.jf.intel.com with ESMTP; 10 Nov 2019 08:58:48 -0800
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1iTqY3-0007mu-UL; Mon, 11 Nov 2019 00:58:47 +0800
Date: Mon, 11 Nov 2019 00:57:54 +0800
From: kbuild test robot <lkp@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <201911110036.20CAOAW2%lkp@intel.com>
References: <20191108003602.33526-4-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191108003602.33526-4-lucas.demarchi@intel.com>
X-Patchwork-Hint: ignore
User-Agent: NeoMutt/20170113 (1.7.2)
Subject: Re: [Intel-gfx] [PATCH 4/4] drm/i915/bios: do not discard address
 space
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
Cc: intel-gfx@lists.freedesktop.org, kbuild-all@lists.01.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGkgTHVjYXMsCgpUaGFuayB5b3UgZm9yIHRoZSBwYXRjaCEgUGVyaGFwcyBzb21ldGhpbmcgdG8g
aW1wcm92ZToKClthdXRvIGJ1aWxkIHRlc3QgV0FSTklORyBvbiBkcm0taW50ZWwvZm9yLWxpbnV4
LW5leHRdClthbHNvIGJ1aWxkIHRlc3QgV0FSTklORyBvbiB2NS40LXJjNiBuZXh0LTIwMTkxMTA4
XQpbaWYgeW91ciBwYXRjaCBpcyBhcHBsaWVkIHRvIHRoZSB3cm9uZyBnaXQgdHJlZSwgcGxlYXNl
IGRyb3AgdXMgYSBub3RlIHRvIGhlbHAKaW1wcm92ZSB0aGUgc3lzdGVtLiBCVFcsIHdlIGFsc28g
c3VnZ2VzdCB0byB1c2UgJy0tYmFzZScgb3B0aW9uIHRvIHNwZWNpZnkgdGhlCmJhc2UgdHJlZSBp
biBnaXQgZm9ybWF0LXBhdGNoLCBwbGVhc2Ugc2VlIGh0dHBzOi8vc3RhY2tvdmVyZmxvdy5jb20v
YS8zNzQwNjk4Ml0KCnVybDogICAgaHR0cHM6Ly9naXRodWIuY29tLzBkYXktY2kvbGludXgvY29t
bWl0cy9MdWNhcy1EZS1NYXJjaGkvZHJtLWk5MTUtb3ByZWdpb24tZml4LWxlYWtpbmctZnctb24t
ZXJyb3ItcGF0aC8yMDE5MTExMC0wMDA4MjIKYmFzZTogICBnaXQ6Ly9hbm9uZ2l0LmZyZWVkZXNr
dG9wLm9yZy9kcm0taW50ZWwgZm9yLWxpbnV4LW5leHQKcmVwcm9kdWNlOgogICAgICAgICMgYXB0
LWdldCBpbnN0YWxsIHNwYXJzZQogICAgICAgICMgc3BhcnNlIHZlcnNpb246IHYwLjYuMS0yMS1n
YjMxYWRhYy1kaXJ0eQogICAgICAgIG1ha2UgQVJDSD14ODZfNjQgYWxsbW9kY29uZmlnCiAgICAg
ICAgbWFrZSBDPTEgQ0Y9Jy1mZGlhZ25vc3RpYy1wcmVmaXggLURfX0NIRUNLX0VORElBTl9fJwoK
SWYgeW91IGZpeCB0aGUgaXNzdWUsIGtpbmRseSBhZGQgZm9sbG93aW5nIHRhZwpSZXBvcnRlZC1i
eToga2J1aWxkIHRlc3Qgcm9ib3QgPGxrcEBpbnRlbC5jb20+CgoKc3BhcnNlIHdhcm5pbmdzOiAo
bmV3IG9uZXMgcHJlZml4ZWQgYnkgPj4pCgo+PiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2Jpb3MuYzoxODA5OjE0OiBzcGFyc2U6IHNwYXJzZTogc3ltYm9sICdmaW5kX3ZidCcg
d2FzIG5vdCBkZWNsYXJlZC4gU2hvdWxkIGl0IGJlIHN0YXRpYz8KClBsZWFzZSByZXZpZXcgYW5k
IHBvc3NpYmx5IGZvbGQgdGhlIGZvbGxvd3VwIHBhdGNoLgoKLS0tCjAtREFZIGtlcm5lbCB0ZXN0
IGluZnJhc3RydWN0dXJlICAgICAgICAgICAgICAgICBPcGVuIFNvdXJjZSBUZWNobm9sb2d5IENl
bnRlcgpodHRwczovL2xpc3RzLjAxLm9yZy9oeXBlcmtpdHR5L2xpc3Qva2J1aWxkLWFsbEBsaXN0
cy4wMS5vcmcgSW50ZWwgQ29ycG9yYXRpb24KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4
