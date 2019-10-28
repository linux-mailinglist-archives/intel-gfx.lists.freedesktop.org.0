Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 96597E70F4
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Oct 2019 13:10:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F6B66E79E;
	Mon, 28 Oct 2019 12:10:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D18FF6E79E
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Oct 2019 12:10:12 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Oct 2019 05:10:12 -0700
X-IronPort-AV: E=Sophos;i="5.68,239,1569308400"; d="scan'208";a="193238313"
Received: from jlahtine-desk.ger.corp.intel.com (HELO localhost)
 ([10.252.18.53])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Oct 2019 05:10:10 -0700
MIME-Version: 1.0
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
In-Reply-To: <20191026082220.32632-1-chris@chris-wilson.co.uk>
References: <20191026082220.32632-1-chris@chris-wilson.co.uk>
Message-ID: <157226460826.8043.12255803983321006710@jlahtine-desk.ger.corp.intel.com>
User-Agent: alot/0.7
Date: Mon, 28 Oct 2019 14:10:08 +0200
Subject: Re: [Intel-gfx] [PATCH] drm/i915/tgl: Adjust the location of
 RING_MI_MODE in the context image
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMTAtMjYgMTE6MjI6MjApCj4gVGhlIGxvY2F0aW9u
IG9mIFJJTkdfTUlfTU9ERSAodXNlZCB0byBzdG9wIHRoZSByaW5nIGFjcm9zcyByZXNldHMpIG1v
dmVkCj4gZm9yIFRpZ2VybGFrZS4gRml4dXAgdGhlIG5ldyBsb2NhdGlvbiBhbmQgaW5jbHVkZSBh
IHNlbGZ0ZXN0IHRvIHZlcmlmeQo+IHRoZSBsb2NhdGlvbiBpbiB0aGUgZGVmYXVsdCBjb250ZXh0
IGltYWdlLgo+IAo+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2ls
c29uLmNvLnVrPgo+IENjOiBNaWthIEt1b3BwYWxhIDxtaWthLmt1b3BwYWxhQGxpbnV4LmludGVs
LmNvbT4KClJldmlld2VkLWJ5OiBKb29uYXMgTGFodGluZW4gPGpvb25hcy5sYWh0aW5lbkBsaW51
eC5pbnRlbC5jb20+CgpSZWdhcmRzLCBKb29uYXMKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4
