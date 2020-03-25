Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B534119300B
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2020 19:05:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 01EA26E1D3;
	Wed, 25 Mar 2020 18:05:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A8F436E1D3
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Mar 2020 18:05:55 +0000 (UTC)
IronPort-SDR: QpAeCGMr2UT8GQnA9pwlqfS3BI23LNMJmWv5wgYUapf67G5aY/hggh7NB8Md0JBWJF4uasibb1
 E9wNbWGEf2XA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2020 11:05:55 -0700
IronPort-SDR: Io6TnjCLUqKbxGhETqvoizpFxCbzI1zcEQrxglUF7noEBkcuQ3ZrbsLHxkV/7SQkSiI0uoTshR
 k2B5QcA2Tndg==
X-IronPort-AV: E=Sophos;i="5.72,305,1580803200"; d="scan'208";a="448357119"
Received: from wuw-mobl1.amr.corp.intel.com (HELO [10.254.113.82])
 ([10.254.113.82])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2020 11:05:54 -0700
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20200312011631.15262-1-daniele.ceraolospurio@intel.com>
 <20200312011631.15262-7-daniele.ceraolospurio@intel.com>
 <8d922c51-a183-247a-69fc-2e5e1119c8be@Intel.com>
 <bb874021-db58-3486-b411-8c5caaf8682f@intel.com>
From: John Harrison <John.C.Harrison@Intel.com>
Message-ID: <1dabc923-c362-f934-8cb4-2c3f1f660cf4@Intel.com>
Date: Wed, 25 Mar 2020 11:05:53 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <bb874021-db58-3486-b411-8c5caaf8682f@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v2 6/6] drm/i915/uc: do not free err log on
 uc_fini
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

On 3/25/2020 11:03, Daniele Ceraolo Spurio wrote:
> On 3/25/20 10:58 AM, John Harrison wrote:
>> On 3/11/2020 18:16, Daniele Ceraolo Spurio wrote:
>>> we do call uc_fini if there is an issue while loading the GuC, so we
>>> can't delete in there the logs we need to debug the load failure.
>>> Moving the log free to driver remove ensures the logs stick around ong
>>> enough for us to dump them.
>> I think this could be worded better and has a couple of typos.
>>
>
> How about:
>
> "We need to keep the GuC error logs around to debug the load failure, 
> so we can't clean them in the error unwind, which includes uc_fini(). 
> Moving the cleanup to driver remove ensures that the logs stick around 
> long enough for us to dump them."
>
> ?
>
> Daniele
>
Sounds good to me :).

Reviewed-by: John Harrison <John.C.Harrison@Intel.com>

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
