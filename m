Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BBE436037
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Jun 2019 17:20:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7AAD789C33;
	Wed,  5 Jun 2019 15:20:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2DEC289A57
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Jun 2019 15:20:15 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Jun 2019 08:20:14 -0700
X-ExtLoop1: 1
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by orsmga007.jf.intel.com with ESMTP; 05 Jun 2019 08:20:13 -0700
Received: from mwajdecz-mobl1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [172.28.174.50])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 x55FKCWG002889; Wed, 5 Jun 2019 16:20:12 +0100
To: intel-gfx@lists.freedesktop.org, "Daniele Ceraolo Spurio"
 <daniele.ceraolospurio@intel.com>
References: <20190604202921.22196-1-daniele.ceraolospurio@intel.com>
Date: Wed, 05 Jun 2019 17:20:12 +0200
MIME-Version: 1.0
From: "Michal Wajdeczko" <michal.wajdeczko@intel.com>
Message-ID: <op.z2w3jyehxaggs7@mwajdecz-mobl1.ger.corp.intel.com>
In-Reply-To: <20190604202921.22196-1-daniele.ceraolospurio@intel.com>
User-Agent: Opera Mail/1.0 (Win32)
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/guc: always use Command
 Transport Buffers
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"; DelSp="yes"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCAwNCBKdW4gMjAxOSAyMjoyOToyMCArMDIwMCwgRGFuaWVsZSBDZXJhb2xvIFNwdXJp
byAgCjxkYW5pZWxlLmNlcmFvbG9zcHVyaW9AaW50ZWwuY29tPiB3cm90ZToKCj4gTm93IHRoYXQg
d2UndmUgbW92ZWQgdGhlIGdlbjkgZ3VjIGJsb2JzIHRvIHZlcnNpb24gMzIgd2UgaGF2ZSBDVEIK
PiBzdXBwb3J0IG9uIGFsbCBnZW5zLCBzbyBubyBuZWVkIHRvIHJlc3RyaWN0IHRoZSB1c2FnZSB0
byBnZW4xMSsuCj4gTm90ZSB0aGF0IG1taW8gY29tbXVuaWNhdGlvbiBpcyBzdGlsbCByZXF1aXJl
ZCBmb3IgQ1RCIGluaXRpYWxpemF0aW9uLgoKcy9nZW45L0dlbjkKcy9ndWMvR3VDCnMvZ2VuMTEv
R2VuMTEKcy9tbWlvL01NSU8KCj4KPiBTaWduZWQtb2ZmLWJ5OiBEYW5pZWxlIENlcmFvbG8gU3B1
cmlvIDxkYW5pZWxlLmNlcmFvbG9zcHVyaW9AaW50ZWwuY29tPgo+IENjOiBNaWNoYWwgV2FqZGVj
emtvIDxtaWNoYWwud2FqZGVjemtvQGludGVsLmNvbT4KPiAtLS0KCkZvciBzaW1wbGUgZW5hYmxl
X2d1Yz0yIG1vZGUgKEh1QyBhdXRoIG9ubHkpIHVzZSBvZiBDVEIgbWlnaHQgYmUKdmlld2VkIGFz
IHNtYWxsIG92ZXJraWxsLCBidXQgSSBhc3N1bWUgZncgcHJlZmVycyB0aGF0IHdheS4KCldpdGgg
YWJvdmUgY29tbWl0IG1lc3NhZ2Ugbml0cywKUmV2aWV3ZWQtYnk6IE1pY2hhbCBXYWpkZWN6a28g
PG1pY2hhbC53YWpkZWN6a29AaW50ZWwuY29tPgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4
