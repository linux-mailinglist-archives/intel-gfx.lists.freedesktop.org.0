Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F6AEA0D17
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Aug 2019 00:01:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 969F989ECB;
	Wed, 28 Aug 2019 22:01:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com
 [IPv6:2a00:1450:4864:20::443])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5ED5A89ECB
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Aug 2019 22:01:16 +0000 (UTC)
Received: by mail-wr1-x443.google.com with SMTP id u16so1356631wrr.0
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Aug 2019 15:01:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=fmBEVsYi4QuKQRZjwpp0nZ3eNArJlo+G4W4KEsJJTMU=;
 b=L7MD+vvmZxuugijfE5TjS+MfF39Tkw6aJwKjyHwmZ79yjKi2TW4/jcDO4L2Tije6Wq
 p9Y54OkAzdwTM5vnUVzgwLrjQkSXUswKsZAe2IOjZHSDS12f3agrlGixv1R7PQyJRuq/
 EMz+T4AyUXeCsxDI0F/zg/ufqEtego/Hl/L4q1wIdPrtNLPz7vu84kVxs7fiygbBYh6O
 If8oUfndMcaGDvTrdiOVNPKtFdNczdddHn67F5YwWLNqiccWs5d2sKT0R5WVQ0ErXp2P
 bLGi5GCfPpKjh5KOD63Mov54AgRwMjFW0NgExFjSPkcNukNOraFvdPSD9QWbm08h9RjW
 /8gA==
X-Gm-Message-State: APjAAAXW56qU4r0irV/q7wvfidH189rDeCuXmKqE/2mmxS6+JmxmrxMJ
 7HvTg88yaWDlLqHGMiH/pHGxo5sh
X-Google-Smtp-Source: APXvYqxQ11Iu94905LRZrNZgpLNAC8FKQI0ZfY8ZwpGXIpO6MRXhRQmn3C6n6m95AENth/iByEJ0Mg==
X-Received: by 2002:adf:fccd:: with SMTP id f13mr5490080wrs.148.1567029674631; 
 Wed, 28 Aug 2019 15:01:14 -0700 (PDT)
Received: from [192.168.1.20]
 (host109-153-59-46.range109-153.btcentralplus.com. [109.153.59.46])
 by smtp.googlemail.com with ESMTPSA id z1sm322425wrp.51.2019.08.28.15.01.12
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 28 Aug 2019 15:01:13 -0700 (PDT)
To: Chris Wilson <chris@chris-wilson.co.uk>,
 LKML <linux-kernel@vger.kernel.org>
References: <c2706468-6f88-7276-b791-e9573394aa18@gmail.com>
 <156700557283.15406.5823286371997423740@skylake-alporthouse-com>
From: Chris Clayton <chris2553@googlemail.com>
Message-ID: <4230d1b4-a20a-ffee-961d-070feabb30c7@googlemail.com>
Date: Wed, 28 Aug 2019 23:01:07 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <156700557283.15406.5823286371997423740@skylake-alporthouse-com>
Content-Language: en-GB
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=fmBEVsYi4QuKQRZjwpp0nZ3eNArJlo+G4W4KEsJJTMU=;
 b=HqxFGd8WnKcVT8DT8EMSx6k8GKWmt/pdImgGrB1+L0OUHD34LKAFXMiOxI9PSoBn7u
 oDPq3tDwLNV4j8olE13agRwJygqH+rc7R6+R83YmqPKzPi9wGrIaEJoWGZThHuSOKQfj
 H5TEL5JHrgzVziuCMLs1o29DMJULPT6VURlnZymIQ2IBIoiDY4fKXU1cdbKI1+Achj0G
 WQb8ePFlz2MNDDgz6wMa75PrT9jKKXfdFy0uE1W5MouRvdgXC90kB4dTbemEa8UbabqP
 HB1ConV//RX9IcEVdpC7au+SpVP7ACrI5WgXXDvEEfx3sNcRuvd5QHbV3LMsZJ8ul3FI
 ra/A==
Subject: Re: [Intel-gfx] Workqueue - warning splat
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
Cc: tj@kernel.org, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

CgpPbiAyOC8wOC8yMDE5IDE2OjE5LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gUXVvdGluZyBDaHJp
cyBDbGF5dG9uICgyMDE5LTA4LTI4IDE2OjE0OjIwKQo+PiBIaSwKPj4KPj4gSSd2ZSBqdXN0IGNv
cHlpbmcgMzE5RyBvZiBkYXRhIGZyb20gYSBwYXJ0aXRpb24gb24gb25lIFVTQi1hdHRhY2hlZCAo
L2Rldi9zZGIzKSB0byBhIHBhcnRpdGlvbiBvbiBhbm90aGVyIFVTQi1hdHRhY2hlZAo+PiBkcml2
ZSAoL2Rldi9zZGMxKS4gSXQncyBub3QgcXVpdGUgZmluaXNoZWQgYnV0IGFzIGl0J3MgcHJvZ3Jl
c3NlZCwgSSBoYXZlIGJlZW4gcmVhZGluZyBlbWFpbCBhbmQgYnJvd3Npbmcgd2ViIHNpdGVzLCBz
bwo+PiBzd2l0Y2hpbmcgYmV0d2VlbiB3aW5kb3dzIGZyb20gdGltZSB0byB0aW1lLgo+Pgo+PiBJ
IGZvdW5kIHRoZSBzcGxhdCBiZWxvdyBhdCB0aGUgZW5kIHRoZSBvdXRwdXQgZnJvbSBkbWVzZzoK
PiAKPj4gWyA2MDQ4LjA3MDE0OF0gd29ya3F1ZXVlOiBQRl9NRU1BTExPQyB0YXNrIDE0OChrc3dh
cGQwKSBpcyBmbHVzaGluZyAhV1FfTUVNX1JFQ0xBSU0gZXZlbnRzOmdlbjZfcG1fcnBzX3dvcmsg
W2k5MTVdCj4+IFsgNjA0OC4wNzAxNTJdIFdBUk5JTkc6IENQVTogNiBQSUQ6IDE0OCBhdCBrZXJu
ZWwvd29ya3F1ZXVlLmM6MjU5OCBjaGVja19mbHVzaF9kZXBlbmRlbmN5KzB4MTA1LzB4MTIwCj4+
IFsgNjA0OC4wNzAxNTJdIE1vZHVsZXMgbGlua2VkIGluOiB1YXMgcmZjb21tIGJuZXAgaXB0YWJs
ZV9maWx0ZXIgeHRfY29ubnRyYWNrIGlwdGFibGVfbmF0IHh0X01BU1FVRVJBREUgbmZfbmF0Cj4+
IG5mX2Nvbm50cmFjayBuZl9kZWZyYWdfaXB2NCBjb3JldGVtcCBod21vbiBzbmRfaGRhX2NvZGVj
X2hkbWkgc25kX2hkYV9jb2RlY19nZW5lcmljIGl3bG12bSBtYWM4MDIxMSB1dmN2aWRlbwo+PiB2
aWRlb2J1ZjJfdm1hbGxvYyB2aWRlb2J1ZjJfbWVtb3BzIHZpZGVvYnVmMl92NGwyIHZpZGVvYnVm
Ml9jb21tb24gc25kX2hkYV9pbnRlbCBpd2x3aWZpIHVzYmhpZCBzbmRfaGRhX2NvZGVjIGJ0dXNi
Cj4+IGJ0aW50ZWwgc25kX2h3ZGVwIHg4Nl9wa2dfdGVtcF90aGVybWFsIHNuZF9oZGFfY29yZSBj
Zmc4MDIxMSBpOTE1Cj4+IFsgNjA0OC4wNzAxNjJdIENQVTogNiBQSUQ6IDE0OCBDb21tOiBrc3dh
cGQwIFRhaW50ZWQ6IEcgICAgIFUgICAgICAgICAgICA1LjMuMC1yYzYrICM0MAo+PiBbIDYwNDgu
MDcwMTYzXSBIYXJkd2FyZSBuYW1lOiBQQyBTcGVjaWFsaXN0IExURCBOOHh4RVogICAgICAgICAg
ICAgICAgICAgICAgICAgL044eHhFWiAgICAgICAgICAgICAgICAgICAgICAgICAsIEJJT1MKPj4g
MS4wNy4wOCAxMC8wNC8yMDE4Cj4+IFsgNjA0OC4wNzAxNjVdIFJJUDogMDAxMDpjaGVja19mbHVz
aF9kZXBlbmRlbmN5KzB4MTA1LzB4MTIwCj4+IFsgNjA0OC4wNzAxNjZdIENvZGU6IDhkIDhhIGMw
IDA1IDAwIDAwIDQ5IDg5IGU4IDQ4IGM3IGM3IDkwIDYxIGI1IGIwIDQ4IDhkIDhiIGIwIDAwIDAw
IDAwIDRjIDg5IGNhIDQ4IDg5IDA0IDI0IGM2IDA1IDAyCj4+IDhmIDAwIDAxIDAxIGU4IGIyIDk3
IGZlIGZmIDwwZj4gMGIgNDggOGIgMDQgMjQgZTkgNjMgZmYgZmYgZmYgODAgM2QgZWIgOGUgMDAg
MDEgMDAgMGYgODUgNTYgZmYKPj4gWyA2MDQ4LjA3MDE2N10gUlNQOiAwMDE4OmZmZmZhNmU0MDAz
Njc5YTAgRUZMQUdTOiAwMDAxMDA4Ngo+PiBbIDYwNDguMDcwMTY3XSBSQVg6IDAwMDAwMDAwMDAw
MDAwMDAgUkJYOiBmZmZmOGExODhkNDE0MDAwIFJDWDogMDAwMDAwMDAwMDAwMDAwMAo+PiBbIDYw
NDguMDcwMTY4XSBSRFg6IDAwMDAwMDAwMDAwMDAwNjMgUlNJOiBmZmZmZmZmZmIxMjVmNzIzIFJE
STogZmZmZmZmZmZiMTI1ZDI4Ywo+PiBbIDYwNDguMDcwMTY5XSBSQlA6IGZmZmZmZmZmYzA0NjYz
OTAgUjA4OiAwMDAwMDU4MDJkMTJhMDU3IFIwOTogMDAwMDAwMDAwMDAwMDA2Mwo+PiBbIDYwNDgu
MDcwMTY5XSBSMTA6IGZmZmZmZmZmYjEyNWZhYTAgUjExOiAwMDAwMDAwMGIxMjVmNzBiIFIxMjog
ZmZmZjhhMTg4YzgwOWE4MAo+PiBbIDYwNDguMDcwMTcwXSBSMTM6IGZmZmY4YTE4OTBhMjNlMDAg
UjE0OiAwMDAwMDAwMDAwMDAwMDAxIFIxNTogMDAwMDAwMDAwMDAwMDAwMAo+PiBbIDYwNDguMDcw
MTcwXSBGUzogIDAwMDAwMDAwMDAwMDAwMDAoMDAwMCkgR1M6ZmZmZjhhMTg5MGI4MDAwMCgwMDAw
KSBrbmxHUzowMDAwMDAwMDAwMDAwMDAwCj4+IFsgNjA0OC4wNzAxNzFdIENTOiAgMDAxMCBEUzog
MDAwMCBFUzogMDAwMCBDUjA6IDAwMDAwMDAwODAwNTAwMzMKPj4gWyA2MDQ4LjA3MDE3Ml0gQ1Iy
OiAwMDAwMDAwMDAyNWQxZmEwIENSMzogMDAwMDAwMDRkNzAwYTAwNCBDUjQ6IDAwMDAwMDAwMDAz
NjA2ZTAKPj4gWyA2MDQ4LjA3MDE3Ml0gQ2FsbCBUcmFjZToKPj4gWyA2MDQ4LjA3MDE3NV0gIF9f
Zmx1c2hfd29yaysweDhkLzB4MWQwCj4+IFsgNjA0OC4wNzAxNzZdICA/IHRyeV90b193YWtlX3Vw
KzB4MWI5LzB4M2IwCj4+IFsgNjA0OC4wNzAxNzddICBfX2NhbmNlbF93b3JrX3RpbWVyKzB4ZmIv
MHgxODAKPj4gWyA2MDQ4LjA3MDE3OV0gID8gc3luY2hyb25pemVfaXJxKzB4MzAvMHhhMAo+PiBb
IDYwNDguMDcwMjA0XSAgPyBmd3RhYmxlX3dyaXRlMzIrMHhmMS8weDE4MCBbaTkxNV0KPj4gWyA2
MDQ4LjA3MDIxMl0gIGdlbjZfZGlzYWJsZV9ycHNfaW50ZXJydXB0cysweDc5LzB4YTAgW2k5MTVd
Cj4+IFsgNjA0OC4wNzAyMjBdICBnZW42X3Jwc19pZGxlKzB4ZS8weGQwIFtpOTE1XQo+PiBbIDYw
NDguMDcwMjMwXSAgaW50ZWxfZ3RfcGFyaysweDRmLzB4NjAgW2k5MTVdCj4+IFsgNjA0OC4wNzAy
MzldICBfX2ludGVsX3dha2VyZWZfcHV0X2xhc3QrMHgxMi8weDQwIFtpOTE1XQo+PiBbIDYwNDgu
MDcwMjQ4XSAgX19lbmdpbmVfcGFyaysweGI3LzB4YzAgW2k5MTVdCj4+Cj4+IEl0IG1pZ2h0IGJl
IGRpZmZpY3VsdCB0byBjcmVhdGUgaXQgYWdhaW4sIGJ1dCBJIGd1ZXNzIGEgaGVhZHMgdXAgbWln
aHQgYmUgdXNlZnVsLgo+IAo+IFNob3VsZCBiZSBmaXhlZCBieSAKPiAKPiBjb21taXQgYzczMDJm
MjA0NDkwZjNlYjRlZjgzOWJlYzIyODMxNWJjZDNiYTQzZgo+IEF1dGhvcjogQ2hyaXMgV2lsc29u
IDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gRGF0ZTogICBUaHUgQXVnIDggMjE6Mjc6NTgg
MjAxOSArMDEwMAo+IAo+ICAgICBkcm0vaTkxNTogRGVmZXIgZmluYWwgaW50ZWxfd2FrZXJlZl9w
dXQgdG8gcHJvY2VzcyBjb250ZXh0Cj4gClRoYW5rcywgQ2hyaXMuCgpUaGF0IHBhdGNoIGRvZXNu
J3QgYXBwbHkgY2xlYW5seSB0byBMaW51cycgY3VycmVudCB0cmVlLCBzbyBJJ2xsIHdhaXQgZm9y
IGl0IHRvIG1ha2UgaXQncyB3YXkgdGhyb3VnaCB0aGUgcHJvY2VzcyB3aGVyZQp0aGUgcHJvYmxl
bXMgd2lsbCBiZSByZXNvbHZlZC4KCkNocmlzCgo+IC1DaHJpcwo+IApfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0Cklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
