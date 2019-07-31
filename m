Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 90B657BA32
	for <lists+intel-gfx@lfdr.de>; Wed, 31 Jul 2019 09:11:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A69389312;
	Wed, 31 Jul 2019 07:11:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C19E189312
 for <intel-gfx@lists.freedesktop.org>; Wed, 31 Jul 2019 07:11:49 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 31 Jul 2019 00:11:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,329,1559545200"; d="scan'208";a="191163955"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by fmsmga001.fm.intel.com with ESMTP; 31 Jul 2019 00:11:48 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1hsim3-0007N3-Gd; Wed, 31 Jul 2019 15:11:47 +0800
Date: Wed, 31 Jul 2019 15:11:29 +0800
From: kbuild test robot <lkp@intel.com>
To: Anshuman Gupta <anshuman.gupta@intel.com>
Message-ID: <201907311447.XwNIXyFV%lkp@intel.com>
References: <20190730135024.31765-8-anshuman.gupta@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190730135024.31765-8-anshuman.gupta@intel.com>
X-Patchwork-Hint: ignore
User-Agent: NeoMutt/20170113 (1.7.2)
Subject: Re: [Intel-gfx] [PATCH v3 7/9] drm/i915/tgl: DC3CO PSR2 helper
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
Cc: jani.nikula@intel.com, intel-gfx@lists.freedesktop.org,
 Souza@freedesktop.org, Manna@freedesktop.org, Deak@freedesktop.org,
 kbuild-all@01.org, Nikula@freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGkgQW5zaHVtYW4sCgpUaGFuayB5b3UgZm9yIHRoZSBwYXRjaCEgUGVyaGFwcyBzb21ldGhpbmcg
dG8gaW1wcm92ZToKClthdXRvIGJ1aWxkIHRlc3QgV0FSTklORyBvbiBkcm0taW50ZWwvZm9yLWxp
bnV4LW5leHRdCltjYW5ub3QgYXBwbHkgdG8gdjUuMy1yYzIgbmV4dC0yMDE5MDczMF0KW2lmIHlv
dXIgcGF0Y2ggaXMgYXBwbGllZCB0byB0aGUgd3JvbmcgZ2l0IHRyZWUsIHBsZWFzZSBkcm9wIHVz
IGEgbm90ZSB0byBoZWxwIGltcHJvdmUgdGhlIHN5c3RlbV0KCnVybDogICAgaHR0cHM6Ly9naXRo
dWIuY29tLzBkYXktY2kvbGludXgvY29tbWl0cy9BbnNodW1hbi1HdXB0YS9EQzNDTy1TdXBwb3J0
LWZvci1UR0wvMjAxOTA3MzEtMDE0NzQ5CmJhc2U6ICAgZ2l0Oi8vYW5vbmdpdC5mcmVlZGVza3Rv
cC5vcmcvZHJtLWludGVsIGZvci1saW51eC1uZXh0CnJlcHJvZHVjZToKICAgICAgICAjIGFwdC1n
ZXQgaW5zdGFsbCBzcGFyc2UKICAgICAgICAjIHNwYXJzZSB2ZXJzaW9uOiB2MC42LjEtcmMxLTct
ZzJiOTZjZDgtZGlydHkKICAgICAgICBtYWtlIEFSQ0g9eDg2XzY0IGFsbG1vZGNvbmZpZwogICAg
ICAgIG1ha2UgQz0xIENGPSctZmRpYWdub3N0aWMtcHJlZml4IC1EX19DSEVDS19FTkRJQU5fXycK
CklmIHlvdSBmaXggdGhlIGlzc3VlLCBraW5kbHkgYWRkIGZvbGxvd2luZyB0YWcKUmVwb3J0ZWQt
Ynk6IGtidWlsZCB0ZXN0IHJvYm90IDxsa3BAaW50ZWwuY29tPgoKCnNwYXJzZSB3YXJuaW5nczog
KG5ldyBvbmVzIHByZWZpeGVkIGJ5ID4+KQoKPj4gZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9wc3IuYzo1NjY6Njogc3BhcnNlOiBzcGFyc2U6IHN5bWJvbCAndGdsX2Rpc2FsbG93
X2RjM2NvX29uX3BzcjJfZXhpdCcgd2FzIG5vdCBkZWNsYXJlZC4gU2hvdWxkIGl0IGJlIHN0YXRp
Yz8KClBsZWFzZSByZXZpZXcgYW5kIHBvc3NpYmx5IGZvbGQgdGhlIGZvbGxvd3VwIHBhdGNoLgoK
LS0tCjAtREFZIGtlcm5lbCB0ZXN0IGluZnJhc3RydWN0dXJlICAgICAgICAgICAgICAgIE9wZW4g
U291cmNlIFRlY2hub2xvZ3kgQ2VudGVyCmh0dHBzOi8vbGlzdHMuMDEub3JnL3BpcGVybWFpbC9r
YnVpbGQtYWxsICAgICAgICAgICAgICAgICAgIEludGVsIENvcnBvcmF0aW9uCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
