Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D74C8240FC
	for <lists+intel-gfx@lfdr.de>; Mon, 20 May 2019 21:14:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0ACF789127;
	Mon, 20 May 2019 19:14:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yw1-xc44.google.com (mail-yw1-xc44.google.com
 [IPv6:2607:f8b0:4864:20::c44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8704589207
 for <intel-gfx@lists.freedesktop.org>; Sun,  5 May 2019 16:46:21 +0000 (UTC)
Received: by mail-yw1-xc44.google.com with SMTP id p19so5746002ywe.10
 for <intel-gfx@lists.freedesktop.org>; Sun, 05 May 2019 09:46:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=x0ZvxGqKqkQis3eWKYukVDy0+4WkHGdposYeRQupFOw=;
 b=C1Vsu2qX/7mAIs/6nybaIbNDDgzDFgCGqFI1u3zJ9E6+4hLCaS5pZn9pCX0KkdREki
 5aoYyBQJucbCdDEIZYdaXEntgfIEmyBAghGOna3aIJqUJygRoXwnogQCVQ+kr7M+U3zr
 2MFE3D/FcySIs2/D2LB3rog2z06cNQ78A3L3VP9dT6G9mghcSSrBYnFFwkwfeknPJmEm
 hfyygnSApwuDoh9ETAFtNraV2Xx+jdwqw8AHcTOAFztqJcuZ/9L9KeZ3UvF4zmHXVPDa
 XQtZ/EBESCM4a/YkBRtR1WlY+Z8O5CgB1BNZi/855UtgUQbJrknocNoa3jproI2SGD9G
 MZFA==
X-Gm-Message-State: APjAAAXn8OE0qm/fmeF+5waZnHI2YxL6OpoljRBBkhM406kN6Pz/wlbu
 aQNMqcMB7CIOULPE6ICCkzTzfQ==
X-Google-Smtp-Source: APXvYqybXNSwDNcFaB8gd59q1/W0RHGbNpaxJftPOFeS7R/uocxtpki3475mBso+BoU9TxvSbEqMCw==
X-Received: by 2002:a81:9286:: with SMTP id j128mr13469693ywg.97.1557074780306; 
 Sun, 05 May 2019 09:46:20 -0700 (PDT)
Received: from localhost (adsl-173-228-226-134.prtc.net. [173.228.226.134])
 by smtp.gmail.com with ESMTPSA id 202sm2517705ywt.72.2019.05.05.09.46.19
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 05 May 2019 09:46:19 -0700 (PDT)
Date: Sun, 5 May 2019 12:46:19 -0400
From: Chris Down <chris@chrisdown.name>
To: Leon Romanovsky <leon@kernel.org>
Message-ID: <20190505164619.GA59027@chrisdown.name>
References: <20190501140438.9506-1-brian.welty@intel.com>
 <20190502083433.GP7676@mtr-leonro.mtl.com>
 <CAOWid-cYknxeTQvP9vQf3-i3Cpux+bs7uBs7_o-YMFjVCo19bg@mail.gmail.com>
 <bb001de0-e4e5-6b3f-7ced-9d0fb329635b@intel.com>
 <20190505071436.GD6938@mtr-leonro.mtl.com>
 <CAOWid-di8kcC2bYKq1KJo+rWfVjwQ13mcVRjaBjhFRzTO=c16Q@mail.gmail.com>
 <20190505160506.GF6938@mtr-leonro.mtl.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190505160506.GF6938@mtr-leonro.mtl.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-Mailman-Approved-At: Mon, 20 May 2019 19:14:09 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chrisdown.name; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=x0ZvxGqKqkQis3eWKYukVDy0+4WkHGdposYeRQupFOw=;
 b=xIVhJ3MLZE2ilPDUpTWGrclOXQUa5GWlZDrc3RalvMuJns3oV1XuBnemj2jSVzsB2i
 IaXaj4WAhc/5W6lLfkAlZkIfICx/0C64E6q7DFSEEu5gwNm2t493J415QXaJS/WXqqkg
 HAFVU39KEipINsnsZ4SWXyE9WgOKjVs2tnwVw=
Subject: Re: [Intel-gfx] [RFC PATCH 0/5] cgroup support for GPU devices
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
Cc: Parav Pandit <parav@mellanox.com>, David Airlie <airlied@linux.ie>,
 kenny.ho@amd.com, intel-gfx@lists.freedesktop.org, "Welty,
 Brian" <brian.welty@intel.com>, cgroups@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Michal Hocko <mhocko@kernel.org>,
 Johannes Weiner <hannes@cmpxchg.org>, linux-mm@kvack.org,
 J??r??me Glisse <jglisse@redhat.com>, Li Zefan <lizefan@huawei.com>,
 Kenny Ho <y2kenny@gmail.com>, Vladimir Davydov <vdavydov.dev@gmail.com>,
 Alex Deucher <alexander.deucher@amd.com>, Tejun Heo <tj@kernel.org>,
 Christian K??nig <christian.koenig@amd.com>,
 RDMA mailing list <linux-rdma@vger.kernel.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

TGVvbiBSb21hbm92c2t5IHdyaXRlczoKPkZpcnN0IGdyb3VwIChwcm9ncmFtbWVycykgaXMgdXNp
bmcgc3BlY2lhbCBBUEkgWzFdIHRocm91Z2ggbGliaWJ2ZXJicyBbMl0KPndpdGhvdXQgYW55IG5v
dGlvbiBvZiBjZ3JvdXBzIG9yIGFueSBsaW1pdGF0aW9ucy4gU2Vjb25kIGdyb3VwIChzeXNhZG1p
bnMpCj5pcyBsZXNzIGludGVyZXN0ZWQgaW4gYXBwbGljYXRpb24gc3BlY2lmaWNzIGFuZCBmb3Ig
dGhlbSAiZGV2aWNlIG1lbW9yeSIgbWVhbnMKPiJtZW1vcnkiIGFuZCBub3QgInJkbWEsIG5pYyBz
cGVjaWZpYywgaW50ZXJuYWwgbWVtb3J5Ii4KCkknZCBzdWdnZXN0IG90aGVyd2lzZSwgYmFzZWQg
b24gaGlzdG9yaWMgcHJlY2VkZW50IC0tIHN5c2FkbWlucyBhcmUgdHlwaWNhbGx5IAp2ZXJ5IG9w
aW5pb25hdGVkIGFib3V0IG9wZXJhdGlvbiBvZiB0aGUgbWVtb3J5IHN1YnN5c3RlbSAoaGVuY2Ug
dGhlIGVuZGxlc3MgCmRpc2N1c3Npb25zIGFib3V0IHN3YXAsIGNhY2hpbmcgYmVoYXZpb3VyLCBl
dGMpLgoKRXNwZWNpYWxseSBpbiB0aGlzIGNhc2UsIHRoZXNlIHR5cGVzIG9mIG1lbW9yeSBvcGVy
YXRlIGZ1bmRhbWVudGFsbHkgCmRpZmZlcmVudGx5IGFuZCBoYXZlIHNpZ25pZmljYW50bHkgZGlm
ZmVyZW50IHBlcmZvcm1hbmNlIGFuZCBhdmFpbGFiaWxpdHkgCmNoYXJhY3RlcmlzdGljcy4gVGhh
dCdzIG5vdCBzb21ldGhpbmcgdGhhdCBjYW4gYmUgdHJpdmlhbGx5IGFic3RyYWN0ZWQgb3ZlciAK
d2l0aG91dCBub24tdHJpdmlhbCBkcmF3YmFja3MuCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeA==
