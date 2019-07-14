Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A3F486862A
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Jul 2019 11:19:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0FD4C89786;
	Mon, 15 Jul 2019 09:19:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com
 [IPv6:2a00:1450:4864:20::441])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5C5A089711
 for <intel-gfx@lists.freedesktop.org>; Sun, 14 Jul 2019 12:51:54 +0000 (UTC)
Received: by mail-wr1-x441.google.com with SMTP id n9so14338429wru.0
 for <intel-gfx@lists.freedesktop.org>; Sun, 14 Jul 2019 05:51:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=GgqwygSdxQEZ5aA25e0WceOtjzxTkMwT4alcxFFAJ5g=;
 b=V7dBGWx2VoZqG6sNFqQTLs3qaUvca1oaPbYxI/0ZD/vYjM/beosLkXqOCqJVgJi0mp
 Ge2PXFhi2rrkOgkgHFF6EN9oygTj/IR2zweaKdOuw5HyKzwclQsiYq4jRXF58o4gFUrg
 g7IGgYt+2/UlRhWKQUBzNzGFKuvm1P2EIr2l9MoQHlQrkQv/7N82ejINyIiorADnMhZt
 tMvptgcDkgTIhssECeMesZxJOdHNrsoR27V2OM3N1ZXiYYnGwaDwyFzYIegn0iGIXZ7K
 2dfl3MMEgN7f5C65fNdC99KICydQdrtuhgle5Bda9sYZWf+bxpGXjxYF1uJUEqipYEgD
 jtcw==
X-Gm-Message-State: APjAAAXIcJbMRP674WLbYSFFaxU3GySedYku9U5CveflSVqsA4qRStnC
 UUJB1CQdh+0xThi7FQogkpmYD39Q
X-Google-Smtp-Source: APXvYqysNf5fcVAp4I8Z9haFYxLCQhSKCWPFz6oGlwvjwTfb4ybsoAK+iiIABdxY3IUl9p5FrI+8Tg==
X-Received: by 2002:adf:c508:: with SMTP id q8mr23075349wrf.148.1563108712733; 
 Sun, 14 Jul 2019 05:51:52 -0700 (PDT)
Received: from ?IPv6:2003:ea:8bd6:c00:d02b:6ffb:30c3:f31c?
 (p200300EA8BD60C00D02B6FFB30C3F31C.dip0.t-ipconnect.de.
 [2003:ea:8bd6:c00:d02b:6ffb:30c3:f31c])
 by smtp.googlemail.com with ESMTPSA id n1sm10913614wrx.39.2019.07.14.05.51.51
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 14 Jul 2019 05:51:52 -0700 (PDT)
To: Chris Wilson <chris@chris-wilson.co.uk>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
References: <f4d7d506-bed5-c205-8532-0d360f9eee04@gmail.com>
 <09346773-8023-9c32-7650-48daa4ec546c@gmail.com>
 <156310765929.9436.10195271706258664728@skylake-alporthouse-com>
 <eeae3226-4bdf-3d90-2651-cb75e91e6f14@gmail.com>
 <156310838731.9436.10439630434196784138@skylake-alporthouse-com>
From: Heiner Kallweit <hkallweit1@gmail.com>
Message-ID: <3e7a4865-0d5e-5dca-ce03-f72e834c5c0e@gmail.com>
Date: Sun, 14 Jul 2019 14:51:45 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <156310838731.9436.10439630434196784138@skylake-alporthouse-com>
Content-Language: en-US
X-Mailman-Approved-At: Mon, 15 Jul 2019 09:19:36 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=GgqwygSdxQEZ5aA25e0WceOtjzxTkMwT4alcxFFAJ5g=;
 b=CnSLShPje4x6KorLR5ye1sWn4FlbkHaGxdA7rfXJcPxPRaSm7gMQJcV1jQW2aXIJja
 yhja84F+DvsZ/TeeBlZIiI+IjZcZH3BnSiV7k4s31BGGTkTz3+xnjMNjgToyeyUxAI69
 23awx+/SEcHNWoE/+GXLhXe9feY65ZSHNg85tP/sHtgopSRSBakaT0jDlZoPpuMmqZXL
 LYXZQnETeC9SJUY3BHddW/1y3t7CvABTgzLk0+kTwEoFpdKQaT8cWZvLoWV6I79nG1GS
 9EGfk8MXrzdrne86V3nz33ns6kAB7JsAEEnY6BwX9gxhf4PSLSqu+itCwrZm33wad9Vs
 R9vg==
Subject: Re: [Intel-gfx] NPE in i915_gemfs_init
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gMTQuMDcuMjAxOSAxNDo0NiwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+IFF1b3RpbmcgSGVpbmVy
IEthbGx3ZWl0ICgyMDE5LTA3LTE0IDEzOjM5OjE1KQo+PiBPbiAxNC4wNy4yMDE5IDE0OjM0LCBD
aHJpcyBXaWxzb24gd3JvdGU6Cj4+PiBRdW90aW5nIEhlaW5lciBLYWxsd2VpdCAoMjAxOS0wNy0x
MyAxMjoxMjo1NikKPj4+PiBJIGRlYnVnZ2VkIGEgbGl0dGxlIGJpdCBhbmQgcmVtb3VudF9mcyBp
c24ndCBzZXQgaW4gc2ItPnNfb3AuCj4+Pj4gVGhlIGZvbGxvd2luZyBhdCBsZWFzdCBhdm9pZHMg
dGhlIE5QRSwgbm90IHN1cmUgd2hldGhlciBpdCdzIHRoZSBjb3JyZWN0IGZpeC4KPj4+Cj4+PiBJ
IHRha2UgaXQgeW91IGRvbid0IGhhdmUgQ09ORklHX1RNUEZTIHNldD8KPj4+Cj4+IFRoaXMgb3B0
aW9uIGlzIHNldDoKPj4KPj4gW3Jvb3RAem90YWMgbGludXgtbmV4dF0jIGdyZXAgVE1QRlMgLmNv
bmZpZwo+PiBDT05GSUdfREVWVE1QRlM9eQo+PiBDT05GSUdfREVWVE1QRlNfTU9VTlQ9eQo+PiBD
T05GSUdfVE1QRlM9eQo+PiBDT05GSUdfVE1QRlNfUE9TSVhfQUNMPXkKPj4gQ09ORklHX1RNUEZT
X1hBVFRSPXkKPiAKPiBOb3cgdGhhdCdzIHdlaXJkLCBhcwo+IAo+IHN0YXRpYyBjb25zdCBzdHJ1
Y3Qgc3VwZXJfb3BlcmF0aW9ucyBzaG1lbV9vcHMgPSB7Cj4gICAgICAgICAuYWxsb2NfaW5vZGUg
ICAgPSBzaG1lbV9hbGxvY19pbm9kZSwKPiAgICAgICAgIC5mcmVlX2lub2RlICAgICA9IHNobWVt
X2ZyZWVfaW5fY29yZV9pbm9kZSwKPiAgICAgICAgIC5kZXN0cm95X2lub2RlICA9IHNobWVtX2Rl
c3Ryb3lfaW5vZGUsCj4gI2lmZGVmIENPTkZJR19UTVBGUwo+ICAgICAgICAgLnN0YXRmcyAgICAg
ICAgID0gc2htZW1fc3RhdGZzLAo+ICAgICAgICAgLnJlbW91bnRfZnMgICAgID0gc2htZW1fcmVt
b3VudF9mcywKPiAgICAgICAgIC5zaG93X29wdGlvbnMgICA9IHNobWVtX3Nob3dfb3B0aW9ucywK
PiAjZW5kaWYKPiAgICAgICAgIC5ldmljdF9pbm9kZSAgICA9IHNobWVtX2V2aWN0X2lub2RlLAo+
ICAgICAgICAgLmRyb3BfaW5vZGUgICAgID0gZ2VuZXJpY19kZWxldGVfaW5vZGUsCj4gICAgICAg
ICAucHV0X3N1cGVyICAgICAgPSBzaG1lbV9wdXRfc3VwZXIsCj4gI2lmZGVmIENPTkZJR19UUkFO
U1BBUkVOVF9IVUdFX1BBR0VDQUNIRQo+ICAgICAgICAgLm5yX2NhY2hlZF9vYmplY3RzICAgICAg
PSBzaG1lbV91bnVzZWRfaHVnZV9jb3VudCwKPiAgICAgICAgIC5mcmVlX2NhY2hlZF9vYmplY3Rz
ICAgID0gc2htZW1fdW51c2VkX2h1Z2Vfc2NhbiwKPiAjZW5kaWYKPiB9Owo+IAo+IHRoZSBvbmx5
IHdheSBpdCBzaG91bGQgYmUgdW5zZXQgd2FzIGlmICFDT05GSUdfVE1QRlMuCj4gCj4gSG1tLCB3
ZSBldmVuIHNlbGVjdCBUTVBGUyBzbyBpdCBzaG91bGQgbmV2ZXIgYmUgYWJzZW50Lgo+IAo+IFNv
IHRoZSBxdWVzdGlvbiBpcyB3aGF0IG1vdW50IGRpZCB3ZSBnZXQgaWYgaXQgd2FzIG5vdCBhIHNo
bWVtZnMgb25lPwo+IC1DaHJpcwo+IApJIHRoaW5rIHRoYXQncyB0aGUgcmVhc29uOgoxNDRkZjNi
Mjg4YzQgKCJ2ZnM6IENvbnZlcnQgcmFtZnMsIHNobWVtLCB0bXBmcywgZGV2dG1wZnMsIHJvb3Rm
cyB0byB1c2UgdGhlIG5ldyBtb3VudCBBUEkiKQoKQEAgLTM3MzYsNyArMzg0OSw2IEBAIHN0YXRp
YyBjb25zdCBzdHJ1Y3Qgc3VwZXJfb3BlcmF0aW9ucyBzaG1lbV9vcHMgPSB7CiAJLmRlc3Ryb3lf
aW5vZGUJPSBzaG1lbV9kZXN0cm95X2lub2RlLAogI2lmZGVmIENPTkZJR19UTVBGUwogCS5zdGF0
ZnMJCT0gc2htZW1fc3RhdGZzLAotCS5yZW1vdW50X2ZzCT0gc2htZW1fcmVtb3VudF9mcywKIAku
c2hvd19vcHRpb25zCT0gc2htZW1fc2hvd19vcHRpb25zLAogI2VuZGlmCiAJLmV2aWN0X2lub2Rl
CT0gc2htZW1fZXZpY3RfaW5vZGUsCgpNb3N0IGxpa2VseSB0aGlzICJuZXcgbW91bnQgQVBJIiBp
bXBhY3RzIHlvdXIgY29kZS4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4
