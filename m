Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 65C75380832
	for <lists+intel-gfx@lfdr.de>; Fri, 14 May 2021 13:12:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BBAF96E1B7;
	Fri, 14 May 2021 11:12:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8659D6EE52;
 Fri, 14 May 2021 11:12:02 +0000 (UTC)
IronPort-SDR: tiUiHcU4gw0/OyMH3+4uxXfcxFhlRSVNSJUEfV3f96c9MwUDi3WUAtoM779qZeDJ5S6/8AjRkN
 nCDm3j3osw2g==
X-IronPort-AV: E=McAfee;i="6200,9189,9983"; a="179757135"
X-IronPort-AV: E=Sophos;i="5.82,299,1613462400"; d="scan'208";a="179757135"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2021 04:12:01 -0700
IronPort-SDR: tGeCVerlNCsVT6HWquh+rnOvu/wufU/Tt/pquuyf99FMeLweFxH81WOxNRAmUuOjyzvE8VvIz+
 S54St88rfsoQ==
X-IronPort-AV: E=Sophos;i="5.82,299,1613462400"; d="scan'208";a="393589143"
Received: from ankitsi2-mobl.ger.corp.intel.com (HELO [10.213.242.91])
 ([10.213.242.91])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2021 04:11:59 -0700
To: Matthew Brost <matthew.brost@intel.com>, intel-gfx@lists.freedesktop.org, 
 dri-devel@lists.freedesktop.org
References: <20210506191451.77768-1-matthew.brost@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <d5695c6d-2dc9-2ea3-9491-2a12468e68a2@linux.intel.com>
Date: Fri, 14 May 2021 12:11:56 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <20210506191451.77768-1-matthew.brost@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [RFC PATCH 00/97] Basic GuC submission support in
 the i915
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
Cc: jason.ekstrand@intel.com, daniel.vetter@intel.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 06/05/2021 20:13, Matthew Brost wrote:
> Basic GuC submission support. This is the first bullet point in the
> upstreaming plan covered in the following RFC [1].
> 
> At a very high level the GuC is a piece of firmware which sits between
> the i915 and the GPU. It offloads some of the scheduling of contexts
> from the i915 and programs the GPU to submit contexts. The i915
> communicates with the GuC and the GuC communicates with the GPU.
> 
> GuC submission will be disabled by default on all current upstream
> platforms behind a module parameter - enable_guc. A value of 3 will
> enable submission and HuC loading via the GuC. GuC submission should
> work on all gen11+ platforms assuming the GuC firmware is present.

Some thoughts mostly relating to future platforms where GuC will be the 
only option, and to some extent platforms where it will be possible to 
turn it on for one reason or another.

Debuggability - in the context of having an upstream way/tool for 
capturing and viewing GuC logs usable for attaching to bug reports.

Currently i915 logs, can provide traces via tracepoints and trace 
printk, and GPU error capture state, which provides often sufficient 
trail of evidence to debug issues.

We need to make sure GuC does is not a black box in this respect. By 
this I mean it does not hide a large portion of the execution flows from 
upstream observability.

This could mean a tool in IGT to access/capture GuC logs and update bug 
filing instructions.

Leading from here is probably the need for the GuC firmware team to 
cross the internal-upstream boundary and deal with such bug reports on 
upstream trackers. Upstream GuC is unlikely to work if we don't have 
such plan and commitment.

Also leading from here is the need for GPU error capture to be on par 
from day one which is I believe still not there in the firmware.

Another, although unrelated, missing feature on my wish list is firmware 
support for wiring up accurate engine busyness stats to i915 PMU. I 
believe this is also being worked on but I don't know when is the 
expected delivery.

If we are tracking a TODO list of items somewhere I think these ones 
should be definitely considered.

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
