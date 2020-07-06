Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 614202157A5
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Jul 2020 14:53:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AAB1289C6C;
	Mon,  6 Jul 2020 12:53:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 02C4889C6C
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Jul 2020 12:53:29 +0000 (UTC)
IronPort-SDR: BVeVhQUXixwYBCV9FKexWbezP0qHAZwEuQBXmspF8udC8UWTpgOaVyYqBP4LAlnqVsP4L9tZpv
 QxK8jJnJ4G2g==
X-IronPort-AV: E=McAfee;i="6000,8403,9673"; a="145512220"
X-IronPort-AV: E=Sophos;i="5.75,320,1589266800"; d="scan'208";a="145512220"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2020 05:53:29 -0700
IronPort-SDR: YhnfRmS4Cm8JzzXRcCEusQiKEml+aY/wt6BlcH81mPtT6mkRwhOGwMBCPBUz+gb5PAKGwpSVIj
 GAS2JkXXHu3A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,320,1589266800"; d="scan'208";a="357439008"
Received: from mweingar-mobl.ger.corp.intel.com (HELO [10.249.46.232])
 ([10.249.46.232])
 by orsmga001.jf.intel.com with ESMTP; 06 Jul 2020 05:53:28 -0700
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20200703122221.591656-1-maarten.lankhorst@linux.intel.com>
 <20200703122221.591656-7-maarten.lankhorst@linux.intel.com>
 <77d31489-33f1-c025-aa3c-bfe3d70a0e54@linux.intel.com>
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <756b6b1a-97f5-4676-65f3-4e1430945ccf@linux.intel.com>
Date: Mon, 6 Jul 2020 14:53:27 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <77d31489-33f1-c025-aa3c-bfe3d70a0e54@linux.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 06/23] drm/i915: Parse command buffer
 earlier in eb_relocate(slow)
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

Op 03-07-2020 om 15:49 schreef Tvrtko Ursulin:
>
> On 03/07/2020 13:22, Maarten Lankhorst wrote:
>> We want to introduce backoff logic, but we need to lock the
>> pool object as well for command parsing. Because of this, we
>> will need backoff logic for the engine pool obj, move the batch
>> validation up slightly to eb_lookup_vmas, and the actual command
>> parsing in a separate function which can get called from execbuf
>> relocation fast and slowpath.
>
> On this one I also had some feedback in the previous round which you maybe missed.
>
> Regards, 
Compile tested this one now, so should work. :)
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
