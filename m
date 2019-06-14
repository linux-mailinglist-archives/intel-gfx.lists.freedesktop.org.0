Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 047D645A75
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2019 12:34:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8B414892DE;
	Fri, 14 Jun 2019 10:34:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 060EF892DE;
 Fri, 14 Jun 2019 10:34:00 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Jun 2019 03:34:00 -0700
X-ExtLoop1: 1
Received: from irsmsx103.ger.corp.intel.com ([163.33.3.157])
 by fmsmga004.fm.intel.com with ESMTP; 14 Jun 2019 03:33:59 -0700
Received: from ahiler-desk1.fi.intel.com (10.237.68.151) by
 IRSMSX103.ger.corp.intel.com (163.33.3.157) with Microsoft SMTP Server (TLS)
 id 14.3.408.0; Fri, 14 Jun 2019 11:33:58 +0100
Date: Fri, 14 Jun 2019 13:33:56 +0300
From: Arkadiusz Hiler <arkadiusz.hiler@intel.com>
To: Guillaume Tucker <guillaume.tucker@collabora.com>
Message-ID: <20190614103356.m7s2gx66pnvthaw7@ahiler-desk1.fi.intel.com>
References: <cover.1560434374.git.guillaume.tucker@collabora.com>
 <f60f7f9d238ea721d3dcfcc4983b8a67ebe2cf95.1560434374.git.guillaume.tucker@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f60f7f9d238ea721d3dcfcc4983b8a67ebe2cf95.1560434374.git.guillaume.tucker@collabora.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-Patchwork-Hint: comment
User-Agent: NeoMutt/20180716
X-Originating-IP: [10.237.68.151]
Subject: Re: [Intel-gfx] [PATCH i-g-t v2] gitlab-ci: add build for MIPS
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

T24gVGh1LCBKdW4gMTMsIDIwMTkgYXQgMDM6MDE6MDZQTSArMDEwMCwgR3VpbGxhdW1lIFR1Y2tl
ciB3cm90ZToKPiBBZGQgRG9ja2VyIGltYWdlIGFuZCBHaXRsYWIgQ0kgc3RlcHMgdG8gcnVuIGJ1
aWxkcyBmb3IgdGhlIE1JUFMKPiBhcmNoaXRlY3R1cmUgdXNpbmcgRGViaWFuIFN0cmV0Y2ggd2l0
aCBiYWNrcG9ydHMuCj4gCj4gU2lnbmVkLW9mZi1ieTogR3VpbGxhdW1lIFR1Y2tlciA8Z3VpbGxh
dW1lLnR1Y2tlckBjb2xsYWJvcmEuY29tPgo+IC0tLQo+ICAuZ2l0bGFiLWNpLnltbCAgICAgICAg
IHwgMjggKysrKysrKysrKysrKysrKysrKysrKysrKysrKwo+ICBEb2NrZXJmaWxlLmRlYmlhbi1t
aXBzIHwgMzkgKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrCj4gIG1lc29u
LWNyb3NzLW1pcHMudHh0ICAgfCAxMiArKysrKysrKysrKysKPiAgMyBmaWxlcyBjaGFuZ2VkLCA3
OSBpbnNlcnRpb25zKCspCj4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBEb2NrZXJmaWxlLmRlYmlhbi1t
aXBzCj4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBtZXNvbi1jcm9zcy1taXBzLnR4dAo+IAo+IGRpZmYg
LS1naXQgYS8uZ2l0bGFiLWNpLnltbCBiLy5naXRsYWItY2kueW1sCj4gaW5kZXggNzcxMTQzYTll
YTk1Li5lMzkwZjhmNDcyZDUgMTAwNjQ0Cj4gLS0tIGEvLmdpdGxhYi1jaS55bWwKPiArKysgYi8u
Z2l0bGFiLWNpLnltbAo+IEBAIC05MCw2ICs5MCwxNyBAQCBidWlsZDp0ZXN0cy1kZWJpYW4tbWVz
b24tYXJtNjQ6Cj4gICAgICBwYXRoczoKPiAgICAgICAgLSBidWlsZAo+ICAKPiArYnVpbGQ6dGVz
dHMtZGViaWFuLW1lc29uLW1pcHM6Cj4gKyAgaW1hZ2U6ICRDSV9SRUdJU1RSWS8kQ0lfUFJPSkVD
VF9QQVRIL2lndC1kZWJpYW4tbWlwczpsYXRlc3QKPiArICBzdGFnZTogYnVpbGQKPiArICBzY3Jp
cHQ6Cj4gKyAgICAtIGV4cG9ydCBQS0dfQ09ORklHX1BBVEg9L3Vzci9saWIvbWlwcy1saW51eC1n
bnUvcGtnY29uZmlnLwo+ICsgICAgLSBtZXNvbiAtLWNyb3NzLWZpbGUgbWVzb24tY3Jvc3MtbWlw
cy50eHQgYnVpbGQKPiArICAgIC0gbmluamEgLUMgYnVpbGQKPiArICBhcnRpZmFjdHM6Cj4gKyAg
ICBwYXRoczoKPiArICAgICAgLSBidWlsZAo+ICsKPiAgYnVpbGQ6dGVzdHMtZGViaWFuLWF1dG90
b29sczoKPiAgICBpbWFnZTogJENJX1JFR0lTVFJZLyRDSV9QUk9KRUNUX1BBVEgvaWd0LWRlYmlh
bjpsYXRlc3QKPiAgICBzdGFnZTogYnVpbGQKPiBAQCAtMjIxLDYgKzIzMiwyMyBAQCBjb250YWlu
ZXJzOmlndC1kZWJpYW4tYXJtNjQ6Cj4gICAgICAtIGRvY2tlciBidWlsZCAtdCAkQ0lfUkVHSVNU
UlkvJENJX1BST0pFQ1RfUEFUSC9pZ3QtZGViaWFuLWFybTY0IC1mIERvY2tlcmZpbGUuZGViaWFu
LWFybTY0IC4KPiAgICAgIC0gZG9ja2VyIHB1c2ggJENJX1JFR0lTVFJZLyRDSV9QUk9KRUNUX1BB
VEgvaWd0LWRlYmlhbi1hcm02NAoKQW55IHBhcnRpY3VsYXIgcmVhc29uIGZvciBub3QgaGF2aW5n
IG5pbmphLXRlc3Qgc3RlcCBmb3IgTUlQUz8KCk90aGVyIHRoYW4gdGhhdCAoYW5kIFBldHJpJ3Mg
Y29uY2Vybiwgc2luY2UgSSBkb24ndCBzcGVhayBEZWJpYW4pLApsb29rcyBnb29kLgoKLSBBcmVr
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
