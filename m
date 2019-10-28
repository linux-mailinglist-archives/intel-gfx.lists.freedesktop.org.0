Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EB1A0E8427
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Oct 2019 10:20:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B9F56E175;
	Tue, 29 Oct 2019 09:20:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-x141.google.com (mail-lf1-x141.google.com
 [IPv6:2a00:1450:4864:20::141])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B36126E9E8
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Oct 2019 20:00:24 +0000 (UTC)
Received: by mail-lf1-x141.google.com with SMTP id u16so8764144lfq.3
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Oct 2019 13:00:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=AVdgFrWNH//OPpgoQ498krKCJpC3kMsskrK4ufR3eLY=;
 b=k4SNP4J4KjepeHZmO97ykJh7c34VZLVjtfkUM9qELGHpGp50anmUq0VYbSiLaIXA1I
 7Yvgj3A5epQVi/oN6RCGtbbvt5+YyH9bgTZwYsUqwinMypJfnmrcwDXifkJur5PWmRd4
 FTZxQ8/YvZgtZhD28opTSfiKB1SRJf96rpVcx7BBab8KgzcaGV7QGFkmxUcrGRxjl/zq
 e8OV49+ysHlXYqFJakaN2n6ZOPdxg+A7lhSGf/7dhjc16aYNu+/7DgsVlEY4osHEFGtN
 Ioav7nZt4SeSTi39q5Go2fgq7ejyS4wSRmdZi6keAfBeTR+JIOoCidlQpINgSxjZPDoN
 rvdA==
X-Gm-Message-State: APjAAAVlhMQAQtnYbGBaksNmOnLW7DLBXPX2cYX8CARQ2g4wDk21dAjC
 DUiFCAyDteFJFe/kpRrf6WY411bf+4UNdYrtAZo=
X-Google-Smtp-Source: APXvYqw/mIc0+q+OQ2KlK0h17nq4o0L29WHM4qUxHQ0ynbQwfMKdN86CsoUIaJfoJS8tjXA7a1qp6uL+ldjV3WpWfeY=
X-Received: by 2002:ac2:4a72:: with SMTP id q18mr9104045lfp.184.1572292822770; 
 Mon, 28 Oct 2019 13:00:22 -0700 (PDT)
MIME-Version: 1.0
References: <20191028110031.29616-1-imre.deak@intel.com>
 <20191028181517.22602-1-imre.deak@intel.com>
In-Reply-To: <20191028181517.22602-1-imre.deak@intel.com>
From: Val Kulkov <val.kulkov@gmail.com>
Date: Mon, 28 Oct 2019 16:00:11 -0400
Message-ID: <CABFXWOArh2fNzTJaVV33gBcALEX6NAvhdmbwT3nGJGKEnAzrzA@mail.gmail.com>
To: Imre Deak <imre.deak@intel.com>
X-Mailman-Approved-At: Tue, 29 Oct 2019 09:20:01 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=AVdgFrWNH//OPpgoQ498krKCJpC3kMsskrK4ufR3eLY=;
 b=V4E6U/hkOiIKxo/e+23amGTuRSvzx6C3TWNoE0MvHX4h8Pf0EYi52FhpptiMFwUpF6
 IRAY5MFXpRWb0TAgjfxbfNH6KowGHKkO7p8kJdl+rg35HpCYRqEt9ZtxitIT490XaPmQ
 /KTTex5UOg6/16sWYAkI7Dzs3SKh6O0M8TLBG/uQMYpt2OxniUAdvcF69lWorQyujoJT
 zfo3f4ar1Z+s78aCmKS22ntzolxkd6ae8LtXRTclNPMLb9WC4WgEAIcFPXXWX9KaPcwY
 yW38N4n8xyRvWpgm4r88s1udnV2fgq288GtE1y2H0/GGXRcKJd0rz/TK4HTmM9zBuw1y
 ineg==
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915: Avoid HPD poll detect
 triggering a new detect cycle
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
Cc: intel-gfx@lists.freedesktop.org, wangqr <wqr.prg@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCAyOCBPY3QgMjAxOSBhdCAxNDoxNiwgSW1yZSBEZWFrIDxpbXJlLmRlYWtAaW50ZWwu
Y29tPiB3cm90ZToKPgo+IEZvciB0aGUgSFBEIGludGVycnVwdCBmdW5jdGlvbmFsaXR5IHRoZSBI
VyBkZXBlbmRzIG9uIHBvd2VyIHdlbGxzIGluIHRoZQo+IGRpc3BsYXkgY29yZSBkb21haW4gdG8g
YmUgb24uIEFjY29yZGluZ2x5IHdoZW4gZW5hYmxpbmcgdGhlc2UgcG93ZXIKPiB3ZWxscyB0aGUg
SFBEIHBvbGxpbmcgbG9naWMgd2lsbCBmb3JjZSBhbiBIUEQgZGV0ZWN0aW9uIGN5Y2xlIHRvIGFj
Y291bnQKPiBmb3IgaG90cGx1ZyBldmVudHMgdGhhdCBtYXkgaGF2ZSBoYXBwZW5lZCB3aGVuIHN1
Y2ggYSBwb3dlciB3ZWxsIHdhcwo+IG9mZi4KPgo+IFRodXMgYSBkZXRlY3QgY3ljbGUgc3RhcnRl
ZCBieSBwb2xsaW5nIGNvdWxkIHN0YXJ0IGEgbmV3IGRldGVjdCBjeWNsZSBpZgo+IGEgcG93ZXIg
d2VsbCBpbiB0aGUgZGlzcGxheSBjb3JlIGRvbWFpbiBnZXRzIGVuYWJsZWQgZHVyaW5nIGRldGVj
dCBhbmQKPiBzdGF5cyBlbmFibGVkIGFmdGVyIGRldGVjdCBjb21wbGV0ZXMuIFRoYXQgaW4gdHVy
biBjYW4gbGVhZCB0byBhCj4gZGV0ZWN0aW9uIGN5Y2xlIHJ1bmF3YXkuCj4KPiBUbyBwcmV2ZW50
IHJlLXRyaWdnZXJpbmcgYSBwb2xsLWRldGVjdCBjeWNsZSBtYWtlIHN1cmUgd2UgZHJvcCBhbGwg
cG93ZXIKPiByZWZlcmVuY2VzIHdlIGFjcXVpcmVkIGR1cmluZyBkZXRlY3Qgc3luY2hyb25vdXNs
eSBieSB0aGUgZW5kIG9mIGRldGVjdC4KPiBUaGlzIHdpbGwgbGV0IHRoZSBwb2xsLWRldGVjdCBs
b2dpYyBjb250aW51ZSB3aXRoIHBvbGxpbmcgKG1hdGNoaW5nIHRoZQo+IG9mZiBzdGF0ZSBvZiB0
aGUgY29ycmVzcG9uZGluZyBwb3dlciB3ZWxscykgaW5zdGVhZCBvZiBzY2hlZHVsaW5nIGEgbmV3
Cj4gZGV0ZWN0aW9uIGN5Y2xlLgo+Cj4gRml4ZXM6IDZjZmU3ZWMwMmU4NSAoImRybS9pOTE1OiBS
ZW1vdmUgdGhlIHVubmVlZGVkIEFVWCBwb3dlciByZWYgZnJvbSBpbnRlbF9kcF9kZXRlY3QoKSIp
Cj4gQnVnemlsbGE6IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lk
PTExMjEyNQo+IFJlcG9ydGVkLWFuZC10ZXN0ZWQtYnk6IFZhbCBLdWxrb3YgPHZhbC5rdWxrb3ZA
Z21haWwuY29tPgo+IFJlcG9ydGVkLWFuZC10ZXN0ZWQtYnk6IHdhbmdxciA8d3FyLnByZ0BnbWFp
bC5jb20+Cj4gQ2M6IFZhbCBLdWxrb3YgPHZhbC5rdWxrb3ZAZ21haWwuY29tPgo+IENjOiB3YW5n
cXIgPHdxci5wcmdAZ21haWwuY29tPgo+IENjOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmph
bGFAbGludXguaW50ZWwuY29tPgo+IFNpZ25lZC1vZmYtYnk6IEltcmUgRGVhayA8aW1yZS5kZWFr
QGludGVsLmNvbT4KCkNvbmZpcm1pbmcgdGhhdCB0aGlzIGxhdGVzdCByZXZpc2lvbiBvZiB0aGUg
cGF0Y2ggZml4ZXMgdGhlIGlzc3VlLgpUZXN0ZWQgb24gbGludXgtZHJtLXRpcC1naXQKNS40Ljg2
NTE2Mi5kZDViY2NmYTNiNWQtMSBvbiBFZ2xvYmFsIE5VQyBGYW5sZXNzIE1pbmkgUEMgSW50ZWwg
TjMxNTAuCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
