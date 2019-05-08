Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AAD9174E7
	for <lists+intel-gfx@lfdr.de>; Wed,  8 May 2019 11:19:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 891968901F;
	Wed,  8 May 2019 09:19:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from eu-smtp-delivery-151.mimecast.com
 (eu-smtp-delivery-151.mimecast.com [207.82.80.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 84AFD8922F
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 May 2019 09:19:55 +0000 (UTC)
Received: from AcuMS.aculab.com (156.67.243.126 [156.67.243.126]) (Using
 TLS) by relay.mimecast.com with ESMTP id
 uk-mta-20-fr8XoZJNPVSqTqULhvI6mg-1; Wed, 08 May 2019 10:19:52 +0100
Received: from AcuMS.Aculab.com (fd9f:af1c:a25b::d117) by AcuMS.aculab.com
 (fd9f:af1c:a25b::d117) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Wed,
 8 May 2019 10:19:51 +0100
Received: from AcuMS.Aculab.com ([fe80::43c:695e:880f:8750]) by
 AcuMS.aculab.com ([fe80::43c:695e:880f:8750%12]) with mapi id 15.00.1347.000; 
 Wed, 8 May 2019 10:19:51 +0100
From: David Laight <David.Laight@ACULAB.COM>
To: 'Alastair D'Silva' <alastair@au1.ibm.com>, "alastair@d-silva.org"
 <alastair@d-silva.org>
Thread-Topic: [PATCH v2 4/7] lib/hexdump.c: Replace ascii bool in
 hex_dump_to_buffer with flags
Thread-Index: AQHVBWwP4v5z/92cRUaSHokPgMaM4aZg8Maw
Date: Wed, 8 May 2019 09:19:51 +0000
Message-ID: <c98a499a4e824bcd824d5ad53d037c67@AcuMS.aculab.com>
References: <20190508070148.23130-1-alastair@au1.ibm.com>
 <20190508070148.23130-5-alastair@au1.ibm.com>
In-Reply-To: <20190508070148.23130-5-alastair@au1.ibm.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.202.205.107]
MIME-Version: 1.0
X-MC-Unique: fr8XoZJNPVSqTqULhvI6mg-1
X-Mimecast-Spam-Score: 0
Subject: Re: [Intel-gfx] [PATCH v2 4/7] lib/hexdump.c: Replace ascii bool in
 hex_dump_to_buffer with flags
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
Cc: "linux-fbdev@vger.kernel.org" <linux-fbdev@vger.kernel.org>,
 Stanislaw Gruszka <sgruszka@redhat.com>, Petr Mladek <pmladek@suse.com>,
 David Airlie <airlied@linux.ie>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 "linux-scsi@vger.kernel.org" <linux-scsi@vger.kernel.org>,
 Jassi Brar <jassisinghbrar@gmail.com>,
 "ath10k@lists.infradead.org" <ath10k@lists.infradead.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, Dan
 Carpenter <dan.carpenter@oracle.com>, Jose
 Abreu <Jose.Abreu@synopsys.com>, Tom Lendacky <thomas.lendacky@amd.com>,
 "James E.J. Bottomley" <jejb@linux.ibm.com>,
 "linux-fsdevel@vger.kernel.org" <linux-fsdevel@vger.kernel.org>,
 Steven Rostedt <rostedt@goodmis.org>, Kalle Valo <kvalo@codeaurora.org>,
 Karsten Keil <isdn@linux-pingi.de>,
 "Martin K. Petersen" <martin.petersen@oracle.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Sergey Senozhatsky <sergey.senozhatsky@gmail.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 "David S. Miller" <davem@davemloft.net>,
 Alexander Viro <viro@zeniv.linux.org.uk>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogQWxhc3RhaXIgRCdTaWx2YQo+IFNlbnQ6IDA4IE1heSAyMDE5IDA4OjAyCj4gVG86IGFs
YXN0YWlyQGQtc2lsdmEub3JnCi4uLgo+IC0tLSBhL2luY2x1ZGUvbGludXgvcHJpbnRrLmgKPiAr
KysgYi9pbmNsdWRlL2xpbnV4L3ByaW50ay5oCj4gQEAgLTQ4MCwxMyArNDgwLDEzIEBAIGVudW0g
ewo+ICAJRFVNUF9QUkVGSVhfT0ZGU0VUCj4gIH07Cj4gCj4gLWV4dGVybiBpbnQgaGV4X2R1bXBf
dG9fYnVmZmVyKGNvbnN0IHZvaWQgKmJ1Ziwgc2l6ZV90IGxlbiwgaW50IHJvd3NpemUsCj4gLQkJ
CSAgICAgIGludCBncm91cHNpemUsIGNoYXIgKmxpbmVidWYsIHNpemVfdCBsaW5lYnVmbGVuLAo+
IC0JCQkgICAgICBib29sIGFzY2lpKTsKPiAtCj4gICNkZWZpbmUgSEVYRFVNUF9BU0NJSQkJCSgx
IDw8IDApCj4gICNkZWZpbmUgSEVYRFVNUF9TVVBQUkVTU19SRVBFQVRFRAkoMSA8PCAxKQoKVGhl
c2Ugb3VnaHQgdG8gYmUgQklUKDApIGFuZCBCSVQoMSkKCj4gK2V4dGVybiBpbnQgaGV4X2R1bXBf
dG9fYnVmZmVyKGNvbnN0IHZvaWQgKmJ1Ziwgc2l6ZV90IGxlbiwgaW50IHJvd3NpemUsCj4gKwkJ
CSAgICAgIGludCBncm91cHNpemUsIGNoYXIgKmxpbmVidWYsIHNpemVfdCBsaW5lYnVmbGVuLAo+
ICsJCQkgICAgICB1NjQgZmxhZ3MpOwoKV2h5ICd1NjQgZmxhZ3MnID8KSG93IG1hbnkgZmxhZ3Mg
ZG8geW91IGVudmlzYWdlID8/CllvdXIgSEVYRFVNUF9BU0NJSSAoZXRjKSBmbGFncyBhcmUgY3Vy
cmVudGx5IHNpZ25lZCB2YWx1ZXMgYW5kIG1pZ2h0CmdldCBzaWduIGV4dGVuZGVkIGNhdXNpbmcg
Z3JpZWYuCid1bnNpZ25lZCBpbnQgZmxhZ3MnIGlzIHByb2JhYmx5IHN1ZmZpY2llbnQuCgpJJ3Zl
IG5vdCByZWFsbHkgbG9va2VkIGF0IHRoZSBjb2RlLCBpdCBzZWVtcyBPVFQgaW4gcGxhY2VzIHRo
b3VnaC4KCklmIHNvbWVvbmUgY29waWVzIGl0IHNvbWV3aGVyZSB3aGVyZSB0aGUgcGVyZm9ybWFu
Y2UgbWF0dGVycwooSSd2ZSB1c2VyIHNwYWNlIGNvZGUgd2hpY2ggaXMgZG9taW5hdGVkIGJ5IGl0
cyB0cmFjaW5nISkKdGhlbiB5b3UgZG9uJ3Qgd2FudCBhbGwgdGhlIGZ1bmN0aW9uIGNhbGxzIGFu
ZCBjb25kaXRpb25hbHMKZXZlbiBpZiB5b3Ugd2FudCBzb21lIG9mIHRoZSBmdW5jdGlvbmFsaXR5
LgoKCURhdmlkCgotClJlZ2lzdGVyZWQgQWRkcmVzcyBMYWtlc2lkZSwgQnJhbWxleSBSb2FkLCBN
b3VudCBGYXJtLCBNaWx0b24gS2V5bmVzLCBNSzEgMVBULCBVSwpSZWdpc3RyYXRpb24gTm86IDEz
OTczODYgKFdhbGVzKQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4
