Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D925120A624
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Jun 2020 21:51:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B2496EC11;
	Thu, 25 Jun 2020 19:51:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lj1-x242.google.com (mail-lj1-x242.google.com
 [IPv6:2a00:1450:4864:20::242])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DA72B6EC11
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Jun 2020 19:51:27 +0000 (UTC)
Received: by mail-lj1-x242.google.com with SMTP id s1so7898947ljo.0
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Jun 2020 12:51:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=hardline-pl.20150623.gappssmtp.com; s=20150623;
 h=mime-version:content-transfer-encoding:cc:in-reply-to:references
 :from:to:subject:date:message-id:user-agent;
 bh=/9mPFO4VOl6Jx+0PXrVCSEi2BlWdY2vM3RdAZfphLJM=;
 b=0JmDMO1H+aZD0KcDJNDw5vg+cy6ReMISyYm7JJBglChyTaMtv/Nan20t8T7/KA6EAN
 W+lLvpNWLW3DbYy/Lq52cnheHCZIONPl82dU/QrTfrajNtLYc8EksidegkGDDp+vi2W/
 4hQCL9eENdcKpabebcdJWB1YKi/SfoHdsSe9KdEwOGYMV8laBaHbgOtbMV7crnCcA0Kg
 +VkODmWifHsJm3nDCUxX6oXmOZBfxFVaqfj3ga4bkQZlEMlcDPTaCZFtNoWQzCENn6rf
 66inV58BlNNLgc9lPeoVxj8Oq4/5bxDVNfS+mjAGifCk/Mbz6ECQ8JlAto5yl6IxQpsN
 ONQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:content-transfer-encoding:cc
 :in-reply-to:references:from:to:subject:date:message-id:user-agent;
 bh=/9mPFO4VOl6Jx+0PXrVCSEi2BlWdY2vM3RdAZfphLJM=;
 b=Xac5WNhrXgBUkiu1RNa8iwsqBgNui6muMdhVYKFt94UXX0HOVZlJ+RDRozX84BY9Qa
 MceC1QbbilKdxP4BVTAYZWiDJtPi55SNZog9nrHks5kJC4gem1+a3WQv6kDjFYg7G6Yd
 XZmMvnuo9PC+KLsbv4Xp597pZbFGDkY9pZCswwnDZf2Ee0nqOM6RMN61UPPi+vltPHhY
 Dz28JtAWrpsUjbpKHJWPHbD220rk/dn8pb1K6U7MrUwhd6kAQwkCR1g7VyC0G+OJIJU5
 lDbsEGoIV+R5sd1OZ2guLmH5v7y092IzJ079Ty8ybaQN2VJiOZi0IapQQZPO6WAhIdNP
 /XQg==
X-Gm-Message-State: AOAM533iX1nnONReAqGj9jZ3gUyYwMh/VPDw8CfVhSLHTIrzwpnVmoOd
 2Jqpo2892aFqc0jIpRaguXKTefdjE8U=
X-Google-Smtp-Source: ABdhPJzDgOa0BeBox3r811bHkiC239Fqt++bej2cPkfuutf9GV28HKvcr4VtzrT1yIZeFOFN4CgkjA==
X-Received: by 2002:a05:651c:38b:: with SMTP id
 e11mr17082068ljp.415.1593114685977; 
 Thu, 25 Jun 2020 12:51:25 -0700 (PDT)
Received: from localhost (109241244009.gdansk.vectranet.pl. [109.241.244.9])
 by smtp.gmail.com with ESMTPSA id y16sm4989331ljm.19.2020.06.25.12.51.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 25 Jun 2020 12:51:25 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20200622164415.30352-7-janusz.krzysztofik@linux.intel.com>
References: <20200622164415.30352-1-janusz.krzysztofik@linux.intel.com>
 <20200622164415.30352-7-janusz.krzysztofik@linux.intel.com>
From: =?utf-8?q?Micha=C5=82?= Winiarski <michal@hardline.pl>
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 igt-dev@lists.freedesktop.org
Date: Thu, 25 Jun 2020 21:51:24 +0200
Message-ID: <159311468453.202818.18055756190300144808@macragge.hardline.pl>
User-Agent: alot/0.9.1
Subject: Re: [Intel-gfx] [igt-dev] [RFC PATCH i-g-t v2 6/8]
 tests/core_hotunplug: Add 'GEM object' variant
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBKYW51c3ogS3J6eXN6dG9maWsgKDIwMjAtMDYtMjIgMTg6NDQ6MTMpCj4gR0VNIG9i
amVjdHMgYmVsb25naW5nIHRvIHVzZXIgZmlsZSBkZXNjcmlwdG9ycyBzdGlsbCBvcGVuIG9uIGRl
dmljZQo+IGhvdHVucGx1ZyBtYXkgZXhoaWJpdCBzdGlsbCBtb3JlIGRyaXZlciBpc3N1ZXMuICBB
ZGQgYSBzdWJ0ZXN0IHRoYXQKPiBpbXBsZW1lbnRzIHRoaXMgc2NlbmFyaW8uCj4gCj4gdjI6IHJl
YmFzZSBvbiB1cHN0cmVhbQo+IAo+IFNpZ25lZC1vZmYtYnk6IEphbnVzeiBLcnp5c3p0b2ZpayA8
amFudXN6LmtyenlzenRvZmlrQGxpbnV4LmludGVsLmNvbT4KPiAtLS0KPiAgdGVzdHMvY29yZV9o
b3R1bnBsdWcuYyB8IDMwICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKwo+ICAxIGZpbGUg
Y2hhbmdlZCwgMzAgaW5zZXJ0aW9ucygrKQo+IAo+IGRpZmYgLS1naXQgYS90ZXN0cy9jb3JlX2hv
dHVucGx1Zy5jIGIvdGVzdHMvY29yZV9ob3R1bnBsdWcuYwo+IGluZGV4IDE4YTk2MzU2NC4uYzMw
ZDk4YTY5IDEwMDY0NAo+IC0tLSBhL3Rlc3RzL2NvcmVfaG90dW5wbHVnLmMKPiArKysgYi90ZXN0
cy9jb3JlX2hvdHVucGx1Zy5jCj4gQEAgLTM1Niw2ICszNTYsMjkgQEAgc3RhdGljIHZvaWQgdm1f
aG90dW5wbHVnX2xhdGVjbG9zZSh2b2lkKQo+ICAgICAgICAgaGVhbHRoY2hlY2soKTsKPiAgfQo+
ICAKPiArc3RhdGljIHZvaWQgZ2VtX2hvdHVucGx1Z19sYXRlY2xvc2Uodm9pZCkKPiArewo+ICsg
ICAgICAgc3RydWN0IGhvdHVucGx1ZyBwcml2Owo+ICsKPiArICAgICAgIHByZXBhcmVfZm9yX3Jl
c2NhbigmcHJpdik7Cj4gKwo+ICsgICAgICAgaWd0X3JlcXVpcmVfZ2VtKHByaXYuZmQuZHJtKTsK
PiArCj4gKyAgICAgICBsb2NhbF9kZWJ1ZygiY3JlYXRpbmcgYSBHRU0gdXNlciBvYmplY3QiKTsK
PiArICAgICAgIGlndF9pZ25vcmVfd2FybihnZW1fY3JlYXRlKHByaXYuZmQuZHJtLCA0MDk2KSk7
CgpTYW1lIGFzIHByZXZpb3VzIG9uZS4KKG5vdGUgLSB3ZSBjb3VsZCBqdXN0IGNoZWNrIGZvciBw
cm9wZXIgZXJyb3Igd2hlbiB3ZSBhdHRlbXB0IHRvIGNsb3NlIHRoaXMKaGFuZGxlIGFmdGVyIHVu
cGx1ZywgYW5kIHRoZSBzYW1lIHRoaW5nIGFwcGxpZXMgdG8gdGhlIHByZXZpb3VzIG9uZSB3aXRo
IHRoZSB2bSkKCkxHVE0gb3RoZXJ3aXNlLgoKUmV2aWV3ZWQtYnk6IE1pY2hhxYIgV2luaWFyc2tp
IDxtaWNoYWwud2luaWFyc2tpQGludGVsLmNvbT4KCi1NaWNoYcWCCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
