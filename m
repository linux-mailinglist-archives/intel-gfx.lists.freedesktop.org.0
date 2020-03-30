Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F599197D3D
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2020 15:44:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3EFEB89CF1;
	Mon, 30 Mar 2020 13:44:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D500E89CF1
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Mar 2020 13:44:39 +0000 (UTC)
IronPort-SDR: 400r8gWwzILVaO/MoMH2MNSKGhncH9iEO5sT3B+gIXk+E0TxW9bBaMJmIzjwGrnhuiYToZ5JUe
 4sMGnvNT7wJw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2020 06:44:39 -0700
IronPort-SDR: xi6HmQHkxkOIu4akQ6XgeUleCc6QyZlv90JZa2t73khjV6FHZCC07Sw9oq/Q9MfsYAnGoTfoSh
 uUKVLQLk1MCQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,324,1580803200"; d="scan'208";a="248702509"
Received: from abenzvi-mobl.ger.corp.intel.com (HELO [10.251.170.139])
 ([10.251.170.139])
 by orsmga003.jf.intel.com with ESMTP; 30 Mar 2020 06:44:38 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200330121644.25277-1-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.auld@intel.com>
Message-ID: <0fe6e148-0568-846f-63bc-7f74645b4522@intel.com>
Date: Mon, 30 Mar 2020 14:44:36 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200330121644.25277-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftests: Check timeout before
 flush and cond checks
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

On 30/03/2020 13:16, Chris Wilson wrote:
> Allow a bit of leniency for the CPU scheduler to be distracted while we
> flush the tasklet and so ensure that we always check the status of the
> request once more before timing out.
> 
> v2: Wait until the HW acked the submit, and we do any secondary actions
> for the submit (e.g. timeslices)
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Matthew Auld <matthew.auld@intel.com>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
