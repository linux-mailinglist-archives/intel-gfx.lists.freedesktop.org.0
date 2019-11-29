Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 40FE010D6BD
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Nov 2019 15:12:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 700AC6E918;
	Fri, 29 Nov 2019 14:12:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtp.domeneshop.no (smtp.domeneshop.no
 [IPv6:2a01:5b40:0:3005::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D7BA96E917;
 Fri, 29 Nov 2019 14:12:38 +0000 (UTC)
Received: from 211.81-166-168.customer.lyse.net ([81.166.168.211]:64572
 helo=[192.168.10.174])
 by smtp.domeneshop.no with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.92) (envelope-from <noralf@tronnes.org>)
 id 1iah0f-0002dV-0h; Fri, 29 Nov 2019 15:12:37 +0100
To: Jani Nikula <jani.nikula@intel.com>, dri-devel@lists.freedesktop.org,
 linux-fbdev@vger.kernel.org
References: <cover.1575022735.git.jani.nikula@intel.com>
 <1eae0b23d4724d5702b886b6a061ec8219eb9284.1575022735.git.jani.nikula@intel.com>
From: =?UTF-8?Q?Noralf_Tr=c3=b8nnes?= <noralf@tronnes.org>
Message-ID: <ba77f1eb-4363-9cbe-2df3-fe645f2bdcb9@tronnes.org>
Date: Fri, 29 Nov 2019 15:12:34 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.1
MIME-Version: 1.0
In-Reply-To: <1eae0b23d4724d5702b886b6a061ec8219eb9284.1575022735.git.jani.nikula@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; d=tronnes.org
 ; s=ds201810; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=3mCU094ZQX0krTPWJz8llV34hfM4IFj8vzP99YkgB3A=; b=R1+2cvBsoXKhygj+BtHx1xm7bA
 ztXMySFNWcdf6z3oEEPO33wBTzZFifFcKvE37H/Y1Y86PEEPS3Ypvz6qZfwUwKFe7B46xN2o0XhLe
 oMc9/bZAjpX+YckxzHAtfgLJgxmrk2QWnAgV3m5wN1Cxl3uyPf4V9sK6HoXNCaDfmvuXymQKvOqwx
 OMouunzWHFUpfVTzwLAuBLVZk9tAtu+RY1J1hVhj2sOk7UtiVBTyyzoZM/snFQt1N2nUHEQAaSi3/
 K7n10DUKDvWyrnAgthDMMn/hS6GtgvpKbrRJ8p5xQLFeqcdU9UJsxM93RYyj1FDLgnGeZeMxfABOE
 5K2Pz4Hg==;
Subject: Re: [Intel-gfx] [PATCH v2 02/14] drm/fb-helper: don't preserve
 fb_ops across deferred IO use
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

CgpEZW4gMjkuMTEuMjAxOSAxMS4yOSwgc2tyZXYgSmFuaSBOaWt1bGE6Cj4gRGVmZXJyZWQgSU8g
bm93IHByZXNlcnZlcyB0aGUgZmJfb3BzLgo+IAo+IHYyOiBSZW1vdmUgdGhlIG5vLW9wIHZmcmVl
LCBkcm9wIGEgbG9jYWwgdmFyICAoTm9yYWxmKQo+IAo+IENjOiBOb3JhbGYgVHLDuG5uZXMgPG5v
cmFsZkB0cm9ubmVzLm9yZz4KPiBDYzogZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+
IFJldmlld2VkLWJ5OiBEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGZmd2xsLmNoPgo+IFNp
Z25lZC1vZmYtYnk6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+Cj4gLS0tCgpS
ZXZpZXdlZC1ieTogTm9yYWxmIFRyw7hubmVzIDxub3JhbGZAdHJvbm5lcy5vcmc+Cl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5n
IGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
