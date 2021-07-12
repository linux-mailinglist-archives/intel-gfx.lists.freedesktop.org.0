Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A93C53C605F
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Jul 2021 18:22:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 06C0289D57;
	Mon, 12 Jul 2021 16:22:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qk1-x732.google.com (mail-qk1-x732.google.com
 [IPv6:2607:f8b0:4864:20::732])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3D5D789D53;
 Mon, 12 Jul 2021 16:22:53 +0000 (UTC)
Received: by mail-qk1-x732.google.com with SMTP id 18so1429926qka.0;
 Mon, 12 Jul 2021 09:22:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=91K9fVSqD7weIFhTBGPdZoWmFd1uNebYt0kdpf0Fcos=;
 b=mAtOy7kE1GoHX/dACCRPGowBhQ2PDL92s+EWROICJxR3udof3FZESHfyA3/PE2G4n/
 XSVfAVk1ljdFgMDpOs6ma4ZCqxaxBWSV1NlIFMx/zUCnY+Ql3nH2TUEenHIiY/2wa7CP
 tNtWvyjHfuvbfA3TldA2uhTQA7GtjPhPCNNI2VCwfQoy/HrfZ0eIGBNmekc/A5/8eBsB
 Ot3gIT8MBh1IQP2eEnPBtIvmZy0Mk1I5aSAqt+/R/EA1DNRzg9vwcqwwDmv7v/UbHLGm
 Cxeow6v1yOzZQ93AjWLI0iT2YL6Dt4u5eTKMiI25QVLCqxhfz1hJhX9/cOug5S/f2CZL
 7Fkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=91K9fVSqD7weIFhTBGPdZoWmFd1uNebYt0kdpf0Fcos=;
 b=pO2Wonwvb5feRYOpPo9xDV0Ym8ehanCuVrt9V6n3HLZo5xSgFzO3Lvpb3DQF/Ub75l
 obKP95XnNTVfhGobva3abIGPqlW53trLYqJwe1D02lPD7WW2T66NxbW3ZTNonJkL3VCQ
 1a2/Kgbv7mhJroUA9mQzvW/CSuIcXNpTQJsmZAAzBXyW7t5QCXJpyyH+7DuHPDJEiaon
 ID8jDwqOeu6Mhl1oC5c4Ir8zFCoKKTj7L0qo2AHJ7Iqigknjdr2cKsXbAUYkx0oPImVC
 5wR3RsQ/ookwXfVsNfeiqzNhFnSia22x/iWj7uxkWcKnhhkhBAD/l6v/CqlPos4vK0tH
 i5oQ==
X-Gm-Message-State: AOAM533yLYXeRoIpLADSXh+4l4GeKjceU4rV+PIu4f03wK5VEv1VgBF4
 rN9CeDvIHgycdYQfUKGPx2v0DjuKjo0FbtAk2Uk=
X-Google-Smtp-Source: ABdhPJxEJ9vdrHgKV2C5yvulxCqCUUQ8ONuFDpIzr6wLyzuk6Zq5sB/ptc+kXP8Vdfcg2aDm9ppAMVXR4J18HIWNqE0=
X-Received: by 2002:a37:9e07:: with SMTP id h7mr28939942qke.481.1626106972262; 
 Mon, 12 Jul 2021 09:22:52 -0700 (PDT)
MIME-Version: 1.0
References: <161dac7a-5aad-150e-7c14-7bb195ecf30f@canonical.com>
In-Reply-To: <161dac7a-5aad-150e-7c14-7bb195ecf30f@canonical.com>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Mon, 12 Jul 2021 17:22:23 +0100
Message-ID: <CAM0jSHMO052Tcr_EMKDioOedHuX-foxz7_ejRVSLZuK8j+j9tA@mail.gmail.com>
To: Colin Ian King <colin.king@canonical.com>
Subject: Re: [Intel-gfx] drm/i915/ttm Initialize the ttm device and memory
 managers
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
Cc: =?UTF-8?Q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 David Airlie <airlied@linux.ie>, intel-gfx <intel-gfx@lists.freedesktop.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCAxMiBKdWwgMjAyMSBhdCAxNjoxNywgQ29saW4gSWFuIEtpbmcgPGNvbGluLmtpbmdA
Y2Fub25pY2FsLmNvbT4gd3JvdGU6Cj4KPiBIaSwKPgo+IFN0YXRpYyBhbmFseXNpcyB3aXRoIENv
dmVyaXR5IG9uIGxpbnV4LW5leHQgaGFzIGZvdW5kIGEgcG90ZW50aWFsIGlzc3VlCj4gaW4gZHJp
dmVycy9ncHUvZHJtL2k5MTUvc2VsZnRlc3RzL2ludGVsX21lbW9yeV9yZWdpb24uYyBpbiBmdW5j
dGlvbgo+IGlndF9tb2NrX2ZpbGwgLSB0aGUgcHJvYmxlbWF0aWMgY29tbWl0IGlzIGFzIGZvbGxv
d3M6Cj4KPiBjb21taXQgZDE0ODczODkyM2ZkYjUwNzcwODllNDhlYzE1NTU1ZTYwMDgxMDBkMAo+
IEF1dGhvcjogVGhvbWFzIEhlbGxzdHLDtm0gPHRob21hcy5oZWxsc3Ryb21AbGludXguaW50ZWwu
Y29tPgo+IERhdGU6ICAgV2VkIEp1biAyIDEwOjM4OjA4IDIwMjEgKzAyMDAKPgo+ICAgICBkcm0v
aTkxNS90dG0gSW5pdGlhbGl6ZSB0aGUgdHRtIGRldmljZSBhbmQgbWVtb3J5IG1hbmFnZXJzCj4K
PiBUaGUgYW5hbHlzaXMgaXMgYXMgZm9sbG93czoKPgo+Cj4gIDQ5IHN0YXRpYyBpbnQgaWd0X21v
Y2tfZmlsbCh2b2lkICphcmcpCj4gIDUwIHsKPiAgNTEgICAgICAgIHN0cnVjdCBpbnRlbF9tZW1v
cnlfcmVnaW9uICptZW0gPSBhcmc7Cj4gIDUyICAgICAgICByZXNvdXJjZV9zaXplX3QgdG90YWwg
PSByZXNvdXJjZV9zaXplKCZtZW0tPnJlZ2lvbik7Cj4gIDUzICAgICAgICByZXNvdXJjZV9zaXpl
X3QgcGFnZV9zaXplOwo+ICA1NCAgICAgICAgcmVzb3VyY2Vfc2l6ZV90IHJlbTsKPiAgNTUgICAg
ICAgIHVuc2lnbmVkIGxvbmcgbWF4X3BhZ2VzOwo+ICA1NiAgICAgICAgdW5zaWduZWQgbG9uZyBw
YWdlX251bTsKPiAgNTcgICAgICAgIExJU1RfSEVBRChvYmplY3RzKTsKPiAgNTggICAgICAgIGlu
dCBlcnIgPSAwOwo+ICA1OQo+ICA2MCAgICAgICAgcGFnZV9zaXplID0gbWVtLT5jaHVua19zaXpl
Owo+ICA2MSAgICAgICAgcmVtID0gdG90YWw7Cj4gIDYyIHJldHJ5Ogo+Cj4gdmFsdWVfb3Zlcndy
aXRlOiBPdmVyd3JpdGluZyBwcmV2aW91cyB3cml0ZSB0byBtYXhfcGFnZXMgd2l0aCB2YWx1ZSBm
cm9tCj4gZGl2NjRfdTY0KHJlbSwgcGFnZV9zaXplKS4KPgo+ICA2MyAgICAgICAgbWF4X3BhZ2Vz
ID0gZGl2NjRfdTY0KHJlbSwgcGFnZV9zaXplKTsKPiAgNjQKPiAgNjUgICAgICAgIGZvcl9lYWNo
X3ByaW1lX251bWJlcl9mcm9tKHBhZ2VfbnVtLCAxLCBtYXhfcGFnZXMpIHsKPiAgNjYgICAgICAg
ICAgICAgICAgcmVzb3VyY2Vfc2l6ZV90IHNpemUgPSBwYWdlX251bSAqIHBhZ2Vfc2l6ZTsKPiAg
NjcgICAgICAgICAgICAgICAgc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iajsKPiAgNjgK
PiAgNjkgICAgICAgICAgICAgICAgb2JqID0gaTkxNV9nZW1fb2JqZWN0X2NyZWF0ZV9yZWdpb24o
bWVtLCBzaXplLCAwKTsKPiAgNzAgICAgICAgICAgICAgICAgaWYgKElTX0VSUihvYmopKSB7Cj4g
IDcxICAgICAgICAgICAgICAgICAgICAgICAgZXJyID0gUFRSX0VSUihvYmopOwo+ICA3MiAgICAg
ICAgICAgICAgICAgICAgICAgIGJyZWFrOwo+ICA3MyAgICAgICAgICAgICAgICB9Cj4gIDc0Cj4g
IDc1ICAgICAgICAgICAgICAgIGVyciA9IGk5MTVfZ2VtX29iamVjdF9waW5fcGFnZXNfdW5sb2Nr
ZWQob2JqKTsKPiAgNzYgICAgICAgICAgICAgICAgaWYgKGVycikgewo+ICA3NyAgICAgICAgICAg
ICAgICAgICAgICAgIGk5MTVfZ2VtX29iamVjdF9wdXQob2JqKTsKPiAgNzggICAgICAgICAgICAg
ICAgICAgICAgICBicmVhazsKPiAgNzkgICAgICAgICAgICAgICAgfQo+ICA4MAo+ICA4MSAgICAg
ICAgICAgICAgICBsaXN0X2FkZCgmb2JqLT5zdF9saW5rLCAmb2JqZWN0cyk7Cj4gIDgyICAgICAg
ICAgICAgICAgIHJlbSAtPSBzaXplOwo+ICA4MyAgICAgICAgfQo+ICA4NAo+ICA4NSAgICAgICAg
aWYgKGVyciA9PSAtRU5PTUVNKQo+ICA4NiAgICAgICAgICAgICAgICBlcnIgPSAwOwo+ICA4NyAg
ICAgICAgaWYgKGVyciA9PSAtRU5YSU8pIHsKPiAgODggICAgICAgICAgICAgICAgaWYgKHBhZ2Vf
bnVtICogcGFnZV9zaXplIDw9IHJlbSkgewo+ICA4OSAgICAgICAgICAgICAgICAgICAgICAgIGlm
IChtZW0tPmlzX3JhbmdlX21hbmFnZXIgJiYgbWF4X3BhZ2VzID4gMSkgewo+Cj4gVW51c2VkIHZh
bHVlIChVTlVTRURfVkFMVUUpCj4gYXNzaWduZWRfdmFsdWU6IEFzc2lnbmluZyB2YWx1ZSBmcm9t
IG1heF9wYWdlcyA+PiAxIHRvIG1heF9wYWdlcyBoZXJlLAo+IGJ1dCB0aGF0IHN0b3JlZCB2YWx1
ZSBpcyBvdmVyd3JpdHRlbiBiZWZvcmUgaXQgY2FuIGJlIHVzZWQuCgpZZWFoLCB0aGF0IGRvZXNu
J3QgbG9vayBnb29kLgoKQUZBSUsgdGhpcyBzaG91bGQgYmUgZml4ZWQgd2l0aCBkNTNlYzMyMmRj
N2QgKCJkcm0vaTkxNS90dG06IHN3aXRjaApvdmVyIHRvIHR0bV9idWRkeV9tYW4iKSwgd2hpY2gg
aXMgaW4gZHJtLXRpcCwgYnV0IEkgZ3Vlc3MgaGFzIG5vdCBtYWRlCml0cyB3YXkgb3ZlciB0byBs
aW51eC1uZXh0IHlldC4KClRoYW5rcyBmb3IgdGhlIHJlcG9ydC4KCj4KPiAgOTAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIG1heF9wYWdlcyA+Pj0gMTsKPiAgOTEgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIGdvdG8gcmV0cnk7Cj4gIDkyICAgICAgICAgICAgICAgICAgICAg
ICAgfQo+ICA5Mwo+Cj4gVGhlIHJpZ2h0IHNoaWZ0IHRvIG1heF9wYWdlcyBvbiBsaW5lIDkwIGlz
IGJlaW5nIG92ZXJ3cml0dGVuIG9uIGxpbmUgNjQKPiBvbiB0aGUgcmV0cnkuCj4KPiBDb2xpbgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
