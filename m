Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2159A609B51
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Oct 2022 09:29:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8560A10E2AC;
	Mon, 24 Oct 2022 07:29:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9B4B210E2A6
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Oct 2022 07:29:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666596564; x=1698132564;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=pIrDJlR7AWIztXcYBSZqktrlzmvV67YnQhcy0kn21kg=;
 b=DYFebMq3bhdzRxUDjl62hJ9oVk3OClnImGfllIH6xNkUckFdUw7vayzr
 hPBKUI0vg2n4GUIXx3D7F/755UxG6XxVsE+BlyW+lsuH+ICgCYfXmPVA5
 VyKv/3G45CkpiH6eYCN8fhFRNMokYpV/ibOBWy66SlsPtm4DG9p+0sp6L
 PWcZG+m7k2pmF05tWeWFdgwmxxXXzLuGcr/zQpJNez49linnWMjMNaTev
 rc4QjdvX1sWIEtGcznP1DvCKVS9GS75quJNTqzT8RKVzOdHJA8fvQbvLX
 qxe5wyhtEtdD3drcG+LeYZ14KfN1HvxwGzHe9GQ9vgq7kio/ul5fEvFMf Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10509"; a="333941713"
X-IronPort-AV: E=Sophos;i="5.95,207,1661842800"; d="scan'208";a="333941713"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2022 00:29:24 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10509"; a="631174852"
X-IronPort-AV: E=Sophos;i="5.95,207,1661842800"; d="scan'208";a="631174852"
Received: from ahajda-mobl.ger.corp.intel.com (HELO [10.213.4.106])
 ([10.213.4.106])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2022 00:29:21 -0700
Message-ID: <167818fb-6eb5-7836-16a1-620853821734@intel.com>
Date: Mon, 24 Oct 2022 09:29:19 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.3.3
Content-Language: en-US
To: Andi Shyti <andi.shyti@linux.intel.com>
References: <20221019143818.244339-1-andrzej.hajda@intel.com>
 <Y1Lldx9p5Fm5u0Oh@ashyti-mobl2.lan>
From: Andrzej Hajda <andrzej.hajda@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <Y1Lldx9p5Fm5u0Oh@ashyti-mobl2.lan>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v2 1/2] drm/i915: use intel_uncore_rmw when
 appropriate
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
Cc: intel-gfx@lists.freedesktop.org, Lucas De Marchi <lucas.demarchi@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

Thx for review.

On 21.10.2022 20:31, Andi Shyti wrote:
> Hi Andrzej,
>
> On Wed, Oct 19, 2022 at 04:38:17PM +0200, Andrzej Hajda wrote:
>> This patch replaces all occurences of the form
>> intel_uncore_write(reg, intel_uncore_read(reg) OP val)
>> with intel_uncore_rmw.
>>
>> Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
> Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>
>
> There are some lines that go over 80 characters... do you mind if I fix them
> before pushing it?

No problem, I guess you know that for some time the 'hard' limit has 
been raised to 100 chars/line [1], and this is for aesthetic reasons :)
If you do, please follow advice from Ville to break the line after the 
2nd argument - to keep 'clear' and 'set' args on the same line, if possible.

[1]: 
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=bdc48fa11e46f867ea4d75fa59ee87a7f48be144

Regards
Andrzej

>
> Andi

