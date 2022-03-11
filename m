Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A0914D6031
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Mar 2022 11:55:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4960D10E8F4;
	Fri, 11 Mar 2022 10:55:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DB53210E8F1;
 Fri, 11 Mar 2022 10:55:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646996107; x=1678532107;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=3U5ez+IxgMtQ83tvS1iJgI7znV/XW0BxTOXBjHbM8hI=;
 b=a8zEBuZQUPM1qjoyd7d4Lmhg2t9sWga1Dtn1AuHGbZw81QgL/RLL8CIa
 JPl3YOyGfPguQew60DPoYFYcpFhhXzMat3F+bvFijHcTs0ltKDLmZF8ov
 GlQ2WPg3WTnpjhz9sYIfbQj9GHZwGbOD6XzcRXWHXBTgW0f4TTSpNMipp
 rm7SDvJpjilQc0wUbmtQE/gj/m2G0M9RvTrT1mpU55Y2fMLyUg7HGR0V1
 L0kmQ1r36nqUPQRoZaiTzEje/acN2gnV7p/iIEHvK5Q2OZOhoEvc4vcp7
 TOjnDOxEOwsgkf1ekpqWVZfvNOHvzFB8dqygJyKTbDxeN+0s/99q0iGDf A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10282"; a="318773248"
X-IronPort-AV: E=Sophos;i="5.90,173,1643702400"; d="scan'208";a="318773248"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2022 02:55:07 -0800
X-IronPort-AV: E=Sophos;i="5.90,173,1643702400"; d="scan'208";a="555259852"
Received: from nirmoyda-mobl.ger.corp.intel.com (HELO [10.252.54.241])
 ([10.252.54.241])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2022 02:55:06 -0800
Message-ID: <7d85f3cd-4fc8-6a66-82d0-112b886e21d8@linux.intel.com>
Date: Fri, 11 Mar 2022 11:55:04 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.2
Content-Language: en-US
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
References: <20220310122751.89693-1-matthew.auld@intel.com>
From: "Das, Nirmoy" <nirmoy.das@linux.intel.com>
In-Reply-To: <20220310122751.89693-1-matthew.auld@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v2 0/8] Some more bits for small BAR enabling
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
Cc: dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The series is Acked-by: Nirmoy Das <nirmoy.das@intel.com>


On 10/03/2022 13:27, Matthew Auld wrote:
> The leftover bits around dealing with stolen-local memory + small BAR, plus
> some related fixes.
>
> v2: some tweaks based on feedback from Ville
>
