Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 58C1E5E221
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Jul 2019 12:37:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF52D6E10C;
	Wed,  3 Jul 2019 10:37:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x541.google.com (mail-ed1-x541.google.com
 [IPv6:2a00:1450:4864:20::541])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 80FCA6E115
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Jul 2019 10:37:52 +0000 (UTC)
Received: by mail-ed1-x541.google.com with SMTP id s49so1600837edb.1
 for <intel-gfx@lists.freedesktop.org>; Wed, 03 Jul 2019 03:37:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=kmFsZcthydy4vNR/lVJgNkHm32f6mOfBxxgvOUWPS+c=;
 b=ATOt+IHgw0QdnjH0vLbgctZvVcaxk9iNNxYW94Sktyry4Ny3cucyuderQeWrMoAEJK
 EtwIGF5iUe3b3FfzqU4zQuztPwLG8QfRtfZQe4huEgMo/THQIyI0gHfOyfjXm5PMJQtO
 1s4tObLNc+FMOVrMIgbN3xFyLu+vFHuZ+y2Jiwl+FyjTDo2I0whTkh+zIJbEjTDKv2GS
 mqVDQcmbS7Bg6lXoQ/hhr1P/qPlWUqc2AUIIIa4HS/hwhQyxRpVk7cBDmQubMgGpcZ6D
 G3GPcLjp26i3xmvupKW/Ju8zoS4gF6qvt8PjPMeCc3j4icHDBrZA6+bJl+cR5UDsi6zs
 /i8g==
X-Gm-Message-State: APjAAAVlmwSiwLddDMWanSVzDa8ej1tGDQsiWE9Weiy0P2/TM9ZxVuDq
 67Xvh1m6SSp6EcN8vucUZFaIyw==
X-Google-Smtp-Source: APXvYqyPlrAgGFhE1nLG17AYMYkJKNE+vFUfsNPoxxPfNhbWOA74DoC789o5kuJ36/7tjWgiWE0xNw==
X-Received: by 2002:a50:8ba6:: with SMTP id m35mr41761130edm.199.1562150271145; 
 Wed, 03 Jul 2019 03:37:51 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id s17sm375213ejz.70.2019.07.03.03.37.49
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 03 Jul 2019 03:37:50 -0700 (PDT)
Date: Wed, 3 Jul 2019 12:37:46 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Arkadiusz Hiler <arkadiusz.hiler@intel.com>
Message-ID: <20190703103746.GH15868@phenom.ffwll.local>
References: <20181016222341.1537-1-drawat@vmware.com>
 <20181016222341.1537-5-drawat@vmware.com>
 <CAKMK7uEUN_-cdkMxvO1VwhD7YhGTNgd56y+Z8Pjv53Ri7wMSNw@mail.gmail.com>
 <20190625060132.rsidgloshp7oz4ud@ahiler-desk1.fi.intel.com>
 <20190625153701.GA12905@phenom.ffwll.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190625153701.GA12905@phenom.ffwll.local>
X-Operating-System: Linux phenom 4.19.0-5-amd64 
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=kmFsZcthydy4vNR/lVJgNkHm32f6mOfBxxgvOUWPS+c=;
 b=WThrlVvzMvExLeNo9brP7/6ocDOnUVQv0Q4py/QPnYqXDVZ5haKGhgFEM9YBAS8VCu
 XAn7k1W55UWDO4hxjDtie1V1JirQ2JzOb6eTepFtOzx3Nk2Z5kF2qyeSrwTZA23vQFQt
 1TkovVTgga7tO6KCR3maL5a720ByfMXCrWqVo=
Subject: Re: [Intel-gfx] [PATCH i-g-t 5/5] tests/kms_selftest: Integrate
 kernel selftest test-drm_modeset
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
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>,
 IGT development <igt-dev@lists.freedesktop.org>,
 VMware Graphics <linux-graphics-maintainer@vmware.com>,
 Deepak Rawat <drawat@vmware.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCBKdW4gMjUsIDIwMTkgYXQgMDU6Mzc6MDFQTSArMDIwMCwgRGFuaWVsIFZldHRlciB3
cm90ZToKPiBPbiBUdWUsIEp1biAyNSwgMjAxOSBhdCAwOTowMTozMkFNICswMzAwLCBBcmthZGl1
c3ogSGlsZXIgd3JvdGU6Cj4gPiBPbiBUaHUsIEp1biAyMCwgMjAxOSBhdCAwMzoyMDowMlBNICsw
MjAwLCBEYW5pZWwgVmV0dGVyIHdyb3RlOgo+ID4gPiBPbiBUdWUsIE9jdCAxNiwgMjAxOCBhdCAw
MzoyMzo0MVBNIC0wNzAwLCBEZWVwYWsgUmF3YXQgd3JvdGU6Cj4gPiA+ID4gQ2FsbCBrZXJuZWwg
c2VsZnRlc3QgbW9kdWxlIHRlc3QtZHJtX21vZGVzZXQgZm9yIHRlc3RpbmcgS01TLgo+ID4gPiA+
Cj4gPiA+ID4gdjI6Cj4gPiA+ID4gLSBBZGQgdGVzdCBhbHBoYWJldGljYWxseS4KPiA+ID4gPiAt
IEFkZCB0ZXN0IHRvIG1lc29uIGJ1aWxkLgo+ID4gPiA+Cj4gPiA+ID4gdjM6IFJlbmFtZSB0byBr
bXNfc2VsZnRlc3QuCj4gPiA+ID4KPiA+ID4gPiBTaWduZWQtb2ZmLWJ5OiBEZWVwYWsgUmF3YXQg
PGRyYXdhdEB2bXdhcmUuY29tPgo+ID4gPiAKPiA+ID4gSnVzdCByZWFsaXplZCB0aGF0IHRoaXMg
bmV2ZXIgbGFuZGVkIC4uLiBhbnkgcmVhc29ucz8gV291bGQgYmUgbmljZSB0byBnZXQKPiA+ID4g
dGhpcyBoYW5kbGVkLgo+ID4gPiAKPiA+ID4gUGV0cmkvQXJlaz8KPiA+ID4gCj4gPiA+IENoZWVy
cywgRGFuaWVsCj4gPiAKPiA+IFdoYXQgZG8geW91IG1lYW4gYnkgInRoaXMgbmV2ZXIgbGFuZGVk
Ij8KPiA+IAo+ID4gaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pZ3QtZ3B1LXRv
b2xzL2NvbW1pdC83NzY2YjFlMjM0OGIKPiA+IAo+ID4gY29tbWl0IDc3NjZiMWUyMzQ4YjMyY2M4
ZWQ1OGE5NzJjNmZkNTNiMjAyNzk1NDkKPiA+IEF1dGhvcjogICAgIERlZXBhayBSYXdhdCA8ZHJh
d2F0QHZtd2FyZS5jb20+Cj4gPiBBdXRob3JEYXRlOiBUdWUgT2N0IDE2IDE1OjIzOjQxIDIwMTgg
LTA3MDAKPiA+IENvbW1pdDogICAgIERhbmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJAZmZ3bGwu
Y2g+Cj4gPiBDb21taXREYXRlOiBXZWQgT2N0IDE3IDA5OjQxOjA3IDIwMTggKzAyMDAKPiA+IAo+
ID4gdGVzdHMva21zX3NlbGZ0ZXN0OiBJbnRlZ3JhdGUga2VybmVsIHNlbGZ0ZXN0IHRlc3QtZHJt
X21vZGVzZXQKPiAKPiBIbSBub3Qgc3VyZSB3aGF0IEkgbG9va2VkIGF0LCBidXQgaXQgd2FzbnQg
dGhlcmUuIFNvcnJ5IGZvciB0aGUgbm9pc2UuCgpPayB0aGlzIG9uZSBoZXJlIGxhbmRlZCwgYnV0
IHRoZSBvdGhlciA0IGRpZG4ndCAuLi4gQ2FuIHdlIHVuYmxvY2sgdGhlbQpzb21laG93PyBPciBh
bnkgaG9sZC11cD8gV291bGQgYmUgbmljZSB0byBoYXZlIGlndHMgZm9yIGF0IGxlYXN0IHRoZSBt
b3JlCnJlY2VudGx5IGFkZGVkIHVhcGksIGVzcGVjaWFsbHkgd2hlbiB0aGUgdGVzdHMgZXhpc3Qg
Li4uCi1EYW5pZWwKLS0gCkRhbmllbCBWZXR0ZXIKU29mdHdhcmUgRW5naW5lZXIsIEludGVsIENv
cnBvcmF0aW9uCmh0dHA6Ly9ibG9nLmZmd2xsLmNoCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeA==
