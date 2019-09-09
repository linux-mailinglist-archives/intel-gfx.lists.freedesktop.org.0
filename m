Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F0CEADDE2
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Sep 2019 19:16:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EACBC89C18;
	Mon,  9 Sep 2019 17:16:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 571 seconds by postgrey-1.36 at gabe;
 Mon, 09 Sep 2019 17:16:18 UTC
Received: from out2-smtp.messagingengine.com (out2-smtp.messagingengine.com
 [66.111.4.26])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E1C9C89C18
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Sep 2019 17:16:18 +0000 (UTC)
Received: from compute7.internal (compute7.nyi.internal [10.202.2.47])
 by mailout.nyi.internal (Postfix) with ESMTP id 3B4F221321
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Sep 2019 13:06:47 -0400 (EDT)
Received: from imap2 ([10.202.2.52])
 by compute7.internal (MEProxy); Mon, 09 Sep 2019 13:06:47 -0400
X-ME-Sender: <xms:poZ2XWR0br7oUpK-roMfYFHf301hWbm5QzA8enAMelh4l-JDwYB6xw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrudekiedguddtjecutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
 necuuegrihhlohhuthemuceftddtnecunecujfgurhepofgfggfkfffhvffutgesthdtre
 dtreertdenucfhrhhomhepnhhnvghtuceonhhnvghtsehfrghsthhmrghilhdrfhhmqeen
 ucffohhmrghinhepphgrshhtvggsihhnrdgtohhmnecurfgrrhgrmhepmhgrihhlfhhroh
 hmpehnnhgvthesfhgrshhtmhgrihhlrdhfmhenucevlhhushhtvghrufhiiigvpedt
X-ME-Proxy: <xmx:poZ2XUaqF022d-wFElSKRgaHn3PrphJpEMMYgxIz2YqtzK5i2gDBvA>
 <xmx:poZ2XbQ2e7lcRPjIcb7pa61SAF6RLDRc9F8nL2O40rg2KpIIpXIbPg>
 <xmx:poZ2Xb8dVwLVUeXS4bVuMpLSbQ4wiobuFHyiXZNOtgowpNXevWE2XA>
 <xmx:poZ2XeOt3qsvDsXHqQCxYB9rhCjqYGCpK6HKZROC0drk1lanA57lSw>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id 8D7FDE00A3; Mon,  9 Sep 2019 13:06:46 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.1.7-188-g385deb1-fmstable-20190905v2
Mime-Version: 1.0
Message-Id: <13c021bc-5cb1-4238-b3bc-9ca3fc69dd69@www.fastmail.com>
Date: Mon, 09 Sep 2019 10:06:11 -0700
From: nnet <nnet@fastmail.fm>
To: intel-gfx@lists.freedesktop.org
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fastmail.fm; h=
 mime-version:message-id:date:from:to:subject:content-type; s=
 fm1; bh=iJMmsPG15QgsmWQMvUwuNx2m5pV8/Zf82wepSR9z7ow=; b=ldzHvVSD
 vhqGbdVtMGq8NXul5ne7I9KUnvNWRubsdECY8KIwf5yF+l8oenvoepeE+yxU5sgU
 LR/QZhmZppA+FAyeu88USVgG4xMWCfRCXHjDvvZggNfDU3Xi7K/fjs4QBp1iwl1m
 iuKwltk0sAhIo+v+SFfP28d7Yme9VseoSWMa1OzyZo9h8Ig1I/UflDDtRpC+0Sks
 xDdJKFzPcntaeuVxdLGJUOWm079lC8nzbWYNz2Uf5eGBkp7nPbZRv9cIRSd9vCC9
 HOJ5cOvg1/ETcCV1PffqV3HuNB0tWwS0ssmcvw0h/+bWLGO2pryaaiSub15LJsls
 JVpKQyOOFZnEEQ==
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=content-type:date:from:message-id
 :mime-version:subject:to:x-me-proxy:x-me-proxy:x-me-sender
 :x-me-sender:x-sasl-enc; s=fm3; bh=iJMmsPG15QgsmWQMvUwuNx2m5pV8/
 Zf82wepSR9z7ow=; b=t+y0Lb4TLnx8oEyqthsZek8RTs/rV5qXL1m6RsBcoDj+x
 lRl2V1KszQ/1gUMNXZVQXRDKIIPx9rs/5R3h2wDK49H3o5SIjBOuBjTiuogadUoi
 336d4hB/DjxUP++cjuXtnG/84m0COhg4bM34GsD/vkX0zVlYLPyUxvQ3UN/7cbPm
 eZwOT8U4X1v7HxmbSMbumYLStroA1CZ+i8uDLsaFKtZT8By441QA/qoNhGIyfHWg
 U0pwfP70gt/CLkAbUOkJJuN6rF3wsJ5c8A5tyTWjgbkRg91fWhU6E3BgbHkK5TCc
 hRWcdnHAz00m6HleXlipo1Qh1bULM6OFagodIVRAA==
Subject: [Intel-gfx] USB-C
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

SGVsbG8sCgo1LjIuMTMgaXMgd29ya2luZyBmaW5lIChncmVhdCkgc3RpbGwgd2l0aCBhIERlbGwg
VTQ5MTlEVyBjb25uZWN0ZWQgdmlhIFVTQi1DIGZyb20gYSBYMSBDYXJib24gR2VuIDYuCgo1LjMt
cmM4IHNvIGZhciBpcyBub3QgKGJsYW5rIHNjcmVlbikgYW5kIGVycm9yczoKCmh0dHBzOi8vcGFz
dGViaW4uY29tL3RYRmk2QWZLCgpTZWVtcyB0aGVyZSBoYXMgYmVlbiBzb21lIHJlZmFjdG9yaW5n
IGZvciBqdXN0IHRoaXMga2luZCBvZiBjb25uZWN0aW9uIGluIDUuMz8KCklzIHRoZXJlIHBlcmhh
cHMgYW5kIGlzc3VlIHNpbmNlIGZvciB0aGlzIHNjZW5hcmlvIG9yIGFyZSBvdGhlciBjb21wb25l
bnRzIGF0IGZhdWx0IHBlcmhhcHMgKEFDUEkgLyBtdXR0ZXIpPwoKVGhhbmtzIQpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
