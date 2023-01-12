Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 96962666D1A
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Jan 2023 09:55:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 16D1F10E5AF;
	Thu, 12 Jan 2023 08:55:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4242010E5AF
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Jan 2023 08:55:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673513739; x=1705049739;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=z+oaEqyyt1NRZRyb2g9WWGXPgTFeK9Un3WJMd1yH82Y=;
 b=G3we3U/MKst7uGQzo9JfYrlvH0ANZd7+NJ527aWpaNkXcOVHy5SpYCoH
 hA6UfF6C6KGkpsT2O8ZpHy37tJzE+DsznkJOCg7IM5KFLfoWRkS/diuJg
 77VteIdMJMm6lfNHkT+9cVh+ojXEOppltNvgN1qwdAwfOEsrfkOulz/90
 65COvypyuwoCCgKgNQW+opi0K9SSUKSR1jJ76X9C+gPUSQlux05hCHkkj
 9PybCdfPZi+3wjMa078wWfZuTWJgAdchuas1nyl48hSU5jg+ywgdCsl9s
 KEJF7pHspdQHE1hqFDg0IZf8DS46vaZkyWeb0JKL8Nhej7Y0kN5OWBbaE Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10586"; a="303350011"
X-IronPort-AV: E=Sophos;i="5.96,319,1665471600"; d="scan'208";a="303350011"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2023 00:55:38 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10586"; a="765526390"
X-IronPort-AV: E=Sophos;i="5.96,319,1665471600"; d="scan'208";a="765526390"
Received: from jacton-mobl.ger.corp.intel.com (HELO [10.213.195.171])
 ([10.213.195.171])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2023 00:55:37 -0800
Message-ID: <cbacd042-83ea-254a-9e41-36acda4d0f8f@linux.intel.com>
Date: Thu, 12 Jan 2023 08:55:35 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Content-Language: en-US
To: FlightlessMango <flightlessmangoyt@gmail.com>,
 intel-gfx@lists.freedesktop.org
References: <65afb3a4-bdc1-04a8-a2ac-6c561cddd710@gmail.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <65afb3a4-bdc1-04a8-a2ac-6c561cddd710@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [OA][RFC] Exposing low-resolution engine business
 via sysfs
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
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Martin Peres <martin.peres@mupuf.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


Hi,

On 12/01/2023 07:50, FlightlessMango wrote:
> Hi,
> 
> I am the developer of MangoHud[1], a Vulkan and OpenGL overlay for 
> monitoring FPS / temperatures / CPU/GPU load and more.
> 
> I would like to add support for i915 (and xe in the future) but I am 
> currently unable to do this easily because not everything I need is 
> exposed directly to non-root users. Namely:
> 
>   * Engine business (RCS)
>   * CPU, iGPU and dGPU power usage
>   * IMC bandwith (nice to have but not mandatory)
> 
> This is a problem because it would require us to ship a setuid binary to 
> poll these metrics for the overlay (we can't run games as root).
> 
> For your information, this is Intel-specific as AMD and NVIDIA are 
> exposing these values directly. I understand the security concerns, but 
> we are not asking for super precise information (1% accuracy is perfect).
> 
> Can we work together on this, what are your thoughts?

A few angles here. First of all, last time you raised it I think we 
didn't have per client engine busyness in fdinfo. So *if* you are 
satisfied with reading client's own busyness you can do it unprivileged 
via /proc/<pid>|self/fdinfo/<fd>.

Secondly, i915 internal stats, iGPU power usage and IMC are exposed via 
three separate perf/PMU drivers, of which this team (this mailing) is 
really responsible for only i915. The access controls for all though are 
common and provided by the core kernel. See 
/proc/sys/kernel/perf_event_paranoid and corresponding docs.

Long(-ish) time ago we have proposed making the latter a per PMU driver 
but that did not get any traction in the kernel.

Once you move to dGPU then for power you will get to use hwmon and for 
that one I am currently not familiar how access control works.

And finally for the new Xe driver I not aware how it will expose it so I 
am copying Rodrigo in case he knows.

In summary I personally see these options for what i915 stats are concerned:

1. You go with fdinfo and get what you can.

2. We try to propose per PMU access controls once more.

And then maybe the point below becomes less controversial, unlikely though.

3. You instruct users to configure /proc/sys/kernel/perf_event_paranoid, 
or convince the distros to setuid your tool, or something along those lines.

Regards,

Tvrtko

> 
> Thanks for your consideration.
> 
> //Simon Hallsten
> 
> [1] https://github.com/flightlessmango/MangoHud
> 
> 
> 
