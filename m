Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C696320F44
	for <lists+intel-gfx@lfdr.de>; Thu, 16 May 2019 21:39:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A4356891DD;
	Thu, 16 May 2019 19:39:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com
 [IPv6:2a00:1450:4864:20::443])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 20354891DD
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 May 2019 19:39:21 +0000 (UTC)
Received: by mail-wr1-x443.google.com with SMTP id m3so4497858wrv.2
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 May 2019 12:39:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=QucEMGbjZK4sVB3gxAwO7vb4jgElKNduTIZfSLi7rhw=;
 b=DntqXe/AWCDXfJMMr3GYN2PJBioC4Vnq+pnns7pgThMDyVjJE4Yt42lcSmCRFdXMXv
 TUiwfEJ0f5pPRwtCbMMo8KXl7rKWGgM7jp/95SsOWbnX4i0Bxf9xJOlMEKT3zw7R2JuP
 83TGKyXHloudNWY0ST4VDTGquGMVtOr+zmx+49HV0oCGB88CRDXx5gaCMGEwXdmSEt9u
 ZtQZYLVtpo6dzF/WWB6uk0uhAkziFEN3IoFXc8anGmMuTmYfYKMCoj6WW/1SlV64QcQR
 LDfSF40jQn0fdz7/wjunYfJzDiTNK+Jd+vbNHq2hhzLifmlixR4esOoJ66maAbOKzOwE
 zqhQ==
X-Gm-Message-State: APjAAAUXPnsHGmRrMJxemE4+3+/sMImov/Ct3Hpb0fb288m7WNBdxK9C
 uKPR4lnRNtt+q3MVkdnGg9a+FjKU88BkS2nAeNWLxk2u
X-Google-Smtp-Source: APXvYqzYS5uw8JD4JKDpN5ZyZq9oadkn2ea88LZQ4FoemMwrsE3Hf8lh/Fb1ID4QstcN/OHwAqU7ashptq0B1itj6U8=
X-Received: by 2002:adf:bc94:: with SMTP id g20mr12791970wrh.206.1558035559835; 
 Thu, 16 May 2019 12:39:19 -0700 (PDT)
MIME-Version: 1.0
References: <20190218195052.1729-1-ville.syrjala@linux.intel.com>
 <20190426163202.28527-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20190426163202.28527-1-ville.syrjala@linux.intel.com>
From: Mario Kleiner <mario.kleiner.de@gmail.com>
Date: Thu, 16 May 2019 21:39:08 +0200
Message-ID: <CAEsyxyhxOz=BxcZaeHG0-WxdjS+9TnrT7bJRCVndRnC0tYeDKQ@mail.gmail.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=QucEMGbjZK4sVB3gxAwO7vb4jgElKNduTIZfSLi7rhw=;
 b=r/W32ost6C8dPdeggtV+8GeAwGO67uXC/QBukakHFABvbcQzcsk5ZkHLjqRn7tv3RI
 qDMD+6Qkr1ijJDgzE4w+rearfg4VNMS4ZufmP5RUikujuMLyCYI7PxrUWbeYeAHZpK85
 62Oq4f5Spn1seKMgTaJtgsaXqbZJn+nWpRSsqkAH38mlSIxljxBVZtPc3qhyCI4Gp1kF
 KsRINTKEbYzIwFdE32XhmkJF9D41FYrmGJVwXDpvJiqtsAs9j56/wEaMvFpa5dxAsquz
 38rMh0OhGFkALXav535GJsFjO2ATF7c8OengwQHEoNHJcNB7YOsRUPLl1yhAqYoLEVJl
 OP5w==
Subject: Re: [Intel-gfx] [PATCH xf86-video-intel v2 1/2] sna: Refactor
 property parsing
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
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCBBcHIgMjYsIDIwMTkgYXQgNjozMiBQTSBWaWxsZSBTeXJqYWxhCjx2aWxsZS5zeXJq
YWxhQGxpbnV4LmludGVsLmNvbT4gd3JvdGU6Cj4KPiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZp
bGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgo+Cj4gR2VuZXJhbGl6ZSB0aGUgY29kZSB0aGF0
IHBhcnNlcyB0aGUgcGxhbmUgcHJvcGVydGllcyB0byBiZSB1c2VhYmxlCj4gZm9yIGNydGMgKG9y
IGFueSBrbXMgb2JqZWN0KSBwcm9wZXJ0aWVzIGFzIHdlbGwuCj4KPiB2MjogcGxhbmUgJ3R5cGUn
IHByb3AgaXMgZW51bSBub3QgcmFuZ2UhCj4KPiBDYzogTWFyaW8gS2xlaW5lciA8bWFyaW8ua2xl
aW5lci5kZUBnbWFpbC5jb20+Cj4gU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxs
ZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KPiAtLS0KClRoaXMgcGF0Y2ggaXMKClJldmlld2Vk
LWFuZC10ZXN0ZWQtYnk6IE1hcmlvIEtsZWluZXIgPG1hcmlvLmtsZWluZXIuZGVAZ21haWwuY29t
PgoKLW1hcmlvCgo+ICBzcmMvc25hL3NuYV9kaXNwbGF5LmMgfCA2OSArKysrKysrKysrKysrKysr
KysrKysrKysrKysrKystLS0tLS0tLS0tLS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCA0OSBpbnNlcnRp
b25zKCspLCAyMCBkZWxldGlvbnMoLSkKPgo+IGRpZmYgLS1naXQgYS9zcmMvc25hL3NuYV9kaXNw
bGF5LmMgYi9zcmMvc25hL3NuYV9kaXNwbGF5LmMKPiBpbmRleCAxMTllYTk4MWQyNDMuLjQxZWRm
ZWMxMjgzOSAxMDA2NDQKPiAtLS0gYS9zcmMvc25hL3NuYV9kaXNwbGF5LmMKPiArKysgYi9zcmMv
c25hL3NuYV9kaXNwbGF5LmMKPiBAQCAtMjE1LDYgKzIxNSw3IEBAIHN0cnVjdCBzbmFfY3J0YyB7
Cj4gICAgICAgICB1aW50MzJfdCByb3RhdGlvbjsKPiAgICAgICAgIHN0cnVjdCBwbGFuZSB7Cj4g
ICAgICAgICAgICAgICAgIHVpbnQzMl90IGlkOwo+ICsgICAgICAgICAgICAgICB1aW50MzJfdCB0
eXBlOwo+ICAgICAgICAgICAgICAgICBzdHJ1Y3Qgewo+ICAgICAgICAgICAgICAgICAgICAgICAg
IHVpbnQzMl90IHByb3A7Cj4gICAgICAgICAgICAgICAgICAgICAgICAgdWludDMyX3Qgc3VwcG9y
dGVkOwo+IEBAIC0zMzkxLDMzICszMzkyLDQwIEBAIHZvaWQgc25hX2NydGNfc2V0X3Nwcml0ZV9j
b2xvcnNwYWNlKHhmODZDcnRjUHRyIGNydGMsCj4gICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgcC0+Y29sb3JfZW5jb2RpbmcudmFsdWVzW2NvbG9yc3BhY2VdKTsKPiAgfQo+Cj4gLXN0
YXRpYyBpbnQgcGxhbmVfZGV0YWlscyhzdHJ1Y3Qgc25hICpzbmEsIHN0cnVjdCBwbGFuZSAqcCkK
PiArdHlwZWRlZiB2b2lkICgqcGFyc2VfcHJvcF9mdW5jKShzdHJ1Y3Qgc25hICpzbmEsCj4gKyAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICBzdHJ1Y3QgZHJtX21vZGVfZ2V0X3Byb3BlcnR5
ICpwcm9wLAo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgdWludDY0X3QgdmFsdWUs
Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB2b2lkICpkYXRhKTsKPiArc3RhdGlj
IHZvaWQgcGFyc2VfcHJvcHMoc3RydWN0IHNuYSAqc25hLAo+ICsgICAgICAgICAgICAgICAgICAg
ICAgdWludDMyX3Qgb2JqX3R5cGUsIHVpbnQzMl90IG9ial9pZCwKPiArICAgICAgICAgICAgICAg
ICAgICAgIHBhcnNlX3Byb3BfZnVuYyBwYXJzZV9wcm9wLAo+ICsgICAgICAgICAgICAgICAgICAg
ICAgdm9pZCAqZGF0YSkKPiAgewo+ICAjZGVmaW5lIE5fU1RBQ0tfUFJPUFMgMzIgLyogbXVzdCBi
ZSBhIG11bHRpcGxlIG9mIDIgKi8KPiAgICAgICAgIHN0cnVjdCBsb2NhbF9tb2RlX29ial9nZXRf
cHJvcGVydGllcyBhcmc7Cj4gICAgICAgICB1aW50NjRfdCBzdGFja1tOX1NUQUNLX1BST1BTICsg
Tl9TVEFDS19QUk9QUy8yXTsKPiAgICAgICAgIHVpbnQ2NF90ICp2YWx1ZXMgPSBzdGFjazsKPiAg
ICAgICAgIHVpbnQzMl90ICpwcm9wcyA9ICh1aW50MzJfdCAqKSh2YWx1ZXMgKyBOX1NUQUNLX1BS
T1BTKTsKPiAtICAgICAgIGludCBpLCB0eXBlID0gRFJNX1BMQU5FX1RZUEVfT1ZFUkxBWTsKPiAr
ICAgICAgIGludCBpOwo+Cj4gICAgICAgICBtZW1zZXQoJmFyZywgMCwgc2l6ZW9mKHN0cnVjdCBs
b2NhbF9tb2RlX29ial9nZXRfcHJvcGVydGllcykpOwo+IC0gICAgICAgYXJnLm9ial9pZCA9IHAt
PmlkOwo+IC0gICAgICAgYXJnLm9ial90eXBlID0gTE9DQUxfTU9ERV9PQkpFQ1RfUExBTkU7Cj4g
KyAgICAgICBhcmcub2JqX2lkID0gb2JqX2lkOwo+ICsgICAgICAgYXJnLm9ial90eXBlID0gb2Jq
X3R5cGU7Cj4KPiAgICAgICAgIGFyZy5wcm9wc19wdHIgPSAodWludHB0cl90KXByb3BzOwo+ICAg
ICAgICAgYXJnLnByb3BfdmFsdWVzX3B0ciA9ICh1aW50cHRyX3QpdmFsdWVzOwo+ICAgICAgICAg
YXJnLmNvdW50X3Byb3BzID0gTl9TVEFDS19QUk9QUzsKPgo+ICAgICAgICAgaWYgKGRybUlvY3Rs
KHNuYS0+a2dlbS5mZCwgTE9DQUxfSU9DVExfTU9ERV9PQkpfR0VUUFJPUEVSVElFUywgJmFyZykp
Cj4gLSAgICAgICAgICAgICAgIHJldHVybiAtMTsKPiArICAgICAgICAgICAgICAgcmV0dXJuOwo+
Cj4gICAgICAgICBEQkcoKCIlczogb2JqZWN0ICVkICh0eXBlICV4KSBoYXMgJWQgcHJvcHNcbiIs
IF9fRlVOQ1RJT05fXywKPiAtICAgICAgICAgICAgcC0+aWQsIExPQ0FMX01PREVfT0JKRUNUX1BM
QU5FLCBhcmcuY291bnRfcHJvcHMpKTsKPiArICAgICAgICAgICAgb2JqX2lkLCBvYmpfdHlwZSwg
YXJnLmNvdW50X3Byb3BzKSk7Cj4KPiAgICAgICAgIGlmIChhcmcuY291bnRfcHJvcHMgPiBOX1NU
QUNLX1BST1BTKSB7Cj4gICAgICAgICAgICAgICAgIHZhbHVlcyA9IG1hbGxvYygyKnNpemVvZih1
aW50NjRfdCkqYXJnLmNvdW50X3Byb3BzKTsKPiAgICAgICAgICAgICAgICAgaWYgKHZhbHVlcyA9
PSBOVUxMKQo+IC0gICAgICAgICAgICAgICAgICAgICAgIHJldHVybiAtMTsKPiArICAgICAgICAg
ICAgICAgICAgICAgICByZXR1cm47Cj4KPiAgICAgICAgICAgICAgICAgcHJvcHMgPSAodWludDMy
X3QgKikodmFsdWVzICsgYXJnLmNvdW50X3Byb3BzKTsKPgo+IEBAIC0zNDQ0LDI3ICszNDUyLDQ4
IEBAIHN0YXRpYyBpbnQgcGxhbmVfZGV0YWlscyhzdHJ1Y3Qgc25hICpzbmEsIHN0cnVjdCBwbGFu
ZSAqcCkKPiAgICAgICAgICAgICAgICAgREJHKCgiJXM6IHByb3BbJWRdIC5pZD0lbGQsIC5uYW1l
PSVzLCAuZmxhZ3M9JXgsIC52YWx1ZT0lbGRcbiIsIF9fRlVOQ1RJT05fXywgaSwKPiAgICAgICAg
ICAgICAgICAgICAgICAobG9uZylwcm9wc1tpXSwgcHJvcC5uYW1lLCAodW5zaWduZWQpcHJvcC5m
bGFncywgKGxvbmcpdmFsdWVzW2ldKSk7Cj4KPiAtICAgICAgICAgICAgICAgaWYgKHN0cmNtcChw
cm9wLm5hbWUsICJ0eXBlIikgPT0gMCkgewo+IC0gICAgICAgICAgICAgICAgICAgICAgIHR5cGUg
PSB2YWx1ZXNbaV07Cj4gLSAgICAgICAgICAgICAgIH0gZWxzZSBpZiAocHJvcF9pc19yb3RhdGlv
bigmcHJvcCkpIHsKPiAtICAgICAgICAgICAgICAgICAgICAgICBwYXJzZV9yb3RhdGlvbl9wcm9w
KHNuYSwgcCwgJnByb3AsIHZhbHVlc1tpXSk7Cj4gLSAgICAgICAgICAgICAgIH0gZWxzZSBpZiAo
cHJvcF9pc19jb2xvcl9lbmNvZGluZygmcHJvcCkpIHsKPiAtICAgICAgICAgICAgICAgICAgICAg
ICBwYXJzZV9jb2xvcl9lbmNvZGluZ19wcm9wKHNuYSwgcCwgJnByb3AsIHZhbHVlc1tpXSk7Cj4g
LSAgICAgICAgICAgICAgIH0KPiArICAgICAgICAgICAgICAgcGFyc2VfcHJvcChzbmEsICZwcm9w
LCB2YWx1ZXNbaV0sIGRhdGEpOwo+ICAgICAgICAgfQo+Cj4gLSAgICAgICBwLT5yb3RhdGlvbi5z
dXBwb3J0ZWQgJj0gREJHX05BVElWRV9ST1RBVElPTjsKPiAtICAgICAgIGlmICgheGY4NlJldHVy
bk9wdFZhbEJvb2woc25hLT5PcHRpb25zLCBPUFRJT05fUk9UQVRJT04sIFRSVUUpKQo+IC0gICAg
ICAgICAgICAgICBwLT5yb3RhdGlvbi5zdXBwb3J0ZWQgPSBSUl9Sb3RhdGVfMDsKPiAtCj4gICAg
ICAgICBpZiAodmFsdWVzICE9IHN0YWNrKQo+ICAgICAgICAgICAgICAgICBmcmVlKHZhbHVlcyk7
Cj4KPiAtICAgICAgIERCRygoIiVzOiBwbGFuZT0lZCB0eXBlPSVkXG4iLCBfX0ZVTkNUSU9OX18s
IHAtPmlkLCB0eXBlKSk7Cj4gLSAgICAgICByZXR1cm4gdHlwZTsKPiAgI3VuZGVmIE5fU1RBQ0tf
UFJPUFMKPiAgfQo+Cj4gK3N0YXRpYyBib29sIHByb3BfaXNfdHlwZShjb25zdCBzdHJ1Y3QgZHJt
X21vZGVfZ2V0X3Byb3BlcnR5ICpwcm9wKQo+ICt7Cj4gKyAgICAgICByZXR1cm4gcHJvcF9oYXNf
dHlwZV9hbmRfbmFtZShwcm9wLCAzLCAidHlwZSIpOwo+ICt9Cj4gKwo+ICtzdGF0aWMgdm9pZCBw
bGFuZV9wYXJzZV9wcm9wKHN0cnVjdCBzbmEgKnNuYSwKPiArICAgICAgICAgICAgICAgICAgICAg
ICAgICAgIHN0cnVjdCBkcm1fbW9kZV9nZXRfcHJvcGVydHkgKnByb3AsCj4gKyAgICAgICAgICAg
ICAgICAgICAgICAgICAgICB1aW50NjRfdCB2YWx1ZSwgdm9pZCAqZGF0YSkKPiArewo+ICsgICAg
ICAgc3RydWN0IHBsYW5lICpwID0gZGF0YTsKPiArCj4gKyAgICAgICBpZiAocHJvcF9pc190eXBl
KHByb3ApKQo+ICsgICAgICAgICAgICAgICBwLT50eXBlID0gdmFsdWU7Cj4gKyAgICAgICBlbHNl
IGlmIChwcm9wX2lzX3JvdGF0aW9uKHByb3ApKQo+ICsgICAgICAgICAgICAgICBwYXJzZV9yb3Rh
dGlvbl9wcm9wKHNuYSwgcCwgcHJvcCwgdmFsdWUpOwo+ICsgICAgICAgZWxzZSBpZiAocHJvcF9p
c19jb2xvcl9lbmNvZGluZyhwcm9wKSkKPiArICAgICAgICAgICAgICAgcGFyc2VfY29sb3JfZW5j
b2RpbmdfcHJvcChzbmEsIHAsIHByb3AsIHZhbHVlKTsKPiArfQo+ICsKPiArc3RhdGljIGludCBw
bGFuZV9kZXRhaWxzKHN0cnVjdCBzbmEgKnNuYSwgc3RydWN0IHBsYW5lICpwKQo+ICt7Cj4gKyAg
ICAgICBwYXJzZV9wcm9wcyhzbmEsIExPQ0FMX01PREVfT0JKRUNUX1BMQU5FLCBwLT5pZCwKPiAr
ICAgICAgICAgICAgICAgICAgIHBsYW5lX3BhcnNlX3Byb3AsIHApOwo+ICsKPiArICAgICAgIHAt
PnJvdGF0aW9uLnN1cHBvcnRlZCAmPSBEQkdfTkFUSVZFX1JPVEFUSU9OOwo+ICsgICAgICAgaWYg
KCF4Zjg2UmV0dXJuT3B0VmFsQm9vbChzbmEtPk9wdGlvbnMsIE9QVElPTl9ST1RBVElPTiwgVFJV
RSkpCj4gKyAgICAgICAgICAgICAgIHAtPnJvdGF0aW9uLnN1cHBvcnRlZCA9IFJSX1JvdGF0ZV8w
Owo+ICsKPiArICAgICAgIERCRygoIiVzOiBwbGFuZT0lZCB0eXBlPSVkXG4iLCBfX0ZVTkNUSU9O
X18sIHAtPmlkLCBwLT50eXBlKSk7Cj4gKwo+ICsgICAgICAgcmV0dXJuIHAtPnR5cGU7Cj4gK30K
PiArCj4gIHN0YXRpYyB2b2lkIGFkZF9zcHJpdGVfcGxhbmUoc3RydWN0IHNuYV9jcnRjICpjcnRj
LAo+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgc3RydWN0IHBsYW5lICpkZXRhaWxzKQo+
ICB7Cj4gLS0KPiAyLjIxLjAKPgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZng=
