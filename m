Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DD3D818977D
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Mar 2020 10:00:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3598C89B7B;
	Wed, 18 Mar 2020 09:00:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 96D5789B95
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Mar 2020 09:00:05 +0000 (UTC)
IronPort-SDR: ul8RYMgDmLtC1UYiCSB2YLWk4tjaxL9F8WNZguTntL2nBBaC/C7NkKQCHGi9rvfkvmL9pO6lHi
 o5h5VOaqPFBw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2020 02:00:04 -0700
IronPort-SDR: wTNpEZwPQbVE8dryTniVluOlk2GdSDWubtlMcsTEv65jnzDUaPSyOEfHHmRLtHEq/abYYyaE5o
 NxRIm8BWQQkw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,566,1574150400"; d="scan'208";a="417874366"
Received: from irsmsx103.ger.corp.intel.com ([163.33.3.157])
 by orsmga005.jf.intel.com with ESMTP; 18 Mar 2020 02:00:03 -0700
Received: from ahiler-desk1.fi.intel.com (10.237.68.143) by
 IRSMSX103.ger.corp.intel.com (163.33.3.157) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 18 Mar 2020 08:55:21 +0000
Date: Wed, 18 Mar 2020 10:55:19 +0200
From: Arkadiusz Hiler <arkadiusz.hiler@intel.com>
To: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
Message-ID: <20200318085519.3hyec4tricxdjtgz@ahiler-desk1.fi.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-Patchwork-Hint: comment
References: <20200316113744.31203-1-stanislav.lisovskiy@intel.com>
 <158440537072.5177.5259310463530440555@emeril.freedesktop.org>
 <1b7e92817db14053803aff6bf596e65b@intel.com>
 <20200318083307.lnnhoalkltvfv4l6@ahiler-desk1.fi.intel.com>
 <92f06a328dc947b49c8f7c4cfedaa32d@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <92f06a328dc947b49c8f7c4cfedaa32d@intel.com>
X-Originating-IP: [10.237.68.143]
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkRPQ1M6IHdhcm5pbmcgZm9yIENv?=
 =?utf-8?q?nsider_DBuf_bandwidth_when_calculating_CDCLK_=28rev2=29?=
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Peres,
 Martin" <martin.peres@intel.com>, "Vudum,
 Lakshminarayana" <lakshminarayana.vudum@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCBNYXIgMTgsIDIwMjAgYXQgMTA6NDM6MjlBTSArMDIwMCwgTGlzb3Zza2l5LCBTdGFu
aXNsYXYgd3JvdGU6Cj4gV29uZGVyLCBob3cgd2UgZW5kIHVwIG1lcmdpbmcgX3N0dWZmXyB3aXRo
IGZhaWxlZCBJR1QgYW5kIGxvYWRzIG9mIHdhcm5pbmdzLi4KPiAKPiBodHRwczovL3BhdGNod29y
ay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzc0NzM4Lwo+IAo+IC4uLiB3aGlsZSBJIGdldCBiZWF0
ZW4gZm9yIGVhY2ggYW5kIGV2ZXJ5IHNpbmdsZSB3YXJuaW5nIGluIG15IHBhdGNoZXMg8J+YigoK
VHJ1ZS4gVGhpcyBzaG91bGRuJ3QgZ2V0IG1lcmdlZCBsaWtlIHRoaXMuIEFzayB0aGUgYXV0aG9y
cyBhbmQgdGhlCmNvbW1pdGVycyB3aHkgdGhpcyBnb3QgaW4gd2l0aG91dCBhbnlvbmUgbG9va2lu
ZyBhdCB0aGUgZG9jcyBpc3N1ZSBhbmQKd2l0aG91dCBhbnkgZXhwbGFuYXRpb24gb2YgdGhlIGZh
aWx1cmVzIGluIEZpLkNJLklHVC4KCi0tIApDaGVlcnMsCkFyZWsKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
