Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EE4DA1102F5
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Dec 2019 17:54:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9CC156E0AD;
	Tue,  3 Dec 2019 16:54:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com
 [IPv6:2a00:1450:4864:20::444])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 559C26E853
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Dec 2019 16:54:22 +0000 (UTC)
Received: by mail-wr1-x444.google.com with SMTP id t2so4605067wrr.1
 for <intel-gfx@lists.freedesktop.org>; Tue, 03 Dec 2019 08:54:22 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=DZnNhF0PGffENesjR3a7W8nq3Fea3LKDciTL3taQduc=;
 b=AOew/s24R5q/A7OLxCVhQ5hPHn1qedNMQPJctQcpFGfA4OIr3VXTcgR8rf+mPMzoHY
 P3k2cBZ1beXAX8FFN7wTqjKOXk7tzvaP+dEKUZVfV6xXSfUxtedafEKIlLcgVPQ5OUFV
 CzXmPAVflkOroY1/1N4uoj6rfx5BEGkeYg4FjRAGjXyR8G9oVa4EOrUws7a4rXDxY6th
 cvRTmoyx55iwfALTc5EAIz5D3eg9bhqbOXFAydtjaCwGc2r4+UGAnKwK84wo/YxC82tN
 /IRC21dOOCddabBmQd8LFpuWw1K0AnKWvkn+o1lFtyxbqRg+egOihmLuS6cV2NYwGt3t
 n/1w==
X-Gm-Message-State: APjAAAVrTaEBPwARZodrYLyJSljRJh+Jo4SzzeatDqoCqkZVYKZCI49e
 1lc6MSnBiGy+nILFkx70Vge/vIpmVi0=
X-Google-Smtp-Source: APXvYqxQDSzbn1ZA4cAevFXsXUipFT75YeKth0Y/+PDc/6X8aUrUWP2JkD6U8PuuGXip08Kr9V9x7Q==
X-Received: by 2002:adf:eb46:: with SMTP id u6mr6437384wrn.239.1575392060922; 
 Tue, 03 Dec 2019 08:54:20 -0800 (PST)
Received: from phenom.ffwll.local (212-51-149-96.fiber7.init7.net.
 [212.51.149.96])
 by smtp.gmail.com with ESMTPSA id h97sm4673935wrh.56.2019.12.03.08.54.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 03 Dec 2019 08:54:20 -0800 (PST)
Date: Tue, 3 Dec 2019 17:54:18 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20191203165418.GG624164@phenom.ffwll.local>
References: <cover.1575390740.git.jani.nikula@intel.com>
 <9639e2305fd4d03311bf909b8914277b221ca582.1575390740.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <9639e2305fd4d03311bf909b8914277b221ca582.1575390740.git.jani.nikula@intel.com>
X-Operating-System: Linux phenom 5.3.0-2-amd64 
User-Agent: Mutt/1.12.2 (2019-09-21)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=DZnNhF0PGffENesjR3a7W8nq3Fea3LKDciTL3taQduc=;
 b=aVbb+i4GcawMxJI0SeJKfHIZqA++38iDHOS1yZwpY133M5tB27ysdG/B8LalFx+RRD
 PLZt+u5a60/xpdygl8x3rJUX9cvz3XoTLca2Dx86Q2Ewkb0W226vT8nLS359eAoORKEX
 T3j9lTdZY1fycNFoaikbnra/uUhPuvzKfcQDI=
Subject: Re: [Intel-gfx] [PATCH v3 03/12] video: fbdev: nvidia: modify the
 static fb_ops directly
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
Cc: linux-fbdev@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCBEZWMgMDMsIDIwMTkgYXQgMDY6Mzg6NDVQTSArMDIwMCwgSmFuaSBOaWt1bGEgd3Jv
dGU6Cj4gQXZvaWQgbW9kaWZ5aW5nIHRoZSBmYl9vcHMgdmlhIGluZm8tPmZib3BzIHRvIGxldCB1
cyBtYWtlIHRoZSBwb2ludGVyCj4gY29uc3QgaW4gdGhlIGZ1dHVyZS4KPiAKPiBDYzogbGludXgt
ZmJkZXZAdmdlci5rZXJuZWwub3JnCj4gU2lnbmVkLW9mZi1ieTogSmFuaSBOaWt1bGEgPGphbmku
bmlrdWxhQGludGVsLmNvbT4KPiAtLS0KPiAgZHJpdmVycy92aWRlby9mYmRldi9udmlkaWEvbnZp
ZGlhLmMgfCAyMCArKysrKysrKysrKy0tLS0tLS0tLQo+ICAxIGZpbGUgY2hhbmdlZCwgMTEgaW5z
ZXJ0aW9ucygrKSwgOSBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy92aWRl
by9mYmRldi9udmlkaWEvbnZpZGlhLmMgYi9kcml2ZXJzL3ZpZGVvL2ZiZGV2L252aWRpYS9udmlk
aWEuYwo+IGluZGV4IGZiZWVlZDVhZmUzNS4uYzU4M2MwMTgzMDRkIDEwMDY0NAo+IC0tLSBhL2Ry
aXZlcnMvdmlkZW8vZmJkZXYvbnZpZGlhL252aWRpYS5jCj4gKysrIGIvZHJpdmVycy92aWRlby9m
YmRldi9udmlkaWEvbnZpZGlhLmMKPiBAQCAtNjA3LDYgKzYwNyw4IEBAIHN0YXRpYyBpbnQgbnZp
ZGlhZmJfY3Vyc29yKHN0cnVjdCBmYl9pbmZvICppbmZvLCBzdHJ1Y3QgZmJfY3Vyc29yICpjdXJz
b3IpCj4gIAlyZXR1cm4gMDsKPiAgfQo+ICAKPiArc3RhdGljIHN0cnVjdCBmYl9vcHMgbnZpZGlh
X2ZiX29wczsKCk9rIHRoaXMgb25lIGlzIHR3byBpbmRlcGVuZGVudCBmbGFncywgSSdtIG5vdCBn
b2luZyB0byBhc2sgZm9yIGEgbWF0cml4LgpQbHVzIGl0J3MgYWxsIGluIG9uZSBmaWxlLiBQbHVz
IGhhdmUgeW91IHJlYWQgdGhlIGNvZGluZyBzdHlsZSB1c2VkIGluCmhlcmUuIFBsdXMgLi4uCgpX
ZWxsLgoKUmV2aWV3ZWQtYnk6IERhbmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJAZmZ3bGwuY2g+
Cgo+ICsKPiAgc3RhdGljIGludCBudmlkaWFmYl9zZXRfcGFyKHN0cnVjdCBmYl9pbmZvICppbmZv
KQo+ICB7Cj4gIAlzdHJ1Y3QgbnZpZGlhX3BhciAqcGFyID0gaW5mby0+cGFyOwo+IEBAIC02NjAs
MTkgKzY2MiwxOSBAQCBzdGF0aWMgaW50IG52aWRpYWZiX3NldF9wYXIoc3RydWN0IGZiX2luZm8g
KmluZm8pCj4gIAlpbmZvLT5maXgubGluZV9sZW5ndGggPSAoaW5mby0+dmFyLnhyZXNfdmlydHVh
bCAqCj4gIAkJCQkgaW5mby0+dmFyLmJpdHNfcGVyX3BpeGVsKSA+PiAzOwo+ICAJaWYgKGluZm8t
PnZhci5hY2NlbF9mbGFncykgewo+IC0JCWluZm8tPmZib3BzLT5mYl9pbWFnZWJsaXQgPSBudmlk
aWFmYl9pbWFnZWJsaXQ7Cj4gLQkJaW5mby0+ZmJvcHMtPmZiX2ZpbGxyZWN0ID0gbnZpZGlhZmJf
ZmlsbHJlY3Q7Cj4gLQkJaW5mby0+ZmJvcHMtPmZiX2NvcHlhcmVhID0gbnZpZGlhZmJfY29weWFy
ZWE7Cj4gLQkJaW5mby0+ZmJvcHMtPmZiX3N5bmMgPSBudmlkaWFmYl9zeW5jOwo+ICsJCW52aWRp
YV9mYl9vcHMuZmJfaW1hZ2VibGl0ID0gbnZpZGlhZmJfaW1hZ2VibGl0Owo+ICsJCW52aWRpYV9m
Yl9vcHMuZmJfZmlsbHJlY3QgPSBudmlkaWFmYl9maWxscmVjdDsKPiArCQludmlkaWFfZmJfb3Bz
LmZiX2NvcHlhcmVhID0gbnZpZGlhZmJfY29weWFyZWE7Cj4gKwkJbnZpZGlhX2ZiX29wcy5mYl9z
eW5jID0gbnZpZGlhZmJfc3luYzsKPiAgCQlpbmZvLT5waXhtYXAuc2Nhbl9hbGlnbiA9IDQ7Cj4g
IAkJaW5mby0+ZmxhZ3MgJj0gfkZCSU5GT19IV0FDQ0VMX0RJU0FCTEVEOwo+ICAJCWluZm8tPmZs
YWdzIHw9IEZCSU5GT19SRUFEU19GQVNUOwo+ICAJCU5WUmVzZXRHcmFwaGljcyhpbmZvKTsKPiAg
CX0gZWxzZSB7Cj4gLQkJaW5mby0+ZmJvcHMtPmZiX2ltYWdlYmxpdCA9IGNmYl9pbWFnZWJsaXQ7
Cj4gLQkJaW5mby0+ZmJvcHMtPmZiX2ZpbGxyZWN0ID0gY2ZiX2ZpbGxyZWN0Owo+IC0JCWluZm8t
PmZib3BzLT5mYl9jb3B5YXJlYSA9IGNmYl9jb3B5YXJlYTsKPiAtCQlpbmZvLT5mYm9wcy0+ZmJf
c3luYyA9IE5VTEw7Cj4gKwkJbnZpZGlhX2ZiX29wcy5mYl9pbWFnZWJsaXQgPSBjZmJfaW1hZ2Vi
bGl0Owo+ICsJCW52aWRpYV9mYl9vcHMuZmJfZmlsbHJlY3QgPSBjZmJfZmlsbHJlY3Q7Cj4gKwkJ
bnZpZGlhX2ZiX29wcy5mYl9jb3B5YXJlYSA9IGNmYl9jb3B5YXJlYTsKPiArCQludmlkaWFfZmJf
b3BzLmZiX3N5bmMgPSBOVUxMOwo+ICAJCWluZm8tPnBpeG1hcC5zY2FuX2FsaWduID0gMTsKPiAg
CQlpbmZvLT5mbGFncyB8PSBGQklORk9fSFdBQ0NFTF9ESVNBQkxFRDsKPiAgCQlpbmZvLT5mbGFn
cyAmPSB+RkJJTkZPX1JFQURTX0ZBU1Q7Cj4gQEAgLTExNjUsNyArMTE2Nyw3IEBAIHN0YXRpYyBp
bnQgbnZpZGlhX3NldF9mYmluZm8oc3RydWN0IGZiX2luZm8gKmluZm8pCj4gIAlpbmZvLT5waXht
YXAuZmxhZ3MgPSBGQl9QSVhNQVBfU1lTVEVNOwo+ICAKPiAgCWlmICghaHdjdXIpCj4gLQkgICAg
aW5mby0+ZmJvcHMtPmZiX2N1cnNvciA9IE5VTEw7Cj4gKwkgICAgbnZpZGlhX2ZiX29wcy5mYl9j
dXJzb3IgPSBOVUxMOwo+ICAKPiAgCWluZm8tPnZhci5hY2NlbF9mbGFncyA9ICghbm9hY2NlbCk7
Cj4gIAo+IC0tIAo+IDIuMjAuMQo+IAo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCj4gSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdAo+IEludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKPiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeAoKLS0gCkRhbmllbCBWZXR0ZXIKU29mdHdhcmUgRW5naW5lZXIs
IEludGVsIENvcnBvcmF0aW9uCmh0dHA6Ly9ibG9nLmZmd2xsLmNoCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
