Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 63773303A65
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Jan 2021 11:34:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC8036E165;
	Tue, 26 Jan 2021 10:34:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 401 seconds by postgrey-1.36 at gabe;
 Tue, 26 Jan 2021 10:34:47 UTC
Received: from mail.skyhub.de (mail.skyhub.de [5.9.137.197])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6D7406E165
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Jan 2021 10:34:47 +0000 (UTC)
Received: from zn.tnic (p200300ec2f0d1100bcf83db545f09974.dip0.t-ipconnect.de
 [IPv6:2003:ec:2f0d:1100:bcf8:3db5:45f0:9974])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.skyhub.de (SuperMail on ZX Spectrum 128k) with ESMTPSA id B753E1EC030D;
 Tue, 26 Jan 2021 11:28:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alien8.de; s=dkim;
 t=1611656881;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=HZPhY3rJjpyephbaZ85Pq/V2oRxVvVTwEZy9U+9gjD0=;
 b=X47D7jkAeBVhFVXuHut9t7ROvPlBZ171VFFx4ea3dWkUeNyC2mM5p07eJRX77GwgqbcKZI
 NhEMC3zAJ3n9rSP8atz93dckJEn/fZHFcDiDy7cBke9qgKPrWhLFB2tTSnw3q/2okeoGlk
 73w0jhYTqIeTkwkoFOO9PeBJ/jjUcHs=
Date: Tue, 26 Jan 2021 11:28:02 +0100
From: Borislav Petkov <bp@alien8.de>
To: Aditya Swarup <aditya.swarup@intel.com>
Message-ID: <20210126102802.GB6514@zn.tnic>
References: <20210126001744.29442-1-aditya.swarup@intel.com>
 <20210126001744.29442-2-aditya.swarup@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210126001744.29442-2-aditya.swarup@intel.com>
Subject: Re: [Intel-gfx] [PATCH 1/1] x86/gpu: Add Alderlake-S stolen memory
 support
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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
Cc: intel-gfx@lists.freedesktop.org, bp@suse.de,
 Lucas De Marchi <lucas.demarchi@intel.com>, x86@kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCBKYW4gMjUsIDIwMjEgYXQgMDQ6MTc6NDRQTSAtMDgwMCwgQWRpdHlhIFN3YXJ1cCB3
cm90ZToKPiBGcm9tOiBDYXogWW9rb3lhbWEgPGNhei55b2tveWFtYUBpbnRlbC5jb20+Cj4gCj4g
QWxkZXJsYWtlLVMgaXMgYSBHZW4gMTIgYmFzZWQgaHlicmlkIHByb2Nlc3NvciBhcmNoaXRlY3R1
cmUuIEFzIGl0Cj4gYmVsb25ncyB0byBHZW4gMTIgZmFtaWx5LCBpdCB1c2VzIHRoZSBzYW1lIEdU
VCBzdG9sZW4gbWVtb3J5IHNldHRpbmdzCj4gbGlrZSBpdHMgcHJlZGVjZXNzb3JzIC0gSUNMKEdl
biAxMSkgYW5kIFRHTChHZW4gMTIpLiBJbmhlcml0IGdlbjExCj4gYW5kIGdlbiA5IHF1aXJrcyBm
b3IgZGV0ZXJtaW5pbmcgYmFzZSBhbmQgc2l6ZSBvZiBzdG9sZW4gbWVtb3J5Lgo+IAo+IHYyOiBG
aXggdHlwb3MgaW4gY29tbWl0IG1lc3NhZ2UuKEJvcmlzIFBldGtvdikKCkZvciB0aGUgZnV0dXJl
OiBwYXRjaCBjaGFuZ2Vsb2cgaW5mb3JtYXRpb24gZ29lcy4uLgoKPiBCc3BlYzogNTIwNTUKPiBC
c3BlYzogNDk1ODkKPiBCc3BlYzogNDk2MzYKPiAKPiBDYzogTHVjYXMgRGUgTWFyY2hpIDxsdWNh
cy5kZW1hcmNoaUBpbnRlbC5jb20+Cj4gQ2M6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRl
bC5jb20+Cj4gQ2M6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5j
b20+Cj4gQ2M6IEltcmUgRGVhayA8aW1yZS5kZWFrQGludGVsLmNvbT4KPiBDYzogeDg2QGtlcm5l
bC5vcmcKPiBDYzogSW5nbyBNb2xuYXIgPG1pbmdvQHJlZGhhdC5jb20+LAo+IENjOiBUaG9tYXMg
R2xlaXhuZXIgPHRnbHhAbGludXRyb25peC5kZT4sCj4gQ2M6IEJvcmlzbGF2IFBldGtvdiA8YnBA
c3VzZS5kZT4KPiBTaWduZWQtb2ZmLWJ5OiBDYXogWW9rb3lhbWEgPGNhei55b2tveWFtYUBpbnRl
bC5jb20+Cj4gU2lnbmVkLW9mZi1ieTogQWRpdHlhIFN3YXJ1cCA8YWRpdHlhLnN3YXJ1cEBpbnRl
bC5jb20+Cj4gUmV2aWV3ZWQtYnk6IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50
ZWwuY29tPgo+IC0tLQoKPC0tLSAuLi4gaGVyZSwgdW5kZXIgdGhvc2UgbGluZXMuIEJ1dCBubyBu
ZWVkIHRvIHJlc2VuZCBub3csIEkgYmVsaWV2ZQp0aGUgY29tbWl0dGVyIG9mIHRoaXMgd2lsbCBm
aXggaXQgdXAuCgpBY2tlZC1ieTogQm9yaXNsYXYgUGV0a292IDxicEBzdXNlLmRlPgoKVGh4LgoK
LS0gClJlZ2FyZHMvR3J1c3MsCiAgICBCb3Jpcy4KCmh0dHBzOi8vcGVvcGxlLmtlcm5lbC5vcmcv
dGdseC9ub3Rlcy1hYm91dC1uZXRpcXVldHRlCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLWdmeAo=
