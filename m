Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 60BA7116A13
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Dec 2019 10:48:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 22C416E357;
	Mon,  9 Dec 2019 09:47:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 739616E388
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Dec 2019 09:47:14 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Dec 2019 01:47:13 -0800
X-IronPort-AV: E=Sophos;i="5.69,294,1571727600"; d="scan'208";a="206838703"
Received: from jlahtine-desk.ger.corp.intel.com (HELO localhost)
 ([10.252.19.115])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Dec 2019 01:47:12 -0800
MIME-Version: 1.0
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
In-Reply-To: <20191207222644.2830129-1-chris@chris-wilson.co.uk>
References: <20191207222644.2830129-1-chris@chris-wilson.co.uk>
Message-ID: <157588482930.6099.1746473174648268069@pvandenp-mobl1.ger.corp.intel.com>
User-Agent: alot/0.7
Date: Mon, 09 Dec 2019 11:47:09 +0200
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gem: Comment on inability to check
 args.pad for MMAP_OFFSET
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMTItMDggMDA6MjY6NDQpCj4gU2luY2Ugd2UgZGlk
bid0IGNoZWNrIGFuZCBpbnNpc3QgdGhhdCBhcmdzLnBhZCBtdXN0IGJlIHplcm8gZm9yIE1NQVBf
R1RUCj4gaGlzdG9yaWNhbGx5LCB3ZSBjYW5ub3QgaW5zZXJ0IGEgY2hlY2sgbm93IGFzIG9sZCB1
c2Vyc3BhY2UgbWF5IGJlCj4gZmVlZGluZyBpbiBnYXJiYWdlLiBBcyBzdWNoIHRoZSBsYWNrIG9m
IGNoZWNrIGlzIGVuc2hyaW5lZCBpbnRvIHRoZSBBQkksCj4gc28gYWRkIGEgY29tbWVudCB0byBy
ZW1pbmQgdXMgd2UgY2Fubm90IGFkZCB0aGUgY2hlY2sgbGF0ZXIuCj4gCj4gU2lnbmVkLW9mZi1i
eTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gQ2M6IEpvb25hcyBM
YWh0aW5lbiA8am9vbmFzLmxhaHRpbmVuQGxpbnV4LmludGVsLmNvbT4KClJldmlld2VkLWJ5OiBK
b29uYXMgTGFodGluZW4gPGpvb25hcy5sYWh0aW5lbkBsaW51eC5pbnRlbC5jb20+CgpSZWdhcmRz
LCBKb29uYXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
