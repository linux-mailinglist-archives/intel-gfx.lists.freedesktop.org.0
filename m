Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 05E6B1EC19F
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Jun 2020 20:08:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6A6156E19A;
	Tue,  2 Jun 2020 18:08:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C23C76E19A
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Jun 2020 18:08:04 +0000 (UTC)
IronPort-SDR: 16hLbYAdHtAPPgOdhrsoHauCHX3gsrc4vg8lklN8lIrymlpJ1U0fhp409hUmrT76FWwOPOoFQb
 +qObzyjbm2Ng==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2020 11:08:04 -0700
IronPort-SDR: PKjl9rXAObTi00FZxbJsjQ9zgQ9IS5MVaCLrBtZjEDJrx0pp4LoFfSetdl/d1x1wlTFpU+hRpe
 P/4EKuW+sW5w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,465,1583222400"; d="scan'208";a="268786893"
Received: from fmsmsx105.amr.corp.intel.com ([10.18.124.203])
 by orsmga003.jf.intel.com with ESMTP; 02 Jun 2020 11:08:04 -0700
Received: from FMSMSX109.amr.corp.intel.com (10.18.116.9) by
 FMSMSX105.amr.corp.intel.com (10.18.124.203) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 2 Jun 2020 11:08:03 -0700
Received: from fmsmsx116.amr.corp.intel.com ([169.254.2.9]) by
 FMSMSX109.amr.corp.intel.com ([169.254.15.75]) with mapi id 14.03.0439.000;
 Tue, 2 Jun 2020 11:08:03 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "peterz@infradead.org" <peterz@infradead.org>,
 "joonas.lahtinen@linux.intel.com" <joonas.lahtinen@linux.intel.com>, "Vivi,
 Rodrigo" <rodrigo.vivi@intel.com>, "jani.nikula@linux.intel.com"
 <jani.nikula@linux.intel.com>
Thread-Topic: [Intel-gfx] [drm:gen8_de_irq_handler [i915]] *ERROR* Fault
 errors on pipe B: 0x00000080
Thread-Index: AQHWOQXgPMdi2p5L3UqBhWXyqixVlKjGFTCA
Date: Tue, 2 Jun 2020 18:08:03 +0000
Message-ID: <5a40182c8a865d6c5603de4a1ff72c450ff403c3.camel@intel.com>
References: <20200602174639.GB2604@hirez.programming.kicks-ass.net>
In-Reply-To: <20200602174639.GB2604@hirez.programming.kicks-ass.net>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.254.40.145]
Content-ID: <03D0FD8F98DD264C8C0A8BB23C052C77@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [drm:gen8_de_irq_handler [i915]] *ERROR* Fault
 errors on pipe B: 0x00000080
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Wilson, Chris P" <chris.p.wilson@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Peter
Please file a bug by follow this instructions: https://gitlab.freedesktop.org/drm/intel/-/wikis/How-to-file-i915-bugs

On Tue, 2020-06-02 at 19:46 +0200, Peter Zijlstra wrote:
> Hi All,
> 
> My desktop (Intel(R) Xeon(R) CPU E3-1245 v5 @ 3.50GHz) is spewing tons
> and tons of:
> 
> [  778.461227] [drm:gen8_de_irq_handler [i915]] *ERROR* Fault errors on pipe B: 0x00000080
> [  778.477763] [drm:gen8_de_irq_handler [i915]] *ERROR* Fault errors on pipe B: 0x00000080
> [  778.577718] [drm:gen8_de_irq_handler [i915]] *ERROR* Fault errors on pipe B: 0x00000080
> [  778.577824] [drm:gen8_de_irq_handler [i915]] *ERROR* Fault errors on pipe B: 0x00000080
> 
> at a rate of ~3 per second, and X isn't as stable as one would like (it
> crashes every few days, sometimes taking the whole kernel along). Sadly,
> this being my desktop, I don't actually have a serial line connected to
> it, although I could hook one up if required.
> 
> It is currently running 5.6.14-1 (as per debian testing), but it seems
> to have done this for a while, I only now got around to reporting it :/
> 
> What else I you need to know, want me to try etc.. ?
> 
> ~ Peter
> 
> 
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
