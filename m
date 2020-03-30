Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D0E59197C96
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2020 15:14:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 40E096E2B0;
	Mon, 30 Mar 2020 13:14:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AA3EB6E2B0
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Mar 2020 13:14:20 +0000 (UTC)
IronPort-SDR: 0CabDZDpnnlewXwiUhJN1CLj1DMCpnCj3AZZaKl02ImNlZ4Kr70FmYZoFpBO6xKkx8F/+w3LTZ
 prI2XVO3Kl7w==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2020 06:14:20 -0700
IronPort-SDR: cPAsmicEndEwCISeEyCZY/rpDoLERlGY+6/GAfaPpYfK9CCdGzyCGiMdd4EnKD2X+0h16Q3pdE
 xhEAlOb9piVQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,324,1580803200"; d="scan'208";a="242024859"
Received: from swarupar-mobl.gar.corp.intel.com (HELO [10.249.36.112])
 ([10.249.36.112])
 by orsmga008.jf.intel.com with ESMTP; 30 Mar 2020 06:14:19 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200327103209.3099292-1-lionel.g.landwerlin@intel.com>
 <158530572912.19268.13066457564563491836@build.alporthouse.com>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <c95f1cf3-cb17-43a7-6a1c-0f6228edea5d@intel.com>
Date: Mon, 30 Mar 2020 16:14:18 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <158530572912.19268.13066457564563491836@build.alporthouse.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 0/3] drm/i915/perf: add support for multi
 context filtering
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

On 27/03/2020 12:42, Chris Wilson wrote:
> Quoting Lionel Landwerlin (2020-03-27 10:32:06)
>> Hi all,
>>
>> i915/perf has currently support for single context filtering. This
>> allows mesa to read the content of the OA buffer and cut out any
>> unrelated context running in a middle of a query.
>>
>> Iris currently uses 2 GEM contexts for 3D & compute commands. In order
>> to support performance queries on the compute context we need to be
>> able to also filter on the second GEM context used for compute
>> commands.
>>
>> This series add support for filtering up to 4 GEM contexts in
>> i915/perf.
> Why make it a fixed size? [From a quick look it's just fixed storage as
> you use a dynamically sized array. Considered sorting and bsearching?]
> -Chris

I figured you might not like too many contexts to be pinned.

Also a small size makes bsort kind of pointless ;)


I'll see how that looks. What the goto bsort utility in the kernel?


-Lionel

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
