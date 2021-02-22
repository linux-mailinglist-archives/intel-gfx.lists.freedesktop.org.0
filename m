Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A1CD322CEC
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Feb 2021 15:55:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 048266E9C6;
	Tue, 23 Feb 2021 14:55:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 438 seconds by postgrey-1.36 at gabe;
 Mon, 22 Feb 2021 22:45:45 UTC
Received: from lithops.sigma-star.at (lithops.sigma-star.at [195.201.40.130])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8F7B56E7D9
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Feb 2021 22:45:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by lithops.sigma-star.at (Postfix) with ESMTP id 05B5F627AFEE;
 Mon, 22 Feb 2021 23:38:25 +0100 (CET)
Received: from lithops.sigma-star.at ([127.0.0.1])
 by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id VGjpXYRRgJAl; Mon, 22 Feb 2021 23:38:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
 by lithops.sigma-star.at (Postfix) with ESMTP id ABC1C608F45F;
 Mon, 22 Feb 2021 23:38:24 +0100 (CET)
Received: from lithops.sigma-star.at ([127.0.0.1])
 by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id U6dRHxIxmTpW; Mon, 22 Feb 2021 23:38:24 +0100 (CET)
Received: from lithops.sigma-star.at (lithops.sigma-star.at [195.201.40.130])
 by lithops.sigma-star.at (Postfix) with ESMTP id 82E04627AFEE;
 Mon, 22 Feb 2021 23:38:24 +0100 (CET)
Date: Mon, 22 Feb 2021 23:38:24 +0100 (CET)
From: Richard Weinberger <richard@nod.at>
To: Tomas Winkler <tomas.winkler@intel.com>
Message-ID: <1279191970.19051.1614033504390.JavaMail.zimbra@nod.at>
In-Reply-To: <7601e7f0024c41fb9b454a3c50b02173@intel.com>
References: <20210216181925.650082-1-tomas.winkler@intel.com>
 <CAFLxGvwP5-O5DHQ07Fs_GnG12dsK24mer8LJfhz2z2UqW9e5cQ@mail.gmail.com>
 <cb20e706d494458a8957252eeacfb1da@intel.com>
 <7601e7f0024c41fb9b454a3c50b02173@intel.com>
MIME-Version: 1.0
X-Originating-IP: [195.201.40.130]
X-Mailer: Zimbra 8.8.12_GA_3807 (ZimbraWebClient - FF78 (Linux)/8.8.12_GA_3809)
Thread-Topic: drm/i915/spi: discrete graphics internal spi
Thread-Index: AQHXBJBTlGMG4b5GwU+w3NO1EU5QQapbRLqAgAC+HMCABjNiUB7bF+50
X-Mailman-Approved-At: Tue, 23 Feb 2021 14:55:27 +0000
Subject: Re: [Intel-gfx] [RFC PATCH 0/9] drm/i915/spi: discrete graphics
 internal spi
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>, intel-gfx@lists.freedesktop.org,
 "Usyskin, Alexander" <alexander.usyskin@intel.com>,
 linux-mtd <linux-mtd@lists.infradead.org>, "Lubart,
 Vitaly" <vitaly.lubart@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

LS0tLS0gVXJzcHLDvG5nbGljaGUgTWFpbCAtLS0tLQo+PiA+IEknbSBub3Qgc3VyZSB3aGV0aGVy
IHdlIHdhbnQgdG8gdGFrZSB0aGF0IHBhdGguCj4gCj4gSGkgUmljaGFyZCBpcyB0aGVyZSBhbnkg
d2F5IHdlIGNhbiB0cnkgdG8gdW5jbHV0dGVyIHRoaXMgPwoKT2YgY291cnNlIHRoZXJlIGlzIGEg
d2F5LiA6LSkKWW91ciB1c2UtY2FzZSByZWFsbHkgc2VlbXMgdG8gYmUgc3BlY2lhbCBhbmQgTVRE
IG5lZWRzIGFuIGltcHJvdmVtZW50LgpNaXF1ZWwsIFZpZ25lc2ggYW5kIEkganVzdCBuZWVkIHRv
IGNoZWNrIG1vcmUgaW50ZXJuYWxzIGFuZCBjb3JuZXIgY2FzZXMgaW4gTVRELgpXaXRoIHNvbWUg
bHVjayB5b3VyIHBhdGNoIGNhbiBiZSB1c2VkIGFzLWlzIHdpdGggc29tZSBtaW5vciBhZGp1c3Rt
ZW50cyBvbiB0b3AuCgpUaGFua3MsCi8vcmljaGFyZApfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZngK
