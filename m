Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 137A212CACC
	for <lists+intel-gfx@lfdr.de>; Sun, 29 Dec 2019 21:43:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2458289BF4;
	Sun, 29 Dec 2019 20:43:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 472 seconds by postgrey-1.36 at gabe;
 Fri, 27 Dec 2019 09:21:11 UTC
Received: from out4-smtp.messagingengine.com (out4-smtp.messagingengine.com
 [66.111.4.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 83BB06E0EB
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Dec 2019 09:21:11 +0000 (UTC)
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.nyi.internal (Postfix) with ESMTP id 97C9A21D28;
 Fri, 27 Dec 2019 04:13:17 -0500 (EST)
Received: from imap27 ([10.202.2.77])
 by compute3.internal (MEProxy); Fri, 27 Dec 2019 04:13:17 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mxxn.io; h=
 mime-version:message-id:date:from:to:subject:content-type
 :content-transfer-encoding; s=fm1; bh=S13RiIk6lvPVeQvERswf1BC5Nt
 34Z03eyJJOAROYA4E=; b=NS3xIN8jQWKxNLrE+W3Kvc+/wgjniL5avpe/tcmFN3
 NPmS0dtu4Wqbzcycmnkp5FpC1oZfMIcRf4yMqghaCSbvS9oEPVjoR4VGbgadcPrN
 Lru4UC+8OnFhAJv1dXcGrVF+fJl1zDLvtWvmom7ILtmjfY1PJ8bgBPo8qtOoTKM3
 xKO9OyPrnhbMGhTDCvnrR05d4aaEl+PBRXeDArHdZelv68A+ayqv0sGvck7Ezytx
 rgTsqbW23XzkdG4fIh3M/bJGStJA9Apq5TfOHCfdfD7SzqRurjOZ0I6G4RxTg06a
 s6c6Ru7WI5lBUPa05QlzhU6bwc8M37bvLxu9H32a+olQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=content-transfer-encoding:content-type
 :date:from:message-id:mime-version:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=S13RiI
 k6lvPVeQvERswf1BC5Nt34Z03eyJJOAROYA4E=; b=mIbWDBjiFA1/W+lrfzhnkH
 Hjv/4qCCwICMl9MwhlhJF33T9jH/TRpHVcew7voccmS9KuEvhtecbOq6S/6qpGpU
 E5nCsgqtAPxghBtmoqnE5Uf6Qh+zRgy7rz3LMMFx/V4w4HAK8uVy+6CeToPZUKxA
 q8KdbLn/AOimfX4QI+syyHPS3JcFm+nmvFq9PhORi4C28crpV+/09gUstx3PyhEp
 5TrDK4msYomVmTnUVymVlreNOUEcQo1R7E8fakcN//BxsXAkIK7PoOCybuLHCM2p
 ho7pOkmwcASr74ZmagqpKk/skvTzHnB21bw2esrHwyXwTMBirdYdPEmjWPnnHe/Q
 ==
X-ME-Sender: <xms:K8sFXt6EyJOHIVcGwmGHbnyEnVvKZPMR9xTA8df8mYqzGPKmMbjKGw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrvddvkedgtdduucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefofgggkfffhffvufgtgfesthhqre
 dtreerjeenucfhrhhomhepuehlrgkkpgfjrhgrshhtnhhikhcuoegslhgriiesmhiggihn
 rdhioheqnecuffhomhgrihhnpehfrhgvvgguvghskhhtohhprdhorhhgpdgrrhgthhhlih
 hnuhigrdhorhhgnecurfgrrhgrmhepmhgrihhlfhhrohhmpegslhgriiesmhiggihnrdhi
 ohenucevlhhushhtvghrufhiiigvpedt
X-ME-Proxy: <xmx:K8sFXmndtK9ugjIA72Siha3Nq5R2ONdLiRJaOOSt2a98umBoKcZjkg>
 <xmx:K8sFXrWTLEYyVfThVihfAFXosfO8M-xcF9vJqzM0vmI60FuIb12TxA>
 <xmx:K8sFXq9CeFzbuJfDkbiKHlxXOXYrU9Wmn4n8gWc-DsIF0fZCMB3CEw>
 <xmx:LcsFXvDj9OT6Uz6Th3Kl13yy8xHAELoJgocDXKhWm77Wuz_ZIwLJEQ>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id D96F3D2009F; Fri, 27 Dec 2019 04:13:15 -0500 (EST)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.1.7-694-gd5bab98-fmstable-20191218v1
Mime-Version: 1.0
Message-Id: <27deab96-4008-44bc-82ea-edc16b837b31@www.fastmail.com>
Date: Fri, 27 Dec 2019 18:12:54 +0900
From: =?UTF-8?Q?Bla=C5=BE_Hrastnik?= <blaz@mxxn.io>
To: kai.vehmanen@linux.intel.com, intel-gfx@lists.freedesktop.org
X-Mailman-Approved-At: Sun, 29 Dec 2019 20:43:52 +0000
Subject: [Intel-gfx] [bug] i915 flickering display after some of the 5.5rc3
 patches
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGkhIEknbSB1c2luZyBhIFN1cmZhY2UgTGFwdG9wIDMgKEludGVsIHZlcnNpb24sIGk3LTEwNjVH
Nykgd2hpY2ggaXMgcnVubmluZyB0aGUgaTkxNSBkcml2ZXIuIEkgaGF2ZSBhIHNjcmVlbiBmbGlj
a2VyIGlzc3VlIGluIDUuNXJjIHRoYXQgSSB3YXNuJ3QgYWJsZSB0byB0cmFjayBkb3duIGluaXRp
YWxseSBiZWNhdXNlIG9mIHRoZSBzaGVlciB2b2x1bWUgb2YgY29tbWl0cyB0byBiaXNlY3QuIEx1
Y2tpbHksIEkgY2FuIHJlcHJvZHVjZSB0aGUgc2FtZSBpc3N1ZSBvbiA1LjQuNiBub3cgYXMgd2Vs
bCBhZnRlciB0aGUgbGF0ZXN0IHJvdW5kIG9mIEFyY2ggTGludXggc3BlY2lmaWMgcGF0Y2hlcyAo
dXBncmFkaW5nIGFyY2gxIC0+IGFyY2gzIHdpbGwgcHJvZHVjZSB0aGUgYnVnKS4KCmh0dHBzOi8v
Z2l0LmFyY2hsaW51eC5vcmcvbGludXguZ2l0L2xvZy8/aD12NS40LjYtYXJjaDMKCi0gRHVyaW5n
IGJvb3QsIHRoZSBzY3JlZW4gd2lsbCBmbGFzaCB0byBibGFjayBmb3IgYSBzZWNvbmQsIHRoZW4g
YmFjayBvbiwgdHdvIG9yIHRocmVlIHRpbWVzLgotIEFmdGVyIHRoYXQsIHdoZW4gc3RhcnRpbmcg
YSB3YXlsYW5kIHNlc3Npb24gdGhlIHNhbWUgdGhpbmcgaGFwcGVucyAoYWxzbyB0d2ljZSkuIAot
ICBJZiBJIHBsdWcgaW4gYSBwb3dlciBjYWJsZSwgdGhlIHNhbWUgdGhpbmcgaGFwcGVucyAoYWdh
aW4gdHdpY2UpLiBJdCBkb2Vzbid0IGhhcHBlbiBvbiB1bnBsdWcgdGhvdWdoLgoKQWZ0ZXIgdGhl
IGluaXRpYWwgZmxpY2tlciwgaXQncyBjb21wbGV0ZWx5IGZpbmUgdW5sZXNzIEkgcGx1ZyBhIHBv
d2VyIGNhYmxlIGluLgoKSSBtYW5hZ2VkIHRvIGJpc2VjdCB0aGUgaXNzdWUgZG93biB0byAyLTMg
cGF0Y2hlcyBLYWkgVmVobWFuZW4gbWFkZSByZWdhcmRpbmcgaW50ZWxfYXVkaW86CgpJdCB3b3Jr
cyBvbiBjb21taXQgIng4Ni9pbnRlbDogRGlzYWJsZSBIUEVUIG9uIEludGVsIEljZSBMYWtlIHBs
YXRmb3JtcyIuIEJ1dCBpdCBkb2Vzbid0IHdvcmsgb24gImRybS9pOTE1OiBleHRlbmQgYXVkaW8g
Q0RDTEs+PTIqQkNMSyBjb25zdHJhaW50IHRvIG1vcmUgcGxhdGZvcm1zIgoKU28gb25lIG9mIHRo
ZXNlIHRocmVlIHBhdGNoZXMgY2F1c2UgaXQ6CgotIGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNr
dG9wLm9yZy9wYXRjaC8zMzE5NTcvCi0gaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3Jn
L3BhdGNoLzMzNDExMC8KLSBodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvcGF0Y2gv
MzM0MTExLwoKKEkgdGhpbmsgaXQncyBub3QgMzM0MTEwLCBiZWNhdXNlIEkgaW5pdGlhbGx5IHRl
c3RlZCBhIGJ1aWxkIHdpdGgganVzdCB0aGF0IGNvbW1pdCByZXZlcnRlZCkuCgpMZXQgbWUga25v
dyBpZiB5b3UgbmVlZCBhbnkgc3BlY2lmaWMgZGVidWcgaW5mb3JtYXRpb24gdG8gZGlhZ25vc2Ug
ZnVydGhlci4KCi0tIEJsYcW+Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeAo=
