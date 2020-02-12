Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D0CDD15B300
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Feb 2020 22:47:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 608856E115;
	Wed, 12 Feb 2020 21:47:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 61FA86E115
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Feb 2020 21:47:22 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Feb 2020 13:47:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,434,1574150400"; d="scan'208";a="313532209"
Received: from dceraolo-linux.fm.intel.com (HELO [10.1.27.145]) ([10.1.27.145])
 by orsmga001.jf.intel.com with ESMTP; 12 Feb 2020 13:47:21 -0800
To: Andi Shyti <andi@etezian.org>
References: <20200212003124.33844-1-daniele.ceraolospurio@intel.com>
 <20200212003124.33844-9-daniele.ceraolospurio@intel.com>
 <20200212014703.GE8175@jack.zhora.eu>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <d6f3bf96-efbc-46bb-e6eb-1d7caead7026@intel.com>
Date: Wed, 12 Feb 2020 13:47:09 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20200212014703.GE8175@jack.zhora.eu>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v3 08/10] drm/i915/uc: Abort early on
 uc_init failure
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
Cc: intel-gfx@lists.freedesktop.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On 2/11/20 5:47 PM, Andi Shyti wrote:
> Hi Daniele,
> 
>> +	if (intel_uc_uses_huc(uc)) {
>> +		ret = intel_huc_init(huc);
> 
> are we ever going to call intel_huc_init() if
> !intel_uc_uses_huc()? if not, why don't check intel_uc_uses_huc()
> inside intel_huc_init()? just to avoid always the double "if".

I'm actually plotting another refactoring of the init/fini flows as I 
don't like how we toggle the FW states at the moment. I can bundle this 
change with that.

Daniele

> 
> Not a big deal though:
> 
> Reviewed-by: Andi Shyti <andi.shyti@intel.com>
> 
> Andi
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
