Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 783386BD815
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Mar 2023 19:20:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D896610E39D;
	Thu, 16 Mar 2023 18:20:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ABA4710E39D
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Mar 2023 18:20:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678990852; x=1710526852;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=PkGZ2Yj6wnyDqsjKdrHvsR/w0JTF5DWF8q/Fvx+gez0=;
 b=Qfuo4iyzsn0J9U25GYykbJPOe4zofU/yzf0VOVxfoKIapiBlUS6LueM7
 RNFjEl6TarICpSY8wTkBMIPXlhsJ90vrnUMOBIIdVtnQKXSyPPb6uiUe6
 2RqMfbrZ5+PwKfqPcXWyFjD7+pIyFFg7W/M6y7wHvsCCua09SEHsrcr+y
 hKHRp3mIxZUpZy7wT4E6YfVY62s89DlC895B65Esv+8wHlHstyhadXzZG
 tv2EKQ43HlpfY8DVG8bWLm2Y4s/16rJ3dCaYEM+lTgmx8s43WfILwC9L0
 iScSfX7E+AtvxYsPr4UaH+crJ2OVcDEsi0+5vevK0OK+GuL+wsQsUwbZq g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10651"; a="338093896"
X-IronPort-AV: E=Sophos;i="5.98,265,1673942400"; d="scan'208";a="338093896"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2023 11:20:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10651"; a="673265349"
X-IronPort-AV: E=Sophos;i="5.98,265,1673942400"; d="scan'208";a="673265349"
Received: from ahajda-mobl.ger.corp.intel.com (HELO [10.213.22.209])
 ([10.213.22.209])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2023 11:20:50 -0700
Message-ID: <767989b5-41c2-6eac-f756-5a0f09ef8894@intel.com>
Date: Thu, 16 Mar 2023 19:20:48 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.9.0
Content-Language: en-US
To: intel-gfx@lists.freedesktop.org
References: <ZAiKuulQBp0569s/@intel.com>
 <20230308133624.2131582-1-andrzej.hajda@intel.com>
From: Andrzej Hajda <andrzej.hajda@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <20230308133624.2131582-1-andrzej.hajda@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/gt: prevent forcewake releases
 during BAR resize
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
Cc: Nirmoy Das <nirmoy.das@intel.com>, chris.p.wilson@linux.intel.com,
 Matthew Auld <matthew.auld@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 08.03.2023 14:36, Andrzej Hajda wrote:
> Tests on DG2 machines show that releasing forcewakes during BAR resize
> results later in forcewake ack timeouts. Since forcewakes can be realeased
> asynchronously the simplest way to prevent it is to get all forcewakes
> for duration of BAR resizing.
> 
> v2: hold rpm as well during resizing (Rodrigo)
> 
> Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>

Queued to drm-intel-gt-next.

Regards
Andrzej

