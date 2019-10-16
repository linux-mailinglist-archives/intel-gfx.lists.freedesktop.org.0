Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E38CCD9BF4
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Oct 2019 22:51:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 020E06E176;
	Wed, 16 Oct 2019 20:51:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com
 [IPv6:2a00:1450:4864:20::444])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8F6E16E176
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Oct 2019 20:51:43 +0000 (UTC)
Received: by mail-wr1-x444.google.com with SMTP id y19so29601244wrd.3
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Oct 2019 13:51:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:reply-to:subject:to:references:from:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=niodZCURjbU2+DrGNmBH8GcyR+W0cH5XiV7oXJ8Tvok=;
 b=W8BtVeaiHzAExFwh9unhE/5OgT+zJWjuELeaTo3hPt7SOKaAS6GvanDV5OlOBd3VDJ
 qDtf04pdOpwbSdCLQDE0RJARbg6QC75UVLWuiJ1phSmXLOZrUglFSt07gB8FtkslvXhI
 VdTT/f2VjOPPvofmmxQ4pxZ2ifOnBuqJJnQAFFfc1TBkUTLdSvI8kyTbz0NFb6IrrhC+
 3eg1wkP3tnwzECbZkpT22L8ZZHLJ4r3LQTq/9w9HH5Y2RBa4xq9d5AiAjRQey9EMIYNq
 m4dSQc6HzV0zxGqEF5ZT0QjU0HES2JtG9COwJf9ZcNlUd9sf4+pSs2r1ANTUk10R6NgW
 0Fjg==
X-Gm-Message-State: APjAAAWemF554KiOPpSv18Fw1hifUfhg4taq0aQOS3cvz6re3BOUTH+N
 IRvN38Q5VA72kFvSD/1eKs4WGnVPpwU=
X-Google-Smtp-Source: APXvYqxGXiNxoewkceuBgxs97Hcsj62H8eT3FjBN+9fRvlAVetIB3XAzlgTKiAsr3xczPNmTdc238g==
X-Received: by 2002:a5d:4f91:: with SMTP id d17mr4369325wru.184.1571259101655; 
 Wed, 16 Oct 2019 13:51:41 -0700 (PDT)
Received: from [0.0.0.0] ([134.134.139.76])
 by smtp.googlemail.com with ESMTPSA id x9sm93649wrq.63.2019.10.16.13.51.38
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 16 Oct 2019 13:51:40 -0700 (PDT)
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20191015152757.12231-1-ville.syrjala@linux.intel.com>
From: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
Message-ID: <1e527228-09bd-40b0-96c9-ec4708936ca3@gmail.com>
Date: Wed, 16 Oct 2019 23:51:32 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20191015152757.12231-1-ville.syrjala@linux.intel.com>
Content-Language: en-US
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=reply-to:subject:to:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=niodZCURjbU2+DrGNmBH8GcyR+W0cH5XiV7oXJ8Tvok=;
 b=sDbRmNeL/j2yYQUyf1u8Aj197+1xmp5eGyS7GDyhx+NCvqF61fLgybhuIpWukH2HX8
 QkTtVXbAgm1rK0srQZeUXZmGhVOxOakUMJDuEWv4qlMDqnrjcjlBQyEP5sulu7BCcnxR
 dp+SDWB4o430b/03wjAceHjpPHBlSnPuQl4FtfROqF052PGDKk908ypyTjK4wAFaXO8g
 VmTfpBQ/pxpuFs6cht3Ogm2wK7+9LLuo8R2Grhjaa2xr0koh0/sbSGjbIEzpWpR8xItX
 5f4L3OSgOzn1KlEKYgFGOsFRs/qyT6ydYkaq+yqK4Ts0Vk2fQaOp0UqOsCQ9lpxo02jt
 lVAw==
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Move the cursor rotation handling
 into intel_cursor_check_surface()
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
Reply-To: juhapekka.heikkila@gmail.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

CgpSZXZpZXdlZC1ieTogSnVoYS1QZWtrYSBIZWlra2lsYSA8anVoYXBla2thLmhlaWtraWxhQGdt
YWlsLmNvbT4KCgpPbiAxNS4xMC4yMDE5IDE4LjI3LCBWaWxsZSBTeXJqYWxhIHdyb3RlOgo+IEZy
b206IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4gCj4g
VW5saWtlIG90aGVyIHBsYW5lcyB0aGUgY3Vyc29yIGN1cnJlbnRseSBoYW5kbGVzIDE4MCBkZWdy
ZWUgcm90YXRpb24KPiBhZGp1c3RtZW50IGR1cmluZyB0aGUgaGFyZHdhcmUgcHJvZ3JhbW1pbmcg
cGhhc2UuIExldCdzIG1vdmUgdGhhdAo+IHN0dWZmIGludG8gaW50ZWxfY3Vyc29yX2NoZWNrX3N1
cmZhY2UoKSB0byBtYXRjaCBob3cgd2UgZG8gdGhpbmdzCj4gd2l0aCBvdGhlciBwbGFuZSB0eXBl
cy4KPiAKPiBBbmQgd2hpbGUgYXQgd2UnbGwgcGxvcCBpbiB0aGUgZmluYWwgc3JjIHgveSBjb29y
ZGluYXRlcyAod2hpY2ggd2lsbAo+IGFjdHVhbGx5IGFsd2F5cyBiZSB6ZXJvKSBpbnRvIHRoZSBz
cmMgcmVjdCBhbmQgY29sb3JfcGxhbmVbMF0ueC95LAo+IGp1c3QgZm9yIHNvbWUgZXh0cmEgY29u
c2lzdGVuY3kuCj4gCj4gU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJq
YWxhQGxpbnV4LmludGVsLmNvbT4KPiAtLS0KPiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZGlzcGxheS5jIHwgMzEgKysrKysrKysrKysrKystLS0tLS0KPiAgIDEgZmlsZSBj
aGFuZ2VkLCAyMiBpbnNlcnRpb25zKCspLCA5IGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCj4gaW5kZXggN2Q3ZDE4NTk3NzVh
Li42YTEwNWRjNmUxNjggMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kaXNwbGF5LmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2Rpc3BsYXkuYwo+IEBAIC0xMDUyNCwxNSArMTA1MjQsNyBAQCBzdGF0aWMgdTMyIGludGVs
X2N1cnNvcl9iYXNlKGNvbnN0IHN0cnVjdCBpbnRlbF9wbGFuZV9zdGF0ZSAqcGxhbmVfc3RhdGUp
Cj4gICAJZWxzZQo+ICAgCQliYXNlID0gaW50ZWxfcGxhbmVfZ2d0dF9vZmZzZXQocGxhbmVfc3Rh
dGUpOwo+ICAgCj4gLQliYXNlICs9IHBsYW5lX3N0YXRlLT5jb2xvcl9wbGFuZVswXS5vZmZzZXQ7
Cj4gLQo+IC0JLyogSUxLKyBkbyB0aGlzIGF1dG9tYWdpY2FsbHkgKi8KPiAtCWlmIChIQVNfR01D
SChkZXZfcHJpdikgJiYKPiAtCSAgICBwbGFuZV9zdGF0ZS0+YmFzZS5yb3RhdGlvbiAmIERSTV9N
T0RFX1JPVEFURV8xODApCj4gLQkJYmFzZSArPSAoZHJtX3JlY3RfaGVpZ2h0KCZwbGFuZV9zdGF0
ZS0+YmFzZS5kc3QpICoKPiAtCQkJIGRybV9yZWN0X3dpZHRoKCZwbGFuZV9zdGF0ZS0+YmFzZS5k
c3QpIC0gMSkgKiBmYi0+Zm9ybWF0LT5jcHBbMF07Cj4gLQo+IC0JcmV0dXJuIGJhc2U7Cj4gKwly
ZXR1cm4gYmFzZSArIHBsYW5lX3N0YXRlLT5jb2xvcl9wbGFuZVswXS5vZmZzZXQ7Cj4gICB9Cj4g
ICAKPiAgIHN0YXRpYyB1MzIgaW50ZWxfY3Vyc29yX3Bvc2l0aW9uKGNvbnN0IHN0cnVjdCBpbnRl
bF9wbGFuZV9zdGF0ZSAqcGxhbmVfc3RhdGUpCj4gQEAgLTEwNTY5LDYgKzEwNTYxLDkgQEAgc3Rh
dGljIGJvb2wgaW50ZWxfY3Vyc29yX3NpemVfb2soY29uc3Qgc3RydWN0IGludGVsX3BsYW5lX3N0
YXRlICpwbGFuZV9zdGF0ZSkKPiAgIAo+ICAgc3RhdGljIGludCBpbnRlbF9jdXJzb3JfY2hlY2tf
c3VyZmFjZShzdHJ1Y3QgaW50ZWxfcGxhbmVfc3RhdGUgKnBsYW5lX3N0YXRlKQo+ICAgewo+ICsJ
c3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0KPiArCQl0b19pOTE1KHBsYW5lX3N0
YXRlLT5iYXNlLnBsYW5lLT5kZXYpOwo+ICsJdW5zaWduZWQgaW50IHJvdGF0aW9uID0gcGxhbmVf
c3RhdGUtPmJhc2Uucm90YXRpb247Cj4gICAJaW50IHNyY194LCBzcmNfeTsKPiAgIAl1MzIgb2Zm
c2V0Owo+ICAgCWludCByZXQ7Cj4gQEAgLTEwNTkyLDcgKzEwNTg3LDI1IEBAIHN0YXRpYyBpbnQg
aW50ZWxfY3Vyc29yX2NoZWNrX3N1cmZhY2Uoc3RydWN0IGludGVsX3BsYW5lX3N0YXRlICpwbGFu
ZV9zdGF0ZSkKPiAgIAkJcmV0dXJuIC1FSU5WQUw7Cj4gICAJfQo+ICAgCj4gKwkvKgo+ICsJICog
UHV0IHRoZSBmaW5hbCBjb29yZGluYXRlcyBiYWNrIHNvIHRoYXQgdGhlIHNyYwo+ICsJICogY29v
cmRpbmF0ZSBjaGVja3Mgd2lsbCBzZWUgdGhlIHJpZ2h0IHZhbHVlcy4KPiArCSAqLwo+ICsJZHJt
X3JlY3RfdHJhbnNsYXRlX3RvKCZwbGFuZV9zdGF0ZS0+YmFzZS5zcmMsCj4gKwkJCSAgICAgIHNy
Y194IDw8IDE2LCBzcmNfeSA8PCAxNik7Cj4gKwo+ICsJLyogSUxLKyBkbyB0aGlzIGF1dG9tYWdp
Y2FsbHkgaW4gaGFyZHdhcmUgKi8KPiArCWlmIChIQVNfR01DSChkZXZfcHJpdikgJiYgcm90YXRp
b24gJiBEUk1fTU9ERV9ST1RBVEVfMTgwKSB7Cj4gKwkJY29uc3Qgc3RydWN0IGRybV9mcmFtZWJ1
ZmZlciAqZmIgPSBwbGFuZV9zdGF0ZS0+YmFzZS5mYjsKPiArCQlpbnQgc3JjX3cgPSBkcm1fcmVj
dF93aWR0aCgmcGxhbmVfc3RhdGUtPmJhc2Uuc3JjKSA+PiAxNjsKPiArCQlpbnQgc3JjX2ggPSBk
cm1fcmVjdF9oZWlnaHQoJnBsYW5lX3N0YXRlLT5iYXNlLnNyYykgPj4gMTY7Cj4gKwo+ICsJCW9m
ZnNldCArPSAoc3JjX2ggKiBzcmNfdyAtIDEpICogZmItPmZvcm1hdC0+Y3BwWzBdOwo+ICsJfQo+
ICsKPiAgIAlwbGFuZV9zdGF0ZS0+Y29sb3JfcGxhbmVbMF0ub2Zmc2V0ID0gb2Zmc2V0Owo+ICsJ
cGxhbmVfc3RhdGUtPmNvbG9yX3BsYW5lWzBdLnggPSBzcmNfeDsKPiArCXBsYW5lX3N0YXRlLT5j
b2xvcl9wbGFuZVswXS55ID0gc3JjX3k7Cj4gICAKPiAgIAlyZXR1cm4gMDsKPiAgIH0KPiAKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
