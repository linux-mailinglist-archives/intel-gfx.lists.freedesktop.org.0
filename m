Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C45236D35
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jun 2019 09:19:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 93AE6897FD;
	Thu,  6 Jun 2019 07:19:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EDD2D897FD;
 Thu,  6 Jun 2019 07:19:51 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Jun 2019 00:19:51 -0700
X-ExtLoop1: 1
Received: from irsmsx101.ger.corp.intel.com ([163.33.3.153])
 by fmsmga008.fm.intel.com with ESMTP; 06 Jun 2019 00:19:50 -0700
Received: from ahiler-desk1.fi.intel.com (10.237.68.151) by
 IRSMSX101.ger.corp.intel.com (163.33.3.153) with Microsoft SMTP Server (TLS)
 id 14.3.408.0; Thu, 6 Jun 2019 08:19:50 +0100
Date: Thu, 6 Jun 2019 10:19:48 +0300
From: Arkadiusz Hiler <arkadiusz.hiler@intel.com>
To: Guillaume Tucker <guillaume.tucker@collabora.com>
Message-ID: <20190606071948.2domlq46ne5sugng@ahiler-desk1.fi.intel.com>
References: <73773a5061681c502db373df698d2d24b4ad267a.1559562608.git.guillaume.tucker@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <73773a5061681c502db373df698d2d24b4ad267a.1559562608.git.guillaume.tucker@collabora.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-Patchwork-Hint: comment
User-Agent: NeoMutt/20180716
X-Originating-IP: [10.237.68.151]
Subject: Re: [Intel-gfx] [PATCH i-g-t 1/4] tests: add libatomic dependency
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

T24gTW9uLCBKdW4gMDMsIDIwMTkgYXQgMTI6NTQ6NDdQTSArMDEwMCwgR3VpbGxhdW1lIFR1Y2tl
ciB3cm90ZToKPiBBZGQgZGVwZW5kZW5jeSB0byBsaWJhdG9taWMgaW4gb3JkZXIgdG8gYmUgYWJs
ZSB0byB1c2UgdGhlIF9fYXRvbWljXyoKPiBmdW5jdGlvbnMgaW5zdGVhZCBvZiB0aGUgb2xkZXIg
X19zeW5jXyogb25lcy4gIFRoaXMgaXMgdG8gZW5hYmxlCj4gYXRvbWljIG9wZXJhdGlvbnMgb24g
YSB3aWRlciBudW1iZXIgb2YgYXJjaGl0ZWN0dXJlcyBpbmNsdWRpbmcgTUlQUy4KPiAKPiBTaWdu
ZWQtb2ZmLWJ5OiBHdWlsbGF1bWUgVHVja2VyIDxndWlsbGF1bWUudHVja2VyQGNvbGxhYm9yYS5j
b20+CgpSZXZpZXdlZC1ieTogQXJrYWRpdXN6IEhpbGVyIDxhcmthZGl1c3ouaGlsZXJAaW50ZWwu
Y29tPgoKVGhpcyBwb2ludHMgb3V0IHRoYXQgd2UgbmVlZCBzb21lIGNsZWFudXBzIGluIHRlc3Rz
L21lc29uLmJ1aWxkLCBhcyBpdCdzCmdldHRpbmcgYSBiaXQgbWVzc3kgd2l0aCBzb21lIG9mIHRo
ZSB0ZXN0IHVzaW5nIGlndF9kZXNwIGFuZCBvdGhlcnMKdGVzdF9kZXBzLCBidXQgdGhhdCdzIG91
dCBvZiB0aGUgc29wZSBvZiB0aGlzIHNlcmllcy4KClNlZW1zIGxpa2UgZm9yIGF1dG90b29scyB3
ZSBhbHJlYWR5IGhhdmUgaXQ6CgolIGFnIC1HIE1ha2VmaWxlIGF0b21pYwp0ZXN0cy9NYWtlZmls
ZS5hbQo5MzpnZW1fY3JlYXRlX0xEQUREID0gJChMREFERCkgLWxwdGhyZWFkIC1sYXRvbWljCjEy
NTpzd19zeW5jX0xEQUREID0gJChMREFERCkgLWxhdG9taWMKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
