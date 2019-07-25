Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 18CC7746B2
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Jul 2019 08:00:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 568876E5F0;
	Thu, 25 Jul 2019 06:00:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B11896E62D
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Jul 2019 06:00:39 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Jul 2019 23:00:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,305,1559545200"; d="scan'208";a="321568811"
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by orsmga004.jf.intel.com with ESMTP; 24 Jul 2019 23:00:37 -0700
Received: from mwajdecz-mobl1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [10.249.128.222])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 x6P60aFD003837; Thu, 25 Jul 2019 07:00:37 +0100
To: intel-gfx@lists.freedesktop.org, "Daniele Ceraolo Spurio"
 <daniele.ceraolospurio@intel.com>
References: <20190725001813.4740-1-daniele.ceraolospurio@intel.com>
 <20190725001813.4740-7-daniele.ceraolospurio@intel.com>
Date: Thu, 25 Jul 2019 08:00:36 +0200
MIME-Version: 1.0
From: "Michal Wajdeczko" <michal.wajdeczko@intel.com>
Message-ID: <op.z5gyzaq5xaggs7@mwajdecz-mobl1.ger.corp.intel.com>
In-Reply-To: <20190725001813.4740-7-daniele.ceraolospurio@intel.com>
User-Agent: Opera Mail/1.0 (Win32)
Subject: Re: [Intel-gfx] [PATCH v3 6/8] drm/i915/huc: Copy huc rsa only once
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"; DelSp="yes"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCAyNSBKdWwgMjAxOSAwMjoxODoxMSArMDIwMCwgRGFuaWVsZSBDZXJhb2xvIFNwdXJp
byAgCjxkYW5pZWxlLmNlcmFvbG9zcHVyaW9AaW50ZWwuY29tPiB3cm90ZToKCj4gVGhlIGJpbmFy
eSBpcyBwZXJtYS1waW5uZWQgYW5kIHRoZSByc2EgaXMgbm90IGdvaW5nIHRvIGNoYW5nZSwgc28g
Y29weQo+IGl0IG9ubHkgb25jZSBhbmQgbm90IG9uIGV2ZXJ5IGxvYWQuCj4KPiB2Mjogb25pb24g
dW53aW5kIChDaHJpcykKPgo+IFNpZ25lZC1vZmYtYnk6IERhbmllbGUgQ2VyYW9sbyBTcHVyaW8g
PGRhbmllbGUuY2VyYW9sb3NwdXJpb0BpbnRlbC5jb20+Cj4gQ2M6IEZlcm5hbmRvIFBhY2hlY28g
PGZlcm5hbmRvLnBhY2hlY29AaW50ZWwuY29tPgo+IFJldmlld2VkLWJ5OiBDaHJpcyBXaWxzb24g
PGNocmlzQGNocmlzLXdpbHNvbi5jby51az4gI3YxCgpSZXZpZXdlZC1ieTogTWljaGFsIFdhamRl
Y3prbyA8bWljaGFsLndhamRlY3prb0BpbnRlbC5jb20+Cl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
