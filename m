Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 709E7620D40
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Nov 2022 11:28:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 34FA710E0D3;
	Tue,  8 Nov 2022 10:28:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A9C0A10E3E2
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Nov 2022 10:28:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667903305; x=1699439305;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=+EmSW8XX12TZKU1bPjMGGKE+3pS9xLSd2huJ8Op4Wf0=;
 b=IGneM76zQZPn+mpTS9/baZlevi2vtivqpX9K0+UndNWcBc5RRjvfm7wO
 LA1A2eQ+puv5qrBwOdBgdcWbhRNQTn7AbkUVl3GhWi9TqRfQjfEXHO9Jp
 ts+OqvKFwPt54Ch9K7l/abypAOUZvvGFXa55BgGSZ0G0AB+S6b4zy33V3
 xGcyxWYrvJDIerK+JHvrSodU1ltHyPN28kcqN1/ycctZQX4YLsajmiq74
 3vmJEGieORNYaN+KHvzzUPQN9AJHi4bop7kGC1ColuNN2fa3KT3k7b/A2
 N446lZC8zb0z8jPqQlMPoTfGrKa0i1/9cdCXfMCvc60ShFD7TPfPilOxZ A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10524"; a="310660760"
X-IronPort-AV: E=Sophos;i="5.96,147,1665471600"; d="scan'208";a="310660760"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2022 02:28:25 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10524"; a="705247963"
X-IronPort-AV: E=Sophos;i="5.96,147,1665471600"; d="scan'208";a="705247963"
Received: from tprzyluc-mobl.ger.corp.intel.com (HELO [10.252.16.225])
 ([10.252.16.225])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2022 02:28:23 -0800
Message-ID: <8e6c711c-b2ff-8392-ad93-1f4469a3aae2@intel.com>
Date: Tue, 8 Nov 2022 10:28:21 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.4.1
Content-Language: en-GB
To: Andrzej Hajda <andrzej.hajda@intel.com>, intel-gfx@lists.freedesktop.org
References: <20221019215906.295296-1-andrzej.hajda@intel.com>
 <20221019215906.295296-3-andrzej.hajda@intel.com>
From: Matthew Auld <matthew.auld@intel.com>
In-Reply-To: <20221019215906.295296-3-andrzej.hajda@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v2 2/2] drm/i915/selftests: add
 igt_vma_move_to_active_unlocked
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
> All calls to i915_vma_move_to_active are surrounded by vma lock
> and/or there are multiple local helpers for it in particular tests.
> Let's replace it by common helper.
> The patch should not introduce functional changes.
> 
> Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
