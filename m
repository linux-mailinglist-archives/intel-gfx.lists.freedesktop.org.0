Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FD5F3001B1
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Jan 2021 12:36:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4688E89CAD;
	Fri, 22 Jan 2021 11:36:55 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EEA8789CAD;
 Fri, 22 Jan 2021 11:36:53 +0000 (UTC)
IronPort-SDR: TFTQSELouOiiObVQ1Gl5/yrlw+TVgNKwMgfFWc/f8PQaqOVOanz15PfDGuccrTWVDuAA4UZOeh
 XfjLGQuY9gEw==
X-IronPort-AV: E=McAfee;i="6000,8403,9871"; a="178656358"
X-IronPort-AV: E=Sophos;i="5.79,366,1602572400"; d="scan'208";a="178656358"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2021 03:36:53 -0800
IronPort-SDR: qw/2APj6Z6L5niWPDAJE98uR0Eo82+le5WdUbcUMqIIXHS2zsy1TlniSd4qIUQPFBS/W8ctFn7
 VuHBqRLhx14w==
X-IronPort-AV: E=Sophos;i="5.79,366,1602572400"; d="scan'208";a="385728381"
Received: from gtidhar-mobl.ger.corp.intel.com (HELO [10.214.206.196])
 ([10.214.206.196])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2021 03:36:51 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, igt-dev@lists.freedesktop.org
References: <20210121181005.762333-1-tvrtko.ursulin@linux.intel.com>
 <161126484631.3166.17704076104258866952@build.alporthouse.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <92e11d23-a4f8-da09-5f90-6a0b0ca6614f@linux.intel.com>
Date: Fri, 22 Jan 2021 11:36:48 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <161126484631.3166.17704076104258866952@build.alporthouse.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH i-g-t] intel-gpu-top: Support for client
 stats
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
Cc: Intel-gfx@lists.freedesktop.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 21/01/2021 21:34, Chris Wilson wrote:
> Quoting Tvrtko Ursulin (2021-01-21 18:10:05)
>> +static struct clients *init_clients(const char *drm_card)
>> +{
>> +       struct clients *clients = malloc(sizeof(*clients));
>> +       const char *slash;
>> +       ssize_t ret;
>> +
>> +       memset(clients, 0, sizeof(*clients));
>> +
>> +       if (drm_card) {
>> +               slash = rindex(drm_card, '/');
>> +               assert(slash);
>> +       } else {
>> +               slash = "card0";
>> +       }
>> +
>> +       ret = snprintf(clients->sysfs_root, sizeof(clients->sysfs_root),
>> +                      "/sys/class/drm/%s/clients/", slash);
>> +       assert(ret > 0 && ret < sizeof(clients->sysfs_root));
> 
> Afaict, igt_device_card_match_pci et al are not guaranteed to fill in
> dev->drm_card and may leave it blank instead of finding the
> corresponding /dev/dri/cardN.

I did the rest but this is giving me trouble - can't see locally that it 
doesn't populate it. Do you know how to trigger that?

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
