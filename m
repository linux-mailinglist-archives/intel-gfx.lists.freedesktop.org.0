Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D48D1E4DFF
	for <lists+intel-gfx@lfdr.de>; Wed, 27 May 2020 21:15:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A6B4B6E397;
	Wed, 27 May 2020 19:15:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lj1-x243.google.com (mail-lj1-x243.google.com
 [IPv6:2a00:1450:4864:20::243])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 313C76E397
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 May 2020 19:15:43 +0000 (UTC)
Received: by mail-lj1-x243.google.com with SMTP id k5so30289864lji.11
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 May 2020 12:15:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=hardline-pl.20150623.gappssmtp.com; s=20150623;
 h=mime-version:content-transfer-encoding:in-reply-to:references:from
 :to:subject:date:message-id:user-agent;
 bh=BnNGdXvAl9VVDCr0E6RsM2xvd/4fdb4oqxMXn6K45p8=;
 b=ecMuBSVMgWEqLBrq0Z4HjWQ05axfQzm0xvfUBQ6de6LM8qFiO0AF3RzW1pkqu1O93y
 q4MHYIf3/shsfplVcxUnRNjpf0lo5pRqorShwqSZxDdtOy+15k7+KSmjdFivYDxHblqB
 5/lpR66MSMgaPup4MI5wqmYx3kceSitqYZ0xdy4LONxP1AADLWPj6rzfmmPY0at5g+G9
 R65L1Pr5kqdanx7i68QxgW3D7DBjOZe17wUrYBJ3slfBdIQZ2pGlCx1roXAvAMfq/0o7
 DwL89GDMuXw4wU2LWYQc0YGMyPM/vxrTox/2njIbvjwCDY5gbVMt9EyRU2liVrHoMzwz
 uM8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:content-transfer-encoding
 :in-reply-to:references:from:to:subject:date:message-id:user-agent;
 bh=BnNGdXvAl9VVDCr0E6RsM2xvd/4fdb4oqxMXn6K45p8=;
 b=nrtk3b6NIx/oy45eD+WY80TCqlxb9f2sI4kHiARL/b7Ycx4MjUqiW80KnbQ/bhqqwI
 NmPexyXLcmbLUmyUU3co09oPWwxSX+Vp3WnScJ0122TgX27Dk2bfta87TwIivQaux42J
 kQuI44auDaXywPhyvkN8DvZBZXFshRw0TbESJUGuKEAt2ZPFwJ6WfqUSCZAhBUjbuEB4
 ZBRi02Z5JgCODDGkjS775ywEuvzvIuRRYkjgQA6/sEeP3kQ5a3uK/xm02jGJiXjT4DJF
 G6LlqrW5Yc5oy96QqwogKIvBuaZP3h6zZSGaO2msoyGSNtx+YklhxXfoCL1EvVw9WesV
 IqjQ==
X-Gm-Message-State: AOAM533GURjOpSASxpW+cYsOYrq/T0ov3LMA2BferMSjq4FsfflM2+TD
 e4tuI/+DLFp8Yk+Db39pXKxATqyGrvk=
X-Google-Smtp-Source: ABdhPJxeDK0Y4+4ylfJqggnTEzuoHi64FVnvL1g1vv6ncSoH2BBC0MSJe5kN6Iv9F5eqtH+0/5mFMw==
X-Received: by 2002:a2e:9a56:: with SMTP id k22mr3958075ljj.308.1590606941369; 
 Wed, 27 May 2020 12:15:41 -0700 (PDT)
Received: from localhost (109241244009.gdansk.vectranet.pl. [109.241.244.9])
 by smtp.gmail.com with ESMTPSA id e19sm862988lja.19.2020.05.27.12.15.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 27 May 2020 12:15:40 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20200518181720.14625-5-janusz.krzysztofik@linux.intel.com>
References: <20200518181720.14625-1-janusz.krzysztofik@linux.intel.com>
 <20200518181720.14625-5-janusz.krzysztofik@linux.intel.com>
From: =?utf-8?q?Micha=C5=82?= Winiarski <michal@hardline.pl>
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Wed, 27 May 2020 21:15:39 +0200
Message-ID: <159060693971.4890.1652554590442980189@macragge.hardline.pl>
User-Agent: alot/0.9.1
Subject: Re: [Intel-gfx] [RFC PATCH 4/4] drm/i915: Move UC firmware cleanup
 from driver_release to _remove
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

UXVvdGluZyBKYW51c3ogS3J6eXN6dG9maWsgKDIwMjAtMDUtMTggMjA6MTc6MjApCj4gVUMgZmly
bXdhcmUgaXMgc3RvcmVkIGluIGEgR0VNIG9iamVjdC4gIENsZWFuIGl0IHVwIG9uIGRyaXZlciBy
ZW1vdmUgdG8KCQkJCQkgXiBkb3VibGUgd2hpdGVzcGFjZQo+IGF2b2lkIGludGVsLWlvbW11IHRy
aWdnZXJlZCBrZXJuZWwgcGFuaWMgb24gbGF0ZSBETUEgdW5tYXBwaW5nIG9yIGV2ZW4KPiBhbiBS
UE0gcmVsYXRlZCB3YXJuaW5nIG9uIG9iamVjdCBsYXRlIHJlbW92YWwgaW4gbm8gSU9NTVUgc2V0
dXBzLgoKVGhpcyBpcyBubyBsb25nZXIgdGhlIGNhc2UgYWZ0ZXI6CmRybS9pOTE1L2dlbTogTGF6
aWx5IGFjcXVpcmUgdGhlIGRldmljZSB3YWtlcmVmIGZvciBmcmVlaW5nIG9iamVjdHMKClJpZ2h0
PwoKPiAKPiA8ND4gWzkzLjMzNTI4Ml0gLS0tLS0tLS0tLS0tWyBjdXQgaGVyZSBdLS0tLS0tLS0t
LS0tCj4gPDQ+IFs5My4zMzU1MTVdIHBtX3J1bnRpbWVfZ2V0X3N5bmMoKSBmYWlsZWQ6IC0xMwo+
IDw0PiBbOTMuMzM2MDU2XSBXQVJOSU5HOiBDUFU6IDYgUElEOiAyMDAgYXQgZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaW50ZWxfcnVudGltZV9wbS5jOjM2MSBfX2ludGVsX3J1bnRpbWVfcG1fZ2V0KzB4
NGQvMHg2MCBbaTkxNV0KPiA8ND4gWzkzLjMzNjEwNF0gTW9kdWxlcyBsaW5rZWQgaW46IHNuZF9o
ZGFfY29kZWNfaGRtaSBtZWlfaGRjcCBpOTE1IHg4Nl9wa2dfdGVtcF90aGVybWFsIGNvcmV0ZW1w
IGNyY3QxMGRpZl9wY2xtdWwgY3JjMzJfcGNsbXVsIGdoYXNoX2NsbXVsbmlfaW50ZWwgc25kX2hk
YV9pbnRlbCBjZGNfZXRoZXIgc25kX2ludGVsX2RzcGNmZyB1c2JuZXQgc25kX2hkYV9jb2RlYyBt
aWkgc25kX2h3ZGVwIHNuZF9oZGFfY29yZSBlMTAwMGUgc25kX3BjbSBwdHAgcHBzX2NvcmUgbWVp
X21lIG1laSBpbnRlbF9scHNzX3BjaSBwcmltZV9udW1iZXJzCj4gPDQ+IFs5My4zMzYyNjhdIENQ
VTogNiBQSUQ6IDIwMCBDb21tOiBrd29ya2VyL3UxNjozIFRhaW50ZWQ6IEcgICAgIFUgICAgICAg
ICAgICA1LjcuMC1yYzQtQ0ktVHJ5Ym90XzY0MDUrICMxCj4gPDQ+IFs5My4zMzYyODldIEhhcmR3
YXJlIG5hbWU6IEludGVsIENvcnBvcmF0aW9uIFRpZ2VyIExha2UgQ2xpZW50IFBsYXRmb3JtL1Rp
Z2VyTGFrZSBZIExQRERSNHggVDQgQ3JiLCBCSU9TIFRHTFNGV0kxLlIwMC4yNDU3LkExNi4xOTEy
MjcwMDU5IDEyLzI3LzIwMTkKPiA8ND4gWzkzLjMzNjgxMV0gV29ya3F1ZXVlOiBpOTE1IF9faTkx
NV9nZW1fZnJlZV93b3JrIFtpOTE1XQo+IDw0PiBbOTMuMzM3Mjk2XSBSSVA6IDAwMTA6X19pbnRl
bF9ydW50aW1lX3BtX2dldCsweDRkLzB4NjAgW2k5MTVdCj4gPDQ+IFs5My4zMzczMzJdIENvZGU6
IGZmIGZmIDQ4IDg5IGRmIDViIDVkIGU5IGExIGZhIGZmIGZmIDgwIDNkIDRiIDdhIDJlIDAwIDAw
IDc1IGUxIDg5IGM2IDQ4IGM3IGM3IGE4IDJkIDQwIGEwIGM2IDA1IDM5IDdhIDJlIDAwIDAxIGU4
IDUzIGZjIGU5IGUwIDwwZj4gMGIgZWIgYzggMGYgMWYgNDQgMDAgMDAgNjYgMmUgMGYgMWYgODQg
MDAgMDAgMDAgMDAgMDAgNDEgNTcgNDEKPiA8ND4gWzkzLjMzNzM1N10gUlNQOiAwMDE4OmZmZmZj
OTAwMDE0NGJkZDggRUZMQUdTOiAwMDAxMDI4Mgo+IDw0PiBbOTMuMzM3Mzg0XSBSQVg6IDAwMDAw
MDAwMDAwMDAwMDAgUkJYOiBmZmZmODg4MzhlZTViYzQwIFJDWDogMDAwMDAwMDAwMDAwMDAwMQo+
IDw0PiBbOTMuMzM3NDA5XSBSRFg6IDAwMDAwMDAwODAwMDAwMDEgUlNJOiBmZmZmODg4MzlkMjY0
OTI4IFJESTogMDAwMDAwMDBmZmZmZmZmZgo+IDw0PiBbOTMuMzM3NDQwXSBSQlA6IDAwMDAwMDAw
MDAwMDAwMDEgUjA4OiBmZmZmODg4MzlkMjY0OTI4IFIwOTogMDAwMDAwMDAwMDAwMDAwMAo+IDw0
PiBbOTMuMzM3NDY3XSBSMTA6IDAwMDAwMDAwMDAwMDAwMDAgUjExOiAwMDAwMDAwMDAwMDAwMDAw
IFIxMjogZmZmZjg4ODM4ZWU1YmM0MAo+IDw0PiBbOTMuMzM3NDkzXSBSMTM6IDAwMDAwMDAwMDAw
MDAwMDYgUjE0OiBmZmZmZmZmZjgyNzY5YTMwIFIxNTogZmZmZjg4ODM5Mzc2YmFiMAo+IDw0PiBb
OTMuMzM3NTE1XSBGUzogIDAwMDAwMDAwMDAwMDAwMDAoMDAwMCkgR1M6ZmZmZjg4ODNhNDEwMDAw
MCgwMDAwKSBrbmxHUzowMDAwMDAwMDAwMDAwMDAwCj4gPDQ+IFs5My4zMzc1NDJdIENTOiAgMDAx
MCBEUzogMDAwMCBFUzogMDAwMCBDUjA6IDAwMDAwMDAwODAwNTAwMzMKPiA8ND4gWzkzLjMzNzU2
M10gQ1IyOiAwMDAwNTViYzE5YjE2ZmY4IENSMzogMDAwMDAwMDNhMTFjNDAwNSBDUjQ6IDAwMDAw
MDAwMDA3NjBlZTAKPiA8ND4gWzkzLjMzNzU4M10gUEtSVTogNTU1NTU1NTQKPiA8ND4gWzkzLjMz
NzYwNV0gQ2FsbCBUcmFjZToKPiA8ND4gWzkzLjMzODE0OF0gIGk5MTVfZ2VtX29iamVjdF9yZWxl
YXNlX21tYXArMHgyMy8weDcwIFtpOTE1XQo+IDw0PiBbOTMuMzM4NjY1XSAgX19pOTE1X2dlbV9m
cmVlX29iamVjdHMuaXNyYS4yMSsweDEwYS8weDRiMCBbaTkxNV0KPiA8ND4gWzkzLjMzODc0MV0g
IHByb2Nlc3Nfb25lX3dvcmsrMHgyNjgvMHg2MDAKPiA8ND4gWzkzLjMzODc4NV0gID8gX19zY2hl
ZHVsZSsweDMwNy8weDhkMAo+IDw0PiBbOTMuMzM4ODc4XSAgd29ya2VyX3RocmVhZCsweDM3LzB4
MzgwCj4gPDQ+IFs5My4zMzg5MjldICA/IHByb2Nlc3Nfb25lX3dvcmsrMHg2MDAvMHg2MDAKPiA8
ND4gWzkzLjMzODk2M10gIGt0aHJlYWQrMHgxNDAvMHgxNjAKPiA8ND4gWzkzLjMzOTAwNl0gID8g
a3RocmVhZF9wYXJrKzB4ODAvMHg4MAo+IDw0PiBbOTMuMzM5MDU3XSAgcmV0X2Zyb21fZm9yaysw
eDI0LzB4NTAKPiA8ND4gWzkzLjMzOTE4MV0gaXJxIGV2ZW50IHN0YW1wOiAyMDQyMjAKPiA8ND4g
WzkzLjMzOTIxOV0gaGFyZGlycXMgbGFzdCAgZW5hYmxlZCBhdCAoMjA0MjE5KTogWzxmZmZmZmZm
ZjgxMTMzOTlkPl0gY29uc29sZV91bmxvY2srMHg0Y2QvMHg1YTAKPiA8ND4gWzkzLjMzOTI1MF0g
aGFyZGlycXMgbGFzdCBkaXNhYmxlZCBhdCAoMjA0MjIwKTogWzxmZmZmZmZmZjgxMDAxZDUwPl0g
dHJhY2VfaGFyZGlycXNfb2ZmX3RodW5rKzB4MWEvMHgxYwo+IDw0PiBbOTMuMzM5Mjc3XSBzb2Z0
aXJxcyBsYXN0ICBlbmFibGVkIGF0ICgyMDQyMDgpOiBbPGZmZmZmZmZmODFlMDAzOTU+XSBfX2Rv
X3NvZnRpcnErMHgzOTUvMHg0OWUKPiA8ND4gWzkzLjMzOTMwN10gc29mdGlycXMgbGFzdCBkaXNh
YmxlZCBhdCAoMjA0MTk3KTogWzxmZmZmZmZmZjgxMGJiYzlhPl0gaXJxX2V4aXQrMHhiYS8weGMw
Cj4gPDQ+IFs5My4zMzkzMzBdIC0tLVsgZW5kIHRyYWNlIGYwNjYxODc2MjJiOGM0ODQgXS0tLQo+
IAo+IFNpZ25lZC1vZmYtYnk6IEphbnVzeiBLcnp5c3p0b2ZpayA8amFudXN6LmtyenlzenRvZmlr
QGxpbnV4LmludGVsLmNvbT4KClJldmlld2VkLWJ5OiBNaWNoYcWCIFdpbmlhcnNraSA8bWljaGFs
LndpbmlhcnNraUBpbnRlbC5jb20+CgotTWljaGHFggoKPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9nZW0uYyB8IDMgKystCj4gIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMo
KyksIDEgZGVsZXRpb24oLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9nZW0uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtLmMKPiBpbmRleCA4N2Qz
YzRmNWI2YzYuLmY5ZDM3YzdlNmQ2ZiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X2dlbS5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW0uYwo+IEBA
IC0xMTkxLDYgKzExOTEsOCBAQCB2b2lkIGk5MTVfZ2VtX2RyaXZlcl9yZW1vdmUoc3RydWN0IGRy
bV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQo+ICAKPiAgICAgICAgIGk5MTVfZ2VtX2RyaXZlcl9y
ZW1vdmVfX2NvbnRleHRzKGRldl9wcml2KTsKPiAgCj4gKyAgICAgICBpbnRlbF91Y19jbGVhbnVw
X2Zpcm13YXJlcygmZGV2X3ByaXYtPmd0LnVjKTsKPiArCj4gICAgICAgICBpOTE1X2dlbV9kcmFp
bl9mcmVlZF9vYmplY3RzKGRldl9wcml2KTsKPiAgfQo+ICAKPiBAQCAtMTIwMiw3ICsxMjA0LDYg
QEAgdm9pZCBpOTE1X2dlbV9kcml2ZXJfcmVsZWFzZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAq
ZGV2X3ByaXYpCj4gIAo+ICAgICAgICAgaW50ZWxfd2FfbGlzdF9mcmVlKCZkZXZfcHJpdi0+Z3Rf
d2FfbGlzdCk7Cj4gIAo+IC0gICAgICAgaW50ZWxfdWNfY2xlYW51cF9maXJtd2FyZXMoJmRldl9w
cml2LT5ndC51Yyk7Cj4gICAgICAgICBpOTE1X2dlbV9jbGVhbnVwX3VzZXJwdHIoZGV2X3ByaXYp
Owo+ICAKPiAgICAgICAgIGk5MTVfZ2VtX2RyYWluX2ZyZWVkX29iamVjdHMoZGV2X3ByaXYpOwo+
IC0tIAo+IDIuMjEuMQo+IAo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCj4gSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdAo+IEludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKPiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
ZngK
