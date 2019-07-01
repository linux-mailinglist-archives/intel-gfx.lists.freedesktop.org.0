Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A24E15BCB8
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Jul 2019 15:18:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2018189B3C;
	Mon,  1 Jul 2019 13:18:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2A11D89B3C
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Jul 2019 13:18:32 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17085432-1500050 for multiple; Mon, 01 Jul 2019 14:18:31 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190701113437.4043-1-lionel.g.landwerlin@intel.com>
 <20190701113437.4043-8-lionel.g.landwerlin@intel.com>
In-Reply-To: <20190701113437.4043-8-lionel.g.landwerlin@intel.com>
Message-ID: <156198710761.1583.15878412115953089334@skylake-alporthouse-com>
Date: Mon, 01 Jul 2019 14:18:27 +0100
Subject: Re: [Intel-gfx] [PATCH v6 07/11] drm/i915: add syncobj timeline
 support
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

UXVvdGluZyBMaW9uZWwgTGFuZHdlcmxpbiAoMjAxOS0wNy0wMSAxMjozNDozMykKPiArICAgICAg
ICAgICAgICAgLyoKPiArICAgICAgICAgICAgICAgICogRm9yIHRpbWVsaW5lIHN5bmNvYmpzIHdl
IG5lZWQgdG8gcHJlYWxsb2NhdGUgY2hhaW5zIGZvcgo+ICsgICAgICAgICAgICAgICAgKiBsYXRl
ciBzaWduYWxpbmcuCj4gKyAgICAgICAgICAgICAgICAqLwo+ICsgICAgICAgICAgICAgICBpZiAo
cG9pbnQgIT0gMCAmJiB1c2VyX2ZlbmNlLmZsYWdzICYgSTkxNV9FWEVDX0ZFTkNFX1NJR05BTCkg
ewo+ICsgICAgICAgICAgICAgICAgICAgICAgIGZlbmNlc1tuXS5jaGFpbl9mZW5jZSA9Cj4gKyAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICBrbWFsbG9jKHNpemVvZigqZmVuY2VzW25dLmNo
YWluX2ZlbmNlKSwKPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgR0ZQ
X0tFUk5FTCk7Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgaWYgKCFmZW5jZXNbbl0uY2hhaW5f
ZmVuY2UpIHsKPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGRtYV9mZW5jZV9wdXQo
ZmVuY2UpOwo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgZHJtX3N5bmNvYmpfcHV0
KHN5bmNvYmopOwo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgZXJyID0gLUVOT01F
TTsKPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIERSTV9ERUJVRygiVW5hYmxlIHRv
IGFsbG9jIGNoYWluX2ZlbmNlXG4iKTsKClRoaXMgaXMgbGlrZSB0aHJvd2luZyBhIGdyZW5hZGUs
IHdhaXRpbmcgZm9yIHRoZSBleHBsb3Npb24sIGFuZCB0aGVuCnNheWluZyAiYmFuZyIgdW5kZXIg
eW91ciBicmVhdGguIDopCi1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZng=
