Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AB5C12417FD
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Aug 2020 10:09:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E6806E1B3;
	Tue, 11 Aug 2020 08:09:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from pio-pvt-msa2.bahnhof.se (pio-pvt-msa2.bahnhof.se [79.136.2.41])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2C6B66E1B3
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Aug 2020 08:09:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by pio-pvt-msa2.bahnhof.se (Postfix) with ESMTP id 1A36F3F31E;
 Tue, 11 Aug 2020 10:09:47 +0200 (CEST)
Authentication-Results: pio-pvt-msa2.bahnhof.se; dkim=pass (1024-bit key;
 unprotected) header.d=shipmail.org header.i=@shipmail.org header.b=UzzqAlqv; 
 dkim-atps=neutral
X-Virus-Scanned: Debian amavisd-new at bahnhof.se
X-Spam-Flag: NO
X-Spam-Score: -3.554
X-Spam-Level: 
X-Spam-Status: No, score=-3.554 tagged_above=-999 required=6.31
 tests=[BAYES_00=-1.9, DKIM_SIGNED=0.1, DKIM_VALID=-0.1,
 DKIM_VALID_AU=-0.1, DKIM_VALID_EF=-0.1, NICE_REPLY_A=-1.455,
 URIBL_BLOCKED=0.001] autolearn=ham autolearn_force=no
Received: from pio-pvt-msa2.bahnhof.se ([127.0.0.1])
 by localhost (pio-pvt-msa2.bahnhof.se [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dQr9MY9DhWrr; Tue, 11 Aug 2020 10:09:46 +0200 (CEST)
Received: from mail1.shipmail.org (h-205-35.A357.priv.bahnhof.se
 [155.4.205.35]) (Authenticated sender: mb878879)
 by pio-pvt-msa2.bahnhof.se (Postfix) with ESMTPA id E7A0A3F2A7;
 Tue, 11 Aug 2020 10:09:45 +0200 (CEST)
Received: from localhost.localdomain (jfdmzpr04-ext.jf.intel.com
 [134.134.137.73])
 by mail1.shipmail.org (Postfix) with ESMTPSA id 4DACE360156;
 Tue, 11 Aug 2020 10:09:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=shipmail.org; s=mail;
 t=1597133387; bh=sU3mF1GpkH1sTLwtznNL5H2i1mTlHIHxpR5K70MAWQs=;
 h=Subject:To:References:From:Date:In-Reply-To:From;
 b=UzzqAlqvpi7APqdgqbakPvQgGPgbXZI0MTdzN+O5/UPxgZxdbWlgXLJvH2ERwnNjE
 COeGsTJNSzJKXCKmIRX9aUY2uhnC6EjvfdEm+SwM8Bfd+SeqKxKSKGM9mZcSozr/cT
 SToAJVCAjFisrBAxvcT3BSSorG6E9HTwXMVRHO6w=
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20200810103103.303818-1-maarten.lankhorst@linux.intel.com>
 <20200810103103.303818-12-maarten.lankhorst@linux.intel.com>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m_=28Intel=29?= <thomas_os@shipmail.org>
Message-ID: <598c949b-51f5-5455-9b69-eb1ffbc54a9d@shipmail.org>
Date: Tue, 11 Aug 2020 10:09:41 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200810103103.303818-12-maarten.lankhorst@linux.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 11/24] drm/i915: Add ww context handling to
 context_barrier_task
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

Ck9uIDgvMTAvMjAgMTI6MzAgUE0sIE1hYXJ0ZW4gTGFua2hvcnN0IHdyb3RlOgo+IFRoaXMgaXMg
cmVxdWlyZWQgaWYgd2Ugd2FudCB0byBwYXNzIGEgd3cgY29udGV4dCBpbiBpbnRlbF9jb250ZXh0
X3Bpbgo+IGFuZCBnZW42X3BwZ3R0X3BpbigpLgo+Cj4gU2lnbmVkLW9mZi1ieTogTWFhcnRlbiBM
YW5raG9yc3QgPG1hYXJ0ZW4ubGFua2hvcnN0QGxpbnV4LmludGVsLmNvbT4KPiAtLS0KPiAgIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9jb250ZXh0LmMgICB8IDU1ICsrKysrKysr
KysrKysrLS0tLS0KPiAgIC4uLi9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL2k5MTVfZ2VtX2NvbnRl
eHQuYyB8IDIyICsrKy0tLS0tCj4gICAyIGZpbGVzIGNoYW5nZWQsIDQ4IGluc2VydGlvbnMoKyks
IDI5IGRlbGV0aW9ucygtKQo+ClJldmlld2VkLWJ5OiBUaG9tYXMgSGVsbHN0csO2bSA8dGhvbWFz
LmhlbGxzdHJvbUBpbnRlbC5jb20+CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4Cg==
