Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BB1D0CE99C
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Oct 2019 18:45:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 011876E215;
	Mon,  7 Oct 2019 16:45:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yw1-xc44.google.com (mail-yw1-xc44.google.com
 [IPv6:2607:f8b0:4864:20::c44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2CCA86E215
 for <intel-gfx@lists.freedesktop.org>; Mon,  7 Oct 2019 16:45:53 +0000 (UTC)
Received: by mail-yw1-xc44.google.com with SMTP id m7so5370957ywe.4
 for <intel-gfx@lists.freedesktop.org>; Mon, 07 Oct 2019 09:45:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=uEyShXTm+JB/9yQz06mq2i1GCRkvjAHHbIYroAF3Vr0=;
 b=g2B1MwBsfSfZt6JyqAhrErXdjRsn1LhRVTuqqQoMIxoJR+CMcdi1qX6Bu0tvHzmX0X
 WBDpP+MCPt0zfv8zbDYwGICcL6t8zZC60IOhWJriLZrKnkBDBoNuZ3VfR3OWd7w0yfvJ
 j3MKM7R6bfUjciy/Q0MBqhltsxTq0kKsq20sIcAY48aDwZP2r4IYCPNWeIsbgRufLWHt
 4UMPDgPFXy04f6i5gdCYOFqDFef2DmgpjBc+MwSGZNtQu2dwKU+E4jEDz8I43ukk8Y8a
 NQZQIEHxTZQR+C7NDTb19/NhTsnfKh9B3zCG8RM4+cMh520cyz5tP7CMGddOBzW8u424
 lqcA==
X-Gm-Message-State: APjAAAXUWAsbzfbjL3pfd4jGB0XFwYGlc4eWC7TOc51u8u7rZw6l7rgU
 LhpjFJ67128AH/VI9YXpoTJdkA==
X-Google-Smtp-Source: APXvYqxYNV4BfGQcvE7fKKbfOFn6gRKJ4xfGQW2Cm3ncGszU5Tg91sABL7qjuz4H/GsDeDQDffiWNw==
X-Received: by 2002:a81:6589:: with SMTP id
 z131mr19011625ywb.262.1570466752240; 
 Mon, 07 Oct 2019 09:45:52 -0700 (PDT)
Received: from localhost ([2620:0:1013:11:89c6:2139:5435:371d])
 by smtp.gmail.com with ESMTPSA id k6sm4135994ywh.60.2019.10.07.09.45.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 07 Oct 2019 09:45:51 -0700 (PDT)
Date: Mon, 7 Oct 2019 12:45:51 -0400
From: Sean Paul <sean@poorly.run>
To: Derek Basehore <dbasehore@chromium.org>
Message-ID: <20191007164551.GC126146@art_vandelay>
References: <20190925225833.7310-1-dbasehore@chromium.org>
 <20190925225833.7310-4-dbasehore@chromium.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190925225833.7310-4-dbasehore@chromium.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=poorly.run; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=uEyShXTm+JB/9yQz06mq2i1GCRkvjAHHbIYroAF3Vr0=;
 b=Tk5DQyTRms31VYqgiblUm3XBadR+cInO4hstTpWWznvGEhyMDevpPGQMjKyumlw69b
 9jpcL/P8lseJkQuJd31PZ15bFTzbsRCuw/eEYKrUWHcLJyJYwne6cc06GDvjHQTJWiQ0
 RviTBIL/8SB90UPyTdnJUJcfqfA2Hc50CxITCPPF7ftBI8eCKooT/lEs76OOabmC512H
 6pleyCDi/nG9STxP4KFNi0XhXIBgvlLpGD6wwkdjrztDaOMgMIJRxTpfvHGFhc9zaA8y
 dygwEkT2aHOY8LvO0ztCqW0LZrR+YfCMwYb02vQckOACq45Bsi+XwIhOU4Q76grOv/HL
 etCA==
Subject: Re: [Intel-gfx] [PATCH v8 3/4] drm/connector: Split out orientation
 quirk detection
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
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Sam Ravnborg <sam@ravnborg.org>,
 intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 David Airlie <airlied@linux.ie>, Matthias Brugger <matthias.bgg@gmail.com>,
 dri-devel@lists.freedesktop.org, CK Hu <ck.hu@mediatek.com>,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCBTZXAgMjUsIDIwMTkgYXQgMDM6NTg6MzJQTSAtMDcwMCwgRGVyZWsgQmFzZWhvcmUg
d3JvdGU6Cj4gTm90IGV2ZXJ5IHBsYXRmb3JtIG5lZWRzIHF1aXJrIGRldGVjdGlvbiBmb3IgcGFu
ZWwgb3JpZW50YXRpb24sIHNvCj4gc3BsaXQgdGhlIGRybV9jb25uZWN0b3JfaW5pdF9wYW5lbF9v
cmllbnRhdGlvbl9wcm9wZXJ0eSBpbnRvIHR3bwo+IGZ1bmN0aW9ucy4gT25lIGZvciBwbGF0Zm9y
bXMgd2l0aG91dCB0aGUgbmVlZCBmb3IgcXVpcmtzLCBhbmQgdGhlCj4gb3RoZXIgZm9yIHBsYXRm
b3JtcyB0aGF0IG5lZWQgcXVpcmtzLgo+IAo+IFNpZ25lZC1vZmYtYnk6IERlcmVrIEJhc2Vob3Jl
IDxkYmFzZWhvcmVAY2hyb21pdW0ub3JnPgo+IEFja2VkLWJ5OiBTYW0gUmF2bmJvcmcgPHNhbUBy
YXZuYm9yZy5vcmc+CgpSZXZpZXdlZC1ieTogU2VhbiBQYXVsIDxzZWFucGF1bEBjaHJvbWl1bS5v
cmc+Cgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vZHJtX2Nvbm5lY3Rvci5jICAgICAgICAgfCA0
NSArKysrKysrKysrKysrKysrKystLS0tLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaWNsX2RzaS5jICB8ICAyICstCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZHAuYyB8ICA0ICstLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L3Zsdl9kc2ku
YyAgfCAgMiArLQo+ICBpbmNsdWRlL2RybS9kcm1fY29ubmVjdG9yLmggICAgICAgICAgICAgfCAg
MiArKwo+ICA1IGZpbGVzIGNoYW5nZWQsIDM5IGluc2VydGlvbnMoKyksIDE2IGRlbGV0aW9ucygt
KQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vZHJtX2Nvbm5lY3Rvci5jIGIvZHJp
dmVycy9ncHUvZHJtL2RybV9jb25uZWN0b3IuYwo+IGluZGV4IDRjNzY2NjI0YjIwZC4uZmFlZjI1
NjgzZmFmIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9kcm1fY29ubmVjdG9yLmMKPiAr
KysgYi9kcml2ZXJzL2dwdS9kcm0vZHJtX2Nvbm5lY3Rvci5jCj4gQEAgLTE5ODksMzEgKzE5ODks
MjMgQEAgRVhQT1JUX1NZTUJPTChkcm1fY29ubmVjdG9yX3NldF92cnJfY2FwYWJsZV9wcm9wZXJ0
eSk7Cj4gICAqIGRybV9jb25uZWN0b3JfaW5pdF9wYW5lbF9vcmllbnRhdGlvbl9wcm9wZXJ0eSAt
Cj4gICAqCWluaXRpYWxpemUgdGhlIGNvbm5lY3RlcnMgcGFuZWxfb3JpZW50YXRpb24gcHJvcGVy
dHkKPiAgICogQGNvbm5lY3RvcjogY29ubmVjdG9yIGZvciB3aGljaCB0byBpbml0IHRoZSBwYW5l
bC1vcmllbnRhdGlvbiBwcm9wZXJ0eS4KPiAtICogQHdpZHRoOiB3aWR0aCBpbiBwaXhlbHMgb2Yg
dGhlIHBhbmVsLCB1c2VkIGZvciBwYW5lbCBxdWlyayBkZXRlY3Rpb24KPiAtICogQGhlaWdodDog
aGVpZ2h0IGluIHBpeGVscyBvZiB0aGUgcGFuZWwsIHVzZWQgZm9yIHBhbmVsIHF1aXJrIGRldGVj
dGlvbgo+ICAgKgo+ICAgKiBUaGlzIGZ1bmN0aW9uIHNob3VsZCBvbmx5IGJlIGNhbGxlZCBmb3Ig
YnVpbHQtaW4gcGFuZWxzLCBhZnRlciBzZXR0aW5nCj4gICAqIGNvbm5lY3Rvci0+ZGlzcGxheV9p
bmZvLnBhbmVsX29yaWVudGF0aW9uIGZpcnN0IChpZiBrbm93bikuCj4gICAqCj4gLSAqIFRoaXMg
ZnVuY3Rpb24gd2lsbCBjaGVjayBmb3IgcGxhdGZvcm0gc3BlY2lmaWMgKGUuZy4gRE1JIGJhc2Vk
KSBxdWlya3MKPiAtICogb3ZlcnJpZGluZyBkaXNwbGF5X2luZm8ucGFuZWxfb3JpZW50YXRpb24g
Zmlyc3QsIHRoZW4gaWYgcGFuZWxfb3JpZW50YXRpb24KPiAtICogaXMgbm90IERSTV9NT0RFX1BB
TkVMX09SSUVOVEFUSU9OX1VOS05PV04gaXQgd2lsbCBhdHRhY2ggdGhlCj4gLSAqICJwYW5lbCBv
cmllbnRhdGlvbiIgcHJvcGVydHkgdG8gdGhlIGNvbm5lY3Rvci4KPiArICogVGhpcyBmdW5jdGlv
biB3aWxsIGNoZWNrIGlmIHRoZSBwYW5lbF9vcmllbnRhdGlvbiBpcyBub3QKPiArICogRFJNX01P
REVfUEFORUxfT1JJRU5UQVRJT05fVU5LTk9XTi4gSWYgbm90LCBpdCB3aWxsIGF0dGFjaCB0aGUg
InBhbmVsCj4gKyAqIG9yaWVudGF0aW9uIiBwcm9wZXJ0eSB0byB0aGUgY29ubmVjdG9yLgo+ICAg
Kgo+ICAgKiBSZXR1cm5zOgo+ICAgKiBaZXJvIG9uIHN1Y2Nlc3MsIG5lZ2F0aXZlIGVycm5vIG9u
IGZhaWx1cmUuCj4gICAqLwo+ICBpbnQgZHJtX2Nvbm5lY3Rvcl9pbml0X3BhbmVsX29yaWVudGF0
aW9uX3Byb3BlcnR5KAo+IC0Jc3RydWN0IGRybV9jb25uZWN0b3IgKmNvbm5lY3RvciwgaW50IHdp
ZHRoLCBpbnQgaGVpZ2h0KQo+ICsJc3RydWN0IGRybV9jb25uZWN0b3IgKmNvbm5lY3RvcikKPiAg
ewo+ICAJc3RydWN0IGRybV9kZXZpY2UgKmRldiA9IGNvbm5lY3Rvci0+ZGV2Owo+ICAJc3RydWN0
IGRybV9kaXNwbGF5X2luZm8gKmluZm8gPSAmY29ubmVjdG9yLT5kaXNwbGF5X2luZm87Cj4gIAlz
dHJ1Y3QgZHJtX3Byb3BlcnR5ICpwcm9wOwo+IC0JaW50IG9yaWVudGF0aW9uX3F1aXJrOwo+IC0K
PiAtCW9yaWVudGF0aW9uX3F1aXJrID0gZHJtX2dldF9wYW5lbF9vcmllbnRhdGlvbl9xdWlyayh3
aWR0aCwgaGVpZ2h0KTsKPiAtCWlmIChvcmllbnRhdGlvbl9xdWlyayAhPSBEUk1fTU9ERV9QQU5F
TF9PUklFTlRBVElPTl9VTktOT1dOKQo+IC0JCWluZm8tPnBhbmVsX29yaWVudGF0aW9uID0gb3Jp
ZW50YXRpb25fcXVpcms7Cj4gIAo+ICAJaWYgKGluZm8tPnBhbmVsX29yaWVudGF0aW9uID09IERS
TV9NT0RFX1BBTkVMX09SSUVOVEFUSU9OX1VOS05PV04pCj4gIAkJcmV0dXJuIDA7Cj4gQEAgLTIw
MzYsNiArMjAyOCwzNSBAQCBpbnQgZHJtX2Nvbm5lY3Rvcl9pbml0X3BhbmVsX29yaWVudGF0aW9u
X3Byb3BlcnR5KAo+ICB9Cj4gIEVYUE9SVF9TWU1CT0woZHJtX2Nvbm5lY3Rvcl9pbml0X3BhbmVs
X29yaWVudGF0aW9uX3Byb3BlcnR5KTsKPiAgCj4gKy8qKgo+ICsgKiBkcm1fY29ubmVjdG9yX2lu
aXRfcGFuZWxfb3JpZW50YXRpb25fcHJvcGVydHlfcXVpcmsgLQo+ICsgKglpbml0aWFsaXplIHRo
ZSBjb25uZWN0ZXJzIHBhbmVsX29yaWVudGF0aW9uIHByb3BlcnR5IHdpdGggYSBxdWlyawo+ICsg
KglvdmVycmlkZQo+ICsgKiBAY29ubmVjdG9yOiBjb25uZWN0b3IgZm9yIHdoaWNoIHRvIGluaXQg
dGhlIHBhbmVsLW9yaWVudGF0aW9uIHByb3BlcnR5Lgo+ICsgKiBAd2lkdGg6IHdpZHRoIGluIHBp
eGVscyBvZiB0aGUgcGFuZWwsIHVzZWQgZm9yIHBhbmVsIHF1aXJrIGRldGVjdGlvbgo+ICsgKiBA
aGVpZ2h0OiBoZWlnaHQgaW4gcGl4ZWxzIG9mIHRoZSBwYW5lbCwgdXNlZCBmb3IgcGFuZWwgcXVp
cmsgZGV0ZWN0aW9uCj4gKyAqCj4gKyAqIFRoaXMgZnVuY3Rpb24gd2lsbCBjaGVjayBmb3IgcGxh
dGZvcm0gc3BlY2lmaWMgKGUuZy4gRE1JIGJhc2VkKSBxdWlya3MKPiArICogb3ZlcnJpZGluZyBk
aXNwbGF5X2luZm8ucGFuZWxfb3JpZW50YXRpb24gZmlyc3QsIHRoZW4gaWYgcGFuZWxfb3JpZW50
YXRpb24KPiArICogaXMgbm90IERSTV9NT0RFX1BBTkVMX09SSUVOVEFUSU9OX1VOS05PV04gaXQg
d2lsbCBhdHRhY2ggdGhlCj4gKyAqICJwYW5lbCBvcmllbnRhdGlvbiIgcHJvcGVydHkgdG8gdGhl
IGNvbm5lY3Rvci4KPiArICoKPiArICogUmV0dXJuczoKPiArICogWmVybyBvbiBzdWNjZXNzLCBu
ZWdhdGl2ZSBlcnJubyBvbiBmYWlsdXJlLgo+ICsgKi8KPiAraW50IGRybV9jb25uZWN0b3JfaW5p
dF9wYW5lbF9vcmllbnRhdGlvbl9wcm9wZXJ0eV9xdWlyaygKPiArCXN0cnVjdCBkcm1fY29ubmVj
dG9yICpjb25uZWN0b3IsIGludCB3aWR0aCwgaW50IGhlaWdodCkKPiArewo+ICsJaW50IG9yaWVu
dGF0aW9uX3F1aXJrOwo+ICsKPiArCW9yaWVudGF0aW9uX3F1aXJrID0gZHJtX2dldF9wYW5lbF9v
cmllbnRhdGlvbl9xdWlyayh3aWR0aCwgaGVpZ2h0KTsKPiArCWlmIChvcmllbnRhdGlvbl9xdWly
ayAhPSBEUk1fTU9ERV9QQU5FTF9PUklFTlRBVElPTl9VTktOT1dOKQo+ICsJCWNvbm5lY3Rvci0+
ZGlzcGxheV9pbmZvLnBhbmVsX29yaWVudGF0aW9uID0gb3JpZW50YXRpb25fcXVpcms7Cj4gKwo+
ICsJcmV0dXJuIGRybV9jb25uZWN0b3JfaW5pdF9wYW5lbF9vcmllbnRhdGlvbl9wcm9wZXJ0eShj
b25uZWN0b3IpOwo+ICt9Cj4gK0VYUE9SVF9TWU1CT0woZHJtX2Nvbm5lY3Rvcl9pbml0X3BhbmVs
X29yaWVudGF0aW9uX3Byb3BlcnR5X3F1aXJrKTsKPiArCj4gIGludCBkcm1fY29ubmVjdG9yX3Nl
dF9vYmpfcHJvcChzdHJ1Y3QgZHJtX21vZGVfb2JqZWN0ICpvYmosCj4gIAkJCQkgICAgc3RydWN0
IGRybV9wcm9wZXJ0eSAqcHJvcGVydHksCj4gIAkJCQkgICAgdWludDY0X3QgdmFsdWUpCj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaWNsX2RzaS5jIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pY2xfZHNpLmMKPiBpbmRleCA2ZTM5OGMzM2E1MjQuLjQ4
MzI4Nzk4NDA5MCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lj
bF9kc2kuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaWNsX2RzaS5jCj4g
QEAgLTE1MzgsNyArMTUzOCw3IEBAIHN0YXRpYyB2b2lkIGljbF9kc2lfYWRkX3Byb3BlcnRpZXMo
c3RydWN0IGludGVsX2Nvbm5lY3RvciAqY29ubmVjdG9yKQo+ICAKPiAgCWNvbm5lY3Rvci0+YmFz
ZS5kaXNwbGF5X2luZm8ucGFuZWxfb3JpZW50YXRpb24gPQo+ICAJCQlpbnRlbF9kc2lfZ2V0X3Bh
bmVsX29yaWVudGF0aW9uKGNvbm5lY3Rvcik7Cj4gLQlkcm1fY29ubmVjdG9yX2luaXRfcGFuZWxf
b3JpZW50YXRpb25fcHJvcGVydHkoJmNvbm5lY3Rvci0+YmFzZSwKPiArCWRybV9jb25uZWN0b3Jf
aW5pdF9wYW5lbF9vcmllbnRhdGlvbl9wcm9wZXJ0eV9xdWlyaygmY29ubmVjdG9yLT5iYXNlLAo+
ICAJCQkJY29ubmVjdG9yLT5wYW5lbC5maXhlZF9tb2RlLT5oZGlzcGxheSwKPiAgCQkJCWNvbm5l
Y3Rvci0+cGFuZWwuZml4ZWRfbW9kZS0+dmRpc3BsYXkpOwo+ICB9Cj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZHAuYwo+IGluZGV4IDkyMWFkMGEyZjdiYS4uNDE5NDEzZmE4MTY1
IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYwo+
ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYwo+IEBAIC03MDc2
LDggKzcwNzYsOCBAQCBzdGF0aWMgYm9vbCBpbnRlbF9lZHBfaW5pdF9jb25uZWN0b3Ioc3RydWN0
IGludGVsX2RwICppbnRlbF9kcCwKPiAgCWludGVsX3BhbmVsX3NldHVwX2JhY2tsaWdodChjb25u
ZWN0b3IsIHBpcGUpOwo+ICAKPiAgCWlmIChmaXhlZF9tb2RlKQo+IC0JCWRybV9jb25uZWN0b3Jf
aW5pdF9wYW5lbF9vcmllbnRhdGlvbl9wcm9wZXJ0eSgKPiAtCQkJY29ubmVjdG9yLCBmaXhlZF9t
b2RlLT5oZGlzcGxheSwgZml4ZWRfbW9kZS0+dmRpc3BsYXkpOwo+ICsJCWRybV9jb25uZWN0b3Jf
aW5pdF9wYW5lbF9vcmllbnRhdGlvbl9wcm9wZXJ0eV9xdWlyayhjb25uZWN0b3IsCj4gKwkJCQlm
aXhlZF9tb2RlLT5oZGlzcGxheSwgZml4ZWRfbW9kZS0+dmRpc3BsYXkpOwo+ICAKPiAgCXJldHVy
biB0cnVlOwo+ICAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS92
bHZfZHNpLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L3Zsdl9kc2kuYwo+IGluZGV4
IGE3MWIyMmJkZDk1Yi4uNDZjZmIwODIxYzE3IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvdmx2X2RzaS5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS92bHZfZHNpLmMKPiBAQCAtMTYzNCw3ICsxNjM0LDcgQEAgc3RhdGljIHZvaWQgdmx2X2Rz
aV9hZGRfcHJvcGVydGllcyhzdHJ1Y3QgaW50ZWxfY29ubmVjdG9yICpjb25uZWN0b3IpCj4gIAo+
ICAJCWNvbm5lY3Rvci0+YmFzZS5kaXNwbGF5X2luZm8ucGFuZWxfb3JpZW50YXRpb24gPQo+ICAJ
CQl2bHZfZHNpX2dldF9wYW5lbF9vcmllbnRhdGlvbihjb25uZWN0b3IpOwo+IC0JCWRybV9jb25u
ZWN0b3JfaW5pdF9wYW5lbF9vcmllbnRhdGlvbl9wcm9wZXJ0eSgKPiArCQlkcm1fY29ubmVjdG9y
X2luaXRfcGFuZWxfb3JpZW50YXRpb25fcHJvcGVydHlfcXVpcmsoCj4gIAkJCQkmY29ubmVjdG9y
LT5iYXNlLAo+ICAJCQkJY29ubmVjdG9yLT5wYW5lbC5maXhlZF9tb2RlLT5oZGlzcGxheSwKPiAg
CQkJCWNvbm5lY3Rvci0+cGFuZWwuZml4ZWRfbW9kZS0+dmRpc3BsYXkpOwo+IGRpZmYgLS1naXQg
YS9pbmNsdWRlL2RybS9kcm1fY29ubmVjdG9yLmggYi9pbmNsdWRlL2RybS9kcm1fY29ubmVjdG9y
LmgKPiBpbmRleCA2ODFjYjU5MGY5NTIuLmUzNDE2YWMxMTQ3OCAxMDA2NDQKPiAtLS0gYS9pbmNs
dWRlL2RybS9kcm1fY29ubmVjdG9yLmgKPiArKysgYi9pbmNsdWRlL2RybS9kcm1fY29ubmVjdG9y
LmgKPiBAQCAtMTU0MCw2ICsxNTQwLDggQEAgdm9pZCBkcm1fY29ubmVjdG9yX3NldF9saW5rX3N0
YXR1c19wcm9wZXJ0eShzdHJ1Y3QgZHJtX2Nvbm5lY3RvciAqY29ubmVjdG9yLAo+ICB2b2lkIGRy
bV9jb25uZWN0b3Jfc2V0X3Zycl9jYXBhYmxlX3Byb3BlcnR5KAo+ICAJCXN0cnVjdCBkcm1fY29u
bmVjdG9yICpjb25uZWN0b3IsIGJvb2wgY2FwYWJsZSk7Cj4gIGludCBkcm1fY29ubmVjdG9yX2lu
aXRfcGFuZWxfb3JpZW50YXRpb25fcHJvcGVydHkoCj4gKwlzdHJ1Y3QgZHJtX2Nvbm5lY3RvciAq
Y29ubmVjdG9yKTsKPiAraW50IGRybV9jb25uZWN0b3JfaW5pdF9wYW5lbF9vcmllbnRhdGlvbl9w
cm9wZXJ0eV9xdWlyaygKPiAgCXN0cnVjdCBkcm1fY29ubmVjdG9yICpjb25uZWN0b3IsIGludCB3
aWR0aCwgaW50IGhlaWdodCk7Cj4gIGludCBkcm1fY29ubmVjdG9yX2F0dGFjaF9tYXhfYnBjX3By
b3BlcnR5KHN0cnVjdCBkcm1fY29ubmVjdG9yICpjb25uZWN0b3IsCj4gIAkJCQkJICBpbnQgbWlu
LCBpbnQgbWF4KTsKPiAtLSAKPiAyLjIzLjAuMzUxLmdjNDMxNzAzMmU2LWdvb2cKPiAKCi0tIApT
ZWFuIFBhdWwsIFNvZnR3YXJlIEVuZ2luZWVyLCBHb29nbGUgLyBDaHJvbWl1bSBPUwpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
