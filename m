Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 03C22373507
	for <lists+intel-gfx@lfdr.de>; Wed,  5 May 2021 08:40:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E3A26E428;
	Wed,  5 May 2021 06:40:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D54A66E428
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 May 2021 06:40:52 +0000 (UTC)
IronPort-SDR: lxEOksnss1OZLF7NEbU4Zk4nSoACZ+vkza7+jGtB5ib9bVYAGGq0fuhvAOSq7dtgyhNeUFrr2Q
 3d9/7LlMAW1w==
X-IronPort-AV: E=McAfee;i="6200,9189,9974"; a="262092188"
X-IronPort-AV: E=Sophos;i="5.82,274,1613462400"; d="scan'208";a="262092188"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2021 23:40:52 -0700
IronPort-SDR: INjUgzAzFrKMVeGzji1k+PDHeR806z1KZBT1X3ti6qGE+YFaBwt23JX0jHmqlyYXUh8wTzFnZk
 eqpdAzBtkqxA==
X-IronPort-AV: E=Sophos;i="5.82,274,1613462400"; d="scan'208";a="433664510"
Received: from weberral-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.249.45.238])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2021 23:40:49 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Anusha Srivatsa <anusha.srivatsa@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <87fsz3znxm.fsf@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210428211249.11037-1-anusha.srivatsa@intel.com>
 <87fsz3znxm.fsf@intel.com>
Date: Wed, 05 May 2021 09:40:46 +0300
Message-ID: <87lf8ty975.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 0/3] Pipe DMC Prep patches
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

On Mon, 03 May 2021, Jani Nikula <jani.nikula@linux.intel.com> wrote:
> On Wed, 28 Apr 2021, Anusha Srivatsa <anusha.srivatsa@intel.com> wrote:
>> This series adds the prep work needed before the
>> actual Pipe DMC implementation.
>
> When should we rename csr to dmc all over the place?

To elaborate, I think it's pretty confusing that we use both CSR and DMC
acronyms in code. There may be a distinction, but we don't respect that
in the usage. Sure, the spec mentions both, but I don't think we follow
the naming there either.

I think we should just rename all CSR references to DMC, including the
file name and the function and struct names.

I wonder if it would be better to do the renames first before starting
to build a lot of changes on top.

BR,
Jani.


-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
