Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 513001ABDB0
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Apr 2020 12:16:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C82C06EB34;
	Thu, 16 Apr 2020 10:16:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 54EEE6EB34
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Apr 2020 10:16:12 +0000 (UTC)
IronPort-SDR: RmYC/AiWZyrdbohESaAda6RqIi9vkDCLXHr7cMn8GzoavN5ro6o/0vCvSkiw5uPIfj6MM8P1wr
 UK8DerZRZk/g==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2020 03:16:11 -0700
IronPort-SDR: 3NGTh1jkFpj70tvWkSmXy2sHN2s32M25bY9pL3xe+/EwWQbtxv6EOmNHyecSg9QR4GJYk8VXAT
 6mEuH+5/ArgQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,390,1580803200"; d="scan'208";a="363945601"
Received: from fmsmsx107.amr.corp.intel.com ([10.18.124.205])
 by fmsmga001.fm.intel.com with ESMTP; 16 Apr 2020 03:16:11 -0700
Received: from BGSMSX107.gar.corp.intel.com (10.223.4.191) by
 fmsmsx107.amr.corp.intel.com (10.18.124.205) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 16 Apr 2020 03:16:11 -0700
Received: from bgsmsx104.gar.corp.intel.com ([169.254.5.58]) by
 BGSMSX107.gar.corp.intel.com ([169.254.9.214]) with mapi id 14.03.0439.000;
 Thu, 16 Apr 2020 15:46:01 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>, "Gupta, Anshuman"
 <anshuman.gupta@intel.com>
Thread-Topic: [v5] drm/i915/display: Enable DP Display Audio WA
Thread-Index: AQHWE79gdx6LwHtKgk2gE76hdTXqQ6h7J3UAgAAEHQCAAFyqwA==
Date: Thu, 16 Apr 2020 10:16:00 +0000
Message-ID: <E7C9878FBA1C6D42A1CA3F62AEB6945F82483C02@BGSMSX104.gar.corp.intel.com>
References: <20200416074721.472-1-uma.shankar@intel.com>
 <20200416095828.GK5533@intel.com> <877dyf4u2v.fsf@intel.com>
In-Reply-To: <877dyf4u2v.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.223.10.10]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [v5] drm/i915/display: Enable DP Display Audio WA
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
Cc: "Vehmanen, Kai" <kai.vehmanen@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Jani Nikula <jani.nikula@linux.intel.com>
> Sent: Thursday, April 16, 2020 3:43 PM
> To: Gupta, Anshuman <anshuman.gupta@intel.com>; Shankar, Uma
> <uma.shankar@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; Vehmanen, Kai <kai.vehmanen@intel.com>
> Subject: Re: [v5] drm/i915/display: Enable DP Display Audio WA
> 
> On Thu, 16 Apr 2020, Anshuman Gupta <anshuman.gupta@intel.com> wrote:
> > 	IMHO with control flow this function above initilization is not required.
> > 	u may remove this initilization if u agree, while pushing the patch.
> 
> I don't recommend anyone changing anything even remotely functional while
> pushing. I'm fine with doing comment and whitepace changes, and as a rule nothing
> else.

Yes, sure will push the next version dropping the initialization. 

Regards,
Uma Shankar

> BR,
> Jani.
> 
> 
> --
> Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
