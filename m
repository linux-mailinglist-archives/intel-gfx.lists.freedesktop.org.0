Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 572F61A11F1
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Apr 2020 18:43:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA6D66E3F0;
	Tue,  7 Apr 2020 16:43:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4FEFD6E3F0
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Apr 2020 16:43:30 +0000 (UTC)
IronPort-SDR: JPNW1ELwlT0+R+ZNfhAEWxCE1Duwvi40sAkyWDiDdBhNEGWm2QPH7LIOxpV2J64zaQk12CMr/y
 LivN0ySW4BMQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2020 09:43:29 -0700
IronPort-SDR: bHUaRqlWp4DLNlVZRltTupqnqKlgGJYKD2lWOxzEJ5Cv+FA6/f/eK5D0PIHeI8tWzXWs+6blxG
 JSt8O1POKJLw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,355,1580803200"; d="scan'208";a="242123683"
Received: from marinasm-mobl1.ccr.corp.intel.com (HELO [10.249.41.67])
 ([10.249.41.67])
 by fmsmga007.fm.intel.com with ESMTP; 07 Apr 2020 09:43:29 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200407123540.601497-1-lionel.g.landwerlin@intel.com>
 <20200407123540.601497-2-lionel.g.landwerlin@intel.com>
 <158627655632.8918.7532038582567584503@build.alporthouse.com>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <799ed671-d5de-7602-b01a-f44e94212d3b@intel.com>
Date: Tue, 7 Apr 2020 19:43:28 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <158627655632.8918.7532038582567584503@build.alporthouse.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v4 2/3] drm/i915/perf: prepare driver to
 receive multiple ctx handles
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

On 07/04/2020 19:22, Chris Wilson wrote:
> Quoting Lionel Landwerlin (2020-04-07 13:35:39)
>> -static struct intel_context *oa_context(struct i915_perf_stream *stream)
>> -{
>> -       return stream->pinned_ctx ?: stream->engine->kernel_context;
>> -}
> Idle thought: create a
>
> stream->context = intel_context_create(stream->engine);
>
> so I can stop worrying about the kernel_context. (What's the cost of one
> more context, heh?)
> -Chris

Sure :)


-Lionel

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
