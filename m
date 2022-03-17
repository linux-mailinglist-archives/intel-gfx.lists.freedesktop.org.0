Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C72914DC2AE
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Mar 2022 10:29:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2533A10E044;
	Thu, 17 Mar 2022 09:29:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2A70D10E044
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Mar 2022 09:29:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647509375; x=1679045375;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=G9LjaANueHk6K93ERdc20GREkHGUiVJmYunQp1Ij780=;
 b=AaQUeCrgDnPSjzc1Pf99NVFyDuxQTLlnkmjAqLI4Fvzv8/tjhy7+51wP
 oMeC41uTiEHX3h2gEPerJhEzYP6SEthNupIqSGfYQIMD1etxO8esTqNX3
 Gpo0qAWt7Kab3D2HmhKJ76A5gJIPvcv2jNpYTAo58Trt8ibFGHkkPR3XP
 3j6bLV5/kRURjFD6DdF5IPMAfM5FOA4Cm9UZEKg8fvCMOxlIh/gOjPTzA
 Y6pPMizPRF00CSizJVYzGvK3zBYNV9hFzUwyxHo8lRhrX9fn7yd8zG6wJ
 qyWXuk+COZxeaxnF023I0XPAfQ1ZED0Puyo9P68xatkLlqhjTc41FeXnv g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10288"; a="281614395"
X-IronPort-AV: E=Sophos;i="5.90,188,1643702400"; d="scan'208";a="281614395"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2022 02:29:34 -0700
X-IronPort-AV: E=Sophos;i="5.90,188,1643702400"; d="scan'208";a="581236672"
Received: from sbasierx-mobl1.ger.corp.intel.com (HELO [10.252.8.212])
 ([10.252.8.212])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2022 02:29:32 -0700
Message-ID: <f0285ddd-b864-1554-e817-5a67ffd81586@intel.com>
Date: Thu, 17 Mar 2022 09:29:30 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-GB
To: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 "Bloomfield, Jon" <jon.bloomfield@intel.com>,
 =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Ramalingam C <ramalingam.c@intel.com>
References: <162c1566-87c6-072f-d340-1693f6a71aea@linux.intel.com>
 <164750662822.7267.9355161518284202141@jlahtine-mobl.ger.corp.intel.com>
From: Matthew Auld <matthew.auld@intel.com>
In-Reply-To: <164750662822.7267.9355161518284202141@jlahtine-mobl.ger.corp.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] Small bar recovery vs compressed content on DG2
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

On 17/03/2022 08:43, Joonas Lahtinen wrote:
> Quoting Thomas Hellström (2022-03-16 09:25:16)
>> Hi!
>>
>> Do we somehow need to clarify in the headers the semantics for this?
>>
>>   From my understanding when discussing the CCS migration series with
>> Ram, the kernel will never do any resolving (compressing /
>> decompressing) migrations or evictions which basically implies the
>> following:
>>
>> *) Compressed data must have LMEM only placement, otherwise the GPU
>> would read garbage if accessing from SMEM.
> 
> This has always been the case, so it should be documented in the uAPI
> headers and kerneldocs.
> 
>> *) Compressed data can't be assumed to be mappable by the CPU, because
>> in order to ensure that on small BAR, the placement needs to be LMEM+SMEM.
> 
> Not strictly true, as we could always migrate to the mappable region in
> the CPU fault handler. Will need the same set of tricks as with limited
> mappable GGTT in past.

With the proposed I915_GEM_CREATE_EXT_FLAG_NEEDS_CPU_ACCESS hint[1], it 
looks like by design we always require lmem + smem, with the idea that 
we can always spill to system memory if needed. So I guess explicit 
NEEDS_CPU_ACCESS + compression is not supported, is this the expected 
behaviour?

[1] https://patchwork.freedesktop.org/patch/475061/

> 
>> *) Neither can compressed data be part of a CAPTURE buffer, because that
>> requires the data to be CPU-mappable.
> 
> Especially this will be too big of a limitation which we can't really afford
> when it comes to debugging.
> 
> Regards, Joonas
> 
>> Are we (and user-mode drivers) OK with these restrictions, or do we need
>> to rethink?
>>
>> Thanks,
>>
>> Thomas
>>
>>
