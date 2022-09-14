Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 786D45B8ECA
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Sep 2022 20:20:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9317710E9BC;
	Wed, 14 Sep 2022 18:20:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E83EB10E9C2
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Sep 2022 18:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663179633; x=1694715633;
 h=date:message-id:from:to:cc:subject:in-reply-to:
 references:mime-version;
 bh=A0T9w8JUejyhA3NHMy0v8Cbyhqd+USMnfAlaLU4OPVs=;
 b=NKytbINQK36MyvYPr25u8iLaRu7RZDvJKIJt+8XFBYc/q2AaVxYCJ/4g
 CZVttdH0qH/uwQhBIU+9mKAMMBYVuBbOleIr0k0rbU6wj7gLXMHMMKsN7
 r9VJxQX+UrIDnnWG7KxIGt7viV/yWbhN6z+0aunGB1TCta4jhICb61s8d
 TXyXgEXOiF5W75gJ9L11oOWNa8keY3OmQarGXunlnzeE3WQfQiwe1hvYh
 TvkPodKq70GRvVip93vr9oFAgdsIMGclUX09XzLRCKX9Awk2/oQD88ZfT
 LJCnNrQYNEqvBnPEIpL7Xj15Os7RUmQScja1t2KVzA4ap3FKebe8en6Z8 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10470"; a="281539245"
X-IronPort-AV: E=Sophos;i="5.93,315,1654585200"; d="scan'208";a="281539245"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2022 11:20:33 -0700
X-IronPort-AV: E=Sophos;i="5.93,315,1654585200"; d="scan'208";a="568112714"
Received: from adixit-mobl.amr.corp.intel.com (HELO adixit-arch.intel.com)
 ([10.209.38.224])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2022 11:20:33 -0700
Date: Wed, 14 Sep 2022 11:20:32 -0700
Message-ID: <87pmfx4y33.wl-ashutosh.dixit@intel.com>
From: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
To: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
In-Reply-To: <20220823204155.8178-9-umesh.nerlige.ramappa@intel.com>
References: <20220823204155.8178-1-umesh.nerlige.ramappa@intel.com>
 <20220823204155.8178-9-umesh.nerlige.ramappa@intel.com>
User-Agent: Wanderlust/2.15.9 (Almost Unreal) SEMI-EPG/1.14.7 (Harue)
 FLIM-LB/1.14.9 (=?ISO-8859-4?Q?Goj=F2?=) APEL-LB/10.8 EasyPG/1.0.0
 Emacs/28.1 (x86_64-pc-linux-gnu) MULE/6.0 (HANACHIRUSATO)
MIME-Version: 1.0 (generated by SEMI-EPG 1.14.7 - "Harue")
Content-Type: text/plain; charset=US-ASCII
Subject: Re: [Intel-gfx] [PATCH 08/19] drm/i915/perf: Move gt-specific data
 from i915->perf to gt->perf
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

On Tue, 23 Aug 2022 13:41:44 -0700, Umesh Nerlige Ramappa wrote:
>
> Make perf part of gt as the OAG buffer is specific to a gt. The refactor
> eventually simplifies programming the right OA buffer and the right HW
> registers when supporting multiple gts.

Reviewed-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
