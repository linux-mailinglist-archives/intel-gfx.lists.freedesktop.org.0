Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 808D13D152A
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Jul 2021 19:36:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1CF0C6E996;
	Wed, 21 Jul 2021 17:36:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9B38B6E996;
 Wed, 21 Jul 2021 17:36:52 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10052"; a="191758237"
X-IronPort-AV: E=Sophos;i="5.84,258,1620716400"; d="scan'208";a="191758237"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2021 10:36:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,258,1620716400"; d="scan'208";a="576764852"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by fmsmga001.fm.intel.com with ESMTP; 21 Jul 2021 10:36:51 -0700
Received: from [10.249.140.99] (mwajdecz-MOBL.ger.corp.intel.com
 [10.249.140.99])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 16LHanVY001973; Wed, 21 Jul 2021 18:36:50 +0100
To: "Belgaumkar, Vinay" <vinay.belgaumkar@intel.com>,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
References: <20210710012026.19705-1-vinay.belgaumkar@intel.com>
 <20210710012026.19705-8-vinay.belgaumkar@intel.com>
 <24627794-12b3-1d4a-2ee0-d6ef45be0b05@intel.com>
 <46aa5a21-c32e-9626-830a-43ff3fade57f@intel.com>
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
Message-ID: <0aef5d78-71fa-d53a-d0da-7cc8f8d39841@intel.com>
Date: Wed, 21 Jul 2021 19:36:49 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <46aa5a21-c32e-9626-830a-43ff3fade57f@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 07/16] drm/i915/guc/slpc: Enable slpc and
 add related H2G events
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

CgpPbiAxNS4wNy4yMDIxIDAzOjU4LCBCZWxnYXVta2FyLCBWaW5heSB3cm90ZToKPiAKPiAKPiBP
biA3LzEwLzIwMjEgMTA6MzcgQU0sIE1pY2hhbCBXYWpkZWN6a28gd3JvdGU6Cj4+Cj4+Cj4+IE9u
IDEwLjA3LjIwMjEgMDM6MjAsIFZpbmF5IEJlbGdhdW1rYXIgd3JvdGU6Ci4uLgo+Pj4gwqAgZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2d1Y19zdWJtaXNzaW9u
LmMKPj4+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfZ3VjX3N1Ym1pc3Npb24u
Ywo+Pj4gaW5kZXggZTI2NDRhMDVmMjk4Li4zZTc2ZDRkNWY3YmIgMTAwNjQ0Cj4+PiAtLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9ndWNfc3VibWlzc2lvbi5jCj4+PiArKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9ndWNfc3VibWlzc2lvbi5jCj4+PiBA
QCAtMjMyMSwxMCArMjMyMSw2IEBAIHZvaWQgaW50ZWxfZ3VjX3N1Ym1pc3Npb25fZW5hYmxlKHN0
cnVjdAo+Pj4gaW50ZWxfZ3VjICpndWMpCj4+PiDCoCDCoCB2b2lkIGludGVsX2d1Y19zdWJtaXNz
aW9uX2Rpc2FibGUoc3RydWN0IGludGVsX2d1YyAqZ3VjKQo+Pj4gwqAgewo+Pj4gLcKgwqDCoCBz
dHJ1Y3QgaW50ZWxfZ3QgKmd0ID0gZ3VjX3RvX2d0KGd1Yyk7Cj4+PiAtCj4+PiAtwqDCoMKgIEdF
TV9CVUdfT04oZ3QtPmF3YWtlKTsgLyogR1Qgc2hvdWxkIGJlIHBhcmtlZCBmaXJzdCAqLwo+Pgo+
PiBpZiBub3QgbWlzdGFrZSwgY2FuIHlvdSBleHBsYWluIHdoeSBpdCB3YXMgcmVtb3ZlZCA/Cj4g
Cj4gVGhpcyB3YXMgcGFydCBvZiBhIGRpZmZlcmVudCBjb21taXQuIFRoZSBCVUdfT04gaW4KPiBk
aXNhYmxlX2d1Y19zdWJtaXNzaW9uIHdhcyBhZGRlZCB3aXRoIGFuIGFzc3VtcHRpb24gdGhhdCBp
dCB3aWxsIGJlCj4gY2FsbGVkIG9ubHkgZHVyaW5nIGRyaXZlciB1bmxvYWQgYW5kIG5vdCBleHBl
Y3RlZCB0byBob2xkIGFueSBHVCBQTQo+IHJlZmVyZW5jZXMuIFNpbmNlIHRoaXMgbmVlZHMgdG8g
YmUgY2FsbGVkIGZyb20gYW4gZXJyb3Igc2NlbmFyaW8gZHVyaW5nCj4gc2xwYyBlbmFibGUsIHJl
bW92ZSB0aGUgQlVHX09OLiBEbyB3ZSBuZWVkIHRoaXMgYXMgYSBzZXBhcmF0ZSBjb21taXQ/Cgp5
ZXMsIHBsZWFzZQoKTWljaGFsCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZngK
