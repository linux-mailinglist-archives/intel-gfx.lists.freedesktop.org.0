Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 30749D1337
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Oct 2019 17:49:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 510E26E9F9;
	Wed,  9 Oct 2019 15:49:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x543.google.com (mail-ed1-x543.google.com
 [IPv6:2a00:1450:4864:20::543])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B7E736E9FA
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Oct 2019 15:49:19 +0000 (UTC)
Received: by mail-ed1-x543.google.com with SMTP id c4so2508830edl.0
 for <intel-gfx@lists.freedesktop.org>; Wed, 09 Oct 2019 08:49:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=Uxbm6w5qzsvt3qcCKJmUxi5HTTAU3tF4FPLiLrQcIWQ=;
 b=oLpoWWxhHowNXV6f04OunFxpwjwp+VNnpBEvpBPzIS1B/9ZS1GVJSvew5ZqTMMHtnf
 XEG3nSQ5hUpnOLp4YtL/DUSpT0oB3bpuy2cFr+T/w8TO3CWcAcAmMlJuiaR3L4DzLiG6
 2p136g3YTRX4Pg79axA8fcel3M5Kbz5hvLtrAqJoDk/jyjnjF9NvGcIcR9h8lwC8t4dr
 7WQO01a13ZU0dD8uDniisczRuln4q39bjLMSmxRdKTQy+sTygxhE+lVfgC+BtvFBHtnf
 QS3k9jsVT99tPYpr3o/28cZ0t+fkxeP4Hge+j2BB9pmttcuyvbzEKDcv3WUTdISVokF5
 pgmQ==
X-Gm-Message-State: APjAAAUp8pqXYYnUNEl6AeuHd27/JOVXQE5vii+vQ+Xi11MGP9wX5R9+
 EjcB2v6RQPqphiYQ31RGT2KWAg==
X-Google-Smtp-Source: APXvYqy9GE0ovzH4DE+Z5tUvo9fHaOV78Y327IhN4mVodnY4mNaOxyGy8eZGtDBvaKLRlowJgKatfA==
X-Received: by 2002:a17:906:184e:: with SMTP id
 w14mr3489791eje.10.1570636158253; 
 Wed, 09 Oct 2019 08:49:18 -0700 (PDT)
Received: from phenom.ffwll.local (212-51-149-96.fiber7.init7.net.
 [212.51.149.96])
 by smtp.gmail.com with ESMTPSA id h1sm309077ejb.86.2019.10.09.08.49.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 09 Oct 2019 08:49:17 -0700 (PDT)
Date: Wed, 9 Oct 2019 17:49:15 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Juston Li <juston.li@intel.com>
Message-ID: <20191009154914.GL16989@phenom.ffwll.local>
References: <20191003184628.7021-1-juston.li@intel.com>
 <20191003184628.7021-2-juston.li@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191003184628.7021-2-juston.li@intel.com>
X-Operating-System: Linux phenom 5.2.0-2-amd64 
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=Uxbm6w5qzsvt3qcCKJmUxi5HTTAU3tF4FPLiLrQcIWQ=;
 b=TQlp2e6F2OEOUqHSpEkT4XZpkfg8m6AYyh9n0mGD0H8ixIMxRYRMfhgU4v9lNS3ptM
 awfY5xDNjAbtWKX/UWfznMicWEK7kJV0TN5Smf0oNuZ4+RtrsyHVVVOvyryR6WHlRM5J
 x3iHFeQJRfeF9t31OUAt36RaklMFAoVrSiBEk=
Subject: Re: [Intel-gfx] [PATCH i-g-t v2 2/2] NOMERGE: Import drm.h up to
 54ecb8f7028c
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
Cc: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCBPY3QgMDMsIDIwMTkgYXQgMTE6NDY6MjhBTSAtMDcwMCwgSnVzdG9uIExpIHdyb3Rl
Ogo+IERlcGVuZHMgb24gdW1tZXJnZWQga2VybmVsIGNvZGUgZm9yIGdldGZiMgo+IAo+IFJlc3Qg
b2YgZHJtLmggdGFrZW4gZnJvbToKPiBjb21taXQgNTRlY2I4ZjcwMjhjNWViM2Q3NDBiYjgyYjBm
MWQ5MGYyZGY2M2M1Ywo+IEF1dGhvcjogTGludXMgVG9ydmFsZHMgPHRvcnZhbGRzQGxpbnV4LWZv
dW5kYXRpb24ub3JnPgo+IERhdGU6ICAgTW9uIFNlcCAzMCAxMDozNTo0MCAyMDE5IC0wNzAwCj4g
Cj4gICAgIExpbnV4IDUuNC1yYzEKPiAKPiBTaWduZWQtb2ZmLWJ5OiBKdXN0b24gTGkgPGp1c3Rv
bi5saUBpbnRlbC5jb20+CgpJIGd1ZXNzIHRoaXMgc2hvdWxkIGJlIGZpcnN0LCB0aGVuIHRoZSBw
YXRjaCB0aGF0IHVzZXMgaXQ/Ci1EYW5pZWwKCj4gLS0tCj4gIGluY2x1ZGUvZHJtLXVhcGkvZHJt
LmggfCAzOSArKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysKPiAgMSBmaWxl
IGNoYW5nZWQsIDM5IGluc2VydGlvbnMoKykKPiAKPiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9kcm0t
dWFwaS9kcm0uaCBiL2luY2x1ZGUvZHJtLXVhcGkvZHJtLmgKPiBpbmRleCA4NWM2ODVhMjA3NWUu
LjBiMDJmNGM5MmQxZSAxMDA2NDQKPiAtLS0gYS9pbmNsdWRlL2RybS11YXBpL2RybS5oCj4gKysr
IGIvaW5jbHVkZS9kcm0tdWFwaS9kcm0uaAo+IEBAIC02NDMsNiArNjQzLDcgQEAgc3RydWN0IGRy
bV9nZW1fb3BlbiB7Cj4gICNkZWZpbmUgRFJNX0NBUF9QQUdFX0ZMSVBfVEFSR0VUCTB4MTEKPiAg
I2RlZmluZSBEUk1fQ0FQX0NSVENfSU5fVkJMQU5LX0VWRU5UCTB4MTIKPiAgI2RlZmluZSBEUk1f
Q0FQX1NZTkNPQkoJCTB4MTMKPiArI2RlZmluZSBEUk1fQ0FQX1NZTkNPQkpfVElNRUxJTkUJMHgx
NAo+ICAKPiAgLyoqIERSTV9JT0NUTF9HRVRfQ0FQIGlvY3RsIGFyZ3VtZW50IHR5cGUgKi8KPiAg
c3RydWN0IGRybV9nZXRfY2FwIHsKPiBAQCAtNzI5LDggKzczMCwxOCBAQCBzdHJ1Y3QgZHJtX3N5
bmNvYmpfaGFuZGxlIHsKPiAgCV9fdTMyIHBhZDsKPiAgfTsKPiAgCj4gK3N0cnVjdCBkcm1fc3lu
Y29ial90cmFuc2ZlciB7Cj4gKwlfX3UzMiBzcmNfaGFuZGxlOwo+ICsJX191MzIgZHN0X2hhbmRs
ZTsKPiArCV9fdTY0IHNyY19wb2ludDsKPiArCV9fdTY0IGRzdF9wb2ludDsKPiArCV9fdTMyIGZs
YWdzOwo+ICsJX191MzIgcGFkOwo+ICt9Owo+ICsKPiAgI2RlZmluZSBEUk1fU1lOQ09CSl9XQUlU
X0ZMQUdTX1dBSVRfQUxMICgxIDw8IDApCj4gICNkZWZpbmUgRFJNX1NZTkNPQkpfV0FJVF9GTEFH
U19XQUlUX0ZPUl9TVUJNSVQgKDEgPDwgMSkKPiArI2RlZmluZSBEUk1fU1lOQ09CSl9XQUlUX0ZM
QUdTX1dBSVRfQVZBSUxBQkxFICgxIDw8IDIpIC8qIHdhaXQgZm9yIHRpbWUgcG9pbnQgdG8gYmVj
b21lIGF2YWlsYWJsZSAqLwo+ICBzdHJ1Y3QgZHJtX3N5bmNvYmpfd2FpdCB7Cj4gIAlfX3U2NCBo
YW5kbGVzOwo+ICAJLyogYWJzb2x1dGUgdGltZW91dCAqLwo+IEBAIC03NDEsMTIgKzc1MiwzMyBA
QCBzdHJ1Y3QgZHJtX3N5bmNvYmpfd2FpdCB7Cj4gIAlfX3UzMiBwYWQ7Cj4gIH07Cj4gIAo+ICtz
dHJ1Y3QgZHJtX3N5bmNvYmpfdGltZWxpbmVfd2FpdCB7Cj4gKwlfX3U2NCBoYW5kbGVzOwo+ICsJ
Lyogd2FpdCBvbiBzcGVjaWZpYyB0aW1lbGluZSBwb2ludCBmb3IgZXZlcnkgaGFuZGxlcyovCj4g
KwlfX3U2NCBwb2ludHM7Cj4gKwkvKiBhYnNvbHV0ZSB0aW1lb3V0ICovCj4gKwlfX3M2NCB0aW1l
b3V0X25zZWM7Cj4gKwlfX3UzMiBjb3VudF9oYW5kbGVzOwo+ICsJX191MzIgZmxhZ3M7Cj4gKwlf
X3UzMiBmaXJzdF9zaWduYWxlZDsgLyogb25seSB2YWxpZCB3aGVuIG5vdCB3YWl0aW5nIGFsbCAq
Lwo+ICsJX191MzIgcGFkOwo+ICt9Owo+ICsKPiArCj4gIHN0cnVjdCBkcm1fc3luY29ial9hcnJh
eSB7Cj4gIAlfX3U2NCBoYW5kbGVzOwo+ICAJX191MzIgY291bnRfaGFuZGxlczsKPiAgCV9fdTMy
IHBhZDsKPiAgfTsKPiAgCj4gK3N0cnVjdCBkcm1fc3luY29ial90aW1lbGluZV9hcnJheSB7Cj4g
KwlfX3U2NCBoYW5kbGVzOwo+ICsJX191NjQgcG9pbnRzOwo+ICsJX191MzIgY291bnRfaGFuZGxl
czsKPiArCV9fdTMyIHBhZDsKPiArfTsKPiArCj4gKwo+ICAvKiBRdWVyeSBjdXJyZW50IHNjYW5v
dXQgc2VxdWVuY2UgbnVtYmVyICovCj4gIHN0cnVjdCBkcm1fY3J0Y19nZXRfc2VxdWVuY2Ugewo+
ICAJX191MzIgY3J0Y19pZDsJCS8qIHJlcXVlc3RlZCBjcnRjX2lkICovCj4gQEAgLTkwMyw2ICs5
MzUsMTMgQEAgZXh0ZXJuICJDIiB7Cj4gICNkZWZpbmUgRFJNX0lPQ1RMX01PREVfR0VUX0xFQVNF
CURSTV9JT1dSKDB4QzgsIHN0cnVjdCBkcm1fbW9kZV9nZXRfbGVhc2UpCj4gICNkZWZpbmUgRFJN
X0lPQ1RMX01PREVfUkVWT0tFX0xFQVNFCURSTV9JT1dSKDB4QzksIHN0cnVjdCBkcm1fbW9kZV9y
ZXZva2VfbGVhc2UpCj4gIAo+ICsjZGVmaW5lIERSTV9JT0NUTF9TWU5DT0JKX1RJTUVMSU5FX1dB
SVQJRFJNX0lPV1IoMHhDQSwgc3RydWN0IGRybV9zeW5jb2JqX3RpbWVsaW5lX3dhaXQpCj4gKyNk
ZWZpbmUgRFJNX0lPQ1RMX1NZTkNPQkpfUVVFUlkJCURSTV9JT1dSKDB4Q0IsIHN0cnVjdCBkcm1f
c3luY29ial90aW1lbGluZV9hcnJheSkKPiArI2RlZmluZSBEUk1fSU9DVExfU1lOQ09CSl9UUkFO
U0ZFUglEUk1fSU9XUigweENDLCBzdHJ1Y3QgZHJtX3N5bmNvYmpfdHJhbnNmZXIpCj4gKyNkZWZp
bmUgRFJNX0lPQ1RMX1NZTkNPQkpfVElNRUxJTkVfU0lHTkFMCURSTV9JT1dSKDB4Q0QsIHN0cnVj
dCBkcm1fc3luY29ial90aW1lbGluZV9hcnJheSkKPiArCj4gKyNkZWZpbmUgRFJNX0lPQ1RMX01P
REVfR0VURkIyCQlEUk1fSU9XUigweENFLCBzdHJ1Y3QgZHJtX21vZGVfZmJfY21kMikKPiArCj4g
IC8qKgo+ICAgKiBEZXZpY2Ugc3BlY2lmaWMgaW9jdGxzIHNob3VsZCBvbmx5IGJlIGluIHRoZWly
IHJlc3BlY3RpdmUgaGVhZGVycwo+ICAgKiBUaGUgZGV2aWNlIHNwZWNpZmljIGlvY3RsIHJhbmdl
IGlzIGZyb20gMHg0MCB0byAweDlmLgo+IC0tIAo+IDIuMjEuMAo+IAo+IF9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dAo+IEludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiBodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAoKLS0gCkRhbmllbCBWZXR0ZXIK
U29mdHdhcmUgRW5naW5lZXIsIEludGVsIENvcnBvcmF0aW9uCmh0dHA6Ly9ibG9nLmZmd2xsLmNo
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
