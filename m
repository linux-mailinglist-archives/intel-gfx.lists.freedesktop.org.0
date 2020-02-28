Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 13E021735FF
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Feb 2020 12:27:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E90096F40C;
	Fri, 28 Feb 2020 11:27:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8F8D06F40C
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Feb 2020 11:27:11 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Feb 2020 03:27:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,495,1574150400"; d="scan'208";a="232214356"
Received: from awilkens-mobl3.ger.corp.intel.com (HELO [10.249.39.39])
 ([10.249.39.39])
 by orsmga008.jf.intel.com with ESMTP; 28 Feb 2020 03:27:10 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200227124356.1625616-1-lionel.g.landwerlin@intel.com>
 <158282308214.8627.3259451249681135908@skylake-alporthouse-com>
 <158288714402.24106.13125137836039850454@skylake-alporthouse-com>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <a7dc64c2-536e-ef2b-1766-9dab4221fe8b@intel.com>
Date: Fri, 28 Feb 2020 13:27:09 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <158288714402.24106.13125137836039850454@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/perf: reintroduce wait on OA
 configuration completion
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 28/02/2020 12:52, Chris Wilson wrote:
> Quoting Chris Wilson (2020-02-27 17:04:42)
>> Quoting Lionel Landwerlin (2020-02-27 12:43:56)
>>> We still need to wait for the initial OA configuration to happen
>>> before we enable OA report writes to the OA buffer.
>> I can confirm this fixes the hang Lionel reported on Skylake [still odd
>> that we can only get this to be an issue on skl]. However, Lionel
>> mentioned that we should be more careful and ensure the emit_oa_config()
>> request is scheduled last. We're currently looking at different ways we
>> can do that.
> Fwiw, this patch works and fixes the problem. I prefer not adding
> a single use temporary to i915_perf_stream, but I leave that choice to
> Lionel.
>
> Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>
> -Chris

Thanks Chris!


-Lionel

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
