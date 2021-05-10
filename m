Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F84537935D
	for <lists+intel-gfx@lfdr.de>; Mon, 10 May 2021 18:07:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B36E66E4B1;
	Mon, 10 May 2021 16:07:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9E3CA6E4B1;
 Mon, 10 May 2021 16:07:28 +0000 (UTC)
IronPort-SDR: y6dkVIWjSrAEwIcHKPVu6BrAONiO9hnAjA+g23c4eV5NP8q4SNHUVbAuJMqIqChdLALwd833vc
 W7VvFaY9mAaQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9980"; a="199298463"
X-IronPort-AV: E=Sophos;i="5.82,287,1613462400"; d="scan'208";a="199298463"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2021 09:06:34 -0700
IronPort-SDR: dnlIFFFwxspurSvFBH0h9NWjDR9VI7+YoZb18mumICFeecgC0nk5wCHIvaa5KpzY0BuF5agTst
 OWaaR3SVveDA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,287,1613462400"; d="scan'208";a="429961127"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga007.jf.intel.com with ESMTP; 10 May 2021 09:06:34 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Mon, 10 May 2021 09:06:33 -0700
Received: from irsmsx604.ger.corp.intel.com (163.33.146.137) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Mon, 10 May 2021 09:06:32 -0700
Received: from irsmsx604.ger.corp.intel.com ([163.33.146.137]) by
 IRSMSX604.ger.corp.intel.com ([163.33.146.137]) with mapi id 15.01.2106.013;
 Mon, 10 May 2021 17:06:31 +0100
From: "Tamminen, Eero T" <eero.t.tamminen@intel.com>
To: "daniel@ffwll.ch" <daniel@ffwll.ch>, "Welty, Brian" <brian.welty@intel.com>
Thread-Topic: [RFC PATCH 8/9] drm/gem: Associate GEM objects with drm cgroup
Thread-Index: AQHW9Cx15TjPXGT9hUOJR9LC/Jv9PqpPu6eAgAJMa4CAASZwgIAjLNaAgBN73oCAAJfTgIBS/HgAgAAIQYA=
Date: Mon, 10 May 2021 16:06:31 +0000
Message-ID: <09a39aa58c064a8f8e696a091a1b5edd22ef58b9.camel@intel.com>
References: <20210126214626.16260-1-brian.welty@intel.com>
 <20210126214626.16260-9-brian.welty@intel.com>
 <YCJp//kMC7YjVMXv@phenom.ffwll.local>
 <dffeb6a7-90f1-e17c-9695-44678e7a39cb@intel.com>
 <YCVOl8/87bqRSQei@phenom.ffwll.local>
 <89a71735-aae5-2617-c017-310207c5873b@intel.com>
 <CAKMK7uG2PFMWXa9o4LzsF1r0Mc-M8KqD-PKZkCj+m7XeO5wCyg@mail.gmail.com>
 <67867078-4f4b-0a6a-e55d-453b973d8b7c@intel.com>
 <CAKMK7uG7EWv93EbRcMRCm+opi=7fQPMOv2z1R6GBhJXb6--28w@mail.gmail.com>
In-Reply-To: <CAKMK7uG7EWv93EbRcMRCm+opi=7fQPMOv2z1R6GBhJXb6--28w@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.253.164]
Content-ID: <5931D961B8B5484C894BA9ABDE9A0665@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [RFC PATCH 8/9] drm/gem: Associate GEM objects with
 drm cgroup
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
Cc: "airlied@linux.ie" <airlied@linux.ie>,
 "Kenny.Ho@amd.com" <Kenny.Ho@amd.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "amd-gfx@lists.freedesktop.org" <amd-gfx@lists.freedesktop.org>,
 "chris@chris-wilson.co.uk" <chris@chris-wilson.co.uk>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "tj@kernel.org" <tj@kernel.org>,
 "cgroups@vger.kernel.org" <cgroups@vger.kernel.org>,
 "christian.koenig@amd.com" <christian.koenig@amd.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

Mon, 2021-05-10 at 17:36 +0200, Daniel Vetter wrote:
> 
...
> > If DRM allows user-space to exhaust all of system memory, this seems
> > to be a gap in enforcement of MEMCG limits for system memory.
> > I tried to look into it when this was discussed in the past....
> > My guess is that shmem_read_mapping_page_gfp() ->
> > shmem_getpage_gfp() is not choosing the correct MM to charge against
> > in the use case of drivers using shmemfs for backing gem buffers.
> 
> Yeah we know about this one since forever. The bug report is roughly
> as old as the gem/ttm memory managers :-/ So another problem might be
> that if we now suddenly include gpu memory in the memcg accounting, we
> start breaking a bunch of workloads that worked just fine beforehand.

It's not the first time tightening security requires adapting settings
for running workloads...

Workload GPU memory usage needs to be significant portion of
application's real memory usage, to cause workload to hit limits that
have been set for it earlier.  Therefore I think it to definitely be
something that user setting such limits actually cares about.

=> I think the important thing is that reason for the failures is clear
from the OOM message.  This works much better if GPU related memory
usage is specifically stated in that message, once that memory starts to
be accounted for system memory.


	- Eero

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
