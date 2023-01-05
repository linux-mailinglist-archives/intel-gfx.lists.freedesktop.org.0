Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 22F1165F4CC
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Jan 2023 20:48:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E271610E499;
	Thu,  5 Jan 2023 19:48:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4713310E499
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Jan 2023 19:48:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672948135; x=1704484135;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=Lj+tOJBOPUKvYiL3uvKe+e11sq/F6G8mp7oDiS+It0Q=;
 b=S4bD4OwqcwABZECe49HXx1352d3C0YnXMkf4OKro0y19AlYvsdBbKAge
 wKyxpx4DreUrQMUb1/z3AlYvyalUzN1f5cUTlL4VDjZ1iFepkVDxFNoxx
 Q6eHvLPG2E2Mx0BufdKo2qpK6L7C13apRb9IAM+FKXa/RBsBBdQMJpRxh
 r1amPR9kTvAKF62du7ie/za8vUy5m2nV322nyngZfVw9Xm/kND/UCSUcM
 g2oafuhl9XVSPz9uJmMr3EKuhSwY8DOXJrapswJUA+l9r4m0zVClSz3vu
 uXr9Q0J6vfsUre78EsB0Zm19EBApNjeL5lH307hJZkCM80XPYkVMJy+l4 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10581"; a="408563600"
X-IronPort-AV: E=Sophos;i="5.96,303,1665471600"; d="scan'208";a="408563600"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2023 11:48:51 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10581"; a="744380200"
X-IronPort-AV: E=Sophos;i="5.96,303,1665471600"; d="scan'208";a="744380200"
Received: from nirmoyda-mobl.ger.corp.intel.com (HELO [10.249.43.69])
 ([10.249.43.69])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2023 11:48:48 -0800
Message-ID: <f798c4e7-616c-bfef-dfcc-7c5902f35eba@linux.intel.com>
Date: Thu, 5 Jan 2023 20:48:46 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Content-Language: en-US
To: Andi Shyti <andi.shyti@linux.intel.com>,
 "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
References: <20230105153831.28256-1-nirmoy.das@intel.com>
 <87bkndeyhl.wl-ashutosh.dixit@intel.com> <Y7cNSlsSmEGbuZaK@ashyti-mobl2.lan>
From: "Das, Nirmoy" <nirmoy.das@linux.intel.com>
In-Reply-To: <Y7cNSlsSmEGbuZaK@ashyti-mobl2.lan>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Update doc for
 __intel_wakeref_put()
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
Cc: intel-gfx@lists.freedesktop.org, andrzej.hajda@intel.com,
 chris.p.wilson@intel.com, Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Andi and Ashutosh,

On 1/5/2023 6:47 PM, Andi Shyti wrote:
<snip>
>>>    *
>>> - * Note that @fn is allowed to fail, in which case the runtime-pm wakeref
>>> - * is retained and an error reported.
>>> + * Note that intel_wakeref_ops->put() is allowed to fail, in which case the
>>> + * runtime-pm wakeref is retained.
>> @fn is used in multiple places in this file (including some 'get' usages)
>> so maybe needs to be fixed there too. Maybe better to just say somewhere
>> @fn refers to ops->get()/put() where applicable?
> yeah... as Nirmoy is at it, I think he can take care of the rest,
> would you, Nirmoy?


Sorry I missed that. I will squash everything into one patch.


Thanks,

Nirmoy

