Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C9ACAD6DE
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Sep 2019 12:30:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 631BC89B62;
	Mon,  9 Sep 2019 10:30:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 952 seconds by postgrey-1.36 at gabe;
 Mon, 09 Sep 2019 10:09:40 UTC
Received: from mail-40136.protonmail.ch (mail-40136.protonmail.ch
 [185.70.40.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9981288CE4
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Sep 2019 10:09:39 +0000 (UTC)
Date: Mon, 09 Sep 2019 09:53:41 +0000
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
From: howaboutsynergy@protonmail.com
Message-ID: <2G39DCpd3Qh4aagAKQWKqWHqRtjDjLzonFTYxHE7sKuRWWMSVOUZXtDOscX4jeph-xWxd79_QKw5POY4iHndBRCdN-Kx-gjKwGCkbN-DwpA=@protonmail.com>
In-Reply-To: <gXHNgIY61WcHkua2wxMvVPo25PrLquR9hY8lN5tT1zRVz-dv_VbQTvnAM__ABAkoQ84ZimLHt8ogqNWuOGCXvMuT4EuWCILflWK0Bap5Nbc=@protonmail.com>
References: <gXHNgIY61WcHkua2wxMvVPo25PrLquR9hY8lN5tT1zRVz-dv_VbQTvnAM__ABAkoQ84ZimLHt8ogqNWuOGCXvMuT4EuWCILflWK0Bap5Nbc=@protonmail.com>
Feedback-ID: cNV1IIhYZ3vPN2m1zihrGlihbXC6JOgZ5ekTcEurWYhfLPyLhpq0qxICavacolSJ7w0W_XBloqfdO_txKTblOQ==:Ext:ProtonMail
MIME-Version: 1.0
X-Spam-Status: No, score=-1.2 required=7.0 tests=ALL_TRUSTED,DKIM_SIGNED,
 DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM autolearn=ham
 autolearn_force=no version=3.4.2
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on mail.protonmail.ch
X-Mailman-Approved-At: Mon, 09 Sep 2019 10:30:17 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=protonmail.com; s=default; t=1568022825;
 bh=sE7yxrNi2rTRWxtT6dVWCPm+YVmE63JUFyPMjspMOgU=;
 h=Date:To:From:Reply-To:Subject:In-Reply-To:References:Feedback-ID:
 From;
 b=yGFVa3Y0xdLDcUiP7o8xR9RKfnlxeHH3XTB2Sc4ho2H4jQHSI1QkFaoKkwlmj6rV6
 YU2DfDAWkZCM7FwwtKSYPXrpMlgdHUeHA/PD0cYsAK91kayPJeECk5mMrWZjzzKUBa
 vD6jJ1ByTduzDcGjbCGuKf01bfyTOqJ+5g9EsAzg=
Subject: Re: [Intel-gfx] system freeze on i915 system(s) due to commit
 aa56a292ce623734ddd30f52d73f527d1f3529b5
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
Reply-To: howaboutsynergy@protonmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

CuKAkOKAkOKAkOKAkOKAkOKAkOKAkCBPcmlnaW5hbCBNZXNzYWdlIOKAkOKAkOKAkOKAkOKAkOKA
kOKAkApPbiBNb25kYXksIFNlcHRlbWJlciA5LCAyMDE5IDEwOjM4IEFNLCA8aG93YWJvdXRzeW5l
cmd5QHByb3Rvbm1haWwuY29tPiB3cm90ZToKCj4gV2l0aCBjb21taXQgYWE1NmEyOTJjZTYyMzcz
NGRkZDMwZjUyZDczZjUyN2QxZjM1MjliNSAoZXZlbiBvbiA1LjMuMC1yYzgpIEkgY2FuIGdldCBh
IHN5c3RlbSBmcmVlemUgZHVyaW5nIGNocm9taXVtIGNvbXBpbGF0aW9uIChsaWtlbHkgZHVlIHRv
IGp1bWJvIC8gaGlnaCBtZW1vcnkgdXNhZ2UpLiBTeXNycSBzdGlsbCB3b3JrcyBhbmQgQ1BVL2Zh
biBpcyBsb3csIHNvIGl0IHNlZW1zIGxpa2UgYSBkZWFkbG9jaz8gYW5kIHRoZXJlJ3Mgbm8gZGlz
ayByZWFkaW5nLiBJIGNhbid0IHJlYWQgdGhlIGR1bXAgZ290dGVuIHZpYSBrZHVtcCBmb3Igc29t
ZSByZWFzb24sIGVsc2UgSSB3b3VsZCd2ZSBzaG93biBhIHN0YWNrdHJhY2UgYnkgY2F1c2luZyBr
ZXJuZWwgdG8gY3Jhc2ggdmlhIHN5c3JxK2MuCj4KPiBJIGNhbiBlYXNpbHkgcmVwcm9kdWNlIHRo
aXMgZnJlZXplIGluIGEgbWF0dGVyIG9mIHNlY29uZHM6Cj4KPiBwbGVhc2Ugc2VlIGh0dHBzOi8v
YnVnemlsbGEua2VybmVsLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MjAzMzE3I2M0Cj4KPiBUaGFua3Mu
CgpGaWxlZCBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMTE2
MDEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
