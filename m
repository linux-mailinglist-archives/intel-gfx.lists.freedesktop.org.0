Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A8FD67AD8B7
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Sep 2023 15:15:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 24AB610E177;
	Mon, 25 Sep 2023 13:15:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2443110E177
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 Sep 2023 13:15:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695647738; x=1727183738;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=iQd9rzQEqDSr3HE3nDA3yoNotPhq03Az+0skst5J1Og=;
 b=RYf/wMVgTZe/lFcebFAWwFILVa3hSb9sJ2JDLOg+Tk9tuzqU4pRB+CL1
 +fnf6A+0zqnpSDp5kGoI4x4ubA2A++npqYeGi6Un77SW94sw3e/pDsXux
 kiizd2p143uKob58eInK2L++rGDV3hzWcqifacsoSYCxOdvhXnlVdIgTg
 dG9POFFTrJxBxrUu89Mh7MT1Hw6XjKV4+pbUd7DJa/0sYSkBRh5AVhTOM
 kn8+2g/4hDQyIRPOQ5JVdA/lC9p3nhabK2Lm4R8N3gmOBSBawm9EZnQNU
 bNC2sy8OGFfkg2OG8iRrbhR/tAu63gjy1xkNW+E6kJuFrsOJSXFyJicZq w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10843"; a="412176423"
X-IronPort-AV: E=Sophos;i="6.03,175,1694761200"; d="scan'208";a="412176423"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Sep 2023 06:15:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10843"; a="724987681"
X-IronPort-AV: E=Sophos;i="6.03,175,1694761200"; d="scan'208";a="724987681"
Received: from ahajda-mobl.ger.corp.intel.com (HELO [10.213.8.144])
 ([10.213.8.144])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Sep 2023 06:15:17 -0700
Message-ID: <33d22047-108d-7d5a-36dc-a9183850a20e@intel.com>
Date: Mon, 25 Sep 2023 15:15:15 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.15.1
Content-Language: en-US
To: intel-gfx@lists.freedesktop.org,
 Patchwork <patchwork@emeril.freedesktop.org>
References: <20230925091600.2941364-1-andrzej.hajda@intel.com>
 <169563827854.21535.10000314074115511685@emeril.freedesktop.org>
From: Andrzej Hajda <andrzej.hajda@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <169563827854.21535.10000314074115511685@emeril.freedesktop.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBk?=
 =?utf-8?q?ebugobjects=3A_stop_accessing_objects_after_releasing_spinlock?=
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

On 25.09.2023 12:37, Patchwork wrote:
> == Series Details ==
> 
> Series: debugobjects: stop accessing objects after releasing spinlock
> URL   : https://patchwork.freedesktop.org/series/124185/
> State : failure
> 
> == Summary ==
> 
> Error: make failed
>    CALL    scripts/checksyscalls.sh
>    DESCEND objtool
>    INSTALL libsubcmd_headers
>    AR      lib/lib.a
>    CC      lib/debugobjects.o
> lib/debugobjects.c: In function ‘debug_object_activate’:
> lib/debugobjects.c:727:3: error: label at end of compound statement
>    727 |   default:
>        |   ^~~~~~~
> lib/debugobjects.c:748:2: error: label at end of compound statement
>    748 |  default:
>        |  ^~~~~~~
> lib/debugobjects.c: In function ‘debug_object_destroy’:
> lib/debugobjects.c:840:2: error: label at end of compound statement
>    840 |  default:
>        |  ^~~~~~~
> make[3]: *** [scripts/Makefile.build:243: lib/debugobjects.o] Error 1
> make[2]: *** [scripts/Makefile.build:480: lib] Error 2
> make[1]: *** [/home/kbuild/kernel/Makefile:1913: .] Error 2
> make: *** [Makefile:234: __sub-make] Error 2
> Build failed, no error log produced
> 
> 

Apparently this compiler is more pedantic, v2 posted.

Regards
Andrzej

