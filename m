Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 51CAAADEC2
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Sep 2019 20:21:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5865489D42;
	Mon,  9 Sep 2019 18:21:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 515 seconds by postgrey-1.36 at gabe;
 Mon, 09 Sep 2019 18:21:14 UTC
Received: from wout2-smtp.messagingengine.com (wout2-smtp.messagingengine.com
 [64.147.123.25])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 35D6489D42
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Sep 2019 18:21:14 +0000 (UTC)
Received: from compute7.internal (compute7.nyi.internal [10.202.2.47])
 by mailout.west.internal (Postfix) with ESMTP id DD2E95AA
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Sep 2019 14:12:37 -0400 (EDT)
Received: from imap2 ([10.202.2.52])
 by compute7.internal (MEProxy); Mon, 09 Sep 2019 14:12:38 -0400
X-ME-Sender: <xms:FZZ2XQ17EUBMALc8wQMTI-IBIvTM36gnK3BLvzfA5Cee6XaBshIoNw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrudekiedguddvtdcutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
 necuuegrihhlohhuthemuceftddtnecunecujfgurhepofgfggfkjghffffhvffutgesth
 dtredtreertdenucfhrhhomhepnhhnvghtuceonhhnvghtsehfrghsthhmrghilhdrfhhm
 qeenucffohhmrghinhepfhhrvggvuggvshhkthhophdrohhrghdpphgrshhtvggsihhnrd
 gtohhmnecurfgrrhgrmhepmhgrihhlfhhrohhmpehnnhgvthesfhgrshhtmhgrihhlrdhf
 mhenucevlhhushhtvghrufhiiigvpedt
X-ME-Proxy: <xmx:FZZ2Xb3hcBgy7n8iaJ_k2oE_xb0S880inlQXUUJ_ff1vJdvlFuNMFQ>
 <xmx:FZZ2XVAKTGLig5AQEOfpWm0R4iCXuEN7MaByX33eFXihD_6G4K3Pmw>
 <xmx:FZZ2Xa66bBvPRbtwpkFpQtBeeIMTRiCL2u8NIQS6ykFooz9AIXE35A>
 <xmx:FZZ2Xc8JjB2aWovnKhaBs3oEcDD8crbaZu7I3sOznJiYTbEvwhtybQ>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id 44231E00A3; Mon,  9 Sep 2019 14:12:37 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.1.7-188-g385deb1-fmstable-20190905v2
Mime-Version: 1.0
Message-Id: <66f774c4-422e-4fc5-ae43-9164876d9a70@www.fastmail.com>
In-Reply-To: <13c021bc-5cb1-4238-b3bc-9ca3fc69dd69@www.fastmail.com>
References: <13c021bc-5cb1-4238-b3bc-9ca3fc69dd69@www.fastmail.com>
Date: Mon, 09 Sep 2019 11:12:02 -0700
From: nnet <nnet@fastmail.fm>
To: intel-gfx@lists.freedesktop.org
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fastmail.fm; h=
 mime-version:message-id:in-reply-to:references:date:from:to
 :subject:content-type; s=fm1; bh=x55zFDjwu5Q3S1SNpl6OLdZyea5Yurx
 OQqalIDnjO2Y=; b=gYrK/nNDVIT5A06kGrAI59FYg8WX+ZSJ5MfJH6jEbN4TEBL
 UdUVg6DO76aV6tz9QPKzsJhr7cG0dbT7wdpC7V9gjoR7L+gbFpq0OqTuyDpPnKr1
 P2QqYi96t/+wUOO7hH9L7oXmy4sBu6q7iyGvxSN4OgPew4skt0A2IJjLKVw7LIlh
 ErrSWaLuDTRS0eAXN317O0sihXNEdConZCB/Gb7V+URQe1nPjgEf3m6UR9rRtl/W
 w7kwqGDqnycFxDVEM81Xr+PHMvakMAjn7t9jI2M/NL+0V4DdgfOgsFEDWRBPhKSB
 m/NDsdfFaOAjcgOsW14SOSDyZUPVIQNvHtezVrQ==
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=x55zFD
 jwu5Q3S1SNpl6OLdZyea5YurxOQqalIDnjO2Y=; b=HefgBlDPGrBb0O7t6Wbwk6
 xdD4e6RFqd8rHBZYSCze3GG/fVNQWlFnJpeJ43cGmf8m9xUElQWSfB51PvOkBbWt
 7NWLV7UNnELHkfU2femaJD9G057oADfOPZ+GhTi2SLBG1Cu1ic2JCHvga6Wu1FFy
 CGE9fvwXzNAdb017MvZWn6IMpnx5VmI5+ig92yaA6nvMnMLxTslTp9G9LdfIOkMi
 OHCaHuo7P1YvnxFdgbHAyZh7nt8Qx6m4wcBcP2C8F9O81TLnJkCHduMjH02X+HLM
 8jHZRG44Cvgq/7Ca/kKv1Jol/pStIntvTLEZLt7reITpf7Y3TNEu6MduW+xCYLQg
 ==
Subject: Re: [Intel-gfx] USB-C
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

U2VhcmNoaW5nIG9uIHRoZSBrZXJuZWwgd2FybmluZ3MgYW5kIGVycm9ycyBkaWRuJ3QgYnJpbmcg
aXQgdXAsIGJ1dCBpbiBicm93c2luZyBidWd6aWxsYSBJIHN0dW1ibGVkIG9uIHRoaXMuCgpCdWcg
MTExNTAxIC0gW0NGTF0gS2VybmVsIDUuMy4wLXJjNjogaTkxNSBmYWlscyBhdCB0eXBlY19kaXNw
bGF5cG9ydCA1MTIweDE0NDAgCmh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcu
Y2dpP2lkPTExMTUwMQoKSXQncyB0aGUgc2FtZSBtb25pdG9yIGFuZCBjb25uZWN0aW9uIHR5cGUu
CgpJcyB0aGUgcmVsYXRlZCBwYXRjaHNldCBpbnRlbmRlZCBmb3IgNS4zIHRoZW4/IApodHRwczov
L3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzY2Mjg2LwoKVGhhbmtzCgpPbiBNb24s
IFNlcCA5LCAyMDE5LCBhdCAxMDowNiBBTSwgbm5ldCB3cm90ZToKPiBIZWxsbywKPiAKPiA1LjIu
MTMgaXMgd29ya2luZyBmaW5lIChncmVhdCkgc3RpbGwgd2l0aCBhIERlbGwgVTQ5MTlEVyBjb25u
ZWN0ZWQgdmlhIAo+IFVTQi1DIGZyb20gYSBYMSBDYXJib24gR2VuIDYuCj4gCj4gNS4zLXJjOCBz
byBmYXIgaXMgbm90IChibGFuayBzY3JlZW4pIGFuZCBlcnJvcnM6Cj4gCj4gaHR0cHM6Ly9wYXN0
ZWJpbi5jb20vdFhGaTZBZksKPiAKPiBTZWVtcyB0aGVyZSBoYXMgYmVlbiBzb21lIHJlZmFjdG9y
aW5nIGZvciBqdXN0IHRoaXMga2luZCBvZiBjb25uZWN0aW9uIGluIDUuMz8KPiAKPiBJcyB0aGVy
ZSBwZXJoYXBzIGFuZCBpc3N1ZSBzaW5jZSBmb3IgdGhpcyBzY2VuYXJpbyBvciBhcmUgb3RoZXIg
Cj4gY29tcG9uZW50cyBhdCBmYXVsdCBwZXJoYXBzIChBQ1BJIC8gbXV0dGVyKT8KPiAKPiBUaGFu
a3MhCj4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
