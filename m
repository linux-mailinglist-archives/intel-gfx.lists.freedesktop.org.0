Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7551972E6A
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jul 2019 14:07:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 34B9A6E4CF;
	Wed, 24 Jul 2019 12:07:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0D4796E4CF
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Jul 2019 12:06:59 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2F3CC229ED;
 Wed, 24 Jul 2019 12:06:59 +0000 (UTC)
Date: Wed, 24 Jul 2019 14:06:57 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Dhinakaran Pandiyan <dhinakaran.pandiyan@intel.com>
Message-ID: <20190724120657.GG3244@kroah.com>
References: <20190719004526.B0CC521850@mail.kernel.org>
 <20190722231325.16615-1-dhinakaran.pandiyan@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190722231325.16615-1-dhinakaran.pandiyan@intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=default; t=1563970019;
 bh=kY9aOXPRpGfwfHnTGTHMEdRMFdMhsa9S69gVjmKJWow=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=JBtrG4BzS6Z9RgW7GTO0JdzEnrKf+DTJHSu+EOF/uixenCpbKa5cQTsgy/TOkUhJ7
 RiG50ad6sw7I667jQSoCKJ+HQI1ePWPBqfk/wQdls5CWSFyLnho3fNjoSWfvM8h614
 +/1zRIys1hTEJdVKmXAIOru6ULJYbs6M6+3WfQ9c=
Subject: Re: [Intel-gfx] [PATCH stable v5.2] drm/i915/vbt: Fix VBT parsing
 for the PSR section
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
Cc: sashal@kernel.org, intel-gfx@lists.freedesktop.org, stable@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCBKdWwgMjIsIDIwMTkgYXQgMDQ6MTM6MjVQTSAtMDcwMCwgRGhpbmFrYXJhbiBQYW5k
aXlhbiB3cm90ZToKPiBBIHNpbmdsZSAzMi1iaXQgUFNSMiB0cmFpbmluZyBwYXR0ZXJuIGZpZWxk
IGZvbGxvd3MgdGhlIHNpeHRlZW4gZWxlbWVudAo+IGFycmF5IG9mIFBTUiB0YWJsZSBlbnRyaWVz
IGluIHRoZSBWQlQgc3BlYy4gQnV0LCB3ZSBpbmNvcnJlY3RseSBkZWZpbmUKPiB0aGlzIFBTUjIg
ZmllbGQgZm9yIGVhY2ggb2YgdGhlIFBTUiB0YWJsZSBlbnRyaWVzLiBBcyBhIHJlc3VsdCwgdGhl
IFBTUjEKPiB0cmFpbmluZyBwYXR0ZXJuIGR1cmF0aW9uIGZvciBhbnkgcGFuZWxfdHlwZSAhPSAw
IHdpbGwgYmUgcGFyc2VkCj4gaW5jb3JyZWN0bHkuIFNlY29uZGx5LCBQU1IyIHRyYWluaW5nIHBh
dHRlcm4gZHVyYXRpb25zIGZvciBWQlRzIHdpdGggYmRiCj4gdmVyc2lvbiA+PSAyMjYgd2lsbCBh
bHNvIGJlIHdyb25nLgo+IAo+IENjOiBSb2RyaWdvIFZpdmkgPHJvZHJpZ28udml2aUBpbnRlbC5j
b20+Cj4gQ2M6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPgo+
IENjOiBzdGFibGVAdmdlci5rZXJuZWwub3JnCj4gQ2M6IHN0YWJsZUB2Z2VyLmtlcm5lbC5vcmcg
I3Y1LjIKPiBGaXhlczogODhhMGQ5NjA2YWZmICgiZHJtL2k5MTUvdmJ0OiBQYXJzZSBhbmQgdXNl
IHRoZSBuZXcgZmllbGQgd2l0aCBQU1IyIFRQMi8zIHdha2V1cCB0aW1lIikKPiBCdWd6aWxsYTog
aHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTExMDg4Cj4gQnVn
emlsbGE6IGh0dHBzOi8vYnVnemlsbGEua2VybmVsLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MjA0MTgz
Cj4gU2lnbmVkLW9mZi1ieTogRGhpbmFrYXJhbiBQYW5kaXlhbiA8ZGhpbmFrYXJhbi5wYW5kaXlh
bkBpbnRlbC5jb20+Cj4gUmV2aWV3ZWQtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFs
YUBsaW51eC5pbnRlbC5jb20+Cj4gUmV2aWV3ZWQtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEg
PGpvc2Uuc291emFAaW50ZWwuY29tPgo+IEFja2VkLWJ5OiBSb2RyaWdvIFZpdmkgPHJvZHJpZ28u
dml2aUBpbnRlbC5jb20+Cj4gVGVzdGVkLWJ5OiBGcmFuw6dvaXMgR3VlcnJheiA8a3Vicmlja0Bm
Z3Y2Lm5ldD4KPiBTaWduZWQtb2ZmLWJ5OiBSb2RyaWdvIFZpdmkgPHJvZHJpZ28udml2aUBpbnRl
bC5jb20+Cj4gTGluazogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3BhdGNoL21z
Z2lkLzIwMTkwNzE3MjIzNDUxLjI1OTUtMS1kaGluYWthcmFuLnBhbmRpeWFuQGludGVsLmNvbQo+
IChjaGVycnkgcGlja2VkIGZyb20gY29tbWl0IGI1ZWE5YzkzMzcwMDdkNmU3MDAyODBjOGE2MGI0
ZTEwZDA3MGZiNTMpCgpUaGVyZSBpcyBubyBzdWNoIGNvbW1pdCBpbiBMaW51cydzIGtlcm5lbCB0
cmVlIDooCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
