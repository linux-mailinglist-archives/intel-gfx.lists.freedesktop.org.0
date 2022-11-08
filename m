Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 49A3B620D2B
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Nov 2022 11:24:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 54E9E10E0D3;
	Tue,  8 Nov 2022 10:24:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4A7D310E0D3
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Nov 2022 10:24:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667903054; x=1699439054;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=8pGKrlQVDGTtkWI1yvckQgAXCUhXLDgyoGzu6YzIGVI=;
 b=HSqrGyxPVWPAkZsuAZ4ydmRwsdlO90H0LHnzDwqke2Srb5vCM7Ism7qj
 +MfjZN3H52tqd3j+bgxJ1L0UDxdg+uTk/HCgLVkL8qTna3TdAYefFqbwc
 jScr2BNIN9XOtxNG0O74plGe4tKx1EbuVP0jZq1BOzQYq074cSHyKMpFc
 clGoUTaOw1uyfJh+iMvGRjbE3VkCu6pEi4i6OdaDUfVmTkW/Suws/eazb
 hFZgkMU4zPFeR6FdXn1YALfQDJknSH9usczWMwUDjd/6T5dHFz8pkpNOL
 Z0ZCPdSdQKSBb4fK0judtZ7oXA1fohgP+O83JIxQUbFWFHFgfcGs0lzEK w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10524"; a="298176320"
X-IronPort-AV: E=Sophos;i="5.96,147,1665471600"; d="scan'208";a="298176320"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2022 02:24:13 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10524"; a="638742008"
X-IronPort-AV: E=Sophos;i="5.96,147,1665471600"; d="scan'208";a="638742008"
Received: from tprzyluc-mobl.ger.corp.intel.com (HELO [10.252.16.225])
 ([10.252.16.225])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2022 02:24:10 -0800
Message-ID: <bf3d58d5-1c9c-5a88-e0eb-feffdd93d443@intel.com>
Date: Tue, 8 Nov 2022 10:24:09 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.4.1
Content-Language: en-GB
To: Andrzej Hajda <andrzej.hajda@intel.com>, intel-gfx@lists.freedesktop.org
References: <20221019215906.295296-1-andrzej.hajda@intel.com>
 <20221019215906.295296-2-andrzej.hajda@intel.com>
From: Matthew Auld <matthew.auld@intel.com>
In-Reply-To: <20221019215906.295296-2-andrzej.hajda@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v2 1/2] drm/i915: call
 i915_request_await_object from _i915_vma_move_to_active
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 19/10/2022 22:59, Andrzej Hajda wrote:
> Since almost all calls to i915_vma_move_to_active are prepended with
> i915_request_await_object, let's call the latter from
> _i915_vma_move_to_active by default and add flag allowing bypassing it.
> Adjust all callers accordingly.
> The patch should not introduce functional changes.
> 
> Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>

I thought someone already reviewed this series. Anyway,
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
