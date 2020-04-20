Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 30ED31B000E
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Apr 2020 05:00:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A11A6E132;
	Mon, 20 Apr 2020 03:00:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 2258 seconds by postgrey-1.36 at gabe;
 Mon, 20 Apr 2020 03:00:22 UTC
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 50DEC6E132
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Apr 2020 03:00:22 +0000 (UTC)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
 [147.11.189.40])
 by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id 03K2Lj1k000897
 (version=TLSv1 cipher=AES256-SHA bits=256 verify=FAIL);
 Sun, 19 Apr 2020 19:22:06 -0700
Received: from [128.224.162.157] (128.224.162.157) by ALA-HCA.corp.ad.wrs.com
 (147.11.189.50) with Microsoft SMTP Server id 14.3.487.0;
 Sun, 19 Apr 2020 19:21:47 -0700
Message-ID: <5E9D073A.2080002@windriver.com>
Date: Mon, 20 Apr 2020 10:21:46 +0800
From: Liwei Song <liwei.song@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.3.0
MIME-Version: 1.0
To: Chris Wilson <chris@chris-wilson.co.uk>, <intel-gfx@lists.freedesktop.org>
References: <20200417094940.37744-1-liwei.song@windriver.com>
 <158713114959.2062.884298694974315914@build.alporthouse.com>
In-Reply-To: <158713114959.2062.884298694974315914@build.alporthouse.com>
Subject: Re: [Intel-gfx] [PATCH xf86-video-intel v2] Sync i915_pciids upto
 8717c6b7414f
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On 04/17/2020 09:45 PM, Chris Wilson wrote:
>> diff --git a/src/intel_module.c b/src/intel_module.c
>> > index a71c2e40b774..e0b94c190254 100644
>> > --- a/src/intel_module.c
>> > +++ b/src/intel_module.c
>> > @@ -357,7 +357,7 @@ static const struct pci_id_match intel_device_match[] = {
>> >         INTEL_I945GM_IDS(&intel_i945_info),
>> >  
>> >         INTEL_G33_IDS(&intel_g33_info),
>> > -       INTEL_PINEVIEW_IDS(&intel_g33_info),
>> > +       INTEL_PINEVIEW_G_IDS(&intel_g33_info),
>> >  
>> >         INTEL_I965G_IDS(&intel_i965_info),
>> >         INTEL_I965GM_IDS(&intel_i965_info),
> But no new info blocks?

Got it, will add them according i915_pciids.h in V3.

Thanks,
Liwei.


> -Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
