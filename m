Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AF7C024B58F
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Aug 2020 12:25:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 899466E119;
	Thu, 20 Aug 2020 10:25:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from pio-pvt-msa1.bahnhof.se (pio-pvt-msa1.bahnhof.se [79.136.2.40])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 778CC6E119
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Aug 2020 10:25:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by pio-pvt-msa1.bahnhof.se (Postfix) with ESMTP id 8796E3F76F;
 Thu, 20 Aug 2020 12:25:26 +0200 (CEST)
Authentication-Results: pio-pvt-msa1.bahnhof.se; dkim=pass (1024-bit key;
 unprotected) header.d=shipmail.org header.i=@shipmail.org header.b="R3bBqe3k";
 dkim-atps=neutral
X-Virus-Scanned: Debian amavisd-new at bahnhof.se
X-Spam-Flag: NO
X-Spam-Score: -2.206
X-Spam-Level: 
X-Spam-Status: No, score=-2.206 tagged_above=-999 required=6.31
 tests=[BAYES_00=-1.9, DKIM_SIGNED=0.1, DKIM_VALID=-0.1,
 DKIM_VALID_AU=-0.1, DKIM_VALID_EF=-0.1, NICE_REPLY_A=-0.107,
 URIBL_BLOCKED=0.001] autolearn=ham autolearn_force=no
Received: from pio-pvt-msa1.bahnhof.se ([127.0.0.1])
 by localhost (pio-pvt-msa1.bahnhof.se [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7d2cncWo2CCv; Thu, 20 Aug 2020 12:25:25 +0200 (CEST)
Received: from mail1.shipmail.org (h-205-35.A357.priv.bahnhof.se
 [155.4.205.35]) (Authenticated sender: mb878879)
 by pio-pvt-msa1.bahnhof.se (Postfix) with ESMTPA id 67A813F78A;
 Thu, 20 Aug 2020 12:25:22 +0200 (CEST)
Received: from localhost.localdomain (unknown [134.134.139.83])
 by mail1.shipmail.org (Postfix) with ESMTPSA id C2B3A361F12;
 Thu, 20 Aug 2020 12:25:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=shipmail.org; s=mail;
 t=1597919122; bh=I17MR8wcpdJB8tJoC9OD9Ol/6JPsMfy1K15vQlh13Lo=;
 h=Subject:To:References:From:Date:In-Reply-To:From;
 b=R3bBqe3kX0vc3AJywIPpD+XfC3ZaYqHlNfVWfAIM6tm56qt+YqWAiowOHzoKYJWO3
 BNJA1NmWHYq55MXNMTohXBinDiBqEsaUKx5ghkIMtFNSCPBVreGpR7JZ3+2et2yDqb
 Y0PpdciOzL90x2WPXTJI/Vxk8mLPIGqepI8SFM18=
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20200819140904.1708856-1-maarten.lankhorst@linux.intel.com>
 <20200819140904.1708856-15-maarten.lankhorst@linux.intel.com>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m_=28Intel=29?= <thomas_os@shipmail.org>
Message-ID: <9609059d-1059-f29a-11d2-b4d7afe39f9c@shipmail.org>
Date: Thu, 20 Aug 2020 12:25:14 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200819140904.1708856-15-maarten.lankhorst@linux.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v2 14/24] drm/i915: Make sure execbuffer
 always passes ww state to i915_vma_pin.
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDgvMTkvMjAgNDowOCBQTSwgTWFhcnRlbiBMYW5raG9yc3Qgd3JvdGU6Cj4gQXMgYSBwcmVw
YXJhdGlvbiBzdGVwIGZvciBmdWxsIG9iamVjdCBsb2NraW5nIGFuZCB3YWl0L3dvdW5kIGhhbmRs
aW5nCj4gZHVyaW5nIHBpbiBhbmQgb2JqZWN0IG1hcHBpbmcsIGVuc3VyZSB0aGF0IHdlIGFsd2F5
cyBwYXNzIHRoZSB3dyBjb250ZXh0Cj4gaW4gaTkxNV9nZW1fZXhlY2J1ZmZlci5jIHRvIGk5MTVf
dm1hX3BpbiwgdXNlIGxvY2tkZXAgdG8gZW5zdXJlIHRoaXMKPiBoYXBwZW5zLgo+Cj4gVGhpcyBh
bHNvIHJlcXVpcmVzIGNoYW5naW5nIHRoZSBvcmRlciBvZiBlYl9wYXJzZSBzbGlnaHRseSwgdG8g
ZW5zdXJlCj4gd2UgcGFzcyB3dyBhdCBhIHBvaW50IHdoZXJlIHdlIGNvdWxkIHN0aWxsIGhhbmRs
ZSAtRURFQURMSyBzYWZlbHkuCj4KPiBTaWduZWQtb2ZmLWJ5OiBNYWFydGVuIExhbmtob3JzdCA8
bWFhcnRlbi5sYW5raG9yc3RAbGludXguaW50ZWwuY29tPgpSZXZpZXdlZC1ieTogVGhvbWFzIEhl
bGxzdHLDtm0gPHRob21hcy5oZWxsc3Ryb21AaW50ZWwuY29tPgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
