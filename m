Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B051C29518E
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Oct 2020 19:31:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0787D6EE3E;
	Wed, 21 Oct 2020 17:31:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 14EB76EB0C
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Oct 2020 12:53:05 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.com; s=susede1;
 t=1603284784;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=YW4GeGaaq+R5j4BAU33aDFRNJQJgkt5cTgR3nwU6Kfk=;
 b=OEqS13xgP1xXGjTUMzbe2fkZ/2Iio2FsHeiJFz4rLyhRrrh5qUESVn1RyzT9eHvgC/xWCA
 XcXw5frSoysAC2VTooKZTpEcXbPXp+3NdlYSc4vF5Iygr5KSgpZykL7dtaeiDFYRw5riEU
 U+Z+RJboJaB1kQHNKEX98jVaJgE6H2o=
Received: from relay2.suse.de (unknown [195.135.221.27])
 by mx2.suse.de (Postfix) with ESMTP id 1A251B007;
 Wed, 21 Oct 2020 12:53:04 +0000 (UTC)
To: Jason Andryuk <jandryuk@gmail.com>
References: <CAKf6xpv-LRCuo-qHHWMuukYtvJiR-i+-YhLUOZeqoAFd-=swEQ@mail.gmail.com>
 <1a3b90f4-564e-84d3-fd6a-3454e8753579@citrix.com>
 <20201015113109.GA68032@Air-de-Roger>
 <CAKf6xpsJYT7VCeaf6TxPNK1QD+3U9E8ST7E+mWtfDjw0k9L9dA@mail.gmail.com>
 <CAKf6xps1q9zMBeFg7C7ZhD-JcwQ6EG6+bYvvA9QT8PzzxKqMNg@mail.gmail.com>
 <20201021095809.o53b6hpvjl2lbqsi@Air-de-Roger>
 <CAKf6xpuTE4gBNe4YXPYh_hAMLaJduDuKL5_6aC4H=y6DRxaxvw@mail.gmail.com>
From: Jan Beulich <jbeulich@suse.com>
Message-ID: <a4dd7778-9bd4-00c1-3056-96d435b70d70@suse.com>
Date: Wed, 21 Oct 2020 14:52:59 +0200
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.1
MIME-Version: 1.0
In-Reply-To: <CAKf6xpuTE4gBNe4YXPYh_hAMLaJduDuKL5_6aC4H=y6DRxaxvw@mail.gmail.com>
Content-Language: en-US
X-Mailman-Approved-At: Wed, 21 Oct 2020 17:31:41 +0000
Subject: Re: [Intel-gfx] i915 dma faults on Xen
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
Cc: Andrew Cooper <andrew.cooper3@citrix.com>, intel-gfx@lists.freedesktop.org,
 xen-devel <xen-devel@lists.xenproject.org>,
 =?UTF-8?Q?Roger_Pau_Monn=c3=a9?= <roger.pau@citrix.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gMjEuMTAuMjAyMCAxNDo0NSwgSmFzb24gQW5kcnl1ayB3cm90ZToKPiBPbiBXZWQsIE9jdCAy
MSwgMjAyMCBhdCA1OjU4IEFNIFJvZ2VyIFBhdSBNb25uw6kgPHJvZ2VyLnBhdUBjaXRyaXguY29t
PiB3cm90ZToKPj4gSG0sIGl0J3MgaGFyZCB0byB0ZWxsIHdoYXQncyBnb2luZyBvbi4gTXkgbGlt
aXRlZCBleHBlcmllbmNlIHdpdGgKPj4gSU9NTVUgZmF1bHRzIG9uIGJyb2tlbiBzeXN0ZW1zIHRo
ZXJlJ3MgYSBzbWFsbCByYW5nZSB0aGF0IGluaXRpYWxseQo+PiB0cmlnZ2VycyB0aG9zZSwgYW5k
IHRoZW4gdGhlIGRldmljZSBnb2VzIHdvbmt5IGFuZCBzdGFydHMgYWNjZXNzaW5nIGEKPj4gd2hv
bGUgbG9hZCBvZiBpbnZhbGlkIGFkZHJlc3Nlcy4KPj4KPj4gWW91IGNvdWxkIHRyeSBhZGRpbmcg
dGhvc2UgbWFudWFsbHkgdXNpbmcgdGhlIHJtcnIgWGVuIGNvbW1hbmQgbGluZQo+PiBvcHRpb24g
WzBdLCBtYXliZSB5b3UgY2FuIGZpZ3VyZSBvdXQgd2hpY2ggcmFuZ2UocykgYXJlIG1pc3Npbmc/
Cj4gCj4gVGhleSBzZWVtIHRvIGNoYW5nZSwgc28gaXQncyBoYXJkIHRvIGtub3cuICBXb3VsZCB0
aGVyZSBiZSBoYXJtIGluCj4gYWRkaW5nIG9uZSB0byBjb3ZlciB0aGUgZW5kIG9mIFJBTSAoIDB4
MDQsN2M4MCwwMDAwICkgdG8gKAo+IDB4ZmYsZmZmZixmZmZmICk/ICBNYXliZSB0aGF0IHdvdWxk
IGp1c3QgcXVpZXQgdGhlIHBvaW50bGVzcyBmYXVsdHMKPiB3aGlsZSBsZWF2aW5nIHRoZSBJT01N
VSBlbmFibGVkPwoKV2hpbGUgdGhleSBtYXkgcXVpZXRlbiB0aGUgZmF1bHRzLCBJIGRvbid0IHRo
aW5rIHRob3NlIGZhdWx0cyBhcmUKcG9pbnRsZXNzLiBUaGV5IGluZGljYXRlIHNvbWUgcHJvYmxl
bSB3aXRoIHRoZSBzb2Z0d2FyZSAobGVzcwpsaWtlbHkgdGhlIGhhcmR3YXJlLCBwb3NzaWJseSB0
aGUgZmlybXdhcmUpIHRoYXQgeW91J3JlIHVzaW5nLgpBbHNvIHRoZXJlJ3MgdGhlIHF1ZXN0aW9u
IG9mIHdoYXQgdGhlIG92ZXJhbGwgYmVoYXZpb3IgaXMgZ29pbmcKdG8gYmUgd2hlbiBkZXZpY2Vz
IGFyZSBwZXJtaXR0ZWQgdG8gYWNjZXNzIHVucG9wdWxhdGVkIGFkZHJlc3MKcmFuZ2VzLiBJIGFz
c3VtZSB5b3UgZGlkIGNoZWNrIGFscmVhZHkgdGhhdCBubyBkZXZpY2VzIGhhdmUgdGhlaXIKQkFS
cyBwbGFjZWQgaW4gdGhhdCByYW5nZT8KCkphbgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZngK
