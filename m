Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1277D37BDB8
	for <lists+intel-gfx@lfdr.de>; Wed, 12 May 2021 15:10:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C7A06E7DD;
	Wed, 12 May 2021 13:10:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-40131.protonmail.ch (mail-40131.protonmail.ch
 [185.70.40.131])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 112EC6E7DD;
 Wed, 12 May 2021 13:10:17 +0000 (UTC)
Date: Wed, 12 May 2021 13:09:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=emersion.fr;
 s=protonmail3; t=1620825015;
 bh=8dbC0bXMl9KoiodKNr2CaJx6iRPp1MwGJ05L+enMrBY=;
 h=Date:To:From:Cc:Reply-To:Subject:In-Reply-To:References:From;
 b=Da+hPNgERTt3U0UEBeIUWh5yafKBvfr9hv+HFBnKA6kh8+VDt7B/QTZ9aoXegHVfe
 9bHtZSBsTKc0QxzXPuBOMWASIQGnVOZ8qPRejOMuo5Dhp2YsRLdPH+bEFFOkndBH9Y
 A3+QIgxIxO/eyUagggCz4ICHyTvLyLq5rpBaE4oJeaUYb+Fy+z1U8ZUOWptWr0ofMw
 H0QzFi34FfwXIm2jBgiEq/B6yElrRSRTVAj56HIllJzttGQrHfgMOvGZyxLnHAQ4Dw
 2xx5qyL1lCJO8QSQU5fPtRhivpCr3v5pjj7564zyJOeh09a/UOmN1jzK32ya7i/n1Z
 1e725loWyvrgA==
To: =?utf-8?Q?Ville_Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>
From: Simon Ser <contact@emersion.fr>
Message-ID: <9AhePX5AEosIsHWWHSHn742dMU9llkiX09EMzWK_hSE0bcAmsDD-nBSNG0tYbOdcwnru3WaFELpPaxIgntU4zboc5zauY-VPPICyVvr7DEA=@emersion.fr>
In-Reply-To: <YJvSUCCPvWz7y/r7@intel.com>
References: <8c0d7ad8-7ade-bf8a-0414-cc795fbb6aa2@tuxedocomputers.com>
 <YJvSUCCPvWz7y/r7@intel.com>
MIME-Version: 1.0
X-Spam-Status: No, score=-1.2 required=10.0 tests=ALL_TRUSTED,DKIM_SIGNED,
 DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF shortcircuit=no
 autolearn=disabled version=3.4.4
X-Spam-Checker-Version: SpamAssassin 3.4.4 (2020-01-24) on
 mailout.protonmail.ch
Subject: Re: [Intel-gfx] New uAPI for color management proposal and feedback
 request
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
Reply-To: Simon Ser <contact@emersion.fr>
Cc: "Deucher, Alexander" <alexander.deucher@amd.com>,
 intel-gfx@lists.freedesktop.org,
 Maling list - DRI developers <dri-devel@lists.freedesktop.org>,
 amd-gfx list <amd-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkbmVzZGF5LCBNYXkgMTJ0aCwgMjAyMSBhdCAzOjA0IFBNLCBWaWxsZSBTeXJqw6Rsw6Qg
PHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPiB3cm90ZToKCj4gPiBBZG9wdGlvbjoKPiA+
Cj4gPiBBIEtERSBkZXYgd2FudHMgdG8gaW1wbGVtZW50IHRoZSBzZXR0aW5ncyBpbiB0aGUgS0RF
IHNldHRpbmdzIEdVSToKPiA+Cj4gPiBodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvZHJt
L2FtZC8tL2lzc3Vlcy80NzYjbm90ZV85MTIzNzAKPiA+Cj4gPiBUdXhlZG8gQ29tcHV0ZXJzICht
eSBlbXBsb3llcikgd2FudHMgdG8gaW1wbGVtZW50IHRoZSBzZXR0aW5ncyBkZXNrdG9wIGVudmly
b25tZW50IGFnbm9zdGljIGluIFR1eGVkbyBDb250cm9sIENlbnRlci4gSQo+ID4gd2lsbCBzdGFy
dCB3b3JrIG9uIHRoaXMgaW4gcGFyYWxsZWwgdG8gaW1wbGVtZW50aW5nIHRoZSBuZXcga2VybmVs
IGNvZGUuCj4KPiBJIHN1c3BlY3QgZXZlcnlvbmUgd291bGQgYmUgaGFwcGllciB0byBhY2NlcHQg
bmV3IHVhcGkgaWYgd2UgaGFkCj4gbXVsdGlwbGUgY29tcG9zaXRvcnMgc2lnbmVkIHVwIHRvIGlt
cGxlbWVudCBpdC4KClNpZ24gbWUgdXAuIFdlIGFscmVhZHkgaGF2ZSBhIHBhdGNoIGJsb2NrZWQg
YnkgIkJyb2FkY2FzdCBSR0IiCnN0YW5kYXJkaXphdGlvbjoKCmh0dHBzOi8vZ2l0aHViLmNvbS9z
d2F5d20vd2xyb290cy9wdWxsLzIzMTAKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4Cg==
