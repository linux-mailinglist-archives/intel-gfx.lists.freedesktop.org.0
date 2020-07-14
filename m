Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 867E221F42B
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jul 2020 16:35:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC76C6E973;
	Tue, 14 Jul 2020 14:35:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A758B6E973
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Jul 2020 14:35:39 +0000 (UTC)
IronPort-SDR: PV4Mg8QvQt6eweqVKL4USoz0lvJ16ACEAqwugLoH8WaM/J+O9cbhta7MmsF5OEfvJAmXYSEuOx
 uN8isk2C/wSQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9681"; a="148044270"
X-IronPort-AV: E=Sophos;i="5.75,350,1589266800"; d="scan'208";a="148044270"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jul 2020 07:35:39 -0700
IronPort-SDR: TdCAO7dowkSQKU+hUytwbzM52BssjMhNC1No6CDq0EQgPg3ZXCWB2rkN1eEWpcgacPr3OJTKBQ
 QhOhL6n9XHOA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,350,1589266800"; d="scan'208";a="307891231"
Received: from ejacobso-mobl.ger.corp.intel.com (HELO [10.251.163.59])
 ([10.251.163.59])
 by fmsmga004.fm.intel.com with ESMTP; 14 Jul 2020 07:35:37 -0700
To: Dave Airlie <airlied@gmail.com>
References: <20200710115757.290984-1-matthew.auld@intel.com>
 <20200710115757.290984-34-matthew.auld@intel.com>
 <CAPM=9tzvetxhBJBOC60ydOVcTN9ujtHLCODFNwGtONTDzuzwZA@mail.gmail.com>
From: Matthew Auld <matthew.auld@intel.com>
Message-ID: <c6cd965d-9a03-10fd-517e-a44934a2b0c9@intel.com>
Date: Tue, 14 Jul 2020 15:35:36 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <CAPM=9tzvetxhBJBOC60ydOVcTN9ujtHLCODFNwGtONTDzuzwZA@mail.gmail.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [RFC 33/60] drm/i915/lmem: support pwrite
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
Cc: Abdiel Janulgue <abdiel.janulgue@linux.intel.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 13/07/2020 06:09, Dave Airlie wrote:
> On Fri, 10 Jul 2020 at 22:00, Matthew Auld <matthew.auld@intel.com> wrote:
>>
>> We need to add support for pwrite'ing an LMEM object.
> 
> why? DG1 is a discrete GPU, these interfaces we already gross and
> overly hacky for integrated, I'd prefer not to drag them across into
> discrete land.
> 
> same goes for pread.
> 
> You have no legacy userspace here, userspace needs change to support
> LMEM, it can be fixed to avoid legacy ioctls paths.

Ok, there have also been similar discussions internally in the past. I 
think one of the reasons was around IGT, and how keeping the 
pread/pwrite interface meant slightly less pain, also it's not much 
effort to implement for LMEM. If this is a NACK, then I guess the other 
idea was to somehow fallback to mmap and update IGT accordingly.

> 
> Dave.
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
