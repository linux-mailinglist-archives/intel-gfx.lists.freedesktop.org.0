Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BC789AA54
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Aug 2019 10:29:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D70626EC21;
	Fri, 23 Aug 2019 08:28:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com
 [IPv6:2a00:1450:4864:20::443])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3E6846EC21
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Aug 2019 08:28:58 +0000 (UTC)
Received: by mail-wr1-x443.google.com with SMTP id b16so7812279wrq.9
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Aug 2019 01:28:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=cSMdJ1i9WMGCkTpXPSjVz1+1Wy8PctHNgvuE5ZAIKjA=;
 b=PouZDN8YLqi/1134aqMidKEUSgT4ZZLXaWv3qnGv+TSMeR+9nO/R2CeOCkrksHau5J
 1zsismJlPZbezvNb94gvkSUm+d8VPo7/OF7YOcdzzAkKAEwFDXrOkWuPe4aH1237hQLu
 QsROIL4tTPjA3QTzZNdEvFVh2lq6EWwBBH/wYmib/zEQ3u/LtcxaBm0kMvNvi0/WzKEy
 Abt45A5GFA7aU/W6XuSZqkTwP0wfHg2FdadQ0kvGBIu3dsP+s+91Xf2uHXso0bjpW/XA
 VnJIH5Yps8z6iVmP995PXw2jk1Kr/SG5uhwpXCCp6rvw96wzA5IhA7FZCgAeCKVH4eOU
 a/KA==
X-Gm-Message-State: APjAAAUF5IAzPUtGo3MmM1zua9KgL6pO6lgW9lS3FUdmFom8eosXh67x
 Rk094aK0TJOsMIQ6LcHCQaT9iRt+dJOsKzPGLpHN6g==
X-Google-Smtp-Source: APXvYqytztcI2CY3VDGE6s6ovR1bNvv27WhVV5rHPZY7Z9KQLR9ctV2WihE9rBaHuemPJ6UTZ/HOiGX00WV6eixDB6U=
X-Received: by 2002:adf:e848:: with SMTP id d8mr3952708wrn.94.1566548936782;
 Fri, 23 Aug 2019 01:28:56 -0700 (PDT)
MIME-Version: 1.0
References: <20190821215950.24223-1-manasi.d.navare@intel.com>
In-Reply-To: <20190821215950.24223-1-manasi.d.navare@intel.com>
From: Lucas De Marchi <lucas.de.marchi@gmail.com>
Date: Fri, 23 Aug 2019 01:28:44 -0700
Message-ID: <CAKi4VA+iNW8Kx1hCePsFUGeUGTQubbf=B_pTJ=FVCYGoboO3wQ@mail.gmail.com>
To: Manasi Navare <manasi.d.navare@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=cSMdJ1i9WMGCkTpXPSjVz1+1Wy8PctHNgvuE5ZAIKjA=;
 b=neSDIq4KpUoxDmWpylqnPygBxljree4x6bLyZxZO436gwfLWhVsnEzMW9FZlo404G2
 C5VSJufqXwV+kRuw/uhiKecixcWc652UEu76lY4LA2zo8vNs4WsW8HkpZGRwrH7KXbg2
 AlkmBbFqrbzg6TFUqKadZIqZmK/zujo7/ge6KRNBQxG6jr8zC+zHQHyXpqPgVULqvSeo
 PKKFIJ1ulxUQYzYo0NYGpMXYxR6p+cJfAqMXncbFrAgb/q16zJev8l/YrZOoJyN+0MpC
 7R3LvepX34+11mtMc5nPB9GwXgBbHIRLC9P+caEv1dkjROjwGJjZoAaCqeVN9o6EL/ds
 e7yA==
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dp: Fix DSC enable code to use
 cpu_transcoder instead of encoder->type
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
Cc: Intel Graphics <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCBBdWcgMjIsIDIwMTkgYXQgNzoyMCBBTSBNYW5hc2kgTmF2YXJlIDxtYW5hc2kuZC5u
YXZhcmVAaW50ZWwuY29tPiB3cm90ZToKPgo+IFRoaXMgcGF0Y2ggZml4ZXMgdGhlIGludGVsX2Nv
bmZpZ3VyZV9wcHNfZm9yX2RzY19lbmNvZGVyKCkgZnVuY3Rpb24gdG8gdXNlCj4gY3B1X3RyYW5z
Y29kZXIgaW5zdGVhZCBvZiBlbmNvZGVyLT50eXBlIHRvIHNlbGVjdCB0aGUgY29ycmVjdCBEU0Mg
cmVnaXN0ZXJzCj4gdGhhdCB3YXMgd3JvbmdseSB1c2VkIGluIHRoZSBvcmlnaW5hbCBwYXRjaCBm
b3Igb25lIERTQyByZWdpc3RlciBpc250YW5jZS4KPgo+IEZpeGVzOiA3MTgyNDE0ZTI1MzAgKCJk
cm0vaTkxNS9kcDogQ29uZmlndXJlIGk5MTUgUGljdHVyZSBwYXJhbWV0ZXIgU2V0Cj4gcmVnaXN0
ZXJzIGR1cmluZyBEU0MgZW5hYmxpbmciKQo+IENjOiBWaWxsZSBTeXJqYWxhIDx2aWxsZS5zeXJq
YWxhQGxpbnV4LmludGVsLmNvbT4KPiBDYzogTWFhcnRlbiBMYW5raG9yc3QgPG1hYXJ0ZW4ubGFu
a2hvcnN0QGxpbnV4LmludGVsLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBNYW5hc2kgTmF2YXJlIDxt
YW5hc2kuZC5uYXZhcmVAaW50ZWwuY29tPgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX3Zkc2MuYyB8IDIgKy0KPiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9u
KCspLCAxIGRlbGV0aW9uKC0pCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF92ZHNjLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X3Zkc2MuYwo+IGluZGV4IDU5OGRkYjYwZjlmYi4uZDRmYjdmMTZmOWY2IDEwMDY0NAo+IC0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdmRzYy5jCj4gKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92ZHNjLmMKPiBAQCAtNTQ3LDcgKzU0Nyw3IEBA
IHN0YXRpYyB2b2lkIGludGVsX2NvbmZpZ3VyZV9wcHNfZm9yX2RzY19lbmNvZGVyKHN0cnVjdCBp
bnRlbF9lbmNvZGVyICplbmNvZGVyLAo+ICAgICAgICAgcHBzX3ZhbCB8PSBEU0NfUElDX0hFSUdI
VCh2ZHNjX2NmZy0+cGljX2hlaWdodCkgfAo+ICAgICAgICAgICAgICAgICBEU0NfUElDX1dJRFRI
KHZkc2NfY2ZnLT5waWNfd2lkdGggLyBudW1fdmRzY19pbnN0YW5jZXMpOwo+ICAgICAgICAgRFJN
X0lORk8oIlBQUzIgPSAweCUwOHhcbiIsIHBwc192YWwpOwo+IC0gICAgICAgaWYgKGVuY29kZXIt
PnR5cGUgPT0gSU5URUxfT1VUUFVUX0VEUCkgewo+ICsgICAgICAgaWYgKGNwdV90cmFuc2NvZGVy
ID09IFRSQU5TQ09ERVJfRURQKSB7CgpUaGlzIHdpbGwgYnJlYWsgdGlnZXIgbGFrZSBhcyB0aGVy
ZSBpcyBubyBUUkFOU0NPREVSX0VEUCB0aGVyZS4KCkx1Y2FzIERlIE1hcmNoaQoKPiAgICAgICAg
ICAgICAgICAgSTkxNV9XUklURShEU0NBX1BJQ1RVUkVfUEFSQU1FVEVSX1NFVF8yLCBwcHNfdmFs
KTsKPiAgICAgICAgICAgICAgICAgLyoKPiAgICAgICAgICAgICAgICAgICogSWYgMiBWRFNDIGlu
c3RhbmNlcyBhcmUgbmVlZGVkLCBjb25maWd1cmUgUFBTIGZvciBzZWNvbmQKPiAtLQo+IDIuMTku
MQo+Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBJ
bnRlbC1nZnggbWFpbGluZyBsaXN0Cj4gSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+
IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
CgoKCi0tIApMdWNhcyBEZSBNYXJjaGkKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4
