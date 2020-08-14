Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 52771244473
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Aug 2020 07:13:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A9F866E2D3;
	Fri, 14 Aug 2020 05:13:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from youngberry.canonical.com (youngberry.canonical.com
 [91.189.89.112])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 308A96E2D3
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Aug 2020 05:13:47 +0000 (UTC)
Received: from mail-pf1-f200.google.com ([209.85.210.200])
 by youngberry.canonical.com with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <kai.heng.feng@canonical.com>) id 1k6S2D-0005pi-En
 for intel-gfx@lists.freedesktop.org; Fri, 14 Aug 2020 05:13:45 +0000
Received: by mail-pf1-f200.google.com with SMTP id a73so5837797pfa.10
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Aug 2020 22:13:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=AwRfYmFyjpZ8F2uHUfUY9firpgB4NdYGQq4IKDAkzM0=;
 b=Of/dFT/PXTtNG+GqkvsaWTypMvwgsbKdfdT2Aj6oZduHbvcNHJTkTllrBPkiQUMQwS
 fTWy/ePF3NeKFMQzD71NtBveL4ROvr0n0sO11URbzDQP12Xb1Dkf6I7tRqregkkzz9zi
 7mUEQpUK95BaEA2RF+Pg4RvXsW2ypL2jvE52HVmF67bW+WJncjJGtY5GkquJ23hnDoZH
 ugtVHZDpILFEF5xFaZSTLv8zOTuOpSHvNQIuJQrwtQy0KHBCFRgt0+jLhuHHrwfDBT5f
 knmxeCE362RtRVLsMhzOeSKisTjA7XlI1aEskRkvUbtmr+CVdiNakKlmra2sfIHo52LH
 vDgw==
X-Gm-Message-State: AOAM530r7W/TuXQlbmoPrJAZggnyI3t3/7lnb3yQMz2x0tD0EVGhKkZU
 GJVdbsScEVC12elhUCyhaydwNDatbLytit0YCUDnw39aIzWN4llB3aV5VJ95M+oi3g8AAEV0QcH
 WP0VPpy7haz3anQF+av+oi3tH69Of723CWKCIRqh+LAk4oQ==
X-Received: by 2002:a17:902:9307:: with SMTP id
 bc7mr891032plb.213.1597382023644; 
 Thu, 13 Aug 2020 22:13:43 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwbRJoCFzx+wC2F0WnPG45IBw5a0123Uj+Dj61Y/ew5jXpQO6KPlz+L+zrgkoMR24RvyUi7KA==
X-Received: by 2002:a17:902:9307:: with SMTP id
 bc7mr891008plb.213.1597382022882; 
 Thu, 13 Aug 2020 22:13:42 -0700 (PDT)
Received: from [192.168.1.208] (220-133-187-190.HINET-IP.hinet.net.
 [220.133.187.190])
 by smtp.gmail.com with ESMTPSA id a13sm7380904pfo.49.2020.08.13.22.13.40
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 13 Aug 2020 22:13:41 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.120.23.2.1\))
From: Kai-Heng Feng <kai.heng.feng@canonical.com>
In-Reply-To: <BYAPR11MB31902A8155BE70687A93FAFAB2430@BYAPR11MB3190.namprd11.prod.outlook.com>
Date: Fri, 14 Aug 2020 13:13:39 +0800
Message-Id: <DF870FF7-4EAD-48B3-8159-27359BD7B02B@canonical.com>
References: <844BC1FA-9C2F-4AAF-A0D9-B9A1EA40F51D@canonical.com>
 <32B7CFB3-045A-463D-8556-A63BACEB89D1@intel.com>
 <BYAPR11MB31902A8155BE70687A93FAFAB2430@BYAPR11MB3190.namprd11.prod.outlook.com>
To: "Runyan, Arthur J" <arthur.j.runyan@intel.com>
X-Mailer: Apple Mail (2.3608.120.23.2.1)
Subject: Re: [Intel-gfx] [Regression] "drm/i915: Implement display w/a
 #1143" breaks HDMI on ASUS GL552VW
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
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGksCgo+IE9uIEF1ZyAxNCwgMjAyMCwgYXQgMDE6NTYsIFJ1bnlhbiwgQXJ0aHVyIEogPGFydGh1
ci5qLnJ1bnlhbkBpbnRlbC5jb20+IHdyb3RlOgo+IAo+IFRoZSB3b3JrYXJvdW5kIGlzIGZyZWVp
bmcgdXAgc3R1Y2sgdnN3aW5nIHZhbHVlcyB0byBsZXQgbmV3IHZzd2luZyBwcm9ncmFtbWluZyBr
aWNrIGluLiAgTWF5YmUgdGhlIG5ldyB2c3dpbmcgdmFsdWVzIGFyZSB3cm9uZy4KPiBUcnkgY2hl
Y2tpbmcgdGhlIHZzd2luZyB0aGF0IGRyaXZlciBwcm9ncmFtcyBhZ2FpbnN0IHdoYXQgQklPUy9H
T1AgcHJvZ3JhbXMuCgpEbyB5b3UgbWVhbiB0byBwcmludCBvdXQgdmFsdWUgb2YgSTkxNV9SRUFE
KCk/CnZhbCA9IEk5MTVfUkVBRChDSElDS0VOX1RSQU5TKHRyYW5zY29kZXIpKTsKCkthaS1IZW5n
Cgo+IAo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tCj4gRnJvbTogVml2aSwgUm9kcmlnbyA8
cm9kcmlnby52aXZpQGludGVsLmNvbT4gCj4gU2VudDogVGh1cnNkYXksIEF1Z3VzdCAxMywgMjAy
MCA5OjUwIEFNCj4gVG86IEthaS1IZW5nIEZlbmcgPGthaS5oZW5nLmZlbmdAY2Fub25pY2FsLmNv
bT47IFJ1bnlhbiwgQXJ0aHVyIEogPGFydGh1ci5qLnJ1bnlhbkBpbnRlbC5jb20+Cj4gQ2M6IFZp
bGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+OyBpbnRlbC1nZngg
PGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmc+Cj4gU3ViamVjdDogUmU6IFtSZWdyZXNz
aW9uXSAiZHJtL2k5MTU6IEltcGxlbWVudCBkaXNwbGF5IHcvYSAjMTE0MyIgYnJlYWtzIEhETUkg
b24gQVNVUyBHTDU1MlZXCj4gCj4gQXJ0LCBhbnkgY29tbWVudCBoZXJlPwo+IAo+IEkganVzdCBj
aGVja2VkIGFuZCB0aGUgIFcvYSAxMTQzIGlzIGltcGxlbWVudGVkIGFzIGRlc2NyaWJlZCwgYnV0
IGl0IGlzIGZhaWxpbmcgSERNSSBvbiB0aGlzIGh5YnJpZCBzeXN0ZW0uCj4gCj4+IE9uIEF1ZyAx
MiwgMjAyMCwgYXQgOTowNyBQTSwgS2FpLUhlbmcgRmVuZyA8a2FpLmhlbmcuZmVuZ0BjYW5vbmlj
YWwuY29tPiB3cm90ZToKPj4gCj4+IEhpLAo+PiAKPj4gVGhlcmUncyBhIHJlZ3Jlc3Npb24gcmVw
b3J0ZWQgdGhhdCBIRE1JIG91dHB1dCBzdG9wcyB3b3JraW5nIGFmdGVyIG9zIHVwZ3JhZGU6Cj4+
IGh0dHBzOi8vYnVncy5sYXVuY2hwYWQubmV0L2J1Z3MvMTg3MTcyMQo+PiAKPj4gSGVyZSdzIHRo
ZSBiaXNlY3QgcmVzdWx0Ogo+PiAwNTE5YzEwMmY1Mjg1NDc2ZDc4NjhhMzg3YmRiNmM1ODM4NWU0
MDc0IGlzIHRoZSBmaXJzdCBiYWQgY29tbWl0IAo+PiBjb21taXQgMDUxOWMxMDJmNTI4NTQ3NmQ3
ODY4YTM4N2JkYjZjNTgzODVlNDA3NAo+PiBBdXRob3I6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUu
c3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4+IERhdGU6ICAgTW9uIEphbiAyMiAxOTo0MTozMSAy
MDE4ICswMjAwCj4+IAo+PiAgIGRybS9pOTE1OiBJbXBsZW1lbnQgZGlzcGxheSB3L2EgIzExNDMK
Pj4gCj4+ICAgQXBwYXJlbnRseSBTS0wvS0JML0NGTCBuZWVkIHNvbWUgbWFudWFsIGhlbHAgdG8g
Z2V0IHRoZQo+PiAgIHByb2dyYW1tZWQgSERNSSB2c3dpbmcgdG8gc3RpY2suIEltcGxlbWVudCB0
aGUgcmVsZXZhbnQKPj4gICB3b3JrYXJvdW5kIChkaXNwbGF5IHcvYSAjMTE0MykuCj4+IAo+PiAg
IE5vdGUgdGhhdCB0aGUgcmVsZXZhbnQgY2hpY2tlbiBiaXRzIGxpdmUgaW4gYSB0cmFuc2NvZGVy
IHJlZ2lzdGVyCj4+ICAgZXZlbiB0aG91Z2ggdGhlIGJpdHMgYWZmZWN0IGEgc3BlY2lmaWMgRERJ
IHBvcnQgcmF0aGVyIHRoYW4gYQo+PiAgIHNwZWNpZmljIHRyYW5zY29kZXIuIEhlbmNlIHdlIG11
c3QgcGljayB0aGUgY29ycmVjdCB0cmFuc2NvZGVyCj4+ICAgcmVnaXN0ZXIgaW5zdGFuY2UgYmFz
ZWQgb24gdGhlIHBvcnQgcmF0aGVyIHRoYW4gYmFzZWQgb24gdGhlCj4+ICAgY3B1X3RyYW5zY29k
ZXIuCj4+IAo+PiAgIEFsc28gbm90ZSB0aGF0IGZvciBjb21wbGV0ZW5lc3MgSSBpbmNsdWRlZCBz
dXBwb3J0IGZvciBEREkgQS9FCj4+ICAgaW4gdGhlIGNvZGUgZXZlbiB0aG91Z2ggd2UgbmV2ZXIg
aGF2ZSBIRE1JIG9uIHRob3NlIHBvcnRzLgo+PiAKPj4gICB2MjogQ0ZMIG5lZWRzIHRoZSB3L2Eg
YXMgd2VsbCAoUm9kcmlnbyBhbmQgQXJ0KQo+PiAKPj4gICBDYzogUm9kcmlnbyBWaXZpIDxyb2Ry
aWdvLnZpdmlAaW50ZWwuY29tPgo+PiAgIENjOiBBcnQgUnVueWFuIDxhcnRodXIuai5ydW55YW5A
aW50ZWwuY29tPgo+PiAgIFNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3ly
amFsYUBsaW51eC5pbnRlbC5jb20+Cj4+ICAgTGluazogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRl
c2t0b3Aub3JnL3BhdGNoL21zZ2lkLzIwMTgwMTIyMTc0MTMxLjI4MDQ2LTEtdmlsbGUuc3lyamFs
YUBsaW51eC5pbnRlbC5jb20KPj4gICBSZXZpZXdlZC1ieTogUm9kcmlnbyBWaXZpIDxyb2RyaWdv
LnZpdmlAaW50ZWwuY29tPgo+PiAKPj4gCj4+IGRtZXNnIGZyb20gZHJtLXRpcCB3aXRoIGRybS5k
ZWJ1Zz0weGUgY2FuIGJlIGZvdW5kIGhlcmU6Cj4+IGh0dHBzOi8vYnVncy5sYXVuY2hwYWQubmV0
L3VidW50dS8rc291cmNlL2xpbnV4LytidWcvMTg3MTcyMS9jb21tZW50cy8KPj4gNjQKPj4gCj4+
IEthaS1IZW5nCj4gCj4gCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZngK
