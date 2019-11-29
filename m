Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AF3D610D7DA
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Nov 2019 16:25:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 385056E932;
	Fri, 29 Nov 2019 15:25:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com
 [IPv6:2a00:1450:4864:20::441])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 51F536E932
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Nov 2019 15:25:16 +0000 (UTC)
Received: by mail-wr1-x441.google.com with SMTP id n1so35682474wra.10
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Nov 2019 07:25:16 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=NfIQXcdozugtzYoTDKIImmzqG3maCz2CoIDCOXQtwKA=;
 b=WG5M1unDopj4sDjkYXE43vIITp/qO6r+3llJ9L7oRpwiOm7PpKQD/ltHyZAQAKDKqY
 LLQxMu9uUfpnoWA+aPWz7XyNbEGuTcWk3WGrQTfj4x6CbIoVOoKTnJQ9Es9wxTw6PaVO
 Vco/IHkIg1cMjbMxKtC3pzElT1G7YqRKpy2E+AZcOktC+lI3Yt2mUHAyIBjq1pTfCwN1
 qmjbtg71lSditD4QKVTr86oIW9IOluqi2oxgeZpU7QqVhogJSM7M5o4KSS/vIO4PQUQa
 qrBxVc4LEs1lNjOlRC/yJ1o7ZbVPQSDDOF2U11LKo6WHbYexHhLClEgABINUOUlkJdc0
 bkWw==
X-Gm-Message-State: APjAAAXkcYtXW6WoFC4iI3X9rkI7SnpZMg2iDV/tLvnGexIiFaM3EfFE
 wHtO3eLirTIvJ5TfIiqkCla3EA==
X-Google-Smtp-Source: APXvYqwYcjfLBlDoCGuyjFgcZcIRf/VPa77jmwGiv41FA9qxjZUz6ppL6hNxbql5t4jkHlgBJxekFw==
X-Received: by 2002:adf:82e7:: with SMTP id 94mr14670764wrc.60.1575041114921; 
 Fri, 29 Nov 2019 07:25:14 -0800 (PST)
Received: from phenom.ffwll.local (212-51-149-96.fiber7.init7.net.
 [212.51.149.96])
 by smtp.gmail.com with ESMTPSA id w19sm13615825wmk.36.2019.11.29.07.25.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 29 Nov 2019 07:25:13 -0800 (PST)
Date: Fri, 29 Nov 2019 16:25:11 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20191129152511.GH624164@phenom.ffwll.local>
References: <cover.1575022735.git.jani.nikula@intel.com>
 <3a27f95b424a67b3542b5906c660741daf1d4ea6.1575022735.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3a27f95b424a67b3542b5906c660741daf1d4ea6.1575022735.git.jani.nikula@intel.com>
X-Operating-System: Linux phenom 5.3.0-2-amd64 
User-Agent: Mutt/1.12.2 (2019-09-21)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=NfIQXcdozugtzYoTDKIImmzqG3maCz2CoIDCOXQtwKA=;
 b=IlpxAo9JyKZWDoJPcVLrHd2C9iiTZDh5a4GlEJBbUQrK4PP72JPiMyJAh5HMNUzdMK
 d4pdl2A1A/KeCDHoZAnHX5vmrN2EdaBW18VK5bY8oza9W4rpMNuJ/ddYr+B2QIKFyQSa
 Ik5kN4eZExRnrmzQrPEEOSGv0kyaslOTRXcTQ=
Subject: Re: [Intel-gfx] [PATCH v2 06/14] video: fbmem: use const pointer
 for fb_ops
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

T24gRnJpLCBOb3YgMjksIDIwMTkgYXQgMTI6Mjk6MzZQTSArMDIwMCwgSmFuaSBOaWt1bGEgd3Jv
dGU6Cj4gVXNlIGNvbnN0IGZvciBmYl9vcHMgdG8gbGV0IHVzIG1ha2UgdGhlIGluZm8tPmZib3Bz
IHBvaW50ZXIgY29uc3QgaW4gdGhlCj4gZnV0dXJlLgo+IAo+IHYyOiByZWJhc2UKPiAKPiBDYzog
bGludXgtZmJkZXZAdmdlci5rZXJuZWwub3JnCj4gU2lnbmVkLW9mZi1ieTogSmFuaSBOaWt1bGEg
PGphbmkubmlrdWxhQGludGVsLmNvbT4KCkkgZ3Vlc3MgbXkgci1iIGdvdCBsb3N0IG9uIHRoaXMs
IG5vdCBzdXJlLCBhbnl3YXkuCgpSZXZpZXdlZC1ieTogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZl
dHRlckBmZndsbC5jaD4KCj4gLS0tCj4gIGRyaXZlcnMvdmlkZW8vZmJkZXYvY29yZS9mYm1lbS5j
IHwgNCArKy0tCj4gIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25z
KC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvdmlkZW8vZmJkZXYvY29yZS9mYm1lbS5jIGIv
ZHJpdmVycy92aWRlby9mYmRldi9jb3JlL2ZibWVtLmMKPiBpbmRleCA5OTA1NTA5MzBhOGUuLjdk
ZGViOTAzMzdiYyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3ZpZGVvL2ZiZGV2L2NvcmUvZmJtZW0u
Ywo+ICsrKyBiL2RyaXZlcnMvdmlkZW8vZmJkZXYvY29yZS9mYm1lbS5jCj4gQEAgLTEwNzksNyAr
MTA3OSw3IEBAIEVYUE9SVF9TWU1CT0woZmJfYmxhbmspOwo+ICBzdGF0aWMgbG9uZyBkb19mYl9p
b2N0bChzdHJ1Y3QgZmJfaW5mbyAqaW5mbywgdW5zaWduZWQgaW50IGNtZCwKPiAgCQkJdW5zaWdu
ZWQgbG9uZyBhcmcpCj4gIHsKPiAtCXN0cnVjdCBmYl9vcHMgKmZiOwo+ICsJY29uc3Qgc3RydWN0
IGZiX29wcyAqZmI7Cj4gIAlzdHJ1Y3QgZmJfdmFyX3NjcmVlbmluZm8gdmFyOwo+ICAJc3RydWN0
IGZiX2ZpeF9zY3JlZW5pbmZvIGZpeDsKPiAgCXN0cnVjdCBmYl9jbWFwIGNtYXBfZnJvbTsKPiBA
QCAtMTI5Miw3ICsxMjkyLDcgQEAgc3RhdGljIGxvbmcgZmJfY29tcGF0X2lvY3RsKHN0cnVjdCBm
aWxlICpmaWxlLCB1bnNpZ25lZCBpbnQgY21kLAo+ICAJCQkgICAgdW5zaWduZWQgbG9uZyBhcmcp
Cj4gIHsKPiAgCXN0cnVjdCBmYl9pbmZvICppbmZvID0gZmlsZV9mYl9pbmZvKGZpbGUpOwo+IC0J
c3RydWN0IGZiX29wcyAqZmI7Cj4gKwljb25zdCBzdHJ1Y3QgZmJfb3BzICpmYjsKPiAgCWxvbmcg
cmV0ID0gLUVOT0lPQ1RMQ01EOwo+ICAKPiAgCWlmICghaW5mbykKPiAtLSAKPiAyLjIwLjEKPiAK
PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IEludGVs
LWdmeCBtYWlsaW5nIGxpc3QKPiBJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngKCi0t
IApEYW5pZWwgVmV0dGVyClNvZnR3YXJlIEVuZ2luZWVyLCBJbnRlbCBDb3Jwb3JhdGlvbgpodHRw
Oi8vYmxvZy5mZndsbC5jaApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZng=
