Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B0C92FCC47
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Jan 2021 09:05:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 288566E13C;
	Wed, 20 Jan 2021 08:05:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com
 [IPv6:2a00:1450:4864:20::330])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AED2F6E13C
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Jan 2021 08:05:31 +0000 (UTC)
Received: by mail-wm1-x330.google.com with SMTP id c124so1970428wma.5
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Jan 2021 00:05:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=i0E7CMnkJOpieDzn6Vg+wQQjdFWzO1+rNLsWhsRoe3o=;
 b=OCmzqzCx+kJKozrzBCDTsmV41sa//C8Xz6MgavuR25f4oaXCkpVJHvPWsgS/XltA9g
 6MsYyWYfHRBgBYFYevh1ruUsDAO1aCK96HPyTCAT4mYW4BjSb2RygzqlQUBXGQMZyYo4
 oHcyS26K06EL/6eFa3SOYkGyH0h5522KhkZ9z9CcF1618Y3lDTM061Yj/gpJalQ9pSlf
 BjL36AZ1kECVP7B92jDo2L9BZRpQrJ4zvGVsDQuphXYnvNXXnR52kOfzjo8BiS+LtI+6
 3bRjXALY6WVXvu3dC9Djf0Bx8av9XnTcqBqUhhYBD/3Ln/T0JDGmzMzfxu+yKs/9xxE3
 nf/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=i0E7CMnkJOpieDzn6Vg+wQQjdFWzO1+rNLsWhsRoe3o=;
 b=K9V086LKk7zPUoL7X3FH3zcbHCsXfcOD2PijQoAQbbcfwSsL0gfUfoeaVdUcOGNrAc
 Scy0lFq+r2dy4MBW0a/XfO0iQEwkMTcNqYaZGDIQzdj5EeTOYAp+IqvnMDRsZ+5eHXRj
 MybrwpC029f/Clu2e2KrLb7SDTWLfSOWFs+fV6fiQfUK5X8H1cnQirjLpu2lz3BzrfO1
 VPwXZ5NC5i/zLmdwCs+GKErrBlFfzwKusuTKA5TK8et/ObDxeDU/bXZkTXQNDZBqi6c/
 J3YH/JblI3vOzkHcjmKW6VeDRjyrPQwoqSZz6iFkvVhv6PZMjIiBX6ZCQf8qsc2llp1d
 K8cw==
X-Gm-Message-State: AOAM533HO0TioOKD2RSLJxRvsuu9D113JjFuREviwkzKeu7eoIOtcw9r
 FiTXt+VI6OjVyehSrK6S3ZJTfA==
X-Google-Smtp-Source: ABdhPJw03a3Mt+JIRRJlN+qL5Wvmb168qR1zfbc+zME3aDudXf2zqFFDvbGkZ01CEqJS8MlUBAm8PA==
X-Received: by 2002:a7b:cb46:: with SMTP id v6mr3049511wmj.19.1611129930271;
 Wed, 20 Jan 2021 00:05:30 -0800 (PST)
Received: from dell ([91.110.221.158])
 by smtp.gmail.com with ESMTPSA id s13sm2538012wra.53.2021.01.20.00.05.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 20 Jan 2021 00:05:29 -0800 (PST)
Date: Wed, 20 Jan 2021 08:05:26 +0000
From: Lee Jones <lee.jones@linaro.org>
To: Zack Rusin <zackr@vmware.com>
Message-ID: <20210120080526.GL4903@dell>
References: <20210115181601.3432599-1-lee.jones@linaro.org>
 <F914D9B9-6DD4-4383-9F7C-8D09FBFE96CE@vmware.com>
 <YAWhDRkSOHbJ+2Le@phenom.ffwll.local> <20210118150945.GE4903@dell>
 <YAXDgmWMR9s4OgxN@phenom.ffwll.local> <20210119082927.GJ4903@dell>
 <8DE96253-47A3-4A16-9331-62F547A2CC44@vmware.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8DE96253-47A3-4A16-9331-62F547A2CC44@vmware.com>
Subject: Re: [Intel-gfx] [PATCH 00/29] [Set 15] Finally rid W=1 warnings
 from GPU!
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
Cc: David Airlie <airlied@linux.ie>,
 "nouveau@lists.freedesktop.org" <nouveau@lists.freedesktop.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Eric Anholt <eric@anholt.net>, Jesse Barnes <jesse.barnes@intel.com>,
 Jan Safrata <jan.nikitenko@gmail.com>, Sumit Semwal <sumit.semwal@linaro.org>,
 Gareth Hughes <gareth@valinux.com>, Pei Zhang <pei.zhang@intel.com>,
 Rob Clark <rob.clark@linaro.org>, Min He <min.he@intel.com>,
 Linux-graphics-maintainer <Linux-graphics-maintainer@vmware.com>,
 Ben Skeggs <bskeggs@redhat.com>, Dave Airlie <airlied@redhat.com>,
 Niu Bing <bing.niu@intel.com>,
 "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>,
 jim liu <jim.liu@intel.com>, Roland Scheidegger <sroland@vmware.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>,
 Maxime Ripard <mripard@kernel.org>,
 "intel-gvt-dev@lists.freedesktop.org" <intel-gvt-dev@lists.freedesktop.org>,
 Eddie Dong <eddie.dong@intel.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Faith <faith@valinux.com>, Thomas Zimmermann <tzimmermann@suse.de>,
 Ping Gao <ping.a.gao@intel.com>,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 Zhiyuan Lv <zhiyuan.lv@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCAxOSBKYW4gMjAyMSwgWmFjayBSdXNpbiB3cm90ZToKCj4gCj4gCj4gPiBPbiBKYW4g
MTksIDIwMjEsIGF0IDAzOjI5LCBMZWUgSm9uZXMgPGxlZS5qb25lc0BsaW5hcm8ub3JnPiB3cm90
ZToKPiA+IAo+ID4gT24gTW9uLCAxOCBKYW4gMjAyMSwgRGFuaWVsIFZldHRlciB3cm90ZToKPiA+
IAo+ID4+IE9uIE1vbiwgSmFuIDE4LCAyMDIxIGF0IDAzOjA5OjQ1UE0gKzAwMDAsIExlZSBKb25l
cyB3cm90ZToKPiA+Pj4gT24gTW9uLCAxOCBKYW4gMjAyMSwgRGFuaWVsIFZldHRlciB3cm90ZToK
PiA+Pj4gCj4gPj4+PiBPbiBGcmksIEphbiAxNSwgMjAyMSBhdCAwNjoyNzoxNVBNICswMDAwLCBa
YWNrIFJ1c2luIHdyb3RlOgo+ID4+Pj4+IAo+ID4+Pj4+PiBPbiBKYW4gMTUsIDIwMjEsIGF0IDEz
OjE1LCBMZWUgSm9uZXMgPGxlZS5qb25lc0BsaW5hcm8ub3JnPiB3cm90ZToKPiA+Pj4+Pj4gCj4g
Pj4+Pj4+IFRoaXMgc2V0IGlzIHBhcnQgb2YgYSBsYXJnZXIgZWZmb3J0IGF0dGVtcHRpbmcgdG8g
Y2xlYW4tdXAgVz0xCj4gPj4+Pj4+IGtlcm5lbCBidWlsZHMsIHdoaWNoIGFyZSBjdXJyZW50bHkg
b3ZlcndoZWxtaW5nbHkgcmlkZGxlZCB3aXRoCj4gPj4+Pj4+IG5pZ2dseSBsaXR0bGUgd2Fybmlu
Z3MuCj4gPj4+Pj4+IAo+ID4+Pj4+PiBMYXN0IHNldCEgIEFsbCBjbGVhbiBhZnRlciB0aGlzIGZv
cjsgQXJtLCBBcm02NCwgUFBDLCBNSVBTIGFuZCB4ODYuCj4gPj4+Pj4gCj4gPj4+Pj4gVGhhbmtz
ISBGb3IgYWxsIHRoZSB2bXdnZnggYml0czoKPiA+Pj4+PiBSZXZpZXdlZC1ieTogWmFjayBSdXNp
biA8emFja3JAdm13YXJlLmNvbT4KPiA+Pj4+IAo+ID4+Pj4gT2sgSSBtZXJnZWQgZXZlcnl0aGlu
ZyBleGNlcHQgdm13Z2Z4ICh0aGF0J3MgZm9yIFphY2spIGFuZCBpOTE1L25vdXZlYXUKPiA+Pj4+
ICh0aG9zZSBnZW5lcmFsbHkgZ28gdGhyb3VnaCBvdGhlciB0cmVlcywgcGxzIGhvbGxlciBpZiB0
aGV5J3JlIHN0dWNrKS4KPiA+Pj4gCj4gPj4+IFRoYW5rcyBEYW5pZWwsIHlvdSdyZSBhIHN1cGVy
c3RhciEKPiA+Pj4gCj4gPj4+IFNvIFphY2sgd2lsbCB0YWtlIHRoZSB2bXdnZnggcGFydHM/ICBE
ZXNwaXRlIHByb3ZpZGluZyBhIFItYj8KPiA+PiAKPiA+PiBJIG9ubHkgbWVyZ2Ugc3R1ZmYgdGhh
dCdzIGRlZmFjdG8gYWJhbmRvbmVkIGFscmVhZHkuIEV2ZXJ5dGhpbmcgZWxzZSBJIHRyeQo+ID4+
IHRvIG9mZmxvYWQgdG8gd2hvbWV2ZXIgYWN0dWFsbHkgY2FyZXMgOi0pCj4gPiAKPiA+IFVuZGVy
c3Rvb2QuICBUaGFua3MgZm9yIHRoZSBleHBsYW5hdGlvbi4KPiA+IAo+ID4gSG9wZWZ1bGx5IFph
Y2sgYWN0dWFsbHkgY2FyZXMuIDpECj4gCj4gaGFoLCBJIGRvLiBJIGp1c3QgcHVzaGVkIGFsbCBv
ZiB0aGUgY2hhbmdlcyB0byBkcm0tbWlzYy1uZXh0LiBMZXQgbWUKPiBrbm93IGlmIEkgbWlzc2Vk
IGFueXRoaW5nLiBUaGFua3MhCgpQZXJmZWN0LiAgVGhhbmsgeW91IFphY2suCgotLSAKTGVlIEpv
bmVzIFvmnY7nkLzmlq9dClNlbmlvciBUZWNobmljYWwgTGVhZCAtIERldmVsb3BlciBTZXJ2aWNl
cwpMaW5hcm8ub3JnIOKUgiBPcGVuIHNvdXJjZSBzb2Z0d2FyZSBmb3IgQXJtIFNvQ3MKRm9sbG93
IExpbmFybzogRmFjZWJvb2sgfCBUd2l0dGVyIHwgQmxvZwpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZngK
