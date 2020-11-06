Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 908142A98CA
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Nov 2020 16:50:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F39596E08E;
	Fri,  6 Nov 2020 15:50:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0973E6E08E;
 Fri,  6 Nov 2020 15:50:54 +0000 (UTC)
IronPort-SDR: ftjgTA3L+IxxO8qTa5SQ3JfVxWmig01MARkBNVBXIKk9gbrKiyR4HXqtQZfOwRnuq8kox94tsg
 fy9yT/vQPx2g==
X-IronPort-AV: E=McAfee;i="6000,8403,9797"; a="156561083"
X-IronPort-AV: E=Sophos;i="5.77,456,1596524400"; d="scan'208";a="156561083"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2020 07:50:54 -0800
IronPort-SDR: dHGnK+W4WDxFpFfMOb+k04bi2AWSDu9/rPGKGQeegmXDLN3SGY8hjU5j8PdPbYXYDh58Xn0SUa
 NzC8XB/7N95w==
X-IronPort-AV: E=Sophos;i="5.77,456,1596524400"; d="scan'208";a="326451378"
Received: from mmansoor-mobl.ger.corp.intel.com (HELO [10.252.10.92])
 ([10.252.10.92])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2020 07:50:53 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20201105184355.97296-1-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.auld@intel.com>
Message-ID: <a3520ec2-140c-befc-71a7-56977c287f44@intel.com>
Date: Fri, 6 Nov 2020 15:50:50 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.3.1
MIME-Version: 1.0
In-Reply-To: <20201105184355.97296-1-chris@chris-wilson.co.uk>
Content-Language: en-GB
Subject: Re: [Intel-gfx] [PATCH i-g-t] i915/gem_pread,
 gem_pwrite: Exercise exhaustion
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
Cc: igt-dev@lists.freedesktop.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 05/11/2020 18:43, Chris Wilson wrote:
> Use userfault to arbitrarily delay the completion of copy_from_user() in
> order to trap many, many threads inside the core of
> gem_pread/gem_pwrite. This allows us to exhaust the preferred paths and
> potentially trip over unexpected fallback paths.
> 
> Suggested-by: Matthew Auld <matthew.auld@intel.com>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
