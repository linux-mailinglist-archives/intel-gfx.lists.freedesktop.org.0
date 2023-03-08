Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D83776B10A4
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Mar 2023 19:08:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1832F10E058;
	Wed,  8 Mar 2023 18:08:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA32010E058
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Mar 2023 18:08:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678298900; x=1709834900;
 h=date:message-id:from:to:cc:subject:in-reply-to:
 references:mime-version;
 bh=kSv9rKVUzvs48EA8ksrzS6yCFU4JGzIrygIleVW5U/g=;
 b=gsLN5Zx0ldqfK9s+Av1wB+KuNo2FUbjIxxpYKHRKuFI8NIprHecK0e6H
 ZX0LepEuKfJrTA+O6W2t5X7vAp7a6yiEfbvmw1SwYfx5HzCf8UhzgSNRB
 eQXXLD3byxQEpYmL+LPFsj0fgvA9h10YNYzVNT+PuqYcD3+V6Y4qd/1pD
 enOzwiPMLqMxZ/D1Ec+/sUOj/8EiiXpPze3GHbxuz7mc+yp6/RH8tg0v8
 sNcd6IVlqZiAx6cL5zgftmhMnN4GR/HnybjwScf7AnO22cFMrThlGBs43
 HewbrSKc2KGzwOBENnP+wDYOrlbm69WQR8r73c4w3WbsH/QVTjRZ1ajzH Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10643"; a="401059757"
X-IronPort-AV: E=Sophos;i="5.98,244,1673942400"; d="scan'208";a="401059757"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2023 10:08:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10643"; a="707296915"
X-IronPort-AV: E=Sophos;i="5.98,244,1673942400"; d="scan'208";a="707296915"
Received: from adixit-mobl.amr.corp.intel.com (HELO adixit-arch.intel.com)
 ([10.212.170.208])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2023 10:08:13 -0800
Date: Wed, 08 Mar 2023 10:08:13 -0800
Message-ID: <87h6uvm7zm.wl-ashutosh.dixit@intel.com>
From: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
To: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
In-Reply-To: <20230307201611.773103-9-umesh.nerlige.ramappa@intel.com>
References: <20230307201611.773103-1-umesh.nerlige.ramappa@intel.com>	<20230307201611.773103-9-umesh.nerlige.ramappa@intel.com>
User-Agent: Wanderlust/2.15.9 (Almost Unreal) SEMI-EPG/1.14.7 (Harue)
 FLIM-LB/1.14.9 (=?ISO-8859-4?Q?Goj=F2?=) APEL-LB/10.8 EasyPG/1.0.0
 Emacs/28.2 (x86_64-pc-linux-gnu) MULE/6.0 (HANACHIRUSATO)
MIME-Version: 1.0 (generated by SEMI-EPG 1.14.7 - "Harue")
Content-Type: text/plain; charset=US-ASCII
Subject: Re: [Intel-gfx] [PATCH v4 8/9] drm/i915/perf: Add engine class
 instance parameters to perf
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 07 Mar 2023 12:16:10 -0800, Umesh Nerlige Ramappa wrote:
>

Hi Umesh,

> One or more engines map to a specific OA unit. All reports from these
> engines are captured in the OA buffer managed by this OA unit.
>
> Current i915 OA implementation supports only the OAG unit. OAG primarily
> caters to render engine, so i915 OA uses render as the default engine
> in the OA implementation. Since there are more OA units on newer
> hardware that map to other engines, allow user to pass engine class and
> instance to select and program specific OA units.

I believe there is another uapi issue to be resolved here: how the engines
are associated with OA units, since from the point of view of the uapi
there are multiple engines and multiple OA units (even if in the actual
implementation at present there is only one OA unit per gt). In the
internal tree we had added oa_unit_id to engine_info for this. So if
multiple engines had the same oa_unit_id, user could pass class:instance of
any of those engines to get oa data from that OA unit (and generally know
how engines are hooked up to OA units (the OA unit topology)).

So the question is even if we don't implement it as part of this series (or
do we have to?) do we at least need to agree to that uapi which will be
used to associate OA units with engines?

Thanks.
--
Ashutosh
