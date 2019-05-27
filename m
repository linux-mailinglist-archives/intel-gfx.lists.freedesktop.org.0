Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E33762B977
	for <lists+intel-gfx@lfdr.de>; Mon, 27 May 2019 19:42:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C6E62896FA;
	Mon, 27 May 2019 17:42:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B80AF896FA
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 May 2019 17:42:34 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 May 2019 10:42:33 -0700
X-ExtLoop1: 1
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by orsmga008.jf.intel.com with ESMTP; 27 May 2019 10:42:33 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1hVJdi-000Fiw-MY; Tue, 28 May 2019 01:42:26 +0800
Date: Tue, 28 May 2019 01:42:08 +0800
From: kbuild test robot <lkp@intel.com>
To: Swati Sharma <swati2.sharma@intel.com>
Message-ID: <201905280105.QHMuu33y%lkp@intel.com>
References: <1558964522-7829-5-git-send-email-swati2.sharma@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1558964522-7829-5-git-send-email-swati2.sharma@intel.com>
X-Patchwork-Hint: ignore
User-Agent: Mutt/1.5.23 (2014-03-12)
Subject: Re: [Intel-gfx] [v7][PATCH 04/12] drm/i915: Extract i9xx_read_luts()
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
 ankit.k.nautiyal@intel.com, kbuild-all@01.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGkgU3dhdGksCgpUaGFuayB5b3UgZm9yIHRoZSBwYXRjaCEgUGVyaGFwcyBzb21ldGhpbmcgdG8g
aW1wcm92ZToKClthdXRvIGJ1aWxkIHRlc3QgV0FSTklORyBvbiBkcm0taW50ZWwvZm9yLWxpbnV4
LW5leHRdClthbHNvIGJ1aWxkIHRlc3QgV0FSTklORyBvbiB2NS4yLXJjMiBuZXh0LTIwMTkwNTI0
XQpbaWYgeW91ciBwYXRjaCBpcyBhcHBsaWVkIHRvIHRoZSB3cm9uZyBnaXQgdHJlZSwgcGxlYXNl
IGRyb3AgdXMgYSBub3RlIHRvIGhlbHAgaW1wcm92ZSB0aGUgc3lzdGVtXQoKdXJsOiAgICBodHRw
czovL2dpdGh1Yi5jb20vMGRheS1jaS9saW51eC9jb21taXRzL1N3YXRpLVNoYXJtYS9kcm0taTkx
NS1hZGRpbmctc3RhdGUtY2hlY2tlci1mb3ItZ2FtbWEtbHV0LXZhbHVlcy8yMDE5MDUyNy0yMTQ5
NDgKYmFzZTogICBnaXQ6Ly9hbm9uZ2l0LmZyZWVkZXNrdG9wLm9yZy9kcm0taW50ZWwgZm9yLWxp
bnV4LW5leHQKcmVwcm9kdWNlOgogICAgICAgICMgYXB0LWdldCBpbnN0YWxsIHNwYXJzZQogICAg
ICAgICMgc3BhcnNlIHZlcnNpb246IHYwLjYuMS1yYzEtNy1nMmI5NmNkOC1kaXJ0eQogICAgICAg
IG1ha2UgQVJDSD14ODZfNjQgYWxsbW9kY29uZmlnCiAgICAgICAgbWFrZSBDPTEgQ0Y9Jy1mZGlh
Z25vc3RpYy1wcmVmaXggLURfX0NIRUNLX0VORElBTl9fJwoKSWYgeW91IGZpeCB0aGUgaXNzdWUs
IGtpbmRseSBhZGQgZm9sbG93aW5nIHRhZwpSZXBvcnRlZC1ieToga2J1aWxkIHRlc3Qgcm9ib3Qg
PGxrcEBpbnRlbC5jb20+CgoKc3BhcnNlIHdhcm5pbmdzOiAobmV3IG9uZXMgcHJlZml4ZWQgYnkg
Pj4pCgoKUGxlYXNlIHJldmlldyBhbmQgcG9zc2libHkgZm9sZCB0aGUgZm9sbG93dXAgcGF0Y2gu
CgotLS0KMC1EQVkga2VybmVsIHRlc3QgaW5mcmFzdHJ1Y3R1cmUgICAgICAgICAgICAgICAgT3Bl
biBTb3VyY2UgVGVjaG5vbG9neSBDZW50ZXIKaHR0cHM6Ly9saXN0cy4wMS5vcmcvcGlwZXJtYWls
L2tidWlsZC1hbGwgICAgICAgICAgICAgICAgICAgSW50ZWwgQ29ycG9yYXRpb24KX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcg
bGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
