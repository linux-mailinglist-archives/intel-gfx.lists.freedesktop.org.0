Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AC4DD35DFB
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Jun 2019 15:35:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2AD938911F;
	Wed,  5 Jun 2019 13:35:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from asavdk4.altibox.net (asavdk4.altibox.net [109.247.116.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A486D8911F
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Jun 2019 13:35:43 +0000 (UTC)
Received: from ravnborg.org (unknown [158.248.194.18])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by asavdk4.altibox.net (Postfix) with ESMTPS id DBF2880510;
 Wed,  5 Jun 2019 15:35:40 +0200 (CEST)
Date: Wed, 5 Jun 2019 15:35:39 +0200
From: Sam Ravnborg <sam@ravnborg.org>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20190605133539.GA29435@ravnborg.org>
References: <20190605132137.11818-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190605132137.11818-1-jani.nikula@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.3 cv=VcLZwmh9 c=1 sm=1 tr=0
 a=UWs3HLbX/2nnQ3s7vZ42gw==:117 a=UWs3HLbX/2nnQ3s7vZ42gw==:17
 a=jpOVt7BSZ2e4Z31A5e1TngXxSK0=:19 a=kj9zAlcOel0A:10
 a=sRjvxbnkjZ6Oc6lmUYUA:9 a=CjuIK1q_8ugA:10
Subject: Re: [Intel-gfx] [PATCH] drm/i915: rename header test build commands
 to avoid conflicts
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
Cc: Masahiro Yamada <yamada.masahiro@socionext.com>,
 intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGkgSmFuaS4KCk9uIFdlZCwgSnVuIDA1LCAyMDE5IGF0IDA0OjIxOjM3UE0gKzAzMDAsIEphbmkg
TmlrdWxhIHdyb3RlOgo+IFdlIGhhdmUgYSBsb2NhbCBoYWNrIHRvIHRlc3QgaWYgaGVhZGVycyBh
cmUgc2VsZi1jb250YWluZWQsIHdoaWxlCj4gdXBzdHJlYW1pbmcgYSBwcm9wZXIgZ2VuZXJpYyBz
b2x1dGlvbiBpbiBrYnVpbGQgWzFdLiBOb3cgdGhhdCBib3RoIGhhdmUKPiBmb3VuZCB0aGVtc2Vs
dmVzIGluIGxpbnV4LW5leHQsIHRoZSBpZGVudGljYWwgY21kX2hlYWRlcl90ZXN0IGJ1aWxkCj4g
Y29tbWFuZHMgY29uZmxpY3QsIGxlYWRpbmcgdG8gZXJyb3JzIHN1Y2ggYXM6Cj4gCj4gPj4gZHJp
dmVycy9ncHUvZHJtL2k5MTUvaGVhZGVyX3Rlc3RfaW50ZWxfYXVkaW8uYzoxOjEwOiBmYXRhbCBl
cnJvcjoKPiA+PiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9hdWRpby5oOiBObyBzdWNoIGZp
bGUgb3IgZGlyZWN0b3J5Cj4gICAgICNpbmNsdWRlICJkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRl
bF9hdWRpby5oIgo+IAkgICAgIF5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fgo+
IAo+IFJlbmFtZSB0aGUgaTkxNSBsb2NhbCBidWlsZCBjb21tYW5kIHVudGlsIHRoZSBwcm9wZXIg
a2J1aWxkIHNvbHV0aW9uCj4gZmluZHMgaXRzIHdheSB0byBMaW51cycgbWFzdGVyIGFuZCBnZXRz
IGJhY2twb3J0ZWQgdG8gb3VyIHRyZWUsIGFuZCB3ZQo+IGNhbiBmaW5hbGx5IHN3aXRjaCBvdmVy
LgpZb3UgY291bGQgYWxzbyBpaGF2ZSBzd2l0Y2hlZCBvdmVyIG5vdywgYW5kIGFjY3BldCB0aGF0
IHRoaXMgb25seSB3b3VsZCBiZSB1c2VkCmluIC1uZXh0IGZvciBhIGZldyBtb250aHMuCgpUaGVu
IGF0IGxlYXN0IHlvdSBkaWQgbm90IGhhdmUgdG8gcmVtZW1lYnIgdG8gY2hhbmdlIGl0IGFnYWlu
LgoKQW55IHdheSB3b3JrcyBmb3IgbWUsIGp1c3QgYSBzdWdnZXN0aW9uLgoKCVNhbQpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
