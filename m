Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EA13A180863
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Mar 2020 20:47:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DFFB36E373;
	Tue, 10 Mar 2020 19:47:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [205.139.110.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C70FF6E373
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Mar 2020 19:47:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1583869653;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Z30zod3zoxFnEcYo/n0SMe3iRtgnYsnw9d72ls150Fo=;
 b=cnW9HARCBC+NyYm9+2WeuRPEP+/zCpxaCZz1UJT3h1sv6Fiva4BkLFN9ZiofQGAmOlHYuM
 erH+rYKHJRpyJo6FMDfCIrtpUpAXO83Eaebj813CJAvCeXHBKg1tDbGcvU6aZJ1A2X82sj
 5JRYrMywEUnZj2jjKKTeXfvVP+CaWGk=
Received: from mail-yw1-f70.google.com (mail-yw1-f70.google.com
 [209.85.161.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-200-8_saI2kyOAK_JxQzrioH-g-1; Tue, 10 Mar 2020 15:47:31 -0400
X-MC-Unique: 8_saI2kyOAK_JxQzrioH-g-1
Received: by mail-yw1-f70.google.com with SMTP id c125so22821214ywf.0
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Mar 2020 12:47:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:organization:user-agent:mime-version
 :content-transfer-encoding;
 bh=iSuNQN7bkbnRo2jTjLcey0ERJ9aP7xPAWWvzSr4tTJ4=;
 b=nAD6bFD33tTPLZK9uTc2nEfSDYIv+nEiW6J1zGg/LtTog739fJQ9aRSEpEAY3ZGrQ7
 ezTUeDMF3eisE0lBTciV3u7snCST628k6OWh29tSdB9rayHZGA82+xDfo84iDch82dwb
 eum/qJfnfAhLI1aAb4KzIXSF3hmvIkVnXdQyNIj17TkHnQUFtgEZcvV+lwS3hPjTgDN+
 oPytwx4Wgfvz3LLx2+1LXTBEgXkSgcYRDYYOqJM2w7uthkA+JSOysCLGyJlTwGoVq3aF
 FOrlAgYblThQw4Q2NC+jR4oNCtRh2AOcxn0ye1YTkkJ0PC8+FSQdRnuQejaosAaXNojN
 VcBw==
X-Gm-Message-State: ANhLgQ3VuH36jhk+Mua87zEHP2Ob8N3KwPil4qMs73c9oLl0X1Oss0Ps
 vkwjAkC2e1AHEn9bvWnagyb+9fjoaUSElQG5D8ADdNG/6MXT5nHNQD+L//SXp0d5AQWbd6KWlBb
 90V3banatW9CIoxP5U2PFWuqueo8H
X-Received: by 2002:a25:6b06:: with SMTP id g6mr23941427ybc.416.1583869651354; 
 Tue, 10 Mar 2020 12:47:31 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vt+gjt5dPcZNpRF0gGOOsUFCPRSfZuJFDt5ztKFhVFxuvZF6Q/wbM92HD0h6S4jndbT/LEJAQ==
X-Received: by 2002:a25:6b06:: with SMTP id g6mr23941403ybc.416.1583869651122; 
 Tue, 10 Mar 2020 12:47:31 -0700 (PDT)
Received: from dhcp-10-20-1-196.bss.redhat.com ([144.121.20.162])
 by smtp.gmail.com with ESMTPSA id x126sm2883969ywx.90.2020.03.10.12.47.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Mar 2020 12:47:30 -0700 (PDT)
Message-ID: <a6ef7b4c7e55aa81168e60473b412e6b7efc37b3.camel@redhat.com>
From: Lyude Paul <lyude@redhat.com>
To: Ville =?ISO-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Date: Tue, 10 Mar 2020 15:47:28 -0400
In-Reply-To: <20200310190604.GP13686@intel.com>
References: <20200310185417.1588984-1-lyude@redhat.com>
 <20200310190604.GP13686@intel.com>
Organization: Red Hat
User-Agent: Evolution 3.34.4 (3.34.4-1.fc31)
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/mst: Hookup DRM DP MST
 late_register/early_unregister callbacks
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
Cc: dri-devel@lists.freedesktop.org, David Airlie <airlied@linux.ie>,
 intel-gfx@lists.freedesktop.org, Lucas De Marchi <lucas.demarchi@intel.com>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCAyMDIwLTAzLTEwIGF0IDIxOjA2ICswMjAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
Cj4gT24gVHVlLCBNYXIgMTAsIDIwMjAgYXQgMDI6NTQ6MTZQTSAtMDQwMCwgTHl1ZGUgUGF1bCB3
cm90ZToKPiA+IGk5MTUgY2FuIGVuYWJsZSBhdXggZGV2aWNlIG5vZGVzIGZvciBEUCBNU1QgYnkg
Y2FsbGluZwo+ID4gZHJtX2RwX21zdF9jb25uZWN0b3JfbGF0ZV9yZWdpc3RlcigpL2RybV9kcF9t
c3RfY29ubmVjdG9yX2Vhcmx5X3VucmVnaXN0ZXIKPiA+ICgpLAo+ID4gc28gbGV0J3MgaG9vayB0
aGF0IHVwLgo+ID4gCj4gPiBDaGFuZ2VzIHNpbmNlIHYxOgo+ID4gKiBDYWxsIGludGVsX2Nvbm5l
Y3Rvcl9yZWdpc3Rlci91bnJlZ2lzdGVyKCkgZnJvbQo+ID4gICBpbnRlbF9kcF9tc3RfY29ubmVj
dG9yX2xhdGVfcmVnaXN0ZXIvdW5yZWdpc3RlcigpIHNvIHdlIGRvbid0IGxvc2UKPiA+ICAgZXJy
b3IgaW5qZWN0aW9uIC0gVmlsbGUgU3lyasOkbMOkCj4gPiAKPiA+IENjOiBWaWxsZSBTeXJqw6Rs
w6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgo+ID4gQ2M6IE1hbmFzaSBOYXZhcmUg
PG1hbmFzaS5kLm5hdmFyZUBpbnRlbC5jb20+Cj4gPiBDYzogIkxlZSwgU2hhd24gQyIgPHNoYXdu
LmMubGVlQGludGVsLmNvbT4KPiA+IFNpZ25lZC1vZmYtYnk6IEx5dWRlIFBhdWwgPGx5dWRlQHJl
ZGhhdC5jb20+Cj4gPiAtLS0KPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2RwX21zdC5jIHwgMjggKysrKysrKysrKysrKysrKysrKy0tCj4gPiAgMSBmaWxlIGNoYW5nZWQs
IDI2IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCj4gPiAKPiA+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX21zdC5jCj4gPiBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbXN0LmMKPiA+IGluZGV4IGQ1Mzk3OGVkM2Mx
Mi4uOTMxMWMxMGY1YjFiIDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kcF9tc3QuYwo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kcF9tc3QuYwo+ID4gQEAgLTU0OCwxMiArNTQ4LDM2IEBAIHN0YXRpYyBpbnQgaW50
ZWxfZHBfbXN0X2dldF9kZGNfbW9kZXMoc3RydWN0Cj4gPiBkcm1fY29ubmVjdG9yICpjb25uZWN0
b3IpCj4gPiAgCXJldHVybiByZXQ7Cj4gPiAgfQo+ID4gIAo+ID4gK3N0YXRpYyBpbnQKPiA+ICtp
bnRlbF9kcF9tc3RfY29ubmVjdG9yX2xhdGVfcmVnaXN0ZXIoc3RydWN0IGRybV9jb25uZWN0b3Ig
KmNvbm5lY3RvcikKPiA+ICt7Cj4gPiArCXN0cnVjdCBpbnRlbF9jb25uZWN0b3IgKmludGVsX2Nv
bm5lY3RvciA9Cj4gPiB0b19pbnRlbF9jb25uZWN0b3IoY29ubmVjdG9yKTsKPiA+ICsJaW50IHJl
dDsKPiA+ICsKPiA+ICsJcmV0ID0gZHJtX2RwX21zdF9jb25uZWN0b3JfbGF0ZV9yZWdpc3Rlcihj
b25uZWN0b3IsCj4gPiArCQkJCQkJIGludGVsX2Nvbm5lY3Rvci0+cG9ydCk7Cj4gPiArCWlmIChy
ZXQgPCAwKQo+ID4gKwkJcmV0dXJuIHJldDsKPiA+ICsKPiA+ICsJcmV0dXJuIGludGVsX2Nvbm5l
Y3Rvcl9yZWdpc3Rlcihjb25uZWN0b3IpOwo+IAo+IERvbid0IHdlIGhhdmUgdG8gdW5kbyB0aGUg
ZGFtYWdlIGlmIHRoaXMgZmFpbHM/CgpZZXAsIHdob29wcy4gV2lsbCBzZW5kIG91dCBhbm90aGVy
IHJlc3BpbiB3aXRoIHRoaXMgZml4ZWQKCj4gCj4gPiArfQo+ID4gKwo+ID4gK3N0YXRpYyB2b2lk
Cj4gPiAraW50ZWxfZHBfbXN0X2Nvbm5lY3Rvcl9lYXJseV91bnJlZ2lzdGVyKHN0cnVjdCBkcm1f
Y29ubmVjdG9yICpjb25uZWN0b3IpCj4gPiArewo+ID4gKwlzdHJ1Y3QgaW50ZWxfY29ubmVjdG9y
ICppbnRlbF9jb25uZWN0b3IgPQo+ID4gdG9faW50ZWxfY29ubmVjdG9yKGNvbm5lY3Rvcik7Cj4g
PiArCj4gPiArCWludGVsX2Nvbm5lY3Rvcl91bnJlZ2lzdGVyKGNvbm5lY3Rvcik7Cj4gPiArCWRy
bV9kcF9tc3RfY29ubmVjdG9yX2Vhcmx5X3VucmVnaXN0ZXIoY29ubmVjdG9yLAo+ID4gKwkJCQkJ
ICAgICAgaW50ZWxfY29ubmVjdG9yLT5wb3J0KTsKPiA+ICt9Cj4gPiArCj4gPiAgc3RhdGljIGNv
bnN0IHN0cnVjdCBkcm1fY29ubmVjdG9yX2Z1bmNzIGludGVsX2RwX21zdF9jb25uZWN0b3JfZnVu
Y3MgPSB7Cj4gPiAgCS5maWxsX21vZGVzID0gZHJtX2hlbHBlcl9wcm9iZV9zaW5nbGVfY29ubmVj
dG9yX21vZGVzLAo+ID4gIAkuYXRvbWljX2dldF9wcm9wZXJ0eSA9IGludGVsX2RpZ2l0YWxfY29u
bmVjdG9yX2F0b21pY19nZXRfcHJvcGVydHksCj4gPiAgCS5hdG9taWNfc2V0X3Byb3BlcnR5ID0g
aW50ZWxfZGlnaXRhbF9jb25uZWN0b3JfYXRvbWljX3NldF9wcm9wZXJ0eSwKPiA+IC0JLmxhdGVf
cmVnaXN0ZXIgPSBpbnRlbF9jb25uZWN0b3JfcmVnaXN0ZXIsCj4gPiAtCS5lYXJseV91bnJlZ2lz
dGVyID0gaW50ZWxfY29ubmVjdG9yX3VucmVnaXN0ZXIsCj4gPiArCS5sYXRlX3JlZ2lzdGVyID0g
aW50ZWxfZHBfbXN0X2Nvbm5lY3Rvcl9sYXRlX3JlZ2lzdGVyLAo+ID4gKwkuZWFybHlfdW5yZWdp
c3RlciA9IGludGVsX2RwX21zdF9jb25uZWN0b3JfZWFybHlfdW5yZWdpc3RlciwKPiA+ICAJLmRl
c3Ryb3kgPSBpbnRlbF9jb25uZWN0b3JfZGVzdHJveSwKPiA+ICAJLmF0b21pY19kZXN0cm95X3N0
YXRlID0gZHJtX2F0b21pY19oZWxwZXJfY29ubmVjdG9yX2Rlc3Ryb3lfc3RhdGUsCj4gPiAgCS5h
dG9taWNfZHVwbGljYXRlX3N0YXRlID0gaW50ZWxfZGlnaXRhbF9jb25uZWN0b3JfZHVwbGljYXRl
X3N0YXRlLAo+ID4gLS0gCj4gPiAyLjI0LjEKLS0gCkNoZWVycywKCUx5dWRlIFBhdWwgKHNoZS9o
ZXIpCglBc3NvY2lhdGUgU29mdHdhcmUgRW5naW5lZXIgYXQgUmVkIEhhdAoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
