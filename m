Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EB329B4C55
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Sep 2019 12:55:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5990D6EBAB;
	Tue, 17 Sep 2019 10:55:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9FF476EBAB
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Sep 2019 10:55:45 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Sep 2019 03:55:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,516,1559545200"; d="scan'208";a="191360237"
Received: from mseifert-mobl.ger.corp.intel.com (HELO [10.252.54.177])
 ([10.252.54.177])
 by orsmga006.jf.intel.com with ESMTP; 17 Sep 2019 03:55:43 -0700
To: Manasi Navare <manasi.d.navare@intel.com>
References: <20190712202214.3906-1-manasi.d.navare@intel.com>
 <20190712202938.GQ5942@intel.com> <20190729191753.GI2632@intel.com>
 <eb58efd5-c193-c176-d18d-b7b793794fd1@linux.intel.com>
 <20190916191859.GA13413@intel.com>
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <469d775e-e0ae-0497-2ef4-54e5a9a5db01@linux.intel.com>
Date: Tue, 17 Sep 2019 12:55:43 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190916191859.GA13413@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v4 1/2] drm/i915/display/icl: Bump up the
 hdisplay and vdisplay as per transcoder limits
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T3AgMTYtMDktMjAxOSBvbSAyMToxOSBzY2hyZWVmIE1hbmFzaSBOYXZhcmU6Cj4gT24gRnJpLCBT
ZXAgMTMsIDIwMTkgYXQgMDM6MzY6MzlQTSArMDIwMCwgTWFhcnRlbiBMYW5raG9yc3Qgd3JvdGU6
Cj4+IEhleSwKPj4KPj4gT3AgMjktMDctMjAxOSBvbSAyMToxNyBzY2hyZWVmIE1hbmFzaSBOYXZh
cmU6Cj4+PiBIaSBWaWxsZSwKPj4+Cj4+PiBUaGFua3MgZm9yIHlvdXIgcmV2aWV3LCBzbyBkbyB3
ZSB3YW50IHRvIG1lcmdlIHRoaXMgYXMgaXMgb3IKPj4+IGRvIHdlIG5lZWQgc29tZSBmdW5jdGlv
biB0byByZWplY3QgdGhlIDhLIG1vZGUgb24gSUNMIGluIGludGVsX2RwX21vZGVfdmFsaWQoKT8K
Pj4+Cj4+PiBNYW5hc2kKPj4gSSd2ZSBwdXNoZWQgdGhpcyBzZXJpZXMgYXMtaXMgYmVjYXVzZSBp
dCBibG9ja3MgbXkgYmlnam9pbmVyIHdvcmsuIFdlIHNob3VsZCBwcm9iYWJseSByZWplY3QgbW9k
ZXMgaW4gdGhlIGNvbm5lY3RvciBzcGVjaWZpYyBmdW5jdGlvbnMgaWYgd2UgY2FuJ3QgaGFuZGxl
IGl0LiA6KQo+IFRoYW5rcyBNYWFydGVuLiBTbyBpbiBjYXNlIG9mIGludGVsX2RwX21vZGVfdmFs
aWQoKSBmb3IgZXhhbXBsZSB0aGUgOEsgbW9kZSB3aWxsIGJlIHJlamVjdGVkIGlmIGJpZyBqb2lu
ZXIgbm90IHN1cHBvcnRlZCBjb3JyZWN0PwpZZWFoLCBsaW1pdHMgYXJlIHRvbyBoaWdoLiA6KQpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
