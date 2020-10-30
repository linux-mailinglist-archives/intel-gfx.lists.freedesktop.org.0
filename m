Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B74DD2A0295
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Oct 2020 11:11:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 16D706ED9B;
	Fri, 30 Oct 2020 10:11:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 659716ED9B
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Oct 2020 10:11:39 +0000 (UTC)
IronPort-SDR: fA+fLrW5nJorO6A5jiOcqECYf8yOwjb9/oT6elT9kQahqgSd1vU3kpNIi/nlOoA49BWy+qPecz
 iBMmr3wgwUlA==
X-IronPort-AV: E=McAfee;i="6000,8403,9789"; a="168716673"
X-IronPort-AV: E=Sophos;i="5.77,432,1596524400"; d="scan'208";a="168716673"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2020 03:11:38 -0700
IronPort-SDR: 83pCjit/arViUuxXtvr3SijOm9LfPythN1MB92mmLns8WESh8NczB6vHqoDzDjpEqO1gAR3pXL
 9YEu+YbjZC7g==
X-IronPort-AV: E=Sophos;i="5.77,432,1596524400"; d="scan'208";a="527067714"
Received: from bmurphy-mobl.ger.corp.intel.com (HELO [10.249.41.199])
 ([10.249.41.199])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2020 03:11:37 -0700
To: =?UTF-8?Q?Thomas_Hellstr=c3=b6m_=28Intel=29?= <thomas_os@shipmail.org>,
 intel-gfx@lists.freedesktop.org
References: <20201016104444.1492028-1-maarten.lankhorst@linux.intel.com>
 <20201016104444.1492028-15-maarten.lankhorst@linux.intel.com>
 <02b0d2c2-5687-03b1-7741-34a3c2c819ac@shipmail.org>
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <49e1aaa5-cf06-7e72-93e6-d744f7198bc1@linux.intel.com>
Date: Fri, 30 Oct 2020 11:11:36 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.0
MIME-Version: 1.0
In-Reply-To: <02b0d2c2-5687-03b1-7741-34a3c2c819ac@shipmail.org>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v4 14/61] drm/i915: Reject UNSYNCHRONIZED
 for userptr
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T3AgMzAtMTAtMjAyMCBvbSAxMDoyNiBzY2hyZWVmIFRob21hcyBIZWxsc3Ryw7ZtIChJbnRlbCk6
Cj4KPiBPbiAxMC8xNi8yMCAxMjo0MyBQTSwgTWFhcnRlbiBMYW5raG9yc3Qgd3JvdGU6Cj4+IFdl
IHNob3VsZCBub3QgYWxsb3cgdGhpcyBhbnkgbW9yZSwgYXMgaXQgd2lsbCBicmVhayB3aXRoIHRo
ZSBuZXcgdXNlcnB0cgo+PiBpbXBsZW1lbnRhdGlvbiwgaXQgY291bGQgc3RpbGwgYmUgbWFkZSB0
byB3b3JrLCBidXQgdGhlcmUncyBubyBwb2ludCBpbgo+PiBkb2luZyBzby4KPj4KPj4gU2lnbmVk
LW9mZi1ieTogTWFhcnRlbiBMYW5raG9yc3QgPG1hYXJ0ZW4ubGFua2hvcnN0QGxpbnV4LmludGVs
LmNvbT4KPgo+IElmZGVmcyBkb24ndCBhcHBlYXIgY29uc2lzdGVudCB3aXRoIHRoZSBjb21taXQg
bWVzc2FnZS4gV3JvbmcgcGF0Y2ggb3Igc2VwYXJhdGUgcGF0Y2g/Cj4KPiBBbHNvIHBsZWFzZSBh
ZGQgYSBkaXNjdXNzaW9uIHdoYXQgaW1wYWN0IHRoaXMgaGFzIG9uIGV4aXN0aW5nIHVzZXItc3Bh
Y2UuCj4KPgpSZWdhcmRpbmcgaWZkZWZzLCBhbGwgdGhlIHVzZXJwdHIgY29kZWlzIHVudXNlZCB3
aGVuIG1tdSBub3RpZmVycyBhcmUgbm90IGF2YWlsYWJsZSwgc28gSSBtYWRlIGl0IGNvbmRpdGlv
bmFsIG9uIHRoYXQuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
ZngK
