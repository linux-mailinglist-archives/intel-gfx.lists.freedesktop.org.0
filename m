Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 45DD96B1A2C
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Mar 2023 04:53:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2BE6910E78A;
	Thu,  9 Mar 2023 03:53:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 33C4110E78A;
 Thu,  9 Mar 2023 03:53:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678334002; x=1709870002;
 h=date:message-id:from:to:cc:subject:in-reply-to:
 references:mime-version;
 bh=8A0HACuYyYBR6QxrJQCtGb8/QucmZaRA7YaXnURuefI=;
 b=RwXozwSBSd/SUzsZnt2nA1qb4VXYSa/uN1ySDhIh7wpJbeHJTyEpTaf8
 htZCLXhcuzkVHoZiY36kXH7Mpyt59ekpRky66c/dA8SRcjN1nLvuw/csu
 y99bdqeoaVaJjepYOySKXEuHlNSd/5Iwxm8cMUPmAiyFMmZkwADKQ/dZr
 BlOrB/9b/8HvkLRydHNBgNDE2API/GGD4xpC+euigmuzBS8bpSBuXD2ZY
 zmNd1YKH616auEKT+N/5Dvq1RvqoW4gmVviQgXR2POH5YmU0R5gRGln6T
 zCIO7pUnl3mf8Q+7KVtyx1awkbe3z1VPfNgS+PSLKq+jPs6xJuIEH8LUa g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10643"; a="324664674"
X-IronPort-AV: E=Sophos;i="5.98,245,1673942400"; d="scan'208";a="324664674"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2023 19:53:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10643"; a="627207283"
X-IronPort-AV: E=Sophos;i="5.98,245,1673942400"; d="scan'208";a="627207283"
Received: from adixit-mobl.amr.corp.intel.com (HELO adixit-arch.intel.com)
 ([10.212.170.208])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2023 19:53:21 -0800
Date: Wed, 08 Mar 2023 19:53:21 -0800
Message-ID: <87fsaemvgu.wl-ashutosh.dixit@intel.com>
From: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
To: "Belgaumkar, Vinay" <vinay.belgaumkar@intel.com>
In-Reply-To: <8b4e02e6-35a0-5262-5f85-5671f4d287b4@intel.com>
References: <20230308053321.939906-1-ashutosh.dixit@intel.com>
 <20230308053321.939906-4-ashutosh.dixit@intel.com>
 <8b4e02e6-35a0-5262-5f85-5671f4d287b4@intel.com>
User-Agent: Wanderlust/2.15.9 (Almost Unreal) SEMI-EPG/1.14.7 (Harue)
 FLIM-LB/1.14.9 (=?ISO-8859-4?Q?Goj=F2?=) APEL-LB/10.8 EasyPG/1.0.0
 Emacs/28.2 (x86_64-pc-linux-gnu) MULE/6.0 (HANACHIRUSATO)
MIME-Version: 1.0 (generated by SEMI-EPG 1.14.7 - "Harue")
Content-Type: text/plain; charset=US-ASCII
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915/pmu: Use common freq functions
 with sysfs
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
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 07 Mar 2023 22:12:49 -0800, Belgaumkar, Vinay wrote:
>

Hi Vinay,

> On 3/7/2023 9:33 PM, Ashutosh Dixit wrote:
> > Using common freq functions with sysfs in PMU (but without taking
> > forcewake) solves the following issues (a) missing support for MTL (b)
>
> For the requested_freq, we read it only if actual_freq is zero below
> (meaning, GT is in C6). So then what is the point of reading it without a
> force wake? It will also be zero, correct?

Yes agreed. I had tested this and you do see values for requested freq
which look correct even when actual freq is 0 even without taking
forcewake. That is why I ended up writing Patch 2/3.

However what I missed is what you pointed out that 0xa008 is a shadowed
register which cannot be read without taking forcewake. It is probably
returning the last value which was written to the shadowed write register.

As a result I have dropped the "drm/i915/rps: Expose
get_requested_frequency_fw for PMU" patch in v2 of this series.

Thanks.
--
Ashutosh
