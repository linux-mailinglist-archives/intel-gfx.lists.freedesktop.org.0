Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 69DF61C42DE
	for <lists+intel-gfx@lfdr.de>; Mon,  4 May 2020 19:33:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 33A9D6E44F;
	Mon,  4 May 2020 17:32:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 476 seconds by postgrey-1.36 at gabe;
 Mon, 04 May 2020 17:11:49 UTC
Received: from mout.web.de (mout.web.de [217.72.192.78])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A19AA6E434
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 May 2020 17:11:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=dbaedf251592; t=1588612308;
 bh=9yu6Koqp5kh2GqpJE2jIEtvtR3k1ocsgVchyI/5xi/0=;
 h=X-UI-Sender-Class:To:Cc:Subject:From:Date;
 b=U2RZDgZ1AoKfdPCNDGpI+Pvn2r+QA+L86VmJIV8JsYiIWEUrG8njOtaLN11NvOqh7
 tScRl6YnS0DCKT8e/O1Fb+5OX0KsfP+uLuDWqdzNmoCOrcKqUARxlIorQxSlA0P6ty
 FBgSLBwyNw82X8iJeAhL3VdesGM18WgsTGnDEAoc=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from [192.168.1.2] ([93.133.152.69]) by smtp.web.de (mrweb102
 [213.165.67.124]) with ESMTPSA (Nemesis) id 0LylnX-1j2u3l1mTv-01644E; Mon, 04
 May 2020 18:58:06 +0200
To: "Gustavo A. R. Silva" <gustavo@embeddedor.com>,
 dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
From: Markus Elfring <Markus.Elfring@web.de>
Autocrypt: addr=Markus.Elfring@web.de; prefer-encrypt=mutual; keydata=
 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 FEE=
Message-ID: <dfe752dc-6833-2b08-7e7c-6c52ffc81626@web.de>
Date: Mon, 4 May 2020 18:58:03 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
Content-Language: en-GB
X-Provags-ID: V03:K1:V7ZLoki0zw30xXuJHbKuYRHN/r2pN25QK+eWkWFJY1gkCecft4S
 jirT2hs4ZPfMjaM0OmDtx4LX5iOHPotiZWDC1rEKehRp8iFDK5aw7gN5aQT9kI6oz3fkZ8g
 HsLybDzSuEQhHVVEd/YXO0BKC7XPPphK1bll8ql10XO0VYUfM9bSPjIRI/wAouoAdTZss8h
 M0QbR9dLi0VoQEoijvv9A==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:Jp37BxrOYvg=:ck5ujJsWYOGfLgUi+R/ieF
 T+knNl0dtvlOKIG/3gwaj6XgKfZPoZZYIthDfLFgCI9t8HM5fBHnkILdK1DFiUKfMn6NPUlt6
 wbUmthEK52ySM8yrsLdLeg6whneilusQ1Qfig0bfPZOhtPXAyvK+T3Pr7ZLO32/7KPmn7Cmnk
 5+e7NVXsUy+krvEzr/W4sHr+RfSXOjJ2NLscI1g+CDTLkVo/sC+VlMk/SHJHdsAFk1jC3tOEf
 HJPTBbDNsgDWgqTxlifOrIZZo3X1mxtfR3SsNFbxXK/SEtjJKBdUidzNTtiSDmFAPoQymYQT6
 G9ZfbDHouhauoGQUne+JaJAUum2GyOOqD+mWuxDScBRqg3eNCsz6559IcRvpxXJNvtMkLDKIZ
 mxKNNrUoGmR9JL4mWE3j2NGP7a04+0RRJnipbDdOIvWi+17F+j8V5TKAUrUcSNPEPXAvxKnrq
 hrVkxb1Qd4k8pjU2//bGv+aRQruLIMBeJ9ahMabjzFnp0mE11Il/D9ltjR+mvsy75P2XUP47e
 P6jEROPdM0XayFg1wJ8JyKzHKv6SUi5qDadLMuq8DOWclCimt4xxBciqqlJA7TTBUp/yYkrmf
 RKxj/mtokhTwEg9eq2zEusZqp6wpzXIpxg/33QkDddukHmGlOdHf4JRtVgPmBRjMx6M4jEZn2
 mdFgbJ7XNQj7KuXQy9z2jfW0uxq+zwP8nimQXapv8j+Ig7JkzuqZi79xZlseWBLnGz9VwJfVR
 5ZSMk42W/Kav18ruA5j8ybsHSQFr104xBN4niiwIPSY72PUrA19tUnc6pkl7l8t/JyzMY++E5
 GJom3t+kPTHWn19ckldv5WsSoDs/8qWnF2+R9S74JGu7046aUU0+tYIbAzGko8rajLVpGQUEz
 gMiq3K0PYd9Kwoz14en6Z1Tel1FzePUNUEYfmuxK5xhJ3MZz0cIAedqgWUkQicZi1MxnNOEJx
 ubi5y/C41thLR4jo2/h/6z3bJI/Ej0yOiXdyvWy4T/B3jl16/h4LKMc7DeTDiCSf8+f0qp+2H
 afvWbmZbJS1s/+oxNYXzgTIkLtCRB9N0B0nmUXYpqcAUyc3wZG0XRMeEttPYJSTwTtdFZ1LsV
 I3xB2XJn49ovIjKWJ9z5OqnyZxxuQzu5j0IMwGGTcNDl+y+xkBKa0ThZZIc1kVa+dW9Bya5R9
 qzholznlyxfu6NWiJrQAyPVnTebfgDoyqMSZaDw7NegjG+KALr6riZySd4i7D3OuMADQI1qCe
 BgqcClNEPHs7gOZZk
X-Mailman-Approved-At: Mon, 04 May 2020 17:32:53 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gem: Fix inconsistent IS_ERR and
 PTR_ERR
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
Cc: David Airlie <airlied@linux.ie>, kernel-janitors@vger.kernel.org,
 linux-kernel@vger.kernel.org, Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

4oCmCj4gVGhlIHByb3BlciBwb2ludGVyIHRvIGJlIHBhc3NlZCBhcyBhcmd1bWVudCBpcyBjZS4K
Pgo+IFRoaXMgYnVnIHdhcyBkZXRlY3RlZCB3aXRoIHRoZSBoZWxwIG9mIENvY2NpbmVsbGUuCgpN
eSBzb2Z0d2FyZSBkZXZlbG9wbWVudCBhdHRlbnRpb24gd2FzIGNhdWdodCBhbHNvIGJ5IHlvdXIg
Y29tbWl0IG1lc3NhZ2UuCgoK4oCmCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5
MTVfZ2VtX2V4ZWNidWZmZXIuYwo+IEBAIC0xMzI1LDcgKzEzMjUsNyBAQCBzdGF0aWMgaW50IF9f
cmVsb2NfZ3B1X2FsbG9jKHN0cnVjdCBpOTE1X2V4ZWNidWZmZXIgKmViLAo+Cj4gIAkJY2UgPSBp
bnRlbF9jb250ZXh0X2NyZWF0ZShlbmdpbmUpOwo+ICAJCWlmIChJU19FUlIoY2UpKSB7Cj4gLQkJ
CWVyciA9IFBUUl9FUlIocnEpOwo+ICsJCQllcnIgPSBQVFJfRVJSKGNlKTsKPiAgCQkJZ290byBl
cnJfdW5waW47Cj4gIAkJfQo+CgpBcmUgeW91IGxvb2tpbmcgZm9yIGFueSBtb3JlIHF1ZXN0aW9u
YWJsZSBpZGVudGlmaWVyIChvciBleHByZXNzaW9uKSBjb21iaW5hdGlvbnMKYWxzbyBhdCBvdGhl
ciBwbGFjZXMgYnkgdGhlIG1lYW5zIG9mIGFkdmFuY2VkIHNvdXJjZSBjb2RlIGFuYWx5c2lzPwoK
UmVnYXJkcywKTWFya3VzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LWdmeAo=
