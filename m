Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B59F6AD6DD
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Sep 2019 12:30:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ED4D689B57;
	Mon,  9 Sep 2019 10:30:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 998 seconds by postgrey-1.36 at gabe;
 Mon, 09 Sep 2019 08:55:29 UTC
Received: from mail-40135.protonmail.ch (mail-40135.protonmail.ch
 [185.70.40.135])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D5BED898C7
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Sep 2019 08:55:29 +0000 (UTC)
Date: Mon, 09 Sep 2019 08:38:41 +0000
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
From: howaboutsynergy@protonmail.com
Message-ID: <gXHNgIY61WcHkua2wxMvVPo25PrLquR9hY8lN5tT1zRVz-dv_VbQTvnAM__ABAkoQ84ZimLHt8ogqNWuOGCXvMuT4EuWCILflWK0Bap5Nbc=@protonmail.com>
Feedback-ID: cNV1IIhYZ3vPN2m1zihrGlihbXC6JOgZ5ekTcEurWYhfLPyLhpq0qxICavacolSJ7w0W_XBloqfdO_txKTblOQ==:Ext:ProtonMail
MIME-Version: 1.0
X-Spam-Status: No, score=-1.2 required=7.0 tests=ALL_TRUSTED,DKIM_SIGNED,
 DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM autolearn=ham
 autolearn_force=no version=3.4.2
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on mail.protonmail.ch
X-Mailman-Approved-At: Mon, 09 Sep 2019 10:30:17 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=protonmail.com; s=default; t=1568018328;
 bh=fLdguE26MxHg8yB1tVdD31Kp+1Lh6cxP5Bi27aOzmOE=;
 h=Date:To:From:Reply-To:Subject:Feedback-ID:From;
 b=ieZrGd0IQrQ33Y0a5FHbqRjW+Evb3NOsjWdl+/y3eotimePC8bFiJZJIwbXXixmqU
 xtM0mII0xAZ1uKmHdhbB9Qa4xzkN+7aTq23UQa3P6dmUJf6iDBR4FtNYwDlPSAy/84
 0/FV93NT9HQAfpUwsRvgKBrZsill9J/l7VTit4Lk=
Subject: [Intel-gfx] system freeze on i915 system(s) due to commit
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

V2l0aCBjb21taXQgYWE1NmEyOTJjZTYyMzczNGRkZDMwZjUyZDczZjUyN2QxZjM1MjliNSAoZXZl
biBvbiA1LjMuMC1yYzgpIEkgY2FuIGdldCBhIHN5c3RlbSBmcmVlemUgZHVyaW5nIGNocm9taXVt
IGNvbXBpbGF0aW9uIChsaWtlbHkgZHVlIHRvIGp1bWJvIC8gaGlnaCBtZW1vcnkgdXNhZ2UpLiBT
eXNycSBzdGlsbCB3b3JrcyBhbmQgQ1BVL2ZhbiBpcyBsb3csIHNvIGl0IHNlZW1zIGxpa2UgYSBk
ZWFkbG9jaz8gYW5kIHRoZXJlJ3Mgbm8gZGlzayByZWFkaW5nLiBJIGNhbid0IHJlYWQgdGhlIGR1
bXAgZ290dGVuIHZpYSBrZHVtcCBmb3Igc29tZSByZWFzb24sIGVsc2UgSSB3b3VsZCd2ZSBzaG93
biBhIHN0YWNrdHJhY2UgYnkgY2F1c2luZyBrZXJuZWwgdG8gY3Jhc2ggdmlhIHN5c3JxK2MuCgpJ
IGNhbiBlYXNpbHkgcmVwcm9kdWNlIHRoaXMgZnJlZXplIGluIGEgbWF0dGVyIG9mIHNlY29uZHM6
CgpwbGVhc2Ugc2VlIGh0dHBzOi8vYnVnemlsbGEua2VybmVsLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9
MjAzMzE3I2M0CgpUaGFua3MuCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeA==
