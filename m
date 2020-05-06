Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 90C4F1C6FE2
	for <lists+intel-gfx@lfdr.de>; Wed,  6 May 2020 14:05:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 39EC36E86F;
	Wed,  6 May 2020 12:05:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4B21B6E86F
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 May 2020 12:05:00 +0000 (UTC)
IronPort-SDR: NcrUP/ZgEIcQFPE8yHnmasHOakW6jyLURc+FD+ay2uiR4OcAWn4M1QBGfq4UTIg6iv6cucmMQw
 G6VdKrIjWhVw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2020 05:04:59 -0700
IronPort-SDR: vC92yP2TyE/F1IBQoQvvg0tImaaGfvhfETy3iibiOSK1vDI9/O1YEiUb1DoCR7Pqc4Fce+S6Y6
 bcci4YknAEGA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,358,1583222400"; d="scan'208";a="278211739"
Received: from eldobson-mobl.ger.corp.intel.com (HELO [10.252.39.4])
 ([10.252.39.4])
 by orsmga002.jf.intel.com with ESMTP; 06 May 2020 05:04:58 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200504111249.1367096-1-lionel.g.landwerlin@intel.com>
 <20200504111249.1367096-5-lionel.g.landwerlin@intel.com>
 <158859141809.10831.14803227619074428481@build.alporthouse.com>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <05a4b95e-8e08-91dd-acc9-f30e03275091@intel.com>
Date: Wed, 6 May 2020 15:04:57 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <158859141809.10831.14803227619074428481@build.alporthouse.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v12 4/4] drm/i915/perf: enable filtering on
 multiple contexts
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

On 04/05/2020 14:23, Chris Wilson wrote:
> Quoting Lionel Landwerlin (2020-05-04 12:12:49)
>> Add 2 new properties to the i915-perf open ioctl to specify an array
>> of GEM context handles as well as the length of the array.
>>
>> This can be used by drivers using multiple GEM contexts to implement a
>> single GL context.
>>
>> Signed-off-by: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
>> Link: https://gitlab.freedesktop.org/mesa/mesa/-/merge_requests/4464
> >From what I recall of the tests, the API extension looked reasonable.
> Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>
> -Chris

Is that Rb for the whole series?

The meat of the change to enable this being in the previous commit.


Thanks,

-Lionel

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
