Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EF99910DB82
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Nov 2019 23:43:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 10B6F6E94F;
	Fri, 29 Nov 2019 22:43:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vs1-xe43.google.com (mail-vs1-xe43.google.com
 [IPv6:2607:f8b0:4864:20::e43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1CC386E94F
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Nov 2019 22:43:29 +0000 (UTC)
Received: by mail-vs1-xe43.google.com with SMTP id c25so20460853vsp.0
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Nov 2019 14:43:29 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=SQMnPo40UX8Fhb/hVyxGKWEmQCsQMGvkJE6e+/BKW/c=;
 b=KgCGiYYKaU/HnmaxwkCUUKdnZfi1zkO3Uc+Nqan1ko+5tqGea/X/r8nVthKRAgCglc
 0EBVjCZDZ/nHtycXWTBBQ8oW5YA4waoiOOOuYU4rVOdSYZ5Mltff5BPA1RAa/MmyrCDe
 3/crV577Ma+a9584OZeivAAjswFFWupraIFJzKmjUcdQlH9Et29agArfB7M77AwRnzsU
 hngINUJWaZA2R2n1nB3Je73mMD0lBDY7G+jl6VpMBmrpT9ilf1aMT4YT7hLpxNByA9fO
 9WRtp8lrdWLuPSL8n1czRnIdd2KQzMDL16gWySLTl6YuhuQlI/uA8srYeueQOjBimKPP
 dyiA==
X-Gm-Message-State: APjAAAVT9k5XABntrRYKNyGkSmoH6iwlP/70zEEzF+HlRVBQST6dQwE9
 jfXBpbMyQ3p3eLzl1BulpSYabqd9rGUdTAcx0jw=
X-Google-Smtp-Source: APXvYqwyW8E6eEhgvcUCQfV0Tda6yXxytYUQJClZmNZhz8KcRQGg/7RnKA3tfFP3dIfDo56a+tu52SZ5uFc73ssduE4=
X-Received: by 2002:a05:6102:36d:: with SMTP id
 f13mr34561533vsa.34.1575067408113; 
 Fri, 29 Nov 2019 14:43:28 -0800 (PST)
MIME-Version: 1.0
References: <20191129222702.1456292-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191129222702.1456292-1-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Fri, 29 Nov 2019 22:43:02 +0000
Message-ID: <CAM0jSHP8i6_PBSgp=HBdxf+9pxNSrSEunL14Hc4MmaOZUHqMRQ@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=SQMnPo40UX8Fhb/hVyxGKWEmQCsQMGvkJE6e+/BKW/c=;
 b=Wdjvr8gIAYacEZjkSQ1jywSV2bFiWOZBhS1HvNfc3/Kqs9GiCrFa5W53d/8Lxx1nYb
 7LFZyqkvisPM4jjceRpbcrCgxdT5QezLr3tfImTAmSbnTFk4K4fuoSNwCyCyPJTrFn07
 +yYlANs5aLyKbufceivOP2erHWOhie17wq4p3WuLx8Kpn+loaO6H2cDHqAGIFrt4zqHD
 FvMs2hLTpHywJsgTV7c2Zc+GNGfu1bTt2YZW3nV0CkZbckgguT4salvrKHN/ypnzNS2w
 Xdz6hCA52iyIUrrw9fYA1FBpnvmS+TDhUCjKil5SfNqxAuQKy4m0CB/BCsGQzikgu0An
 moAw==
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftests: Keep engine awake
 during live_coherency
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCAyOSBOb3YgMjAxOSBhdCAyMjoyNywgQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13
aWxzb24uY28udWs+IHdyb3RlOgo+Cj4gS2VlcCB0aGUgZW5naW5lIGF3YWtlIGFuZCBzbyBhdm9p
ZCBmcmVxdWVudCBjeWNsaW5nIGluIGFuZCBvdXQgb2YKPiBwb3dlcnNhdmluZyBtb2RlIHRvIGVs
aW1pbmF0ZSB0aGUgdW5uZWNlc3Nhcnkgb3ZlcmhlYWQgYW5kIHNwZWVkIHVwIHRoZQo+IHRlc3Rp
bmcuCj4KPiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5j
by51az4KPiBDYzogTWF0dGhldyBBdWxkIDxtYXR0aGV3LmF1bGRAaW50ZWwuY29tPgpSZXZpZXdl
ZC1ieTogTWF0dGhldyBBdWxkIDxtYXR0aGV3LmF1bGRAaW50ZWwuY29tPgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
