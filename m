Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F2E848C680E
	for <lists+intel-gfx@lfdr.de>; Wed, 15 May 2024 15:59:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1BE7A10E9B1;
	Wed, 15 May 2024 13:59:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="P1/qylky";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 836B810E9C1
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 May 2024 13:59:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715781560; x=1747317560;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=CO0YSJHc1eLC+KAC78jRtRWF+VY+d4jNW8TZbWSqqrE=;
 b=P1/qylkyWkQ4MoU6LefENoU77KIE8QTEHgANt+X0tU7g799BtT28ZKtv
 Xs71RA4AS8wmdyZyTU9TIiBflQ1va/14SDZpzqpIsr7VYX6/iUp8ksjCH
 /zm4FyGXpI+ryJ6OnipcKhL/tjpgI+QLWN9Ruz8Sdwj4z49+xMEVxqUro
 6obh7XUiRQwbv0aqWTT8LRz+nyHBGVA8TnqjeSPhe3tg74LxXi77vwclY
 kJtX9wFTyr2leNb8q7zyqm6hSjrOeDquu8nT7kzvQM3yEtWBF7qQlk9gP
 pgNsMrDUEDCGUcDGa12+9Y69MkaDQdim61d7jeS4hDEqlzQqhfp1Ut22J g==;
X-CSE-ConnectionGUID: f5G9vkSLSTyrhrLTyRPlcw==
X-CSE-MsgGUID: ucje3+buQo6Xg7VLVjheBQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11074"; a="29322605"
X-IronPort-AV: E=Sophos;i="6.08,162,1712646000"; d="scan'208";a="29322605"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2024 06:59:19 -0700
X-CSE-ConnectionGUID: h+klvJWYQr23GkfEutE78w==
X-CSE-MsgGUID: uZqJKfoMQPCZX+xZ7O9jjA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,162,1712646000"; d="scan'208";a="31142598"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.141])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2024 06:59:15 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>, Mika Kahola
 <mika.kahola@intel.com>, intel-gfx@lists.freedesktop.org
Cc: imre.deak@intel.com, Mika Kahola <mika.kahola@intel.com>
Subject: Re: [PATCH 1/2] drm/i915/display: Move port clock calculation
In-Reply-To: <171577993817.27300.2440039459653683149@gjsousa-mobl2>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240515064524.164137-1-mika.kahola@intel.com>
 <171577943416.27300.8384710551224092618@gjsousa-mobl2>
 <171577993817.27300.2440039459653683149@gjsousa-mobl2>
Date: Wed, 15 May 2024 16:59:11 +0300
Message-ID: <875xvfch1s.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 15 May 2024, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
> Quoting Gustavo Sousa (2024-05-15 10:23:54-03:00)
>>Quoting Mika Kahola (2024-05-15 03:45:23-03:00)
>>>As a preparation to remove .clock member from pll state
>>>structure, let's move the port clock calculation on better
>>>location
>
> Ah... Also, I noticed that we are not simply moving the implementation
> of port calculation functions with this patch. We are also replacing
> usage of the "clock" members with function calls. I think the message
> subject and body should be reworded.

No, code movement is one patch, replacing .clock usage with function
calls is another patch, and removing .clock is yet another patch.

BR,
Jani.


-- 
Jani Nikula, Intel
