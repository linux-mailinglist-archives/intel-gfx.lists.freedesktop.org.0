Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B2B4816FA94
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Feb 2020 10:21:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 656C889F6B;
	Wed, 26 Feb 2020 09:21:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mailout1.w1.samsung.com (mailout1.w1.samsung.com
 [210.118.77.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CDF1789ED3
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Feb 2020 09:21:21 +0000 (UTC)
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200226092119euoutp0123e108b79588eeef4f9b2694c10eea69~26VcrjlkF0328403284euoutp016
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Feb 2020 09:21:19 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200226092119euoutp0123e108b79588eeef4f9b2694c10eea69~26VcrjlkF0328403284euoutp016
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1582708879;
 bh=HXIgWPkO5pJTemtAuqyAdhDqSuezDVnbS7khou6Oxmg=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=G/ArFor4OHmpe7yYHGdMBuJam8KAszUwaGhobEfzj9eExOB1kZ4/ii7g4h77JGV8f
 K3eRgzFE4bnWrCkk/Dt3jlIlP0+oTDSycPlUpmU2ccwdO3xDdznovZYzvh84R0uLXd
 b3Kvy7sLkyDKRvfuJYulwxV27EyJ6iAPybJRxJpw=
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200226092119eucas1p100ca059e7368bb9e7e8e979c3a52e01e~26VcepGEe2587825878eucas1p1C;
 Wed, 26 Feb 2020 09:21:19 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id E3.4E.61286.F88365E5; Wed, 26
 Feb 2020 09:21:19 +0000 (GMT)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200226092119eucas1p173627f7df7ecf63a49e9332c55eb99a4~26VcHgMUH2591725917eucas1p1z;
 Wed, 26 Feb 2020 09:21:19 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200226092119eusmtrp12ada28f65ba024d154fb6bba2356fe63~26VcG4ELl1466614666eusmtrp1Q;
 Wed, 26 Feb 2020 09:21:19 +0000 (GMT)
X-AuditID: cbfec7f2-ef1ff7000001ef66-6b-5e56388fc349
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id AA.23.07950.E88365E5; Wed, 26
 Feb 2020 09:21:18 +0000 (GMT)
Received: from [106.120.51.74] (unknown [106.120.51.74]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200226092118eusmtip1f1ca9d13d6d1e7e06e0eb3a659f211e2~26VbsSXsD0954809548eusmtip1s;
 Wed, 26 Feb 2020 09:21:18 +0000 (GMT)
To: Daniel Vetter <daniel.vetter@ffwll.ch>
From: Andrzej Hajda <a.hajda@samsung.com>
Message-ID: <fd3ebf4e-8ba3-b2a5-20a4-9dd35f35c244@samsung.com>
Date: Wed, 26 Feb 2020 10:21:17 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <CAKMK7uE+8eQGfV=6t_3vV+L=fOL6zUm5CqSxWf26JNUSL54brg@mail.gmail.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA01SfyyUcRze931f772su70O85ks67b+oKHrl3fLKFo7tlKTZm2pK29YDrvX
 KUoM8+PS0BW5m6LLyJQ6jlhpuw3Jz2JFS1LWENVyp7Eidy/Lf8/neZ7Pj2f7ULjYYOdGxSUk
 s8oEebyEdCCaOxcHvIuYE1E7fta7MFUTYzhT0/sIZ4YtP0gmW99AMrriRowpKLkvYCrMt/D9
 AtnzhUpCpssvt5Ppn01jMkNdASl7UVEvkI1f68KOkicd/KPZ+LgUVukbcMYh1lSRhyfN7r00
 0PoNy0SvtquRPQX0biit1WBq5ECJ6VoE1SMv1wozgo8d3wm+mEeg/m3E1lvKS66TvFCDQDOV
 u1bMITBrWpHV5UTLoGCkV2DFzrQX5K/k2EbhdBMGlV86catA0p7wt3GUtGIhHQCL2kzCigl6
 Gxgnimy8Cx0JpS3LiPc4Qnf5pM1jTx+Djma1jcdpD8g26nAeu8L7ybu2EEC3CaBNk7d290Ho
 HOwjeewEM11NAh67Q4+mkOBxBozX5uB8cz4C4+NWnBf2wYf+pdVmanWDJzS0+fL0ARjTP7Cz
 0kCLYGTOkb9BBDeay3CeFkJ+rph3b4XxPuPaQFeoHrSQxUii3ZBMuyGNdkMa7f+9lYioQ66s
 ilPEsJw0gb3ow8kVnCohxudcosKAVj+pZ7nr11NkeXPWhGgKSTYJp+wjosR28hQuVWFCQOES
 Z+ETyyoljJanprHKxNNKVTzLmdBmipC4Cnfdmz4lpmPkyewFlk1ilesqRtm7ZSJF/FU3/Vvp
 ZG7QFj/dkVARKR0msLLUmbLwQPebIyFXuMN+7bdH0+ra1UF7lgLDX2sWVD4Rx8N8Sv1VIr+2
 /juJkSuzuP6QSRGca2jJ+mp4+GdovrjqvJkJ+7TcPe19mQl2DEKxhebZ9PSQzx5DoTuH3zkZ
 pZr5ieChrAxcFywhuFi51AtXcvJ/bMhCD0UDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrCIsWRmVeSWpSXmKPExsVy+t/xu7p9FmFxBiv3WVksfHiX2WL5mXXM
 Fle+vmezaF68ns1i9oTNTBadE5ewW8z9MpXZgd1j77cFLB6zO2ayeize85LJY9OqTjaP/XPX
 sHvc7z7OFMAWpWdTlF9akqqQkV9cYqsUbWhhpGdoaaFnZGKpZ2hsHmtlZKqkb2eTkpqTWZZa
 pG+XoJdxaG47c8Ebs4rzO18zNTCe0u5i5OSQEDCRmDmxl62LkYtDSGApo8TBzitMEAlxid3z
 3zJD2MISf651QRW9ZpSYcekCG0hCWMBDovPGGXYQW0RAS6LjfwsLSBGzwDYmiZ/3b4EVCQkc
 ZJL41SIFYrMJaEr83XwTLM4rYCfxc1YDC4jNIqAqsfVhP1hcVCBC4vHEdkaIGkGJkzOfgNVw
 CgRKHN3WBRZnFlCX+DPvEjOELS/RvHU2lC0ucevJfKYJjEKzkLTPQtIyC0nLLCQtCxhZVjGK
 pJYW56bnFhvpFSfmFpfmpesl5+duYgTG4LZjP7fsYOx6F3yIUYCDUYmH9wVnaJwQa2JZcWXu
 IUYJDmYlEd6NX4FCvCmJlVWpRfnxRaU5qcWHGE2BnpvILCWanA9MD3kl8YamhuYWlobmxubG
 ZhZK4rwdAgdjhATSE0tSs1NTC1KLYPqYODilGhhVTcMfMW+/UxaVVzkh0Sdtx4XTCx8uSbrs
 n3W0+2Gz7LmNa66vkZksF79S/lGb39XX5VsDtAymxGZcvtF614Pz7f8skRh3xr5/QR9iNhnd
 fi7zxkuW28m93nL5TKEfX2xdFZbyL/OOOxzgYLRyZaKdVLBofOSFIq6gyJqJV1YVG8jkLy4t
 +anEUpyRaKjFXFScCAB3T0qx1wIAAA==
X-CMS-MailID: 20200226092119eucas1p173627f7df7ecf63a49e9332c55eb99a4
X-Msg-Generator: CA
X-RootMTR: 20200221210354eucas1p1b9377cb5c64ae9f657191cf7d6c9e92c
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200221210354eucas1p1b9377cb5c64ae9f657191cf7d6c9e92c
References: <20200221210319.2245170-1-daniel.vetter@ffwll.ch>
 <CGME20200221210354eucas1p1b9377cb5c64ae9f657191cf7d6c9e92c@eucas1p1.samsung.com>
 <20200221210319.2245170-4-daniel.vetter@ffwll.ch>
 <c088ce3b-d409-3a66-1f45-72f8ee9d9784@samsung.com>
 <CAKMK7uE+8eQGfV=6t_3vV+L=fOL6zUm5CqSxWf26JNUSL54brg@mail.gmail.com>
Subject: Re: [Intel-gfx] [PATCH 03/51] drm: add managed resources tied to
 drm_device
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
Cc: "Rafael J. Wysocki" <rafael@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gMjUuMDIuMjAyMCAxNjowMywgRGFuaWVsIFZldHRlciB3cm90ZToKPiBPbiBUdWUsIEZlYiAy
NSwgMjAyMCBhdCAxMToyNyBBTSBBbmRyemVqIEhhamRhIDxhLmhhamRhQHNhbXN1bmcuY29tPiB3
cm90ZToKPj4gSGkgRGFuaWVsLAo+Pgo+Pgo+PiBUaGUgcGF0Y2hzZXQgbG9va3MgaW50ZXJlc3Rp
bmcuCj4+Cj4+Cj4+IE9uIDIxLjAyLjIwMjAgMjI6MDIsIERhbmllbCBWZXR0ZXIgd3JvdGU6Cj4+
PiBXZSBoYXZlIGxvdHMgb2YgdGhlc2UuIEFuZCB0aGUgY2xlYW51cCBjb2RlIHRlbmRzIHRvIGJl
IG9mIGR1YmlvdXMKPj4+IHF1YWxpdHkuIFRoZSBiaWdnZXN0IHdyb25nIHBhdHRlcm4gaXMgdGhh
dCBkZXZlbG9wZXJzIHVzZSBkZXZtXywgd2hpY2gKPj4+IHRpZXMgdGhlIHJlbGVhc2UgYWN0aW9u
IHRvIHRoZSB1bmRlcmx5aW5nIHN0cnVjdCBkZXZpY2UsIHdoZXJlYXMKPj4+IGFsbCB0aGUgdXNl
cnNwYWNlIHZpc2libGUgc3R1ZmYgYXR0YWNoZWQgdG8gYSBkcm1fZGV2aWNlIGNhbiBsb25nCj4+
PiBvdXRsaXZlIHRoYXQgb25lIChlLmcuIGFmdGVyIGEgaG90dW5wbHVnIHdoaWxlIHVzZXJzcGFj
ZSBoYXMgb3Blbgo+Pj4gZmlsZXMgYW5kIG1tYXAnZWQgYnVmZmVycykuIEdpdmUgcGVvcGxlIHdo
YXQgdGhleSB3YW50LCBidXQgd2l0aCBtb3JlCj4+PiBjb3JyZWN0bmVzcy4KPj4KPj4gSSBhbSBu
b3QgZmFtaWxpYXIgd2l0aCB0aGlzIHN0dWZmLCBzbyBmb3JnaXZlIG1lIHN0dXBpZCBxdWVzdGlv
bnMuCj4+Cj4+IElzIGl0IGRvY3VtZW50ZWQgaG93IHVhcGkgc2hvdWxkIGJlaGF2ZSBpbiBzdWNo
IGNhc2U/Cj4+Cj4+IEkgZ3Vlc3MgdGhlIGdlbmVyYWwgcnVsZSBpcyB0byByZXR1cm4gZXJyb3Jz
IG9uIG1vc3QgaW9jdGxzIChFTk9ERVYsCj4+IEVJTz8pLCBhbmQgd2FpdCB1bnRpbCB1c2Vyc3Bh
Y2UgcmVsZWFzZXMgZXZlcnl0aGluZywgYXMgdGhlcmUgaXMgbm90Cj4+IG11Y2ggbW9yZSB0byBk
by4KPj4KPj4gSWYgdGhhdCBpcyB0cnVlIHdoYXQgaXMgdGhlIHBvaW50IG9mIGtlZXBpbmcgdGhl
c2Ugc3RydWN0cyBhbnl3YXkgLQo+PiB0cml2aWFsIGZ1bmN0aW9ucyB3aXRoIHNtYWxsIGNvbnRl
eHQgZGF0YSBzaG91bGQgZG8gdGhlIGpvYi4KPj4KPj4gSSBzdXNwZWN0IEkgYW0gbWlzc2luZyBz
b21ldGhpbmcgYnV0IEkgZG8gbm90IGtub3cgd2hhdCA6KQo+IFdlIGNvdWxkIGRvIHRoZSBhYm92
ZSAoYWxzbyBuZWVkcyB1bm1hcHBpbmcgb2YgYWxsIG1tYXBzLCBzbyB1c2Vyc3BhY2UKPiB0aGVu
IGdldHMgU0lHU0VHViBldmVyeXdoZXJlKSBhbmQgd2F0Y2ggdXNlcnNwYWNlIGNyYXNoJmJ1cm4u
Cj4gRXNzZW50aWFsbHkgaWYgdGhlIGtlcm5lbCBjYW4ndCBkbyB0aGlzIHByb3Blcmx5LCB0aGVu
IHRoZXJlJ3Mgbm8gaG9wZQo+IHRoYXQgdXNlcnNwYWNlIHdpbGwgYmUgYW55IGJldHRlci4KCgpX
ZSBkbyBub3Qgd2FudCB0byBjcmFzaCB1c2Vyc3BhY2UuIFdlIGp1c3QgbmVlZCB0byB0ZWxsIHVz
ZXJzcGFjZSB0aGF0CnRoZSBrZXJuZWwgb2JqZWN0cyB1c2Vyc3BhY2UgaGFzIHJlZmVyZW5jZXMg
dG8gYXJlIG5vdCB2YWxpZC4KCkZvciB0aGlzIHR3byBtZWNoYW5pc20gc2hvdWxkIGJlIGVub3Vn
aDoKCi0gc2lnbmFsIGhvdC11bnBsdWcsCgotIHJlcG9ydCBlcnJvciAoRU5PREVWIGZvciBleGFt
cGxlKSBvbiBhbnkgdXNlcnNwYWNlIHJlcXVlc3RzIChpb2N0bHMpCm9uIGludmFsaWQgb2JqZWN0
cy4KCkV4cGVjdGluZyBmcm9tIHVzZXJzcGFjZSBwcm9wZXJseSBoYW5kbGluZyBpb2N0bCBlcnJv
cnMgc2VlbXMgdG8gYmUgZmFpci4KClJlZ2FyZGluZyBtbWFwIEkgYW0gbm90IHN1cmUgaG93IHRv
IHByb3Blcmx5IGhhbmRsZSBkaXNhcHBlYXJpbmcKZGV2aWNlcywgYnV0IHRoaXMgaXMgY29tbW9u
IHByb2JsZW0gcmVnYXJkbGVzcyB3aGljaCBzb2x1dGlvbiB3ZSB1c2UuCgoKPgo+IEhlbmNlIHRo
ZSBpZGVhIGlzIHRoYXQgd2Uga2VlcCBldmVyeXRoaW5nIHVzZXJzcGFjZSBmYWNpbmcgc3RpbGwK
PiBhcm91bmQsIGV4Y2VwdCBpdCBkb2Vzbid0IGRvIG11Y2ggYW55bW9yZS4gU28gY29ubmVjdG9y
cyBzdGlsbCB0aGVyZSwKPiBidXQgdGhleSBsb29rIGRpc2Nvbm5lY3RlZC4KCgpJdCBsb29rcyBs
aWtlIGx5aW5nIHRvIHVzZXJzcGFjZSB0aGF0IHBoeXNpY2FsIGNvbm5lY3RvcnMgc3RpbGwgZXhp
c3RzLgpJZiB3ZSB3YW50IHRvIGxpZSB3ZSBuZWVkIGdvb2QgcmVhc29uIGZvciB0aGF0LiBXaGF0
IGlzIHRoYXQgcmVhc29uPwoKV2h5IG5vdCBqdXN0IHRlbGwgY29ubmVjdG9ycyBhcmUgZ29uZT8K
Cgo+IFVzZXJzcGFjZSBjYW4gdGhlbiBob3BlZnVsbHkgZXZlbnR1YWxseQo+IGdldCBhcm91bmQg
dG8gcHJvY2Vzc2luZyB0aGUgc3lzZnMgaG90dW5wbHVnIGV2ZW50IGFuZCByZW1vdmUgdGhlCj4g
ZGV2aWNlIGZyb20gYWxsIGl0cyBsaXN0LiBTbyB0aGUgbG9uZy10ZXJtIGlkZWEgaXMgdGhhdCBh
IGxvdCBvZiBzdHVmZgo+IGtlZXBzIHdvcmtpbmcsIGV4Y2VwdCB0aGUgZHJpdmVyIGRvZXNuJ3Qg
dGFsayB0byB0aGUgaGFyZHdhcmUgYW55bW9yZS4KPiBBbmQgd2UganVzdCBzaXQgYXJvdW5kIHdh
aXRpbmcgZm9yIHVzZXJzcGFjZSB0byBjbGVhbiB0aGluZ3MgdXAuCgoKV2hhdCBkb2VzIGl0IG1l
YW4gImxvdCBvZiBzdHVmZiBrZWVwcyB3b3JraW5nIj8gV2hhdCBkcm0gZHJpdmVyIGNhbiBkbwp3
aXRob3V0IGhhcmR3YXJlPyBDb3VsZCB5b3Ugc2hvdyBzb21lIGV4YW1wbGVzPwoKCj4KPiBJIGd1
ZXNzIG9uY2Ugd2UgaGF2ZSBhIGJ1bmNoIG9mIHRoZSBwYW5lbC91c2IgZHJpdmVycyBjb252ZXJ0
ZWQgb3Zlcgo+IHdlIGNvdWxkIGluZGVlZCBkb2N1bWVudCBob3cgdGhpcyBpcyBhbGwgc3VwcG9z
ZWQgdG8gd29yayBmcm9tIGFuIHVhcGkKPiBwb3YuIEJ1dCByaWdodCBub3cgYSBsb3Qgb2YgdGhp
cyBpcyBhbGwgcmF0aGVyIGFzcGlyYXRpb25hbCwgSSB0aGluawo+IG9ubHkgdGhlIHJlY2VudCBz
aW1wbGUgZGlzcGxheSBwaXBlIGJhc2VkIGRyaXZlcnMgaW1wbGVtZW50IHRoaXMgYXMKPiBkZXNj
cmliZWQgYWJvdmUuCj4KPj4+IE1vc3RseSBjb3BpZWQgZnJvbSBkZXZyZXMuYywgd2l0aCB0eXBl
cyBhZGp1c3RlZCB0byBmaXQgZHJtX2RldmljZSBhbmQKPj4+IGEgZmV3IHNpbXBsaWZpY2F0aW9u
cyAtIEkgZGlkbid0ICh5ZXQpIGNvcHkgb3ZlciBldmVyeXRoaW5nLiBTaW5jZQo+Pj4gdGhlIHR5
cGVzIGRvbid0IG1hdGNoIGNvZGUgc2hhcmluZyBsb29rZWQgbGlrZSBhIGhvcGVsZXNzIGVuZGVh
dm91ci4KPj4+Cj4+PiBGb3Igbm93IGl0J3Mgb25seSBzdXBlciBzaW1wbGlmaWVkLCBubyBncm91
cHMsIHlvdSBjYW4ndCByZW1vdmUKPj4+IGFjdGlvbnMgKGJ1dCBrZnJlZSBleGlzdHMsIHdlJ2xs
IG5lZWQgdGhhdCBzb29uKS4gUGx1cyBhbGwgc3BlY2lmaWMgdG8KPj4+IGRybV9kZXZpY2Ugb2Zj
LCBpbmNsdWRpbmcgdGhlIGxvZ2dpbmcuIFdoaWNoIEkgZGlkbid0IGJvdGhlciB0byBtYWtlCj4+
PiBjb21waWxlLXRpbWUgb3B0aW9uYWwsIHNpbmNlIG5vbmUgb2YgdGhlIG90aGVyIGRybSBsb2dn
aW5nIGlzIGNvbXBpbGUKPj4+IHRpbWUgb3B0aW9uYWwgZWl0aGVyLgo+Pgo+PiBJIHNhdyBpbiB2
MSB0aHJlYWQgdGhhdCBjb3B5L3Bhc3RlIGlzIE9LIGFuZCBtZXJnaW5nIGJhY2sgZGV2cmVzIGFu
ZAo+PiBkcm1yZXMgY2FuIGJlIGRvbmUgbGF0ZXIsIGJ1dCBleHBlcmllbmNlIHNob3dzIHRoYXQg
YWZ0ZXIgc2hvcnQgdGltZQo+PiB0aGluZ3MgZ2V0IGRlLXN5bmNocm9uaXplZCBhbmQgbWVyZ2lu
ZyBwcm9jZXNzIGJlY29tZXMgcXVpdGUgcGFpbmZ1bC4KPj4KPj4gT24gdGhlIG90aGVyIHNpZGUg
SSBndWVzcyBpdCBzaG91bGRuJ3QgYmUgZGlmZmljdWx0IHRvIHNwbGl0IGRldnJlcyBpbnRvCj4+
IGNvbnN1bWVyIGFnbm9zdGljIGNvcmUgYW5kICJzdHJ1Y3QgZGV2aWNlIiBoZWxwZXJzIGFuZCB0
aGVuIHVzZSB0aGUgY29yZQo+PiBpbiBkcm0uCj4+Cj4+IEZvciBleGFtcGxlIGN1cnJlbnRseSBk
ZXZyZXMgdXNlcyB0d28gZmllbGRzIGZyb20gc3RydWN0IGRldmljZToKPj4KPj4gICAgIHNwaW5s
b2NrX3QgICAgICAgIGRldnJlc19sb2NrOwo+PiAgICAgc3RydWN0IGxpc3RfaGVhZCAgICBkZXZy
ZXNfaGVhZDsKPj4KPj4gTGV0cyBwdXQgaXQgaW50byBzZXBhcmF0ZSBzdHJ1Y3Q6Cj4+Cj4+IHN0
cnVjdCBkZXZyZXMgewo+Pgo+PiAgICAgc3BpbmxvY2tfdCAgICAgICAgbG9jazsKPj4gICAgIHN0
cnVjdCBsaXN0X2hlYWQgICAgaGVhZDsKPj4KPj4gfTsKPj4KPj4gQW5kIGVtYmVkIHRoaXMgc3Ry
dWN0IGludG8gInN0cnVjdCBkZXZpY2UiLgo+Pgo+PiBUaGVuIGNvbnZlcnQgYWxsIGNvcmUgZGV2
cmVzIGZ1bmN0aW9ucyB0byB0YWtlICJzdHJ1Y3QgZGV2cmVzICoiCj4+IGFyZ3VtZW50IGluc3Rl
YWQgb2YgInN0cnVjdCBkZXZpY2UgKiIgYW5kIHRoZW4gdGhlc2UgY29yZSBmdW5jdGlvbnMgY2Fu
Cj4+IGJlIHVzYWJsZSBpbiBkcm0uCj4+Cj4+IExvb2tzIHF1aXRlIHNpbXBsZSBzZXBhcmF0aW9u
IG9mIGFic3RyYWN0aW9uIChkZXZyZXMpIGFuZCBpdHMgY29uc3VtZXIKPj4gKHN0cnVjdCBkZXZp
Y2UpLgo+Pgo+PiBBZnRlciBzdWNoIHNwbGl0IG9uZSBjb3VsZCB0aGluayBhYm91dCBjaGFuZ2lu
ZyBuYW1lIGRldnJlcyB0byBzb21ldGhpbmcKPj4gbW9yZSByZWxpYWJsZS4KPiBUaGVyZSB3YXMg
YSBsb25nIGRpc2N1c3Npb24gb24gdjEgZXhhY3RseSBhYm91dCB0aGlzLCBHcmVnJ3MKPiBzdWdn
ZXN0aW9uIHdhcyB0byAianVzdCBzaGFyZSBhIHN0cnVjdCBkZXZpY2UiLiBTbyB3ZSdyZSBub3Qg
Z29pbmcgdG8KPiBkbyB0aGlzIGhlcmUsIGFuZCB0aGUgc3RydWN0IGRldmljZSBzZWVtcyBsaWtl
IHNsaWdodCBvdmVya2lsbCBhbmQgbm90Cj4gYSBnb29kIGVub3VnaCBmaXQgaGVyZS4KCgpCdXQg
bXkgcHJvcG9zaXRpb24gaXMgZGlmZmVyZW50LCBJIHdhbnQgdG8gZ2V0IHJpZCBvZiAic3RydWN0
IGRldmljZSIKZnJvbSBkZXZyZXMgY29yZSAtIGRldnJlcyBoYXMgbm90aGluZyB0byBkbyB3aXRo
IGRldmljZSwgaXQgd2FzIGJvdW5kIHRvCml0IHByb2JhYmx5IGJlY2F1c2UgaXQgd2FzIGNvbnZl
bmllbnQgYXMgZGV2aWNlIHdhcyB0aGUgb25seSBjbGllbnQgb2YKZGV2cmVzIChJIGd1ZXNzKS4g
Tm93IGlmIHdlIHdhbnQgdG8gaGF2ZSBtb3JlIGRldnJlcyBjbGllbnRzIGFic3RyYWN0aW5nCm91
dCBkZXZyZXMgZnJvbSBkZXZpY2Ugc2VlbXMgcXVpdGUgbmF0dXJhbC4gVGhpcyB3YXkgd2Ugd2ls
bCBoYXZlIHByb3BlcgphYnN0cmFjdGlvbnMgd2l0aG91dCBjb2RlIGR1cGxpY2F0aW9uLgoKRXhh
bXBsZXMgb2YgZGV2cmVzIHJlbGF0ZWQgY29kZSBhY2NvcmRpbmcgdG8gbXkgcHJvcG9zaXRpb246
CgovLyBkZXZyZXMgY29yZQoKdm9pZCBkZXZyZXNfYWRkKHN0cnVjdCBkZXZyZXNfaGVhZCAqZGgs
IHZvaWQgKnJlcykKewoKwqDCoCBzdHJ1Y3QgZGV2cmVzICpkciA9IGNvbnRhaW5lcl9vZihyZXMs
IHN0cnVjdCBkZXZyZXMsIGRhdGEpOwoKwqDCoMKgIHVuc2lnbmVkIGxvbmcgZmxhZ3M7CgrCoMKg
wqAgc3Bpbl9sb2NrX2lycXNhdmUoJmRoLT5sb2NrLCBmbGFncyk7CsKgwqDCoCBhZGRfZHIoZGV2
LCAmZHItPm5vZGUpOwrCoMKgwqAgc3Bpbl91bmxvY2tfaXJxcmVzdG9yZSgmZGgtPmxvY2ssIGZs
YWdzKTsKfQoKLy8gZGV2aWNlIGRldnJlcyBoZWxwZXIgKG5vbiBjb3JlKQoKc3RydWN0IGNsayAq
ZGV2bV9jbGtfZ2V0KHN0cnVjdCBkZXZpY2UgKmRldiwgY29uc3QgY2hhciAqaWQpCnsKwqDCoMKg
IHN0cnVjdCBjbGsgKipwdHIsICpjbGs7CgrCoMKgwqAgcHRyID0gZGV2cmVzX2FsbG9jKGRldm1f
Y2xrX3JlbGVhc2UsIHNpemVvZigqcHRyKSwgR0ZQX0tFUk5FTCk7CsKgwqDCoCBpZiAoIXB0cikK
wqDCoMKgIMKgwqDCoCByZXR1cm4gRVJSX1BUUigtRU5PTUVNKTsKCsKgwqDCoCBjbGsgPSBjbGtf
Z2V0KGRldiwgaWQpOwrCoMKgwqAgaWYgKCFJU19FUlIoY2xrKSkgewrCoMKgwqAgwqDCoMKgICpw
dHIgPSBjbGs7CsKgwqDCoCDCoMKgwqAgZGV2cmVzX2FkZCgmZGV2LT5kZXZyZXMsIHB0cik7CsKg
wqDCoCB9IGVsc2UgewrCoMKgwqAgwqDCoMKgIGRldnJlc19mcmVlKHB0cik7CsKgwqDCoCB9CgrC
oMKgwqAgcmV0dXJuIGNsazsKfQoKCkNoYW5nZXMgYXJlIGNvc21ldGljLiBCdXQgdGhlbiB5b3Ug
Y2FuIGVhc2lseSBhZGQgZGV2cmVzIHRvIGRybWRldjoKCnN0cnVjdCBkcm1fZGV2aWNlIHsKCsKg
wqAgLi4uCgorwqDCoCBzdHJ1Y3QgZGV2cmVzX2hlYWQgZGV2cmVzOwoKfTsKCi8vIHRoZW4gY29w
eS9tb2RpZnkgZnJvbSB5b3VyIHBhdGNoOgoKK3ZvaWQgKmRybW1fa21hbGxvYyhzdHJ1Y3QgZHJt
X2RldmljZSAqZGV2LCBzaXplX3Qgc2l6ZSwgZ2ZwX3QgZ2ZwKQoreworCXN0cnVjdCBkcm1yZXMg
KmRyOworCisJZHIgPSBhbGxvY19kcihOVUxMLCBzaXplLCBnZnAsIGRldl90b19ub2RlKGRldi0+
ZGV2KSk7CisJaWYgKCFkcikKKwkJcmV0dXJuIE5VTEw7CisJZHItPm5vZGUubmFtZSA9ICJrbWFs
bG9jIjsKKworCWRldnJlc19hZGQoJmRldi0+ZGV2cmVzLCBkcik7IC8vIHRoZSBvbmx5IGNoYW5n
ZSBpcyBoZXJlCisKKwlyZXR1cm4gZHItPmRhdGE7Cit9CgoKQnR3LCByZWltcGxlbWVudGVkIGFk
ZF9kciBpcyBkaWZmZXJlbnQgb2Ygb3JpZ2luYWwgYWRkX2RyIGFuZCBpcyBzaW1pbGFyCnRvIG9y
aWdpbmFsIGRldnJlc19hZGQsIHNvIHlvdXIgaW1wbGVtZW50YXRpb24gZGlmZmVycyBhbHJlYWR5
IGZyb20Kb3JpZ2luYWwgb25lLCBtZXJnaW5nIGJhY2sgdGhlc2UgdHdvIHdpbGwgYmUgcGFpbmZ1
bGwgOikKCgpSZWdhcmRzCgpBbmRyemVqCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZngK
