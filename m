Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 91B531FECF3
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jun 2020 09:53:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F19D96EA97;
	Thu, 18 Jun 2020 07:53:52 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2D5206EA97
 for <Intel-gfx@lists.freedesktop.org>; Thu, 18 Jun 2020 07:53:51 +0000 (UTC)
IronPort-SDR: 2UoG58QLo6JssCYb4FjaWnGWszOa0NOZO/wMKq+IZ0O58yUZ++oz3lRdBPe9mVwvBhoS2V16Kb
 i9n6dXcBCwrg==
X-IronPort-AV: E=McAfee;i="6000,8403,9655"; a="141551984"
X-IronPort-AV: E=Sophos;i="5.73,525,1583222400"; d="scan'208";a="141551984"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2020 00:53:50 -0700
IronPort-SDR: 2UDyusxUfBSv+UBFgzOb17d8Z/AsKNkXFWOhJBapsNeezzlNUd/WurVVOAcuWfT1kQXSP91tv2
 GInCaxKQYuJQ==
X-IronPort-AV: E=Sophos;i="5.73,525,1583222400"; d="scan'208";a="450551720"
Received: from ttulbure-mobl.ger.corp.intel.com (HELO [10.252.33.49])
 ([10.252.33.49])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2020 00:53:49 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, Intel-gfx@lists.freedesktop.org
References: <20200617160120.16555-1-tvrtko.ursulin@linux.intel.com>
 <20200617160120.16555-9-tvrtko.ursulin@linux.intel.com>
 <159241590881.2739.7990352305579268212@build.alporthouse.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <d38387a9-45c7-4138-8f65-0879f74f2f2d@linux.intel.com>
Date: Thu, 18 Jun 2020 08:53:47 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <159241590881.2739.7990352305579268212@build.alporthouse.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH i-g-t 08/10] gem_wsim: Snippet of a workload
 extracted from carchase
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


On 17/06/2020 18:45, Chris Wilson wrote:
> Quoting Tvrtko Ursulin (2020-06-17 17:01:18)
>> +1.RCS.1000.r3-47/w27-0/r0-58/r3-80/r22-31/r3-42/r9-4/w34-0/r3-18/r3-41/r21-0/r9-5/r3-78/r25-4/r3-104/r3-23/r30-0/r3-88/r22-27/r22-1/r25-45/r3-50/r22-12/r22-22/r22-3/r22-0/r25-56/r3-4/r22-15/r25-113/r3-7/r22-18/r25-60/r3-81/r25-21/r3-89/r18-5/r3-93/r17-8/r25-28/r25-87/r25-9/r25-13/r25-42/r25-90/r22-16/r34-2/r3-15/w3-64/r0-67/r25-99/r25-73/r3-6/r25-40/r3-90/r22-20/r0-45/r3-110/w32-17/w32-16/w32-3/w32-1/w33-2/r28-2/r3-98/r3-85/r25-48/r3-12/r25-104/r24-23/r3-87/r3-108/r3-26/r3-96/r22-5/r22-14/r3-49/r3-103/r22-6/r3-68/r3-112/r22-29/r22-28/r25-14/r25-44/r25-19/r3-67/r25-111/r18-4/r3-66/r18-17/r4-5/r25-68/r25-86/r25-26/r25-67/r3-37/r25-0/r22-7/r25-59/r25-71/r25-101/r25-75/r25-20/r25-91/r3-2/r3-117/r3-33/r22-2/r25-55/r25-66/r25-24/r25-105/r25-61/r25-11/r25-51/r25-64/r25-70/r18-19/r18-26/r18-21/r25-81/r25-78/r25-37/r25-50/r25-102/r25-35/r18-18/r18-13/r18-12/r3-69/r3-19/r3-100/r22-21/r25-22/r3-29/r25-93/r18-2/r18-14/r18-3/r22-10/r18-23/r18-7/r18-11/r3-73/r8-0/r25-92/r25-41/w33-3/r0-1!
>>   07/w19-0.
>>   0
> 
> This patch has been mangled.

Could it be your email client? (Very long lines in the patch.) I don't 
see corruption anywhere on my side, or on the copy I received from the 
mailing list.

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
