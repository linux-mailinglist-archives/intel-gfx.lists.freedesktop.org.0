Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 76217180DF9
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Mar 2020 03:35:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1F7C989F5B;
	Wed, 11 Mar 2020 02:35:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 55C8389F5B
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Mar 2020 02:35:20 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Mar 2020 19:35:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,539,1574150400"; d="scan'208";a="415415067"
Received: from orsmsx107.amr.corp.intel.com ([10.22.240.5])
 by orsmga005.jf.intel.com with ESMTP; 10 Mar 2020 19:35:19 -0700
Received: from orsmsx110.amr.corp.intel.com ([169.254.10.107]) by
 ORSMSX107.amr.corp.intel.com ([169.254.1.106]) with mapi id 14.03.0439.000;
 Tue, 10 Mar 2020 19:35:19 -0700
From: "Pandruvada, Srinivas" <srinivas.pandruvada@intel.com>
To: "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 "currojerez@riseup.net" <currojerez@riseup.net>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [RFC] GPU-bound energy efficiency improvements for the
 intel_pstate driver (v2).
Thread-Index: AQHV9yVeF22XkZfUYkCaOD2IBrMsDqhDInMA
Date: Wed, 11 Mar 2020 02:35:18 +0000
Message-ID: <b8a09ef0c52dd02954b43b441dc3d1612837138c.camel@intel.com>
References: <20200310214203.26459-1-currojerez@riseup.net>
In-Reply-To: <20200310214203.26459-1-currojerez@riseup.net>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.34.3 (3.34.3-1.fc31) 
x-originating-ip: [10.254.113.10]
Content-ID: <3C1D5212DFBC1549AFB627D95300C7F3@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [RFC] GPU-bound energy efficiency improvements for
 the intel_pstate driver (v2).
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
Cc: "peterz@infradead.org" <peterz@infradead.org>,
 "rjw@rjwysocki.net" <rjw@rjwysocki.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 2020-03-10 at 14:41 -0700, Francisco Jerez wrote:
> 

[...]

> Thanks in advance for any review feed-back and test reports.
> 
> [PATCH 01/10] PM: QoS: Add CPU_RESPONSE_FREQUENCY global PM QoS
> limit.
> [PATCH 02/10] drm/i915: Adjust PM QoS response frequency based on GPU
> load.
> [PATCH 03/10] OPTIONAL: drm/i915: Expose PM QoS control parameters
> via debugfs.
> [PATCH 04/10] Revert "cpufreq: intel_pstate: Drop ->update_util from
> pstate_funcs"
> [PATCH 05/10] cpufreq: intel_pstate: Implement VLP controller
> statistics and status calculation.
> [PATCH 06/10] cpufreq: intel_pstate: Implement VLP controller target
> P-state range estimation.
> [PATCH 07/10] cpufreq: intel_pstate: Implement VLP controller for HWP
> parts.
> [PATCH 08/10] cpufreq: intel_pstate: Enable VLP controller based on
> ACPI FADT profile and CPUID.
> [PATCH 09/10] OPTIONAL: cpufreq: intel_pstate: Add tracing of VLP
> controller status.
> [PATCH 10/10] OPTIONAL: cpufreq: intel_pstate: Expose VLP controller
> parameters via debugfs.
> 
Do you have debug patch (You don't to submit as a patch), which will
allow me to dynamically disable/enable all these changes? I want to
compare and do some measurements.

Thanks,
Srinivas 

> [1] https://marc.info/?l=linux-pm&m=152221943320908&w=2
> [2] 
> https://github.com/curro/linux/commits/intel_pstate-vlp-v2-hwp-only
> [3] https://github.com/curro/linux/commits/intel_pstate-vlp-v2
> [4] 
> http://people.freedesktop.org/~currojerez/intel_pstate-vlp-v2/benchmark-comparison-ICL.log
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
