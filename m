Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ED6211A8EE0
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2020 01:04:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 29D766E5C6;
	Tue, 14 Apr 2020 23:04:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B58046E5C6
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Apr 2020 23:04:02 +0000 (UTC)
IronPort-SDR: CKcqoiSOzlZMOsE55lzBwfM2t6FujFvQN7rWsZi6As0BcEYMhKBs3Yo4Oej4gEoE2orhWcwPHy
 ImViQ9E/rc8A==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2020 16:03:57 -0700
IronPort-SDR: 1Nw1i3o64ZNAmVCTh1KU1oUkXT5QZ/IBLZf20b43Cf0qjq2sG901r7wlvcgY8gdMWN/Da9rkvO
 o5olGC3osV3Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,384,1580803200"; d="scan'208";a="332324726"
Received: from fmsmsx107.amr.corp.intel.com ([10.18.124.205])
 by orsmga001.jf.intel.com with ESMTP; 14 Apr 2020 16:03:57 -0700
Received: from fmsmsx154.amr.corp.intel.com (10.18.116.70) by
 fmsmsx107.amr.corp.intel.com (10.18.124.205) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 14 Apr 2020 16:03:57 -0700
Received: from fmsmsx116.amr.corp.intel.com ([169.254.2.62]) by
 FMSMSX154.amr.corp.intel.com ([169.254.6.202]) with mapi id 14.03.0439.000;
 Tue, 14 Apr 2020 16:03:57 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: =?utf-8?B?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBzZXJpZXMgc3RhcnRpbmcg?=
 =?utf-8?B?d2l0aCBbMS8yXSBkcm0vaTkxNS9kaXNwbGF5OiBMb2FkIERQX1RQX0NUTC9T?=
 =?utf-8?Q?TATUS_offset_before_use_it?=
Thread-Index: AQHWEqyvWTOjSK7FM0ChtZb6OnNMzah5snAA
Date: Tue, 14 Apr 2020 23:03:57 +0000
Message-ID: <f0dd701463023f2a5b6eccacaacdd1051ba34875.camel@intel.com>
References: <20200414000844.101873-1-jose.souza@intel.com>
 <158690358474.30379.14425141589998042517@emeril.freedesktop.org>
In-Reply-To: <158690358474.30379.14425141589998042517@emeril.freedesktop.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.209.55.81]
Content-ID: <BD056B02EE271340862962350AE3A538@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBz?=
 =?utf-8?q?eries_starting_with_=5B1/2=5D_drm/i915/display=3A_Load_DP=5FTP?=
 =?utf-8?q?=5FCTL/STATUS_offset_before_use_it?=
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 2020-04-14 at 22:33 +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: series starting with [1/2] drm/i915/display: Load
> DP_TP_CTL/STATUS offset before use it
> URL   : https://patchwork.freedesktop.org/series/75898/
> State : failure
> 
> == Summary ==
> 
> Applying: drm/i915/display: Load DP_TP_CTL/STATUS offset before use
> it
> Applying: Revert "rtc/cmos: Protect rtc_lock from interrupts"
> error: sha1 information is lacking or useless (drivers/rtc/rtc-
> cmos.c).
> error: could not build fake ancestor
> hint: Use 'git am --show-current-patch=diff' to see the failed patch
> Patch failed at 0002 Revert "rtc/cmos: Protect rtc_lock from
> interrupts"
> When you have resolved this problem, run "git am --continue".
> If you prefer to skip this patch, run "git am --skip" instead.
> To restore the original branch and stop patching, run "git am --
> abort".

Resending without the build fix that was already applied.

> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
