Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DF9893A463F
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Jun 2021 18:15:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 106756F383;
	Fri, 11 Jun 2021 16:14:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qv1-xf35.google.com (mail-qv1-xf35.google.com
 [IPv6:2607:f8b0:4864:20::f35])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 08C3F6E0B8;
 Fri, 11 Jun 2021 16:14:58 +0000 (UTC)
Received: by mail-qv1-xf35.google.com with SMTP id w4so9366300qvr.11;
 Fri, 11 Jun 2021 09:14:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=PJx9k8K0Vlxp7Gyldm0RoVO0/91+usykGtV/bvwPqPg=;
 b=eIe0JVDHjZEOg9+/IVxKEAGM8g0u/yfIvf74IbE5DjSK0bs2l9GXKd0fS/PYCngo4v
 t9arp25R6EMqvO0SMf4LwAo+bG+f8luyOAicWGyYWWGY6MJAAqd5IRevTt52IrSmCN7h
 soA2BOYhmdS4Mbp4Qb2tQCRuPRi0Y/dv3J3ljKVEyZ0gKfb+KPxGbHZ9xBscWoReqnYg
 SHuxTVnIXYW6gmvx5E3+LV+b9lbFHjXYrJNjC+Lp9BBIIWCwDYhFjwnGvKMIvSD0vXu9
 LKCItNVxTobN9dgKc/AVoclJVvzxeYPNI4FTpHmkpw11XTe+l7kwI1/GHa8/irLzkNkQ
 HQfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=PJx9k8K0Vlxp7Gyldm0RoVO0/91+usykGtV/bvwPqPg=;
 b=TLVnH67RSLIkW0EtlsTzvYSVrjhKcpRRETJnMhx5G5zVVFOhfKIlCckPf7lY/6tHrH
 8+1E4hAX4qwKAS6CINE6gr/ieCNYKPXiAeYIFw9tSpZ1E8PaHetGhK4+vvgC1QyjkPG0
 QgqYMfg2kwXzlSZ9jvK/Pcds2aSZ4hgvguWfjhklkKYvRckxn4ce4Rnu5U/j/p2MJ79N
 xzhJsj57eZJsalfsy4wKaUow+LoHf46oFMVKSFuvQDzRQdtIpcXYB4VElByYeIeDv3kg
 CdIYvUG02t+bL+t1OoNqShyX+4E2NCfT0FkAmdBeM+1EDO9okcO2J8KNVVw1ZlGQP6ZY
 e9pw==
X-Gm-Message-State: AOAM5324htMgLEKQqmqjWE0IArUm+vMslbz3VucSFhAP+EUxaQPjJz6q
 wljjroaHK7VM2tFYwXQSZLJtoomjqNj/xfP/LBPbJyf1u6w=
X-Google-Smtp-Source: ABdhPJwMhe2uu3P/tEaBbxTQf0BzCJISlGtIES7/YTvWvDBOi9mpHrrpasDJnrp56yZo44DzM0wFE/1qPT7WToFefU0=
X-Received: by 2002:a05:6214:b6c:: with SMTP id
 ey12mr5598518qvb.48.1623428097252; 
 Fri, 11 Jun 2021 09:14:57 -0700 (PDT)
MIME-Version: 1.0
References: <20210611145459.8576-1-thomas.hellstrom@linux.intel.com>
 <20210611145459.8576-2-thomas.hellstrom@linux.intel.com>
In-Reply-To: <20210611145459.8576-2-thomas.hellstrom@linux.intel.com>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Fri, 11 Jun 2021 17:14:30 +0100
Message-ID: <CAM0jSHMdhjpnPu7yHWuVS4Ym4OUnV4Qg1z5oWDiyuqBtx0eFKw@mail.gmail.com>
To: =?UTF-8?Q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH v2 1/4] drm/i915: Update object placement
 flags to be mutable
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 ML dri-devel <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCAxMSBKdW4gMjAyMSBhdCAxNTo1NSwgVGhvbWFzIEhlbGxzdHLDtm0KPHRob21hcy5o
ZWxsc3Ryb21AbGludXguaW50ZWwuY29tPiB3cm90ZToKPgo+IFRoZSBvYmplY3Qgb3BzIGk5MTVf
R0VNX09CSkVDVF9IQVNfSU9NRU0gYW5kIHRoZSBvYmplY3QKPiBJOTE1X0JPX0FMTE9DX1NUUlVD
VF9QQUdFIGZsYWdzIGFyZSBjb25zaWRlcmVkIGltbXV0YWJsZSBieQo+IG11Y2ggb2Ygb3VyIGNv
ZGUuIEludHJvZHVjZSBhIG5ldyBtZW1fZmxhZ3MgbWVtYmVyIHRvIGhvbGQgdGhlc2UKPiBhbmQg
bWFrZSBzdXJlIGNoZWNrcyBmb3IgdGhlc2UgZmxhZ3MgYmVpbmcgc2V0IGFyZSBlaXRoZXIgZG9u
ZQo+IHVuZGVyIHRoZSBvYmplY3QgbG9jayBvciB3aXRoIHBhZ2VzIHByb3Blcmx5IHBpbm5lZC4g
VGhlIGZsYWdzCj4gd2lsbCBjaGFuZ2UgZHVyaW5nIG1pZ3JhdGlvbiB1bmRlciB0aGUgb2JqZWN0
IGxvY2suCj4KPiBTaWduZWQtb2ZmLWJ5OiBUaG9tYXMgSGVsbHN0csO2bSA8dGhvbWFzLmhlbGxz
dHJvbUBsaW51eC5pbnRlbC5jb20+ClJldmlld2VkLWJ5OiBNYXR0aGV3IEF1bGQgPG1hdHRoZXcu
YXVsZEBpbnRlbC5jb20+Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LWdmeAo=
