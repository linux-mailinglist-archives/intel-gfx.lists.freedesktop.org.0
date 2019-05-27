Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 49B5F2AF35
	for <lists+intel-gfx@lfdr.de>; Mon, 27 May 2019 09:09:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1EAE689856;
	Mon, 27 May 2019 07:09:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x544.google.com (mail-ed1-x544.google.com
 [IPv6:2a00:1450:4864:20::544])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C21388985A
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 May 2019 07:09:03 +0000 (UTC)
Received: by mail-ed1-x544.google.com with SMTP id n17so25263336edb.0
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 May 2019 00:09:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :in-reply-to:user-agent;
 bh=2OVAiP3AbT5S3JQwppK7lDiLikNBY/Eh8otDHbqTt1I=;
 b=TKTvntlSLpTpVBNhPYXlL3CFSnmnpwjo3EeiRUW+3c2rNAgzgcqCPHFk/JAsynZifd
 nkLLXkgmcIcHKPoAG2ehKaDyWqToYoRp9ZYfxnJzm/53aSiakelJACA7nD0l4Mk1Ghxl
 DMAN1/YbJnhuD65byODY2thwTrAulqn+p1lFdxhiK7Vb0KqlE2iEivnju8JQZEFqfg7j
 42rESmgBpJp2ywg91rgVKHvK/n6BhGo7j8XafuleE3YTeLd8wsnoK91My+GseQh0vs+m
 S2rt0i+2B1dQaGjVhqDL+iIKUeD1CEipx7SkXxgMopJloumxazOf/nFcEzKDHx+iJb3J
 ZBYA==
X-Gm-Message-State: APjAAAU1jUI/KiouMimdkmoSlXafcT6iQi5vOFls5gwQH7nQcXqkMwIZ
 fEW7Aja4i4791tVJVYyJFIC8Sw==
X-Google-Smtp-Source: APXvYqyfQKMMUcyTT9MY21mZncZ3r4leh9GCF7kd6VRE2wcGOWT+jU8bj311fhTZFjgSifdSy6nCAg==
X-Received: by 2002:a17:906:9145:: with SMTP id
 y5mr51770439ejw.206.1558940942348; 
 Mon, 27 May 2019 00:09:02 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id w10sm2984595eds.88.2019.05.27.00.09.00
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 27 May 2019 00:09:01 -0700 (PDT)
Date: Mon, 27 May 2019 09:08:58 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: LKML <linux-kernel@vger.kernel.org>
Message-ID: <20190527070858.GJ21222@phenom.ffwll.local>
Mail-Followup-To: LKML <linux-kernel@vger.kernel.org>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Nicolas Pitre <nicolas.pitre@linaro.org>,
 Martin Hostettler <textshell@uchuujin.de>,
 Adam Borowski <kilobyte@angband.pl>,
 Mikulas Patocka <mpatocka@redhat.com>
References: <20190524085354.27411-1-daniel.vetter@ffwll.ch>
 <20190524085354.27411-5-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190524085354.27411-5-daniel.vetter@ffwll.ch>
X-Operating-System: Linux phenom 4.14.0-3-amd64 
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=sender:date:from:to:cc:subject:message-id:mail-followup-to
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=2OVAiP3AbT5S3JQwppK7lDiLikNBY/Eh8otDHbqTt1I=;
 b=bz5lv9GXu67K0UZ5ZBo/zLJMbksiMirzuNpLtXHrSjqKldsPiZYCokHawAUTG7XBhk
 vvh32N/8ZE45r/Bh1+kGhRqt0zER9ouCxR5hYy0VG6lDRpdevZAhvhV+GIQTt1nDkSH0
 CqwMtAvHoZ9NHUsp4QbJix5wjmUrCs2L90K+4=
Subject: Re: [Intel-gfx] [PATCH 04/33] vt: More locking checks
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
Cc: Nicolas Pitre <nicolas.pitre@linaro.org>,
 Adam Borowski <kilobyte@angband.pl>, Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Martin Hostettler <textshell@uchuujin.de>,
 Mikulas Patocka <mpatocka@redhat.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCBNYXkgMjQsIDIwMTkgYXQgMTA6NTM6MjVBTSArMDIwMCwgRGFuaWVsIFZldHRlciB3
cm90ZToKPiBJIGhvbmVzdGx5IGhhdmUgbm8gaWRlYSB3aGF0IHRoZSBzdWJ0bGUgZGlmZmVyZW5j
ZXMgYmV0d2Vlbgo+IGNvbl9pc192aXNpYmxlLCBjb25faXNfZmcgKGludGVybmFsIHRvIHZ0LmMp
IGFuZCBjb25faXNfYm91bmQgYXJlLiBCdXQKPiBpdCBsb29rcyBsaWtlIGJvdGggdmMtPnZjX2Rp
c3BsYXlfZmcgYW5kIGNvbl9kcml2ZXJfbWFwIGFyZSBwcm90ZWN0ZWQKPiBieSB0aGUgY29uc29s
ZV9sb2NrLCBzbyBwcm9iYWJseSBiZXR0ZXIgaWYgd2UgaG9sZCB0aGF0IHdoZW4gY2hlY2tpbmcK
PiB0aGlzLgo+IAo+IFRvIGRvIHRoYXQgSSBoYWQgdG8gZGVpbmxpbmUgdGhlIGNvbl9pc192aXNp
YmxlIGZ1bmN0aW9uLgo+IAo+IFNpZ25lZC1vZmYtYnk6IERhbmllbCBWZXR0ZXIgPGRhbmllbC52
ZXR0ZXJAaW50ZWwuY29tPgo+IENjOiBHcmVnIEtyb2FoLUhhcnRtYW4gPGdyZWdraEBsaW51eGZv
dW5kYXRpb24ub3JnPgo+IENjOiBOaWNvbGFzIFBpdHJlIDxuaWNvbGFzLnBpdHJlQGxpbmFyby5v
cmc+Cj4gQ2M6IE1hcnRpbiBIb3N0ZXR0bGVyIDx0ZXh0c2hlbGxAdWNodXVqaW4uZGU+Cj4gQ2M6
IEFkYW0gQm9yb3dza2kgPGtpbG9ieXRlQGFuZ2JhbmQucGw+Cj4gQ2M6IERhbmllbCBWZXR0ZXIg
PGRhbmllbC52ZXR0ZXJAZmZ3bGwuY2g+Cj4gQ2M6IE1pa3VsYXMgUGF0b2NrYSA8bXBhdG9ja2FA
cmVkaGF0LmNvbT4KCkhpIEdyZWcsCgpEbyB5b3Ugd2FudCB0byBtZXJnZSB0aGlzIHRocm91Z2gg
eW91ciBjb25zb2xlIHRyZWUgb3IgYWNrIGZvciBtZXJnaW5nCnRocm91Z2ggZHJtL2ZiZGV2PyBJ
dCdzIHBhcnQgb2YgYSBiaWdnZXIgc2VyaWVzLCBhbmQgSSdkIGxpa2UgdG8gaGF2ZSBtb3JlCnRl
c3Rpbmcgd2l0aCB0aGlzIGluIG91ciB0cmVlcywgYnV0IGFsc28gb2sgdG8gbWVyZ2Ugc3RhbmQt
YWxvbmUgaWYgeW91CnByZWZlciB0aGF0LiBJdCdzIGp1c3QgbG9ja2luZyBjaGVja3MgYW5kIHNv
bWUgZG9jcy4KClNhbWUgZm9yIHRoZSBwcmVjZWVkaW5nIHBhdGNoIGluIHRoaXMgc2VyaWVzIGhl
cmUuCgpUaGFua3MsIERhbmllbAoKCj4gLS0tCj4gIGRyaXZlcnMvdHR5L3Z0L3Z0LmMgICAgICAg
ICAgICB8IDE2ICsrKysrKysrKysrKysrKysKPiAgaW5jbHVkZS9saW51eC9jb25zb2xlX3N0cnVj
dC5oIHwgIDUgKy0tLS0KPiAgMiBmaWxlcyBjaGFuZ2VkLCAxNyBpbnNlcnRpb25zKCspLCA0IGRl
bGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3R0eS92dC92dC5jIGIvZHJpdmVy
cy90dHkvdnQvdnQuYwo+IGluZGV4IGJjOTgxM2IxNGM1OC4uYTg5ODhhMDg1MTM4IDEwMDY0NAo+
IC0tLSBhL2RyaXZlcnMvdHR5L3Z0L3Z0LmMKPiArKysgYi9kcml2ZXJzL3R0eS92dC92dC5jCj4g
QEAgLTM4MTUsNiArMzgxNSw4IEBAIGludCBjb25faXNfYm91bmQoY29uc3Qgc3RydWN0IGNvbnN3
ICpjc3cpCj4gIHsKPiAgCWludCBpLCBib3VuZCA9IDA7Cj4gIAo+ICsJV0FSTl9DT05TT0xFX1VO
TE9DS0VEKCk7Cj4gKwo+ICAJZm9yIChpID0gMDsgaSA8IE1BWF9OUl9DT05TT0xFUzsgaSsrKSB7
Cj4gIAkJaWYgKGNvbl9kcml2ZXJfbWFwW2ldID09IGNzdykgewo+ICAJCQlib3VuZCA9IDE7Cj4g
QEAgLTM4MjYsNiArMzgyOCwyMCBAQCBpbnQgY29uX2lzX2JvdW5kKGNvbnN0IHN0cnVjdCBjb25z
dyAqY3N3KQo+ICB9Cj4gIEVYUE9SVF9TWU1CT0woY29uX2lzX2JvdW5kKTsKPiAgCj4gKy8qKgo+
ICsgKiBjb25faXNfdmlzaWJsZSAtIGNoZWNrcyB3aGV0aGVyIHRoZSBjdXJyZW50IGNvbnNvbGUg
aXMgdmlzaWJsZQo+ICsgKiBAdmM6IHZpcnR1YWwgY29uc29sZQo+ICsgKgo+ICsgKiBSRVRVUk5T
OiB6ZXJvIGlmIG5vdCB2aXNpYmxlLCBub256ZXJvIGlmIHZpc2libGUKPiArICovCj4gK2Jvb2wg
Y29uX2lzX3Zpc2libGUoY29uc3Qgc3RydWN0IHZjX2RhdGEgKnZjKQo+ICt7Cj4gKwlXQVJOX0NP
TlNPTEVfVU5MT0NLRUQoKTsKPiArCj4gKwlyZXR1cm4gKnZjLT52Y19kaXNwbGF5X2ZnID09IHZj
Owo+ICt9Cj4gK0VYUE9SVF9TWU1CT0woY29uX2lzX3Zpc2libGUpOwo+ICsKPiAgLyoqCj4gICAq
IGNvbl9kZWJ1Z19lbnRlciAtIHByZXBhcmUgdGhlIGNvbnNvbGUgZm9yIHRoZSBrZXJuZWwgZGVi
dWdnZXIKPiAgICogQHN3OiBjb25zb2xlIGRyaXZlcgo+IGRpZmYgLS1naXQgYS9pbmNsdWRlL2xp
bnV4L2NvbnNvbGVfc3RydWN0LmggYi9pbmNsdWRlL2xpbnV4L2NvbnNvbGVfc3RydWN0LmgKPiBp
bmRleCBlZDc5OGUxMTQ2NjMuLjI0ZDRjMTZlM2FlMCAxMDA2NDQKPiAtLS0gYS9pbmNsdWRlL2xp
bnV4L2NvbnNvbGVfc3RydWN0LmgKPiArKysgYi9pbmNsdWRlL2xpbnV4L2NvbnNvbGVfc3RydWN0
LmgKPiBAQCAtMTY4LDkgKzE2OCw2IEBAIGV4dGVybiB2b2lkIHZjX1NBSyhzdHJ1Y3Qgd29ya19z
dHJ1Y3QgKndvcmspOwo+ICAKPiAgI2RlZmluZSBDVVJfREVGQVVMVCBDVVJfVU5ERVJMSU5FCj4g
IAo+IC1zdGF0aWMgaW5saW5lIGJvb2wgY29uX2lzX3Zpc2libGUoY29uc3Qgc3RydWN0IHZjX2Rh
dGEgKnZjKQo+IC17Cj4gLQlyZXR1cm4gKnZjLT52Y19kaXNwbGF5X2ZnID09IHZjOwo+IC19Cj4g
K2Jvb2wgY29uX2lzX3Zpc2libGUoY29uc3Qgc3RydWN0IHZjX2RhdGEgKnZjKTsKPiAgCj4gICNl
bmRpZiAvKiBfTElOVVhfQ09OU09MRV9TVFJVQ1RfSCAqLwo+IC0tIAo+IDIuMjAuMQo+IAoKLS0g
CkRhbmllbCBWZXR0ZXIKU29mdHdhcmUgRW5naW5lZXIsIEludGVsIENvcnBvcmF0aW9uCmh0dHA6
Ly9ibG9nLmZmd2xsLmNoCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LWdmeA==
