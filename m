Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D46664F6380
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Apr 2022 17:37:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3A21E10EC67;
	Wed,  6 Apr 2022 15:37:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9392810EC67
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Apr 2022 15:36:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649259419; x=1680795419;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=DaerhghrbV8KcOFnCSc8CFeh7assTGDZ1N/kuGIjIm8=;
 b=e8URyWRO7s9nw5YgFQ+LvJmjHhndKTWuzK1OcwJ0qz8uUz0i5PayTQTP
 zfOq47Bdy9aSTiRwv2QdMzsZtpjgwJJOx1Kf1ljH0DsPlkl6ts8POaXAv
 EJEs+nabXF7Wy8xtKpo7jMvuCAdM7EirDU5IEvYRYFAJnRDU0vqWfGjiN
 qv1gIJJQjn43CB/qR1xmf4RNv8WgViDfGPiTDQNEdvY3h+r6nC5+8WSp3
 il93OlegfClqe1LSDCJQjTTxKviwrskKQlk46V/jUUf5pZScFN8Zapbxr
 TKmHzbcSw9+bFq6YrpyNG0wL1iQdqHOlyqragu8sTHiocdfGbfNQ7OCvT Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10309"; a="261259396"
X-IronPort-AV: E=Sophos;i="5.90,240,1643702400"; d="scan'208";a="261259396"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2022 08:36:33 -0700
X-IronPort-AV: E=Sophos;i="5.90,240,1643702400"; d="scan'208";a="549601215"
Received: from aclausch-mobl.amr.corp.intel.com (HELO ldmartin-desk2)
 ([10.209.8.158])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2022 08:36:33 -0700
Date: Wed, 6 Apr 2022 08:36:32 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Zbigniew =?utf-8?Q?Kempczy=C5=84ski?= <zbigniew.kempczynski@intel.com>
Message-ID: <20220406153632.zpc7dnrqje2dkftk@ldmartin-desk2>
X-Patchwork-Hint: comment
References: <20220323174638.11017-1-zbigniew.kempczynski@intel.com>
 <20220331171602.y7dhjumsmmisu3h5@ldmartin-desk2>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220331171602.y7dhjumsmmisu3h5@ldmartin-desk2>
Subject: Re: [Intel-gfx] [PATCH] [topic/core-for-CI] Revert "drm/i915/dg2:
 Add relocation exception"
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

On Thu, Mar 31, 2022 at 10:16:02AM -0700, Lucas De Marchi wrote:
>On Wed, Mar 23, 2022 at 06:46:38PM +0100, Zbigniew Kempczyński wrote:
>>This reverts commit 904ebf2ba89edaeba5c7c10540e43dba63541dc6.
>>
>>Failures on dg2 tests were caused by invalid alignment when local memory
>>was in use. Changes which adopt alignment according to gen were already
>>merged in IGT so lets revert relocation temporary enabler for dg2. Keeping
>>it is a little bit problematic for IGT because on premerge we would see
>>results with kernel which supports relocation. To see no-relocation
>>results we need to send disabler (like this revert), point IGT with
>>"Test-with" tag what is cumbersome and time consuming so lets do this
>>permanently. If we will see some failures they need to be fixed instead
>>of keeping relocation enabler.
>>
>>Signed-off-by: Zbigniew Kempczyński <zbigniew.kempczynski@intel.com>
>>Cc: Lucas De Marchi <lucas.demarchi@intel.com>
>>Cc: Dave Airlie <airlied@redhat.com>
>>Cc: Daniel Vetter <daniel.vetter@intel.com>
>>Cc: Jason Ekstrand <jason@jlekstrand.net>
>>Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
>
>thanks. I double checked BAT and things seem to be equivalent now
>without that hack. I removed it from topic/core-for-CI.
>
>How are we with the igt tests executed in full run?

ping?

Also, we still have this exception for ADL-P, ADL-S and RKL. Should we
go ahead and try removing them?

Lucas De Marchi
