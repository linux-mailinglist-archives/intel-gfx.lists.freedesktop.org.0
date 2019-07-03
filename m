Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 447605E395
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Jul 2019 14:14:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B67BC6E12B;
	Wed,  3 Jul 2019 12:14:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from out3-smtp.messagingengine.com (out3-smtp.messagingengine.com
 [66.111.4.27])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 95C616E12B
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Jul 2019 12:14:23 +0000 (UTC)
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
 by mailout.nyi.internal (Postfix) with ESMTP id 478E22179E;
 Wed,  3 Jul 2019 08:14:19 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute6.internal (MEProxy); Wed, 03 Jul 2019 08:14:19 -0400
X-ME-Sender: <xms:GpwcXVPvp8889cUai2FFPISWj3wR_3Pw58GfC_weFFlK8ft96wDKQA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrfedtgdehtdcutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggujggfsehttdertddtredvnecuhfhrohhmpefirhgvghcu
 mffjuceoghhrvghgsehkrhhorghhrdgtohhmqeenucffohhmrghinhepfhhrvggvuggvsh
 hkthhophdrohhrghdpkhgvrhhnvghlrdhorhhgnecukfhppeekfedrkeeirdekledruddt
 jeenucfrrghrrghmpehmrghilhhfrhhomhepghhrvghgsehkrhhorghhrdgtohhmnecuve
 hluhhsthgvrhfuihiivgeptd
X-ME-Proxy: <xmx:GpwcXd_vC78MOV-wOPpBegh5NxsvxU3bqUZxNSHm_xT3z-vQsMHIJw>
 <xmx:GpwcXfHk6yjr-CJ5EnFFpvIkLNPYjX_vhElcB3Yodia5jGU0yZMlIQ>
 <xmx:GpwcXUgRvyo0DtZbhfqkW5sBFE77EVAwWhJGYUuaVs52yQ-ahEegyg>
 <xmx:G5wcXb98uoqXZ1UPvia4n53Uesej5Q25vBnsufQe-9XZZY1oi8vHwQ>
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 by mail.messagingengine.com (Postfix) with ESMTPA id 5A1448005A;
 Wed,  3 Jul 2019 08:14:18 -0400 (EDT)
Date: Wed, 3 Jul 2019 14:14:16 +0200
From: Greg KH <greg@kroah.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20190703121416.GD7784@kroah.com>
References: <20190702192304.31955-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190702192304.31955-1-lucas.demarchi@intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kroah.com; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm1; bh=vwK6Q8IOXwBUxbpA5K+aNBubtye
 1Pz28M8e0HirqAyk=; b=H+7zuVGkf4MUkzUZujR95wAVCdZHQRH8ixLmehKGFFB
 7a5r/emF6u99EGs/vZ9xFWp9KjbFI+8SmA3zOJSI+n3AJqnfoRfT2ZbOyh/X3pdO
 KnRVgUlqW2F+GVPA0bwVocXiKXsfBZG6KjKSF065frWN42rJ8l7SqfEaMd17wpMq
 hbxC7fkbwxpFLt2By69p3lPL6zgjmUkWNK6x5t9zepdOJX5lHm7KE/Yn+ErG7yzy
 G6seHjzX7iHvmoLl/uhD/rsfXZINitv1dUypNPIXsETzgXBPAp3j/kwV+jcXC65E
 xpgWYGBCGsqxnQe8OYVhc5hrRtqS91otEuGGXD5HYiQ==
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=vwK6Q8
 IOXwBUxbpA5K+aNBubtye1Pz28M8e0HirqAyk=; b=wqFLmTmAy5nLmiu5hlTzM0
 7EmfO5eFZOSc84azwpZwl8uD1qOhmm6NSHlJzkeIH6xE3256hSIKVL2jQYxvwqhi
 QQp5tPb08bxnt+SaL9K+ib0RH7JpAvnaYva+R34Df0MDx7DrC5laB+CFzM63Njta
 ZOV+/f1WVr4eLImVeq+vS58S7MKfC/xVrEu/FpMW1r0W/w3rBOxmi8qTEYcyOvou
 Bi4qyJjAhwWxiExa6EHszzqWTlwD5stt8BoRh5m7YSViO0o3xso1ImOrSbXWPnMD
 D4Fe3n6kL8lYdpFYk7S6iFxLD3kk1ZCOdCgwLvM8UCLby37bQt4FKmDo2jkGAPwQ
 ==
Subject: Re: [Intel-gfx] [PATCH stable-4.9+] drm/i915/dmc: protect against
 reading random memory
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
Cc: intel-gfx@lists.freedesktop.org, stable@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCBKdWwgMDIsIDIwMTkgYXQgMTI6MjM6MDRQTSAtMDcwMCwgTHVjYXMgRGUgTWFyY2hp
IHdyb3RlOgo+IGNvbW1pdCBiYzdiNDg4YjFkMWM3MWRjNGM1MTgyMjA2OTExMTI3YmM2YzQxMGQ2
IHVwc3RyZWFtLgo+IAo+IFdoaWxlIGxvYWRpbmcgdGhlIERNQyBmaXJtd2FyZSB3ZSB3ZXJlIGRv
dWJsZSBjaGVja2luZyB0aGUgaGVhZGVycyBtYWRlCj4gc2Vuc2UsIGJ1dCBpbiBubyBwbGFjZSB3
ZSBjaGVja2VkIHRoYXQgd2Ugd2VyZSBhY3R1YWxseSByZWFkaW5nIG1lbW9yeQo+IHdlIHdlcmUg
c3VwcG9zZWQgdG8uIFRoaXMgY291bGQgYmUgd3JvbmcgaW4gY2FzZSB0aGUgZmlybXdhcmUgZmls
ZSBpcwo+IHRydW5jYXRlZCBvciBtYWxmb3JtZWQuCj4gCj4gQmVmb3JlIHRoaXMgcGF0Y2g6Cj4g
CSMgbHMgLWwgL2xpYi9maXJtd2FyZS9pOTE1L2ljbF9kbWNfdmVyMV8wNy5iaW4KPiAJLXJ3LXIt
LXItLSAxIHJvb3Qgcm9vdCAgMjU3MTYgRmViICAxIDEyOjI2IGljbF9kbWNfdmVyMV8wNy5iaW4K
PiAJIyB0cnVuY2F0ZSAtcyAyNTcwMCAvbGliL2Zpcm13YXJlL2k5MTUvaWNsX2RtY192ZXIxXzA3
LmJpbgo+IAkjIG1vZHByb2JlIGk5MTUKPiAJIyBkbWVzZ3wgZ3JlcCAtaSBkbWMKPiAJW2RybTpp
bnRlbF9jc3JfdWNvZGVfaW5pdCBbaTkxNV1dIExvYWRpbmcgaTkxNS9pY2xfZG1jX3ZlcjFfMDcu
YmluCj4gCVtkcm1dIEZpbmlzaGVkIGxvYWRpbmcgRE1DIGZpcm13YXJlIGk5MTUvaWNsX2RtY192
ZXIxXzA3LmJpbiAodjEuNykKPiAKPiBpLmUuIGl0IGxvYWRzIHJhbmRvbSBkYXRhLiBOb3cgaXQg
ZmFpbHMgbGlrZSBiZWxvdzoKPiAJW2RybTppbnRlbF9jc3JfdWNvZGVfaW5pdCBbaTkxNV1dIExv
YWRpbmcgaTkxNS9pY2xfZG1jX3ZlcjFfMDcuYmluCj4gCVtkcm06Y3NyX2xvYWRfd29ya19mbiBb
aTkxNV1dICpFUlJPUiogVHJ1bmNhdGVkIERNQyBmaXJtd2FyZSwgcmVqZWN0aW5nLgo+IAlpOTE1
IDAwMDA6MDA6MDIuMDogRmFpbGVkIHRvIGxvYWQgRE1DIGZpcm13YXJlIGk5MTUvaWNsX2RtY192
ZXIxXzA3LmJpbi4gRGlzYWJsaW5nIHJ1bnRpbWUgcG93ZXIgbWFuYWdlbWVudC4KPiAJaTkxNSAw
MDAwOjAwOjAyLjA6IERNQyBmaXJtd2FyZSBob21lcGFnZTogaHR0cHM6Ly9naXQua2VybmVsLm9y
Zy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvZmlybXdhcmUvbGludXgtZmlybXdhcmUuZ2l0L3Ry
ZWUvaTkxNQo+IAo+IEJlZm9yZSByZWFkaW5nIGFueSBwYXJ0IG9mIHRoZSBmaXJtd2FyZSBmaWxl
LCB2YWxpZGF0ZSB0aGUgaW5wdXQgZmlyc3QuCj4gCj4gRml4ZXM6IGViODA1NjIzZDhiMSAoImRy
bS9pOTE1L3NrbDogQWRkIHN1cHBvcnQgdG8gbG9hZCBTS0wgQ1NSIGZpcm13YXJlLiIpCj4gU2ln
bmVkLW9mZi1ieTogTHVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+Cj4g
UmV2aWV3ZWQtYnk6IFJvZHJpZ28gVml2aSA8cm9kcmlnby52aXZpQGludGVsLmNvbT4KPiBMaW5r
OiBodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvcGF0Y2gvbXNnaWQvMjAxOTA2MDUy
MzU1MzUuMTc3OTEtMS1sdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20KPiAoY2hlcnJ5IHBpY2tlZCBm
cm9tIGNvbW1pdCBiYzdiNDg4YjFkMWM3MWRjNGM1MTgyMjA2OTExMTI3YmM2YzQxMGQ2KQo+IFNp
Z25lZC1vZmYtYnk6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+Cj4gWyBMdWNh
czogYmFja3BvcnRlZCB0byA0LjkrIGFkanVzdGluZyB0aGUgY29udGV4dCBdCj4gQ2M6IHN0YWJs
ZUB2Z2VyLmtlcm5lbC5vcmcgIyB2NC45KwoKV2hhdCBhYm91dCBhIDQuMTQueSBhbmQgNC4xOS55
IGJhY2twb3J0IGFzIHdlbGw/ICAgSSBjYW4ndCB0YWtlIHRoaXMKd2l0aG91dCB0aG9zZSBhcyB3
ZSBkbyBub3Qgd2FudCBwZW9wbGUgdG8gdXBncmFkZSBhbmQgaGF2ZSBhIHJlZ3Jlc3Npb24uCgp0
aGFua3MsCgpncmVnIGstaApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZng=
