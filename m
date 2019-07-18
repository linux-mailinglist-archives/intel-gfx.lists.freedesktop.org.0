Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C7A446D416
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jul 2019 20:40:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8FD506E45D;
	Thu, 18 Jul 2019 18:40:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yw1-xc42.google.com (mail-yw1-xc42.google.com
 [IPv6:2607:f8b0:4864:20::c42])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 64E5F6E45F
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Jul 2019 18:40:11 +0000 (UTC)
Received: by mail-yw1-xc42.google.com with SMTP id l124so12611704ywd.0
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Jul 2019 11:40:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=jznZVNxB+JEKiihMY79nGxVXwbVZkDNJl6OCXxqzmhk=;
 b=rBRt1zzbwQ0t69w8SFp5tDvVMUoTq0Jsf+yTQcHPejp/gfUGN8C1y/msRZG6rkTTEC
 fJ0qeAGW0PEton4B3A9jsO05zudd+znpkh+vJarckByfxakfTnoKOOYwJQafJjW7Nu+g
 B80pjWmoWInDvnEpVUUs1crUsHmEKEeGs4sxL4x+nvcKLiFtsRBL5BDZeKovStpQYlGO
 SRtEEms0lEFdvNrqtbozISvhOf8hXZhnlzaL8cZVgCIJSBFZAr39pO5VrU+SywickPyQ
 q6Zg2e0/btvGvajQlBmcHOlB2cPBnr6j1clynRN08mVg7Q42CTQb4k1GjRzm5BN+vOhz
 GNJg==
X-Gm-Message-State: APjAAAWSKgqMQErP91dB1/CQhACfjiTe4vvXSkZZoko77f4WfpMN9XG6
 Xi88bYLGyR8U7jGbNNI07NKzNQ==
X-Google-Smtp-Source: APXvYqzX9yBSqU1Scorir9DeFqqSvyynuOj80F4fdGgK00aP/LkJ+Ola1OwNwoz2pG3LLy5vmw2gAA==
X-Received: by 2002:a0d:cb0f:: with SMTP id n15mr29261400ywd.443.1563475210522; 
 Thu, 18 Jul 2019 11:40:10 -0700 (PDT)
Received: from localhost ([2620:0:1013:11:89c6:2139:5435:371d])
 by smtp.gmail.com with ESMTPSA id j67sm6939231ywa.39.2019.07.18.11.40.09
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 18 Jul 2019 11:40:09 -0700 (PDT)
Date: Thu, 18 Jul 2019 14:40:09 -0400
From: Sean Paul <sean@poorly.run>
To: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20190718184009.GB104440@art_vandelay>
References: <20190718161507.2047-1-sam@ravnborg.org>
 <20190718161507.2047-12-sam@ravnborg.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190718161507.2047-12-sam@ravnborg.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=poorly.run; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=jznZVNxB+JEKiihMY79nGxVXwbVZkDNJl6OCXxqzmhk=;
 b=Mps5ZYaHIw16d+QJqUpOk52ZZVy4Bh4te2+TjW08fXlbOT61K4iIByyqZdWKbyFhLO
 YpU0VBu/QMg6yyxmPYXEr/nm89+7dRcqjuQe8K6CpsDdCpi9AVWjj8sMyN9840/RYjQn
 FqRExMQlrUweJMgk+uI2Y1q2Im3GJr7Y8yGWN/rw8SP1NmaSBCUhgMdsegKKz5DUOo7E
 Fgs2l3q0or+q6hYRy36fdnWYuWp5RGWZZ9BW+n2Ny4TRb1nLxoO5I0OQhNA+rZHXH+CD
 3u7NQE2vZyYIeC18PiU3TRmYJDRWcGuSGDXHtzf8B98dNgyubjkBPSbvwiJw7C42ISin
 /eBg==
Subject: Re: [Intel-gfx] [PATCH v1 11/11] drm: drop uapi dependency from
 drm_file.h
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
Cc: David Airlie <airlied@linux.ie>, Daniel Vetter <daniel.vetter@ffwll.ch>,
 dri-devel@lists.freedesktop.org, Rob Herring <robh@kernel.org>,
 Stefan Agner <stefan@agner.ch>, Maxime Ripard <maxime.ripard@bootlin.com>,
 CK Hu <ck.hu@mediatek.com>, Thierry Reding <treding@nvidia.com>,
 Chunming Zhou <david1.zhou@amd.com>, Jani Nikula <jani.nikula@intel.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org, Boris Brezillon <bbrezillon@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Noralf =?iso-8859-1?Q?Tr=F8nnes?= <noralf@tronnes.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, Sean Paul <seanpaul@chromium.org>,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCBKdWwgMTgsIDIwMTkgYXQgMDY6MTU6MDdQTSArMDIwMCwgU2FtIFJhdm5ib3JnIHdy
b3RlOgo+IGRybV9maWxlIHVzZWQgZHJtX21hZ2ljX3QgZnJvbSB1YXBpL2RybS9kcm0uaC4KPiBU
aGlzIGlzIGEgc2ltcGxlIHVuc2lnbmVkIGludC4KPiBKdXN0IG9wZW5jb2RlIGl0IGFzIHN1Y2gg
dG8gYnJlYWsgdGhlIGRlcGVuZGVuY3kgZnJvbSB0aGlzIGhlYWRlciBmaWxlCj4gdG8gdWFwaS4K
PiAKPiBTaWduZWQtb2ZmLWJ5OiBTYW0gUmF2bmJvcmcgPHNhbUByYXZuYm9yZy5vcmc+CgpQYXNz
ZXMgbXkgYnVpbGQgdGVzdHMsIHRoYW5rcyBmb3IgdGhlIGNsZWFuLXVwcyEKClJldmlld2VkLWJ5
OiBTZWFuIFBhdWwgPHNlYW5AcG9vcmx5LnJ1bj4KCj4gU3VnZ2VzdGVkLWJ5OiBEYW5pZWwgVmV0
dGVyIDxkYW5pZWwudmV0dGVyQGZmd2xsLmNoPgo+IENjOiBTZWFuIFBhdWwgPHNlYW5wYXVsQGNo
cm9taXVtLm9yZz4KPiBDYzogTGl2aXUgRHVkYXUgPExpdml1LkR1ZGF1QGFybS5jb20+Cj4gQ2M6
IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+IENjOiBNYWFydGVuIExh
bmtob3JzdCA8bWFhcnRlbi5sYW5raG9yc3RAbGludXguaW50ZWwuY29tPgo+IENjOiBNYXhpbWUg
UmlwYXJkIDxtYXhpbWUucmlwYXJkQGJvb3RsaW4uY29tPgo+IENjOiBEYXZpZCBBaXJsaWUgPGFp
cmxpZWRAbGludXguaWU+Cj4gQ2M6IERhbmllbCBWZXR0ZXIgPGRhbmllbEBmZndsbC5jaD4KPiBD
YzogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4KPiBDYzogRXJpYyBBbmhvbHQg
PGVyaWNAYW5ob2x0Lm5ldD4KPiAtLS0KPiAgaW5jbHVkZS9kcm0vZHJtX2ZpbGUuaCB8IDQgKy0t
LQo+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDMgZGVsZXRpb25zKC0pCj4gCj4g
ZGlmZiAtLWdpdCBhL2luY2x1ZGUvZHJtL2RybV9maWxlLmggYi9pbmNsdWRlL2RybS9kcm1fZmls
ZS5oCj4gaW5kZXggNjdhZjYwYmI1MjdhLi4wNDZjZDFiZjkxZWIgMTAwNjQ0Cj4gLS0tIGEvaW5j
bHVkZS9kcm0vZHJtX2ZpbGUuaAo+ICsrKyBiL2luY2x1ZGUvZHJtL2RybV9maWxlLmgKPiBAQCAt
MzQsOCArMzQsNiBAQAo+ICAjaW5jbHVkZSA8bGludXgvY29tcGxldGlvbi5oPgo+ICAjaW5jbHVk
ZSA8bGludXgvaWRyLmg+Cj4gIAo+IC0jaW5jbHVkZSA8dWFwaS9kcm0vZHJtLmg+Cj4gLQo+ICAj
aW5jbHVkZSA8ZHJtL2RybV9wcmltZS5oPgo+ICAKPiAgc3RydWN0IGRtYV9mZW5jZTsKPiBAQCAt
MjI3LDcgKzIyNSw3IEBAIHN0cnVjdCBkcm1fZmlsZSB7Cj4gIAlzdHJ1Y3QgcGlkICpwaWQ7Cj4g
IAo+ICAJLyoqIEBtYWdpYzogQXV0aGVudGljYXRpb24gbWFnaWMsIHNlZSBAYXV0aGVudGljYXRl
ZC4gKi8KPiAtCWRybV9tYWdpY190IG1hZ2ljOwo+ICsJdW5zaWduZWQgaW50IG1hZ2ljOwo+ICAK
PiAgCS8qKgo+ICAJICogQGxoZWFkOgo+IC0tIAo+IDIuMjAuMQo+IAoKLS0gClNlYW4gUGF1bCwg
U29mdHdhcmUgRW5naW5lZXIsIEdvb2dsZSAvIENocm9taXVtIE9TCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
