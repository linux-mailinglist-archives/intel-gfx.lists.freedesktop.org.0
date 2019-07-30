Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A673D7B453
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jul 2019 22:24:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 03F1189B7D;
	Tue, 30 Jul 2019 20:24:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C2D5789B7D
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Jul 2019 20:24:32 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Jul 2019 13:24:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,327,1559545200"; d="scan'208";a="191003094"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by fmsmga001.fm.intel.com with ESMTP; 30 Jul 2019 13:24:31 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1hsYfe-0003L5-HI; Wed, 31 Jul 2019 04:24:30 +0800
Date: Wed, 31 Jul 2019 04:24:02 +0800
From: kbuild test robot <lkp@intel.com>
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <201907310348.jzOxWgAi%lkp@intel.com>
References: <20190729234727.28286-2-daniele.ceraolospurio@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190729234727.28286-2-daniele.ceraolospurio@intel.com>
X-Patchwork-Hint: ignore
User-Agent: NeoMutt/20170113 (1.7.2)
Subject: Re: [Intel-gfx] [PATCH 1/6] drm/i915/uc: move uC WOPCM setup in
 uc_init_hw
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
Cc: intel-gfx@lists.freedesktop.org, kbuild-all@01.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGkgRGFuaWVsZSwKClRoYW5rIHlvdSBmb3IgdGhlIHBhdGNoISBQZXJoYXBzIHNvbWV0aGluZyB0
byBpbXByb3ZlOgoKW2F1dG8gYnVpbGQgdGVzdCBXQVJOSU5HIG9uIGRybS1pbnRlbC9mb3ItbGlu
dXgtbmV4dF0KW2Nhbm5vdCBhcHBseSB0byB2NS4zLXJjMiBuZXh0LTIwMTkwNzMwXQpbaWYgeW91
ciBwYXRjaCBpcyBhcHBsaWVkIHRvIHRoZSB3cm9uZyBnaXQgdHJlZSwgcGxlYXNlIGRyb3AgdXMg
YSBub3RlIHRvIGhlbHAgaW1wcm92ZSB0aGUgc3lzdGVtXQoKdXJsOiAgICBodHRwczovL2dpdGh1
Yi5jb20vMGRheS1jaS9saW51eC9jb21taXRzL0RhbmllbGUtQ2VyYW9sby1TcHVyaW8vQ2FsbC11
Qy1mdW5jdGlvbnMtZnJvbS1HVC1vbmVzLzIwMTkwNzMwLTEzMTA0MwpiYXNlOiAgIGdpdDovL2Fu
b25naXQuZnJlZWRlc2t0b3Aub3JnL2RybS1pbnRlbCBmb3ItbGludXgtbmV4dApyZXByb2R1Y2U6
CiAgICAgICAgIyBhcHQtZ2V0IGluc3RhbGwgc3BhcnNlCiAgICAgICAgIyBzcGFyc2UgdmVyc2lv
bjogdjAuNi4xLXJjMS03LWcyYjk2Y2Q4LWRpcnR5CiAgICAgICAgbWFrZSBBUkNIPXg4Nl82NCBh
bGxtb2Rjb25maWcKICAgICAgICBtYWtlIEM9MSBDRj0nLWZkaWFnbm9zdGljLXByZWZpeCAtRF9f
Q0hFQ0tfRU5ESUFOX18nCgpJZiB5b3UgZml4IHRoZSBpc3N1ZSwga2luZGx5IGFkZCBmb2xsb3dp
bmcgdGFnClJlcG9ydGVkLWJ5OiBrYnVpbGQgdGVzdCByb2JvdCA8bGtwQGludGVsLmNvbT4KCgpz
cGFyc2Ugd2FybmluZ3M6IChuZXcgb25lcyBwcmVmaXhlZCBieSA+PikKCj4+IGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L3VjL2ludGVsX3VjLmM6NDEwOjU6IHNwYXJzZTogc3BhcnNlOiBzeW1ib2wg
J3VjX3dvcGNtX2luaXRfaHcnIHdhcyBub3QgZGVjbGFyZWQuIFNob3VsZCBpdCBiZSBzdGF0aWM/
CgpQbGVhc2UgcmV2aWV3IGFuZCBwb3NzaWJseSBmb2xkIHRoZSBmb2xsb3d1cCBwYXRjaC4KCi0t
LQowLURBWSBrZXJuZWwgdGVzdCBpbmZyYXN0cnVjdHVyZSAgICAgICAgICAgICAgICBPcGVuIFNv
dXJjZSBUZWNobm9sb2d5IENlbnRlcgpodHRwczovL2xpc3RzLjAxLm9yZy9waXBlcm1haWwva2J1
aWxkLWFsbCAgICAgICAgICAgICAgICAgICBJbnRlbCBDb3Jwb3JhdGlvbgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
