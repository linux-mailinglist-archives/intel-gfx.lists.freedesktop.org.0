Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C05D032ABD
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Jun 2019 10:26:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F8DB8921A;
	Mon,  3 Jun 2019 08:26:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x543.google.com (mail-ed1-x543.google.com
 [IPv6:2a00:1450:4864:20::543])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D0EC589204
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Jun 2019 08:26:04 +0000 (UTC)
Received: by mail-ed1-x543.google.com with SMTP id x25so13529693eds.8
 for <intel-gfx@lists.freedesktop.org>; Mon, 03 Jun 2019 01:26:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=lI8+8K56zpZd4nG15vzyApcOs+aDZsmiI1x2DT/sono=;
 b=ucGXqtCgxRexQhAlrV9/x/ismCCVcFWAfWxkNP0wXTO/ENpCLHwifjj78Aq2a5imxF
 ItysRK46aPcUm6U4In2x0hdEoyoq0QgjgJJi2NnpbYGS3Cc7o2L8bMVQjagA9BBNo8u8
 koIvxOYFu2bCHioSa5pQPF+FIjn1ydcuiqeCMC99fzwu3T0Q1n8BV5NLFzwVoGB0ZlN8
 KfrU2UnLwiwgn8Pn0TzLNLA8llj1PSJ1RxDZCB34c5LCh4iatxFfyIgRbPk5GrYw1/Lb
 aStqnPcyIPwxNp6QdK5jJ+IC2WfCdLhdqqnF9xij1xspgP6iqpjYiVRVO/cW1fnGbR30
 smHA==
X-Gm-Message-State: APjAAAXO0QWuoHPe6wYPBpbSB3hsJ3oQFXIEz3Xkox5PLF7GO/j9CPeM
 8gzVB5ha33VXvwqfu2p4sb9PLA==
X-Google-Smtp-Source: APXvYqwUdGtu6rRTONk15TpG8XWlLOpulFtGnplfCHucKZlYyH3HtChbvFp3vz4amW2/4o7iz62xPA==
X-Received: by 2002:a17:906:4356:: with SMTP id
 z22mr23086396ejm.56.1559550363487; 
 Mon, 03 Jun 2019 01:26:03 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id j9sm1163742ejm.68.2019.06.03.01.26.02
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 03 Jun 2019 01:26:02 -0700 (PDT)
Date: Mon, 3 Jun 2019 10:26:00 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Uma Shankar <uma.shankar@intel.com>
Message-ID: <20190603082600.GK21222@phenom.ffwll.local>
References: <1559159944-21103-1-git-send-email-uma.shankar@intel.com>
 <1559159944-21103-4-git-send-email-uma.shankar@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1559159944-21103-4-git-send-email-uma.shankar@intel.com>
X-Operating-System: Linux phenom 4.14.0-3-amd64 
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=lI8+8K56zpZd4nG15vzyApcOs+aDZsmiI1x2DT/sono=;
 b=X0rW++3OkxF4CV099QlSL1zp9G5PXeraugb+LRSFLLc6pXS+e/3QutVxuxm03eBm/P
 WWDGYGn4fZvLdiSQ/pHZQ/TZLWDIEb2GdMaexSi7hZo/O//p2mybd1xQP4hr7ffB9+Mb
 F1cuauLKzyI6AFX8vgYKwra4tOPqvZyHiLmm8=
Subject: Re: [Intel-gfx] [PATCH 3/4] drm: Fixed doc warnings in drm uapi
 header
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
Cc: dcastagna@chromium.org, jonas@kwiboo.se, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, seanpaul@chromium.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCBNYXkgMzAsIDIwMTkgYXQgMDE6Mjk6MDNBTSArMDUzMCwgVW1hIFNoYW5rYXIgd3Jv
dGU6Cj4gRml4ZWQgZG9jIHdhcm5pbmdzIGluIGRybSB1YXBpIGhlYWRlci4gQWxsIHRoZSBVQVBJ
Cj4gc3RydWN0dXJlcyBhcmUgbm93IGRvY3VtZW50ZWQgaW4ga2VybmVsIGRvYy4KPiAKPiBTaWdu
ZWQtb2ZmLWJ5OiBVbWEgU2hhbmthciA8dW1hLnNoYW5rYXJAaW50ZWwuY29tPgoKQXBwbGllZCwg
dGhhbmtzIGZvciB0aGUgcGF0Y2guCgpMb25nLXRlcm0gdGhlcmUncyBvYnZpb3VzbHkgYSBsb3Qg
bW9yZSB0byBkbyBoZXJlLCBidXQgdGhpcyBhdCBsZWFzdCBnZXRzCnVzIHN0YXJ0ZWQuCgpCdHcg
SSB0aGluayBpdCdkIGJlIGdvb2QgdG8gc3BsaXQgb3V0IHRoZSAiYWRkIG5ldyB1YXBpIGlvY3Rs
IHN0cnVjdHVyZXMKc2VjdGlvbiIgcGFydCBmcm9tIHRoZSBwcmV2aW91cyBwYXRjaCwgYW5kIG1l
cmdlIHRoYXQgc2VwYXJhdGVseS4KClRoYW5rcywgRGFuaWVsCgo+IC0tLQo+ICBpbmNsdWRlL3Vh
cGkvZHJtL2RybV9tb2RlLmggfCAyMiArKysrKysrKysrKysrKysrKysrKysrCj4gIDEgZmlsZSBj
aGFuZ2VkLCAyMiBpbnNlcnRpb25zKCspCj4gCj4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvdWFwaS9k
cm0vZHJtX21vZGUuaCBiL2luY2x1ZGUvdWFwaS9kcm0vZHJtX21vZGUuaAo+IGluZGV4IDVkMzk2
NGYuLjAyYjJhMmIgMTAwNjQ0Cj4gLS0tIGEvaW5jbHVkZS91YXBpL2RybS9kcm1fbW9kZS5oCj4g
KysrIGIvaW5jbHVkZS91YXBpL2RybS9kcm1fbW9kZS5oCj4gQEAgLTg2MSw2ICs4NjEsMTAgQEAg
c3RydWN0IGRybV9mb3JtYXRfbW9kaWZpZXIgewo+ICB9Owo+ICAKPiAgLyoqCj4gKyAqIHN0cnVj
dCBkcm1fbW9kZV9jcmVhdGVfYmxvYiAtIENyZWF0ZSBOZXcgYmxvY2sgcHJvcGVydHkKPiArICog
QGRhdGE6IFBvaW50ZXIgdG8gZGF0YSB0byBjb3B5Lgo+ICsgKiBAbGVuZ3RoOiBMZW5ndGggb2Yg
ZGF0YSB0byBjb3B5Lgo+ICsgKiBAYmxvYl9pZDogbmV3IHByb3BlcnR5IElELgo+ICAgKiBDcmVh
dGUgYSBuZXcgJ2Jsb2InIGRhdGEgcHJvcGVydHksIGNvcHlpbmcgbGVuZ3RoIGJ5dGVzIGZyb20g
ZGF0YSBwb2ludGVyLAo+ICAgKiBhbmQgcmV0dXJuaW5nIG5ldyBibG9iIElELgo+ICAgKi8KPiBA
QCAtODc0LDYgKzg3OCw4IEBAIHN0cnVjdCBkcm1fbW9kZV9jcmVhdGVfYmxvYiB7Cj4gIH07Cj4g
IAo+ICAvKioKPiArICogc3RydWN0IGRybV9tb2RlX2Rlc3Ryb3lfYmxvYiAtIERlc3Ryb3kgdXNl
ciBibG9iCj4gKyAqIEBibG9iX2lkOiBibG9iX2lkIHRvIGRlc3Ryb3kKPiAgICogRGVzdHJveSBh
IHVzZXItY3JlYXRlZCBibG9iIHByb3BlcnR5Lgo+ICAgKi8KPiAgc3RydWN0IGRybV9tb2RlX2Rl
c3Ryb3lfYmxvYiB7Cj4gQEAgLTg4MSw2ICs4ODcsMTIgQEAgc3RydWN0IGRybV9tb2RlX2Rlc3Ry
b3lfYmxvYiB7Cj4gIH07Cj4gIAo+ICAvKioKPiArICogc3RydWN0IGRybV9tb2RlX2NyZWF0ZV9s
ZWFzZSAtIENyZWF0ZSBsZWFzZQo+ICsgKiBAb2JqZWN0X2lkczogUG9pbnRlciB0byBhcnJheSBv
ZiBvYmplY3QgaWRzLgo+ICsgKiBAb2JqZWN0X2NvdW50OiBOdW1iZXIgb2Ygb2JqZWN0IGlkcy4K
PiArICogQGZsYWdzOiBmbGFncyBmb3IgbmV3IEZELgo+ICsgKiBAbGVzc2VlX2lkOiB1bmlxdWUg
aWRlbnRpZmllciBmb3IgbGVzc2VlLgo+ICsgKiBAZmQ6IGZpbGUgZGVzY3JpcHRvciB0byBuZXcg
ZHJtX21hc3RlciBmaWxlLgo+ICAgKiBMZWFzZSBtb2RlIHJlc291cmNlcywgY3JlYXRpbmcgYW5v
dGhlciBkcm1fbWFzdGVyLgo+ICAgKi8KPiAgc3RydWN0IGRybV9tb2RlX2NyZWF0ZV9sZWFzZSB7
Cj4gQEAgLTg5OCw2ICs5MTAsMTAgQEAgc3RydWN0IGRybV9tb2RlX2NyZWF0ZV9sZWFzZSB7Cj4g
IH07Cj4gIAo+ICAvKioKPiArICogc3RydWN0IGRybV9tb2RlX2xpc3RfbGVzc2VlcyAtIExpc3Qg
bGVzc2Vlcwo+ICsgKiBAY291bnRfbGVzc2VlczogTnVtYmVyIG9mIGxlc3NlZXMuCj4gKyAqIEBw
YWQ6IHBhZC4KPiArICogQGxlc3NlZXNfcHRyOiBQb2ludGVyIHRvIGxlc3Nlc3MuCj4gICAqIExp
c3QgbGVzc2VzIGZyb20gYSBkcm1fbWFzdGVyCj4gICAqLwo+ICBzdHJ1Y3QgZHJtX21vZGVfbGlz
dF9sZXNzZWVzIHsKPiBAQCAtOTE4LDYgKzkzNCwxMCBAQCBzdHJ1Y3QgZHJtX21vZGVfbGlzdF9s
ZXNzZWVzIHsKPiAgfTsKPiAgCj4gIC8qKgo+ICsgKiBzdHJ1Y3QgZHJtX21vZGVfZ2V0X2xlYXNl
IC0gR2V0IExlYXNlCj4gKyAqIEBjb3VudF9vYmplY3RzOiBOdW1iZXIgb2YgbGVhc2VkIG9iamVj
dHMuCj4gKyAqIEBwYWQ6IHBhZC4KPiArICogQG9iamVjdHNfcHRyOiBQb2ludGVyIHRvIG9iamVj
dHMuCj4gICAqIEdldCBsZWFzZWQgb2JqZWN0cwo+ICAgKi8KPiAgc3RydWN0IGRybV9tb2RlX2dl
dF9sZWFzZSB7Cj4gQEAgLTkzOCw2ICs5NTgsOCBAQCBzdHJ1Y3QgZHJtX21vZGVfZ2V0X2xlYXNl
IHsKPiAgfTsKPiAgCj4gIC8qKgo+ICsgKiBzdHJ1Y3QgZHJtX21vZGVfcmV2b2tlX2xlYXNlIC0g
UmV2b2tlIGxlYXNlCj4gKyAqIEBsZXNzZWVfaWQ6IFVuaXF1ZSBJRCBvZiBsZXNzZWUuCj4gICAq
IFJldm9rZSBsZWFzZQo+ICAgKi8KPiAgc3RydWN0IGRybV9tb2RlX3Jldm9rZV9sZWFzZSB7Cj4g
LS0gCj4gMS45LjEKPiAKCi0tIApEYW5pZWwgVmV0dGVyClNvZnR3YXJlIEVuZ2luZWVyLCBJbnRl
bCBDb3Jwb3JhdGlvbgpodHRwOi8vYmxvZy5mZndsbC5jaApfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZng=
