Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 142262F9EF7
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Jan 2021 13:01:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7516B8995F;
	Mon, 18 Jan 2021 12:01:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 663C38995F
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Jan 2021 12:01:14 +0000 (UTC)
IronPort-SDR: 184H1NUSxjT27YAHN+lNOh5N6/iveayIauUPxYpL3+Hk9U4nWtZo1nf3S9Y59/6VV7n8U0k4t1
 rYZstkz9Eipw==
X-IronPort-AV: E=McAfee;i="6000,8403,9867"; a="158566700"
X-IronPort-AV: E=Sophos;i="5.79,356,1602572400"; d="scan'208";a="158566700"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2021 04:01:13 -0800
IronPort-SDR: F1Dap3ig+sjM5PlCvvWr8UtcJk5hFcOkClHUDE0oNWwiMPC75KH2f8Y0hcJgDBCvbGNwzJrHu5
 ip55saOih3WQ==
X-IronPort-AV: E=Sophos;i="5.79,356,1602572400"; d="scan'208";a="426117720"
Received: from peteratz-mobl.ger.corp.intel.com (HELO [10.252.51.240])
 ([10.252.51.240])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2021 04:01:12 -0800
To: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20210105153558.134272-1-maarten.lankhorst@linux.intel.com>
 <20210105153558.134272-64-maarten.lankhorst@linux.intel.com>
 <dbf9df80-2fba-b7f8-4e88-a6114eea3d5f@linux.intel.com>
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <90dda3ef-cbc9-ea2d-6247-6eba012e4caf@linux.intel.com>
Date: Mon, 18 Jan 2021 13:01:10 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.0
MIME-Version: 1.0
In-Reply-To: <dbf9df80-2fba-b7f8-4e88-a6114eea3d5f@linux.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v6 63/64] drm/i915: Move gt_revoke() slightly
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

T3AgMTgtMDEtMjAyMSBvbSAxMjoxMSBzY2hyZWVmIFRob21hcyBIZWxsc3Ryw7ZtOgo+Cj4gT24g
MS81LzIxIDQ6MzUgUE0sIE1hYXJ0ZW4gTGFua2hvcnN0IHdyb3RlOgo+PiBXZSBnZXQgYSBsb2Nr
ZGVwIHNwbGF0IHdoZW4gdGhlIHJlc2V0IG11dGV4IGlzIGhlbGQsIGJlY2F1c2UgaXQgY2FuIGJl
Cj4+IHRha2VuIGZyb20gZmVuY2Vfd2FpdC4gVGhpcyBjb25mbGljdHMgd2l0aCB0aGUgbW11IG5v
dGlmaWVyIHdlIGhhdmUsCj4+IGJlY2F1c2Ugd2UgcmVjdXJzZSBiZXR3ZWVuIHJlc2V0IG11dGV4
IGFuZCBtbWFwIGxvY2sgLT4gbW11IG5vdGlmaWVyLgo+Pgo+PiBSZW1vdmUgdGhpcyByZWN1cnNp
b24gYnkgY2FsbGluZyByZXZva2VfbW1hcHMgYmVmb3JlIHRha2luZyB0aGUgbG9jay4KPgo+IEht
bS4gSXMgdGhlIG1tYXAgc2UgdGFrZW4gZnJvbSBndF9yZXZva2UoKT8KPgo+IElmIHNvLCBpc24n
dCB0aGUgcmVhbCBwcm9ibGVtIHRoYXQgdGhlIG1tYXBfc2VtIGlzIHRha2VuIGluIHRoZSBkbWFf
ZmVuY2UgY3JpdGljYWwgcGF0aCAod2hlcmUgdGhlIHJlc2V0IGNvZGUgc2l0cyk/IAoKSGV5LAoK
VGhlIGdwdSByZXNldCBjb2RlIHNwZWNpZmljYWxseSBuZWVkcyB0byByZXZva2UgYWxsIGd0dCBt
YXBwaW5ncywgYW5kIHRoZSBmYXVsdCBoYW5kbGVyIHVzZXMgaW50ZWxfZ3RfcmVzZXRfdHJ5bG9j
aygpLAoKc28gdGhpcyBjaGFuZ2Ugc2hvdWxkIGJlIG9rIHNpbmNlIGFsbCB0aG9zZSBtYXBwaW5n
cyBhcmUgaW52YWxpZGF0ZWQgY29ycmVjdGx5IGFuZCBjb21wbGV0ZWQgYmVmb3JlIHRoaXMgcG9p
bnQuCgpUaGUgcmVzZXQgbXV0ZXggaXNuJ3QgYWN0dWFsbHkgdGFrZW4gaW5zaWRlIGZlbmNlIGNv
ZGUsIGJ1dCB1c2VkIGZvciBsb2NrZGVwIHZhbGlkYXRpb24sIHNvIHRoaXMgc2hvdWxkIGJlIG9r
LgoKfk1hYXJ0ZW4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eAo=
